uint64_t sub_100995260()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1009952C4()
{
  result = qword_101A0A218;
  if (!qword_101A0A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0A218);
  }

  return result;
}

uint64_t sub_100995318(void *a1)
{
  v2 = [a1 newDefaultLibrary];
  if (v2)
  {
    v3 = v2;
    MTLPixelFormatGetInfoForDevice();
    v4 = v21;
    v5 = String._bridgeToObjectiveC()();
    v6 = [v3 newFunctionWithName:v5];

    if (v6)
    {
      v20 = 0;
      v7 = [a1 newComputePipelineStateWithFunction:v6 error:&v20];
      if (v7)
      {
        v8 = v7;
        v9 = v20;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        _s16TextureResamplerCMa();
        v10 = swift_allocObject();
        *(v10 + 16) = a1;
        *(v10 + 24) = v8;
        *(v10 + 32) = (v4 & 2) != 0;
        swift_unknownObjectRetain();
      }

      else
      {
        v15 = v20;
        v16 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_1009952C4();
        v17 = swift_allocError();
        *v18 = v16;
        *(v18 + 8) = 0;
        *(v18 + 16) = 0;
        v10 = v17;
        swift_willThrow();
        swift_errorRetain();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1009952C4();
      v13 = swift_allocError();
      *v14 = xmmword_101482150;
      *(v14 + 16) = 2;
      v10 = v13;
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1009952C4();
    v11 = swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    v10 = v11;
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_100995550(void *a1)
{
  if (qword_1019F1A08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_101A0A160;
  if (*(off_101A0A160 + 2) && (v5 = sub_1007C7EC0(a1), (v6 & 1) != 0))
  {
    v2 = *(v4[7] + 8 * v5);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v7 = sub_100995318(a1);
    if (!v1)
    {
      v2 = v7;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = off_101A0A160;
      off_101A0A160 = 0x8000000000000000;
      sub_100A9E8B0(v2, a1, isUniquelyReferenced_nonNull_native);
      off_101A0A160 = v10;
      swift_endAccess();
    }
  }

  return v2;
}

uint64_t sub_100995690(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void *sub_1009956C0(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_100776524(0, v7 & ~(v7 >> 63), 0);
    v40 = v45;
    if (v39)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v9 = *(a1 + 36);
    }

    v42 = result;
    v43 = v9;
    v44 = v39 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v35 = v7;
      v36 = v38 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v33 = a1 + 56;
      v34 = v11;
      v31[1] = v1;
      v32 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v42;
        v15 = v43;
        v16 = v44;
        sub_100724C7C(v42, v43, v44, a1);
        CalculateExpression.id.getter();

        v17 = v40;
        v45 = v40;
        v19 = v40[2];
        v18 = v40[3];
        if (v19 >= v18 >> 1)
        {
          sub_100776524(v18 > 1, v19 + 1, 1);
          v17 = v45;
        }

        v17[2] = v19 + 1;
        v20 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v40 = v17;
        result = (*(v38 + 32))(v17 + v20 + *(v38 + 72) * v19, v6, v37);
        if (v39)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v35;
          sub_1005B981C(&qword_101A0A370);
          v12 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v12(v41, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_1000341AC(v42, v43, v44);
            return v40;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v21 = 1 << *(a1 + 32);
          if (v14 >= v21)
          {
            goto LABEL_38;
          }

          v22 = v14 >> 6;
          v23 = *(v33 + 8 * (v14 >> 6));
          if (((v23 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v15)
          {
            goto LABEL_40;
          }

          v24 = v23 & (-2 << (v14 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v32 + 8 * v22);
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                result = sub_1000341AC(v14, v15, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_33;
              }
            }

            result = sub_1000341AC(v14, v15, 0);
          }

LABEL_33:
          v30 = *(a1 + 36);
          v42 = v21;
          v43 = v30;
          v44 = 0;
          v7 = v35;
          if (v10 == v35)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void sub_100995DA0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong layoutController];

    if (v2)
    {
      v3 = [v2 canvas];

      if (v3)
      {
        if (([v3 isCanvasInteractive] & 1) == 0)
        {
          v4 = objc_opt_self();
          v5 = [v4 _atomicIncrementAssertCount];
          v27 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v27);
          StaticString.description.getter();
          v6 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v7 = String._bridgeToObjectiveC()();

          v8 = [v7 lastPathComponent];

          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v11 = v10;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v12 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v5;
          v14 = sub_100006370(0, &qword_1019F4D30);
          *(inited + 96) = v14;
          v15 = sub_1005CF04C();
          *(inited + 104) = v15;
          *(inited + 72) = v6;
          *(inited + 136) = &type metadata for String;
          v16 = sub_1000053B0();
          *(inited + 112) = v9;
          *(inited + 120) = v11;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v16;
          *(inited + 152) = 29;
          v17 = v27;
          *(inited + 216) = v14;
          *(inited + 224) = v15;
          *(inited + 192) = v17;
          v18 = v6;
          v19 = v17;
          v20 = static os_log_type_t.error.getter();
          sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v21 = static os_log_type_t.error.getter();
          sub_100005404(v12, &_mh_execute_header, v21, "Canvas is supposed to be interactive", 36, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v22 = swift_allocObject();
          v22[2] = 8;
          v22[3] = 0;
          v22[4] = 0;
          v22[5] = 0;
          v23 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v24 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v25 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v26 = String._bridgeToObjectiveC()();

          [v4 handleFailureInFunction:v24 file:v25 lineNumber:29 isFatal:0 format:v26 args:v23];
        }

        [v3 canvasController];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10099628C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_100995DA0();
    if (v2)
    {
      v3 = v2;
      v4 = [v1 freehandInfo];
      v5 = [v3 repForInfo:v4];

      if (v5)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id sub_10099634C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v53 = a3;
  v54 = a2;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController] = 0;
  v55 = a1;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = sub_1005C04C0(_swiftEmptyArrayStorage);
  }

  else
  {
    v15 = _swiftEmptySetSingleton;
  }

  *&v4[OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_expressions] = v15;
  v16 = OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_computedResultVisibilityStates;
  *&v4[v16] = sub_100BD77E8(_swiftEmptyArrayStorage);
  v17 = OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_pendingDisplayUpdates;
  *&v4[v17] = sub_100BD79D0(_swiftEmptyArrayStorage);
  swift_unknownObjectWeakAssign();
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v19 = v18;
  (*(v12 + 8))(v14, v11);
  *&v4[OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_lastStrokeTimestamp] = v19;
  sub_100006370(0, &qword_1019F2D90);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v20 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v21 = v52;
  v22 = *(v51 + 104);
  v22(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v52);
  *&v4[OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_expressionsQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v22(v8, v20, v21);
  *&v4[OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_computedResultVisibilityStatesQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4[OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_isPresentingPopoverUI] = 0;
  v4[OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_shouldCallEditMenuTapForRep] = 0;
  v23 = type metadata accessor for CRLMathRecognitionItemsHandler();
  v56.receiver = v4;
  v56.super_class = v23;
  v24 = objc_msgSendSuper2(&v56, "init");
  Strong = swift_unknownObjectWeakLoadStrong();
  v26 = v54;
  if (Strong)
  {
    v27 = Strong;
    v28 = [Strong pkRecognitionController];

    if (v28)
    {
      sub_10099B0EC();
      if (v29)
      {
        [v28 setCalculateDocumentProvider:v29];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  v30 = v55;
  v31 = [v55 pkRecognitionController];
  if (v31 && (v32 = v31, v33 = [v31 mathRecognitionController], v32, v33))
  {
    v34 = objc_allocWithZone(PKMathRecognitionViewController);
    v35 = v24;
    v36 = [v34 initWithController:v33 view:v26 delegate:v35];
    v37 = OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController;
    v38 = *&v35[OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController];
    *&v35[OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController] = v36;

    v39 = objc_opt_self();
    v40 = [v39 defaultCenter];
    if (qword_1019F1B88 != -1)
    {
      swift_once();
    }

    [v40 addObserver:v35 selector:? name:? object:?];

    v41 = [v39 defaultCenter];
    v42 = qword_1019F1FF8;
    v43 = v35;
    if (v42 != -1)
    {
      swift_once();
    }

    [v41 addObserver:v43 selector:"deviceManagementRestrictionsChanged:" name:static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName object:0];

    sub_100996A04();
    v44 = *&v35[v37];
    if (v44)
    {
      v45 = v44;
      v46 = v53;
      [v45 setViewControllerForPresentingUI:v46];

      v47 = v46;
      v48 = v26;
      v26 = v46;
    }

    else
    {
      v48 = v55;
      v47 = v53;
    }

    v30 = v26;
    v26 = v47;
  }

  else
  {
    v33 = v53;
  }

  return v24;
}

void sub_100996A04()
{
  sub_100995DA0();
  if (v1)
  {
    v2 = v1;
    v6 = [v1 mathCalculationController];

    if (v6)
    {
      v3 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController);
      if (v3)
      {
        v4 = v3;
        v5 = [CRLMathCalculationController mathHintsMode]_0();
        if (v5 >= 4)
        {
          _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
          __break(1u);
          return;
        }

        [v4 setSolvingStyle:qword_101489F90[v5]];
      }
    }
  }
}

uint64_t sub_100996B14(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_1005B981C(&unk_101A0A390);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  if (a3)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for Notification();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for Notification();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a1;
  a4();

  return sub_10000CAAC(v9, &unk_101A0A390);
}

void sub_100996C8C(unint64_t a1)
{
  v110 = type metadata accessor for DispatchQoS();
  v3 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for CalculateExpression.Base();
  v7 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9 - 8);
  v104 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v1;
  sub_100995DA0();
  if (v11 && (v12 = v11, v112 = [v11 mathCalculationController], v12, v112))
  {
    v103 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:1];
    v13 = a1;
    if (a1 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      v13 = a1;
      if (v14)
      {
LABEL_5:
        if (v14 < 1)
        {
          __break(1u);
        }

        else
        {
          v15 = 0;
          v100 = &v111[OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_layout];
          v98 = *&v111[OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_expressionsQueue];
          v99 = v13 & 0xC000000000000001;
          v96 = v114;
          v97 = (v7 + 104);
          v94 = CalculateKeyFormat;
          v95 = (v3 + 8);
          v93 = (v5 + 8);
          v92 = enum case for CalculateExpression.Base.base10(_:);
          v91 = xmmword_10146C6B0;
          v83 = xmmword_10146CA70;
          v101 = v14;
          v102 = v13;
          do
          {
            if (v99)
            {
              v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v39 = *(v13 + 8 * v15 + 32);
            }

            v33 = v39;
            v40 = [v39 expression];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1005B981C(&unk_101A0A338);
            inited = swift_initStackObject();
            *(inited + 16) = v91;
            v42 = v94;
            *(inited + 32) = v94;
            *(inited + 64) = sub_100006370(0, &qword_1019FF3E0);
            v43 = v103;
            *(inited + 40) = v103;
            v44 = v42;
            v90 = v43;
            sub_100BD79F4(inited);
            swift_setDeallocating();
            sub_10000CAAC(inited + 32, &unk_101A0A348);
            v45 = [v33 uuid];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            (*v97)(v105, v92, v106);
            type metadata accessor for CalculateExpression();
            swift_allocObject();
            v46 = CalculateExpression.init(_:options:base:id:)();
            v47 = v107;
            static DispatchWorkItemFlags.barrier.getter();
            v48 = swift_allocObject();
            v49 = v111;
            *(v48 + 16) = v111;
            *(v48 + 24) = v46;
            v114[2] = sub_10099DA50;
            v114[3] = v48;
            v113[0] = _NSConcreteStackBlock;
            v113[1] = *"";
            v114[0] = sub_100007638;
            v114[1] = &unk_10188F618;
            v50 = _Block_copy(v113);
            v51 = v49;

            v52 = v109;
            static DispatchQoS.unspecified.getter();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v50);
            (*v95)(v52, v110);
            (*v93)(v47, v108);

            Strong = swift_unknownObjectWeakLoadStrong();
            if (!Strong)
            {
              v88 = v51;
              v89 = v33;
              v87 = objc_opt_self();
              v54 = [v87 _atomicIncrementAssertCount];
              v113[0] = [objc_allocWithZone(NSString) init];
              sub_100604538(_swiftEmptyArrayStorage, v113);
              StaticString.description.getter();
              v86 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v55 = String._bridgeToObjectiveC()();

              v56 = [v55 lastPathComponent];

              v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v84 = v58;

              if (qword_1019F20A0 != -1)
              {
                swift_once();
              }

              v85 = static OS_os_log.crlAssert;
              sub_1005B981C(&qword_1019F54E0);
              v16 = swift_initStackObject();
              *(v16 + 16) = v83;
              *(v16 + 56) = &type metadata for Int32;
              *(v16 + 64) = &protocol witness table for Int32;
              *(v16 + 32) = v54;
              v17 = sub_100006370(0, &qword_1019F4D30);
              *(v16 + 96) = v17;
              v18 = sub_1005CF04C();
              *(v16 + 104) = v18;
              v19 = v86;
              *(v16 + 72) = v86;
              *(v16 + 136) = &type metadata for String;
              v20 = sub_1000053B0();
              v21 = v84;
              *(v16 + 112) = v57;
              *(v16 + 120) = v21;
              *(v16 + 176) = &type metadata for UInt;
              *(v16 + 144) = v20;
              *(v16 + 152) = 99;
              v22 = v113[0];
              *(v16 + 216) = v17;
              *(v16 + 224) = v18;
              *(v16 + 184) = &protocol witness table for UInt;
              *(v16 + 192) = v22;
              v23 = v19;
              v24 = v22;
              v25 = static os_log_type_t.error.getter();
              v26 = v85;
              sub_100005404(v85, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v16);
              swift_setDeallocating();
              sub_1005B981C(&unk_1019F5670);
              swift_arrayDestroy();
              v27 = static os_log_type_t.error.getter();
              sub_100005404(v26, &_mh_execute_header, v27, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

              [v87 handleFailureInFunction:v30 file:v31 lineNumber:99 isFatal:0 format:v32 args:v29];

              v33 = v89;
            }

            ++v15;
            v34 = swift_allocObject();
            swift_unknownObjectWeakInit();

            [v33 sortIndex];
            v36 = v35;
            v37 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v38 = swift_allocObject();
            *(v38 + 16) = v37;
            *(v38 + 24) = v46;

            CRLMathCalculationController.beginTrackingResultsFor(expression:containingDrawingLayoutOriginProvider:withSingleDrawingSortIndex:onUpdate:)(v46, sub_10099DA58, v34, sub_10099DA60, v38, v36);

            v13 = v102;
          }

          while (v101 != v15);
        }

        return;
      }
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_5;
      }
    }

    v82 = v112;
  }

  else
  {
    v59 = objc_opt_self();
    v60 = [v59 _atomicIncrementAssertCount];
    v113[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v113);
    StaticString.description.getter();
    v61 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v62 = String._bridgeToObjectiveC()();

    v63 = [v62 lastPathComponent];

    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v67 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v68 = swift_initStackObject();
    *(v68 + 16) = xmmword_10146CA70;
    *(v68 + 56) = &type metadata for Int32;
    *(v68 + 64) = &protocol witness table for Int32;
    *(v68 + 32) = v60;
    v69 = sub_100006370(0, &qword_1019F4D30);
    *(v68 + 96) = v69;
    v70 = sub_1005CF04C();
    *(v68 + 104) = v70;
    *(v68 + 72) = v61;
    *(v68 + 136) = &type metadata for String;
    v71 = sub_1000053B0();
    *(v68 + 112) = v64;
    *(v68 + 120) = v66;
    *(v68 + 176) = &type metadata for UInt;
    *(v68 + 184) = &protocol witness table for UInt;
    *(v68 + 144) = v71;
    *(v68 + 152) = 91;
    v72 = v113[0];
    *(v68 + 216) = v69;
    *(v68 + 224) = v70;
    *(v68 + 192) = v72;
    v73 = v61;
    v74 = v72;
    v75 = static os_log_type_t.error.getter();
    sub_100005404(v67, &_mh_execute_header, v75, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v68);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v76 = static os_log_type_t.error.getter();
    sub_100005404(v67, &_mh_execute_header, v76, "Could not retrieve a mathCalculationController instance", 55, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v77 = swift_allocObject();
    v77[2] = 8;
    v77[3] = 0;
    v77[4] = 0;
    v77[5] = 0;
    v78 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v79 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v80 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v81 = String._bridgeToObjectiveC()();

    [v59 handleFailureInFunction:v79 file:v80 lineNumber:91 isFatal:0 format:v81 args:v78];
  }
}

double sub_100997A4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong pureGeometryInRootWithoutMathResults];
    [v2 frame];
    v4 = v3;
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29);
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
    *(inited + 152) = 102;
    v18 = v29;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "Should be able to get the drawing layout to sort a CalculateExpression.", 71, 2, _swiftEmptyArrayStorage);

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

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:102 isFatal:0 format:v27 args:v24];

    return 0.0;
  }

  return v4;
}

void sub_100997E58()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [objc_opt_self() cancelPreviousPerformRequestsWithTarget:Strong selector:"updateCalculateDocumentProvider" object:0];
    [v8 performSelector:"updateCalculateDocumentProvider" withObject:0 afterDelay:0.1];
    sub_1009996BC();
    v9 = CalculateExpression.result.getter();
    if (v9)
    {
      v10 = v9;
      CalculateExpression.id.getter();
      v11 = CalculateExpression.result.getter();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 unitType];

        v14 = v13 == 16;
      }

      else
      {
        v14 = 0;
      }

      sub_1009980AC(v10, v6, v14);

      (*(v1 + 8))(v6, v0);
    }

    else
    {
      v15 = *&v8[OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController];
      if (v15)
      {
        v16 = v15;
        CalculateExpression.id.getter();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v1 + 8))(v3, v0);
        [v16 mathResult:0 itemUUID:isa];
      }
    }
  }
}

uint64_t sub_1009980AC(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v31 = a3;
  v7 = type metadata accessor for DispatchTime();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v35 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v34 = &v30[-v10];
  v11 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v11);
  v32 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v33 = a2;
  sub_1009995DC(a2);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v14 + 16))(&v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v13);
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a1;
  (*(v14 + 32))(v18 + v17, &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v13);
  *(v18 + v17 + v15) = v31;
  aBlock[4] = sub_10099D884;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10188F5A0;
  _Block_copy(aBlock);
  v38 = _swiftEmptyArrayStorage;
  sub_10099D754(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);

  v19 = a1;
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v20 = DispatchWorkItem.init(flags:block:)();

  v21 = OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_pendingDisplayUpdates;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v4 + v21);
  *(v4 + v21) = 0x8000000000000000;
  sub_100A9F28C(v20, v33, isUniquelyReferenced_nonNull_native);
  *(v4 + v21) = v38;
  swift_endAccess();
  sub_100006370(0, &qword_1019F2D90);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = v35;
  static DispatchTime.now()();
  v25 = v34;
  + infix(_:_:)();
  v26 = *(v36 + 8);
  v27 = v24;
  v28 = v37;
  v26(v27, v37);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v26)(v25, v28);
}

void sub_100998554(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController;
    v17 = *(Strong + OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController);
    if (v17)
    {
      v31 = v4;
      v32 = v13;
      v4 = v17;
      if ([a2 isTrivial])
      {
        v18 = 0;
      }

      else
      {
        v19 = [a2 formattedResult];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

        v10 = v30;
        v18 = String._bridgeToObjectiveC()();
      }

      v20 = a3;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      [v4 mathResult:v18 itemUUID:isa];

      a3 = v20;
      v13 = v32;
      LOBYTE(v4) = v31;
    }

    if (v4)
    {
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
      (*(v8 + 16))(v10, a3, v7);
      type metadata accessor for MainActor();
      v23 = v15;
      v24 = static MainActor.shared.getter();
      v25 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v26 = swift_allocObject();
      *(v26 + 2) = v24;
      *(v26 + 3) = &protocol witness table for MainActor;
      *(v26 + 4) = v23;
      (*(v8 + 32))(&v26[v25], v10, v7);
      sub_10064191C(0, 0, v13, &unk_101489EF0, v26);
    }

    else
    {
      v27 = *&v15[v16];
      if (v27)
      {
        v28 = v27;
        v29 = UUID._bridgeToObjectiveC()().super.isa;
        [v28 mathResultAttributionImage:0 darkModeImage:0 string:0 date:0 itemUUID:v29];
      }
    }
  }
}

uint64_t sub_1009988C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1005B981C(&qword_101A0A320);
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  sub_1005B981C(&unk_101A0A328);
  v5[6] = swift_task_alloc();
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_1009989D8, v7, v6);
}

uint64_t sub_1009989D8()
{
  if (qword_1019F2080 != -1)
  {
    swift_once();
  }

  *(v0 + 88) = qword_101AD7C38;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_100998AB4;

  return sub_100D31B50();
}

uint64_t sub_100998AB4(void *a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 104) = a1;

  v5 = a1;
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  *v6 = v4;
  v6[1] = sub_100998C20;

  return sub_100D32148();
}

uint64_t sub_100998C20(void *a1)
{
  v3 = *v1;
  *(*v1 + 120) = a1;

  v4 = *(v3 + 80);
  v5 = *(v3 + 72);
  v6 = a1;

  return _swift_task_switch(sub_100998D64, v5, v4);
}

uint64_t sub_100998D64()
{
  v0[16] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[17] = v2;
  v0[18] = v1;

  return _swift_task_switch(sub_100998DF0, v2, v1);
}

uint64_t sub_100998DF0()
{
  v0[19] = type metadata accessor for StocksKitCurrencyCache();
  v0[20] = static StocksKitCurrencyCache.shared.getter();
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_100998EA4;
  v2 = v0[6];

  return StocksKitCurrencyCache.provider.getter(v2);
}

uint64_t sub_100998EA4()
{
  v1 = *v0;
  v2 = *(*v0 + 160);

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return _swift_task_switch(sub_100998FE4, v4, v3);
}

uint64_t sub_100998FE4()
{
  v1 = v0[6];

  v2 = type metadata accessor for StocksKitCurrencyCache.Provider();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[6];
  if (v4 == 1)
  {
    sub_10000CAAC(v0[6], &unk_101A0A328);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = StocksKitCurrencyCache.Provider.name.getter();
    v7 = v8;
    (*(v3 + 8))(v5, v2);
  }

  v0[22] = v6;
  v0[23] = v7;
  v9 = v0[9];
  v10 = v0[10];

  return _swift_task_switch(sub_100999108, v9, v10);
}

uint64_t sub_100999108()
{
  v0[24] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[25] = v2;
  v0[26] = v1;

  return _swift_task_switch(sub_100999194, v2, v1);
}

uint64_t sub_100999194()
{
  v0[27] = static StocksKitCurrencyCache.shared.getter();
  v4 = (&async function pointer to dispatch thunk of StocksKitCurrencyCache.lastRefreshDate.getter + async function pointer to dispatch thunk of StocksKitCurrencyCache.lastRefreshDate.getter);
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_10099924C;
  v2 = v0[5];

  return v4(v2);
}

uint64_t sub_10099924C()
{
  v1 = *v0;
  v2 = *(*v0 + 216);

  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return _swift_task_switch(sub_10099938C, v4, v3);
}

uint64_t sub_10099938C()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_1009993F0, v1, v2);
}

uint64_t sub_1009993F0()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController);
  if (v2)
  {
    if (*(v0 + 184))
    {
      v3 = v2;
      v4 = String._bridgeToObjectiveC()();
    }

    else
    {
      v6 = v2;
      v4 = 0;
    }

    v7 = *(v0 + 32);
    sub_10005F954(*(v0 + 40), v7);
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    isa = 0;
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v11 = *(v0 + 32);
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v9 + 8))(v11, v8);
    }

    v12 = *(v0 + 120);
    v13 = *(v0 + 104);
    v14 = UUID._bridgeToObjectiveC()().super.isa;
    [v2 mathResultAttributionImage:v13 darkModeImage:v12 string:v4 date:isa itemUUID:v14];
  }

  else
  {
    v5 = *(v0 + 104);
  }

  sub_10000CAAC(*(v0 + 40), &qword_101A0A320);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1009995DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_pendingDisplayUpdates;
  result = swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {

    sub_10003E994(a1);
    if (v5)
    {

      swift_beginAccess();
      sub_1006F6E70(a1);
      swift_endAccess();

      dispatch thunk of DispatchWorkItem.cancel()();
    }

    else
    {
    }
  }

  return result;
}

