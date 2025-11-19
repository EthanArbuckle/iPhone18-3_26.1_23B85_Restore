uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_12:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v10;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = *(a6 + 16);
    if (v11)
    {
      v13 = 0;
      v14 = a3 - 1;
      while (v13 < *(a6 + 16))
      {
        *(a2 + 8 * v13) = *(a6 + 32 + 8 * v13);
        if (v14 == v13)
        {
          swift_unknownObjectRetain();
          goto LABEL_12;
        }

        result = swift_unknownObjectRetain();
        if (v11 == ++v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v10 = v11;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

id specialized Sequence._copySequenceContents(initializing:)(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
  lazy protocol witness table accessor for type CHHandle and conformance NSObject();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t lazy protocol witness table accessor for type [UIMenuElement] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ClarityUISceneDelegate.assistiveAccessRootView.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = dlopen("/System/Library/PrivateFrameworks/ConversationKit.framework/ConversationKit", 256);
  if (!v2)
  {
    if (one-time initialization token for clarityUI != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.clarityUI);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_18;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22[0] = v15;
    *v14 = 136315138;
    result = dlerror();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v16 = String.init(cString:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v22);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed to load ConversationKit.framework:%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    goto LABEL_17;
  }

  v3 = dlsym(v2, "clarityUIRootView_generic");
  if (!v3)
  {
    if (one-time initialization token for clarityUI != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.clarityUI);
    v12 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v20))
    {
      goto LABEL_18;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v12, v20, "No function clarityUIRootView_generic in ConversationKit.", v21, 2u);
LABEL_17:

LABEL_18:

    result = AnyView.init<A>(_:)();
    *a1 = result;
    return result;
  }

  v4 = v3;
  if (one-time initialization token for clarityUI != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.clarityUI);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully soft linked ConversationKit!", v8, 2u);
  }

  v22[5] = v4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4View_pMd);
  swift_dynamicCast();
  v9 = __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  *a1 = project #1 <A>(value:) in static ClarityUISceneDelegate.assistiveAccessRootView.getter(v9);
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t project #1 <A>(value:) in static ClarityUISceneDelegate.assistiveAccessRootView.getter(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return AnyView.init<A>(_:)();
}

uint64_t static ClarityUISceneDelegate.rootScene.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15AssistiveAccessVyAA7AnyViewVGMd);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6[-v3];
  v7 = v0;
  AssistiveAccess.init(content:)();
  lazy protocol witness table accessor for type AssistiveAccess<AnyView> and conformance AssistiveAccess<A>();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t partial apply for closure #1 in static ClarityUISceneDelegate.rootScene.getter@<X0>(void *a1@<X8>)
{
  result = static ClarityUISceneDelegate.assistiveAccessRootView.getter(&v3);
  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type AssistiveAccess<AnyView> and conformance AssistiveAccess<A>()
{
  result = lazy protocol witness table cache variable for type AssistiveAccess<AnyView> and conformance AssistiveAccess<A>;
  if (!lazy protocol witness table cache variable for type AssistiveAccess<AnyView> and conformance AssistiveAccess<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15AssistiveAccessVyAA7AnyViewVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssistiveAccess<AnyView> and conformance AssistiveAccess<A>);
  }

  return result;
}

id ClarityUISceneDelegate.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityUISceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id ClarityUISceneDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityUISceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t protocol witness for static UIHostingSceneDelegate.rootScene.getter in conformance ClarityUISceneDelegate()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15AssistiveAccessVyAA7AnyViewVGMd);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6[-v3];
  v7 = v0;
  AssistiveAccess.init(content:)();
  lazy protocol witness table accessor for type AssistiveAccess<AnyView> and conformance AssistiveAccess<A>();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t *VoicemailActor.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static VoicemailActor.shared;
}

uint64_t one-time initialization function for queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.userInteractive.getter();
  v7[1] = _swiftEmptyArrayStorage;
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static VoicemailActor.queue = result;
  return result;
}

{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for OS_dispatch_queue_serial);
  static DispatchQoS.userInteractive.getter();
  v7[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type ApplicationServicesActor and conformance ApplicationServicesActor(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static ApplicationServicesActor.queue = result;
  return result;
}

uint64_t *VoicemailActor.queue.unsafeMutableAddressor()
{
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  return &static VoicemailActor.queue;
}

uint64_t VoicemailActor.unownedExecutor.getter()
{
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  return OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
}

id VoicemailQueueManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoicemailQueueManager();
  return objc_msgSendSuper2(&v2, "init");
}

id one-time initialization function for serialQueue()
{
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v1 = static VoicemailActor.queue;
  static VoicemailQueueManager.serialQueue = static VoicemailActor.queue;

  return v1;
}

uint64_t *VoicemailQueueManager.serialQueue.unsafeMutableAddressor()
{
  if (one-time initialization token for serialQueue != -1)
  {
    swift_once();
  }

  return &static VoicemailQueueManager.serialQueue;
}

id VoicemailQueueManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoicemailQueueManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t type metadata accessor for OS_dispatch_queue_serial()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue_serial;
  if (!lazy cache variable for type metadata for OS_dispatch_queue_serial)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue_serial);
  }

  return result;
}

uint64_t _s11MobilePhone14VoicemailActorCACScAAAWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t PHCountingLayer.value.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone15PHCountingLayer_value;
  swift_beginAccess();
  return *(v0 + v1);
}

void PHCountingLayer.value.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11MobilePhone15PHCountingLayer_value;
  swift_beginAccess();
  *&v2[v4] = a1;
  type metadata accessor for NSString();
  v5 = NSString.init(stringLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v6 = swift_allocObject();
  v7 = *&v2[v4];
  *(v6 + 16) = xmmword_100209AA0;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = v7;
  v8 = NSString.init(format:_:)();

  [v2 setString:v8];
  [v2 setNeedsDisplay];
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

uint64_t static PHCountingLayer.needsDisplay(forKey:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = String._bridgeToObjectiveC()();
  v6.receiver = ObjCClassFromMetadata;
  v6.super_class = &OBJC_METACLASS____TtC11MobilePhone15PHCountingLayer;
  v5 = objc_msgSendSuper2(&v6, "needsDisplayForKey:", v4);

  return v5;
}

id PHCountingLayer.action(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() animationWithKeyPath:v4];

    v6 = [v2 presentationLayer];
    if (v6)
    {
      v7 = v6;
      [v6 value];
    }

    else
    {
      [v2 value];
    }

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v5 setFromValue:isa];
  }

  else
  {
    v9 = String._bridgeToObjectiveC()();
    v11.receiver = v2;
    v11.super_class = type metadata accessor for PHCountingLayer();
    v5 = objc_msgSendSuper2(&v11, "actionForKey:", v9);
  }

  return v5;
}

id PHCountingLayer.init()()
{
  *&v0[OBJC_IVAR____TtC11MobilePhone15PHCountingLayer_value] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PHCountingLayer();
  return objc_msgSendSuper2(&v2, "init");
}

id PHCountingLayer.__allocating_init(layer:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = [v3 initWithLayer:_bridgeAnythingToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

id PHCountingLayer.init(layer:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11MobilePhone15PHCountingLayer_value] = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PHCountingLayer();
  v4 = objc_msgSendSuper2(&v6, "initWithLayer:", v3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

id PHCountingLayer.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11MobilePhone15PHCountingLayer_value] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PHCountingLayer();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id PHCountingLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PHCountingLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10010C608@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 value];
  *a2 = result;
  return result;
}

char *LiveVoicemailWelcomeViewController.__allocating_init(delegate:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized LiveVoicemailWelcomeViewController.__allocating_init(delegate:)(a1, v1);
}

id closure #1 in LiveVoicemailWelcomeViewController.continueButton.getter(uint64_t a1)
{
  v2 = [objc_opt_self() boldButton];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x45554E49544E4F43;
  v6.value._countAndFlagsBits = 0x6D6563696F56504DLL;
  v6.value._object = 0xEB000000006C6961;
  v5._object = 0xE800000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v10);

  v8 = String._bridgeToObjectiveC()();

  [v2 setTitle:v8 forState:0];

  [v2 addTarget:a1 action:"didTapContinueButton" forControlEvents:64];
  return v2;
}

id closure #1 in LiveVoicemailWelcomeViewController.settingsButton.getter(uint64_t a1)
{
  v2 = [objc_opt_self() linkButton];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x6D6563696F56504DLL;
  v5.value._object = 0xEB000000006C6961;
  v6._object = 0x8000000100243B30;
  v6._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10);

  v8 = String._bridgeToObjectiveC()();

  [v2 setTitle:v8 forState:0];

  [v2 addTarget:a1 action:"didTapLinkButton" forControlEvents:64];
  return v2;
}

id LiveVoicemailWelcomeViewController.continueButton.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in LiveVoicemailWelcomeViewController.liveVoicemailOnboardingImageView.getter()
{
  LiveVoicemailWelcomeViewController.onboardingImageAssetName.getter();
  v0 = String._bridgeToObjectiveC()();

  v1 = [objc_opt_self() imageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setContentMode:2];
  v4 = [v3 layer];
  [v4 setMinificationFilter:kCAFilterTrilinear];

  v5 = [v3 layer];
  [v5 setMagnificationFilter:kCAFilterTrilinear];

  v6 = [objc_opt_self() systemLightGrayColor];
  [v3 setBackgroundColor:v6];

  return v3;
}

unint64_t LiveVoicemailWelcomeViewController.onboardingImageAssetName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController____lazy_storage___onboardingImageAssetName);
  if (*(v0 + OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController____lazy_storage___onboardingImageAssetName + 8))
  {
    v2 = *v1;
  }

  else
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    HasHomeButton = TUDeviceHasHomeButton();
    v6 = 0xD000000000000026;
    v7 = "veVoicemail_Onboarding";
    if (HasHomeButton)
    {
      v6 = 0xD000000000000024;
    }

    else
    {
      v7 = "er";
    }

    if (v4)
    {
      v2 = 0xD000000000000027;
    }

    else
    {
      v2 = v6;
    }

    if (v4)
    {
      v8 = "Voicemail_Onboarding";
    }

    else
    {
      v8 = v7;
    }

    *v1 = v2;
    v1[1] = v8 | 0x8000000000000000;
  }

  return v2;
}

char *LiveVoicemailWelcomeViewController.init(delegate:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized LiveVoicemailWelcomeViewController.init(delegate:)(a1, v1);
}

Swift::Void __swiftcall LiveVoicemailWelcomeViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for LiveVoicemailWelcomeViewController();
  objc_msgSendSuper2(&v1, "viewDidLoad");
  LiveVoicemailWelcomeViewController.configureViewHierarchy()();
}

Swift::Void __swiftcall LiveVoicemailWelcomeViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO5EventVy_AC13EmptyDonationVGMd);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  v7 = type metadata accessor for LiveVoicemailWelcomeViewController();
  v8.receiver = v1;
  v8.super_class = v7;
  objc_msgSendSuper2(&v8, "viewDidAppear:", a1);
  static LiveVoicemailTip.onboardingViewedEvent.getter();
  Tips.Event.sendDonation<>(_:)();
  (*(v4 + 8))(v6, v3);
  specialized Defaults.showLiveVoicemailOnboarding.setter(0);
}

void LiveVoicemailWelcomeViewController.configureViewHierarchy()()
{
  v1 = [v0 buttonTray];
  v2 = LiveVoicemailWelcomeViewController.continueButton.getter();
  [v1 addButton:v2];

  v3 = [v0 buttonTray];
  v4 = LiveVoicemailWelcomeViewController.settingsButton.getter();
  [v3 addButton:v4];

  v5 = [v0 contentView];
  v6 = LiveVoicemailWelcomeViewController.liveVoicemailOnboardingImageView.getter();
  [v5 addSubview:v6];

  v7 = [v0 contentView];
  v8 = [objc_opt_self() systemWhiteColor];
  [v7 setBackgroundColor:v8];

  v9 = [v0 contentView];
  v10 = [v9 heightAnchor];

  v11 = [v0 view];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 heightAnchor];

    v14 = [v10 constraintEqualToAnchor:v13 multiplier:0.4];
    v15 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100209A70;
    v17 = OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController____lazy_storage___liveVoicemailOnboardingImageView;
    v18 = [*&v0[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController____lazy_storage___liveVoicemailOnboardingImageView] heightAnchor];
    v19 = [v0 contentView];
    v20 = [v19 heightAnchor];

    v21 = [v18 constraintEqualToAnchor:v20];
    *(v16 + 32) = v21;
    v22 = [*&v0[v17] widthAnchor];
    v23 = [v0 contentView];
    v24 = [v23 widthAnchor];

    v25 = [v22 constraintEqualToAnchor:v24];
    *(v16 + 40) = v25;
    v26 = [*&v0[v17] topAnchor];
    v27 = [v0 contentView];
    v28 = [v27 topAnchor];

    v29 = [v26 constraintEqualToAnchor:v28];
    *(v16 + 48) = v29;
    v30 = [*&v0[v17] centerXAnchor];
    v31 = [v0 contentView];
    v32 = [v31 centerXAnchor];

    v33 = [v30 constraintEqualToAnchor:v32];
    *(v16 + 56) = v33;
    v34 = [*&v0[v17] centerYAnchor];
    v35 = [v0 contentView];
    v36 = [v35 centerYAnchor];

    v37 = [v34 constraintEqualToAnchor:v36];
    *(v16 + 64) = v37;
    *(v16 + 72) = v14;
    type metadata accessor for NSLayoutConstraint();
    v38 = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 activateConstraints:isa];

    v40 = *&v0[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController_contentViewHeightConstraint];
    *&v0[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController_contentViewHeightConstraint] = v38;
  }

  else
  {
    __break(1u);
  }
}

void LiveVoicemailWelcomeViewController.didTapLinkButton()()
{
  v1 = objc_allocWithZone(NSURL);
  v2 = String._bridgeToObjectiveC()();
  v6 = [v1 initWithString:v2];

  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v4 openSensitiveURL:v6 withOptions:isa];

    if (*(v0 + OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController_delegate))
    {
      [swift_unknownObjectRetain() didTapSettingsWithViewController:v0];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

id LiveVoicemailWelcomeViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = String._bridgeToObjectiveC()();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id LiveVoicemailWelcomeViewController.init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController_delegate] = 0;
  *&v7[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController____lazy_storage___continueButton] = 0;
  *&v7[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController____lazy_storage___settingsButton] = 0;
  *&v7[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController____lazy_storage___liveVoicemailOnboardingImageView] = 0;
  v11 = &v7[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController____lazy_storage___onboardingImageAssetName];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v7[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController_contentViewHeightConstraint] = 0;
  v12 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = String._bridgeToObjectiveC()();

LABEL_6:
  v17.receiver = v7;
  v17.super_class = type metadata accessor for LiveVoicemailWelcomeViewController();
  v15 = objc_msgSendSuper2(&v17, "initWithTitle:detailText:symbolName:contentLayout:", v12, v13, v14, a7);

  return v15;
}

id LiveVoicemailWelcomeViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id LiveVoicemailWelcomeViewController.init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController_delegate] = 0;
  *&v6[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController____lazy_storage___continueButton] = 0;
  *&v6[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController____lazy_storage___settingsButton] = 0;
  *&v6[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController____lazy_storage___liveVoicemailOnboardingImageView] = 0;
  v10 = &v6[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController____lazy_storage___onboardingImageAssetName];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v6[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController_contentViewHeightConstraint] = 0;
  v11 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v6;
  v15.super_class = type metadata accessor for LiveVoicemailWelcomeViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithTitle:detailText:icon:contentLayout:", v11, v12, a5, a6);

  return v13;
}

id LiveVoicemailWelcomeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveVoicemailWelcomeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *specialized LiveVoicemailWelcomeViewController.__allocating_init(delegate:)(uint64_t a1, Class a2)
{
  v3 = objc_allocWithZone(a2);

  return specialized LiveVoicemailWelcomeViewController.init(delegate:)(a1, v3);
}

char *specialized LiveVoicemailWelcomeViewController.init(delegate:)(uint64_t a1, void *a2)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v18._object = 0xE000000000000000;
  v6._object = 0x8000000100243B50;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  v7.value._countAndFlagsBits = 0x6D6563696F56504DLL;
  v7.value._object = 0xEB000000006C6961;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v18);

  v9 = String._bridgeToObjectiveC()();

  v10 = [v4 bundleForClass:ObjCClassFromMetadata];
  v19._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000024;
  v11._object = 0x8000000100243B70;
  v12.value._countAndFlagsBits = 0x6D6563696F56504DLL;
  v12.value._object = 0xEB000000006C6961;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v19);

  v14 = String._bridgeToObjectiveC()();

  v15 = [a2 initWithTitle:v9 detailText:v14 icon:0 contentLayout:1];

  *&v15[OBJC_IVAR____TtC11MobilePhone34LiveVoicemailWelcomeViewController_delegate] = a1;
  swift_unknownObjectRelease();
  return v15;
}

uint64_t specialized static LiveVoicemailWelcomeViewController.shouldShowVoicemailOnboarding.getter()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = specialized Defaults.getValueFromUserDefaults<A>(key:suiteName:)(0xD00000000000001BLL, 0x8000000100240610, v0, v1);

  if (v2 == 2 || (v2) && (v3 = [objc_allocWithZone(TUFeatureFlags) init], v4 = objc_msgSend(v3, "lvmExpansionLiveOnEnabled"), v3, v4))
  {
    return TUCurrentLocaleEligibleForCallScreeningOnboarding();
  }

  else
  {
    return 0;
  }
}

id PhoneRecentsViewController.startSearching(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v5[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchCompletion];
  swift_beginAccess();
  v16 = *v15;
  *v15 = a3;
  v15[1] = a4;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a3, a4);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v16);
  if ([v5 isViewLoaded])
  {
    result = [v5 view];
    if (!result)
    {
      __break(1u);
      goto LABEL_10;
    }

    v18 = result;
    v19 = [result window];

    if (v19)
    {

      v20 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
      result = swift_beginAccess();
      v21 = *&v5[v20];
      if (v21)
      {
        v22 = v21;
        v23 = RecentsViewController.navigationItem.getter();

        v24 = [v23 searchController];
        if (v24)
        {

          type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v25 = static OS_dispatch_queue.main.getter();
          v26 = swift_allocObject();
          v27 = v35;
          v26[2] = v5;
          v26[3] = v27;
          v26[4] = a2;
          aBlock[4] = partial apply for closure #1 in PhoneRecentsViewController.startSearching(for:completion:);
          aBlock[5] = v26;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_5;
          v28 = _Block_copy(aBlock);

          v29 = v5;
          static DispatchQoS.unspecified.getter();
          aBlock[9] = _swiftEmptyArrayStorage;
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v28);

          (*(v34 + 8))(v11, v9);
          (*(v32 + 8))(v14, v33);
        }

        goto LABEL_7;
      }

LABEL_10:
      __break(1u);
      return result;
    }
  }

LABEL_7:
  v30 = &v5[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchText];
  swift_beginAccess();
  *v30 = v35;
  *(v30 + 1) = a2;

  v31 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchControllerActivation;
  result = swift_beginAccess();
  v5[v31] = 1;
  return result;
}

void closure #1 in PhoneRecentsViewController.startSearching(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = PhoneRecentsViewController.searchController.getter();
  v7 = [v6 isActive];

  if (v7)
  {
    v8 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchController;
    v9 = [*(a1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchController) searchBar];
    v10 = a1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchText;
    swift_beginAccess();
    if (*(v10 + 8))
    {

      v11 = String._bridgeToObjectiveC()();
    }

    else
    {
      v11 = 0;
    }

    [v9 setText:v11];

    v13 = [*(a1 + v8) searchResultsUpdater];
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + v8);
      [v14 updateSearchResultsForSearchController:v15];

      swift_unknownObjectRelease();
    }

    v16 = (a1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchCompletion);
    swift_beginAccess();
    v17 = *v16;
    if (*v16)
    {

      v17(v18);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v17);
      v19 = *v16;
    }

    else
    {
      v19 = 0;
    }

    *v16 = 0;
    v16[1] = 0;
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v19);
  }

  else
  {
    v12 = (a1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchText);
    swift_beginAccess();
    *v12 = a2;
    v12[1] = a3;

    [*(a1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchController) setActive:1];
  }

  v20 = [*(a1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchController) searchBar];
  [v20 becomeFirstResponder];
}

uint64_t sub_10010E618()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

Swift::Void __swiftcall PhoneRecentsViewController.activateSearchIfNeeded()()
{
  v1 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchControllerActivation;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    *(v0 + v1) = 0;
    v2 = (v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchText);
    swift_beginAccess();
    v4 = *v2;
    v3 = v2[1];
    v5 = (v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchCompletion);
    swift_beginAccess();
    v7 = *v5;
    v6 = v5[1];

    outlined copy of (@escaping @callee_guaranteed () -> ())?(v7, v6);
    PhoneRecentsViewController.startSearching(for:completion:)(v4, v3, v7, v6);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
  }
}

Swift::Void __swiftcall PhoneRecentsViewController.showDetailsForCall(uniqueID:searchText:)(Swift::String uniqueID, Swift::String searchText)
{
  object = searchText._object;
  countAndFlagsBits = searchText._countAndFlagsBits;
  v4 = uniqueID._object;
  v5 = uniqueID._countAndFlagsBits;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v4;

  PhoneRecentsViewController.startSearching(for:completion:)(countAndFlagsBits, object, partial apply for closure #1 in PhoneRecentsViewController.showDetailsForCall(uniqueID:searchText:), v7);
}

uint64_t sub_10010E9D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void closure #1 in PhoneRecentsViewController.showDetailsForCall(uniqueID:searchText:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  v39 = v5;
  v40 = v3;
  v10 = PhoneRecentsViewController.searchResultsController.getter();
  MPSearchViewController.loadSearchControllersIfNeeded()();

  v11 = [objc_allocWithZone(CHManager) init];
  v12 = objc_opt_self();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 predicateForCallsWithUniqueID:v13];

  v15 = [v11 callsWithPredicate:v14 limit:1 offset:0 batchSize:0];
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_33:

    return;
  }

LABEL_32:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_33;
  }

LABEL_4:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_37;
    }

    v17 = *(v16 + 32);
  }

  v36 = v17;
  v38 = v0;

  v18 = [*&v9[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchResultsController] searchControllers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18MPSearchController_pMd);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  aBlock[0] = _swiftEmptyArrayStorage;
  v0 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v9;
  v35 = v4;
  v37 = v1;
  v16 = _swiftEmptyArrayStorage;
  if (v20)
  {
    v4 = 0;
    v1 = v19 & 0xC000000000000001;
    do
    {
      v9 = v7;
      v7 = v4;
      while (1)
      {
        if (v1)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v4 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v7 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          swift_unknownObjectRetain();
          v4 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }
        }

        type metadata accessor for CallsSearchController();
        if (swift_dynamicCastClass())
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v7;
        if (v4 == v20)
        {
          v7 = v9;
          goto LABEL_24;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16 = aBlock[0];
      v7 = v9;
    }

    while (v4 != v20);
  }

LABEL_24:

  if (v16 >> 62)
  {
LABEL_37:
    v33 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v37;
    v21 = v38;
    v23 = v41;
    if (v33)
    {
      goto LABEL_26;
    }

LABEL_38:

    return;
  }

  v22 = v37;
  v21 = v38;
  v23 = v41;
  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_38;
  }

LABEL_26:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_29;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v16 + 32);
LABEL_29:
    v25 = v24;

    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v26 = static OS_dispatch_queue.main.getter();
    v27 = swift_allocObject();
    v28 = v36;
    *(v27 + 16) = v25;
    *(v27 + 24) = v28;
    aBlock[4] = partial apply for closure #2 in closure #1 in PhoneRecentsViewController.showDetailsForCall(uniqueID:searchText:);
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_20;
    v29 = _Block_copy(aBlock);
    v30 = v25;
    v31 = v28;
    static DispatchQoS.unspecified.getter();
    v42 = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v32 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v29);
    (*(v22 + 8))(v32, v21);
    (*(v39 + 8))(v7, v35);

    return;
  }

  __break(1u);
}

Swift::Void __swiftcall PhoneRecentsViewController.didSelectSuggestedSearch(token:)(UISearchToken token)
{
  v2 = type metadata accessor for AttributedString();
  __chkstk_darwin(v2 - 8);
  if ([(objc_class *)token.super.isa representedObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v17, &v18);
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CSSuggestion);
    swift_dynamicCast();
    v3 = PhoneRecentsViewController.searchController.getter();
    v4 = [v3 searchBar];

    v5 = [v4 searchTextField];
    v6 = [v16 currentToken];
    if (v6 && (v7 = v6, v8 = [v6 tokenKind], v7, !v8))
    {
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSAttributedString);
      v14 = v5;
      CSSuggestion.localizedAttributedSuggestion.getter();
      v15 = NSAttributedString.init(_:)();
      v13 = [v15 string];

      if (!v13)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = String._bridgeToObjectiveC()();
      }
    }

    else
    {
      v9 = [v5 tokens];
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UISearchToken);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v10 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      [v5 insertToken:token.super.isa atIndex:v11];
      v12 = v5;
      v13 = String._bridgeToObjectiveC()();
    }

    [v5 setText:v13];
  }

  else
  {
    __break(1u);
  }
}

UIEdgeInsets __swiftcall SearchTabViewController.separatorInset(forContentSizeCategory:isEditing:)(__C::UIContentSizeCategory forContentSizeCategory, Swift::Bool isEditing)
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

Swift::Void __swiftcall PhoneRecentsViewController.searchControllerBeginDragging()()
{
  v0 = PhoneRecentsViewController.searchController.getter();
  v1 = [v0 searchBar];

  [v1 resignFirstResponder];
}

Swift::Void __swiftcall SearchTabViewController.willPresentSearchController(_:)(UISearchController a1)
{
  [(objc_class *)a1.super.super.super.isa setShowsSearchResultsController:1];
  type metadata accessor for TPTipsHelper();
  dispatch thunk of static TPTipsHelper.donateEventSearchedCallHistory()();
}

Swift::Void __swiftcall PhoneRecentsViewController.didPresentSearchController(_:)(UISearchController a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchText);
  swift_beginAccess();
  if (v3[1])
  {

    v4 = [(objc_class *)a1.super.super.super.isa searchBar];
    v5 = String._bridgeToObjectiveC()();

    [v4 setText:v5];

    *v3 = 0;
    v3[1] = 0;
  }

  v6 = (v1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchCompletion);
  swift_beginAccess();
  v7 = *v6;
  if (*v6)
  {

    v7(v8);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
    v9 = *v6;
  }

  else
  {
    v9 = 0;
  }

  *v6 = 0;
  v6[1] = 0;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v9);
  v10 = [objc_opt_self() shared];
  [v10 logSearchBarTap];
}

uint64_t objectdestroy_5Tm()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10010F854()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010F88C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t PHCarPlayVoicemailTableViewCell.voicemailMessage.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PHCarPlayVoicemailTableViewCell_voicemailMessage;
  swift_beginAccess();
  *&v1[v3] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v1 setNeedsUpdateConfiguration];
  return swift_unknownObjectRelease();
}

uint64_t PHCarPlayVoicemailTableViewCell.restrictedMessage.getter()
{
  v1 = OBJC_IVAR___PHCarPlayVoicemailTableViewCell_restrictedMessage;
  swift_beginAccess();
  return *(v0 + v1);
}

id PHCarPlayVoicemailTableViewCell.restrictedMessage.setter(char a1)
{
  v3 = OBJC_IVAR___PHCarPlayVoicemailTableViewCell_restrictedMessage;
  swift_beginAccess();
  v1[v3] = a1;
  return [v1 setNeedsUpdateConfiguration];
}

id @objc PHCarPlayVoicemailTableViewCell.nameString.getter()
{
  swift_beginAccess();

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t PHCarPlayVoicemailTableViewCell.nameString.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

void @objc PHCarPlayVoicemailTableViewCell.nameString.setter(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = &a1[*a4];
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
  v10 = a1;

  [v10 setNeedsUpdateConfiguration];
}

id PHCarPlayVoicemailTableViewCell.nameString.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[*a3];
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 1) = a2;

  return [v3 setNeedsUpdateConfiguration];
}

uint64_t PHCarPlayVoicemailTableViewCell.localizedSenderIdentityTitle.getter()
{
  v1 = (v0 + OBJC_IVAR___PHCarPlayVoicemailTableViewCell_localizedSenderIdentityTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id PHCarPlayVoicemailTableViewCell.localizedSenderIdentityTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___PHCarPlayVoicemailTableViewCell_localizedSenderIdentityTitle];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  return [v2 setNeedsUpdateConfiguration];
}

uint64_t PHCarPlayVoicemailTableViewCell.updateConfiguration(using:)(uint64_t a1)
{
  v3 = type metadata accessor for UIBackgroundConfiguration();
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UIHostingConfigurationVyAA6HStackVyAA9TupleViewVyAA19_ConditionalContentVyAIyAA08ModifiedI0VyAKyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameN0VGAA023AccessibilityAttachmentQ0VGA0_GAKyAA6SpacerVAA05_FlexsN0VGG_AA6VStackVyAGyAKyAKyAA4TextVAA022_EnvironmentKeyWritingQ0VySiSgGGA_G_AEyAGy014CommunicationsB005BadgeG0VSg_AKyAKyA11_AA16_BlendModeEffectVGA15_GtGGtGGA3_AKyAKyA16_A23_GA_GtGGAA05EmptyG0VGMd);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = UICellConfigurationState.isFocused.getter();
  v24 = v5;
  if (v12 & 1) != 0 || (UICellConfigurationState.isSelected.getter())
  {
    v13 = 1;
  }

  else
  {
    v13 = UICellConfigurationState.isHighlighted.getter();
  }

  v14 = __chkstk_darwin(v13);
  *(&v22 - 4) = v1;
  *(&v22 - 24) = v14 & 1;
  *(&v22 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA19_ConditionalContentVyAGyAA08ModifiedG0VyAIyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameL0VGAA023AccessibilityAttachmentO0VGAZGAIyAA6SpacerVAA05_FlexqL0VGG_AA6VStackVyAEyAIyAIyAA4TextVAA022_EnvironmentKeyWritingO0VySiSgGGAYG_ACyAEy014CommunicationsB005BadgeE0VSg_AIyAIyA9_AA16_BlendModeEffectVGA13_GtGGtGGA1_AIyAIyA14_A21_GAYGtGGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>>, ModifiedContent<Spacer, _FlexFrameLayout>>, VStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, AccessibilityAttachmentModifier>, HStack<TupleView<(BadgeView?, ModifiedContent<ModifiedContent<Text, _BlendModeEffect>, _EnvironmentKeyWritingModifier<Int?>>)>>)>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _BlendModeEffect>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA19_ConditionalContentVyAGyAA08ModifiedG0VyAIyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameL0VGAA023AccessibilityAttachmentO0VGAZGAIyAA6SpacerVAA05_FlexqL0VGG_AA6VStackVyAEyAIyAIyAA4TextVAA022_EnvironmentKeyWritingO0VySiSgGGAYG_ACyAEy014CommunicationsB005BadgeE0VSg_AIyAIyA9_AA16_BlendModeEffectVGA13_GtGGtGGA1_AIyAIyA14_A21_GAYGtGGMd);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v27[3] = v8;
  v27[4] = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type UIHostingConfiguration<HStack<TupleView<(_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>>, ModifiedContent<Spacer, _FlexFrameLayout>>, VStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, AccessibilityAttachmentModifier>, HStack<TupleView<(BadgeView?, ModifiedContent<ModifiedContent<Text, _BlendModeEffect>, _EnvironmentKeyWritingModifier<Int?>>)>>)>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _BlendModeEffect>, AccessibilityAttachmentModifier>)>>, EmptyView> and conformance UIHostingConfiguration<A, B>, &_s7SwiftUI22UIHostingConfigurationVyAA6HStackVyAA9TupleViewVyAA19_ConditionalContentVyAIyAA08ModifiedI0VyAKyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameN0VGAA023AccessibilityAttachmentQ0VGA0_GAKyAA6SpacerVAA05_FlexsN0VGG_AA6VStackVyAGyAKyAKyAA4TextVAA022_EnvironmentKeyWritingQ0VySiSgGGA_G_AEyAGy014CommunicationsB005BadgeG0VSg_AKyAKyA11_AA16_BlendModeEffectVGA15_GtGGtGGA3_AKyAKyA16_A23_GA_GtGGAA05EmptyG0VGMd);
  __swift_allocate_boxed_opaque_existential_1(v27);
  UIHostingConfiguration.margins(_:_:)();
  (*(v9 + 8))(v11, v8);
  UITableViewCell.contentConfiguration.setter();
  [v1 setAccessoryType:1];
  v15 = v24;
  static UIBackgroundConfiguration.clear()();
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    v16 = &selRef_dynamicCarFocusedColor;
  }

  else
  {
    v16 = &selRef_clearColor;
  }

  v17 = [objc_opt_self() *v16];
  UIBackgroundConfiguration.backgroundColor.setter();
  UIBackgroundConfiguration.cornerRadius.setter();
  v19 = v25;
  v18 = v26;
  v20 = v23;
  (*(v25 + 32))(v23, v15, v26);
  (*(v19 + 56))(v20, 0, 1, v18);
  return UITableViewCell.backgroundConfiguration.setter();
}

id closure #1 in PHCarPlayVoicemailTableViewCell.updateConfiguration(using:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0x4020000000000000;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAKyAA08ModifiedJ0VyAMyAMyAMyAA5ImageVAA012_AspectRatioG0VGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameG0VGAA023AccessibilityAttachmentQ0VGA2_GAMyAA6SpacerVAA05_FlexsG0VGG_AA6VStackVyAIyAMyAMyAA4TextVAA022_EnvironmentKeyWritingQ0VySiSgGGA1_G_AA0F0VyAIy014CommunicationsB005BadgeD0VSg_AMyAMyA13_AA16_BlendModeEffectVGA17_GtGGtGGA5_AMyAMyA18_A27_GA1_GtGGMd);
  return closure #1 in closure #1 in PHCarPlayVoicemailTableViewCell.updateConfiguration(using:)(a1, a2, a3, a4 + *(v8 + 44));
}

id closure #1 in closure #1 in PHCarPlayVoicemailTableViewCell.updateConfiguration(using:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v115 = a3;
  LODWORD(v113) = a2;
  v112 = a4;
  v5 = type metadata accessor for Date();
  v104 = *(v5 - 8);
  v105 = v5;
  __chkstk_darwin(v5);
  v103 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGMd);
  __chkstk_darwin(v108);
  v107 = &v97 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGMd);
  v9 = __chkstk_darwin(v8 - 8);
  v111 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v109 = &v97 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentL0VG_AA6HStackVyAEy014CommunicationsB005BadgeE0VSg_AGyAGyAiA16_BlendModeEffectVGAMGtGGtGGMd);
  v13 = __chkstk_darwin(v12 - 8);
  v110 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v116 = (&v97 - v15);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameJ0VGAA023AccessibilityAttachmentM0VGAXGAGyAA6SpacerVAA05_FlexoJ0VG_GMd);
  __chkstk_darwin(v100);
  v17 = &v97 - v16;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameJ0VGAA023AccessibilityAttachmentM0VGAX_GMd);
  __chkstk_darwin(v98);
  v19 = &v97 - v18;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameI0VGAA023AccessibilityAttachmentL0VGAVGMd);
  __chkstk_darwin(v101);
  v99 = &v97 - v20;
  v21 = type metadata accessor for Image.ResizingMode();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameH0VGAA023AccessibilityAttachmentK0VGMd);
  v26 = __chkstk_darwin(v25);
  v28 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v97 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameI0VGAA023AccessibilityAttachmentL0VGAVGAEyAA6SpacerVAA05_FlexnI0VGGMd);
  v32 = __chkstk_darwin(v31 - 8);
  v106 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v114 = &v97 - v34;
  v35 = [a1 restrictedMessage];
  v102 = a1;
  if (v35)
  {
    v36 = [objc_opt_self() tpImageForSymbolType:42 pointSize:12.0];
    v37 = [v36 imageWithRenderingMode:2];

    Image.init(uiImage:)();
    (*(v22 + 104))(v24, enum case for Image.ResizingMode.stretch(_:), v21);
    v38 = Image.resizable(capInsets:resizingMode:)();

    (*(v22 + 8))(v24, v21);
    if (v113)
    {
      v39 = [objc_opt_self() dynamicCarFocusedLabelColor];
      v40 = Color.init(uiColor:)();
    }

    else
    {
      v40 = static Color.primary.getter();
    }

    v45 = v40;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v123 = 1;
    v118 = v38;
    LOWORD(v119) = 1;
    *(&v119 + 1) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    View.accessibilityIdentifier(_:)();
    v126 = v120;
    v127 = v121;
    v128 = v122;
    v124 = v118;
    v125 = v119;
    outlined destroy of (NSAttributedStringKey, Any)(&v124, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameH0VGMd);
    outlined init with copy of Binding<EditMode>?(v30, v19, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameH0VGAA023AccessibilityAttachmentK0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v46 = v99;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of Binding<EditMode>?(v46, v17, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameI0VGAA023AccessibilityAttachmentL0VGAVGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Spacer, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of (NSAttributedStringKey, Any)(v46, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameI0VGAA023AccessibilityAttachmentL0VGAVGMd);
    outlined destroy of (NSAttributedStringKey, Any)(v30, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameH0VGAA023AccessibilityAttachmentK0VGMd);
    goto LABEL_8;
  }

  v41 = [objc_msgSend(a1 "voicemailMessage")];
  swift_unknownObjectRelease();
  if (v41)
  {
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *(&v117[4] + 7) = v128;
    *(&v117[3] + 7) = v127;
    *(&v117[6] + 7) = v130;
    *(&v117[5] + 7) = v129;
    *(&v117[1] + 7) = v125;
    *(v117 + 7) = v124;
    *(&v117[2] + 7) = v126;
    v42 = v117[5];
    *(v17 + 73) = v117[4];
    *(v17 + 89) = v42;
    *(v17 + 105) = v117[6];
    v43 = v117[1];
    *(v17 + 9) = v117[0];
    *(v17 + 25) = v43;
    v44 = v117[3];
    *(v17 + 41) = v117[2];
    LOBYTE(v118) = 0;
    *v17 = 0x4020000000000000;
    v17[8] = 0;
    *(v17 + 15) = *(&v117[6] + 15);
    *(v17 + 57) = v44;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Spacer, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
LABEL_8:
    v47 = v113;
    goto LABEL_13;
  }

  result = UIImageGetUnreadIndicator();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v49 = result;
  v50 = [result imageWithRenderingMode:2];

  Image.init(uiImage:)();
  (*(v22 + 104))(v24, enum case for Image.ResizingMode.stretch(_:), v21);
  v51 = Image.resizable(capInsets:resizingMode:)();

  (*(v22 + 8))(v24, v21);
  v52 = objc_opt_self();
  v53 = &selRef_dynamicCarFocusedLabelColor;
  if ((v113 & 1) == 0)
  {
    v53 = &selRef_systemBlueColor;
  }

  v54 = [v52 *v53];
  v55 = Color.init(uiColor:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v123 = 1;
  v118 = v51;
  LOWORD(v119) = 1;
  *(&v119 + 1) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameH0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  View.accessibilityIdentifier(_:)();
  v126 = v120;
  v127 = v121;
  v128 = v122;
  v124 = v118;
  v125 = v119;
  outlined destroy of (NSAttributedStringKey, Any)(&v124, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameH0VGMd);
  outlined init with copy of Binding<EditMode>?(v28, v19, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameH0VGAA023AccessibilityAttachmentK0VGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v56 = v99;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of Binding<EditMode>?(v56, v17, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameI0VGAA023AccessibilityAttachmentL0VGAVGMd);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMd);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<Spacer, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v47 = v113;
  outlined destroy of (NSAttributedStringKey, Any)(v56, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameI0VGAA023AccessibilityAttachmentL0VGAVGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v28, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameH0VGAA023AccessibilityAttachmentK0VGMd);
LABEL_13:
  v57 = static HorizontalAlignment.leading.getter();
  v58 = v116;
  *v116 = v57;
  v58[1] = 0;
  *(v58 + 16) = 0;
  v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentO0VG_AA6HStackVyAIy014CommunicationsB005BadgeD0VSg_AKyAKyAmA16_BlendModeEffectVGAQGtGGtGGMd) + 44);
  v60 = v102;
  closure #1 in closure #1 in closure #1 in PHCarPlayVoicemailTableViewCell.updateConfiguration(using:)(v102, v47 & 1, v115, v59);
  v61 = [objc_msgSend(v60 "voicemailMessage")];
  swift_unknownObjectRelease();
  v62 = v103;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = specialized static CarPlayUtilities.localizedDateString(for:)();
  v65 = v64;
  (*(v104 + 8))(v62, v105);
  *&v118 = v63;
  *(&v118 + 1) = v65;
  lazy protocol witness table accessor for type String and conformance String();
  v66 = Text.init<A>(_:)();
  v68 = v67;
  v70 = v69;
  static Font.caption.getter();
  v71 = Text.font(_:)();
  v73 = v72;
  v75 = v74;
  v113 = v76;

  outlined consume of Text.Storage(v66, v68, v70 & 1);

  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    v77 = [objc_opt_self() dynamicCarFocusedPrimaryLabelColor];
    v78 = Color.init(uiColor:)();
  }

  else
  {
    v78 = static Color.secondary.getter();
  }

  *&v118 = v78;
  v79 = Text.foregroundStyle<A>(_:)();
  v81 = v80;
  v83 = v82;
  v85 = v84;
  outlined consume of Text.Storage(v71, v73, v75 & 1);

  KeyPath = swift_getKeyPath();
  v87 = v107;
  UICellConfigurationState.secondaryBlendMode.getter(&v107[*(v108 + 36)]);
  *v87 = v79;
  *(v87 + 8) = v81;
  *(v87 + 16) = v83 & 1;
  *(v87 + 24) = v85;
  *(v87 + 32) = KeyPath;
  *(v87 + 40) = 1;
  *(v87 + 48) = 0;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
  v88 = v109;
  View.accessibilityIdentifier(_:)();
  outlined destroy of (NSAttributedStringKey, Any)(v87, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGMd);
  v89 = v114;
  v90 = v106;
  outlined init with copy of Binding<EditMode>?(v114, v106, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameI0VGAA023AccessibilityAttachmentL0VGAVGAEyAA6SpacerVAA05_FlexnI0VGGMd);
  v91 = v116;
  v92 = v110;
  outlined init with copy of Binding<EditMode>?(v116, v110, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentL0VG_AA6HStackVyAEy014CommunicationsB005BadgeE0VSg_AGyAGyAiA16_BlendModeEffectVGAMGtGGtGGMd);
  v93 = v111;
  outlined init with copy of Binding<EditMode>?(v88, v111, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGMd);
  v94 = v112;
  outlined init with copy of Binding<EditMode>?(v90, v112, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameI0VGAA023AccessibilityAttachmentL0VGAVGAEyAA6SpacerVAA05_FlexnI0VGGMd);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameI0VGAA023AccessibilityAttachmentL0VGAVGAEyAA6SpacerVAA05_FlexnI0VGG_AA6VStackVyAA9TupleViewVyAEyAEyAA4TextVAA022_EnvironmentKeyWritingL0VySiSgGGAUG_AA6HStackVyA5_y014CommunicationsB005BadgeU0VSg_AEyAEyA7_AA16_BlendModeEffectVGA11_GtGGtGGAyEyAEyA12_A21_GAUGtMd);
  outlined init with copy of Binding<EditMode>?(v92, v94 + v95[12], &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentL0VG_AA6HStackVyAEy014CommunicationsB005BadgeE0VSg_AGyAGyAiA16_BlendModeEffectVGAMGtGGtGGMd);
  v96 = v94 + v95[16];
  *v96 = 0x4028000000000000;
  *(v96 + 8) = 0;
  outlined init with copy of Binding<EditMode>?(v93, v94 + v95[20], &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v88, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v91, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentL0VG_AA6HStackVyAEy014CommunicationsB005BadgeE0VSg_AGyAGyAiA16_BlendModeEffectVGAMGtGGtGGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v89, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameI0VGAA023AccessibilityAttachmentL0VGAVGAEyAA6SpacerVAA05_FlexnI0VGGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v93, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v92, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentL0VG_AA6HStackVyAEy014CommunicationsB005BadgeE0VSg_AGyAGyAiA16_BlendModeEffectVGAMGtGGtGGMd);
  return outlined destroy of (NSAttributedStringKey, Any)(v90, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameI0VGAA023AccessibilityAttachmentL0VGAVGAEyAA6SpacerVAA05_FlexnI0VGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in PHCarPlayVoicemailTableViewCell.updateConfiguration(using:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a3;
  v64 = a2;
  v76 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVy014CommunicationsB005BadgeE0VSg_AA15ModifiedContentVyAKyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGtGGMd);
  v6 = __chkstk_darwin(v5 - 8);
  v77 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v63[-v8];
  v10 = type metadata accessor for AccessibilityTraits();
  v70 = *(v10 - 8);
  v71 = v10;
  __chkstk_darwin(v10);
  v69 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGMd);
  v12 = __chkstk_darwin(v68);
  v73 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v66 = &v63[-v15];
  v16 = __chkstk_darwin(v14);
  v67 = &v63[-v17];
  __chkstk_darwin(v16);
  v72 = &v63[-v18];
  v74 = a1;
  v19 = [a1 nameString];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v78 = v20;
  v79 = v22;
  v65 = lazy protocol witness table accessor for type String and conformance String();
  v23 = Text.init<A>(_:)();
  v25 = v24;
  LOBYTE(v22) = v26;
  static Font.callout.getter();
  v27 = Text.font(_:)();
  v29 = v28;
  v31 = v30;

  outlined consume of Text.Storage(v23, v25, v22 & 1);

  static Font.Weight.medium.getter();
  v32 = Text.fontWeight(_:)();
  v34 = v33;
  v36 = v35;
  outlined consume of Text.Storage(v27, v29, v31 & 1);

  if (v64)
  {
    v37 = [objc_opt_self() dynamicCarFocusedLabelColor];
    v38 = Color.init(uiColor:)();
  }

  else
  {
    v38 = static Color.primary.getter();
  }

  v78 = v38;
  v39 = Text.foregroundStyle<A>(_:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  outlined consume of Text.Storage(v32, v34, v36 & 1);

  KeyPath = swift_getKeyPath();
  v78 = v39;
  v79 = v41;
  v47 = v43 & 1;
  v80 = v43 & 1;
  v81 = v45;
  v82 = KeyPath;
  v83 = 2;
  v84 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
  v48 = v66;
  View.accessibilityIdentifier(_:)();
  outlined consume of Text.Storage(v39, v41, v47);

  v49 = v74;
  v50 = [v74 nameString];
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  v78 = v51;
  v79 = v53;
  v54 = v67;
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  outlined destroy of (NSAttributedStringKey, Any)(v48, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGMd);
  v55 = v69;
  static AccessibilityTraits.isButton.getter();
  v56 = v72;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v70 + 8))(v55, v71);
  outlined destroy of (NSAttributedStringKey, Any)(v54, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGMd);
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0Vy014CommunicationsB005BadgeD0VSg_AA15ModifiedContentVyAOyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGtGGMd);
  closure #1 in closure #1 in closure #1 in closure #1 in PHCarPlayVoicemailTableViewCell.updateConfiguration(using:)(v49, v75, &v9[*(v57 + 44)]);
  v58 = v73;
  outlined init with copy of Binding<EditMode>?(v56, v73, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGMd);
  v59 = v77;
  outlined init with copy of Binding<EditMode>?(v9, v77, &_s7SwiftUI6HStackVyAA9TupleViewVy014CommunicationsB005BadgeE0VSg_AA15ModifiedContentVyAKyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGtGGMd);
  v60 = v76;
  outlined init with copy of Binding<EditMode>?(v58, v76, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGMd);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VG_AA6HStackVyAA9TupleViewVy014CommunicationsB005BadgeN0VSg_ACyACyAeA16_BlendModeEffectVGAIGtGGtMd);
  outlined init with copy of Binding<EditMode>?(v59, v60 + *(v61 + 48), &_s7SwiftUI6HStackVyAA9TupleViewVy014CommunicationsB005BadgeE0VSg_AA15ModifiedContentVyAKyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGtGGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v9, &_s7SwiftUI6HStackVyAA9TupleViewVy014CommunicationsB005BadgeE0VSg_AA15ModifiedContentVyAKyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGtGGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v56, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v59, &_s7SwiftUI6HStackVyAA9TupleViewVy014CommunicationsB005BadgeE0VSg_AA15ModifiedContentVyAKyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGtGGMd);
  return outlined destroy of (NSAttributedStringKey, Any)(v58, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in PHCarPlayVoicemailTableViewCell.updateConfiguration(using:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v71 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_BlendModeEffectVGMd);
  __chkstk_darwin(v65);
  v5 = &v62 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  v6 = __chkstk_darwin(v66);
  v69 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v64 = &v62 - v9;
  __chkstk_darwin(v8);
  v68 = &v62 - v10;
  v11 = type metadata accessor for BadgeView();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI9BadgeViewVSgMd);
  v16 = __chkstk_darwin(v15 - 8);
  v67 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v62 - v18;
  v20 = [a1 localizedSenderIdentityTitle];
  v63 = v19;
  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = v20;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_7:
    (*(v12 + 56))(v19, 1, 1, v11);
    goto LABEL_8;
  }

  v26 = objc_opt_self();
  v27 = [v26 dynamicBackgroundColor];
  Color.init(uiColor:)();
  v28 = [v26 dynamicCarPrimaryColor];
  Color.init(uiColor:)();
  BadgeView.init(text:foregroundColor:backgroundColor:)();
  (*(v12 + 32))(v19, v14, v11);
  (*(v12 + 56))(v19, 0, 1, v11);