void sub_1009996BC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  CalculateExpression.id.getter();
  sub_100995DA0();
  if (v6 && (v7 = v6, v8 = [v6 mathCalculationController], v7, v8))
  {
    v9 = sub_100A86F88(v5);

    (*(v3 + 8))(v5, v2);
    if (v9)
    {
      v10 = *(v1 + OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController);
      if (v10)
      {
        v11 = v10;
        sub_100A823DC();
        sub_100006370(0, &unk_101A0A310);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v11 setTokens:isa forItem:v9];
      }
    }
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_100999870()
{
  v102 = type metadata accessor for DispatchQoS();
  v107 = *(v102 - 8);
  __chkstk_darwin(v102);
  v89 = v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DispatchWorkItemFlags();
  v103 = *(v101 - 8);
  __chkstk_darwin(v101);
  v88 = v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for UUID();
  v3 = *(v105 - 8);
  __chkstk_darwin(v105);
  v87 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v86 = v76 - v6;
  v100 = v7;
  __chkstk_darwin(v8);
  v99 = v76 - v9;
  sub_10098EABC(&_mh_execute_header, "willBeRemoved()", 15, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMathRecognitionItemsHandler.swift", 101, 2, 177);
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v0 selector:"updateCalculateDocumentProvider" object:0];
  v10 = OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_pendingDisplayUpdates;
  swift_beginAccess();
  v104 = v0;
  v11 = *(v0 + v10);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      do
      {
LABEL_9:
        v14 &= v14 - 1;

        dispatch thunk of DispatchWorkItem.cancel()();
      }

      while (v14);
      continue;
    }
  }

  v18 = v104;
  *(v104 + v10) = _swiftEmptyDictionarySingleton;

  v19 = [objc_opt_self() defaultCenter];
  [v19 removeObserver:v18];

  v20 = sub_10099BE5C();
  sub_100995DA0();
  if (!v21 || (v22 = v21, v23 = [v21 mathCalculationController], v22, !v23))
  {

LABEL_37:
    v73 = OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController;
    v74 = v104;
    [*(v104 + OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController) dismissPopovers];
    v75 = *(v74 + v73);
    *(v74 + v73) = 0;

    return;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for CalculateExpression();
    sub_10099D754(&qword_1019F37A0, &type metadata accessor for CalculateExpression);
    Set.Iterator.init(_cocoa:)();
    v20 = v115[14];
    v24 = v115[15];
    v25 = v115[16];
    v26 = v115[17];
    v27 = v115[18];
  }

  else
  {
    v26 = 0;
    v28 = -1 << *(v20 + 32);
    v24 = v20 + 56;
    v25 = ~v28;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v27 = v30 & *(v20 + 56);
  }

  v76[1] = v25;
  v95 = v3;
  v96 = (v25 + 64) >> 6;
  v106 = (v3 + 8);
  v93 = v3 + 32;
  v94 = v3 + 16;
  v91 = (v107 + 8);
  v92 = &v111;
  v90 = (v103 + 8);
  v103 = v24;
  v31 = v99;
  v108 = v23;
  v77 = v20;
  while (v20 < 0)
  {
    v37 = __CocoaSet.Iterator.next()();
    if (!v37 || (v109 = v37, type metadata accessor for CalculateExpression(), swift_dynamicCast(), v36 = v115[0], v34 = v26, v35 = v27, !v115[0]))
    {
LABEL_36:
      sub_100035F90();
      sub_100A84F54();

      goto LABEL_37;
    }

LABEL_33:
    v107 = v35;
    CalculateExpression.id.getter();
    v38 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
    swift_beginAccess();
    v39 = *&v23[v38];
    if (!*(v39 + 16))
    {
      goto LABEL_22;
    }

    v40 = sub_10003E994(v31);
    if ((v41 & 1) == 0)
    {

LABEL_22:
      (*v106)(v31, v105);
      goto LABEL_23;
    }

    v42 = *(v39 + 56) + (v40 << 6);
    v43 = *(v42 + 8);
    v84 = *v42;
    v85 = v36;
    v44 = *(v42 + 16);
    v45 = *(v42 + 24);
    v46 = *(v42 + 32);
    v83 = *(v42 + 40);
    v47 = *(v42 + 48);
    v48 = *(v42 + 56);
    v49 = *(v95 + 8);

    v50 = v45;
    v51 = v46;

    v49(v31, v105);
    v98 = v49;

    v115[0] = v84;
    v115[1] = v43;
    v115[2] = v44;
    v115[3] = v45;
    v115[4] = v46;
    v115[5] = v83;
    v115[6] = v47;
    v115[7] = v48;
    v52 = v44;

    sub_10000CAAC(v115, &qword_101A0A308);
    v53 = v86;
    v97 = v52;
    CalculateExpression.id.getter();
    swift_beginAccess();
    sub_1006F6F7C(v53, v116);
    v54 = v105;
    v49(v53, v105);
    swift_endAccess();
    sub_10000CAAC(v116, &qword_101A0A308);
    CalculateExpression.id.getter();
    v55 = v88;
    static DispatchWorkItemFlags.barrier.getter();
    v56 = v95;
    v82 = *(v95 + 16);
    v57 = v87;
    v58 = v54;
    v82(v87, v53, v54);
    v59 = (*(v56 + 80) + 24) & ~*(v56 + 80);
    v79 = *(v56 + 80);
    v80 = v59;
    v60 = swift_allocObject();
    *(v60 + 16) = v108;
    v81 = *(v56 + 32);
    v61 = v60 + v59;
    v62 = v57;
    v81(v61, v57, v58);
    v113 = sub_10099D854;
    v114 = v60;
    v109 = _NSConcreteStackBlock;
    v110 = *"";
    v111 = sub_100007638;
    v112 = &unk_10188F4D8;
    v63 = _Block_copy(&v109);
    v64 = v108;
    v65 = v89;
    static DispatchQoS.unspecified.getter();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v63);
    v84 = *v91;
    v84(v65, v102);
    v83 = *v90;
    v83(v55, v101);
    v98(v53, v58);

    CalculateExpression.id.getter();
    v78 = *&v64[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressionStrokeGroupsQueue];
    v66 = v55;
    static DispatchWorkItemFlags.barrier.getter();
    v82(v62, v53, v58);
    v67 = v80;
    v68 = swift_allocObject();
    *(v68 + 16) = v64;
    v81(v68 + v67, v62, v58);
    v113 = sub_10099D86C;
    v114 = v68;
    v109 = _NSConcreteStackBlock;
    v110 = *"";
    v111 = sub_100007638;
    v112 = &unk_10188F528;
    v69 = _Block_copy(&v109);
    v70 = v64;
    static DispatchQoS.unspecified.getter();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    v71 = v69;
    v20 = v77;
    _Block_release(v71);

    v72 = v65;
    v23 = v108;
    v84(v72, v102);
    v83(v66, v101);
    v31 = v99;
    v98(v53, v58);
LABEL_23:

    v26 = v34;
    v27 = v107;
    v24 = v103;
  }

  v32 = v26;
  v33 = v27;
  v34 = v26;
  if (v27)
  {
LABEL_29:
    v35 = (v33 - 1) & v33;
    v36 = *(*(v20 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));

    if (!v36)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v96)
    {
      goto LABEL_36;
    }

    v33 = *(v24 + 8 * v34);
    ++v32;
    if (v33)
    {
      goto LABEL_29;
    }
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_10099A39C@<X0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong pkRecognitionController], v3, v4))
  {
    v5 = [v4 drawing];

    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for PKDrawing();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, 1, v7);
}

void sub_10099AFD4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v3 = [Strong pkRecognitionController];

    if (v3)
    {
      sub_10099B0EC();
      if (v2)
      {
        [v3 setCalculateDocumentProvider:v2];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_10099B0EC()
{
  v0 = type metadata accessor for PKDrawing();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v72 - v5;
  v7 = type metadata accessor for UUID();
  v89 = *(v7 - 8);
  __chkstk_darwin(v7);
  v87 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v8;
  __chkstk_darwin(v9);
  v11 = &v72 - v10;
  sub_100995DA0();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 mathCalculationController];

    v90 = v14;
    if (v14)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v91 = v7;
        v74 = v6;
        v75 = v3;
        v76 = v0;
        v100 = _swiftEmptyArrayStorage;
        v98 = _swiftEmptyArrayStorage;
        v99 = _swiftEmptySetSingleton;

        v15 = dispatch thunk of CalculateDocument.declaredSymbols.getter();
        v16 = v15;
        v17 = 0;
        v18 = v15 + 56;
        v19 = 1 << *(v15 + 32);
        v20 = -1;
        if (v19 < 64)
        {
          v20 = ~(-1 << v19);
        }

        v21 = v20 & *(v15 + 56);
        v22 = (v19 + 63) >> 6;
        if (v21)
        {
          while (1)
          {
            v23 = v17;
LABEL_12:
            v24 = __clz(__rbit64(v21));
            v21 &= v21 - 1;
            v25 = (*(v16 + 48) + ((v23 << 10) | (16 * v24)));
            v26 = *v25;
            v27 = v25[1];

            sub_100E6DE34(aBlock, v26, v27);

            if (!v21)
            {
              goto LABEL_8;
            }
          }
        }

        while (1)
        {
LABEL_8:
          v23 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v23 >= v22)
          {
            break;
          }

          v21 = *(v18 + 8 * v23);
          ++v17;
          if (v21)
          {
            v17 = v23;
            goto LABEL_12;
          }
        }

        v28 = dispatch thunk of CalculateDocument.expressions.getter();
        v16 = v28;
        if (v28 >> 62)
        {
          goto LABEL_42;
        }

        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v30 = v91;
        if (v29)
        {
          while (v29 >= 1)
          {
            v86 = v16 & 0xC000000000000001;
            v85 = v89 + 16;
            v84 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressionStrokeGroupsQueue;
            v83 = v89 + 32;
            v82 = v96;
            v73 = (v1 + 32);
            v77 = _swiftEmptyArrayStorage;
            v79 = (v89 + 8);
            v81 = v16;
            v80 = v29;
            v31 = 0;
            while (1)
            {
              v93 = v31;
              v33 = v30;
              if (v86)
              {
                v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v34 = *(v16 + 8 * v31 + 32);
              }

              CalculateExpression.id.getter();
              v92 = v34;
              v1 = CalculateExpression.expression.getter();
              v36 = v35;
              v37 = [objc_allocWithZone(type metadata accessor for MathExpression()) init];
              v97 = 0;
              v38 = v89;
              v16 = v90;
              v94 = *&v90[v84];
              v39 = v87;
              v40 = v11;
              (*(v89 + 16))(v87, v11, v33);
              v41 = (*(v38 + 80) + 32) & ~*(v38 + 80);
              v11 = swift_allocObject();
              *(v11 + 2) = &v97;
              *(v11 + 3) = v16;
              (*(v38 + 32))(&v11[v41], v39, v33);
              v42 = swift_allocObject();
              *(v42 + 16) = sub_10099D7F0;
              *(v42 + 24) = v11;
              v96[2] = sub_10002AAE0;
              v96[3] = v42;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = *"";
              v96[0] = sub_10002AAB8;
              v96[1] = &unk_10188F488;
              v43 = _Block_copy(aBlock);
              v44 = v16;

              dispatch_sync(v94, v43);
              _Block_release(v43);
              LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

              if (v43)
              {
                break;
              }

              v45 = v97;

              v46 = *&v37[OBJC_IVAR____TtC8Freeform14MathExpression_strokeGroupIdentifier];
              *&v37[OBJC_IVAR____TtC8Freeform14MathExpression_strokeGroupIdentifier] = v45;
              v47 = v45;

              v48 = &v37[OBJC_IVAR____TtC8Freeform14MathExpression_expression];
              *v48 = v1;
              v48[1] = v36;

              v49 = v37;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v94 = v100;
              v30 = v91;
              v11 = v40;
              if (v45)
              {
                v50 = v47;
                v51 = CalculateExpression.result.getter();
                v16 = v81;
                v32 = v80;
                if (v51)
                {
                  v52 = v51;
                  if ([v51 isTrivial])
                  {

                    (*v79)(v11, v30);
                  }

                  else
                  {
                    v53 = [v52 formattedResult];
                    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v56 = v55;

                    v57 = [objc_allocWithZone(type metadata accessor for MathExpressionEvaluationResult()) init];
                    v58 = &v57[OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_string];
                    *v58 = v54;
                    v58[1] = v56;

                    v59 = *&v57[OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_strokeGroupIdentifier];
                    *&v57[OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_strokeGroupIdentifier] = v50;
                    v60 = v50;

                    v61 = [Strong pkRecognitionController];
                    if (v61)
                    {
                      v62 = v61;
                      v63 = [v61 drawing];

                      v64 = v75;
                      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

                      (*v73)(v74, v64, v76);
                      sub_100006370(0, &qword_101A0A300);
                      swift_dynamicCast();
                      v65 = aBlock[0];
                    }

                    else
                    {
                      v65 = 0;
                    }

                    v66 = *&v57[OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_drawing];
                    *&v57[OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_drawing] = v65;

                    v67 = v57;
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    v30 = v91;
                    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                    (*v79)(v11, v30);
                    v77 = v98;
                  }
                }

                else
                {
                  (*v79)(v11, v30);
                }
              }

              else
              {
                (*v79)(v40, v91);

                v16 = v81;
                v32 = v80;
              }

              v31 = v93 + 1;
              if (v32 == v93 + 1)
              {

                v68 = v77;
                v69 = v94;
                goto LABEL_44;
              }
            }

LABEL_41:
            __break(1u);
LABEL_42:
            v29 = _CocoaArrayWrapper.endIndex.getter();
            v30 = v91;
            if (!v29)
            {
              goto LABEL_43;
            }
          }

          __break(1u);
        }

        else
        {
LABEL_43:

          v68 = _swiftEmptyArrayStorage;
          v69 = _swiftEmptyArrayStorage;
LABEL_44:
          v70 = [objc_allocWithZone(type metadata accessor for CRLCalculateDocumentProvider()) init];

          if (v70)
          {
            *&v70[OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_declaredVariables] = v99;
            v71 = v70;

            *&v71[OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_expressions] = v69;

            *&v71[OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_evaluationResults] = v68;
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
  }
}

uint64_t sub_10099BB48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_100E712C8(&v4, a2);
  swift_endAccess();
}

uint64_t sub_10099BBC4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_10099D7E8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10188F410;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_10099BDF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1012D5364(a2);
  return swift_endAccess();
}

uint64_t sub_10099BE5C()
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_1005C04C0(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = _swiftEmptySetSingleton;
  }

  v11 = v1;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_expressionsQueue];
  v3 = swift_allocObject();
  *(v3 + 16) = &v11;
  *(v3 + 24) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10099D7C4;
  *(v4 + 24) = v3;
  aBlock[4] = sub_10002AAE0;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10002AAB8;
  aBlock[3] = &unk_10188F3C0;
  v5 = _Block_copy(aBlock);
  v6 = v0;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v9 = v11;

    return v9;
  }

  return result;
}

uint64_t sub_10099BFF8(uint64_t a1, int a2)
{
  v21 = a2;
  v4 = type metadata accessor for DispatchQoS();
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v22 - 8);
  __chkstk_darwin(v22);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v2[OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_computedResultVisibilityStatesQueue];
  static DispatchWorkItemFlags.barrier.getter();
  (*(v8 + 16))(v10, a1, v7);
  v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v15 = v14 + v9;
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  (*(v8 + 32))(v16 + v14, v10, v7);
  *(v16 + v15) = v21;
  aBlock[4] = sub_10099D7C0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10188F348;
  v17 = _Block_copy(aBlock);
  v18 = v2;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v23 + 8))(v6, v24);
  (*(v11 + 8))(v13, v22);
}

uint64_t sub_10099C2F8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_computedResultVisibilityStates;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + v6);
  *(a1 + v6) = 0x8000000000000000;
  sub_100A9F2B4(a3, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v6) = v9;
  return swift_endAccess();
}

uint64_t sub_10099C400(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_computedResultVisibilityStates;
  swift_beginAccess();
  v5 = sub_10003E994(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a2 + v4);
    *(a2 + v4) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AA9934();
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_100BD0428(v7, v9);
    *(a2 + v4) = v9;
  }

  return swift_endAccess();
}

uint64_t sub_10099C4F8()
{
  v10 = sub_100BD77E8(_swiftEmptyArrayStorage);
  v1 = *&v0[OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_computedResultVisibilityStatesQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10099D79C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10002AAE4;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10002AAB8;
  aBlock[3] = &unk_10188F2F8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_10099C668(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *a1 = *(a2 + v5);
}

uint64_t sub_10099C744()
{
  v63 = type metadata accessor for UUID();
  v1 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AttributedString();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10099CF60(v0);
  v67 = sub_10099D2E8();
  v5 = [objc_opt_self() currentRequest];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 technology];
  }

  else
  {
    v7 = 0;
  }

  v68 = [objc_opt_self() requestingTechnologyShouldProvideAdditionalContext:v7];

  v65 = sub_10099C4F8();
  if (v4 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_42:

    v11 = _swiftEmptyArrayStorage;
LABEL_43:
    v73 = v11;
    sub_1005B981C(&unk_1019F4D80);
    sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
    v58 = BidirectionalCollection<>.joined(separator:)();

    return v58;
  }

  v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_42;
  }

LABEL_6:
  result = sub_100006370(0, &qword_1019F76F0);
  v72 = result;
  if (v8 >= 1)
  {
    v10 = 0;
    v71 = v4 & 0xC000000000000001;
    v60 = "crlaxRecognizedMathDescription";
    v61 = (v1 + 8);
    v11 = _swiftEmptyArrayStorage;
    v59 = xmmword_10146C6B0;
    v66 = v4;
    v70 = v8;
    while (1)
    {
      if (v71)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      CalculateExpression.accessibilityMathEquationDescription.getter();
      v12 = NSAttributedString.init(_:)();
      v13 = [v12 string];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        break;
      }

LABEL_9:
      if (v8 == ++v10)
      {

        goto LABEL_43;
      }
    }

    v18 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_100024CBC((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[16 * v20];
    *(v21 + 4) = v14;
    *(v21 + 5) = v16;
    v22 = CalculateExpression.result.getter();
    if (v22)
    {
      v23 = v22;
      if ([v22 isTrivial])
      {
      }

      else
      {
        v24 = [v23 formattedResult];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v25;

        v26 = [objc_opt_self() mainBundle];
        v27 = String._bridgeToObjectiveC()();
        v28 = String._bridgeToObjectiveC()();
        v29 = [v26 localizedStringForKey:v27 value:v28 table:0];

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v34 = *(v18 + 2);
        v33 = *(v18 + 3);
        if (v34 >= v33 >> 1)
        {
          v18 = sub_100024CBC((v33 > 1), v34 + 1, 1, v18);
        }

        *(v18 + 2) = v34 + 1;
        v35 = &v18[16 * v34];
        *(v35 + 4) = v30;
        *(v35 + 5) = v32;
        if (v67)
        {
          v36 = v62;
          CalculateExpression.id.getter();
          if (!*(v65 + 16) || (v37 = sub_10003E994(v36), (v38 & 1) == 0))
          {

            (*v61)(v36, v63);
            goto LABEL_34;
          }

          v39 = v36;
          v40 = *(*(v65 + 56) + v37);
          (*v61)(v39, v63);
          if (v40)
          {
            v41 = [objc_opt_self() mainBundle];
            v42 = String._bridgeToObjectiveC()();
            v43 = String._bridgeToObjectiveC()();
            v44 = [v41 localizedStringForKey:v42 value:v43 table:0];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (v68)
            {
              sub_1005B981C(&qword_1019F54E0);
              v45 = swift_allocObject();
              *(v45 + 16) = v59;
              *(v45 + 56) = &type metadata for String;
              *(v45 + 64) = sub_1000053B0();
              v46 = v69;
              *(v45 + 32) = v64;
              *(v45 + 40) = v46;
              v64 = static String.localizedStringWithFormat(_:_:)();
              v69 = v47;
            }

            v49 = *(v18 + 2);
            v48 = *(v18 + 3);
            if (v49 >= v48 >> 1)
            {
              v18 = sub_100024CBC((v48 > 1), v49 + 1, 1, v18);
            }

            *(v18 + 2) = v49 + 1;
            v50 = &v18[16 * v49];
            v51 = v69;
            *(v50 + 4) = v64;
            *(v50 + 5) = v51;
            goto LABEL_34;
          }
        }
      }
    }

LABEL_34:
    v73 = v18;
    sub_1005B981C(&unk_1019F4D80);
    sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
    v52 = BidirectionalCollection<>.joined(separator:)();
    v54 = v53;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_100024CBC(0, *(v11 + 2) + 1, 1, v11);
    }

    v8 = v70;
    v56 = *(v11 + 2);
    v55 = *(v11 + 3);
    if (v56 >= v55 >> 1)
    {
      v11 = sub_100024CBC((v55 > 1), v56 + 1, 1, v11);
    }

    *(v11 + 2) = v56 + 1;
    v57 = &v11[16 * v56];
    *(v57 + 4) = v52;
    *(v57 + 5) = v54;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

char *sub_10099CF60(uint64_t a1)
{
  sub_100995DA0();
  if (v2 && (v3 = v2, v4 = [v2 mathCalculationController], v3, v4))
  {
    v5 = dispatch thunk of CalculateDocument.expressions.getter();
    v6 = v5;
    v30 = _swiftEmptyArrayStorage;
    if (v5 >> 62)
    {
      goto LABEL_31;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v8 = OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_expressions;
    swift_beginAccess();
    if (v7)
    {
      v23 = v4;
      v9 = 0;
      v10 = v6 & 0xC000000000000001;
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
      v27 = v7;
      v28 = v6 + 32;
      v25 = v6 & 0xC000000000000001;
      v26 = v8;
      v24 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v10)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v13 = __OFADD__(v9++, 1);
          if (v13)
          {
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }
        }

        else
        {
          if (v9 >= *(v11 + 16))
          {
            __break(1u);
LABEL_31:
            v7 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_5;
          }

          v12 = *(v28 + 8 * v9);

          v13 = __OFADD__(v9++, 1);
          if (v13)
          {
            goto LABEL_24;
          }
        }

        v14 = *(a1 + v8);
        v29 = v12;
        if ((v14 & 0xC000000000000001) != 0)
        {

          v6 = __CocoaSet.contains(_:)();

          if (v6)
          {
            goto LABEL_14;
          }
        }

        else if (*(v14 + 16))
        {
          v15 = type metadata accessor for CalculateExpression();
          sub_10099D754(&qword_1019F37A0, &type metadata accessor for CalculateExpression);

          v6 = &v29;
          v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v4 = (v14 + 56);
          v17 = -1 << *(v14 + 32);
          v18 = v16 & ~v17;
          if (((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
LABEL_20:

            v8 = v26;
            v7 = v27;
            v11 = v24;
            v10 = v25;
            goto LABEL_8;
          }

          v19 = ~v17;
          sub_10099D754(&qword_1019F37A8, &type metadata accessor for CalculateExpression);
          while (1)
          {
            v6 = v15;
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*&v4[(v18 >> 3) & 0xFFFFFFFFFFFFFF8] >> v18) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          v8 = v26;
          v7 = v27;
          v11 = v24;
          v10 = v25;
LABEL_14:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v4 = *(v30 + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v6 = &v30;
          specialized ContiguousArray._endMutation()();
          goto LABEL_8;
        }

LABEL_8:
        if (v9 == v7)
        {
          v21 = v30;
          v4 = v23;
          goto LABEL_28;
        }
      }
    }

    v21 = _swiftEmptyArrayStorage;
LABEL_28:
  }

  else
  {
LABEL_25:
    swift_beginAccess();

    v21 = sub_100676928(v20);
  }

  return v21;
}

uint64_t sub_10099D2E8()
{
  sub_100995DA0();
  if (!v0 || (v1 = v0, v2 = [v0 mathCalculationController], v1, !v2))
  {
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  v3 = [CRLMathCalculationController mathHintsMode]_0();
  if (v3 < 4)
  {
    v4 = 7u >> (v3 & 0xF);

    return v4 & 1;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

id sub_10099D3B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMathRecognitionItemsHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10099D4AC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[3] = sub_1005B981C(&qword_101A0A360);
  v18[4] = sub_10001A2F8(&qword_101A0A368, &qword_101A0A360);
  v18[0] = a1;

  static DispatchWorkItemFlags.barrier.getter();
  sub_10000630C(v18, v17);
  v12 = swift_allocObject();
  sub_100050F74(v17, v12 + 16);
  *(v12 + 56) = a2;
  aBlock[4] = sub_1009A11DC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10188F938;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);

  return sub_100005070(v18);
}

uint64_t sub_10099D754(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10099D7F0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_100A87400(v2, v3, v4);
}

void sub_10099D884()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v5 = *(v4 + *(v1 + 64));

  sub_100998554(v2, v3, v4, v5);
}

uint64_t sub_10099D908(uint64_t a1)
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

  return sub_1009988C0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10099DA00(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

id sub_10099DA68()
{
  sub_100995DA0();
  v1 = v0;
  v2 = [v0 canvasView];

  if (v2)
  {
    v3 = [v2 unscaledCoordinateSpace];
    if (v3)
    {
      v4 = v3;

      return v4;
    }

    v29 = objc_opt_self();
    v30 = [v29 _atomicIncrementAssertCount];
    v49[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v49);
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    v33 = [v32 lastPathComponent];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v37 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v30;
    v39 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v39;
    v40 = sub_1005CF04C();
    *(inited + 104) = v40;
    *(inited + 72) = v31;
    *(inited + 136) = &type metadata for String;
    v41 = sub_1000053B0();
    *(inited + 112) = v34;
    *(inited + 120) = v36;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v41;
    *(inited + 152) = 226;
    v42 = v49[0];
    *(inited + 216) = v39;
    *(inited + 224) = v40;
    *(inited + 192) = v42;
    v43 = v31;
    v44 = v42;
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v37, &_mh_execute_header, v46, "no unscaledCoordinateSpace", 26, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v47 = swift_allocObject();
    v47[2] = 8;
    v47[3] = 0;
    v47[4] = 0;
    v47[5] = 0;
    v48 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    [v29 handleFailureInFunction:v26 file:v27 lineNumber:226 isFatal:0 format:v28 args:v48];
  }

  else
  {
    v6 = objc_opt_self();
    v7 = [v6 _atomicIncrementAssertCount];
    v49[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v49);
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
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_10146CA70;
    *(v15 + 56) = &type metadata for Int32;
    *(v15 + 64) = &protocol witness table for Int32;
    *(v15 + 32) = v7;
    v16 = sub_100006370(0, &qword_1019F4D30);
    *(v15 + 96) = v16;
    v17 = sub_1005CF04C();
    *(v15 + 104) = v17;
    *(v15 + 72) = v8;
    *(v15 + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(v15 + 112) = v11;
    *(v15 + 120) = v13;
    *(v15 + 176) = &type metadata for UInt;
    *(v15 + 184) = &protocol witness table for UInt;
    *(v15 + 144) = v18;
    *(v15 + 152) = 225;
    v19 = v49[0];
    *(v15 + 216) = v16;
    *(v15 + 224) = v17;
    *(v15 + 192) = v19;
    v20 = v8;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v15);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "no canvasView", 13, 2, _swiftEmptyArrayStorage);

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

    [v6 handleFailureInFunction:v26 file:v27 lineNumber:225 isFatal:0 format:v28 args:v25];
  }

  return [objc_allocWithZone(UIView) init];
}

uint64_t sub_10099E1AC(uint64_t a1, uint64_t a2, char a3)
{
  v17[1] = a1;
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for CalculateExpression.Base();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:a3 & 1];
  sub_1005B981C(&unk_101A0A338);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v11 = CalculateKeyFormat;
  *(inited + 32) = CalculateKeyFormat;
  *(inited + 64) = sub_100006370(0, &qword_1019FF3E0);
  *(inited + 40) = v9;

  v12 = v11;
  v13 = v9;
  sub_100BD79F4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_101A0A348);
  (*(v6 + 104))(v8, enum case for CalculateExpression.Base.base10(_:), v5);
  UUID.init()();
  type metadata accessor for CalculateExpression();
  swift_allocObject();
  CalculateExpression.init(_:options:base:id:)();
  v17[2] = CalculateExpressionTypesetImage(expression:result:showResult:fontSize:)();
  v14 = objc_allocWithZone(sub_1005B981C(&unk_101A0A380));

  v15 = UIHostingController.init(rootView:)();

  return v15;
}