LABEL_8:
  v29 = [a1 subtitle];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v72 = v30;
  v73 = v32;
  lazy protocol witness table accessor for type String and conformance String();
  v33 = Text.init<A>(_:)();
  v35 = v34;
  v37 = v36;
  static Font.caption.getter();
  v38 = Text.font(_:)();
  v40 = v39;
  v42 = v41;

  outlined consume of Text.Storage(v33, v35, v37 & 1);

  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    v43 = [objc_opt_self() dynamicCarFocusedPrimaryLabelColor];
    v44 = Color.init(uiColor:)();
  }

  else
  {
    v44 = static Color.secondary.getter();
  }

  v72 = v44;
  v45 = Text.foregroundStyle<A>(_:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  outlined consume of Text.Storage(v38, v40, v42 & 1);

  UICellConfigurationState.secondaryBlendMode.getter(&v5[*(v65 + 36)]);
  *v5 = v45;
  *(v5 + 1) = v47;
  v5[16] = v49 & 1;
  *(v5 + 3) = v51;
  KeyPath = swift_getKeyPath();
  v53 = v64;
  outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v5, v64, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_BlendModeEffectVGMd);
  v54 = v53 + *(v66 + 36);
  *v54 = KeyPath;
  *(v54 + 8) = 1;
  *(v54 + 16) = 0;
  v55 = v68;
  outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v53, v68, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  v56 = v63;
  v57 = v67;
  outlined init with copy of Binding<EditMode>?(v63, v67, &_s16CommunicationsUI9BadgeViewVSgMd);
  v58 = v69;
  outlined init with copy of Binding<EditMode>?(v55, v69, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  v59 = v70;
  outlined init with copy of Binding<EditMode>?(v57, v70, &_s16CommunicationsUI9BadgeViewVSgMd);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI9BadgeViewVSg_05SwiftB015ModifiedContentVyAGyAE4TextVAE16_BlendModeEffectVGAE30_EnvironmentKeyWritingModifierVySiSgGGtMd);
  outlined init with copy of Binding<EditMode>?(v58, v59 + *(v60 + 48), &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v55, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v56, &_s16CommunicationsUI9BadgeViewVSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v58, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  return outlined destroy of (NSAttributedStringKey, Any)(v57, &_s16CommunicationsUI9BadgeViewVSgMd);
}

id sub_100111F78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 voicemailMessage];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for PHCarPlayVoicemailTableViewCell()
{
  result = lazy cache variable for type metadata for PHCarPlayVoicemailTableViewCell;
  if (!lazy cache variable for type metadata for PHCarPlayVoicemailTableViewCell)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PHCarPlayVoicemailTableViewCell);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameH0VGAA023AccessibilityAttachmentK0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameI0VGAA023AccessibilityAttachmentL0VGAVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _ForegroundStyleModifier<Color>>, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Spacer, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t *NSNotificationName.inCallOrientationMonitorEvent.unsafeMutableAddressor()
{
  if (one-time initialization token for inCallOrientationMonitorEvent != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.inCallOrientationMonitorEvent;
}

id OrientationMonitorKeys.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrientationMonitorKeys();
  return objc_msgSendSuper2(&v2, "init");
}

id OrientationMonitorKeys.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrientationMonitorKeys();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString one-time initialization function for inCallOrientationMonitorEvent()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.inCallOrientationMonitorEvent = result;
  return result;
}

id static NSNotificationName.inCallOrientationMonitorEvent.getter()
{
  if (one-time initialization token for inCallOrientationMonitorEvent != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.inCallOrientationMonitorEvent;

  return v1;
}

uint64_t LegacyVoicemailCellView.init(voicemail:showLabel:onCallTapped:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  v6 = *(type metadata accessor for LegacyVoicemailCellView() + 28);
  *(a5 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for LegacyVoicemailCellView()
{
  result = type metadata singleton initialization cache for LegacyVoicemailCellView;
  if (!type metadata singleton initialization cache for LegacyVoicemailCellView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegacyVoicemailCellView.onCallTapped.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t LegacyVoicemailCellView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4026000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA6CircleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA06_FrameG0VGAA14_OpacityEffectVG_AA6VStackVyAIyAA4TextV_A1_SgtGGAA6SpacerVAA0D0PAAE06buttonM0yQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0X0VyAKyAKyAKyA1_AA08_PaddingG0VGA14_GAA026_InsettableBackgroundShapeN0VyAqA7CapsuleVGGG_AA05PlainxM0VQo_tGGMd);
  return closure #1 in LegacyVoicemailCellView.body.getter(v1, a1 + *(v3 + 44));
}

uint64_t closure #1 in LegacyVoicemailCellView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlainButtonStyle();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LegacyVoicemailCellView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA14_PaddingLayoutVGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA7CapsuleVGGGMd);
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v12 = &v39 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAA4TextVAA14_PaddingLayoutVGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA7CapsuleVGGG_AA05PlaingE0VQo_Md);
  v13 = *(v45 - 8);
  v39 = v13;
  v14 = __chkstk_darwin(v45);
  v43 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = &v39 - v16;
  v50 = static Color.blue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v52 = v85;
  v53 = v86;
  v54 = v84;
  v17 = v87;
  v51 = v88;
  v55 = v89;
  if (*(*a1 + OBJC_IVAR___MPLegacyVoicemail_hasUnreadMessages))
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  v83 = v85;
  v82 = v87;
  v40 = v87;
  v42 = static HorizontalAlignment.leading.getter();
  LOBYTE(v67[0]) = 0;
  closure #1 in closure #1 in LegacyVoicemailCellView.body.getter(a1, v60);
  *&v57[7] = v60[0];
  *&v57[23] = v60[1];
  *&v57[39] = v60[2];
  *&v57[55] = v60[3];
  v41 = LOBYTE(v67[0]);
  outlined init with copy of LegacyVoicemailCellView(a1, &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  outlined init with take of LegacyVoicemailCellView(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA7CapsuleVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, Capsule>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, Capsule>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA14_PaddingLayoutVGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA7CapsuleVGGGMd);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  v21 = v49;
  v22 = v44;
  v23 = v47;
  View.buttonStyle<A>(_:)();
  (*(v48 + 8))(v7, v23);
  (*(v46 + 8))(v12, v22);
  v24 = *(v13 + 16);
  v25 = v43;
  v26 = v45;
  v24(v43, v21, v45);
  *&v61 = v50;
  *(&v61 + 1) = v54;
  LOBYTE(v62) = v52;
  *(&v62 + 1) = *v59;
  DWORD1(v62) = *&v59[3];
  *(&v62 + 1) = v53;
  LOBYTE(v63) = v17;
  *(&v63 + 1) = *v58;
  DWORD1(v63) = *&v58[3];
  *(&v63 + 1) = v51;
  *&v64 = v55;
  *(&v64 + 1) = v18;
  v27 = v61;
  v28 = v62;
  v29 = v64;
  *(a2 + 32) = v63;
  *(a2 + 48) = v29;
  *a2 = v27;
  *(a2 + 16) = v28;
  v30 = v42;
  v65[0] = v42;
  v65[1] = 0;
  LOBYTE(v21) = v41;
  v66[0] = v41;
  *&v66[1] = *v57;
  *&v66[64] = *&v57[63];
  *&v66[49] = *&v57[48];
  *&v66[33] = *&v57[32];
  *&v66[17] = *&v57[16];
  v31 = *v66;
  *(a2 + 64) = v42;
  *(a2 + 80) = v31;
  v32 = *&v66[16];
  v33 = *&v66[48];
  v34 = *&v66[64];
  *(a2 + 112) = *&v66[32];
  *(a2 + 128) = v33;
  *(a2 + 96) = v32;
  *(a2 + 144) = v34;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  v35 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6CircleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGAA14_OpacityEffectVG_AA6VStackVyAA9TupleViewVyAA4TextV_AWSgtGGAA6SpacerVAA0P0PAAE06buttonG0yQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0U0VyACyACyACyAwA08_PaddingK0VGA8_GAA026_InsettableBackgroundShapeH0VyAiA7CapsuleVGGG_AA05PlainuG0VQo_tMd) + 80));
  v36 = v25;
  v24(v35, v25, v26);
  outlined init with copy of Binding<EditMode>?(&v61, v67, &_s7SwiftUI15ModifiedContentVyACyACyAA6CircleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGAA14_OpacityEffectVGMd);
  outlined init with copy of Binding<EditMode>?(v65, v67, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGGMd);
  v37 = *(v39 + 8);
  v37(v49, v26);
  v37(v36, v26);
  v67[0] = v30;
  v67[1] = 0;
  v68 = v21;
  v70 = *&v57[16];
  v71 = *&v57[32];
  *v72 = *&v57[48];
  *&v72[15] = *&v57[63];
  v69 = *v57;
  outlined destroy of (NSAttributedStringKey, Any)(v67, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGGMd);
  v73[0] = v50;
  v73[1] = v54;
  v74 = v52;
  *v75 = *v59;
  *&v75[3] = *&v59[3];
  v76 = v53;
  v77 = v40;
  *v78 = *v58;
  *&v78[3] = *&v58[3];
  v79 = v51;
  v80 = v55;
  v81 = v18;
  return outlined destroy of (NSAttributedStringKey, Any)(v73, &_s7SwiftUI15ModifiedContentVyACyACyAA6CircleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGAA14_OpacityEffectVGMd);
}

uint64_t closure #1 in closure #1 in LegacyVoicemailCellView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() mainBundle];
  v43._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x69616D6563696F56;
  v6._object = 0x8000000100243DB0;
  v6._countAndFlagsBits = 0xD000000000000011;
  v5.value._object = 0xE90000000000006CLL;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v43);

  lazy protocol witness table accessor for type String and conformance String();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  v13 = Text.bold()();
  v42 = v14;
  v16 = v15;
  v18 = v17;
  outlined consume of Text.Storage(v8, v10, v12 & 1);

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (*(a1 + 8) == 1)
  {

    v23 = Text.init<A>(_:)();
    v25 = v24;
    v27 = v26;
    static Font.subheadline.getter();
    v28 = Text.font(_:)();
    v40 = v16;
    v30 = v29;
    v41 = v18;
    v32 = v31;

    outlined consume of Text.Storage(v23, v25, v27 & 1);

    static HierarchicalShapeStyle.secondary.getter();
    v19 = Text.foregroundStyle<A>(_:)();
    v20 = v33;
    LOBYTE(v23) = v34;
    v22 = v35;
    v36 = v32 & 1;
    v18 = v41;
    v37 = v30;
    v16 = v40;
    outlined consume of Text.Storage(v28, v37, v36);

    v21 = v23 & 1;
    outlined copy of Text.Storage(v19, v20, v21);
  }

  v38 = v16 & 1;
  outlined copy of Text.Storage(v13, v42, v38);

  outlined copy of Text?(v19, v20, v21, v22);
  outlined consume of Text?(v19, v20, v21, v22);
  *a2 = v13;
  *(a2 + 8) = v42;
  *(a2 + 16) = v38;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v21;
  *(a2 + 56) = v22;
  outlined consume of Text?(v19, v20, v21, v22);
  outlined consume of Text.Storage(v13, v42, v38);
}

uint64_t closure #3 in closure #1 in LegacyVoicemailCellView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v50 - v7;
  v9 = [objc_opt_self() mainBundle];
  v58._object = 0xE000000000000000;
  v10.value._countAndFlagsBits = 0x69616D6563696F56;
  v11._countAndFlagsBits = 1280065859;
  v11._object = 0xE400000000000000;
  v10.value._object = 0xE90000000000006CLL;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v58);

  v53 = v13;
  lazy protocol witness table accessor for type String and conformance String();
  v14 = Text.init<A>(_:)();
  v50 = v15;
  v17 = v16;
  v52 = v18;
  v51 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v17 & 1;
  LOBYTE(v53._countAndFlagsBits) = v17 & 1;
  LOBYTE(v57[0]) = 0;
  v28 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v54 = 0;
  type metadata accessor for LegacyVoicemailCellView();
  specialized Environment.wrappedValue.getter(v8);
  (*(v3 + 104))(v6, enum case for ColorScheme.light(_:), v2);
  v37 = static ColorScheme.== infix(_:_:)();
  v38 = *(v3 + 8);
  v38(v6, v2);
  v38(v8, v2);
  v39 = objc_opt_self();
  v40 = &selRef_systemGroupedBackgroundColor;
  if ((v37 & 1) == 0)
  {
    v40 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v41 = [v39 *v40];
  v42 = Color.init(uiColor:)();
  v43 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA7CapsuleVGGMd) + 36));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA7CapsuleVGMd);
  v45 = *(v44 + 52);
  v46 = enum case for RoundedCornerStyle.continuous(_:);
  v47 = type metadata accessor for RoundedCornerStyle();
  result = (*(*(v47 - 8) + 104))(v43 + v45, v46, v47);
  *v43 = v42;
  *(v43 + *(v44 + 56)) = 256;
  v49 = v50;
  *a1 = v14;
  *(a1 + 8) = v49;
  *(a1 + 16) = v27;
  *(a1 + 17) = v53._countAndFlagsBits;
  *(a1 + 20) = *(&v53._countAndFlagsBits + 3);
  *(a1 + 24) = v52;
  *(a1 + 32) = v51;
  *(a1 + 33) = v57[0];
  *(a1 + 36) = *(v57 + 3);
  *(a1 + 40) = v20;
  *(a1 + 48) = v22;
  *(a1 + 56) = v24;
  *(a1 + 64) = v26;
  *(a1 + 72) = 0;
  *(a1 + 76) = *&v56[3];
  *(a1 + 73) = *v56;
  *(a1 + 80) = v28;
  *(a1 + 84) = *&v55[3];
  *(a1 + 81) = *v55;
  *(a1 + 88) = v30;
  *(a1 + 96) = v32;
  *(a1 + 104) = v34;
  *(a1 + 112) = v36;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_1001139C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100113A90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for LegacyVoicemailCellView()
{
  type metadata accessor for LegacyVoicemail();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ()();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<ColorScheme>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Environment<ColorScheme>()
{
  if (!lazy cache variable for type metadata for Environment<ColorScheme>)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<ColorScheme>);
    }
  }
}

uint64_t outlined init with copy of LegacyVoicemailCellView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyVoicemailCellView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100113CE4()
{
  v1 = (type metadata accessor for LegacyVoicemailCellView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of LegacyVoicemailCellView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyVoicemailCellView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, Capsule>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, Capsule>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, Capsule>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA7CapsuleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<Color, Capsule> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA7CapsuleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _InsettableBackgroundShapeModifier<Color, Capsule>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle()
{
  result = lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle;
  if (!lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle);
  }

  return result;
}

uint64_t outlined copy of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined consume of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

unint64_t BlockTableViewCell.BlockFlow.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BlockTableViewCell.BlockFlow()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BlockTableViewCell.BlockFlow()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance BlockTableViewCell.BlockFlow@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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

void BlockTableViewCell.init(coder:)()
{
  v1 = OBJC_IVAR___PHBlockTableViewCell____lazy_storage___cellContentConfiguration;
  v2 = type metadata accessor for UIListContentConfiguration();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR___PHBlockTableViewCell____lazy_storage___unblockImageView) = 0;
  *(v0 + OBJC_IVAR___PHBlockTableViewCell____lazy_storage___blockImageView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t BlockTableViewCell.cellContentConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___PHBlockTableViewCell____lazy_storage___cellContentConfiguration;
  swift_beginAccess();
  outlined init with copy of UIListContentConfiguration?(v1 + v9, v8);
  v10 = type metadata accessor for UIListContentConfiguration();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  outlined destroy of UIListContentConfiguration?(v8);
  closure #1 in BlockTableViewCell.cellContentConfiguration.getter();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of UIListContentConfiguration?(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t closure #1 in BlockTableViewCell.cellContentConfiguration.getter()
{
  UITableViewCell.defaultContentConfiguration()();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x746E656365524850;
  v3._object = 0x8000000100240940;
  v3._countAndFlagsBits = 0xD000000000000025;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v10);

  UIListContentConfiguration.text.setter();
  v5 = [objc_opt_self() systemRedColor];
  v6 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v6(v9, 0);
  v7 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter();
  return v7(v9, 0);
}

id BlockTableViewCell.unblockImageView.getter()
{
  v1 = OBJC_IVAR___PHBlockTableViewCell____lazy_storage___unblockImageView;
  v2 = *(v0 + OBJC_IVAR___PHBlockTableViewCell____lazy_storage___unblockImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PHBlockTableViewCell____lazy_storage___unblockImageView);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() systemImageNamed:v4];

    v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];
    v7 = [objc_opt_self() systemBlackColor];
    [v6 setTintColor:v7];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id BlockTableViewCell.blockImageView.getter()
{
  v1 = OBJC_IVAR___PHBlockTableViewCell____lazy_storage___blockImageView;
  v2 = *(v0 + OBJC_IVAR___PHBlockTableViewCell____lazy_storage___blockImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PHBlockTableViewCell____lazy_storage___blockImageView);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() systemImageNamed:v4];

    v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];
    v7 = [objc_opt_self() systemRedColor];
    [v6 setTintColor:v7];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void BlockTableViewCell.updateCell(flow:isBlocked:style:)(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for UIListContentConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = &selRef_systemWhiteColor;
  if (a3 != 2)
  {
    v16 = &selRef_systemBlackColor;
  }

  v17 = [v15 *v16];
  v45 = v11;
  v46 = v17;
  v44 = a2;
  if (a1 == 1)
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v20 = "RT_BLOCK_ALERT_TITLE";
    if (a2)
    {
      v20 = "kTableViewCell.swift";
      v21 = 0xD00000000000002BLL;
    }

    else
    {
      v21 = 0xD000000000000029;
    }

    v48._object = 0xE000000000000000;
    v22.value._countAndFlagsBits = 0x746E656365524850;
    v23 = v20 | 0x8000000000000000;
    v22.value._object = 0xE900000000000073;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v48._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v21, v22, v19, v24, v48);

    BlockTableViewCell.cellContentConfiguration.getter(v14);
    UIListContentConfiguration.text.setter();
    v43 = *(v12 + 32);
    v43(v10, v14, v11);
    v42 = *(v12 + 56);
    v42(v10, 0, 1, v11);
    v25 = OBJC_IVAR___PHBlockTableViewCell____lazy_storage___cellContentConfiguration;
    swift_beginAccess();
    outlined assign with take of UIListContentConfiguration?(v10, v4 + v25);
    swift_endAccess();
    if ((a2 & 1) == 0)
    {
LABEL_15:
      v34 = [objc_opt_self() systemRedColor];
      goto LABEL_16;
    }
  }

  else
  {
    if (a1)
    {
      v47[0] = a1;
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    type metadata accessor for BundleClass();
    v26 = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass:v26];
    v28 = "ETIME_ALERT_REPORT_BLOCK";
    if (a2)
    {
      v28 = "ETIME_ALERT_UNBLOCK_UNKNOWN";
      v29 = 0xD000000000000027;
    }

    else
    {
      v29 = 0xD000000000000025;
    }

    v49._object = 0xE000000000000000;
    v30.value._countAndFlagsBits = 0x746E656365524850;
    v31 = v28 | 0x8000000000000000;
    v30.value._object = 0xE900000000000073;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v49._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v29, v30, v27, v32, v49);

    BlockTableViewCell.cellContentConfiguration.getter(v14);
    UIListContentConfiguration.text.setter();
    v43 = *(v12 + 32);
    v43(v10, v14, v11);
    v42 = *(v12 + 56);
    v42(v10, 0, 1, v11);
    v25 = OBJC_IVAR___PHBlockTableViewCell____lazy_storage___cellContentConfiguration;
    swift_beginAccess();
    outlined assign with take of UIListContentConfiguration?(v10, v4 + v25);
    swift_endAccess();
    if ((a2 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v33 = v46;
LABEL_16:
  BlockTableViewCell.cellContentConfiguration.getter(v14);
  v35 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v35(v47, 0);
  v36 = v45;
  v43(v10, v14, v45);
  v42(v10, 0, 1, v36);
  swift_beginAccess();
  outlined assign with take of UIListContentConfiguration?(v10, v4 + v25);
  swift_endAccess();
  v37 = v46;
  if (v44)
  {
    v38 = BlockTableViewCell.unblockImageView.getter();
    v39 = v37;
  }

  else
  {
    v38 = BlockTableViewCell.blockImageView.getter();
    v39 = [objc_opt_self() systemRedColor];
  }

  v40 = v39;
  [v38 setTintColor:v39];

  [v4 setAccessoryView:v38];
  v47[3] = v36;
  v47[4] = &protocol witness table for UIListContentConfiguration;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  BlockTableViewCell.cellContentConfiguration.getter(boxed_opaque_existential_1);
  UITableViewCell.contentConfiguration.setter();
}

id specialized BlockTableViewCell.init(style:reuseIdentifier:)()
{
  ObjectType = swift_getObjectType();

  v2 = OBJC_IVAR___PHBlockTableViewCell____lazy_storage___cellContentConfiguration;
  v3 = type metadata accessor for UIListContentConfiguration();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR___PHBlockTableViewCell____lazy_storage___unblockImageView] = 0;
  *&v0[OBJC_IVAR___PHBlockTableViewCell____lazy_storage___blockImageView] = 0;
  v4 = String._bridgeToObjectiveC()();
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", 0, v4);

  v10[3] = v3;
  v10[4] = &protocol witness table for UIListContentConfiguration;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  v7 = v5;
  BlockTableViewCell.cellContentConfiguration.getter(boxed_opaque_existential_1);
  UITableViewCell.contentConfiguration.setter();
  v8 = BlockTableViewCell.blockImageView.getter();
  [v7 setAccessoryView:v8];

  return v7;
}

uint64_t outlined assign with take of UIListContentConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type BlockTableViewCell.BlockFlow and conformance BlockTableViewCell.BlockFlow()
{
  result = lazy protocol witness table cache variable for type BlockTableViewCell.BlockFlow and conformance BlockTableViewCell.BlockFlow;
  if (!lazy protocol witness table cache variable for type BlockTableViewCell.BlockFlow and conformance BlockTableViewCell.BlockFlow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlockTableViewCell.BlockFlow and conformance BlockTableViewCell.BlockFlow);
  }

  return result;
}

uint64_t type metadata accessor for BlockTableViewCell()
{
  result = type metadata singleton initialization cache for BlockTableViewCell;
  if (!type metadata singleton initialization cache for BlockTableViewCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for BlockTableViewCell()
{
  type metadata accessor for UIListContentConfiguration?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UIListContentConfiguration?()
{
  if (!lazy cache variable for type metadata for UIListContentConfiguration?)
  {
    type metadata accessor for UIListContentConfiguration();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIListContentConfiguration?);
    }
  }
}

uint64_t outlined destroy of UIListContentConfiguration?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of UIListContentConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *PHCarPlayFavoritesTableViewCell.contact.getter()
{
  v1 = OBJC_IVAR___PHCarPlayFavoritesTableViewCell_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PHCarPlayFavoritesTableViewCell.contact.setter(void *a1)
{
  v3 = OBJC_IVAR___PHCarPlayFavoritesTableViewCell_contact;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  [v1 setNeedsUpdateConfiguration];
}

uint64_t PHCarPlayFavoritesTableViewCell.favoriteName.getter()
{
  v1 = (v0 + OBJC_IVAR___PHCarPlayFavoritesTableViewCell_favoriteName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id PHCarPlayFavoritesTableViewCell.favoriteName.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___PHCarPlayFavoritesTableViewCell_favoriteName];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  return [v2 setNeedsUpdateConfiguration];
}

uint64_t PHCarPlayFavoritesTableViewCell.phoneNumberType.getter()
{
  v1 = (v0 + OBJC_IVAR___PHCarPlayFavoritesTableViewCell_phoneNumberType);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id PHCarPlayFavoritesTableViewCell.phoneNumberType.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___PHCarPlayFavoritesTableViewCell_phoneNumberType];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  return [v2 setNeedsUpdateConfiguration];
}

uint64_t PHCarPlayFavoritesTableViewCell.updateConfiguration(using:)(uint64_t a1)
{
  v3 = type metadata accessor for UIBackgroundConfiguration();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  __chkstk_darwin(v5 - 8);
  v21 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UIHostingConfigurationVyAA6HStackVyAA9TupleViewVyAA15ModifiedContentVy11MobilePhone013CarPlayAvatarG13RepresentableVAA12_FrameLayoutVGSg_AIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentV0VGSgAA6SpacerVAIyAIyAIyAwA016_ForegroundStyleV0VyAA5ColorVGGAA16_BlendModeEffectVGAYGSgtGGAA05EmptyG0VGMd);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
  {
    v11 = 1;
  }

  else
  {
    v11 = UICellConfigurationState.isHighlighted.getter();
  }

  v12 = __chkstk_darwin(v11);
  *(&v20 - 4) = v1;
  *(&v20 - 24) = v12 & 1;
  *(&v20 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy11MobilePhone013CarPlayAvatarE13RepresentableVAA12_FrameLayoutVGSg_AGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentT0VGSgAA6SpacerVAGyAGyAGyAuA016_ForegroundStyleT0VyAA5ColorVGGAA16_BlendModeEffectVGAWGSgtGGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<CarPlayAvatarViewRepresentable, _FrameLayout>?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, AccessibilityAttachmentModifier>?, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, _BlendModeEffect>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy11MobilePhone013CarPlayAvatarE13RepresentableVAA12_FrameLayoutVGSg_AGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentT0VGSgAA6SpacerVAGyAGyAGyAuA016_ForegroundStyleT0VyAA5ColorVGGAA16_BlendModeEffectVGAWGSgtGGMd);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v25[3] = v7;
  v25[4] = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type UIHostingConfiguration<HStack<TupleView<(ModifiedContent<CarPlayAvatarViewRepresentable, _FrameLayout>?, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, AccessibilityAttachmentModifier>?, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, _BlendModeEffect>, AccessibilityAttachmentModifier>?)>>, EmptyView> and conformance UIHostingConfiguration<A, B>, &_s7SwiftUI22UIHostingConfigurationVyAA6HStackVyAA9TupleViewVyAA15ModifiedContentVy11MobilePhone013CarPlayAvatarG13RepresentableVAA12_FrameLayoutVGSg_AIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentV0VGSgAA6SpacerVAIyAIyAIyAwA016_ForegroundStyleV0VyAA5ColorVGGAA16_BlendModeEffectVGAYGSgtGGAA05EmptyG0VGMd);
  __swift_allocate_boxed_opaque_existential_1(v25);
  UIHostingConfiguration.margins(_:_:)();
  (*(v8 + 8))(v10, v7);
  UITableViewCell.contentConfiguration.setter();
  v13 = v22;
  static UIBackgroundConfiguration.clear()();
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    v14 = &selRef_dynamicCarFocusedColor;
  }

  else
  {
    v14 = &selRef_clearColor;
  }

  v15 = [objc_opt_self() *v14];
  UIBackgroundConfiguration.backgroundColor.setter();
  UIBackgroundConfiguration.cornerRadius.setter();
  v17 = v23;
  v16 = v24;
  v18 = v21;
  (*(v23 + 32))(v21, v13, v24);
  (*(v17 + 56))(v18, 0, 1, v16);
  return UITableViewCell.backgroundConfiguration.setter();
}

uint64_t closure #1 in PHCarPlayFavoritesTableViewCell.updateConfiguration(using:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0x4020000000000000;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVy11MobilePhone013CarPlayAvatarD13RepresentableVAA06_FrameG0VGSg_AKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentV0VGSgAA6SpacerVAKyAKyAKyAyA016_ForegroundStyleV0VyAA5ColorVGGAA16_BlendModeEffectVGA_GSgtGGMd);
  return closure #1 in closure #1 in PHCarPlayFavoritesTableViewCell.updateConfiguration(using:)(a1, a2, a3, (a4 + *(v8 + 44)));
}

uint64_t closure #1 in closure #1 in PHCarPlayFavoritesTableViewCell.updateConfiguration(using:)@<X0>(id a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v120 = a3;
  v114 = a2;
  v132 = a4;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGMd);
  __chkstk_darwin(v113);
  v112 = &v106 - v5;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGMd);
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v111 = &v106 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGSgMd);
  v8 = __chkstk_darwin(v7 - 8);
  v131 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v106 - v10;
  v12 = type metadata accessor for AccessibilityTraits();
  v119 = *(v12 - 8);
  __chkstk_darwin(v12);
  v118 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGMd);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v115 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v117 = &v106 - v19;
  __chkstk_darwin(v18);
  v116 = &v106 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGSgMd);
  v22 = __chkstk_darwin(v21 - 8);
  v128 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v106 - v24;
  v26 = [a1 contact];
  if (v26)
  {
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100209A80;
    v127 = v28;
    *(v28 + 32) = v27;
    v29 = v27;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v126 = v143;
    v125 = v144;
    v124 = v145;
    v123 = v146;
    v122 = v147;
    v121 = v148;
  }

  else
  {
    v127 = 0;
    v126 = 0;
    v125 = 0;
    v124 = 0;
    v123 = 0;
    v122 = 0;
    v121 = 0;
  }

  v30 = [a1 favoriteName];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v31 & 0xFFFFFFFFFFFFLL;
  }

  v133 = v25;
  v134 = v11;
  if (v34)
  {
    v107 = v15;
    v108 = v12;
    v109 = v14;
    v110 = a1;
    v35 = [a1 favoriteName];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v136 = v36;
    v137 = v38;
    v106 = lazy protocol witness table accessor for type String and conformance String();
    v39 = Text.init<A>(_:)();
    v41 = v40;
    LOBYTE(v38) = v42;
    static Font.callout.getter();
    v43 = Text.font(_:)();
    v45 = v44;
    v47 = v46;

    outlined consume of Text.Storage(v39, v41, v38 & 1);

    static Font.Weight.medium.getter();
    v48 = Text.fontWeight(_:)();
    v50 = v49;
    v52 = v51;
    outlined consume of Text.Storage(v43, v45, v47 & 1);

    if (v114)
    {
      v53 = [objc_opt_self() dynamicCarFocusedLabelColor];
      v54 = Color.init(uiColor:)();
    }

    else
    {
      v54 = static Color.primary.getter();
    }

    v136 = v54;
    v55 = Text.foregroundStyle<A>(_:)();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    outlined consume of Text.Storage(v48, v50, v52 & 1);

    KeyPath = swift_getKeyPath();
    v136 = v55;
    v137 = v57;
    v59 &= 1u;
    v138 = v59;
    v139 = v61;
    v140 = KeyPath;
    v141 = 2;
    v142 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    v63 = v115;
    View.accessibilityIdentifier(_:)();
    outlined consume of Text.Storage(v55, v57, v59);

    a1 = v110;
    v64 = [v110 favoriteName];
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    v136 = v65;
    v137 = v67;
    v68 = v117;
    v69 = v109;
    ModifiedContent<>.accessibilityLabel<A>(_:)();

    outlined destroy of (NSAttributedStringKey, Any)(v63, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGMd);
    v70 = v118;
    static AccessibilityTraits.isButton.getter();
    v71 = v116;
    ModifiedContent<>.accessibilityAddTraits(_:)();
    (*(v119 + 8))(v70, v108);
    outlined destroy of (NSAttributedStringKey, Any)(v68, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGMd);
    v25 = v133;
    outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v71, v133, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGMd);
    (*(v107 + 56))(v25, 0, 1, v69);
    v11 = v134;
  }

  else
  {
    (*(v15 + 56))(v25, 1, 1, v14);
  }

  v72 = [a1 phoneNumberType];
  if (!v72)
  {
    goto LABEL_22;
  }

  v73 = v72;
  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;

  v77 = HIBYTE(v76) & 0xF;
  if ((v76 & 0x2000000000000000) == 0)
  {
    v77 = v74 & 0xFFFFFFFFFFFFLL;
  }

  if (!v77)
  {

LABEL_22:
    (*(v129 + 56))(v11, 1, 1, v130);
    goto LABEL_23;
  }

  v136 = v74;
  v137 = v76;
  lazy protocol witness table accessor for type String and conformance String();
  v78 = Text.init<A>(_:)();
  v80 = v79;
  v82 = v81;
  static Font.caption.getter();
  v83 = Text.font(_:)();
  v85 = v84;
  v87 = v86;
  v89 = v88;

  outlined consume of Text.Storage(v78, v80, v82 & 1);

  v90 = swift_getKeyPath();
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    v91 = [objc_opt_self() dynamicCarFocusedPrimaryLabelColor];
    v92 = Color.init(uiColor:)();
  }

  else
  {
    v92 = static Color.secondary.getter();
  }

  v93 = v92;
  LOBYTE(v136) = v87 & 1;
  v135 = 0;
  v94 = v112;
  UICellConfigurationState.secondaryBlendMode.getter(&v112[*(v113 + 36)]);
  *v94 = v83;
  *(v94 + 8) = v85;
  *(v94 + 16) = v136;
  *(v94 + 24) = v89;
  *(v94 + 32) = v90;
  *(v94 + 40) = 1;
  *(v94 + 48) = v135;
  *(v94 + 56) = v93;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
  v95 = v111;
  View.accessibilityIdentifier(_:)();
  outlined destroy of (NSAttributedStringKey, Any)(v94, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGMd);
  v11 = v134;
  outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v95, v134, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGMd);
  (*(v129 + 56))(v11, 0, 1, v130);
  v25 = v133;
LABEL_23:
  v96 = v128;
  outlined init with copy of Binding<EditMode>?(v25, v128, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGSgMd);
  v97 = v131;
  outlined init with copy of Binding<EditMode>?(v11, v131, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGSgMd);
  v98 = v25;
  v99 = v132;
  v100 = v126;
  *v132 = v127;
  v99[1] = v100;
  v101 = v124;
  v99[2] = v125;
  v99[3] = v101;
  v102 = v122;
  v99[4] = v123;
  v99[5] = v102;
  v99[6] = v121;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy11MobilePhone30CarPlayAvatarViewRepresentableVAA12_FrameLayoutVGSg_ACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentR0VGSgAA6SpacerVACyACyACyAqA016_ForegroundStyleR0VyAA5ColorVGGAA16_BlendModeEffectVGASGSgtMd);
  outlined init with copy of Binding<EditMode>?(v96, v99 + v103[12], &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGSgMd);
  v104 = v99 + v103[16];
  *v104 = 0x4028000000000000;
  v104[8] = 0;
  outlined init with copy of Binding<EditMode>?(v97, v99 + v103[20], &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGSgMd);

  outlined destroy of (NSAttributedStringKey, Any)(v11, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v98, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v97, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v96, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGSgMd);
}

unint64_t type metadata accessor for PHCarPlayFavoritesTableViewCell()
{
  result = lazy cache variable for type metadata for PHCarPlayFavoritesTableViewCell;
  if (!lazy cache variable for type metadata for PHCarPlayFavoritesTableViewCell)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PHCarPlayFavoritesTableViewCell);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t ValueCache.__allocating_init()()
{
  v0 = swift_allocObject();
  ValueCache.init()();
  return v0;
}

void ValueCache.set(_:for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v3 + 11);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = *(v6 - 8);
  __chkstk_darwin(v9);
  v14 = &v18 - v13;
  type metadata accessor for BoxedKey();
  v15 = specialized BoxedKey.__allocating_init(key:)(a2);
  (*(v8 + 16))(v11, a1, v7);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    [v3[2] removeObjectForKey:v15];
  }

  else
  {
    (*(v12 + 32))(v14, v11, v6);
    v16 = v3[2];
    type metadata accessor for BoxedValue();
    v17 = specialized BoxedValue.__allocating_init(value:)(v14);
    [v16 setObject:v17 forKey:v15];

    (*(v12 + 8))(v14, v6);
  }
}

uint64_t ValueCache.value(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  type metadata accessor for BoxedKey();
  v7 = specialized BoxedKey.__allocating_init(key:)(a1);
  v8 = [v3[2] objectForKey:v7];

  if (v8)
  {
    v9 = *(v6 + 88);
    v15 = *(v9 - 8);
    (*(v15 + 16))(a2, &v8[*((swift_isaMask & *v8) + 0x58)], v9);

    v10 = *(v15 + 56);
    v11 = a2;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v13 = *(v6 + 88);
    v10 = *(*(v13 - 8) + 56);
    v11 = a2;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t key path setter for ValueCache.subscript(_:) : <A, B>ValueCache<A, B>AB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 24);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - v11;
  __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a3, v7);
  (*(v9 + 16))(v12, a1, v8);
  return (*(**a2 + 136))(v12, v14);
}

uint64_t ValueCache.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  specialized ValueCache.subscript.setter();
  (*(*(*(v5 + 80) - 8) + 8))(a2);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*ValueCache.subscript.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *v2;
  v8 = type metadata accessor for Optional();
  v6[1] = v8;
  v9 = *(v8 - 8);
  v6[2] = v9;
  v10 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v6[4] = v11;
  v12 = *(v7 + 80);
  v6[5] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v6[6] = v13;
  if (&_swift_coroFrameAlloc)
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(*(v13 + 64));
  }

  v6[7] = v15;
  (*(v14 + 16))();
  (*(*v2 + 120))(a2);
  return ValueCache.subscript.modify;
}

void ValueCache.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[6];
  v3 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    (*(v8 + 16))((*a1)[3], v5, v10);
    (*(*v9 + 112))(v7, v3);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v10);
    v11(v5, v10);
  }

  else
  {
    (*(*v9 + 112))((*a1)[4], v3);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v10);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t ValueCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ValueCache.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSCacheCMd);
  type metadata accessor for BoxedKey();
  type metadata accessor for BoxedValue();
  *(v0 + 16) = NSCache.__allocating_init()();
  return v0;
}

id BoxedValue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BoxedValue();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t @objc BoxedKey.hash.getter(void *a1)
{
  v1 = a1;
  v2 = BoxedKey.hash.getter();

  return v2;
}

uint64_t BoxedKey.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v4);
  if (!v5)
  {
    outlined destroy of Any?(v4);
    goto LABEL_5;
  }

  type metadata accessor for BoxedKey();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v1 = 0;
    return v1 & 1;
  }

  v1 = dispatch thunk of static Equatable.== infix(_:_:)();

  return v1 & 1;
}

uint64_t @objc BoxedKey.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = BoxedKey.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

id BoxedKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BoxedKey();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id specialized BoxedKey.init(key:)(uint64_t a1)
{
  (*(*(*((swift_isaMask & *v1) + 0x50) - 8) + 16))(&v1[*((swift_isaMask & *v1) + 0x60)], a1, *((swift_isaMask & *v1) + 0x50));
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BoxedKey();
  return objc_msgSendSuper2(&v3, "init");
}

id specialized BoxedValue.init(value:)(uint64_t a1)
{
  (*(*(*((swift_isaMask & *v1) + 0x50) - 8) + 16))(&v1[*((swift_isaMask & *v1) + 0x58)], a1, *((swift_isaMask & *v1) + 0x50));
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BoxedValue();
  return objc_msgSendSuper2(&v3, "init");
}

__n128 sub_100117FBC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t type metadata completion function for BoxedValue()
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

uint64_t type metadata completion function for BoxedKey()
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