uint64_t sub_10099E44C(char a1, void *a2, uint64_t a3, int a4)
{
  v22 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    isa = Strong;
    v21 = a3;
    sub_100995DA0();
    if (!v13)
    {
LABEL_7:

      goto LABEL_8;
    }

    v14 = v13;
    v15 = [(objc_class *)isa freehandInfo];
    v16 = [v14 repForInfo:v15];

    if (v16)
    {
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = v17;
        isa = PKStroke._bridgeToObjectiveC()().super.isa;
        [v18 didUpdateShouldSolveMathForTriggerStroke:isa shouldSolveMath:a1 & 1 undoable:v22 & 1];
      }

      else
      {
        isa = v16;
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v19 = [a2 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10099BFF8(v10, a1 & 1);
  return (*(v8 + 8))(v10, v7);
}

void sub_10099E640()
{
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_isPresentingPopoverUI) = 0;
  if (*(v0 + OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_shouldCallEditMenuTapForRep) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_100995DA0();
      if (v3)
      {
        v4 = v3;
        v5 = [v2 freehandInfo];
        v8 = [v4 repForInfo:v5];

        if (!v8)
        {
          return;
        }

        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (v6)
        {
          [v6 handleEditMenuTapAtPoint:1 inputType:{0.0, 0.0}];
        }

        v7 = v8;
      }

      else
      {
        v7 = v2;
      }
    }
  }
}

void sub_10099E764(uint64_t a1)
{
  sub_100995DA0();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 mathCalculationController];

    if (v4)
    {
      v5 = CRLMathCalculationController.observedExpression(for:)(a1);

      if (v5)
      {
        CalculateExpressionTypesetImage(expression:result:showResult:fontSize:)();
        sub_1005B981C(&qword_101A0A378);
        swift_allocObject();

        ImageRenderer.init(content:)();
        ImageRenderer.scale.setter();
        ImageRenderer.uiImage.getter();
      }
    }
  }
}

uint64_t sub_10099E870(uint64_t a1, uint64_t a2, char a3)
{
  v20[0] = a1;
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for CalculateExpression.Base();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(NSNumber);
  v10 = [v9 initWithUnsignedInteger:{a3 & 1, v20[0]}];
  sub_1005B981C(&unk_101A0A338);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v12 = CalculateKeyFormat;
  *(inited + 32) = CalculateKeyFormat;
  *(inited + 64) = sub_100006370(0, &qword_1019FF3E0);
  *(inited + 40) = v10;

  v13 = v12;
  v14 = v10;
  sub_100BD79F4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_101A0A348);
  (*(v6 + 104))(v8, enum case for CalculateExpression.Base.base10(_:), v5);
  UUID.init()();
  type metadata accessor for CalculateExpression();
  swift_allocObject();
  CalculateExpression.init(_:options:base:id:)();
  v20[2] = CalculateExpressionTypesetImage(expression:result:showResult:fontSize:)();
  sub_1005B981C(&qword_101A0A378);
  swift_allocObject();

  ImageRenderer.init(content:)();
  v15 = *(v20[1] + OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_mathViewController);
  if (v15)
  {
    v16 = v15;
    v17 = [v16 viewControllerForPresentingUI];
    if (v17)
    {

      ImageRenderer.scale.setter();
    }
  }

  v18 = ImageRenderer.uiImage.getter();

  return v18;
}

void sub_10099EB6C(uint64_t (**a1)(uint64_t a1), uint64_t a2, _BYTE *a3, unint64_t isUniquelyReferenced_nonNull_native)
{
  v240 = a3;
  v239 = a2;
  v226 = a1;
  v235 = type metadata accessor for DispatchQoS();
  v229 = *(v235 - 8);
  __chkstk_darwin(v235);
  v224 = &v209 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for DispatchWorkItemFlags();
  v228 = *(v234 - 8);
  __chkstk_darwin(v234);
  v237 = &v209 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v249 = *(v8 - 8);
  __chkstk_darwin(v8);
  v241 = &v209 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v231 = &v209 - v11;
  __chkstk_darwin(v12);
  v14 = &v209 - v13;
  __chkstk_darwin(v15);
  v17 = &v209 - v16;
  __chkstk_darwin(v18);
  v20 = &v209 - v19;
  __chkstk_darwin(v21);
  v225 = &v209 - v22;
  __chkstk_darwin(v23);
  v222 = &v209 - v24;
  __chkstk_darwin(v25);
  v27 = &v209 - v26;
  __chkstk_darwin(v28);
  v233 = (&v209 - v29);
  v236 = v30;
  __chkstk_darwin(v31);
  v33 = &v209 - v32;
  v230 = v4;
  sub_100995DA0();
  if (v34)
  {
    v35 = v34;
    v36 = [v34 mathCalculationController];

    v232 = v36;
    if (v36)
    {
      if (isUniquelyReferenced_nonNull_native >> 62)
      {
        goto LABEL_101;
      }

      for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v238 = v27;
        v244 = v20;
        v216 = v14;
        v213 = v17;
        v248 = v8;
        if (i)
        {
          v14 = 0;
          v247 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
          v246 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
          v243 = (v249 + 16);
          v245 = (v249 + 8);
          v38 = _swiftEmptyDictionarySingleton;
          while (1)
          {
            if (v247)
            {
              v8 = v38;
              v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v14 >= *(v246 + 16))
              {
                goto LABEL_98;
              }

              v8 = v38;
              v42 = *(isUniquelyReferenced_nonNull_native + 8 * v14 + 32);
            }

            v43 = v42;
            v17 = (v14 + 1);
            if (__OFADD__(v14, 1))
            {
              goto LABEL_97;
            }

            v27 = i;
            v44 = isUniquelyReferenced_nonNull_native;
            v45 = [v42 uuid];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v20 = v43;
            v46 = v8;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v265 = v8;
            v8 = sub_10003E994(v33);
            v48 = *(v46 + 16);
            v49 = (v47 & 1) == 0;
            v50 = v48 + v49;
            if (__OFADD__(v48, v49))
            {
              goto LABEL_99;
            }

            v51 = v47;
            if (*(v46 + 24) >= v50)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v54 = v265;
                if (v47)
                {
                  goto LABEL_7;
                }
              }

              else
              {
                sub_100AA990C();
                v54 = v265;
                if (v51)
                {
                  goto LABEL_7;
                }
              }
            }

            else
            {
              sub_100A923C0(v50, isUniquelyReferenced_nonNull_native);
              v52 = sub_10003E994(v33);
              if ((v51 & 1) != (v53 & 1))
              {
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return;
              }

              v8 = v52;
              v54 = v265;
              if (v51)
              {
LABEL_7:
                v39 = v54[7];
                v40 = *(v39 + 8 * v8);
                *(v39 + 8 * v8) = v20;
                v41 = v54;

                v8 = v248;
                (*v245)(v33, v248);
                v38 = v41;
                goto LABEL_8;
              }
            }

            v55 = v54;
            v54[(v8 >> 6) + 8] |= 1 << v8;
            isUniquelyReferenced_nonNull_native = v249;
            v56 = v248;
            (*(v249 + 16))(v54[6] + *(v249 + 72) * v8, v33, v248);
            *(v55[7] + 8 * v8) = v20;
            v8 = v56;

            (*(isUniquelyReferenced_nonNull_native + 8))(v33, v56);
            v57 = v55[2];
            v58 = __OFADD__(v57, 1);
            v59 = v57 + 1;
            if (v58)
            {
              goto LABEL_100;
            }

            v38 = v55;
            v55[2] = v59;
LABEL_8:
            ++v14;
            i = v27;
            isUniquelyReferenced_nonNull_native = v44;
            if (v17 == v27)
            {
              goto LABEL_26;
            }
          }
        }

        v38 = _swiftEmptyDictionarySingleton;
LABEL_26:
        v242 = v38;
        v33 = v226;
        v17 = (v226 + 7);
        v60 = 1 << *(v226 + 32);
        v61 = -1;
        if (v60 < 64)
        {
          v61 = ~(-1 << v60);
        }

        isUniquelyReferenced_nonNull_native = v61 & v226[7];
        v62 = &v232[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions];
        v221 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressionStrokeGroupsQueue;

        swift_beginAccess();
        v27 = 0;
        v20 = ((v60 + 63) >> 6);
        v247 = v249 + 16;
        v246 = v249 + 32;
        v63 = (v249 + 8);
        v217 = v236 + 7;
        v218 = &v258;
        ++v229;
        ++v228;
        v243 = (v249 + 8);
        v245 = v62;
        v227 = v17;
        if (isUniquelyReferenced_nonNull_native)
        {
          break;
        }

        while (1)
        {
LABEL_33:
          v66 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            __break(1u);
            goto LABEL_95;
          }

          if (v66 >= v20)
          {
            break;
          }

          isUniquelyReferenced_nonNull_native = *&v17[8 * v66];
          ++v27;
          if (isUniquelyReferenced_nonNull_native)
          {
            v14 = v63;
            v27 = v66;
            goto LABEL_37;
          }
        }

        v210 = _swiftEmptyArrayStorage;
        if (_swiftEmptyArrayStorage >> 62)
        {
          v208 = _CocoaArrayWrapper.endIndex.getter();
          v20 = v225;
          if (v208)
          {
            v112 = sub_1005C04C0(_swiftEmptyArrayStorage);
          }

          else
          {
            v112 = _swiftEmptySetSingleton;
          }
        }

        else
        {
          v112 = _swiftEmptySetSingleton;
          v20 = v225;
        }

        v264 = v112;
        v14 = (v240 + 56);
        v113 = 1 << v240[32];
        v114 = -1;
        if (v113 < 64)
        {
          v114 = ~(-1 << v113);
        }

        isUniquelyReferenced_nonNull_native = v114 & *(v240 + 7);
        v212 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_pkExpressionsQueue;

        swift_beginAccess();
        v27 = 0;
        v33 = (v113 + 63) >> 6;
        v226 = &v252;
        v211 = v14;
        if (isUniquelyReferenced_nonNull_native)
        {
          while (1)
          {
LABEL_64:
            v116 = __clz(__rbit64(isUniquelyReferenced_nonNull_native));
            isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
            v117 = v249;
            v118 = *(v240 + 6) + *(v249 + 72) * (v116 | (v27 << 6));
            v238 = *(v249 + 16);
            (v238)(v20, v118, v8);
            v17 = *(v117 + 32);
            (v17)(v244, v20, v8);
            v119 = *v245;
            if (!*(*v245 + 2))
            {
              goto LABEL_59;
            }

            v120 = sub_10003E994(v244);
            if (v121)
            {
              v122 = (*(v119 + 7) + (v120 << 6));
              v227 = v17;
              v124 = *v122;
              v123 = v122[1];
              v125 = v122[2];
              v126 = v122[3];
              v127 = v122[4];
              v233 = v122[5];
              v128 = v122[6];
              v129 = v122[7];
              v130 = v126;

              v131 = v127;

              aBlock = v124;
              v257 = v123;
              v258 = v125;
              v259 = v126;
              v260 = v127;
              v261 = v233;
              v262 = v128;
              v263 = v129;

              sub_10000CAAC(&aBlock, &qword_101A0A308);
              v132 = v222;
              v223 = v125;
              CalculateExpression.id.getter();
              swift_beginAccess();
              sub_1006F6F7C(v132, &v265);
              v133 = v249;
              v233 = *(v249 + 8);
              v134 = v248;
              (v233)(v132, v248);
              swift_endAccess();
              sub_10000CAAC(&v265, &qword_101A0A308);
              CalculateExpression.id.getter();
              v135 = v232;
              v219 = *&v232[v212];
              static DispatchWorkItemFlags.barrier.getter();
              v136 = v213;
              (v238)(v213, v132, v134);
              v220 = *(v133 + 80);
              v137 = (v220 + 24) & ~v220;
              v217 = v137;
              v138 = swift_allocObject();
              *(v138 + 16) = v135;
              v227(v138 + v137, v136, v134);
              v254 = sub_1009A1240;
              v255 = v138;
              v250 = _NSConcreteStackBlock;
              v251 = *"";
              v252 = sub_100007638;
              v253 = &unk_10188F758;
              v139 = _Block_copy(&v250);
              v215 = v135;
              v140 = v224;
              static DispatchQoS.unspecified.getter();
              v141 = v237;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v139);
              v219 = *v229;
              (v219)(v140, v235);
              v218 = *v228;
              (v218)(v141, v234);

              v142 = v248;
              (v233)(v132, v248);
              CalculateExpression.id.getter();
              v214 = *&v135[v221];
              static DispatchWorkItemFlags.barrier.getter();
              v143 = v136;
              v144 = v142;
              (v238)(v136, v132, v142);
              v145 = v217;
              v146 = swift_allocObject();
              v147 = v215;
              *(v146 + 16) = v215;
              v227(v146 + v145, v143, v144);
              v254 = sub_1009A1244;
              v255 = v146;
              v250 = _NSConcreteStackBlock;
              v251 = *"";
              v252 = sub_100007638;
              v253 = &unk_10188F7A8;
              v148 = _Block_copy(&v250);
              v149 = v147;
              static DispatchQoS.unspecified.getter();
              v150 = v237;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v148);
              (v219)(v140, v235);
              v151 = v150;
              (v218)(v150, v234);

              v152 = v248;
              (v233)(v132, v248);
              v215 = *&v232[v221];
              static DispatchWorkItemFlags.barrier.getter();
              v153 = v152;
              (v238)(v132, v244, v152);
              v154 = v217;
              v155 = swift_allocObject();
              *(v155 + 16) = v149;
              v227(v155 + v154, v132, v153);
              v156 = v223;
              v254 = sub_1009A1244;
              v255 = v155;
              v250 = _NSConcreteStackBlock;
              v251 = *"";
              v252 = sub_100007638;
              v253 = &unk_10188F7F8;
              v157 = _Block_copy(&v250);
              v158 = v149;
              static DispatchQoS.unspecified.getter();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v157);
              (v219)(v140, v235);
              (v218)(v151, v234);

              sub_100E712C8(&v250, v156);

              CalculateExpression.id.getter();
              sub_100995DA0();
              if (v159)
              {
                v160 = v159;
                v161 = [v159 mathCalculationController];

                v14 = v211;
                if (v161)
                {
                  v17 = v216;
                  sub_100A86F20(v216);

                  v8 = v248;
                }

                else
                {

                  v8 = v248;
                  v17 = v216;
                }

                v20 = v225;
                v63 = v243;
              }

              else
              {

                v8 = v248;
                v17 = v216;
                v20 = v225;
                v63 = v243;
                v14 = v211;
              }

              v162 = v233;
              (v233)(v17, v8);
              (v162)(v244, v8);
              if (!isUniquelyReferenced_nonNull_native)
              {
                break;
              }
            }

            else
            {

LABEL_59:
              (*v63)(v244, v8);
              if (!isUniquelyReferenced_nonNull_native)
              {
                break;
              }
            }
          }
        }

        while (1)
        {
          v115 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v115 >= v33)
          {

            v163 = v264;
            v20 = v230;
            sub_10099BBC4(v264);
            v164 = sub_1009956C0(v163);

            sub_10099D4AC(v164, v20);

            v250 = _swiftEmptyArrayStorage;
            isUniquelyReferenced_nonNull_native = v239 + 56;
            v165 = 1 << *(v239 + 32);
            v166 = -1;
            if (v165 < 64)
            {
              v166 = ~(-1 << v165);
            }

            v33 = v166 & *(v239 + 56);
            v244 = OBJC_IVAR____TtC8Freeform30CRLMathRecognitionItemsHandler_computedResultVisibilityStatesQueue;
            v17 = ((v165 + 63) >> 6);
            v245 = &v258;

            v14 = 0;
            while (v33)
            {
LABEL_83:
              while (1)
              {
                v168 = __clz(__rbit64(v33));
                v33 &= v33 - 1;
                v169 = v249;
                v27 = *(v249 + 16);
                v20 = v231;
                (v27)(v231, *(v239 + 48) + *(v249 + 72) * (v168 | (v14 << 6)), v8);
                v170 = *(v169 + 32);
                v171 = v241;
                v170(v241, v20, v8);
                if (v242[2])
                {
                  v172 = sub_10003E994(v171);
                  v171 = v241;
                  if (v173)
                  {
                    break;
                  }
                }

                (*v243)(v171, v8);
                if (!v33)
                {
                  goto LABEL_79;
                }
              }

              v240 = *(v242[7] + 8 * v172);
              v233 = [v240 strokeGroupIdentifier];
              v238 = *&v232[v221];
              static DispatchWorkItemFlags.barrier.getter();
              v174 = v222;
              (v27)(v222, v171, v8);
              v175 = *(v249 + 80);
              v176 = (v175 + 24) & ~v175;
              v226 = (v176 + v236);
              v177 = (v176 + v236 + 7) & 0xFFFFFFFFFFFFFFF8;
              v225 = v175;
              v178 = swift_allocObject();
              v179 = v8;
              v180 = v178;
              *(v178 + 16) = v232;
              v227 = v176;
              v170((v178 + v176), v174, v179);
              v181 = v233;
              *&v180[v177] = v233;
              v260 = sub_1009A1248;
              v261 = v180;
              aBlock = _NSConcreteStackBlock;
              v257 = *"";
              v258 = sub_100007638;
              v259 = &unk_10188F848;
              v182 = _Block_copy(&aBlock);
              v183 = v232;
              v233 = v181;
              v184 = v224;
              static DispatchQoS.unspecified.getter();
              v185 = v237;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v182);

              v233 = *v229;
              (v233)(v184, v235);
              v238 = *v228;
              (v238)(v185, v234);

              v186 = v240;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v210 = v250;
              sub_100995DA0();
              v240 = v186;
              if (v187)
              {
                v188 = v187;
                v189 = [v187 mathCalculationController];

                v186 = v240;
                if (v189)
                {
                  v190 = v237;
                  static DispatchWorkItemFlags.barrier.getter();
                  v191 = swift_allocObject();
                  *(v191 + 16) = v189;
                  *(v191 + 24) = v186;
                  v260 = sub_1009A1250;
                  v261 = v191;
                  aBlock = _NSConcreteStackBlock;
                  v257 = *"";
                  v258 = sub_100007638;
                  v259 = &unk_10188F8E8;
                  v192 = _Block_copy(&aBlock);
                  v193 = v240;
                  v223 = v189;
                  v194 = v224;
                  static DispatchQoS.unspecified.getter();
                  OS_dispatch_queue.async(group:qos:flags:execute:)();
                  v195 = v192;
                  v186 = v240;
                  _Block_release(v195);
                  (v233)(v194, v235);
                  (v238)(v190, v234);
                }
              }

              v196 = [v186 uuid];
              v197 = v222;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              LODWORD(v220) = [v186 shouldSolveMathFlagIsSet];
              v223 = *&v244[v230];
              static DispatchWorkItemFlags.barrier.getter();
              v198 = v213;
              v199 = v248;
              (v27)(v213, v197, v248);
              v200 = v226;
              v201 = swift_allocObject();
              v202 = v230;
              *(v201 + 16) = v230;
              v170(v227 + v201, v198, v199);
              *(v200 + v201) = v220;
              v260 = sub_1009A124C;
              v261 = v201;
              v8 = v199;
              aBlock = _NSConcreteStackBlock;
              v257 = *"";
              v258 = sub_100007638;
              v259 = &unk_10188F898;
              v203 = _Block_copy(&aBlock);
              v204 = v202;
              v27 = v224;
              static DispatchQoS.unspecified.getter();
              v205 = v237;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v203);

              (v233)(v27, v235);
              (v238)(v205, v234);
              v20 = v243;
              v206 = *v243;
              (*v243)(v222, v8);
              v206(v241, v8);
            }