void *SymbolDescription.maximumContentSizeCategory.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t SymbolDescription.init(name:scale:textStyle:maximumContentSizeCategory:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

UIImage_optional __swiftcall SymbolDescriber.uiImage()()
{
  (*(v0 + 8))(&v4);
  v1 = specialized static UIImage.image(for:)(&v4);
  v9 = v4;
  outlined destroy of String(&v9);
  v8 = v5;
  outlined destroy of UIFontTextStyle(&v8);
  v7 = v6;
  outlined destroy of UIContentSizeCategory?(&v7);
  v3 = v1;
  result.value.super.isa = v3;
  result.is_nil = v2;
  return result;
}

double protocol witness for SymbolDescriber.description.getter in conformance SymbolDescribers.Recents@<D0>(uint64_t a1@<X8>)
{
  SymbolDescribers.Recents.description.getter(*v1, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

NSString *SymbolDescribers.Recents.description.getter@<X0>(unsigned __int8 a1@<W0>, unint64_t *a2@<X8>)
{
  v3 = 0xE800000000000000;
  v4 = &UIFontTextStyleFootnote;
  v5 = 1;
  v6 = a1 - 2;
  v7 = 0x8000000100241EC0;
  v8 = 0xD000000000000015;
  v9 = &UIFontTextStyleFootnote;
  v10 = 1;
  if (a1 != 4)
  {
    v9 = &UIFontTextStyleHeadline;
    v8 = 0x7269632E6F666E69;
    v7 = 0xEB00000000656C63;
    v10 = -1;
  }

  v11 = v6 >= 2;
  if (v6 < 2)
  {
    v12 = 0x65707974656C6574;
  }

  else
  {
    v4 = v9;
    v12 = v8;
  }

  if (v11)
  {
    v3 = v7;
  }

  if (v11)
  {
    v5 = v10;
  }

  if (a1)
  {
    v13 = 0x8000000100244060;
  }

  else
  {
    v13 = 0x8000000100244080;
  }

  if (a1 <= 1u)
  {
    v14 = &UIFontTextStyleFootnote;
  }

  else
  {
    v14 = v4;
  }

  if (a1 <= 1u)
  {
    v15 = 0xD000000000000019;
  }

  else
  {
    v15 = v12;
  }

  if (a1 <= 1u)
  {
    v16 = v13;
  }

  else
  {
    v16 = v3;
  }

  if (a1 <= 1u)
  {
    v17 = 1;
  }

  else
  {
    v17 = v5;
  }

  v18 = *v14;
  result = UIContentSizeCategoryAccessibilityLarge;
  *a2 = v15;
  a2[1] = v16;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = result;
  return result;
}

double protocol witness for SymbolDescriber.description.getter in conformance SymbolDescribers.Favorites@<D0>(uint64_t a1@<X8>)
{
  SymbolDescribers.Favorites.description.getter(*v1, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

NSString *SymbolDescribers.Favorites.description.getter@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = UIFontTextStyleCaption2;
  result = UIContentSizeCategoryAccessibilityLarge;
  v6 = 0x69662E656E6F6870;
  v7 = 1;
  v8 = 0xED00006C6C69662ELL;
  v9 = 0x65706F6C65766E65;
  v10 = 1;
  v11 = 0xEC0000006C6C6966;
  v12 = 0x2E6567617373656DLL;
  v13 = 1;
  if (a1 != 3)
  {
    v12 = 0x65707974656C6574;
    v11 = 0xE800000000000000;
    v13 = -1;
  }

  if (a1 != 2)
  {
    v9 = v12;
    v8 = v11;
    v10 = v13;
  }

  if (a1)
  {
    v6 = 0x69662E6F65646976;
    v7 = 1;
  }

  if (a1 <= 1u)
  {
    v14 = v6;
  }

  else
  {
    v14 = v9;
  }

  if (a1 <= 1u)
  {
    v15 = 0xEA00000000006C6CLL;
  }

  else
  {
    v15 = v8;
  }

  if (a1 > 1u)
  {
    v7 = v10;
  }

  *a2 = v14;
  a2[1] = v15;
  a2[2] = v7;
  a2[3] = v4;
  a2[4] = result;
  return result;
}

uint64_t outlined destroy of UIFontTextStyle(uint64_t a1)
{
  type metadata accessor for UIFontTextStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of UIContentSizeCategory?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21UIContentSizeCategoryaSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SymbolDescribers.Recents and conformance SymbolDescribers.Recents()
{
  result = lazy protocol witness table cache variable for type SymbolDescribers.Recents and conformance SymbolDescribers.Recents;
  if (!lazy protocol witness table cache variable for type SymbolDescribers.Recents and conformance SymbolDescribers.Recents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolDescribers.Recents and conformance SymbolDescribers.Recents);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolDescribers.Favorites and conformance SymbolDescribers.Favorites()
{
  result = lazy protocol witness table cache variable for type SymbolDescribers.Favorites and conformance SymbolDescribers.Favorites;
  if (!lazy protocol witness table cache variable for type SymbolDescribers.Favorites and conformance SymbolDescribers.Favorites)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolDescribers.Favorites and conformance SymbolDescribers.Favorites);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolDescribers.Recents(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SymbolDescribers.Recents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolDescribers.Favorites(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SymbolDescribers.Favorites(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id LegacyMailboxService.telephonyClient.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService____lazy_storage___telephonyClient;
  v2 = *(v0 + OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService____lazy_storage___telephonyClient);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService____lazy_storage___telephonyClient);
  }

  else
  {
    v4 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:*(v0 + OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService_queue)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t LegacyMailboxService.changePublisher.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService_changePublisher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *LegacyMailboxService.__allocating_init(voicemailManager:)(void *a1)
{
  swift_getObjectType();

  return specialized LegacyMailboxService.__allocating_init(voicemailManager:)(a1, v1);
}

char *LegacyMailboxService.init(voicemailManager:)(void *a1)
{
  swift_getObjectType();

  return specialized LegacyMailboxService.init(voicemailManager:)(a1, v1);
}

uint64_t closure #1 in LegacyMailboxService.init(voicemailManager:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t closure #2 in LegacyMailboxService.init(voicemailManager:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t LegacyMailboxService.fetchLegacyMailboxes()()
{
  *(v1 + 32) = v0;

  return (_swift_task_switch)(LegacyMailboxService.fetchLegacyMailboxes(), 0, 0);
}

{
  v1 = LegacyMailboxService.telephonyClient.getter();
  v0[2] = 0;
  v2 = [v1 getActiveContexts:v0 + 2];
  v0[5] = v2;

  v3 = v0[2];
  if (v2)
  {
    v4 = v0[4];
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CallsAppUI13LegacyMailboxVSgMd);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10CallsAppUI13LegacyMailboxVGMd);
    v7 = swift_task_alloc();
    v0[6] = v7;
    *(v7 + 16) = v2;
    *(v7 + 24) = v4;
    v8 = v3;
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = LegacyMailboxService.fetchLegacyMailboxes();

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 3, v5, v6, 0, 0, &async function pointer to partial apply for closure #1 in LegacyMailboxService.fetchLegacyMailboxes(), v7, v5);
  }

  else
  {
    v10 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.mobilePhone);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "LegacyMailboxService: fetchLegacyMailboxes failed with %@", v14, 0xCu);
      outlined destroy of (NSAttributedStringKey, Any)(v15, &_sSo8NSObjectCSgMd);
    }

    v17 = v0[1];

    return v17(_swiftEmptyArrayStorage);
  }
}

{

  return (_swift_task_switch)(LegacyMailboxService.fetchLegacyMailboxes(), 0, 0);
}

{

  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #1 in LegacyMailboxService.fetchLegacyMailboxes()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v4[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CallsAppUI13LegacyMailboxVSgMd);
  v4[15] = swift_task_alloc();
  v5 = type metadata accessor for LegacyMailbox();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVyScGy10CallsAppUI13LegacyMailboxVSgGAG_GMd);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVyScGy10CallsAppUI13LegacyMailboxVSgGAEGMd);
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return (_swift_task_switch)(closure #1 in LegacyMailboxService.fetchLegacyMailboxes(), 0, 0);
}

uint64_t closure #1 in LegacyMailboxService.fetchLegacyMailboxes()()
{
  v1 = [*(v0 + 96) subscriptions];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CTXPCContextInfo);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v3;
    if (v3 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      v5 = v3;
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        if (v6 >= 1)
        {
          v7 = 0;
          v34 = v5 & 0xC000000000000001;
          v35 = v6;
          v33 = **(v0 + 88);
          v36 = v5;
          while (1)
          {
            v38 = v7;
            if (v34)
            {
              v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v10 = *(v5 + 8 * v7 + 32);
            }

            v11 = v10;
            v13 = *(v0 + 216);
            v12 = *(v0 + 224);
            v14 = *(v0 + 104);
            v15 = type metadata accessor for TaskPriority();
            v16 = *(v15 - 8);
            (*(v16 + 56))(v12, 1, 1, v15);
            v17 = swift_allocObject();
            v17[2] = 0;
            v18 = v17 + 2;
            v17[3] = 0;
            v17[4] = v14;
            v17[5] = v11;
            outlined init with copy of Binding<EditMode>?(v12, v13, &_sScPSgMd);
            LODWORD(v12) = (*(v16 + 48))(v13, 1, v15);
            v19 = v14;
            v37 = v11;
            v20 = *(v0 + 216);
            if (v12 == 1)
            {
              outlined destroy of (NSAttributedStringKey, Any)(*(v0 + 216), &_sScPSgMd);
              if (!*v18)
              {
                goto LABEL_15;
              }
            }

            else
            {
              TaskPriority.rawValue.getter();
              (*(v16 + 8))(v20, v15);
              if (!*v18)
              {
LABEL_15:
                v21 = 0;
                v23 = 0;
                goto LABEL_16;
              }
            }

            swift_getObjectType();
            swift_unknownObjectRetain();
            v21 = dispatch thunk of Actor.unownedExecutor.getter();
            v23 = v22;
            swift_unknownObjectRelease();
LABEL_16:
            v24 = swift_allocObject();
            *(v24 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in LegacyMailboxService.fetchLegacyMailboxes();
            *(v24 + 24) = v17;

            if (v23 | v21)
            {
              v8 = v0 + 16;
              *(v0 + 16) = 0;
              *(v0 + 24) = 0;
              *(v0 + 32) = v21;
              *(v0 + 40) = v23;
            }

            else
            {
              v8 = 0;
            }

            v7 = v38 + 1;
            v9 = *(v0 + 224);
            *(v0 + 48) = 1;
            *(v0 + 56) = v8;
            *(v0 + 64) = v33;
            swift_task_create();

            outlined destroy of (NSAttributedStringKey, Any)(v9, &_sScPSgMd);
            v5 = v36;
            if (v35 == v38 + 1)
            {
              goto LABEL_22;
            }
          }
        }

        __break(1u);
        return dispatch thunk of AsyncIteratorProtocol.next()(v6, v5, v4);
      }
    }

LABEL_22:

    v27 = *(v0 + 200);
    v28 = *(v0 + 208);
    v29 = *(v0 + 184);
    v30 = *(v0 + 192);
    *(v0 + 72) = **(v0 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGy10CallsAppUI13LegacyMailboxVSgGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<LegacyMailbox?> and conformance TaskGroup<A>, &_sScGy10CallsAppUI13LegacyMailboxVSgGMd);
    AsyncCompactMapSequence.init(_:transform:)();
    (*(v30 + 16))(v27, v28, v29);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncCompactMapSequence<TaskGroup<LegacyMailbox?>, LegacyMailbox> and conformance AsyncCompactMapSequence<A, B>, &_ss23AsyncCompactMapSequenceVyScGy10CallsAppUI13LegacyMailboxVSgGAEGMd);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    *(v0 + 232) = _swiftEmptyArrayStorage;
    v31 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncCompactMapSequence<TaskGroup<LegacyMailbox?>, LegacyMailbox>.Iterator and conformance AsyncCompactMapSequence<A, B>.Iterator, &_ss23AsyncCompactMapSequenceV8IteratorVyScGy10CallsAppUI13LegacyMailboxVSgGAG_GMd);
    v32 = swift_task_alloc();
    *(v0 + 240) = v32;
    *v32 = v0;
    v32[1] = closure #1 in LegacyMailboxService.fetchLegacyMailboxes();
    v5 = *(v0 + 160);
    v6 = *(v0 + 120);
    v4 = v31;

    return dispatch thunk of AsyncIteratorProtocol.next()(v6, v5, v4);
  }

  **(v0 + 80) = _swiftEmptyArrayStorage;

  v25 = *(v0 + 8);

  return v25();
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[21];
    v3 = v2[22];
    v5 = v2[20];

    (*(v4 + 8))(v3, v5);

    v6 = PHVoicemailInboxListViewController.refreshTableHeaderView();
  }

  else
  {
    v6 = closure #1 in LegacyMailboxService.fetchLegacyMailboxes();
  }

  return (_swift_task_switch)(v6, 0, 0);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 208);
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    (*(v6 + 8))(v4, v5);
    outlined destroy of (NSAttributedStringKey, Any)(v3, &_s10CallsAppUI13LegacyMailboxVSgMd);
    **(v0 + 80) = *(v0 + 232);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = *(v2 + 32);
    v11(v9, v3, v1);
    (*(v2 + 16))(v10, v9, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v0 + 232);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, *(v0 + 232));
    }

    v15 = v13[2];
    v14 = v13[3];
    if (v15 >= v14 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1, v13);
    }

    v16 = *(v0 + 144);
    v17 = *(v0 + 128);
    v18 = *(v0 + 136);
    (*(v18 + 8))(*(v0 + 152), v17);
    v13[2] = v15 + 1;
    v11(v13 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15, v16, v17);
    *(v0 + 232) = v13;
    v19 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncCompactMapSequence<TaskGroup<LegacyMailbox?>, LegacyMailbox>.Iterator and conformance AsyncCompactMapSequence<A, B>.Iterator, &_ss23AsyncCompactMapSequenceV8IteratorVyScGy10CallsAppUI13LegacyMailboxVSgGAG_GMd);
    v20 = swift_task_alloc();
    *(v0 + 240) = v20;
    *v20 = v0;
    v20[1] = closure #1 in LegacyMailboxService.fetchLegacyMailboxes();
    v21 = *(v0 + 160);
    v22 = *(v0 + 120);

    return dispatch thunk of AsyncIteratorProtocol.next()(v22, v21, v19);
  }
}

uint64_t closure #1 in closure #1 in LegacyMailboxService.fetchLegacyMailboxes()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return LegacyMailboxService.legacyMailbox(for:)(a1, a5);
}

uint64_t LegacyMailboxService.legacyMailbox(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return (_swift_task_switch)(LegacyMailboxService.legacyMailbox(for:), 0, 0);
}

uint64_t LegacyMailboxService.legacyMailbox(for:)()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService_voicemailManager);
  v2 = [v1 accounts];
  type metadata accessor for VoicemailAccount();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
LABEL_27:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    v31 = v1;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_28:

LABEL_29:
    v27 = *(v0 + 16);
    v28 = type metadata accessor for LegacyMailbox();
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
    v29 = *(v0 + 8);

    return v29();
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v31 = v1;
  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_3:
  v5 = 0;
  v32 = v3 & 0xFFFFFFFFFFFFFF8;
  v33 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v33)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v32 + 16))
      {
        goto LABEL_26;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    *(v0 + 40) = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v1 = *(v0 + 24);
    v9 = UUID.uuidString.getter();
    v11 = v10;
    v12 = [v1 labelID];
    if (!v12)
    {

      goto LABEL_5;
    }

    v13 = v12;
    v34 = v7;
    v14 = v3;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v9 == v15 && v11 == v17)
    {
      break;
    }

    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = v14;
    v7 = v34;
    if (v1)
    {
      goto LABEL_19;
    }

LABEL_5:

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_28;
    }
  }

  v7 = v34;
LABEL_19:

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v20 = [v31 isAccountSubscribed:isa];

  if ((v20 & 1) != 0 || (v21 = UUID._bridgeToObjectiveC()().super.isa, v22 = [v31 isCallVoicemailSupportedForAccountUUID:v21], v21, !v22))
  {

    goto LABEL_29;
  }

  v23 = swift_task_alloc();
  *(v0 + 48) = v23;
  v23[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v23[2].i64[0] = v7;
  v24 = swift_task_alloc();
  *(v0 + 56) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CallsAppUI13LegacyMailboxVSgMd);
  *v24 = v0;
  v24[1] = LegacyMailboxService.legacyMailbox(for:);
  v26 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v26, 0, 0, 0xD000000000000013, 0x8000000100244160, partial apply for closure #2 in LegacyMailboxService.legacyMailbox(for:), v23, v25);
}

{

  return (_swift_task_switch)(LegacyMailboxService.legacyMailbox(for:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in closure #1 in LegacyMailboxService.fetchLegacyMailboxes()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return (_swift_task_switch)(closure #2 in closure #1 in LegacyMailboxService.fetchLegacyMailboxes(), 0, 0);
}

uint64_t closure #2 in closure #1 in LegacyMailboxService.fetchLegacyMailboxes()()
{
  outlined init with copy of Binding<EditMode>?(v0[3], v0[2], &_s10CallsAppUI13LegacyMailboxVSgMd);
  v1 = v0[1];

  return v1();
}

void closure #2 in LegacyMailboxService.legacyMailbox(for:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10CallsAppUI13LegacyMailboxVSgs5NeverOGMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = LegacyMailboxService.telephonyClient.getter();
  v12 = [a3 context];
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = (v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v13, v10, v6);
  v16 = v22;
  *(v15 + v14) = v22;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in closure #2 in LegacyMailboxService.legacyMailbox(for:);
  *(v17 + 24) = v15;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed NSNumber, @guaranteed String, @guaranteed Error?) -> ();
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed NSNumber, @guaranteed String, @guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_6;
  v18 = _Block_copy(aBlock);
  v19 = v16;
  v20 = a3;

  [v11 getVoicemailInfo:v12 completion:v18];
  _Block_release(v18);
}

uint64_t closure #1 in closure #2 in LegacyMailboxService.legacyMailbox(for:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v39 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CallsAppUI13LegacyMailboxVSgMd);
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for LegacyMailbox();
  v19 = *(v38 - 8);
  __chkstk_darwin(v38);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.mobilePhone);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "LegacyMailboxFetcher: getVoicemailInfo failed with %@", v25, 0xCu);
      outlined destroy of (NSAttributedStringKey, Any)(v26, &_sSo8NSObjectCSgMd);
    }

    (*(v19 + 56))(v14, 1, 1, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10CallsAppUI13LegacyMailboxVSgs5NeverOGMd);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    v36 = a8;
    v37 = a1;
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.mobilePhone);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67109120;
      *(v32 + 4) = v37 & 1;
      _os_log_impl(&_mh_execute_header, v30, v31, "LegacyMailboxFetcher: Voicemail info returned hasUnreadMessages=%{BOOL}d", v32, 8u);
    }

    (*(v16 + 16))(v18, a7 + OBJC_IVAR___MPVoicemailAccount_uuid, v15);
    v33 = [v36 label];
    if (v33)
    {
      v34 = v33;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    LegacyMailbox.init(accountID:label:hasUnreadMessages:)();
    v35 = v38;
    (*(v19 + 16))(v14, v21, v38);
    (*(v19 + 56))(v14, 0, 1, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10CallsAppUI13LegacyMailboxVSgs5NeverOGMd);
    CheckedContinuation.resume(returning:)();
    return (*(v19 + 8))(v21, v35);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed NSNumber, @guaranteed String, @guaranteed Error) -> ()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v13 = a3;
  v12 = a5;
  v8(a2, v13, v9, v11, v12);
}

void LegacyMailboxService.dial(mailbox:)()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() sharedApplication];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    LegacyMailbox.accountID.getter();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v1 + 8))(v3, v0);
    [v5 dialVoicemailWithAccountID:isa];
  }

  else
  {
    v7 = v9;
  }
}

uint64_t LegacyMailboxService.shouldShowGreetingButton.getter()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2)
  {
    return 0;
  }

  if (one-time initialization token for featureFlags != -1)
  {
    goto LABEL_22;
  }

LABEL_4:
  if (TUCallScreeningEnabled())
  {
    return 1;
  }

  v12 = *(isa + OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService_voicemailManager);
  isa = [v12 accounts];
  type metadata accessor for VoicemailAccount();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_24;
    }

    goto LABEL_8;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (v5)
  {
LABEL_8:
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v11 = 1;
          goto LABEL_25;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_22:
          swift_once();
          goto LABEL_4;
        }

        v7 = *(v4 + 8 * v6 + 32);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_19;
        }
      }

      if (*(v7 + OBJC_IVAR___MPVoicemailAccount_provisioned) == 1)
      {
        v9 = v7;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v10 = [v12 isGreetingChangeSupportedForAccountUUID:isa];

        if (v10)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      ++v6;
    }

    while (v8 != v5);
  }

LABEL_24:
  v11 = 0;
LABEL_25:

  return v11;
}

id LegacyMailboxService.greetingViewController.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService_voicemailManager);
  v2 = objc_allocWithZone(VMGreetingChangeViewController);

  return [v2 initWithManager:v1];
}

uint64_t LegacyMailboxService.shouldShowAccountProvisioning.getter()
{
  if (one-time initialization token for isInternalInstall != -1)
  {
LABEL_25:
    swift_once();
  }

  swift_beginAccess();
  if (static Defaults.isInternalInstall != 1)
  {
    lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
    swift_allocError();
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0;
    *(v2 + 72) = 2;
    swift_willThrow();

    goto LABEL_7;
  }

  v1 = specialized Defaults.getValueFromUserDefaults<A>(key:suiteName:)(0xD000000000000014, 0x80000001002405D0, 0, 0);
  if (v1 == 2 || (v1 & 1) == 0)
  {
LABEL_7:
    v3 = [*(v0 + OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService_voicemailManager) accounts];
    type metadata accessor for VoicemailAccount();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      v0 = _CocoaArrayWrapper.endIndex.getter();
      if (v0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v0 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v0)
      {
LABEL_9:
        v5 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v7 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
LABEL_20:
              __break(1u);
LABEL_21:
              v0 = 0;
              break;
            }
          }

          else
          {
            if (v5 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_25;
            }

            v6 = *(v4 + 8 * v5 + 32);
            v7 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              goto LABEL_20;
            }
          }

          if (v6[OBJC_IVAR___MPVoicemailAccount_hasHandle] == 1)
          {
            v8 = v6[OBJC_IVAR___MPVoicemailAccount_provisioned];

            if ((v8 & 1) == 0)
            {
              v0 = 1;
              break;
            }
          }

          else
          {
          }

          ++v5;
          if (v7 == v0)
          {
            goto LABEL_21;
          }
        }
      }
    }

    return v0;
  }

  return 1;
}

id LegacyMailboxService.accountProvisioningViewController.getter()
{
  v1 = [objc_allocWithZone(VMAccountProvisioningViewController) initWithManager:*(v0 + OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService_voicemailManager)];
  v2 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v1];

  return v2;
}

id protocol witness for LegacyMailboxServiceProtocol.greetingViewController.getter in conformance LegacyMailboxService()
{
  v1 = *(*v0 + OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService_voicemailManager);
  v2 = objc_allocWithZone(VMGreetingChangeViewController);

  return [v2 initWithManager:v1];
}

id protocol witness for LegacyMailboxServiceProtocol.accountProvisioningViewController.getter in conformance LegacyMailboxService()
{
  v1 = [objc_allocWithZone(VMAccountProvisioningViewController) initWithManager:*(*v0 + OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService_voicemailManager)];
  v2 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v1];

  return v2;
}

uint64_t protocol witness for LegacyMailboxServiceProtocol.fetchLegacyMailboxes() in conformance LegacyMailboxService()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:);

  return LegacyMailboxService.fetchLegacyMailboxes()();
}

uint64_t LegacyMailboxService.voicemailInfoAvailableNotification(_:voicemailInfo:)()
{
  swift_beginAccess();

  PassthroughSubject.send(_:)();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10CallsAppUI13LegacyMailboxVSg_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10CallsAppUI13LegacyMailboxVSg_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10CallsAppUI13LegacyMailboxVSg_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *specialized LegacyMailboxService.__allocating_init(voicemailManager:)(void *a1, Class a2)
{
  v3 = objc_allocWithZone(a2);

  return specialized LegacyMailboxService.init(voicemailManager:)(a1, v3);
}

char *specialized LegacyMailboxService.init(voicemailManager:)(void *a1, char *a2)
{
  v37 = a1;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v34 = OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService_queue;
  v10 = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v33[1] = &unk_10020C6D0;
  v33[2] = v10;
  static DispatchQoS.userInteractive.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v35);
  *&a2[v34] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&a2[OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService____lazy_storage___telephonyClient] = 0;
  v11 = OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService_changePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  swift_allocObject();
  *&a2[v11] = PassthroughSubject.init()();
  *&a2[OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService_cancellables] = _swiftEmptyArrayStorage;
  v12 = v37;
  *&a2[OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService_voicemailManager] = v37;
  v46.receiver = a2;
  v46.super_class = ObjectType;
  swift_unknownObjectRetain();
  v13 = objc_msgSendSuper2(&v46, "init");
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = partial apply for closure #1 in LegacyMailboxService.init(voicemailManager:);
  v45 = v14;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v42 = thunk for @escaping @callee_guaranteed (@guaranteed VoicemailAccountManagerUpdate, @in_guaranteed UUID?) -> ();
  v43 = &block_descriptor_25;
  v15 = _Block_copy(&aBlock);
  v16 = v13;

  v17 = [v12 listenForChangesWithHandler:v15];
  swift_unknownObjectRelease();
  v43 = swift_getObjectType();
  *&aBlock = v17;
  v18 = OBJC_IVAR____TtC11MobilePhone20LegacyMailboxService_cancellables;
  swift_beginAccess();
  v19 = *&v16[v18];
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v16[v18] = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
    *&v16[v18] = v19;
  }

  v22 = *(v19 + 2);
  v21 = *(v19 + 3);
  if (v22 >= v21 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
  }

  *(v19 + 2) = v22 + 1;
  outlined init with take of Any(&aBlock, &v19[32 * v22 + 32]);
  *&v16[v18] = v19;
  swift_endAccess();
  v23 = [objc_opt_self() defaultCenter];
  v24 = v38;
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, &type metadata accessor for NSNotificationCenter.Publisher);
  v25 = v40;
  v26 = Publisher<>.sink(receiveValue:)();

  (*(v39 + 8))(v24, v25);
  v43 = type metadata accessor for AnyCancellable();
  *&aBlock = v26;
  swift_beginAccess();
  v27 = *&v16[v18];

  v28 = swift_isUniquelyReferenced_nonNull_native();
  *&v16[v18] = v27;
  if ((v28 & 1) == 0)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
    *&v16[v18] = v27;
  }

  v30 = *(v27 + 2);
  v29 = *(v27 + 3);
  if (v30 >= v29 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v27);
  }

  *(v27 + 2) = v30 + 1;
  outlined init with take of Any(&aBlock, &v27[32 * v30 + 32]);
  *&v16[v18] = v27;
  swift_endAccess();
  v31 = LegacyMailboxService.telephonyClient.getter();
  [v31 setDelegate:v16];
  swift_unknownObjectRelease();

  return v16;
}

uint64_t partial apply for closure #1 in LegacyMailboxService.fetchLegacyMailboxes()(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in LegacyMailboxService.fetchLegacyMailboxes()(a1, a2, v7, v6);
}

uint64_t sub_10011C32C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in LegacyMailboxService.fetchLegacyMailboxes()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #1 in closure #1 in LegacyMailboxService.fetchLegacyMailboxes()(a1, v4, v5, v7, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10CallsAppUI13LegacyMailboxVSg_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10CallsAppUI13LegacyMailboxVSg_Tg5(a1, v4);
}

uint64_t sub_10011C4F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10CallsAppUI13LegacyMailboxVSgs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #2 in LegacyMailboxService.legacyMailbox(for:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10CallsAppUI13LegacyMailboxVSgs5NeverOGMd) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v5 + v13);
  v15 = *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #2 in LegacyMailboxService.legacyMailbox(for:)(a1, a2, a3, a4, a5, v5 + v12, v14, v15);
}

uint64_t sub_10011C694()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10011C70C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of TaskPriority?(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSay20FaceTimeMessageStore0G0CG_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of TaskPriority?(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20FaceTimeMessageStore0C0CGMd);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20FaceTimeMessageStore0C0CGMd);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id PhoneRecentsViewController.searchController.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchController;
  v2 = *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchController);
  }

  else
  {
    v4 = PhoneRecentsViewController.searchResultsController.getter();
    v5 = [objc_allocWithZone(UISearchController) initWithSearchResultsController:v4];
    [v5 setSearchResultsUpdater:*(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchResultsController)];
    [v5 setObscuresBackgroundDuringPresentation:0];
    [v5 setDelegate:v0];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id PhoneRecentsViewController.ranker.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___ranker;
  v2 = *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___ranker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___ranker);
  }

  else
  {
    v4 = [objc_allocWithZone(PHContactsSearchResultsRanker) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id PhoneRecentsViewController.contactsSearchManager.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___contactsSearchManager;
  v2 = *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___contactsSearchManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___contactsSearchManager);
  }

  else
  {
    type metadata accessor for ApplicationServices();
    v4 = [swift_getObjCClassFromMetadata() sharedInstance];
    v5 = [v4 suggestedContactStore];

    v6 = PhoneRecentsViewController.ranker.getter();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = objc_allocWithZone(MPContactSearchManager);
    v14[4] = partial apply for implicit closure #2 in implicit closure #1 in PhoneRecentsViewController.contactsSearchManager.getter;
    v14[5] = v7;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed [MPContactSearchResult]) -> (@owned [MPContactSearchResult]);
    v14[3] = &block_descriptor_72;
    v9 = _Block_copy(v14);
    v10 = [v8 initWithType:1 contactStore:v5 searchResultsRanker:v9];

    _Block_release(v9);

    v11 = *(v0 + v1);
    *(v0 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

uint64_t implicit closure #2 in implicit closure #1 in PhoneRecentsViewController.contactsSearchManager.getter(uint64_t a1, void *a2)
{
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for MPContactSearchResult);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [a2 rankContactSearchResults:isa];

  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

id PhoneRecentsViewController.searchResultsController.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in PhoneRecentsViewController.keypadViewController.getter(uint64_t a1)
{
  type metadata accessor for ApplicationServices();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [ObjCClassFromMetadata sharedInstance];
  v4 = [v3 metadataCache];

  v5 = [ObjCClassFromMetadata sharedInstance];
  v6 = [v5 callProviderManager];

  v7 = [ObjCClassFromMetadata sharedInstance];
  v8 = [v7 suggestedContactStore];

  v9 = [objc_allocWithZone(MPKeypadViewController) initWithContactStore:v8 enableSmartDialer:1 orientationProvider:a1];
  [v9 setCallProviderManager:v6];
  [v9 setMetadataCache:v4];
  [v9 setModalPresentationStyle:2];
  [v9 setDelegate:a1];

  return v9;
}

id PhoneRecentsViewController.contactStore.getter()
{
  type metadata accessor for ApplicationServices();
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 contactStore];

  if (v1)
  {
    return v1;
  }

  v3 = objc_allocWithZone(CNContactStore);

  return [v3 init];
}

uint64_t PhoneRecentsViewController.favoritesController.getter()
{
  type metadata accessor for ApplicationServices();
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = (*((swift_isaMask & *v0) + 0x78))();

  return v1;
}

void PhoneRecentsViewController.recentsController.getter()
{
  v0 = [objc_opt_self() sharedApplication];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {

    goto LABEL_5;
  }

  v2 = [v1 recentsController];

  if (!v2)
  {
LABEL_5:
    __break(1u);
  }
}

id PhoneRecentsViewController.callReportingViewModel.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___callReportingViewModel;
  v2 = *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___callReportingViewModel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___callReportingViewModel);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CallReportingViewModel()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *PhoneRecentsViewController.recentsViewController.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PhoneRecentsViewController.recentsViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PhoneRecentsViewController.recentsNavigationController.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    v3 = [result navigationController];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double static PhoneRecentsViewController.preferredWindowMinSize.getter()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 userInterfaceIdiom];

  preferredKeyPadSize(idiom:)();
  return 0.0;
}

uint64_t PhoneRecentsViewController.pendingSearchText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PhoneRecentsViewController.pendingSearchText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t PhoneRecentsViewController.pendingSearchControllerActivation.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchControllerActivation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PhoneRecentsViewController.pendingSearchControllerActivation.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchControllerActivation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for PhoneRecentsViewController.pendingSearchCompletion : PhoneRecentsViewController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchCompletion);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIeg_ytIegr_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable () -> ())?(v4);
}

uint64_t key path setter for PhoneRecentsViewController.pendingSearchCompletion : PhoneRecentsViewController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchCompletion);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> ())?(v3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
}

uint64_t PhoneRecentsViewController.pendingSearchCompletion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchCompletion);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> ())?(*v1);
  return v2;
}

uint64_t PhoneRecentsViewController.pendingSearchCompletion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchCompletion);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

void (*PhoneRecentsViewController.searchNavigationController.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PhoneRecentsViewController.searchNavigationController.getter();
  return PhoneRecentsViewController.searchNavigationController.modify;
}

void PhoneRecentsViewController.searchNavigationController.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchNavigationController);
  *(v1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchNavigationController) = v2;
}

id PhoneRecentsViewController.searchNavigationController.getter(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void (*PhoneRecentsViewController.numberFormatter.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PhoneRecentsViewController.numberFormatter.getter();
  return PhoneRecentsViewController.numberFormatter.modify;
}

void PhoneRecentsViewController.numberFormatter.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___numberFormatter);
  *(v1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___numberFormatter) = v2;
}

void (*PhoneRecentsViewController.searchController.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PhoneRecentsViewController.searchController.getter();
  return PhoneRecentsViewController.searchController.modify;
}

void PhoneRecentsViewController.searchController.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchController);
  *(v1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchController) = v2;
}

void closure #1 in PhoneRecentsViewController.searchResultsController.getter(char *a1)
{
  v2 = [objc_allocWithZone(MPSearchViewController) init];
  [v2 setDelegate:a1];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v28 = partial apply for closure #1 in closure #1 in PhoneRecentsViewController.searchResultsController.getter;
  v29 = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [MPSearchController]);
  v27 = &block_descriptor_114;
  v6 = _Block_copy(aBlock);

  [v2 setSearchControllerProvider:v6];
  _Block_release(v6);
  v7 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  swift_beginAccess();
  v8 = *&a1[v7];
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = [v8 navigationController];
  [v2 setHostingNavigationController:v9];

  v6 = [objc_opt_self() sharedApplication];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_9:

    goto LABEL_10;
  }

  v11 = [v10 recentsController];

  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = PhoneRecentsViewController.callReportingViewModel.getter();
  v13 = type metadata accessor for RecentsDetailPresenter();
  v14 = objc_allocWithZone(v13);
  v15 = OBJC_IVAR___MPRecentsDetailPresenter_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Logger.mobilePhone);
  (*(*(v16 - 8) + 16))(&v14[v15], v17, v16);
  v18 = OBJC_IVAR___MPRecentsDetailPresenter_featureflags;
  *&v14[v18] = [objc_allocWithZone(TUFeatureFlags) init];
  *&v14[OBJC_IVAR___MPRecentsDetailPresenter____lazy_storage___suggestedContactStore] = 1;
  *&v14[OBJC_IVAR___MPRecentsDetailPresenter_recentsController] = v11;
  *&v14[OBJC_IVAR___MPRecentsDetailPresenter_callReportingViewModel] = v12;
  v25.receiver = v14;
  v25.super_class = v13;
  v19 = objc_msgSendSuper2(&v25, "init");
  v20 = *&a1[v7];
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    RecentsViewController.recentsDataSource.getter();

    v27 = v13;
    v28 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type RecentsDetailPresenter and conformance RecentsDetailPresenter, type metadata accessor for RecentsDetailPresenter);
    aBlock[0] = v21;
    type metadata accessor for DetailsPresenter();
    swift_allocObject();
    v23 = v21;
    v24 = a1;
    DetailsPresenter.init(dataSource:presentingViewController:recentsDetailProvider:)();
    MPSearchViewController.detailsPresenter.setter();

    return;
  }

LABEL_11:
  __break(1u);
}

void closure #1 in closure #1 in PhoneRecentsViewController.searchResultsController.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (!v2)
  {

    return;
  }

  v3 = v2;
  v4 = [objc_opt_self() sharedApplication];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    goto LABEL_14;
  }

  v6 = [v5 recentsController];

  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v1;
  v8 = PhoneRecentsViewController.searchNavigationController.getter();
  v9 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  swift_beginAccess();
  v10 = *&v7[v9];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v11 = [v10 navigationController];
  if (!v11)
  {
    v11 = *&v7[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchNavigationController];
  }

  v12 = v7;
  v13 = _s11MobilePhone23SearchTabViewControllerC049searchControllersForDifferentSectionsUsingRecentsF0_4with3and2in017hostingNavigationF0SaySo08MPSearchF0_pGSgSo09PHRecentsF0C_So011MPSuggestedC0_pSo0seF0CSo0brF0CSo012UINavigationF0CtFZTf4nennnn_nAA0bmeF0C_Tt4g5Tf4nndnn_n(v6, v12, v8, v11);

  if (v13)
  {
  }

  else
  {
  }
}

Class thunk for @escaping @callee_guaranteed () -> (@owned [MPSearchController])(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18MPSearchController_pMd);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

void (*PhoneRecentsViewController.searchResultsController.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PhoneRecentsViewController.searchResultsController.getter();
  return PhoneRecentsViewController.searchResultsController.modify;
}

void PhoneRecentsViewController.searchResultsController.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchResultsController);
  *(v1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchResultsController) = v2;
}

id PhoneRecentsViewController.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___ranker] = 0;
  *&v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___contactsSearchManager] = 0;
  *&v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___keypadViewController] = 0;
  *&v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_unreadBadgeSink] = 0;
  *&v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_unreadVoicemailBadgeSink] = 0;
  *&v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_finishedFirstLoadSink] = 0;
  v2 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_voicemailBadgeController;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for PhoneVoicemailBadgeController()) init];
  *&v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_favoritesDataSource] = 0;
  *&v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___callReportingViewModel] = 0;
  *&v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController] = 0;
  v3 = &v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchText];
  *v3 = 0;
  v3[1] = 0;
  v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchControllerActivation] = 0;
  v4 = &v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchCompletion];
  *v4 = 0;
  v4[1] = 0;
  *&v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchNavigationController] = 0;
  *&v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___numberFormatter] = 0;
  *&v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchController] = 0;
  *&v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchResultsController] = 0;
  *&v0[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_handleUrlTask] = 0;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v13, "init");
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 shared];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = partial apply for closure #1 in PhoneRecentsViewController.init();
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@unowned CAUILayout) -> ();
  v12[3] = &block_descriptor_7;
  v10 = _Block_copy(v12);

  [v8 addObserver:v7 onUpdate:v10];
  _Block_release(v10);

  return v7;
}

uint64_t sub_10011E6C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void closure #1 in PhoneRecentsViewController.init()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v42 = v9;
    v45 = v6;
    v12 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
    swift_beginAccess();
    v13 = *&v11[v12];
    v43 = v7;
    v44 = v3;
    v14 = v2;
    if (v13)
    {
      v15 = [v13 navigationController];
    }

    else
    {
      v15 = 0;
    }

    v46 = a1;
    PhoneRecentsViewController.recentsViewController(for:)(a1);
    v16 = *&v11[v12];
    *&v11[v12] = v17;
    v18 = v17;

    Load = RecentsViewController.finishedFirstLoadSubject.getter();
    aBlock = Load;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd);
    v20 = Publisher<>.sink(receiveValue:)();

    *&v11[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_finishedFirstLoadSink] = v20;

    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100209A80;
      v22 = *&v11[v12];
      if (!v22)
      {
        __break(1u);
        goto LABEL_16;
      }

      *(v21 + 32) = v22;
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIViewController);
      v23 = v15;
      v24 = v22;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v23 setViewControllers:isa];
    }

    else
    {
      [v11 setViewController:*&v11[v12] forColumn:1];
    }

    v26 = v46;
    v41 = v15;
    if (!v46)
    {
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v33 = static OS_dispatch_queue.main.getter();
      v34 = swift_allocObject();
      *(v34 + 16) = v11;
      v52 = partial apply for closure #2 in closure #1 in PhoneRecentsViewController.init();
      v53 = v34;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = thunk for @escaping @callee_guaranteed () -> ();
      v51 = &block_descriptor_87;
      v35 = _Block_copy(&aBlock);
      v36 = v11;
      v37 = v42;
      static DispatchQoS.unspecified.getter();
      v47 = _swiftEmptyArrayStorage;
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v32 = v37;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v26 = v46;
      _Block_release(v35);

      v30 = v44;
      (*(v44 + 8))(v5, v14);
      v31 = v43;
      (*(v43 + 8))(v32, v45);

      goto LABEL_13;
    }

    v27 = *&v11[v12];
    if (v27)
    {
      v28 = v27;
      v29 = RecentsViewController.navigationItem.getter();

      [v29 setSearchController:{0, v41}];
      v31 = v43;
      v30 = v44;
      v32 = v42;
LABEL_13:
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v46 = static OS_dispatch_queue.main.getter();
      v38 = swift_allocObject();
      *(v38 + 16) = v11;
      *(v38 + 24) = v26;
      v52 = partial apply for closure #3 in closure #1 in PhoneRecentsViewController.init();
      v53 = v38;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = thunk for @escaping @callee_guaranteed () -> ();
      v51 = &block_descriptor_81;
      v39 = _Block_copy(&aBlock);
      v42 = v11;
      static DispatchQoS.unspecified.getter();
      v47 = _swiftEmptyArrayStorage;
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v40 = v46;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v39);

      (*(v30 + 8))(v5, v14);
      (*(v31 + 8))(v32, v45);

      return;
    }

LABEL_16:
    __break(1u);
  }
}