LABEL_79:
            while (1)
            {
              v167 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_96;
              }

              if (v167 >= v17)
              {

                sub_100996C8C(v210);

                v207 = v232;
                sub_100A84F54();

                return;
              }

              v33 = *(isUniquelyReferenced_nonNull_native + 8 * v167);
              ++v14;
              if (v33)
              {
                v14 = v167;
                goto LABEL_83;
              }
            }
          }

          isUniquelyReferenced_nonNull_native = *(v14 + 8 * v115);
          ++v27;
          if (isUniquelyReferenced_nonNull_native)
          {
            v27 = v115;
            goto LABEL_64;
          }
        }

LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        ;
      }

      while (1)
      {
        v14 = v63;
LABEL_37:
        v67 = __clz(__rbit64(isUniquelyReferenced_nonNull_native));
        isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
        v68 = v33;
        v69 = v249;
        v70 = *(v33 + 48) + *(v249 + 72) * (v67 | (v27 << 6));
        v71 = *(v249 + 16);
        v72 = v233;
        v71(v233, v70, v8);
        v64 = v238;
        v223 = *(v69 + 32);
        (v223)(v238, v72, v8);
        v73 = *v245;
        if (!*(*v245 + 2))
        {
          goto LABEL_31;
        }

        v74 = sub_10003E994(v64);
        if (v75)
        {
          v76 = (*(v73 + 7) + (v74 << 6));
          v77 = v76[1];
          v220 = *v76;
          v78 = v76[2];
          v79 = v76[3];
          v80 = v76[4];
          v219 = v76[5];
          v14 = v76[6];
          v81 = v76[7];
          v82 = v80;

          v83 = v79;

          *&v265 = v220;
          *(&v265 + 1) = v77;
          v266 = v78;
          v267 = v79;
          v268 = v80;
          v269 = v219;
          v270 = v14;
          v271 = v81;

          sub_10000CAAC(&v265, &qword_101A0A308);
          v84 = v242;
          if (v242[2])
          {
            v220 = v78;
            v14 = v238;
            v85 = sub_10003E994(v238);
            v8 = v248;
            if (v86)
            {
              v219 = *(v84[7] + 8 * v85);
              v87 = [v219 strokeGroupIdentifier];
              v88 = v232;
              v215 = *&v232[v221];
              static DispatchWorkItemFlags.barrier.getter();
              v89 = v222;
              v71(v222, v14, v8);
              v90 = (*(v249 + 80) + 24) & ~*(v249 + 80);
              v91 = (v217 + v90) & 0xFFFFFFFFFFFFFFF8;
              v92 = swift_allocObject();
              *(v92 + 16) = v88;
              (v223)(v92 + v90, v89, v8);
              *(v92 + v91) = v87;
              v260 = sub_1009A0DE0;
              v261 = v92;
              aBlock = _NSConcreteStackBlock;
              v257 = *"";
              v258 = sub_100007638;
              v259 = &unk_10188F6B8;
              v93 = _Block_copy(&aBlock);
              v223 = v88;
              v94 = v87;
              v95 = v224;
              static DispatchQoS.unspecified.getter();
              v96 = v237;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v93);

              v97 = *v229;
              v98 = v95;
              v99 = v219;
              (*v229)(v98, v235);
              v215 = *v228;
              (v215)(v96, v234);

              [v99 sortIndex];
              v100 = v238;
              sub_100A84964(v238, v101);
              v102 = [v99 expression];
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v14 = v103;

              CalculateExpression.expression.setter();
              CalculateExpression.setNeedsEvaluation(rebuild:)(0);
              sub_100995DA0();
              if (v104)
              {
                v223 = v97;
                v105 = v104;
                v14 = [v104 mathCalculationController];

                v63 = v243;
                if (v14)
                {
                  v106 = v237;
                  static DispatchWorkItemFlags.barrier.getter();
                  v107 = swift_allocObject();
                  *(v107 + 16) = v14;
                  *(v107 + 24) = v99;
                  v260 = sub_1009A0DE4;
                  v261 = v107;
                  aBlock = _NSConcreteStackBlock;
                  v257 = *"";
                  v258 = sub_100007638;
                  v259 = &unk_10188F708;
                  v108 = _Block_copy(&aBlock);
                  v219 = v99;
                  v14 = v14;
                  v109 = v224;
                  static DispatchQoS.unspecified.getter();
                  OS_dispatch_queue.async(group:qos:flags:execute:)();

                  _Block_release(v108);

                  (v223)(v109, v235);
                  (v215)(v106, v234);
                  v8 = v248;
                  (*v63)(v238, v248);

LABEL_49:

                  goto LABEL_50;
                }

                v110 = *v243;
                v111 = v238;
              }

              else
              {
                v63 = v243;
                v110 = *v243;
                v111 = v100;
              }

              v8 = v248;
              v110(v111, v248);

              goto LABEL_49;
            }

            v63 = v243;
            (*v243)(v14, v8);
          }

          else
          {

            v63 = v243;
            v8 = v248;
            (*v243)(v238, v248);
          }

LABEL_50:
          v33 = v226;
          v17 = v227;
          if (!isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_33;
          }
        }

        else
        {

          v64 = v238;
LABEL_31:
          v65 = v64;
          v63 = v14;
          (*v14)(v65, v8);
          v17 = v227;
          v33 = v68;
          if (!isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_33;
          }
        }
      }
    }
  }
}

void sub_1009A0CF8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100995DA0();
    if (v2)
    {
      v3 = v2;
      v4 = [v1 freehandInfo];
      v5 = [v3 repForInfo:v4];

      if (!v5)
      {
LABEL_6:
        Strong = 0;
        goto LABEL_7;
      }

      objc_opt_self();
      Strong = swift_dynamicCastObjCClass();
      v1 = v5;
      if (Strong)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

LABEL_7:
  v6 = Strong;
  [Strong didUpdateMathResultView];
}

uint64_t sub_1009A0DEC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1009A0EB0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1009A0F28()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1009A1000()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100A878D8(v3, v0 + v2, v4);
}

uint64_t sub_1009A1090()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_1009A1158()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return sub_10099C2F8(v2, v3, v4);
}

id sub_1009A1298()
{
  result = [objc_opt_self() blackColor];
  qword_101AD6E98 = result;
  return result;
}

void sub_1009A12D4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD6EA0 = v4;
  *algn_101AD6EA8 = v6;
}

id sub_1009A139C()
{
  sub_1005B981C(&unk_1019F4D60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101470790;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 colorWithR:255 G:244 B:153];
  *(v0 + 40) = [v1 colorWithR:216 G:253 B:118];
  *(v0 + 48) = [v1 colorWithR:169 G:214 B:251];
  *(v0 + 56) = [v1 colorWithR:254 G:201 B:240];
  *(v0 + 64) = [v1 colorWithR:237 G:209 B:254];
  *(v0 + 72) = [v1 colorWithR:191 G:248 B:236];
  *(v0 + 80) = [v1 colorWithR:255 G:220 B:158];
  *(v0 + 88) = [v1 colorWithR:254 G:205 B:214];
  *(v0 + 96) = [v1 colorWithR:237 G:178 B:149];
  result = [v1 colorWithR:198 G:216 B:255];
  *(v0 + 104) = result;
  qword_101A0A3A0 = v0;
  return result;
}

id sub_1009A1570()
{
  sub_1005B981C(&unk_1019F4D60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101470790;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 colorWithR:231 G:192 B:37];
  *(v0 + 40) = [v1 colorWithR:92 G:186 B:46];
  *(v0 + 48) = [v1 colorWithR:5 G:147 B:244];
  *(v0 + 56) = [v1 colorWithR:236 G:121 B:220];
  *(v0 + 64) = [v1 colorWithR:164 G:119 B:236];
  *(v0 + 72) = [v1 colorWithR:74 G:194 B:168];
  *(v0 + 80) = [v1 colorWithR:251 G:140 B:29];
  *(v0 + 88) = [v1 colorWithR:253 G:35 B:88];
  *(v0 + 96) = [v1 colorWithR:171 G:90 B:77];
  result = [v1 colorWithR:126 G:156 B:217];
  *(v0 + 104) = result;
  qword_101A0A3A8 = v0;
  return result;
}

id sub_1009A1744()
{
  sub_1005B981C(&unk_1019F4D60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101470790;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 colorWithR:231 G:201 B:88];
  *(v0 + 40) = [v1 colorWithR:123 G:196 B:90];
  *(v0 + 48) = [v1 colorWithR:73 G:165 B:242];
  *(v0 + 56) = [v1 colorWithR:236 G:145 B:222];
  *(v0 + 64) = [v1 colorWithR:177 G:142 B:236];
  *(v0 + 72) = [v1 colorWithR:111 G:203 B:180];
  *(v0 + 80) = [v1 colorWithR:248 G:159 B:80];
  *(v0 + 88) = [v1 colorWithR:250 G:85 B:117];
  *(v0 + 96) = [v1 colorWithR:184 G:119 B:108];
  result = [v1 colorWithR:147 G:172 B:220];
  *(v0 + 104) = result;
  qword_101A0A3B0 = v0;
  return result;
}

void sub_1009A1918()
{
  sub_1005B981C(&unk_1019F61D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101488C80;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v0 + 32) = v6;
  *(v0 + 40) = v8;
  v9 = [v1 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v0 + 48) = v13;
  *(v0 + 56) = v15;
  v16 = [v1 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v0 + 64) = v20;
  *(v0 + 72) = v22;
  v23 = [v1 mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *(v0 + 80) = v27;
  *(v0 + 88) = v29;
  v30 = [v1 mainBundle];
  v31 = String._bridgeToObjectiveC()();
  v32 = String._bridgeToObjectiveC()();
  v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  *(v0 + 96) = v34;
  *(v0 + 104) = v36;
  v37 = [v1 mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = String._bridgeToObjectiveC()();
  v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  *(v0 + 112) = v41;
  *(v0 + 120) = v43;
  v44 = [v1 mainBundle];
  v45 = String._bridgeToObjectiveC()();
  v46 = String._bridgeToObjectiveC()();
  v47 = [v44 localizedStringForKey:v45 value:v46 table:0];

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  *(v0 + 128) = v48;
  *(v0 + 136) = v50;
  v51 = [v1 mainBundle];
  v52 = String._bridgeToObjectiveC()();
  v53 = String._bridgeToObjectiveC()();
  v54 = [v51 localizedStringForKey:v52 value:v53 table:0];

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  *(v0 + 144) = v55;
  *(v0 + 152) = v57;
  v58 = [v1 mainBundle];
  v59 = String._bridgeToObjectiveC()();
  v60 = String._bridgeToObjectiveC()();
  v61 = [v58 localizedStringForKey:v59 value:v60 table:0];

  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  *(v0 + 160) = v62;
  *(v0 + 168) = v64;
  v65 = [v1 mainBundle];
  v66 = String._bridgeToObjectiveC()();
  v67 = String._bridgeToObjectiveC()();
  v68 = [v65 localizedStringForKey:v66 value:v67 table:0];

  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;

  *(v0 + 176) = v69;
  *(v0 + 184) = v71;
  off_101A0A3B8 = v0;
}

unint64_t sub_1009A1F44()
{
  result = qword_101A0A458;
  if (!qword_101A0A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0A458);
  }

  return result;
}

void sub_1009A1F98(void *a1)
{
  v3 = [a1 userIdentity];
  v4 = [v3 userRecordID];

  if (v4)
  {
    v10 = [v4 recordName];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    LODWORD(v10) = v9;
    if (v5 == v8 && v7 == v9)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v13 = [objc_opt_self() sharedApplication];
    v14 = [v13 delegate];

    if (!v14)
    {
      __break(1u);
      return;
    }

    type metadata accessor for CRLiOSAppDelegate();
    v15 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_iCloudStatus);

    swift_unknownObjectRelease();
    swift_beginAccess();
    v16 = *(v15 + 64);
    v17 = *(*(v15 + 56) + 16);
    v18 = v16;

    os_unfair_lock_lock(v17);
    v10 = v18;
    os_unfair_lock_unlock(v17);

    if (!v16)
    {
      v22 = objc_opt_self();
      LODWORD(v10) = [v22 _atomicIncrementAssertCount];
      v41[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v41);
      StaticString.description.getter();
      v21 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v23 = String._bridgeToObjectiveC()();

      v24 = [v23 lastPathComponent];

      v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v25;

      if (qword_1019F20A0 == -1)
      {
LABEL_23:
        v26 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v10;
        v28 = sub_1005CF000();
        *(inited + 96) = v28;
        v29 = sub_1009A2A78(&qword_1019F52E0, sub_1005CF000);
        *(inited + 104) = v29;
        *(inited + 72) = v21;
        *(inited + 136) = &type metadata for String;
        v30 = sub_1000053B0();
        *(inited + 112) = v1;
        *(inited + 120) = v2;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v30;
        *(inited + 152) = 80;
        v31 = v41[0];
        *(inited + 216) = v28;
        *(inited + 224) = v29;
        *(inited + 192) = v31;
        v32 = v21;
        v33 = v31;
        v34 = static os_log_type_t.error.getter();
        sub_100005404(v26, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v35 = static os_log_type_t.error.getter();
        sub_100005404(v26, &_mh_execute_header, v35, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v36 = swift_allocObject();
        v36[2] = 8;
        v36[3] = 0;
        v36[4] = 0;
        v36[5] = 0;
        v37 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v38 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v39 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v40 = String._bridgeToObjectiveC()();

        [v22 handleFailureInFunction:v38 file:v39 lineNumber:80 isFatal:0 format:v40 args:v37];

        NSNotFound.getter();
        return;
      }

LABEL_27:
      swift_once();
      goto LABEL_23;
    }

    v19 = [v10 recordName];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v20;

LABEL_15:
    v41[0] = v5;
    v41[1] = v7;
    sub_100017CD8();
    v21 = StringProtocol.hash.getter();

    if (qword_1019F1A30 != -1)
    {
      swift_once();
    }

    if (qword_101A0A3B0 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();

      if (v22)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = *((qword_101A0A3B0 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v22)
      {
LABEL_19:
        if (v21 != 0x8000000000000000 || v22 != -1)
        {
          return;
        }

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  NSNotFound.getter();
}

uint64_t sub_1009A2624(void *a1, char *a2)
{
  v34 = a2;
  v3 = type metadata accessor for IndexSet();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  __chkstk_darwin(v19);
  v21 = &v31 - v20;
  sub_1009A1F98(a1);
  v23 = v22;
  if (v22 != NSNotFound.getter())
  {
    sub_1009A2A78(&qword_101A09758, &type metadata accessor for IndexSet);
    v32 = v6;
    v33 = v23;
    dispatch thunk of SetAlgebra.init()();
    v35 = 0;
    dispatch thunk of SetAlgebra.insert(_:)();
    v35 = 1;
    dispatch thunk of SetAlgebra.insert(_:)();
    v35 = 2;
    dispatch thunk of SetAlgebra.insert(_:)();
    v35 = 3;
    dispatch thunk of SetAlgebra.insert(_:)();
    v35 = 4;
    dispatch thunk of SetAlgebra.insert(_:)();
    v35 = 5;
    dispatch thunk of SetAlgebra.insert(_:)();
    v35 = 6;
    dispatch thunk of SetAlgebra.insert(_:)();
    v35 = 7;
    dispatch thunk of SetAlgebra.insert(_:)();
    v35 = 8;
    dispatch thunk of SetAlgebra.insert(_:)();
    v35 = 9;
    dispatch thunk of SetAlgebra.insert(_:)();
    v25 = *(v4 + 16);
    v25(v15, v18, v3);
    v25(v9, v18, v3);
    v31 = v15;
    v25(v32, v34, v3);
    dispatch thunk of SetAlgebra.symmetricDifference(_:)();
    value = v33;
    dispatch thunk of SetAlgebra.intersection(_:)();
    v27 = *(v4 + 8);
    v27(v12, v3);
    v27(v18, v3);
    if ((IndexSet.isEmpty.getter() & 1) == 0 && IndexSet.contains(_:)(value))
    {
      v37 = IndexSet.integerGreaterThan(_:)(value);
      if (v37.is_nil)
      {
        v28 = IndexSet.first.getter();
        v30 = v29;
        v27(v21, v3);
        if (v30)
        {
          return v33;
        }

        else
        {
          return v28;
        }
      }

      value = v37.value;
    }

    v27(v21, v3);
    return value;
  }

  return NSNotFound.getter();
}

uint64_t sub_1009A2A78(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1009A2AC0(uint64_t a1, unint64_t a2)
{
  if (a2 <= 9)
  {
    switch(a1)
    {
      case 2:
        if (qword_1019F1A30 != -1)
        {
          a1 = swift_once();
        }

        v3 = qword_101A0A3B0;
        if ((qword_101A0A3B0 & 0xC000000000000001) != 0)
        {
          goto LABEL_57;
        }

        if (*((qword_101A0A3B0 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
        {
          goto LABEL_48;
        }

        __break(1u);
        break;
      case 1:
        if (qword_1019F1A28 != -1)
        {
          swift_once();
        }

        v3 = qword_101A0A3A8;
        if ((qword_101A0A3A8 & 0xC000000000000001) == 0)
        {
          if (*((qword_101A0A3A8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
          {
            __break(1u);
            goto LABEL_9;
          }

LABEL_48:
          v46 = *(v3 + 8 * a2 + 32);
          goto LABEL_49;
        }

LABEL_57:

        return specialized _ArrayBuffer._getElementSlowPath(_:)();
      case 0:
        if (qword_1019F1A20 != -1)
        {
          swift_once();
        }

        v3 = qword_101A0A3A0;
        if ((qword_101A0A3A0 & 0xC000000000000001) != 0)
        {
          goto LABEL_57;
        }

        if (*((qword_101A0A3A0 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
        {
          goto LABEL_48;
        }

        __break(1u);
        break;
    }

    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

LABEL_9:
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = a2;
  v5 = inited + 32;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  v48 = objc_opt_self();
  LODWORD(v6) = [v48 _atomicIncrementAssertCount];
  v49 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v49);
  StaticString.description.getter();
  v7 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v8 lastPathComponent];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v13 = static OS_os_log.crlAssert;
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_10146CA70;
    *(v14 + 56) = &type metadata for Int32;
    *(v14 + 64) = &protocol witness table for Int32;
    *(v14 + 32) = v6;
    v15 = sub_1005CF000();
    *(v14 + 96) = v15;
    v16 = sub_1009A2A78(&qword_1019F52E0, sub_1005CF000);
    *(v14 + 104) = v16;
    *(v14 + 72) = v7;
    *(v14 + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(v14 + 112) = v10;
    *(v14 + 120) = v12;
    *(v14 + 176) = &type metadata for UInt;
    *(v14 + 184) = &protocol witness table for UInt;
    *(v14 + 144) = v17;
    *(v14 + 152) = 49;
    v18 = v7;
    v19 = v49;
    *(v14 + 216) = v15;
    *(v14 + 224) = v16;
    *(v14 + 192) = v19;
    v20 = v18;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v14);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v23, "Invalid index: %d", 17, 2, inited);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v10 = v24 + 3;
    v24[4] = 0;
    v24[5] = 0;
    v6 = *(inited + 16);
    v7 = inited;
    if (!v6)
    {
      break;
    }

    v12 = 0;
    inited = 40;
    while (1)
    {
      sub_100020E58((v5 + 40 * v12), *(v5 + 40 * v12 + 24));
      v25 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v26 = *v10;
      v27 = *(v25 + 16);
      v28 = __OFADD__(*v10, v27);
      v29 = *v10 + v27;
      if (v28)
      {
        break;
      }

      v30 = v24[4];
      if (v30 >= v29)
      {
        goto LABEL_27;
      }

      if (v30 + 0x4000000000000000 < 0)
      {
        goto LABEL_54;
      }

      v31 = v24[5];
      if (2 * v30 > v29)
      {
        v29 = 2 * v30;
      }

      v24[4] = v29;
      if ((v29 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_55;
      }

      v32 = v5;
      v33 = v7;
      v34 = v25;
      v35 = swift_slowAlloc();
      v36 = v35;
      v24[5] = v35;
      if (v31)
      {
        if (v35 != v31 || v35 >= &v31[8 * v26])
        {
          memmove(v35, v31, 8 * v26);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v25 = v34;
        v7 = v33;
        v5 = v32;
        inited = 40;
LABEL_27:
        v36 = v24[5];
        if (!v36)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      v25 = v34;
      v7 = v33;
      v5 = v32;
      inited = 40;
      if (!v36)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_28:
      v38 = *(v25 + 16);
      if (v38)
      {
        v39 = (v25 + 32);
        v40 = *v10;
        while (1)
        {
          v41 = *v39++;
          *&v36[8 * v40] = v41;
          v40 = *v10 + 1;
          if (__OFADD__(*v10, 1))
          {
            break;
          }

          *v10 = v40;
          if (!--v38)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

LABEL_12:

      if (++v12 == v6)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

LABEL_35:
  v42 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v45 = String._bridgeToObjectiveC()();

  [v48 handleFailureInFunction:v43 file:v44 lineNumber:49 isFatal:0 format:v45 args:v42];

  swift_setDeallocating();
  swift_arrayDestroy();
  if (qword_1019F1A10 != -1)
  {
    swift_once();
  }

  v46 = qword_101AD6E98;
LABEL_49:

  return v46;
}

uint64_t sub_1009A31FC(unint64_t a1)
{
  v7 = a1;
  if (a1 <= 9)
  {
    if (qword_1019F1A38 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_3;
  }

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = v7;
  v2 = inited + 32;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  v45 = objc_opt_self();
  LODWORD(v4) = [v45 _atomicIncrementAssertCount];
  v46 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v46);
  StaticString.description.getter();
  v1 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v9 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v11;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v12 = static OS_os_log.crlAssert;
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_10146CA70;
    *(v13 + 56) = &type metadata for Int32;
    *(v13 + 64) = &protocol witness table for Int32;
    *(v13 + 32) = v4;
    v14 = sub_1005CF000();
    *(v13 + 96) = v14;
    v15 = sub_1009A2A78(&qword_1019F52E0, sub_1005CF000);
    *(v13 + 104) = v15;
    *(v13 + 72) = v1;
    *(v13 + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(v13 + 112) = v5;
    *(v13 + 120) = v6;
    *(v13 + 176) = &type metadata for UInt;
    *(v13 + 184) = &protocol witness table for UInt;
    *(v13 + 144) = v16;
    *(v13 + 152) = 66;
    v17 = v1;
    v18 = v46;
    *(v13 + 216) = v14;
    *(v13 + 224) = v15;
    *(v13 + 192) = v18;
    v19 = v17;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v13);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v22, "Invalid index: %d", 17, 2, inited);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v5 = v23 + 3;
    v23[4] = 0;
    v23[5] = 0;
    v4 = *(inited + 16);
    v1 = inited;
    if (!v4)
    {
      break;
    }

    v6 = 0;
    inited = 40;
    while (1)
    {
      sub_100020E58((v2 + 40 * v6), *(v2 + 40 * v6 + 24));
      v24 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v7 = *v5;
      v25 = *(v24 + 16);
      v26 = __OFADD__(*v5, v25);
      v27 = *v5 + v25;
      if (v26)
      {
        break;
      }

      v28 = v23[4];
      if (v28 >= v27)
      {
        goto LABEL_23;
      }

      if (v28 + 0x4000000000000000 < 0)
      {
        goto LABEL_37;
      }

      v29 = v23[5];
      if (2 * v28 > v27)
      {
        v27 = 2 * v28;
      }

      v23[4] = v27;
      if ((v27 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_38;
      }

      v30 = v2;
      v31 = v1;
      v32 = v24;
      v33 = swift_slowAlloc();
      v34 = v33;
      v23[5] = v33;
      if (v29)
      {
        if (v33 != v29 || v33 >= &v29[8 * v7])
        {
          memmove(v33, v29, 8 * v7);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v24 = v32;
        v1 = v31;
        v2 = v30;
        inited = 40;
LABEL_23:
        v34 = v23[5];
        if (!v34)
        {
          goto LABEL_30;
        }

        goto LABEL_24;
      }

      v24 = v32;
      v1 = v31;
      v2 = v30;
      inited = 40;
      if (!v34)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_24:
      v36 = *(v24 + 16);
      if (v36)
      {
        v37 = (v24 + 32);
        v38 = *v5;
        while (1)
        {
          v39 = *v37++;
          *&v34[8 * v38] = v39;
          v38 = *v5 + 1;
          if (__OFADD__(*v5, 1))
          {
            break;
          }

          *v5 = v38;
          if (!--v36)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        break;
      }

LABEL_8:

      if (++v6 == v4)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
LABEL_3:
    if (*(off_101A0A3B8 + 2) > v7)
    {
      v8 = (off_101A0A3B8 + 16 * v7 + 32);
      return *v8;
    }

    __break(1u);
LABEL_41:
    swift_once();
  }

LABEL_31:
  v40 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v41 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  [v45 handleFailureInFunction:v41 file:v42 lineNumber:66 isFatal:0 format:v43 args:v40];

  swift_setDeallocating();
  swift_arrayDestroy();
  if (qword_1019F1A18 != -1)
  {
    swift_once();
  }

  v8 = &qword_101AD6EA0;
  return *v8;
}

void *sub_1009A380C(uint64_t a1, void *a2)
{
  v3 = v2;
  v23[0] = *v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v23 - v11;
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v24 = 0xD000000000000012;
  v25 = 0x800000010157E300;
  v23[1] = a1;
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15 = objc_allocWithZone(CRLTemporaryDirectory);
  v16 = String._bridgeToObjectiveC()();

  v24 = 0;
  v17 = [v15 initWithSignature:v16 error:{&v24, v23[0]}];

  v18 = v24;
  if (v17)
  {
    v3[2] = v17;
    v19 = v18;
    v20 = [v17 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL.appendingPathComponent(_:)();

    (*(v7 + 8))(v9, v6);
    (*(v7 + 32))(v3 + OBJC_IVAR____TtC8Freeform16CRLTemporaryFile_url, v12, v6);
  }

  else
  {
    v21 = v24;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t sub_1009A3AF4()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLTemporaryFile_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLTemporaryFile()
{
  result = qword_101A0A488;
  if (!qword_101A0A488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1009A3BEC()
{
  result = type metadata accessor for URL();
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

uint64_t sub_1009A3C8C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = type metadata accessor for UUID();
  v7 = __chkstk_darwin(v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = _swiftEmptyArrayStorage;
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100776524(0, v23[2] + 1, 1);
          v23 = v40;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_100776524(v25 > 1, v26 + 1, 1);
          v23 = v40;
        }

        v23[2] = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_14:

    return v37;
  }

  return result;
}

void *sub_1009A3F5C(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

uint64_t sub_1009A4108(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = _swiftEmptyArrayStorage;
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_10000630C(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        sub_100005070(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_100050F74(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100776A64(0, v9[2] + 1, 1);
          v9 = v17;
        }

        v13 = v9[2];
        v12 = v9[3];
        if (v13 >= v12 >> 1)
        {
          sub_100776A64((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        v9[2] = v13 + 1;
        result = sub_100050F74(v15, &v9[5 * v13 + 4]);
        v6 = v14;
      }

      else
      {
        result = sub_100005070(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_15:

    return v9;
  }

  return result;
}

void sub_1009A4280(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42[1] = a4;
  v49 = a3;
  v48 = a2;
  v50 = a1;
  v47 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v47);
  v46 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = v42 - v8;
  v9 = type metadata accessor for NavigationSplitViewVisibility();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v44 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v42 - v13;
  v43 = sub_1005B981C(&qword_101A1F160);
  __chkstk_darwin(v43);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v42 - v18;
  *(a5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v20 = _s11SwiftUIViewVMa(0);
  v21 = v20[8];
  *(a5 + v21) = swift_getKeyPath();
  sub_1005B981C(&qword_101A0A8A0);
  swift_storeEnumTagMultiPayload();
  v22 = a5 + v20[9];
  v51 = 0;
  v52 = 0xE000000000000000;
  State.init(wrappedValue:)();
  v23 = v54;
  *v22 = v53;
  *(v22 + 16) = v23;
  v24 = _s13ItemViewModelVMa();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  sub_10000BE14(v19, v16, &qword_101A1F160);
  State.init(wrappedValue:)();
  sub_10000CAAC(v19, &qword_101A1F160);
  static NavigationSplitViewVisibility.all.getter();
  (*(v10 + 16))(v44, v14, v9);
  State.init(wrappedValue:)();
  (*(v10 + 8))(v14, v9);
  v25 = a5 + v20[12];
  type metadata accessor for CGSize(0);
  v51 = 0;
  v52 = 0;
  State.init(wrappedValue:)();
  v26 = v54;
  *v25 = v53;
  *(v25 + 16) = v26;
  v27 = a5 + v20[13];
  v51 = 0;
  v52 = 0;
  State.init(wrappedValue:)();
  v28 = v54;
  *v27 = v53;
  *(v27 + 16) = v28;
  if (qword_1019F1D60 != -1)
  {
    swift_once();
  }

  v29 = qword_101AD7548;
  if (*(qword_101AD7548 + 16))
  {
    v30 = *(_s15FilterViewModelVMa() - 8);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v32 = type metadata accessor for UUID();
    v33 = *(v32 - 8);
    v34 = v45;
    (*(v33 + 16))(v45, v29 + v31, v32);
    (*(v33 + 56))(v34, 0, 1, v32);
  }

  else
  {
    v35 = type metadata accessor for UUID();
    v34 = v45;
    (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
  }

  sub_10000BE14(v34, v46, &qword_1019F6990);
  State.init(wrappedValue:)();
  sub_10000CAAC(v34, &qword_1019F6990);
  *(a5 + 24) = v48;
  swift_unknownObjectWeakAssign();
  *(a5 + 8) = v49 & 1;
  v36 = [objc_opt_self() sharedApplication];
  v37 = [v36 delegate];

  if (v37)
  {
    type metadata accessor for CRLiOSAppDelegate();
    v38 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_stencilLibrary);

    swift_unknownObjectRelease();
    if (v38)
    {
      *a5 = v38;
      _s11SwiftUIViewV9PublisherCMa(0);
      sub_1009ACE74(&qword_101A0A750, _s11SwiftUIViewV9PublisherCMa);
      v39 = ObservedObject.init(wrappedValue:)();
      v41 = v40;
      swift_unknownObjectRelease();
      *(a5 + 32) = v39;
      *(a5 + 40) = v41;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1009A48D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1009A4944()
{
  v1 = OBJC_IVAR____TtCVC8Freeform17CRLStencilLibrary11SwiftUIView9Publisher__stencilToSaveThumbnailImage;
  v2 = sub_1005B981C(qword_101A0AAD8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1009A4A14()
{
  sub_1009A4E78(319, &unk_101A0A610, &unk_101A265A0, &unk_1014872F0, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1009A4B18()
{
  type metadata accessor for CRLStencilLibrary();
  if (v0 <= 0x3F)
  {
    sub_1009A4D30();
    if (v1 <= 0x3F)
    {
      sub_1009A4E14(319, &qword_101A0A758, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1009A4DC4();
        if (v3 <= 0x3F)
        {
          sub_1009A4E78(319, &qword_101A0A768, &qword_101A1F160, &unk_1014B1870, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_1009A4E14(319, &qword_101A0A770, &type metadata accessor for NavigationSplitViewVisibility, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_1009A4E14(319, &qword_101A0A778, type metadata accessor for CGSize, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_1009A4E78(319, &unk_101A0A780, &qword_1019F6990, &unk_10146D2F0, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1009A4D30()
{
  if (!qword_101A0A748)
  {
    _s11SwiftUIViewV9PublisherCMa(255);
    sub_1009ACE74(&qword_101A0A750, _s11SwiftUIViewV9PublisherCMa);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101A0A748);
    }
  }
}

void sub_1009A4DC4()
{
  if (!qword_101A0A760)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_101A0A760);
    }
  }
}

void sub_1009A4E14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1009A4E78(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1005C4E5C(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1009A4EF0()
{
  result = qword_101A0A7D8;
  if (!qword_101A0A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0A7D8);
  }

  return result;
}

uint64_t sub_1009A4F44@<X0>(uint64_t *a1@<X8>)
{
  _s11SwiftUIViewV9PublisherCMa(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1009A4F84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A0A7E0);
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  v39 = sub_1005B981C(&qword_101A0A7E8);
  __chkstk_darwin(v39);
  v42 = &v30 - v7;
  v8 = sub_1005B981C(&qword_101A0A7F0);
  __chkstk_darwin(v8 - 8);
  v41 = sub_1005B981C(&qword_101A0A7F8);
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v10 = &v30 - v9;
  v11 = sub_1005B981C(&qword_101A0A800);
  __chkstk_darwin(v11);
  v40 = &v30 - v12;
  v13 = sub_1005B981C(&qword_101A0A808);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v46 = &type metadata for CRLFeatureFlags;
  v47 = sub_100004D60();
  LOBYTE(v43) = 24;
  v16 = isFeatureEnabled(_:)();
  v17 = sub_100005070(&v43);
  if (v16)
  {
    v33 = v13;
    v34 = v11;
    v35 = v4;
    v36 = a1;
    if (*(v2 + 8))
    {
      __chkstk_darwin(v17);
      sub_1005B981C(&qword_101A0A828);
      sub_10001A2F8(&qword_101A0A830, &qword_101A0A828);
      NavigationStack.init<>(root:)();
      v18 = v37;
      v19 = v35;
      (*(v37 + 16))(v42, v6, v35);
      swift_storeEnumTagMultiPayload();
      sub_10001A2F8(&qword_101A0A818, &qword_101A0A7F8);
      sub_10001A2F8(&qword_101A0A820, &qword_101A0A7E0);
      v20 = v40;
      _ConditionalContent<>.init(storage:)();
      (*(v18 + 8))(v6, v19);
    }

    else
    {
      _s11SwiftUIViewVMa(0);
      sub_1005B981C(&qword_101A0A6D0);
      v22 = State.projectedValue.getter();
      __chkstk_darwin(v22);
      __chkstk_darwin(v23);
      v37 = sub_1005B981C(&qword_101A0A838);
      v32 = sub_1005B981C(&qword_101A0A828);
      v31 = sub_1005C4E5C(&qword_101A0A840);
      v30 = sub_1005C4E5C(&qword_101A0A848);
      v24 = sub_10001A2F8(&qword_101A0A850, &qword_101A0A840);
      v25 = sub_1005C4E5C(&qword_101A0A858);
      v26 = sub_10001A2F8(&qword_101A0A860, &qword_101A0A858);
      v43 = v25;
      v44 = v26;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v43 = v31;
      v44 = v30;
      v45 = v24;
      v46 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_10001A2F8(&qword_101A0A830, &qword_101A0A828);
      NavigationSplitView.init<>(columnVisibility:sidebar:detail:)();
      v28 = v38;
      v29 = v41;
      (*(v38 + 16))(v42, v10, v41);
      swift_storeEnumTagMultiPayload();
      sub_10001A2F8(&qword_101A0A818, &qword_101A0A7F8);
      sub_10001A2F8(&qword_101A0A820, &qword_101A0A7E0);
      v20 = v40;
      _ConditionalContent<>.init(storage:)();
      (*(v28 + 8))(v10, v29);
    }

    sub_10000BE14(v20, v15, &qword_101A0A800);
    swift_storeEnumTagMultiPayload();
    sub_1009A9780();
    _ConditionalContent<>.init(storage:)();
    return sub_10000CAAC(v20, &qword_101A0A800);
  }

  else
  {
    *v15 = 0;
    v15[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1009A9780();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1009A5784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = sub_1005B981C(&qword_101A0AA80);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - v4;
  v6 = sub_1005B981C(&qword_101A0A840);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  sub_1005B981C(&qword_101A0AA88);
  _s11SwiftUIViewVMa(0);
  sub_1005B981C(&qword_101A0A6D8);
  State.projectedValue.getter();
  v9 = sub_1005B981C(&qword_101A0AA90);
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v13[8] = a1;
  type metadata accessor for UUID();
  sub_1005B981C(&qword_101A0AA98);
  sub_1009ACE74(&qword_1019FB870, &type metadata accessor for UUID);
  sub_10001A2F8(&qword_101A0AAA0, &qword_101A0AA98);
  List.init(selection:content:)();
  v13[4] = a1;
  sub_1005B981C(&qword_101A0A848);
  sub_10001A2F8(&qword_101A0A850, &qword_101A0A840);
  v10 = sub_1005C4E5C(&qword_101A0A858);
  v11 = sub_10001A2F8(&qword_101A0A860, &qword_101A0A858);
  v13[10] = v10;
  v13[11] = v11;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return sub_10000CAAC(v8, &qword_101A0A840);
}

uint64_t sub_1009A5ADC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_1005B981C(&qword_101A0A868);
  return sub_1009A98E8(a1, a2 + *(v5 + 44));
}

void sub_1009A5B48()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101A0A518 = v4;
  unk_101A0A520 = v6;
}

void sub_1009A5C38()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101A0A538 = v4;
  unk_101A0A540 = v6;
}

void sub_1009A5D08()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101A0A548 = v4;
  unk_101A0A550 = v6;
}

uint64_t sub_1009A5E68@<X0>(uint64_t a1@<X8>)
{
  _s15FilterViewModelVMa();
  sub_100017CD8();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1009A5EE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + *(_s15FilterViewModelVMa() + 24) + 8))
  {

    result = Image.init(systemName:)();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1009A5F50()
{
  sub_1005B981C(&qword_101A0AC00);
  sub_1009AD9F4();
  return Label.init(title:icon:)();
}

uint64_t sub_1009A5FEC(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_101A0AFE0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v10 - 8);
  v28 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v25 - v17;
  (*(v4 + 16))(&v25 - v17, a1, v3, v16);
  (*(v4 + 56))(v18, 0, 1, v3);
  _s11SwiftUIViewVMa(0);
  sub_1005B981C(&qword_101A0A6D8);
  State.wrappedValue.getter();
  v19 = *(v7 + 56);
  sub_10000BE14(v18, v9, &qword_1019F6990);
  sub_10000BE14(v14, &v9[v19], &qword_1019F6990);
  v20 = *(v4 + 48);
  if (v20(v9, 1, v3) != 1)
  {
    sub_10000BE14(v9, v28, &qword_1019F6990);
    if (v20(&v9[v19], 1, v3) != 1)
    {
      v22 = v26;
      (*(v4 + 32))(v26, &v9[v19], v3);
      sub_1009ACE74(&qword_1019F37C0, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v4 + 8);
      v23(v22, v3);
      sub_10000CAAC(v14, &qword_1019F6990);
      sub_10000CAAC(v18, &qword_1019F6990);
      v23(v28, v3);
      sub_10000CAAC(v9, &qword_1019F6990);
      return v21 & 1;
    }

    sub_10000CAAC(v14, &qword_1019F6990);
    sub_10000CAAC(v18, &qword_1019F6990);
    (*(v4 + 8))(v28, v3);
    goto LABEL_6;
  }

  sub_10000CAAC(v14, &qword_1019F6990);
  sub_10000CAAC(v18, &qword_1019F6990);
  if (v20(&v9[v19], 1, v3) != 1)
  {
LABEL_6:
    sub_10000CAAC(v9, &unk_101A0AFE0);
    v21 = 0;
    return v21 & 1;
  }

  sub_10000CAAC(v9, &qword_1019F6990);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1009A6464@<X0>(char *a1@<X8>)
{
  v32 = a1;
  v31 = sub_1005B981C(&qword_101A0AAA8);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v33 = &v26 - v3;
  v4 = sub_1005B981C(&qword_101A0AAB0);
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  sub_1005B981C(&unk_101A1EEE0);
  _s11SwiftUIViewV15SidebarListItemVMa(0);
  sub_10001A2F8(&qword_101A0AAB8, &unk_101A1EEE0);
  sub_1009ACE74(&qword_1019FB870, &type metadata accessor for UUID);
  sub_1009ACE74(&qword_101A0AAC0, _s11SwiftUIViewV15SidebarListItemVMa);
  v10 = v9;
  v11 = ForEach<>.init(_:id:content:)();
  if (qword_1019F1A78 != -1)
  {
    v11 = swift_once();
  }

  v34 = qword_101A0A588;
  v35 = qword_101A0A590;
  __chkstk_darwin(v11);
  sub_1009AD75C();
  sub_100017CD8();

  v12 = v33;
  v13 = v4;
  Section<>.init<A>(_:content:)();
  v14 = v28;
  v15 = *(v28 + 16);
  v16 = v6;
  v27 = v10;
  v15(v6, v10, v13);
  v18 = v29;
  v17 = v30;
  v26 = *(v29 + 16);
  v19 = v12;
  v20 = v31;
  v26(v30, v19, v31);
  v21 = v32;
  v15(v32, v16, v13);
  v22 = sub_1005B981C(&qword_101A0AAD0);
  v26(&v21[*(v22 + 48)], v17, v20);
  v23 = *(v18 + 8);
  v23(v33, v20);
  v24 = *(v14 + 8);
  v24(v27, v13);
  v23(v17, v20);
  return (v24)(v16, v13);
}

uint64_t sub_1009A6930()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  sub_1005B981C(&unk_101A1EEE0);
  _s11SwiftUIViewV15SidebarListItemVMa(0);
  sub_10001A2F8(&qword_101A0AAB8, &unk_101A1EEE0);
  sub_1009ACE74(&qword_1019FB870, &type metadata accessor for UUID);
  sub_1009ACE74(&qword_101A0AAC0, _s11SwiftUIViewV15SidebarListItemVMa);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1009A6AC8(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1005B981C(&qword_101A0A858);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.cancellationAction.getter();
  v9 = a1;
  sub_1005B981C(&qword_1019FEA78);
  sub_10001A2F8(&qword_1019FEA80, &qword_1019FEA78);
  ToolbarItemGroup.init(placement:content:)();
  sub_10001A2F8(&qword_101A0A860, &qword_101A0A858);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1009A6CB4(uint64_t a1)
{
  v2 = _s11SwiftUIViewVMa(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1009AD564(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), _s11SwiftUIViewVMa);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1009ACC04(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, _s11SwiftUIViewVMa);
  return Button.init(action:label:)();
}

uint64_t sub_1009A6E08()
{
  result = static Animation.easeInOut(duration:)();
  qword_101A0A598 = result;
  return result;
}

uint64_t sub_1009A6E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  v5 = _s11SwiftUIViewVMa(0);
  v16[0] = *(v5 - 8);
  v6 = *(v16[0] + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1005B981C(&qword_101A0A9C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  v11 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  v12 = Axis.Set.init(rawValue:)();
  if (v12 != v11)
  {
    v12 = Axis.Set.init(rawValue:)();
  }

  __chkstk_darwin(v12);
  v16[-2] = a2;
  v16[-1] = a1;
  sub_1005B981C(&qword_101A0A9C8);
  sub_1009AD2B4();
  ScrollView.init(_:showsIndicators:content:)();
  sub_1009AD564(a2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s11SwiftUIViewVMa);
  v13 = (*(v16[0] + 80) + 16) & ~*(v16[0] + 80);
  v14 = swift_allocObject();
  sub_1009ACC04(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, _s11SwiftUIViewVMa);
  sub_10001A2F8(&qword_101A0AA08, &qword_101A0A9C0);
  View.onTapGesture(count:perform:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1009A7108@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v2);
  GeometryProxy.size.getter();
  sub_1009A7378(v3);
  static HorizontalAlignment.center.getter();
  LODWORD(v9) = 0;
  sub_1009ACE74(&qword_101A0AA10, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_1005B981C(&qword_101A0AA18);
  sub_10001A2F8(&qword_101A0AA20, &qword_101A0AA18);
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  v4 = static Edge.Set.all.getter();
  v5 = a1 + *(sub_1005B981C(&qword_101A0A9E0) + 36);
  *v5 = v4;
  *(v5 + 8) = xmmword_10148A0C0;
  *(v5 + 24) = xmmword_10148A0C0;
  *(v5 + 40) = 0;
  if (qword_1019F1A80 != -1)
  {
    swift_once();
  }

  v6 = qword_101A0A598;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = (a1 + *(sub_1005B981C(&qword_101A0A9C8) + 36));
  *v7 = v6;
  v7[1] = v9;
}

void sub_1009A7378(double a1)
{
  v2 = type metadata accessor for GridItem.Size();
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  __chkstk_darwin(v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for GridItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = floor(a1 / 180.0);
  if (v13 <= 0.0)
  {
    return;
  }

  do
  {
    v14 = v13;
    v15 = v13 * 180.0;
    v13 = v13 + -1.0;
  }

  while (v15 + v13 * -20.0 > a1);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v14;
  if (v14 < 0)
  {
LABEL_19:
    __break(1u);
    return;
  }

  if (v16)
  {
    v25 = enum case for GridItem.Size.flexible(_:);
    v17 = *(v27 + 104);
    v27 += 104;
    v23 = v7 + 8;
    v24 = v17;
    v22 = v7 + 32;
    v18 = _swiftEmptyArrayStorage;
    v21 = xmmword_10148A0D0;
    do
    {
      *v5 = v21;
      v24(v5, v25, v26);
      static Alignment.top.getter();
      GridItem.init(_:spacing:alignment:)();
      (*(v7 + 16))(v9, v12, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_100B383BC(0, v18[2] + 1, 1, v18);
      }

      v20 = v18[2];
      v19 = v18[3];
      if (v20 >= v19 >> 1)
      {
        v18 = sub_100B383BC(v19 > 1, v20 + 1, 1, v18);
      }

      (*(v7 + 8))(v12, v6);
      v18[2] = v20 + 1;
      (*(v7 + 32))(v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v9, v6);
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_1009A76DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v38 = _s11SwiftUIViewVMa(0);
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v38);
  v42 = sub_1005B981C(&qword_101A0AA28);
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v47 = a1;
  sub_100075478(sub_1009AD444, v46, v52);
  *&v48 = v9;
  KeyPath = swift_getKeyPath();
  sub_1009AD564(a1, &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), _s11SwiftUIViewVMa);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1009ACC04(&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, _s11SwiftUIViewVMa);
  v40 = sub_1005B981C(&qword_101A1EEC0);
  sub_1005B981C(&qword_101A0AA30);
  sub_10001A2F8(&qword_101A0AA38, &qword_101A1EEC0);
  sub_1009ACE74(&qword_101A0AA40, _s13ItemViewModelVMa);
  v12 = sub_1005C4E5C(&qword_101A0AA48);
  v13 = sub_1009AD510();
  v14 = sub_10001A2F8(&qword_101A0AA58, &qword_101A0AA48);
  *&v52 = &_s8ItemViewVN;
  *(&v52 + 1) = v12;
  v53 = v13;
  v54 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v8;
  ForEach<>.init(_:id:content:)();
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (*(a1 + 8) == 1)
  {
    v16 = static Color.clear.getter();
    v24 = a1 + *(v38 + 52);
    v25 = *(v24 + 16);
    v52 = *v24;
    v53 = v25;
    sub_1005B981C(&qword_101A0A898);
    State.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v17 = v59;
    v18 = v60;
    v19 = v61;
    v20 = v62;
    v23 = 256;
    v21 = v63;
    v22 = v64;
  }

  v38 = v16;
  v40 = v17;
  KeyPath = v22;
  v26 = *(v45 + 16);
  v27 = v44;
  v39 = v15;
  v28 = v42;
  v29 = v20;
  v26(v44, v15, v42);
  v30 = v41;
  v26(v41, v27, v28);
  v31 = &v30[*(sub_1005B981C(&qword_101A0AA60) + 48)];
  v32 = v38;
  *&v48 = v38;
  *(&v48 + 1) = v23;
  v33 = v40;
  *&v49 = v40;
  *(&v49 + 1) = v18;
  *&v50 = v19;
  *(&v50 + 1) = v29;
  *&v51 = v21;
  *(&v51 + 1) = KeyPath;
  v34 = v49;
  *v31 = v48;
  *(v31 + 1) = v34;
  v35 = v51;
  *(v31 + 2) = v50;
  *(v31 + 3) = v35;
  sub_10000BE14(&v48, &v52, &qword_101A0AA68);
  v36 = *(v45 + 8);
  v36(v39, v28);
  *&v52 = v32;
  *(&v52 + 1) = v23;
  v53 = v33;
  v54 = v18;
  v55 = v19;
  v56 = v29;
  v57 = v21;
  v58 = KeyPath;
  sub_10000CAAC(&v52, &qword_101A0AA68);
  return (v36)(v44, v28);
}

uint64_t sub_1009A7CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0AA78);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-v5];
  v7 = sub_100D79E3C();
  v13 = a2;
  sub_1010AAA98(sub_1009AD698, v7, v6);

  v8 = _s15FilterViewModelVMa();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_10000CAAC(v6, &qword_101A0AA78);
    v9 = 0;
  }

  else
  {
    v10 = *&v6[*(v8 + 28)];

    sub_1009AD6B8(v6, _s15FilterViewModelVMa);
    v9 = v10(a1);
  }

  return v9 & 1;
}

uint64_t sub_1009A7E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v68 = a3;
  v4 = _s11SwiftUIViewVMa(0);
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v59 = v5;
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TapGesture();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v62 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A0AA48);
  v66 = *(v8 - 8);
  v67 = v8;
  __chkstk_darwin(v8);
  v65 = &v52 - v9;
  v10 = _s13ItemViewModelVMa();
  v69 = *(v10 - 8);
  __chkstk_darwin(v10);
  v56 = v11;
  v57 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_101A0AA70);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v52 - v14;
  v16 = sub_1005B981C(&qword_101A1F160);
  __chkstk_darwin(v16 - 8);
  v52 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  __chkstk_darwin(v21);
  v23 = &v52 - v22;
  v24 = *(v10 + 28);
  v25 = (a1 + *(v10 + 32));
  v26 = v25[1];
  v53 = *v25;
  v27 = *(a1 + v24);
  v28 = objc_allocWithZone(UIImage);
  v55 = v26;

  v29 = [v28 initWithCGImage:v27];
  v30 = [objc_allocWithZone(CRLImage) initWithUIImage:v29];

  v31 = [v30 UIImage];
  v54 = Image.init(uiImage:)();

  sub_1005B981C(&qword_101A0A6C8);
  State.wrappedValue.getter();
  v60 = a1;
  sub_1009AD564(a1, v20, _s13ItemViewModelVMa);
  v32 = v69;
  (*(v69 + 56))(v20, 0, 1, v10);
  v33 = *(v13 + 56);
  sub_10000BE14(v23, v15, &qword_101A1F160);
  sub_10000BE14(v20, &v15[v33], &qword_101A1F160);
  v34 = *(v32 + 48);
  if (v34(v15, 1, v10) == 1)
  {
    sub_10000CAAC(v20, &qword_101A1F160);
    sub_10000CAAC(v23, &qword_101A1F160);
    v35 = v34(&v15[v33], 1, v10);
    v36 = v57;
    v37 = v55;
    if (v35 == 1)
    {
      sub_10000CAAC(v15, &qword_101A1F160);
      v38 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v39 = v52;
  sub_10000BE14(v15, v52, &qword_101A1F160);
  if (v34(&v15[v33], 1, v10) == 1)
  {
    sub_10000CAAC(v20, &qword_101A1F160);
    sub_10000CAAC(v23, &qword_101A1F160);
    sub_1009AD6B8(v39, _s13ItemViewModelVMa);
    v36 = v57;
    v37 = v55;
LABEL_6:
    sub_10000CAAC(v15, &qword_101A0AA70);
    v38 = 0;
    goto LABEL_8;
  }

  v36 = v57;
  sub_1009ACC04(&v15[v33], v57, _s13ItemViewModelVMa);
  v38 = sub_100D70520(v39, v36);
  sub_1009AD6B8(v36, _s13ItemViewModelVMa);
  sub_10000CAAC(v20, &qword_101A1F160);
  sub_10000CAAC(v23, &qword_101A1F160);
  sub_1009AD6B8(v39, _s13ItemViewModelVMa);
  sub_10000CAAC(v15, &qword_101A1F160);
  v37 = v55;
LABEL_8:
  v40 = HIBYTE(v37) & 0xF;
  v41 = v53;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v40 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {

    v37 = 0xE100000000000000;
    v41 = 32;
  }

  v71 = v54;
  v72 = v38 & 1;
  v73 = v41;
  v74 = v37;
  v42 = v62;
  TapGesture.init(count:)();
  v43 = v61;
  sub_1009AD564(v70, v61, _s11SwiftUIViewVMa);
  sub_1009AD564(v60, v36, _s13ItemViewModelVMa);
  v44 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v45 = (v59 + *(v69 + 80) + v44) & ~*(v69 + 80);
  v46 = swift_allocObject();
  sub_1009ACC04(v43, v46 + v44, _s11SwiftUIViewVMa);
  sub_1009ACC04(v36, v46 + v45, _s13ItemViewModelVMa);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1009AD5CC;
  *(v47 + 24) = v46;
  v48 = v64;
  v49 = v65;
  Gesture.onEnded(_:)();

  (*(v63 + 8))(v42, v48);
  static GestureMask.all.getter();
  sub_1009AD510();
  sub_10001A2F8(&qword_101A0AA58, &qword_101A0AA48);
  v50 = v67;
  View.simultaneousGesture<A>(_:including:)();
  (*(v66 + 8))(v49, v50);
}

uint64_t sub_1009A86F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A1F160);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v19 - v8;
  sub_1009AD564(a2, v19 - v8, _s13ItemViewModelVMa);
  v10 = _s13ItemViewModelVMa();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = _s11SwiftUIViewVMa(0);
  sub_10000BE14(v9, v6, &qword_101A1F160);
  sub_1005B981C(&qword_101A0A6C8);
  State.wrappedValue.setter();
  sub_10000CAAC(v9, &qword_101A1F160);
  if (*(a1 + 8))
  {
    v12 = (a2 + *(v10 + 32));
    v14 = *v12;
    v13 = v12[1];
    v15 = (a1 + *(v11 + 36));
    v16 = *v15;
    v17 = *(v15 + 2);
    v20 = v16;
    v21 = v17;
    v19[1] = v14;
    v19[2] = v13;

    sub_1005B981C(&qword_101A0A910);
    return State.wrappedValue.setter();
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100C8EFB4(a2);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1009A8918()
{
  v0 = sub_1005B981C(&qword_101A1F160);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  v6 = _s13ItemViewModelVMa();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  _s11SwiftUIViewVMa(0);
  sub_10000BE14(v5, v2, &qword_101A1F160);
  sub_1005B981C(&qword_101A0A6C8);
  State.wrappedValue.setter();
  return sub_10000CAAC(v5, &qword_101A1F160);
}

void *sub_1009A8A58()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result dismissViewControllerAnimated:1 completion:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1009A8AB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_1005B981C(&qword_101A1F160);
  __chkstk_darwin(v3 - 8);
  v31 = &v29 - v4;
  v33 = type metadata accessor for KeyboardShortcut();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = _s11SwiftUIViewVMa(0);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v30);
  v10 = sub_1005B981C(&qword_1019FEA78);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v14 = sub_1005B981C(&qword_101A0A9A8);
  v34 = *(v14 - 8);
  v35 = v14;
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  sub_1009AD564(v2, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s11SwiftUIViewVMa);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_1009ACC04(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, _s11SwiftUIViewVMa);
  Button.init(action:label:)();
  static KeyboardShortcut.defaultAction.getter();
  sub_10001A2F8(&qword_1019FEA80, &qword_1019FEA78);
  View.keyboardShortcut(_:)();
  (*(v5 + 8))(v7, v33);
  v19 = v13;
  v20 = v32;
  (*(v11 + 8))(v19, v10);
  if (*(v20 + 8))
  {
    v21 = 1;
  }

  else
  {
    sub_1005B981C(&qword_101A0A6C8);
    v22 = v31;
    State.wrappedValue.getter();
    v23 = _s13ItemViewModelVMa();
    v21 = (*(*(v23 - 8) + 48))(v22, 1, v23) == 1;
    sub_10000CAAC(v22, &qword_101A1F160);
  }

  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v26 = v36;
  (*(v34 + 32))(v36, v16, v35);
  result = sub_1005B981C(&qword_101A0A9B0);
  v28 = (v26 + *(result + 36));
  *v28 = KeyPath;
  v28[1] = sub_1009207D0;
  v28[2] = v25;
  return result;
}

uint64_t sub_1009A8F88()
{
  v0 = _s13ItemViewModelVMa();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_101A1F160);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  _s11SwiftUIViewVMa(0);
  sub_1005B981C(&qword_101A0A6C8);
  State.wrappedValue.getter();
  v10 = *(v1 + 48);
  if (v10(v9, 1, v0) == 1)
  {
    v11 = objc_opt_self();
    v12 = [v11 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36);
    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v12;
    v21 = sub_1005CF000();
    *(inited + 96) = v21;
    v22 = sub_1009ACE74(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v22;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = v18;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 329;
    v24 = v36;
    *(inited + 216) = v21;
    *(inited + 224) = v22;
    *(inited + 192) = v24;
    v25 = v13;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    v29[2] = 8;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 0;
    v30 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    [v11 handleFailureInFunction:v31 file:v32 lineNumber:329 isFatal:0 format:v33 args:v30];

    return sub_10000CAAC(v9, &qword_101A1F160);
  }

  else
  {
    sub_10000CAAC(v9, &qword_101A1F160);
    State.wrappedValue.getter();
    if (v10(v6, 1, v0) == 1)
    {
      return sub_10000CAAC(v6, &qword_101A1F160);
    }

    else
    {
      sub_1009ACC04(v6, v3, _s13ItemViewModelVMa);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100C8EFB4(v3);
        swift_unknownObjectRelease();
      }

      return sub_1009AD6B8(v3, _s13ItemViewModelVMa);
    }
  }
}

uint64_t sub_1009A9580()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    _s11SwiftUIViewVMa(0);
    sub_1005B981C(&qword_101A0A910);
    State.wrappedValue.getter();
    sub_100C8F498(v1, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1009A9648@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_100017CD8();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

BOOL sub_1009A96E0()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  _s11SwiftUIViewVMa(0);
  sub_1005B981C(&qword_101A0A910);
  State.wrappedValue.getter();

  v1 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v1 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

unint64_t sub_1009A9780()
{
  result = qword_101A0A810;
  if (!qword_101A0A810)
  {
    sub_1005C4E5C(&qword_101A0A800);
    sub_10001A2F8(&qword_101A0A818, &qword_101A0A7F8);
    sub_10001A2F8(&qword_101A0A820, &qword_101A0A7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0A810);
  }

  return result;
}

uint64_t sub_1009A9888()
{
  result = static Font.caption.getter();
  qword_101A0A5A0 = result;
  return result;
}

uint64_t sub_1009A98A8()
{
  result = static Font.Weight.medium.getter();
  qword_101A0A5A8 = v1;
  return result;
}

uint64_t sub_1009A98C8()
{
  result = static Color.secondary.getter();
  qword_101A0A5B0 = result;
  return result;
}

uint64_t sub_1009A98E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&qword_101A0A870);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v23[-v8];
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = sub_1005B981C(&qword_101A0A878);
  sub_1009A9C54(a1, &v9[*(v10 + 44)]);
  if (*(a1 + 8) == 1)
  {
    v11 = static HorizontalAlignment.center.getter();
    v24 = 0;
    sub_1009AB374(a1, &v45);
    v29 = v49;
    v30 = v50;
    v31 = v51;
    v25 = v45;
    v26 = v46;
    v27 = v47;
    v28 = v48;
    v34 = v45;
    v35 = v46;
    v36 = v47;
    v37 = v48;
    v38 = v49;
    v39 = v50;
    v40 = v51;
    sub_10000BE14(&v25, &v43, &qword_101A0A890);
    sub_10000CAAC(&v34, &qword_101A0A890);
    *&v23[55] = v28;
    *&v23[71] = v29;
    *&v23[87] = v30;
    *&v23[103] = v31;
    *&v23[7] = v25;
    *&v23[23] = v26;
    *&v23[39] = v27;
    v43 = v11;
    LOBYTE(v44[0]) = v24;
    *(&v44[3] + 1) = *&v23[48];
    *(&v44[2] + 1) = *&v23[32];
    *(&v44[1] + 1) = *&v23[16];
    *(v44 + 1) = *v23;
    *&v44[7] = *(&v31 + 1);
    *(&v44[6] + 1) = *&v23[96];
    *(&v44[5] + 1) = *&v23[80];
    *(&v44[4] + 1) = *&v23[64];
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v43, v12);
    v51 = v44[5];
    v52 = v44[6];
    v53 = *&v44[7];
    v47 = v44[1];
    v48 = v44[2];
    v49 = v44[3];
    v50 = v44[4];
    v45 = v43;
    v46 = v44[0];
  }

  else
  {
    sub_1009AA56C(&v45);
  }

  sub_10000BE14(v9, v6, &qword_101A0A870);
  v31 = v51;
  v32 = v52;
  v33 = v53;
  v27 = v47;
  v28 = v48;
  v29 = v49;
  v30 = v50;
  v25 = v45;
  v26 = v46;
  sub_10000BE14(v6, a2, &qword_101A0A870);
  v13 = *(sub_1005B981C(&qword_101A0A880) + 48);
  v14 = v32;
  v40 = v31;
  v41 = v32;
  v16 = v29;
  v15 = v30;
  v38 = v29;
  v39 = v30;
  v17 = v27;
  v18 = v28;
  v36 = v27;
  v37 = v28;
  v20 = v25;
  v19 = v26;
  v34 = v25;
  v35 = v26;
  v21 = a2 + v13;
  *(v21 + 96) = v31;
  *(v21 + 112) = v14;
  *(v21 + 32) = v17;
  *(v21 + 48) = v18;
  *(v21 + 64) = v16;
  *(v21 + 80) = v15;
  v42 = v33;
  *(v21 + 128) = v33;
  *v21 = v20;
  *(v21 + 16) = v19;
  sub_10000BE14(&v34, &v43, &qword_101A0A888);
  sub_10000CAAC(v9, &qword_101A0A870);
  v44[5] = v31;
  v44[6] = v32;
  *&v44[7] = v33;
  v44[1] = v27;
  v44[2] = v28;
  v44[3] = v29;
  v44[4] = v30;
  v43 = v25;
  v44[0] = v26;
  sub_10000CAAC(&v43, &qword_101A0A888);
  return sub_10000CAAC(v6, &qword_101A0A870);
}

uint64_t sub_1009A9C54@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v76 = *(v3 - 8);
  v77 = v3;
  __chkstk_darwin(v3);
  v73 = &v70[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = _s11SwiftUIViewVMa(0);
  v72 = *(v5 - 8);
  v6 = *(v72 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = &v70[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1005B981C(&qword_101A0A928);
  v79 = *(v8 - 8);
  v80 = v8;
  __chkstk_darwin(v8);
  v92 = &v70[-v9];
  v10 = sub_1005B981C(&qword_101A0A930);
  v83 = *(v10 - 8);
  v84 = v10;
  __chkstk_darwin(v10);
  v82 = &v70[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v81 = &v70[-v13];
  v14 = 0;
  v15 = 0;
  v93 = a1;
  v94 = 0;
  KeyPath = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v71 = *(a1 + 8);
  if (v71 == 1)
  {
    v91 = v6;
    if (qword_1019F1A58 != -1)
    {
      swift_once();
    }

    v24 = &v70[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v101 = qword_101A0A548;
    v102 = unk_101A0A550;
    sub_100017CD8();

    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    if (qword_1019F1A88 != -1)
    {
      swift_once();
    }

    v30 = Text.font(_:)();
    v32 = v31;
    v34 = v33;
    sub_10007441C(v25, v27, v29 & 1);

    if (qword_1019F1A90 != -1)
    {
      swift_once();
    }

    v14 = Text.fontWeight(_:)();
    v15 = v35;
    v37 = v36;
    v94 = v38;
    sub_10007441C(v30, v32, v34 & 1);

    KeyPath = swift_getKeyPath();
    if (qword_1019F1A98 != -1)
    {
      swift_once();
    }

    v18 = qword_101A0A5B0;
    v17 = swift_getKeyPath();
    LOBYTE(v101) = v37 & 1;
    v23 = v37 & 1;

    v21 = static Edge.Set.all.getter();
    v20 = 0x4018000000000000;
    v19 = 0x4028000000000000;
    v22 = 1;
    v7 = v24;
  }

  v85 = v22;
  v86 = v21;
  v74 = v19;
  v75 = v20;
  sub_1009AD564(v93, v7, _s11SwiftUIViewVMa);
  v39 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v40 = swift_allocObject();
  sub_1009ACC04(v7, v40 + v39, _s11SwiftUIViewVMa);
  v116 = sub_1009ACEBC;
  v117 = v40;
  v72 = v40;
  v90 = v15;
  v91 = v14;
  *(&v88 + 1) = v18;
  v89 = KeyPath;
  v87 = v23;
  *&v88 = v17;
  if (v71)
  {
    if (qword_1019F1A50 != -1)
    {
      swift_once();
    }

    v41 = qword_101A0A538;
    v42 = unk_101A0A540;

    v43 = &enum case for NavigationBarItem.TitleDisplayMode.inline(_:);
  }

  else
  {
    if (qword_1019F1A40 != -1)
    {
      swift_once();
    }

    v41 = qword_101A0A518;
    v42 = unk_101A0A520;

    v43 = &enum case for NavigationBarItem.TitleDisplayMode.large(_:);
  }

  v114 = v41;
  v115 = v42;
  v45 = v76;
  v44 = v77;
  v46 = v73;
  (*(v76 + 104))(v73, *v43, v77);
  v47 = sub_1005B981C(&qword_101A0A938);
  v48 = sub_10001A2F8(&qword_101A0A940, &qword_101A0A938);
  v49 = sub_100017CD8();
  View.navigationBarTitle<A>(_:displayMode:)();
  (*(v45 + 8))(v46, v44);

  __chkstk_darwin(v50);
  *&v70[-16] = v93;
  sub_1005B981C(&qword_101A0A948);
  v101 = v47;
  v102 = &type metadata for String;
  v103 = v48;
  v104 = v49;
  swift_getOpaqueTypeConformance2();
  v51 = sub_1005C4E5C(&qword_101A0A950);
  v52 = sub_1009ACEDC();
  v101 = v51;
  v102 = v52;
  swift_getOpaqueTypeConformance2();
  v53 = v80;
  v54 = v81;
  v55 = v92;
  View.toolbar<A>(content:)();
  (*(v79 + 8))(v55, v53);
  v57 = v82;
  v56 = v83;
  v58 = *(v83 + 16);
  v59 = v84;
  v58(v82, v54, v84);
  *&v95 = v91;
  *(&v95 + 1) = v90;
  *&v96 = v87;
  *(&v96 + 1) = v94;
  *&v97 = v89;
  *(&v97 + 1) = v85;
  v98 = v88;
  v99 = v86;
  v61 = v74;
  v60 = v75;
  *&v100[0] = v75;
  *(&v100[0] + 1) = v74;
  *&v100[1] = v75;
  BYTE8(v100[1]) = 0;
  v62 = v96;
  v63 = v78;
  *v78 = v95;
  v63[1] = v62;
  v64 = v97;
  v65 = v98;
  *(v63 + 89) = *(v100 + 9);
  v66 = v100[0];
  v63[4] = v99;
  v63[5] = v66;
  v63[2] = v64;
  v63[3] = v65;
  v67 = sub_1005B981C(&qword_101A0A980);
  v58(v63 + *(v67 + 48), v57, v59);
  sub_10000BE14(&v95, &v101, &qword_101A0A988);
  v68 = *(v56 + 8);
  v68(v54, v59);
  v68(v57, v59);
  v101 = v91;
  v102 = v90;
  v103 = v87;
  v104 = v94;
  v105 = v89;
  v106 = v85;
  v107 = v88;
  v108 = v86;
  v109 = 0;
  v110 = v60;
  v111 = v61;
  v112 = v60;
  v113 = 0;
  return sub_10000CAAC(&v101, &qword_101A0A988);
}

double sub_1009AA56C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1009AA588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v40 = sub_1005B981C(&qword_101A0A990);
  __chkstk_darwin(v40);
  v39 = v35 - v3;
  v46 = sub_1005B981C(&qword_101A0A978);
  v38 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = v35 - v4;
  v6 = sub_1005B981C(&qword_101A0A998);
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v43 = v35 - v7;
  v45 = sub_1005B981C(&qword_101A0A9A0);
  v8 = *(v45 - 8);
  __chkstk_darwin(v45);
  v10 = v35 - v9;
  v11 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1005B981C(&qword_101A0A960);
  v42 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  v44 = sub_1005B981C(&qword_101A0A950);
  __chkstk_darwin(v44);
  v16 = v35 - v15;
  if (*(a1 + 8))
  {
    v17 = static ToolbarItemPlacement.cancellationAction.getter();
    v35[1] = v35;
    __chkstk_darwin(v17);
    v35[-2] = a1;
    sub_1005B981C(&qword_101A0A9A8);
    v37 = v5;
    v18 = sub_1005C4E5C(&qword_1019FEA78);
    v36 = v6;
    v19 = v18;
    v20 = sub_10001A2F8(&qword_1019FEA80, &qword_1019FEA78);
    v48 = v19;
    v49 = v20;
    swift_getOpaqueTypeConformance2();
    v21 = v43;
    ToolbarItemGroup.init(placement:content:)();
    v22 = static ToolbarItemPlacement.confirmationAction.getter();
    __chkstk_darwin(v22);
    v35[-2] = a1;
    sub_1005B981C(&qword_101A0A9B0);
    sub_1009AD068();
    ToolbarItemGroup.init(placement:content:)();
    v23 = v41;
    v24 = *(v40 + 48);
    v25 = v39;
    v26 = v36;
    (*(v41 + 16))(v39, v21, v36);
    v27 = v42;
    (*(v42 + 16))(&v25[v24], v14, v12);
    v28 = v37;
    TupleToolbarContent.init(_:)();
    v29 = sub_10001A2F8(&qword_101A0A968, &qword_101A0A960);
    v48 = v12;
    v49 = v29;
    swift_getOpaqueTypeConformance2();
    sub_10001A2F8(&qword_101A0A970, &qword_101A0A978);
    v30 = v46;
    static ToolbarContentBuilder.buildEither<A, B>(second:)();
    (*(v38 + 8))(v28, v30);
    (*(v27 + 8))(v14, v12);
    (*(v23 + 8))(v43, v26);
  }

  else
  {
    v31 = static ToolbarItemPlacement.confirmationAction.getter();
    __chkstk_darwin(v31);
    v35[-2] = a1;
    sub_1005B981C(&qword_101A0A9B0);
    sub_1009AD068();
    ToolbarItemGroup.init(placement:content:)();
    v32 = sub_10001A2F8(&qword_101A0A968, &qword_101A0A960);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v48 = v12;
    v49 = v32;
    swift_getOpaqueTypeConformance2();
    sub_10001A2F8(&qword_101A0A970, &qword_101A0A978);
    v33 = v45;
    static ToolbarContentBuilder.buildEither<A, B>(first:)();
    (*(v8 + 8))(v10, v33);
    (*(v42 + 8))(v14, v12);
  }

  sub_1009ACEDC();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return sub_10000CAAC(v16, &qword_101A0A950);
}

uint64_t sub_1009AAD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = type metadata accessor for KeyboardShortcut();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s11SwiftUIViewVMa(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_1005B981C(&qword_1019FEA78);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - v12;
  sub_1009AD564(a1, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s11SwiftUIViewVMa);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_1009ACC04(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, _s11SwiftUIViewVMa);
  Button.init(action:label:)();
  static KeyboardShortcut.cancelAction.getter();
  sub_10001A2F8(&qword_1019FEA80, &qword_1019FEA78);
  View.keyboardShortcut(_:)();
  (*(v4 + 8))(v6, v3);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1009AB020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for KeyboardShortcut();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s11SwiftUIViewVMa(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_1005B981C(&qword_1019FEA78);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  sub_1009AD564(a1, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s11SwiftUIViewVMa);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_1009ACC04(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, _s11SwiftUIViewVMa);
  Button.init(action:label:)();
  static KeyboardShortcut.defaultAction.getter();
  sub_10001A2F8(&qword_1019FEA80, &qword_1019FEA78);
  v16 = v23;
  View.keyboardShortcut(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v11 + 8))(v13, v10);
  v17 = sub_1009A96E0();
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = !v17;
  result = sub_1005B981C(&qword_101A0A9B0);
  v21 = (v16 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = sub_100920D10;
  v21[2] = v19;
  return result;
}

uint64_t sub_1009AB374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s11SwiftUIViewVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = (a1 + *(v7 + 60));
  v10 = v8[1];
  v11 = v8[2];
  *&v34 = *v8;
  v9 = v34;
  *(&v34 + 1) = v10;
  *&v35 = v11;
  sub_1005B981C(&qword_101A0A898);
  State.projectedValue.getter();
  v12 = v41;
  v27 = v40;
  v13 = v42;
  v14 = v43;
  sub_1009AD564(a1, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s11SwiftUIViewVMa);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1009ACC04(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s11SwiftUIViewVMa);
  v40 = v9;
  v41 = v10;
  v42 = v11;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v30 = 1;
  v17 = v27;
  *&v34 = v27;
  *(&v34 + 1) = v12;
  *&v35 = v13;
  *(&v35 + 1) = v14;
  *&v36 = sub_1009AB6F0;
  *(&v36 + 1) = v16;
  v18 = v31;
  v19 = v32;
  v37 = v31;
  v38 = v32;
  v20 = v33;
  v39 = v33;
  *&v29[87] = v33;
  *&v29[55] = v31;
  *&v29[71] = v32;
  *&v29[39] = v36;
  *&v29[7] = v34;
  *&v29[23] = v35;
  v21 = *&v29[48];
  *(a2 + 41) = *&v29[32];
  v22 = *v29;
  *(a2 + 25) = *&v29[16];
  *(a2 + 9) = v22;
  v23 = *&v29[64];
  v24 = *&v29[80];
  *(a2 + 104) = *&v29[95];
  *(a2 + 89) = v24;
  *(a2 + 73) = v23;
  *(a2 + 57) = v21;
  v25 = v30;
  *a2 = 0;
  *(a2 + 8) = v25;
  v40 = v17;
  v41 = v12;
  v42 = v13;
  v43 = v14;
  v44 = sub_1009AB6F0;
  v45 = v16;
  v48 = v20;
  v47 = v19;
  v46 = v18;
  sub_10000BE14(&v34, &v28, &qword_101A0A8A8);
  return sub_10000CAAC(&v40, &qword_101A0A8A8);
}

uint64_t sub_1009AB650()
{
  v0 = type metadata accessor for Material();
  sub_10061655C(v0, qword_101A0A5B8);
  sub_1005EB3DC(v0, qword_101A0A5B8);
  return static Material.thin.getter();
}

uint64_t sub_1009AB69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_1005B981C(&qword_101A0A8B0);
  return sub_1009AB708(a1, a2 + *(v4 + 44));
}

uint64_t sub_1009AB708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&qword_101A0A8B8);
  __chkstk_darwin(v4);
  v6 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v43[-v8];
  v10 = [objc_opt_self() separatorColor];
  v48 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v11 = v49;
  v13 = v50;
  v12 = v51;
  v14 = v52;
  v45 = v53;
  v15 = v54;
  v16 = static Alignment.center.getter();
  v46 = v17;
  v47 = v16;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *v9 = static Alignment.center.getter();
  v9[1] = v18;
  v19 = v9 + *(sub_1005B981C(&qword_101A0A8C0) + 44);
  *v19 = static VerticalAlignment.center.getter();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = sub_1005B981C(&qword_101A0A8C8);
  sub_1009ABB3C(a1, &v19[*(v20 + 44)]);
  LOBYTE(a1) = static Edge.Set.all.getter();
  v21 = &v19[*(sub_1005B981C(&qword_101A0A8D0) + 36)];
  *v21 = a1;
  __asm { FMOV            V0.2D, #8.0 }

  *(v21 + 8) = _Q0;
  *(v21 + 24) = _Q0;
  v21[40] = 0;
  if (qword_1019F1AA0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Material();
  v28 = sub_1005EB3DC(v27, qword_101A0A5B8);
  v29 = static Edge.Set.all.getter();
  v30 = v9 + *(v4 + 36);
  (*(*(v27 - 8) + 16))(v30, v28, v27);
  v30[*(sub_1005B981C(&qword_101A0A8D8) + 36)] = v29;
  sub_10000BE14(v9, v6, &qword_101A0A8B8);
  *&v60 = v11;
  *(&v60 + 1) = __PAIR64__(v12, v13);
  LODWORD(v30) = v12;
  *&v61 = v14;
  v32 = v45;
  v31 = v46;
  *(&v61 + 1) = v45;
  *&v62 = v15;
  v44 = v13;
  v33 = v47;
  v34 = v48;
  *(&v62 + 1) = v48;
  LOWORD(v63) = 256;
  *(&v63 + 2) = v58;
  WORD3(v63) = v59;
  *(&v63 + 1) = v47;
  *v64 = v46;
  *&v64[8] = v55;
  *&v64[40] = v57;
  *&v64[24] = v56;
  v35 = v60;
  v36 = v61;
  v37 = v63;
  *(a2 + 32) = v62;
  *(a2 + 48) = v37;
  *a2 = v35;
  *(a2 + 16) = v36;
  v38 = *v64;
  v39 = *&v64[16];
  v40 = *&v64[32];
  *(a2 + 112) = *&v64[48];
  *(a2 + 80) = v39;
  *(a2 + 96) = v40;
  *(a2 + 64) = v38;
  v41 = sub_1005B981C(&qword_101A0A8E0);
  sub_10000BE14(v6, a2 + *(v41 + 48), &qword_101A0A8B8);
  sub_10000BE14(&v60, &v65, &qword_101A0A8E8);
  sub_10000CAAC(v9, &qword_101A0A8B8);
  sub_10000CAAC(v6, &qword_101A0A8B8);
  v65 = v11;
  v66 = v44;
  v67 = v30;
  v68 = v14;
  v69 = v32;
  v70 = v15;
  v71 = v34;
  v72 = 256;
  v73 = v58;
  v74 = v59;
  v75 = v33;
  v76 = v31;
  v78 = v56;
  v79 = v57;
  v77 = v55;
  return sub_10000CAAC(&v65, &qword_101A0A8E8);
}

uint64_t sub_1009ABB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = _s11SwiftUIViewVMa(0);
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  __chkstk_darwin(v3);
  v49 = v5;
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s13ThumbnailViewVMa();
  __chkstk_darwin(v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A0A8F0);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v46 = sub_1005B981C(&qword_101A0A8F8);
  __chkstk_darwin(v46);
  v51 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  v19 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v60)
  {
    v20 = Image.init(uiImage:)();
  }

  else
  {
    v20 = 0;
  }

  static Color.clear.getter();
  static ShadowStyle.drop(color:radius:x:y:)();

  *v8 = v20;
  v8[8] = 0;
  __asm { FMOV            V1.2D, #2.0 }

  *(v8 + 1) = xmmword_10148A0E0;
  *(v8 + 2) = _Q1;
  *(v8 + 6) = 0x4000000000000000;
  sub_1009ACC04(v8, v11, _s13ThumbnailViewVMa);
  v26 = &v11[*(v9 + 36)];
  *v26 = 0x3FFC71C71C71C71CLL;
  *(v26 + 4) = 0;
  v27 = (a1 + *(v47 + 48));
  v29 = v27[1];
  v30 = v27[2];
  *&v60 = *v27;
  v28 = v60;
  *(&v60 + 1) = v29;
  *&v61 = v30;
  sub_1005B981C(&qword_101A0A898);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10003DFF8(v11, v15, &qword_101A0A8F0);
  v31 = &v15[*(v46 + 36)];
  v32 = v61;
  *v31 = v60;
  *(v31 + 1) = v32;
  *(v31 + 2) = v62;
  sub_10003DFF8(v15, v18, &qword_101A0A8F8);
  v57 = v28;
  v58 = v29;
  v59 = v30;
  State.projectedValue.getter();
  v33 = v53;
  v34 = v54;
  v35 = v55;
  v36 = v56;
  v37 = v19;
  v38 = v50;
  sub_1009AD564(v37, v50, _s11SwiftUIViewVMa);
  v39 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v40 = swift_allocObject();
  sub_1009ACC04(v38, v40 + v39, _s11SwiftUIViewVMa);
  v41 = v51;
  sub_10000BE14(v18, v51, &qword_101A0A8F8);
  v42 = v52;
  sub_10000BE14(v41, v52, &qword_101A0A8F8);
  v43 = (v42 + *(sub_1005B981C(&qword_101A0A900) + 48));
  *v43 = v33;
  v43[1] = v34;
  v43[2] = v35;
  v43[3] = v36;
  v43[4] = sub_1009ACC6C;
  v43[5] = v40;

  sub_10000CAAC(v18, &qword_101A0A8F8);

  return sub_10000CAAC(v41, &qword_101A0A8F8);
}

uint64_t sub_1009AC048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for RoundedBorderTextFieldStyle();
  v18 = *(v3 - 8);
  v19 = v3;
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A0A908);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  if (qword_1019F1A68 != -1)
  {
    swift_once();
  }

  v10 = qword_101A0A568;
  v11 = qword_101A0A570;
  v12 = (a1 + *(_s11SwiftUIViewVMa(0) + 36));
  v13 = *v12;
  v14 = *(v12 + 2);
  v22 = v13;
  v23 = v14;

  sub_1005B981C(&qword_101A0A910);
  State.projectedValue.getter();
  v20 = v10;
  v21 = v11;
  sub_100017CD8();
  TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
  RoundedBorderTextFieldStyle.init()();
  sub_10001A2F8(&qword_101A0A918, &qword_101A0A908);
  sub_1009ACE74(&qword_101A0A920, &type metadata accessor for RoundedBorderTextFieldStyle);
  v15 = v19;
  View.textFieldStyle<A>(_:)();
  (*(v18 + 8))(v5, v15);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1009AC344@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v4 = *(a1 + 16);
  sub_1005C4E5C(&qword_101A0AC10);
  type metadata accessor for ModifiedContent();
  v35 = *(a1 + 24);
  v36 = sub_10001A2F8(&qword_101A0AC18, &qword_101A0AC10);
  v5 = v35;
  v27 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v6 = type metadata accessor for ZStack();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  sub_1005C4E5C(&qword_101A0AC20);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v24 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v25 = &v23 - v13;
  v29 = v4;
  v30 = v5;
  v31 = v2;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  v37 = *v2;
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v5;
  v15 = *(v2 + 1);
  *(v14 + 32) = *v2;
  *(v14 + 48) = v15;
  *(v14 + 64) = *(v2 + 2);
  sub_1009ADAE8(&v37, v34);

  WitnessTable = swift_getWitnessTable();
  sub_1009ADB44();
  sub_1009ACE74(&qword_101A0AC30, type metadata accessor for CGSize);
  v17 = v24;
  View.onPreferenceChange<A>(_:perform:)();

  (*(v26 + 8))(v8, v6);
  v18 = sub_10001A2F8(&qword_101A0AC38, &qword_101A0AC20);
  v32 = WitnessTable;
  v33 = v18;
  swift_getWitnessTable();
  v19 = *(v10 + 16);
  v20 = v25;
  v19(v25, v17, v9);
  v21 = *(v10 + 8);
  v21(v17, v9);
  v19(v28, v20, v9);
  return (v21)(v20, v9);
}

uint64_t sub_1009AC760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v24 = a3;
  v25 = a4;
  v5 = *(a2 - 8);
  v22 = a2;
  v23 = v5;
  __chkstk_darwin(a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005C4E5C(&qword_101A0AC10);
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v22 - v14;
  (*(a1 + 32))(v13);
  v28 = sub_1009ACA4C;
  v29 = 0;
  static Alignment.center.getter();
  sub_1005B981C(&qword_101A0AC48);
  sub_10001A2F8(&qword_101A0AC50, &qword_101A0AC48);
  v16 = v22;
  v17 = v24;
  View.background<A>(_:alignment:)();
  (*(v23 + 8))(v7, v16);
  v18 = sub_10001A2F8(&qword_101A0AC18, &qword_101A0AC10);
  v26 = v17;
  v27 = v18;
  swift_getWitnessTable();
  v19 = *(v9 + 16);
  v19(v15, v11, v8);
  v20 = *(v9 + 8);
  v20(v11, v8);
  v19(v25, v15, v8);
  return (v20)(v15, v8);
}

uint64_t sub_1009ACA4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = static Color.clear.getter();
  result = GeometryProxy.size.getter();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1009ACB0C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1009ACB8C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return static Published.subscript.setter();
}

uint64_t sub_1009ACC04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1009ACC84(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s11SwiftUIViewVMa(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1009ACD6C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1009ACDFC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1009ACE74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1009ACEDC()
{
  result = qword_101A0A958;
  if (!qword_101A0A958)
  {
    sub_1005C4E5C(&qword_101A0A950);
    sub_1005C4E5C(&qword_101A0A960);
    sub_10001A2F8(&qword_101A0A968, &qword_101A0A960);
    swift_getOpaqueTypeConformance2();
    sub_10001A2F8(&qword_101A0A970, &qword_101A0A978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0A958);
  }

  return result;
}

uint64_t sub_1009AD004@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1009AD068()
{
  result = qword_101A0A9B8;
  if (!qword_101A0A9B8)
  {
    sub_1005C4E5C(&qword_101A0A9B0);
    sub_1005C4E5C(&qword_1019FEA78);
    sub_10001A2F8(&qword_1019FEA80, &qword_1019FEA78);
    swift_getOpaqueTypeConformance2();
    sub_10001A2F8(&qword_101A08A78, &qword_101A08A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0A9B8);
  }

  return result;
}

uint64_t sub_1009AD1E4(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s11SwiftUIViewVMa(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1009AD2B4()
{
  result = qword_101A0A9D0;
  if (!qword_101A0A9D0)
  {
    sub_1005C4E5C(&qword_101A0A9C8);
    sub_1009AD36C();
    sub_10001A2F8(&qword_101A0A9F8, &qword_101A0AA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0A9D0);
  }

  return result;
}

unint64_t sub_1009AD36C()
{
  result = qword_101A0A9D8;
  if (!qword_101A0A9D8)
  {
    sub_1005C4E5C(&qword_101A0A9E0);
    sub_10001A2F8(&qword_101A0A9E8, &qword_101A0A9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0A9D8);
  }

  return result;
}

uint64_t sub_1009AD47C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(_s11SwiftUIViewVMa(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1009AD510()
{
  result = qword_101A0AA50;
  if (!qword_101A0AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0AA50);
  }

  return result;
}

uint64_t sub_1009AD564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1009AD5CC()
{
  v1 = *(_s11SwiftUIViewVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(_s13ItemViewModelVMa() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1009A86F4(v0 + v2, v5);
}

uint64_t sub_1009AD6B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1009AD75C()
{
  result = qword_101A0AAC8;
  if (!qword_101A0AAC8)
  {
    sub_1005C4E5C(&qword_101A0AAB0);
    sub_1009ACE74(&qword_101A0AAC0, _s11SwiftUIViewV15SidebarListItemVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0AAC8);
  }

  return result;
}

uint64_t sub_1009AD810()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1009AD88C()
{
  result = _s15FilterViewModelVMa();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1009AD8F8()
{
  result = qword_101A0ABF0;
  if (!qword_101A0ABF0)
  {
    sub_1005C4E5C(&qword_101A0ABF8);
    sub_1009A9780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0ABF0);
  }

  return result;
}

unint64_t sub_1009AD9F4()
{
  result = qword_101A0AC08;
  if (!qword_101A0AC08)
  {
    sub_1005C4E5C(&qword_101A0AC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0AC08);
  }

  return result;
}

uint64_t sub_1009ADA7C()
{
  _s11SwiftUIViewV15ChildSizeReaderVMa();
  sub_1005B981C(&qword_101A0AC40);
  return Binding.wrappedValue.setter();
}

unint64_t sub_1009ADB44()
{
  result = qword_101A0AC28;
  if (!qword_101A0AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0AC28);
  }

  return result;
}

uint64_t sub_1009ADBD0()
{
  v1 = v0;
  sub_1005B981C(&unk_101A23620);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10146C6B0;
  v3 = type metadata accessor for CRLCanvasLayerAnimation();
  *(v2 + 56) = v3;
  *(v2 + 64) = &off_10187FC50;
  v4 = sub_10002C58C((v2 + 32));
  sub_10068613C(v1, v4);
  v5 = sub_100789704(v2, 0.0);
  v7 = v6;
  v8 = v5;
  swift_setDeallocating();
  sub_10000CAAC(v2 + 32, &unk_101A09F70);
  swift_deallocClassInstance();
  v70 = v7;
  v71 = v8;
  v9 = (v1 + *(v3 + 48));
  v10 = v9[3];
  v11 = v9[4];
  sub_100020E58(v9, v10);
  if ((*(v11 + 184))(v10, v11))
  {
    goto LABEL_22;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    memset(&v64, 0, 40);
    goto LABEL_18;
  }

  v13 = Strong;
  v14 = v9[3];
  v15 = v9[4];
  sub_100020E58(v9, v14);
  (*(v15 + 56))(&v66, v14, v15);
  sub_100B77684(v13, &v64);

  sub_100687CF4(&v66);
  m14 = v64.m14;
  if (!*&v64.m14)
  {
LABEL_18:
    v43 = &unk_1019F7310;
    v44 = &v64;
LABEL_19:
    sub_10000CAAC(v44, v43);
    v68 = 0u;
    v69 = 0u;
    goto LABEL_20;
  }

  m21 = v64.m21;
  sub_100020E58(&v64, *&v64.m14);
  (*(*&m21 + 48))(&v65, COERCE_CGFLOAT(*&m14), COERCE_CGFLOAT(*&m21));
  if (!*&v65.m33)
  {
    sub_100005070(&v64);
    v43 = &unk_101A09F80;
    v44 = &v65;
    goto LABEL_19;
  }

  sub_100601584(&v65, &v68);
  sub_1005F8A64(&v65);
  sub_100005070(&v64);
  if (!*(&v69 + 1))
  {
LABEL_20:
    v45 = &v68;
LABEL_21:
    sub_10000CAAC(v45, &unk_1019F4D00);
    goto LABEL_22;
  }

  type metadata accessor for CATransform3D(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    sub_1005B981C(&qword_101A009D0);
    result = swift_allocObject();
    *(result + 16) = xmmword_10146C6B0;
    v47 = v70;
    v48 = v71;
    *(result + 56) = &type metadata for CRLLayerAnimationGroup;
    *(result + 64) = &off_101885E50;
    *(result + 32) = v47;
    *(result + 40) = v48;
    return result;
  }

  v64 = v65;
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
    memset(&v60, 0, 40);
    goto LABEL_25;
  }

  v19 = v18;
  v20 = v9[3];
  v21 = v9[4];
  sub_100020E58(v9, v20);
  (*(v21 + 56))(&v66, v20, v21);
  sub_100B77684(v19, &v60);

  sub_100687CF4(&v66);
  v22 = v60.m14;
  if (!*&v60.m14)
  {
LABEL_25:
    v49 = &unk_1019F7310;
    v50 = &v60;
LABEL_26:
    sub_10000CAAC(v50, v49);
    v62 = 0u;
    v63 = 0u;
    goto LABEL_27;
  }

  v23 = v60.m21;
  sub_100020E58(&v60, *&v60.m14);
  (*(*&v23 + 48))(&v61, COERCE_CGFLOAT(*&v22), COERCE_CGFLOAT(*&v23));
  if (!*&v61.m33)
  {
    sub_100005070(&v60);
    v49 = &unk_101A09F80;
    v50 = &v61;
    goto LABEL_26;
  }

  sub_100601584(&v61.m21, &v62);
  sub_1005F8A64(&v61);
  sub_100005070(&v60);
  if (!*(&v63 + 1))
  {
LABEL_27:
    v45 = &v62;
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v60 = v61;
  v24 = [*(v1 + 8) associatedBackgroundLayer];
  if (!v24)
  {
    memset(&v66, 0, 40);
    goto LABEL_30;
  }

  v25 = v24;
  sub_100D3F52C(&v66, v9);

  if (!*&v66.m14)
  {
LABEL_30:
    sub_10000CAAC(&v66, &unk_101A09F70);
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    goto LABEL_32;
  }

  sub_1005B981C(&qword_1019F7320);
  sub_1005B981C(&qword_1019F5870);
  if (swift_dynamicCast())
  {
    if (*(&v55 + 1))
    {
      sub_100050F74(&v54, v57);
      v66 = v64;
      CATransform3DGetAffineTransform(&v53, &v66);
      tx = v53.tx;
      ty = v53.ty;
      v51 = *&v53.c;
      v52 = *&v53.a;
      v66 = v60;
      CATransform3DGetAffineTransform(&v53, &v66);
      *&v66.m11 = v52;
      *&v66.m13 = v51;
      v66.m21 = tx;
      v66.m22 = ty;
      *&v66.m23 = v53;
      v67 = 56;
      v28 = v58;
      v29 = v59;
      sub_10002A948(v57, v58);
      v30 = (*(v29 + 104))(&v53, v28, v29);
      v32 = *(v31 + 24);
      v33 = *(v31 + 32);
      sub_10002A948(v31, v32);
      (*(v33 + 64))(&v66, v32, v33);
      v30(&v53, 0);
      v34 = v58;
      v35 = v59;
      sub_10002A948(v57, v58);
      v36 = (*(v35 + 104))(&v66, v34, v35);
      v38 = *(v37 + 24);
      v39 = *(v37 + 32);
      sub_10002A948(v37, v38);
      (*(v39 + 192))(1, v38, v39);
      v36(&v66, 0);
      v40 = v58;
      v41 = v59;
      v42 = sub_100020E58(v57, v58);
      sub_100789544(v42, &v70, v40, *(v41 + 24));
      sub_100005070(v57);
      goto LABEL_22;
    }
  }

  else
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
  }

LABEL_32:
  sub_10000CAAC(&v54, &qword_1019F57A0);
  sub_1005B981C(&qword_101A009D0);
  result = swift_allocObject();
  *(result + 16) = xmmword_10146C6B0;
  *(result + 56) = &type metadata for CRLLayerAnimationGroup;
  *(result + 64) = &off_101885E50;
  *(result + 32) = v7;
  *(result + 40) = v8;
  return result;
}

void *sub_1009AE334()
{
  v0 = sub_1009ADBD0();
  v1 = *(v0 + 16);
  if (!v1)
  {

    v2 = _swiftEmptyArrayStorage;
LABEL_20:
    type metadata accessor for CRLCanvasLayerAnimationProvider();
    return v2;
  }

  v2 = _swiftEmptyArrayStorage;
  v3 = v0 + 32;
  while (1)
  {
    sub_10000630C(v3, v15);
    v5 = v16;
    v6 = v17;
    sub_100020E58(v15, v16);
    v7 = (*(v6 + 40))(v5, v6);
    result = sub_100005070(v15);
    v8 = *(v7 + 16);
    v9 = v2[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= v2[3] >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v11 = v9 + v8;
      }

      else
      {
        v11 = v9;
      }

      result = sub_100B36A2C(result, v11, 1, v2);
      v2 = result;
      if (*(v7 + 16))
      {
LABEL_14:
        if ((v2[3] >> 1) - v2[2] < v8)
        {
          goto LABEL_23;
        }

        sub_1005B981C(&qword_1019F5870);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v12 = v2[2];
          v13 = __OFADD__(v12, v8);
          v14 = v12 + v8;
          if (v13)
          {
            goto LABEL_24;
          }

          v2[2] = v14;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_22;
    }

LABEL_4:
    v3 += 40;
    if (!--v1)
    {

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1009AE4FC()
{
  v0 = sub_1009ADBD0();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
  }

  result = sub_10000630C(v0 + 32, &v13);
  if (v2 == 1)
  {
LABEL_3:

    sub_100050F74(&v13, &v16);
    v4 = v17;
    v5 = v18;
    sub_100020E58(&v16, v17);
    (*(*(v5 + 8) + 40))(v4);
    return sub_100005070(&v16);
  }

  else
  {
    v6 = v1 + 72;
    v7 = 1;
    while (v7 < *(v1 + 16))
    {
      sub_10000630C(v6, &v16);
      v9 = v14;
      v8 = v15;
      sub_100020E58(&v13, v14);
      v10 = (*(*(v8 + 8) + 40))(v9);
      v12 = v17;
      v11 = v18;
      sub_100020E58(&v16, v17);
      if (v10 >= (*(*(v11 + 8) + 40))(v12))
      {
        result = sub_100005070(&v16);
      }

      else
      {
        sub_100005070(&v13);
        result = sub_100050F74(&v16, &v13);
      }

      ++v7;
      v6 += 40;
      if (v2 == v7)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for CRLCanvasLayerAnimationProvider()
{
  result = qword_101A0ACC0;
  if (!qword_101A0ACC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1009AE718()
{
  result = type metadata accessor for CRLCanvasLayerAnimation();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_1009AE78C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v2 = *(v1 + 24);

  if (sub_10001FF1C() < v2)
  {

    return 0;
  }

  if ((*(v1 + 16) & 8) == 0)
  {

    return 1;
  }

  v4 = (*(*v1 + 464))();
  v6 = v5;
  v8 = v7;

  if ((v8 & 0x100) != 0)
  {
    if (v4 | v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 == 0;
    }

    if (v9)
    {
      return 0;
    }

    v10 = v4 == 1 && v6 == 0;
    if (v10 && v8 == 0)
    {
      return 0;
    }

    v12 = v4 == 2 && v6 == 0;
    if (v12 && v8 == 0)
    {
      return 0;
    }

    v14 = v4 == 3 && v6 == 0;
    if (v14 && v8 == 0)
    {
      return 0;
    }

    v16 = v4 == 4 && v6 == 0;
    if (v16 && v8 == 0)
    {
      return 0;
    }

    v18 = v4 == 5 && v6 == 0;
    if (v18 && v8 == 0)
    {
      return 0;
    }

    v20 = v4 == 6 && v6 == 0;
    if (v20 && v8 == 0)
    {
      return 0;
    }

    v22 = v4 == 7 && v6 == 0;
    if (v22 && v8 == 0)
    {
      return 0;
    }

    v24 = v4 == 8 && v6 == 0;
    if (v24 && v8 == 0)
    {
      return 0;
    }

    v26 = v4 == 9 && v6 == 0;
    if (v26 && v8 == 0)
    {
      return 0;
    }

    v28 = v4 == 10 && v6 == 0;
    return !v28 || v8 != 0;
  }

  result = 0;
  if ((v8 & 1) == 0 && v6)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1009AE974()
{
  v1 = (*((swift_isaMask & *v0) + 0xE0))();
  [v1 transform];
  v5 = v8;
  v6 = v7;
  v4 = v9;

  v7 = v6;
  v8 = v5;
  v9 = v4;
  v2 = sub_100139B08(&v7, 0.0001);
  if (v2)
  {
    if ((*((swift_isaMask & *v0) + 0x190))())
    {
      LOBYTE(v2) = (*((swift_isaMask & *v0) + 0x330))();
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  return v2 & 1;
}

uint64_t sub_1009AEAEC()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 272);

  v1(v2);
}

uint64_t sub_1009AEB6C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A0AFE0);
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  v10 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v10 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  __chkstk_darwin(v16);
  v18 = &v57 - v17;
  result = sub_1011255D4(v19);
  if ((result & 1) == 0)
  {
    return result;
  }

  v59 = v12;
  v60 = v1;
  v58 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v21 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 272);
  v61 = a1;

  v21(v22);
  v23 = v61;

  v24 = *(v7 + 48);
  sub_10000BE14(v18, v9, &qword_1019F6990);
  sub_10000BE14(v23, &v9[v24], &qword_1019F6990);
  v25 = *(v4 + 48);
  if (v25(v9, 1, v3) == 1)
  {
    sub_10000CAAC(v18, &qword_1019F6990);
    if (v25(&v9[v24], 1, v3) == 1)
    {
      return sub_10000CAAC(v9, &qword_1019F6990);
    }
  }

  else
  {
    sub_10000BE14(v9, v15, &qword_1019F6990);
    if (v25(&v9[v24], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v9[v24], v3);
      sub_1009C2C74(&qword_1019F37C0, &type metadata accessor for UUID);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v4 + 8);
      v31(v6, v3);
      sub_10000CAAC(v18, &qword_1019F6990);
      v31(v15, v3);
      v23 = v61;
      result = sub_10000CAAC(v9, &qword_1019F6990);
      v26 = v60;
      v27 = v59;
      if (v30)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_10000CAAC(v18, &qword_1019F6990);
    (*(v4 + 8))(v15, v3);
  }

  sub_10000CAAC(v9, &unk_101A0AFE0);
  v26 = v60;
  v27 = v59;
LABEL_8:
  type metadata accessor for CRLRootContainerItem(0);
  if (swift_dynamicCastClass())
  {
    v32 = objc_opt_self();
    v33 = [v32 _atomicIncrementAssertCount];
    v62 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v62);
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
    v42 = sub_100006370(0, &qword_1019F4D30);
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
    *(inited + 152) = 903;
    v45 = v62;
    *(inited + 216) = v42;
    *(inited + 224) = v43;
    *(inited + 192) = v45;
    v46 = v34;
    v47 = v45;
    v48 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v48, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v49 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v49, "Root container items should never be reparented!", 48, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Root container items should never be reparented!");
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

    [v32 handleFailureInFunction:v52 file:v53 lineNumber:903 isFatal:1 format:v54 args:v51];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v55, v56);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v28 = *(v26 + v58);
    sub_10000BE14(v23, v27, &qword_1019F6990);
    v29 = *(*v28 + 280);

    v29(v27);
  }

  return result;
}

uint64_t sub_1009AF45C(uint64_t (*a1)(uint64_t))
{
  v2 = (*((swift_isaMask & *v1) + 0xC8))();

  return a1(v2);
}

uint64_t sub_1009AF4CC()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v3 = v1(v2);

  return v3;
}

void sub_1009AF540(void *a1)
{
  v2 = v1;
  if ((sub_1011255D4(a1) & 1) != 0 && (v3 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData, v4 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296), v5 = , v6 = v4(v5), , sub_100006370(0, &unk_1019F5730), v7 = static NSObject.== infix(_:_:)(), v6, (v7 & 1) == 0))
  {
    v8 = *(**(v2 + v3) + 304);

    v8(a1);
  }

  else
  {
  }
}

__n128 sub_1009AF680()
{
  v1 = *((swift_isaMask & *v0) + 0x110);
  v2 = v1(v29);
  if (v30)
  {
    v28 = v1;
    v27 = objc_opt_self();
    v3 = [v27 _atomicIncrementAssertCount];
    v31[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v31);
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
    *(inited + 152) = 214;
    v15 = v31[0];
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Board Item's Spatial Transform is Nil. Should either check first with hasSpatialTransform in Objective-C or refer to CRL3DTransform-based property in Swift.", 156, 2, _swiftEmptyArrayStorage);

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

    [v27 handleFailureInFunction:v22 file:v23 lineNumber:214 isFatal:0 format:v24 args:v21];

    v1 = v28;
  }

  v25 = v31;
  (v1)(v31, v2);
  if (v32)
  {
    v25 = &matrix_identity_float4x4;
  }

  return v25->columns[0];
}

__n128 sub_1009AFAAC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 320);

  v3(v7, v4);

  v5 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v8;
  result = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1009AFB44()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 344);

  v1(v2);
}

BOOL sub_1009AFC00()
{
  v1 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  type metadata accessor for CRLTableItem();
  v6 = swift_dynamicCastClass();

  if (!v6)
  {
    return 0;
  }

  (*((swift_isaMask & *v0) + 0x128))();
  v7 = type metadata accessor for CRLTableAnchorHint();
  v8 = (*(*(v7 - 8) + 48))(v3, 1, v7) != 1;
  sub_10000CAAC(v3, &unk_101A09DD0);
  return v8;
}

uint64_t sub_1009AFD54(void *a1)
{
  v2 = sub_1005B981C(&unk_101A09DD0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  (*((swift_isaMask & *a1) + 0x128))(v3);
  v6 = type metadata accessor for CRLTableAnchorHint();
  v7 = 1;
  v8 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_10000CAAC(v5, &unk_101A09DD0);
  if (v8 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v7 = sub_1009AFD54();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t sub_1009AFEC4()
{
  if ((sub_1009AFD54(v0) & 1) == 0)
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    type metadata accessor for CRLTableItem();
    while (1)
    {
      result = swift_dynamicCastClass();
      if (result)
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      v2 = Strong;
      if (!Strong)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1009AFF48()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 368);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

uint64_t sub_1009AFFBC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  result = sub_1011255D4(a1);
  if (result)
  {
    v5 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v6 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 368);

    LODWORD(v6) = v6(v7) & 1;

    v8 = v3 & 1;
    if (v6 != v8)
    {
      v9 = *(**(v2 + v5) + 376);

      v9(v8);
    }
  }

  return result;
}

uint64_t sub_1009B00B8()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 392);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

uint64_t sub_1009B012C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  result = sub_1011255D4(a1);
  if (result)
  {
    v5 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v6 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 392);

    LODWORD(v6) = v6(v7) & 1;

    v8 = v3 & 1;
    if (v6 != v8)
    {
      v9 = *(**(v2 + v5) + 400);

      v9(v8);
    }
  }

  return result;
}

uint64_t sub_1009B0228()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 416);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_1009B02A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((sub_1011255D4(a1) & 1) == 0)
  {
LABEL_9:
  }

  v6 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v7 = *(**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 416);

  v9 = v7(v8);
  v11 = v10;

  if (v9 == a1 && v11 == a2)
  {

    goto LABEL_9;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_9;
  }

  v15 = *(**(v3 + v6) + 424);

  v15(a1, a2);
}

void sub_1009B0404(void *a1)
{
  v2 = v1;
  if ((sub_1011255D4(a1) & 1) == 0)
  {
    v8 = a1;
    goto LABEL_7;
  }

  v3 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v4 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 440);

  v6 = v4(v5);

  if (v6)
  {
    if (a1)
    {
      sub_100006370(0, &unk_101A11F40);
      v11 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        v8 = v11;
LABEL_7:

        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = *(**(v2 + v3) + 448);
  v10 = a1;

  v9(a1);
}

uint64_t sub_1009B05A0()
{
  v1 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v1 - 8);
  v3 = v10 - v2;
  v12 = v0;
  type metadata accessor for CRLBoardItem(0);
  v4 = v0;
  sub_1005B981C(&unk_101A0B070);
  if (swift_dynamicCast())
  {
    sub_100050F74(v10, v13);
    v5 = v14;
    v6 = v15;
    sub_100020E58(v13, v14);
    (*(v6 + 8))(v5, v6);
    v7 = type metadata accessor for CRLAssetData();
    if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
    {
      sub_10000CAAC(v3, &unk_101A1B880);
      v8 = 0;
    }

    else
    {
      v8 = *&v3[*(v7 + 20)];

      sub_1009C3314(v3, type metadata accessor for CRLAssetData);
    }

    sub_100005070(v13);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_10000CAAC(v10, &qword_1019FCFB8);
    return 0;
  }

  return v8;
}

uint64_t sub_1009B0778(uint64_t a1)
{
  v3 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 504);

  v4 = v3(a1);

  return v4;
}

uint64_t sub_1009B07F4()
{
  v1 = v0;
  v153 = type metadata accessor for CocoaError.Code();
  v194 = *(v153 - 8);
  __chkstk_darwin(v153);
  v3 = &v149 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_1005B981C(&qword_1019FBED8);
  v159 = *(v187 - 8);
  v4 = __chkstk_darwin(v187);
  v158 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v170 = &v149 - v7;
  __chkstk_darwin(v6);
  v151 = &v149 - v8;
  v9 = sub_1005B981C(&qword_101A0B040);
  v10 = __chkstk_darwin(v9 - 8);
  v163 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v169 = &v149 - v12;
  v156 = sub_1005B981C(&qword_101A0B048);
  __chkstk_darwin(v156);
  v155 = &v149 - v13;
  v182 = type metadata accessor for URL();
  v14 = *(v182 - 8);
  v15 = __chkstk_darwin(v182);
  v175 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v154 = &v149 - v17;
  v18 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v18 - 8);
  v168 = &v149 - v19;
  v191 = type metadata accessor for UUID();
  v189 = *(v191 - 8);
  __chkstk_darwin(v191);
  v193 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1005B981C(&qword_1019F6990);
  v177 = *(v21 - 8);
  v22 = __chkstk_darwin(v21 - 8);
  v184 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v176 = &v149 - v24;
  v25 = sub_1005B981C(&unk_101A0B050);
  v26 = __chkstk_darwin(v25 - 8);
  v190 = (&v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v29 = &v149 - v28;
  v30 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v31 = *&v30[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v31 + 16));
  v32 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v33 = *&v30[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v33)
  {
    v192 = *&v30[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v34 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v35 = v30;
    v36 = sub_10001F1A0(v35);

    v37 = *&v30[v32];
    *&v30[v32] = v36;
    v192 = v36;

    v33 = 0;
  }

  v38 = *(v31 + 16);
  v39 = v33;
  os_unfair_lock_unlock(v38);
  v40 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v41 = *(*v40 + 664);

  v43 = v41(v42);
  v44 = (*(*v40 + 672))();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v199[0] = v43;
  sub_1010935A0(v44, sub_100E8FDF4, 0, isUniquelyReferenced_nonNull_native, v199);

  v46 = v199[0];
  v160 = v3;
  v47 = sub_100BD5554(_swiftEmptyArrayStorage);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v199[0] = v46;
  sub_1010935A0(v47, sub_100E8FDF4, 0, v48, v199);
  v174 = 0;

  v49 = v199[0];
  v50 = *(v199[0] + 64);
  v161 = v199[0] + 64;
  v51 = 1 << *(v199[0] + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & v50;
  v150 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetsDirectoryURL;
  v185 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetFileURLCache;
  v186 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock;
  swift_beginAccess();
  v54 = 0;
  v55 = (v51 + 63) >> 6;
  v181 = (v189 + 48);
  v167 = (v189 + 32);
  v178 = (v159 + 48);
  v179 = (v159 + 56);
  v172 = (v14 + 32);
  v162 = (v14 + 8);
  v152 = (v194 + 8);
  v157 = (v14 + 16);
  v165 = (v189 + 8);
  v166 = (v14 + 56);
  v164 = (v14 + 48);
  v149 = xmmword_10146C4D0;
  v56 = v190;
  v188 = v55;
  v189 = v29;
  v180 = v49;
  if (!v53)
  {
    goto LABEL_10;
  }

  do
  {
    while (1)
    {
      v57 = v54;
LABEL_16:
      v59 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v60 = v59 | (v57 << 6);
      v61 = (*(v180 + 48) + 16 * v60);
      v62 = *v61;
      v63 = v61[1];
      v64 = v176;
      sub_10000BE14(*(v180 + 56) + *(v177 + 72) * v60, v176, &qword_1019F6990);
      v65 = sub_1005B981C(&qword_1019F6998);
      v66 = *(v65 + 48);
      v67 = v190;
      *v190 = v62;
      v67[1] = v63;
      v56 = v67;
      sub_10003DFF8(v64, v67 + v66, &qword_1019F6990);
      (*(*(v65 - 8) + 56))(v56, 0, 1, v65);

      v194 = v57;
      v55 = v188;
      v29 = v189;
LABEL_17:
      sub_10003DFF8(v56, v29, &unk_101A0B050);
      v68 = sub_1005B981C(&qword_1019F6998);
      v183 = (*(*(v68 - 8) + 48))(v29, 1, v68);
      v69 = v184;
      if (v183 == 1)
      {

        return v183 != 1;
      }

      sub_10003DFF8(&v29[*(v68 + 48)], v69, &qword_1019F6990);
      v70 = v191;
      if ((*v181)(v69, 1, v191) != 1)
      {
        break;
      }

      sub_10000CAAC(v69, &qword_1019F6990);
      v54 = v194;
      if (!v53)
      {
        goto LABEL_10;
      }
    }

    v71 = v193;
    (*v167)(v193, v69, v70);
    v72 = v192;
    v73 = *&v192[v186];
    os_unfair_lock_lock(*(v73 + 16));
    v74 = *&v72[v185];
    if (*(v74 + 16))
    {

      v75 = sub_10003E994(v71);
      v76 = v169;
      if (v77)
      {
        sub_10000BE14(*(v74 + 56) + *(v159 + 72) * v75, v169, &qword_1019FBED8);
        v78 = 0;
      }

      else
      {
        v78 = 1;
      }

      v80 = v182;
    }

    else
    {
      v78 = 1;
      v76 = v169;
      v80 = v182;
    }

    v81 = *v179;
    v82 = v187;
    (*v179)(v76, v78, 1, v187);
    os_unfair_lock_unlock(*(v73 + 16));
    v83 = *v178;
    if ((*v178)(v76, 1, v82) == 1)
    {
      sub_10000CAAC(v76, &qword_101A0B040);
      goto LABEL_30;
    }

    v84 = *(v76 + *(v82 + 48));
    v85 = v156;
    v86 = *(v156 + 48);
    v87 = v76;
    v88 = *v172;
    v89 = v155;
    (*v172)(v155, v87, v182);
    *&v89[v86] = v84;
    v90 = *&v89[*(v85 + 48)];
    v91 = v154;
    v80 = v182;
    v88(v154, v89, v182);
    if ((v90 & 2) == 0)
    {
      (*v162)(v91, v80);
LABEL_30:
      v92 = v192;
      v93 = *&v192[v186];
      os_unfair_lock_lock(*(v93 + 16));
      v94 = *&v92[v185];
      if (*(v94 + 16))
      {
        v95 = v80;

        v96 = sub_10003E994(v193);
        if (v97)
        {
          sub_10000BE14(*(v94 + 56) + *(v159 + 72) * v96, v163, &qword_1019FBED8);
          v98 = 0;
        }

        else
        {
          v98 = 1;
        }
      }

      else
      {
        v95 = v80;
        v98 = 1;
      }

      v101 = v163;
      v102 = v187;
      v81(v163, v98, 1, v187);
      os_unfair_lock_unlock(*(v93 + 16));
      if (v83(v101, 1, v102) != 1)
      {
        v111 = v101;
        v112 = v151;
        sub_10003DFF8(v111, v151, &qword_1019FBED8);
        v113 = v112;
        v114 = v170;
        sub_10003DFF8(v113, v170, &qword_1019FBED8);
        v115 = *(v114 + *(v102 + 48));
        v80 = v95;
        (*v172)(v175, v114, v95);
        v116 = v160;
        goto LABEL_53;
      }

      sub_10000CAAC(v101, &qword_101A0B040);
      v103 = v193;
      v104 = sub_10108C21C();
      v80 = v95;
      if (v104)
      {
        v106 = *(v104 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
        v105 = *(v104 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);

        UUID.uuidString.getter();
        if (v105)
        {
          v107 = HIBYTE(v105) & 0xF;
          if ((v105 & 0x2000000000000000) == 0)
          {
            v107 = v106 & 0xFFFFFFFFFFFFLL;
          }

          if (v107)
          {
            v108 = String._bridgeToObjectiveC()();
            v109 = String._bridgeToObjectiveC()();
            v110 = [v108 stringByAppendingPathExtension:v109];

            if (!v110)
            {

              v173 = 1;
              v116 = v160;
              v103 = v193;
              goto LABEL_52;
            }

            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
          }
        }

        v173 = 1;
        v116 = v160;
        v103 = v193;
      }

      else
      {
        UUID.uuidString.getter();
        v173 = 0;
        v116 = v160;
      }

LABEL_52:
      v118 = v175;
      URL.appendingPathComponent(_:)();

      v119 = v173;
      sub_10108B1E0(v103, v118, v173);

      v115 = v119;
LABEL_53:
      v120 = URL.checkResourceIsReachable()();
      if (v121)
      {
        v173 = v115;
        swift_errorRetain();
        static CocoaError.fileNoSuchFile.getter();
        sub_1009C2C74(&unk_101A0B060, &type metadata accessor for CocoaError.Code);
        v122 = v153;
        v123 = static _ErrorCodeProtocol.~= infix(_:_:)();

        v124 = *v152;
        (*v152)(v116, v122);
        if ((v123 & 1) == 0)
        {
          swift_errorRetain();
          static CocoaError.fileReadNoSuchFile.getter();
          v125 = static _ErrorCodeProtocol.~= infix(_:_:)();

          v124(v116, v122);
          if ((v125 & 1) == 0)
          {
            swift_willThrow();
            if (qword_1019F2258 != -1)
            {
              swift_once();
            }

            v174 = static OS_os_log.boardStore;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = v149;
            v138 = v175;
            v139 = URL.path.getter();
            v141 = v140;
            *(inited + 56) = &type metadata for String;
            v142 = sub_1000053B0();
            *(inited + 64) = v142;
            *(inited + 32) = v139;
            *(inited + 40) = v141;
            swift_getErrorValue();
            v143 = Error.publicDescription.getter(v197, v198);
            *(inited + 96) = &type metadata for String;
            *(inited + 104) = v142;
            *(inited + 72) = v143;
            *(inited + 80) = v144;
            swift_getErrorValue();
            v145 = Error.fullDescription.getter(v196);
            *(inited + 136) = &type metadata for String;
            *(inited + 144) = v142;
            *(inited + 112) = v145;
            *(inited + 120) = v146;
            v147 = static os_log_type_t.error.getter();
            sub_100005404(v174, &_mh_execute_header, v147, "Failed to check if file exists. filePath=%@, error=%{public}@ <%@>", 68, 2, inited);

            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v136 = v138;
            v174 = 0;
            v55 = v188;
            v29 = v189;
LABEL_69:
            (*v162)(v136, v80);
            v100 = 1;
            v99 = v168;
            v56 = v190;
            v117 = v191;
            goto LABEL_70;
          }
        }

        v126 = v80;

        v171 = 0;
        v174 = 0;
        v127 = 2;
        if ((v173 & 1) == 0)
        {
LABEL_58:
          v128 = v192;
          v129 = *&v192[v186];
          os_unfair_lock_lock(*(v129 + 16));
          v130 = *(v187 + 48);
          v131 = v170;
          v132 = v175;
          (*v157)(v170, v175, v126);
          *(v131 + v130) = v127;
          v133 = v185;
          swift_beginAccess();
          v134 = v158;
          sub_10003DFF8(v131, v158, &qword_1019FBED8);
          v135 = swift_isUniquelyReferenced_nonNull_native();
          v195 = *&v128[v133];
          sub_100A9B1E0(v134, v193, v135);
          *&v128[v133] = v195;
          swift_endAccess();
          os_unfair_lock_unlock(*(v129 + 16));
          if (v171)
          {
            v99 = v168;
            (*v172)(v168, v132, v126);
            v100 = 0;
            v56 = v190;
            v117 = v191;
            v55 = v188;
            v29 = v189;
            v80 = v126;
            goto LABEL_70;
          }

          v55 = v188;
          v29 = v189;
          v80 = v126;
          v136 = v132;
          goto LABEL_69;
        }
      }

      else
      {
        v174 = 0;
        v126 = v80;
        v171 = v120;
        if (v120)
        {
          v127 = 6;
        }

        else
        {
          v127 = 2;
        }

        if ((v115 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      v127 |= 1u;
      goto LABEL_58;
    }

    v99 = v168;
    v55 = v188;
    if ((v90 & 4) != 0)
    {
      v88(v168, v91, v80);
      v100 = 0;
    }

    else
    {
      (*v162)(v91, v80);
      v100 = 1;
    }

    v29 = v189;
    v56 = v190;
    v117 = v191;
LABEL_70:
    (*v166)(v99, v100, 1, v80);
    (*v165)(v193, v117);
    if ((*v164)(v99, 1, v80) == 1)
    {

      sub_10000CAAC(v99, &unk_1019F33C0);
      return v183 != 1;
    }

    sub_10000CAAC(v99, &unk_1019F33C0);
    v54 = v194;
  }

  while (v53);
LABEL_10:
  if (v55 <= v54 + 1)
  {
    v58 = v54 + 1;
  }

  else
  {
    v58 = v55;
  }

  while (1)
  {
    v57 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v57 >= v55)
    {
      v194 = v58 - 1;
      v79 = sub_1005B981C(&qword_1019F6998);
      (*(*(v79 - 8) + 56))(v56, 1, 1, v79);
      v53 = 0;
      goto LABEL_17;
    }

    v53 = *(v161 + 8 * v57);
    ++v54;
    if (v53)
    {
      goto LABEL_16;
    }
  }

  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}