void PhoneRecentsViewController.recentsViewController(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20FaceTimeMessageStore0cD5QueryOSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v72 - v5;
  v7 = type metadata accessor for RecentsDataSourceConfiguration.CoalescingStrategy();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecentsDataSourceConfiguration();
  v12 = *(v11 - 8);
  v93 = v11;
  v94 = v12;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v77 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v86 = &v72 - v16;
  __chkstk_darwin(v15);
  v18 = &v72 - v17;
  v19 = 0;
  v92 = v8;
  if (a1 == 1)
  {
    v91 = v10;
    v20 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_favoritesDataSource;
    v21 = *(v1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_favoritesDataSource);
    if (!v21)
    {
      type metadata accessor for ApplicationServices();
      v22 = [swift_getObjCClassFromMetadata() sharedInstance];
      (*((swift_isaMask & *v22) + 0x78))();

      type metadata accessor for FavoritesDataSource();
      swift_allocObject();
      v21 = FavoritesDataSource.init(controller:)();
    }

    *(v2 + v20) = v21;

    v19 = *(v2 + v20);

    v10 = v91;
  }

  v23 = [objc_opt_self() sharedApplication];
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {

    goto LABEL_21;
  }

  v91 = v7;
  v84 = v6;
  v85 = v13;
  v25 = [v24 recentsController];

  if (!v25)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v26 = PhoneRecentsViewController.callReportingViewModel.getter();
  v27 = type metadata accessor for RecentsDetailPresenter();
  v28 = objc_allocWithZone(v27);
  v29 = OBJC_IVAR___MPRecentsDetailPresenter_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v82 = v19;
  v83 = v2;
  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.mobilePhone);
  (*(*(v30 - 8) + 16))(&v28[v29], v31, v30);
  v32 = OBJC_IVAR___MPRecentsDetailPresenter_featureflags;
  *&v28[v32] = [objc_allocWithZone(TUFeatureFlags) init];
  *&v28[OBJC_IVAR___MPRecentsDetailPresenter____lazy_storage___suggestedContactStore] = 1;
  *&v28[OBJC_IVAR___MPRecentsDetailPresenter_recentsController] = v25;
  *&v28[OBJC_IVAR___MPRecentsDetailPresenter_callReportingViewModel] = v26;
  v103.receiver = v28;
  v103.super_class = v27;
  v80 = v27;
  v79 = objc_msgSendSuper2(&v103, "init");
  v90 = 0;
  if (a1 == 1)
  {
    v33 = type metadata accessor for LegacyMailboxService();
    type metadata accessor for ApplicationServices();
    v34 = [swift_getObjCClassFromMetadata() sharedInstance];
    v35 = (*((swift_isaMask & *v34) + 0xB8))();

    swift_getObjectType();
    v90 = specialized LegacyMailboxService.__allocating_init(voicemailManager:)(v35, v33);
  }

  v75 = objc_opt_self();
  v36 = [v75 sharedInstance];
  v37 = [v36 conversationManager];

  v38 = *(v92 + 13);
  v39 = v10;
  v74 = enum case for RecentsDataSourceConfiguration.CoalescingStrategy.recents(_:);
  v73 = v38;
  v38(v10);
  RecentsDataSourceConfiguration.init(conversationManager:conversations:callHistoryUsingRecentsController:linksAndSuggestions:messages:coalescingStrategy:showsThirdParty:)();
  v40 = v93;
  v41 = *(v94 + 16);
  v42 = v86;
  v92 = v18;
  v87 = v41;
  v88 = v94 + 16;
  v41(v86, v18, v93);
  v43 = type metadata accessor for MessageStoreQuery();
  v44 = *(v43 - 8);
  v45 = v84;
  v76 = *(v44 + 56);
  v76(v84, 1, 1, v43);
  v72 = type metadata accessor for RecentsItemDataSource();
  v46 = objc_allocWithZone(v72);
  v78 = RecentsItemDataSource.init(configuration:messageQuery:)();
  v89 = 0;
  v81 = a1;
  v47 = a1 == 1;
  v48 = v40;
  if (v47)
  {
    v49 = [v75 sharedInstance];
    v50 = [v49 conversationManager];

    v73(v39, v74, v91);
    RecentsDataSourceConfiguration.init(conversationManager:conversations:callHistoryUsingRecentsController:linksAndSuggestions:messages:coalescingStrategy:showsThirdParty:)();
    v87(v77, v42, v40);
    v51 = v76;
    v76(v45, 1, 1, v43);
    v52 = objc_allocWithZone(v72);
    v53 = RecentsItemDataSource.init(configuration:messageQuery:)();
    (*(v44 + 104))(v45, enum case for MessageStoreQuery.hasReminder(_:), v43);
    v51(v45, 0, 1, v43);
    RecentsItemDataSource.messageQuery.setter();
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSPredicate);
    NSPredicate.init(format:_:)();
    RecentsItemDataSource.preFetchingPredicate.setter();
    v89 = v53;
    RecentsItemDataSource.isRemindersDatasource.setter();
    (*(v94 + 8))(v42, v48);
  }

  v54 = swift_allocObject();
  v55 = v83;
  swift_unknownObjectWeakInit();
  v87(v42, v92, v48);
  v56 = v94;
  v57 = (*(v94 + 80) + 24) & ~*(v94 + 80);
  v58 = (v85 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 16) = v54;
  (*(v56 + 32))(v59 + v57, v42, v48);
  *(v59 + v58) = v81;
  v100 = RecentsDataSourceConfiguration.tabBarUnreadCallCountPublisher.getter();
  v60 = swift_allocObject();
  *(v60 + 16) = partial apply for closure #1 in PhoneRecentsViewController.recentsViewController(for:);
  *(v60 + 24) = v59;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySis5NeverOGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Int, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySis5NeverOGMd);
  v61 = Publisher<>.sink(receiveValue:)();

  *(v55 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_unreadBadgeSink) = v61;

  v100 = (*((swift_isaMask & **(v55 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_voicemailBadgeController)) + 0x68))(v62);
  v63 = swift_allocObject();
  *(v63 + 16) = partial apply for closure #1 in PhoneRecentsViewController.recentsViewController(for:);
  *(v63 + 24) = v59;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy11MobilePhone14VoicemailBadgeCs5NeverOGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<VoicemailBadge, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy11MobilePhone14VoicemailBadgeCs5NeverOGMd);
  v64 = Publisher<>.sink(receiveValue:)();

  *(v55 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_unreadVoicemailBadgeSink) = v64;

  v65 = [objc_opt_self() currentDevice];
  v66 = [v65 userInterfaceIdiom];

  if (v66 == 1)
  {
    PhoneRecentsViewController.searchResultsController.getter(&OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___keypadViewController, closure #1 in PhoneRecentsViewController.keypadViewController.getter);
    swift_allocObject();
    swift_unknownObjectWeakInit();
  }

  v67 = v90;
  v101 = v80;
  v102 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type RecentsDetailPresenter and conformance RecentsDetailPresenter, type metadata accessor for RecentsDetailPresenter);
  v100 = v79;
  v69 = v92;
  v68 = v93;
  if (v67)
  {
    v70 = type metadata accessor for LegacyMailboxService();
    v71 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type LegacyMailboxService and conformance LegacyMailboxService, type metadata accessor for LegacyMailboxService);
  }

  else
  {
    v70 = 0;
    v71 = 0;
    v96 = 0;
    v97 = 0;
  }

  v95 = v67;
  v98 = v70;
  v99 = v71;
  type metadata accessor for RecentsViewController();
  RecentsViewController.__allocating_init(recentsDetailProvider:recentsDataSource:recentsRemindersDataSource:favoritesDataSource:legacyMailboxService:keypadViewController:)();

  (*(v56 + 8))(v69, v68);
}

_BYTE *closure #1 in closure #1 in PhoneRecentsViewController.init()(_BYTE *result)
{
  if (*result == 1)
  {
    v1 = objc_opt_self();
    v2 = [v1 sharedApplication];
    v3 = [v1 sharedApplication];
    v4 = [v3 _launchTestName];

    [v2 finishedTest:v4 waitForCommit:0 extraResults:0];
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      *&result[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_finishedFirstLoadSink] = 0;
    }
  }

  return result;
}

void closure #2 in closure #1 in PhoneRecentsViewController.init()(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = RecentsViewController.navigationItem.getter();

  v6 = PhoneRecentsViewController.searchController.getter();
  [v5 setSearchController:v6];

  v7 = *(a1 + v2);
  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = RecentsViewController.navigationItem.getter();

  [v9 setSearchBarPlacementAllowsToolbarIntegration:0];
  v10 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchControllerActivation;
  swift_beginAccess();
  if (*(a1 + v10) == 1)
  {
    *(a1 + v10) = 0;
    v11 = (a1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchText);
    swift_beginAccess();
    v12 = *v11;
    v13 = v11[1];
    v14 = (a1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchCompletion);
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];

    outlined copy of (@escaping @callee_guaranteed @Sendable () -> ())?(v15);
    PhoneRecentsViewController.startSearching(for:completion:)(v12, v13, v15, v16);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v15);
  }
}

void closure #3 in closure #1 in PhoneRecentsViewController.init()(void *a1, uint64_t a2)
{
  v3 = [a1 tab];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v12 = 0xE000000000000000;
    if (a2)
    {
      v7 = 0x534C4C4143;
      v8 = 0xE500000000000000;
    }

    else
    {
      v7 = 0x53544E45434552;
      v8 = 0xE700000000000000;
    }

    v9.value._countAndFlagsBits = 0x746E656365524850;
    v9.value._object = 0xE900000000000073;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v11 = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, v9, v6, v10, *(&v12 - 1));

    v13 = String._bridgeToObjectiveC()();

    [v4 setTitle:v13];
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned CAUILayout) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

UIImage_optional __swiftcall PhoneRecentsViewController.tabBarIconImage()()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  if (v1)
  {
    v2 = v1;
  }

  else
  {
    __break(1u);
  }

  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

Swift::String __swiftcall PhoneRecentsViewController.tabBarItemTitle()()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0x736C6C6143;
  v3.value._countAndFlagsBits = 0x746E656365524850;
  v2._object = 0xE500000000000000;
  v3.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v9);

  countAndFlagsBits = v5._countAndFlagsBits;
  object = v5._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::Void __swiftcall PhoneRecentsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v21.receiver = v1;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1);
  v3 = createPHPhoneTabBarControllerTabViewDidAppearNotificationInfo(2, v1);
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_opt_self() defaultCenter];
  if (v5)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  [v6 postNotificationName:@"PHPhoneTabBarControllerTabViewDidAppearNotification" object:v7.super.isa];

  swift_unknownObjectRelease();
  v8 = PhoneRecentsViewController.searchResultsController.getter();
  v9 = [v8 hostingNavigationController];

  if (!v9)
  {
    v10 = *&v1[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchResultsController];
    v11 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
    swift_beginAccess();
    v12 = *&v1[v11];
    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = v10;
    v9 = [v12 navigationController];
    [v13 setHostingNavigationController:v9];
  }

  v14 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchControllerActivation;
  swift_beginAccess();
  if (v1[v14] == 1)
  {
    v1[v14] = 0;
    v15 = &v1[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchText];
    swift_beginAccess();
    v17 = *v15;
    v16 = v15[1];
    v18 = &v1[OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchCompletion];
    swift_beginAccess();
    v20 = *v18;
    v19 = v18[1];

    outlined copy of (@escaping @callee_guaranteed @Sendable () -> ())?(v20);
    PhoneRecentsViewController.startSearching(for:completion:)(v17, v16, v20, v19);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v20);
  }
}

uint64_t closure #1 in PhoneRecentsViewController.recentsViewController(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v21 = *(v8 - 8);
  v22 = v8;
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecentsDataSourceConfiguration();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v19 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v14 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  (*(v12 + 32))(v15 + v14, &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v15 + ((v13 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  aBlock[4] = partial apply for closure #1 in closure #1 in PhoneRecentsViewController.recentsViewController(for:);
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_104;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = v19;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v23 + 8))(v7, v5);
  (*(v21 + 8))(v10, v22);
}

void closure #1 in closure #1 in PhoneRecentsViewController.recentsViewController(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    CurrentValueSubject.value.getter();

    v6 = *(v31[0] + OBJC_IVAR____TtC11MobilePhone14VoicemailBadge_count);
    v7 = RecentsDataSourceConfiguration.tabBarUnreadCallCount.getter();
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.mobilePhone);
    v9 = v31[0];
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v30 = v6;
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v12 = 136315906;
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v31);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v31);

      *(v12 + 14) = v18;
      *(v12 + 22) = 2080;
      v19 = String.init<A>(reflecting:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v31);

      *(v12 + 24) = v21;
      *(v12 + 32) = 2080;
      type metadata accessor for CAUILayout(0);
      v22 = String.init<A>(reflecting:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v31);

      *(v12 + 34) = v24;
      _os_log_impl(&_mh_execute_header, v10, v11, "PhoneRecentsViewController updating badge with voicemailCount: %s, recentsCount: %s, known: %s layout: %s", v12, 0x2Au);
      swift_arrayDestroy();
    }

    if (a3 == 1)
    {
      v25 = __OFADD__(v30, v7);
      v7 += v30;
      if (v25)
      {
        __break(1u);
        return;
      }

      v26 = *(v9 + OBJC_IVAR____TtC11MobilePhone14VoicemailBadge_known);
    }

    else
    {
      v26 = 1;
    }

    PhoneRecentsViewController.updateTabBarBadgeCount(to:known:)(v7, v26);
    v27 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
    swift_beginAccess();
    v28 = *&v5[v27];
    if (v28)
    {
      v29 = v28;
      RecentsViewController.hasLegacyUnreadVoicemails.setter();

      v5 = v29;
    }
  }
}

void PhoneRecentsViewController.updateTabBarBadgeCount(to:known:)(Swift::Int a1, char a2)
{
  v3 = v2;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.mobilePhone);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v28);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v28);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Setting tab bar item badge value to %s known: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  if (a1 > 0)
  {
    v16 = PhoneRecentsViewController.numberFormatter.getter();
    type metadata accessor for NSMutableArray(0, lazy cache variable for type metadata for NSNumber);
    isa = NSNumber.init(integerLiteral:)(a1).super.super.isa;
    v18 = [v16 stringFromNumber:isa];

    if (v18)
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    v24 = [v3 tabBarItem];
    v25 = v24;
    if (a2)
    {
      if (v24)
      {
        v23 = String._bridgeToObjectiveC()();
LABEL_17:

        [v25 setBadgeValue:v23];

        goto LABEL_20;
      }

      __break(1u);
    }

    else if (v24)
    {
      v28[0] = v19;
      v28[1] = v21;

      v26._countAndFlagsBits = 43;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);

      v23 = String._bridgeToObjectiveC()();
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_23;
  }

  v22 = [v3 tabBarItem];
  v23 = v22;
  if (a2)
  {
    if (v22)
    {
      [v22 setBadgeValue:0];
LABEL_20:

      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22)
  {
    v27 = String._bridgeToObjectiveC()();
    [v23 setBadgeValue:v27];

    v23 = v27;
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

void closure #4 in PhoneRecentsViewController.recentsViewController(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = PhoneRecentsViewController.searchResultsController.getter(&OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___keypadViewController, closure #1 in PhoneRecentsViewController.keypadViewController.getter);
    [v2 reloadButtons];
  }
}

void PhoneRecentsViewController.handle(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v49 - v3;
  v5 = type metadata accessor for UUID();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  v7 = __chkstk_darwin(v5);
  v8 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v49 - v10;
  __chkstk_darwin(v9);
  v13 = &v49 - v12;
  v14 = URL.scheme.getter();
  if (v15)
  {
    if (v14 == 0x776F68736D76 && v15 == 0xE600000000000000)
    {

      goto LABEL_6;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
LABEL_6:
      URL._bridgeToObjectiveC()(v16);
      v19 = v18;
      v20 = [v18 voicemailMessageUUID];

      if (v20)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = v50;
        v22 = *(v50 + 32);
        v22(v13, v11, v5);
        v23 = type metadata accessor for TaskPriority();
        (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
        v24 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v49 = v4;
        v25 = v1;
        v26 = v21 + 16;
        (*(v21 + 16))(v8, v13, v5);
        type metadata accessor for MainActor();

        v27 = static MainActor.shared.getter();
        v28 = (*(v26 + 64) + 40) & ~*(v26 + 64);
        v29 = swift_allocObject();
        *(v29 + 2) = v27;
        *(v29 + 3) = &protocol witness table for MainActor;
        *(v29 + 4) = v24;
        v22(&v29[v28], v8, v5);

        v30 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v49, &async function pointer to partial apply for closure #1 in PhoneRecentsViewController.handle(_:), v29);
        v31 = *(v25 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_handleUrlTask);
        *(v25 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_handleUrlTask) = v30;
        if (v31)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
          Task.cancel()();
        }

        (*(v50 + 8))(v13, v5);
      }

      return;
    }
  }

  v32 = URL.scheme.getter();
  if (!v33)
  {
    return;
  }

  if (v32 == 0xD000000000000013 && v33 == 0x80000001002441C0)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      return;
    }
  }

  URL._bridgeToObjectiveC()(v34);
  v37 = v36;
  v38 = [v36 recentsUniqueID];

  if (v38)
  {
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v42 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v42)
    {
      v43 = type metadata accessor for TaskPriority();
      (*(*(v43 - 8) + 56))(v4, 1, 1, v43);
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v45 = static MainActor.shared.getter();
      v46 = swift_allocObject();
      v46[2] = v45;
      v46[3] = &protocol witness table for MainActor;
      v46[4] = v44;
      v46[5] = v39;
      v46[6] = v41;

      v47 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #2 in PhoneRecentsViewController.handle(_:), v46);
      v48 = *(v1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_handleUrlTask);
      *(v1 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_handleUrlTask) = v47;
      if (v48)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
        Task.cancel()();
      }
    }

    else
    {
    }
  }
}

uint64_t closure #1 in PhoneRecentsViewController.handle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[10] = type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v7;
  v5[13] = v6;

  return (_swift_task_switch)(closure #1 in PhoneRecentsViewController.handle(_:), v7, v6);
}

uint64_t closure #1 in PhoneRecentsViewController.handle(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (!Strong)
  {

    v4 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[15] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[16] = v3;
  v0[17] = v2;

  return (_swift_task_switch)(closure #1 in PhoneRecentsViewController.handle(_:), v3, v2);
}

{
  v1 = v0[14];
  v2 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[18] = v4;
  if (v4)
  {
    v4;
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = closure #1 in PhoneRecentsViewController.handle(_:);
    v3 = v0[9];
  }

  else
  {
    __break(1u);
  }

  return RecentsViewController.presentVoicemailDetails(uuid:)(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 144);

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return (_swift_task_switch)(closure #1 in PhoneRecentsViewController.handle(_:), v4, v3);
}

{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return (_swift_task_switch)(closure #1 in PhoneRecentsViewController.handle(_:), v1, v2);
}

uint64_t PhoneRecentsViewController.presentVoicemailDetails(uuid:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return (_swift_task_switch)(PhoneRecentsViewController.presentVoicemailDetails(uuid:), v4, v3);
}

uint64_t PhoneRecentsViewController.presentVoicemailDetails(uuid:)()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[10] = v4;
  if (v4)
  {
    v4;
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = PhoneRecentsViewController.presentVoicemailDetails(uuid:);
    v3 = v0[5];
  }

  else
  {
    __break(1u);
  }

  return RecentsViewController.presentVoicemailDetails(uuid:)(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return (_swift_task_switch)(PhoneRecentsViewController.presentVoicemailDetails(uuid:), v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in PhoneRecentsViewController.handle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[12] = v8;
  v6[13] = v7;

  return (_swift_task_switch)(closure #2 in PhoneRecentsViewController.handle(_:), v8, v7);
}

uint64_t closure #2 in PhoneRecentsViewController.handle(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
    v3 = Strong;
    v4 = swift_beginAccess();
    v6 = *(v3 + v2);
    v0[15] = v6;
    if (v6)
    {
      v6;
      v7 = swift_task_alloc();
      v0[16] = v7;
      *v7 = v0;
      v7[1] = closure #2 in PhoneRecentsViewController.handle(_:);
      v5 = v0[10];
      v4 = v0[9];
    }

    else
    {
      __break(1u);
    }

    return RecentsViewController.presentCallHistoryDetails(uniqueID:)(v4, v5);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 120);

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return (_swift_task_switch)(closure #2 in PhoneRecentsViewController.handle(_:), v4, v3);
}

{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t @objc closure #1 in PhoneRecentsViewController.presentVoicemailDetails(uuid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for UUID();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for MainActor();
  v3[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in PhoneRecentsViewController.presentVoicemailDetails(uuid:), v6, v5);
}

uint64_t @objc closure #1 in PhoneRecentsViewController.presentVoicemailDetails(uuid:)()
{
  v1 = v0[6];
  v2 = v0[7];

  v0[13] = _Block_copy(v1);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v0[14] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[15] = v5;
  v0[16] = v4;

  return (_swift_task_switch)(@objc closure #1 in PhoneRecentsViewController.presentVoicemailDetails(uuid:), v5, v4);
}

{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[17] = v4;
  if (v4)
  {
    v4;
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = @objc closure #1 in PhoneRecentsViewController.presentVoicemailDetails(uuid:);
    v3 = v0[10];
  }

  else
  {
    __break(1u);
  }

  return RecentsViewController.presentVoicemailDetails(uuid:)(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 136);

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return (_swift_task_switch)(@objc closure #1 in PhoneRecentsViewController.presentVoicemailDetails(uuid:), v4, v3);
}

{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];

  (*(v3 + 8))(v2, v4);
  v1[2](v1);
  _Block_release(v1);

  v6 = v0[1];

  return v6();
}

uint64_t PhoneRecentsViewController.presentCallHistoryDetails(uniqueId:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v5;
  v3[10] = v4;

  return (_swift_task_switch)(PhoneRecentsViewController.presentCallHistoryDetails(uniqueId:), v5, v4);
}

uint64_t PhoneRecentsViewController.presentCallHistoryDetails(uniqueId:)()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  v3 = swift_beginAccess();
  v5 = *(v1 + v2);
  v0[11] = v5;
  if (v5)
  {
    v5;
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = PhoneRecentsViewController.presentCallHistoryDetails(uniqueId:);
    v4 = v0[6];
    v3 = v0[5];
  }

  else
  {
    __break(1u);
  }

  return RecentsViewController.presentCallHistoryDetails(uniqueID:)(v3, v4);
}

{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return (_swift_task_switch)(PhoneRecentsViewController.presentCallHistoryDetails(uniqueId:), v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in PhoneRecentsViewController.presentCallHistoryDetails(uniqueId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v3[10] = type metadata accessor for MainActor();
  v3[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in PhoneRecentsViewController.presentCallHistoryDetails(uniqueId:), v5, v4);
}

uint64_t @objc closure #1 in PhoneRecentsViewController.presentCallHistoryDetails(uniqueId:)()
{
  v1 = v0[8];
  v2 = v0[9];

  v0[12] = _Block_copy(v1);
  v0[5] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0[6] = v3;
  v4 = v2;
  v0[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[14] = v6;
  v0[15] = v5;

  return (_swift_task_switch)(@objc closure #1 in PhoneRecentsViewController.presentCallHistoryDetails(uniqueId:), v6, v5);
}

{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  v3 = swift_beginAccess();
  v5 = *(v1 + v2);
  v0[16] = v5;
  if (v5)
  {
    v7 = v0[5];
    v6 = v0[6];
    v0[17] = v6;
    v5;
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = @objc closure #1 in PhoneRecentsViewController.presentCallHistoryDetails(uniqueId:);
    v3 = v7;
    v4 = v6;
  }

  else
  {
    __break(1u);
  }

  return RecentsViewController.presentCallHistoryDetails(uniqueID:)(v3, v4);
}

{
  v1 = *v0;
  v2 = *(*v0 + 128);

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return (_swift_task_switch)(@objc closure #1 in PhoneRecentsViewController.presentCallHistoryDetails(uniqueId:), v4, v3);
}

{
  v1 = v0[12];
  v2 = v0[9];

  v1[2](v1);
  _Block_release(v1);
  v3 = v0[1];

  return v3();
}

uint64_t PhoneRecentsViewController.showVoicemails()(unsigned int *a1)
{
  v3 = type metadata accessor for FilterMenuViewModel.Action();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  result = swift_beginAccess();
  v9 = *(v1 + v7);
  if (v9)
  {
    (*(v4 + 104))(v6, *a1, v3);
    v10 = v9;
    RecentsViewController.update(filterMode:animated:)();

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t @objc PhoneRecentsViewController.showVoicemails()(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = type metadata accessor for FilterMenuViewModel.Action();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  result = swift_beginAccess();
  v11 = *&a1[v9];
  if (v11)
  {
    (*(v6 + 104))(v8, *a3, v5);
    v12 = a1;
    v13 = v11;
    RecentsViewController.update(filterMode:animated:)();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall PhoneRecentsViewController.makeSearchBarActive()()
{
  v1 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    RecentsViewController.makeSearchActive()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t PhoneRecentsViewController.__ivar_destroyer()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchCompletion));
}

Swift::Void __swiftcall PhoneRecentsViewController.presentSearchForNumber(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = objc_allocWithZone(type metadata accessor for KeypadSearchViewController());
  v4 = KeypadSearchViewController.init(onDismiss:)(0, 0);
  if ([v4 isViewLoaded])
  {
    v5 = KeypadSearchViewController.searchBar.getter();
    v6 = String._bridgeToObjectiveC()();
    [v5 setText:v6];

    v7 = KeypadSearchViewController.keypadSearchResultsController.getter();
    v8 = *&v4[OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar];
    MPSearchViewController.updateSearchResults(for:)(v8);
  }

  else
  {
    v9 = &v4[OBJC_IVAR___MPKeypadSearchViewController_pendingText];
    *v9 = countAndFlagsBits;
    v9[1] = object;
  }

  v10 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v4];

  v11 = v10;
  [v11 setModalPresentationStyle:3];
  [v11 setModalTransitionStyle:2];

  v12 = PhoneRecentsViewController.searchResultsController.getter(&OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___keypadViewController, closure #1 in PhoneRecentsViewController.keypadViewController.getter);
  [v12 presentViewController:v11 animated:1 completion:0];
}

uint64_t PhoneRecentsViewController.keyPadSearch(for:shouldRefreshResult:completionHandler:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v35 = a1;
  v36 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v33 = &v31 - v9;
  v11 = type metadata accessor for Date();
  v32 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v18 = PhoneRecentsViewController.contactsSearchManager.getter();
  [v18 cancelPreviousSearch];

  Date.init()();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  (*(v12 + 16))(v15, v17, v11);
  type metadata accessor for MainActor();
  v20 = v5;
  v21 = a2;

  v22 = a4;
  v23 = a4;
  v24 = v34;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> ())?(v23);
  v25 = static MainActor.shared.getter();
  v26 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = &protocol witness table for MainActor;
  v28 = v35;
  *(v27 + 32) = v20;
  *(v27 + 40) = v28;
  *(v27 + 48) = v21;
  *(v27 + 56) = v36;
  *(v27 + 64) = v22;
  *(v27 + 72) = v24;
  v29 = v32;
  (*(v12 + 32))(v27 + v26, v15, v32);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v33, &async function pointer to partial apply for closure #1 in PhoneRecentsViewController.keyPadSearch(for:shouldRefreshResult:completionHandler:), v27);

  return (*(v12 + 8))(v17, v29);
}

uint64_t closure #1 in PhoneRecentsViewController.keyPadSearch(for:shouldRefreshResult:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 184) = v13;
  *(v8 + 192) = v14;
  *(v8 + 248) = a7;
  *(v8 + 168) = a6;
  *(v8 + 176) = a8;
  *(v8 + 152) = a4;
  *(v8 + 160) = a5;
  type metadata accessor for MainActor();
  *(v8 + 200) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 208) = v10;
  *(v8 + 216) = v9;

  return (_swift_task_switch)(closure #1 in PhoneRecentsViewController.keyPadSearch(for:shouldRefreshResult:completionHandler:), v10, v9);
}

uint64_t closure #1 in PhoneRecentsViewController.keyPadSearch(for:shouldRefreshResult:completionHandler:)()
{
  v1 = *(v0 + 248);
  v2 = PhoneRecentsViewController.contactsSearchManager.getter();
  *(v0 + 224) = v2;
  v3 = String._bridgeToObjectiveC()();
  *(v0 + 232) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = closure #1 in PhoneRecentsViewController.keyPadSearch(for:shouldRefreshResult:completionHandler:);
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo21MPContactSearchResultCGs5Error_pGMd);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [MPContactSearchResult];
  *(v0 + 104) = &block_descriptor_66;
  *(v0 + 112) = v4;
  [v2 searchFor:v3 shouldRefreshResult:v1 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = closure #1 in PhoneRecentsViewController.keyPadSearch(for:shouldRefreshResult:completionHandler:);
  }

  else
  {
    v5 = closure #1 in PhoneRecentsViewController.keyPadSearch(for:shouldRefreshResult:completionHandler:);
  }

  return (_swift_task_switch)(v5, v4, v3);
}

{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[22];

  v4 = v0[18];

  if (v3)
  {
    v5 = v0[22];

    v5(v6, 0);
  }

  v7 = [objc_opt_self() shared];
  v8.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v9 = String.count.getter();
  if (v4 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v7 searchFinishedForController:7 startTime:v8.super.isa searchLength:v9 resultsCount:v10];

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[29];
  v2 = v0[28];
  v3 = v0[22];

  swift_willThrow();

  if (v3)
  {
    v4 = v0[30];
    v5 = v0[22];
    swift_errorRetain();
    v5(0, v4);
  }

  v6 = [objc_opt_self() shared];
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v6 searchFinishedForController:7 startTime:isa searchLength:String.count.getter() resultsCount:0];

  v8 = v0[1];

  return v8();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [MPContactSearchResult](uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for MPContactSearchResult);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> ()(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for MPContactSearchResult);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

Swift::Bool __swiftcall PhoneRecentsViewController.handleUserActivityContinuation(_:)(NSUserActivity_optional a1)
{
  if (!a1.value.super.isa)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  isa = a1.value.super.isa;
  v3 = [(objc_class *)a1.value.super.isa activityType];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = [(objc_class *)isa userInfo];
  if (v7)
  {
    v8 = v7;
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v10)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v40.value._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40.value._object = v13;
    AnyHashable.init<A>(_:)();
    if (*(v9 + 16) && (v14 = v1, v15 = specialized __RawDictionaryStorage.find<A>(_:)(v41), (v16 & 1) != 0))
    {
      outlined init with copy of Any(*(v9 + 56) + 32 * v15, v42);
      outlined destroy of AnyHashable(v41);
      if (swift_dynamicCast())
      {
        v17 = (v40.value._object >> 56) & 0xF;
        if ((v40.value._object & 0x2000000000000000) == 0)
        {
          v17 = v40.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          v18 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
          LOBYTE(a1.value.super.isa) = swift_beginAccess();
          v19 = *(v1 + v18);
          if (!v19)
          {
LABEL_67:
            __break(1u);
            return a1.value.super.isa;
          }

          v20 = v19;

          RecentsViewController.startSearching(for:)(v40);

          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v21;
          AnyHashable.init<A>(_:)();
          if (!*(v9 + 16) || (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v41), (v23 & 1) == 0))
          {

            outlined destroy of AnyHashable(v41);
            LOBYTE(a1.value.super.isa) = 1;
            return a1.value.super.isa;
          }

          outlined init with copy of Any(*(v9 + 56) + 32 * v22, v42);
          outlined destroy of AnyHashable(v41);

          if ((swift_dynamicCast() & 1) == 0)
          {
            LOBYTE(a1.value.super.isa) = 1;
            return a1.value.super.isa;
          }

          v24 = [objc_allocWithZone(CHManager) init];
          v25 = objc_opt_self();
          v26 = String._bridgeToObjectiveC()();

          v27 = [v25 predicateForCallsWithUniqueID:v26];

          v28 = [v24 callsWithPredicate:v27 limit:0 offset:0 batchSize:0];
          type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
          v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v29 >> 62)
          {
LABEL_50:
            v1 = v14;
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_22:
              if ((v29 & 0xC000000000000001) != 0)
              {
                v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_62;
                }

                v30 = *(v29 + 32);
              }

              v28 = v30;

              v31 = PhoneRecentsViewController.searchResultsController.getter();
              v32 = [v31 searchControllers];

              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18MPSearchController_pMd);
              v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v41[0] = _swiftEmptyArrayStorage;
              if (v29 >> 62)
              {
                v33 = _CocoaArrayWrapper.endIndex.getter();
                if (v33)
                {
LABEL_27:
                  v34 = 0;
                  v1 = _swiftEmptyArrayStorage;
                  do
                  {
                    v14 = v34;
                    while (1)
                    {
                      if ((v29 & 0xC000000000000001) != 0)
                      {
                        specialized _ArrayBuffer._getElementSlowPath(_:)();
                        v34 = (v14 + 1);
                        if (__OFADD__(v14, 1))
                        {
                          goto LABEL_48;
                        }
                      }

                      else
                      {
                        if (v14 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_49;
                        }

                        swift_unknownObjectRetain();
                        v34 = (v14 + 1);
                        if (__OFADD__(v14, 1))
                        {
LABEL_48:
                          __break(1u);
LABEL_49:
                          __break(1u);
                          goto LABEL_50;
                        }
                      }

                      type metadata accessor for CallsSearchController();
                      if (swift_dynamicCastClass())
                      {
                        break;
                      }

                      swift_unknownObjectRelease();
                      v14 = (v14 + 1);
                      if (v34 == v33)
                      {
                        goto LABEL_55;
                      }
                    }

                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    v1 = v41[0];
                  }

                  while (v34 != v33);
LABEL_55:

                  if (!(v1 >> 62))
                  {
                    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
LABEL_57:
                      if ((v1 & 0xC000000000000001) != 0)
                      {
                        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        goto LABEL_60;
                      }

                      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        v35 = *(v1 + 32);
LABEL_60:
                        v36 = v35;

                        CallsSearchController.showRecentCall(_:)(v28);

                        LOBYTE(a1.value.super.isa) = 1;
                        return a1.value.super.isa;
                      }

                      __break(1u);
                      goto LABEL_66;
                    }

LABEL_63:

                    LOBYTE(a1.value.super.isa) = 1;
                    return a1.value.super.isa;
                  }

LABEL_62:
                  a1.value.super.isa = _CocoaArrayWrapper.endIndex.getter();
                  if (a1.value.super.isa)
                  {
                    goto LABEL_57;
                  }

                  goto LABEL_63;
                }
              }

              else
              {
                v33 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v33)
                {
                  goto LABEL_27;
                }
              }

              v1 = _swiftEmptyArrayStorage;
              goto LABEL_55;
            }
          }

          else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          LOBYTE(a1.value.super.isa) = 1;
          return a1.value.super.isa;
        }
      }
    }

    else
    {
      outlined destroy of AnyHashable(v41);
    }

LABEL_43:
  }

  LOBYTE(a1.value.super.isa) = 0;
  return a1.value.super.isa;
}

id @objc PhoneRecentsViewController.tabBarItemTitle()()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v8._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0x736C6C6143;
  v3.value._countAndFlagsBits = 0x746E656365524850;
  v2._object = 0xE500000000000000;
  v3.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v8);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

void @objc PhoneRecentsViewController.tabBarItemImage()()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  if (v1)
  {

    v2 = v1;
  }

  else
  {
    __break(1u);
  }
}

Class thunk for @escaping @callee_guaranteed (@guaranteed [MPContactSearchResult]) -> (@owned [MPContactSearchResult])(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for MPContactSearchResult);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

unint64_t _s11MobilePhone23SearchTabViewControllerC049searchControllersForDifferentSectionsUsingRecentsF0_4with3and2in017hostingNavigationF0SaySo08MPSearchF0_pGSgSo09PHRecentsF0C_So011MPSuggestedC0_pSo0seF0CSo0brF0CSo012UINavigationF0CtFZTf4nennnn_nAA0bmeF0C_Tt4g5Tf4nndnn_n(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v58 = _swiftEmptyArrayStorage;
  type metadata accessor for ApplicationServices();
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  v9 = [objc_allocWithZone(MPSuggestionsSearchTableViewController) init];
  [v9 setSuggestionsDelegate:a2];
  v10 = v9;
  v11 = [v8 callProviderManager];
  v12 = [objc_allocWithZone(MPSuggestionsSearchController) initWithTableViewController:v10 callProviderManager:v11];
  v53 = v10;

  v13 = v12;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v52 = v13;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v14 = [objc_opt_self() callHistoryControllerWithCoalescingStrategy:objc_msgSend(a1 options:{"callHistoryControllerCoalescingStrategy"), objc_msgSend(a1, "callHistoryControllerOptions")}];
  [v14 boostQualityOfService];
  v15 = v14;
  v16 = [a1 callProviderManager];
  v17 = [a1 contactStore];
  v18 = [a1 suggestedContactStore];
  v19 = [a1 metadataCache];
  v20 = [objc_allocWithZone(PHRecentsController) initWithCallHistoryController:v15 callProviderManager:v16 contactStore:v17 suggestedContactStore:v18 metadataCache:v19];
  v51 = v15;

  v21 = type metadata accessor for CallsSearchController();
  objc_allocWithZone(v21);
  v22 = objc_allocWithZone(TUFeatureFlags);
  v23 = v20;
  v24 = [v22 init];
  v25 = objc_allocWithZone(v21);
  v50 = v23;
  v26 = CallsSearchController.init(recentsController:featureFlags:)(v23, v24);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v27 = v26;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v28 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v29 = *((swift_isaMask & *v8) + 0x98);
  v30 = (v29)(v28);
  [a3 setVoicemailController:v30];

  v31 = v29();
  v32 = objc_allocWithZone(type metadata accessor for VoicemailsSearchController());
  v33 = v31;
  v34 = VoicemailsSearchController.init(navigationController:voicemailController:)(a3, v33);
  [*&v34[OBJC_IVAR___MPVoicemailsSearchController_voicemailsTableViewController] setHostingNavigationController:a4];

  v35 = v34;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v36 = [objc_allocWithZone(PHContactsSearchResultsRanker) init];
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  v38 = swift_allocObject();
  *(v38 + 16) = v8;
  v39 = swift_allocObject();
  *(v39 + 16) = v8;
  v40 = objc_allocWithZone(MPContactsSearchController);
  aBlock[4] = closure #1 in static SearchTabViewController.searchControllersForDifferentSectionsUsingRecentsController(_:with:and:in:hostingNavigationController:);
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CNContact) -> (@owned CNContactViewController);
  aBlock[3] = &block_descriptor_126;
  v41 = _Block_copy(aBlock);
  v56[4] = partial apply for implicit closure #2 in implicit closure #1 in PhoneRecentsViewController.contactsSearchManager.getter;
  v56[5] = v37;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 1107296256;
  v56[2] = thunk for @escaping @callee_guaranteed (@guaranteed [MPContactSearchResult]) -> (@owned [MPContactSearchResult]);
  v56[3] = &block_descriptor_129;
  v42 = _Block_copy(v56);
  v55[4] = partial apply for closure #2 in static SearchTabViewController.searchControllersForDifferentSectionsUsingRecentsController(_:with:and:in:hostingNavigationController:);
  v55[5] = v38;
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 1107296256;
  v55[2] = thunk for @escaping @callee_guaranteed (@guaranteed CNContact) -> (@owned CNContactViewController);
  v55[3] = &block_descriptor_132;
  v43 = _Block_copy(v55);
  v54[4] = partial apply for closure #3 in static SearchTabViewController.searchControllersForDifferentSectionsUsingRecentsController(_:with:and:in:hostingNavigationController:);
  v54[5] = v39;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 1107296256;
  v54[2] = thunk for @escaping @callee_guaranteed () -> (@owned TUCallProviderManager);
  v54[3] = &block_descriptor_135;
  v44 = _Block_copy(v54);
  v45 = v8;
  v46 = v36;
  v47 = [v40 initWithContactSearchType:0 contactViewControllerProvider:v41 searchResultsRanker:v42 senderIdentityProvider:v43 callProviderManagerProvider:v44];
  _Block_release(v43);
  _Block_release(v42);
  _Block_release(v41);
  _Block_release(v44);

  v48 = v47;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v58;
}

void specialized PhoneRecentsViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___ranker) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___contactsSearchManager) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___keypadViewController) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_unreadBadgeSink) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_unreadVoicemailBadgeSink) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_finishedFirstLoadSink) = 0;
  v1 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_voicemailBadgeController;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for PhoneVoicemailBadgeController()) init];
  *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_favoritesDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___callReportingViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController) = 0;
  v2 = (v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchText);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchControllerActivation) = 0;
  v3 = (v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_pendingSearchCompletion);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchNavigationController) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___numberFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchController) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchResultsController) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_handleUrlTask) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001253AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #2 in PhoneRecentsViewController.handle(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #2 in PhoneRecentsViewController.handle(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001254BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in PhoneRecentsViewController.handle(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in PhoneRecentsViewController.handle(_:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100125680()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  v5 = (v3 + 80) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v4, v3 | 7);
}

uint64_t partial apply for closure #1 in PhoneRecentsViewController.keyPadSearch(for:shouldRefreshResult:completionHandler:)(uint64_t a1)
{
  type metadata accessor for Date();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #1 in PhoneRecentsViewController.keyPadSearch(for:shouldRefreshResult:completionHandler:)(a1, v3, v4, v5, v6, v7, v8, v9);
}

id sub_1001258EC@<X0>(void *a1@<X8>)
{
  result = PhoneRecentsViewController.searchNavigationController.getter();
  *a1 = result;
  return result;
}

void sub_100125918(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchNavigationController);
  *(*a2 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchNavigationController) = *a1;
  v3 = v2;
}

id sub_100125968@<X0>(void *a1@<X8>)
{
  result = PhoneRecentsViewController.numberFormatter.getter();
  *a1 = result;
  return result;
}

void sub_100125994(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___numberFormatter);
  *(*a2 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___numberFormatter) = *a1;
  v3 = v2;
}

id sub_1001259E4@<X0>(void *a1@<X8>)
{
  result = PhoneRecentsViewController.searchController.getter();
  *a1 = result;
  return result;
}

void sub_100125A10(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchController);
  *(*a2 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchController) = *a1;
  v3 = v2;
}

id sub_100125A60@<X0>(void *a1@<X8>)
{
  result = PhoneRecentsViewController.searchResultsController.getter();
  *a1 = result;
  return result;
}

void sub_100125A8C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchResultsController);
  *(*a2 + OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController____lazy_storage___searchResultsController) = *a1;
  v3 = v2;
}

uint64_t sub_100125B00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t partial apply for @objc closure #1 in PhoneRecentsViewController.presentCallHistoryDetails(uniqueId:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in PhoneRecentsViewController.presentCallHistoryDetails(uniqueId:)(v2, v3, v4);
}

uint64_t objectdestroy_31Tm()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in PhoneRecentsViewController.presentVoicemailDetails(uuid:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in PhoneRecentsViewController.presentVoicemailDetails(uuid:)(v2, v3, v4);
}

uint64_t sub_100125CF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100125E80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_90Tm()
{
  v1 = type metadata accessor for RecentsDataSourceConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in PhoneRecentsViewController.recentsViewController(for:)(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for RecentsDataSourceConfiguration() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_1001260C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100126108()
{

  return _swift_deallocObject(v0, 24, 7);
}

void CallsSearchController.showRecentCall(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CallsAppServices8CallInfoVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for RecentsItem.BackingType();
  v41 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RecentsItem();
  v42 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if ([*&v1[OBJC_IVAR___MPCallsSearchController_featureFlags] callExperiencePhoneAppEnabled])
    {
      v39 = v12;
      v40 = v8;
      v17 = *&v1[OBJC_IVAR___MPCallsSearchController_recentsController];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100209A80;
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for PHContactViewController);
      *(v18 + 32) = [swift_getObjCClassFromMetadata() descriptorForRequiredKeys];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v20 = [v17 contactByHandleForRecentCall:a1 keyDescriptors:isa];

      if (v20)
      {
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
        lazy protocol witness table accessor for type CHHandle and conformance NSObject();
        v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8CHHandleC_So9CNContactCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
      }

      v29 = [a1 validRemoteParticipantHandles];
      if (v29)
      {
        v30 = v29;
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
        lazy protocol witness table accessor for type CHHandle and conformance NSObject();
        v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8CHHandleC_Tt0g5Tf4g_n(_swiftEmptyArrayStorage);
        v31 = v37;
      }

      else
      {
        v31 = &_swiftEmptySetSingleton;
      }

      v32 = a1;
      v33 = v1;
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8CHHandleCG_So9CNContactCs5NeverOTg5076_s11MobilePhone21CallsSearchControllerC14showRecentCallyySo08CHRecentH0CFSo9e4CSo8D6CXEfU_SDyAgJGSo0Q4CallC0H5Phone0jkL0CTf1cn_nTf4nggg_n(v31, v21, v32, v33);

      swift_bridgeObjectRelease_n();

      v34 = OBJC_IVAR___MPCallsSearchController_detailsPresenter;
      swift_beginAccess();
      if (*&v33[v34])
      {
        *v11 = v32;
        (*(v41 + 104))(v11, enum case for RecentsItem.BackingType.history(_:), v9);
        v35 = type metadata accessor for CallInfo();
        (*(*(v35 - 8) + 56))(v40, 1, 1, v35);
        v36 = v32;

        RecentsItem.init(type:title:subtitle:callInfo:contacts:)();
        dispatch thunk of DetailsPresenter.presentDetailsView(for:)();

        (*(v42 + 8))(v14, v39);
      }

      else
      {
      }
    }

    else
    {
      v22 = CallsSearchController.recentsDetailPresenter.getter();
      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
      type metadata accessor for MainActor();
      v24 = a1;
      v25 = v22;
      v26 = v16;
      v27 = static MainActor.shared.getter();
      v28 = swift_allocObject();
      v28[2] = v27;
      v28[3] = &protocol witness table for MainActor;
      v28[4] = v25;
      v28[5] = v24;
      v28[6] = v26;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in RecentsDetailPresenter.showRecentCallDetailsViewController(for:from:), v28);
    }
  }
}

uint64_t CallsSearchController.sectionTitle.getter()
{
  v1 = (v0 + OBJC_IVAR___MPCallsSearchController_sectionTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CallsSearchController.sectionIndex.getter()
{
  v1 = OBJC_IVAR___MPCallsSearchController_sectionIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CallsSearchController.sectionIndex.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MPCallsSearchController_sectionIndex;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CallsSearchController.sectionType.getter()
{
  v1 = OBJC_IVAR___MPCallsSearchController_sectionType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CallsSearchController.sectionType.setter(int a1)
{
  v3 = OBJC_IVAR___MPCallsSearchController_sectionType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CallsSearchController.resultIDs.getter()
{
  return CallsSearchController.resultIDs.getter();
}

{
  swift_beginAccess();
}