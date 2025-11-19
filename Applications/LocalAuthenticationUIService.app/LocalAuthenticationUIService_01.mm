uint64_t sub_10003E398()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void partial apply for closure #3 in TransitionViewModel.setupConnection()()
{
  v0 = *(type metadata accessor for Logger() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Could not obtaint remote object with error %{public}@", v3, 0xCu);
    outlined destroy of LACUIAngelConnectionHandling?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }
}

uint64_t sub_10003E568()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void partial apply for closure #4 in TransitionViewModel.setupConnection()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(type metadata accessor for Logger() - 8);
  v7 = *(v3 + ((*(v6 + 64) + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  if (a3)
  {
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      v12 = _convertErrorToNSError(_:)();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Could not connect to remote object with error %{public}@", v10, 0xCu);
      outlined destroy of LACUIAngelConnectionHandling?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_unknownObjectRetain();
    v15 = v14;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = a2;
    v16 = v15;
    swift_unknownObjectRetain();
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (a2)
    {
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in closure #4 in TransitionViewModel.setupConnection();
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]) -> ();
      aBlock[3] = &block_descriptor_95;
      v18 = _Block_copy(aBlock);

      [a2 internalInfoWithReply:v18];

      swift_unknownObjectRelease();
      _Block_release(v18);
    }

    else
    {
    }
  }
}

uint64_t sub_10003E954()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t specialized TransitionViewModel.dismiss(withIdleEndpoint:wasInvalidated:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_delegates;
  swift_beginAccess();
  v8 = *(v3 + v7);

  v9 = [v8 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService27TransitionViewModelDelegate_pMd, &_s28LocalAuthenticationUIService27TransitionViewModelDelegate_pMR);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    while ((v10 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      aBlock[4] = partial apply for closure #1 in closure #1 in TransitionViewModel.dismiss(withIdleEndpoint:wasInvalidated:completionHandler:);
      aBlock[5] = v6;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_88;
      v15 = _Block_copy(aBlock);

      [v13 viewModelDidReceiveDismissWasInvalidated:a1 & 1 completionHandler:v15];
      _Block_release(v15);
      swift_unknownObjectRelease();
      ++v12;
      if (v14 == i)
      {
        goto LABEL_14;
      }
    }

    if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v13 = *(v10 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    v14 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t type metadata accessor for TransitionViewModel()
{
  result = type metadata singleton initialization cache for TransitionViewModel;
  if (!type metadata singleton initialization cache for TransitionViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TransitionViewModel()
{
  type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<NSXPCConnection?>, &_sSo15NSXPCConnectionCSgMd, &_sSo15NSXPCConnectionCSgMR);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<LACRemoteUIHost?>, &_sSo15LACRemoteUIHost_pSgMd, &_sSo15LACRemoteUIHost_pSgMR);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<LACUIMechanism?>, &_sSo14LACUIMechanism_pSgMd, &_sSo14LACUIMechanism_pSgMR);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<LACBackoffCounter?>, &_sSo17LACBackoffCounter_pSgMd, &_sSo17LACBackoffCounter_pSgMR);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<[AnyHashable : Any]?>, &_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<LACRemoteUIController?>, &_sSo21LACRemoteUIControllerVSgMd, &_sSo21LACRemoteUIControllerVSgMR);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              type metadata accessor for Published<NSXPCConnection?>(319, &lazy cache variable for type metadata for Published<((_:_:))?>, &_sySb_s5Error_pSgtcSgMd, &_sySb_s5Error_pSgtcSgMR);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                v14 = type metadata accessor for Logger();
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<NSXPCConnection?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for LACRemoteUIController()
{
  if (!lazy cache variable for type metadata for LACRemoteUIController)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for LACRemoteUIController);
    }
  }
}

uint64_t sub_10003EFE0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in TransitionViewModel.dismiss(withIdleEndpoint:wasInvalidated:completionHandler:)()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v1 + 24);

    v2(v5);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

uint64_t partial apply for closure #1 in closure #4 in TransitionViewModel.setupConnection()()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop()
{
  result = lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop;
  if (!lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop)
  {
    type metadata accessor for UIDevice(255, &lazy cache variable for type metadata for NSRunLoop, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop);
  }

  return result;
}

uint64_t partial apply for closure #8 in TransitionViewModel.setupBinding()(uint64_t *a1)
{
  v22 = *a1;
  v23 = a1[1];
  v24 = a1[2];
  v25 = a1[3];
  v1 = a1[4];
  if (v25)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v25;
    *(v2 + 24) = v1;
    v20 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @in_guaranteed Error?) -> (@out ())partial apply;
    v21 = v2;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC28LocalAuthenticationUIService19TransitionViewModel_delegates;
    v5 = Strong;
    swift_beginAccess();
    v6 = *&v5[v4];
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v25);

    swift_unknownObjectRetain();
    v7 = v6;

    v8 = [v7 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService27TransitionViewModelDelegate_pMd, &_s28LocalAuthenticationUIService27TransitionViewModelDelegate_pMR);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      goto LABEL_20;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      while (1)
      {
        v19 = v27;
        v11 = 4;
        while (1)
        {
          v13 = v11 - 4;
          if ((v9 & 0xC000000000000001) == 0)
          {
            break;
          }

          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = v11 - 3;
          if (__OFADD__(v13, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_13:
          isa = Dictionary._bridgeToObjectiveC()().super.isa;
          [v14 viewModelDidReceiveAuthenticationDataWithInternalInfo:isa mechanism:{v24, v19}];

          v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
          if (v25)
          {
            v27[2] = v20;
            v27[3] = v21;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            v27[0] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
            v27[1] = &block_descriptor_99;
            v12 = _Block_copy(aBlock);
          }

          else
          {
            v12 = 0;
          }

          [v14 showWithController:v22 internalInfo:v17.super.isa completionHandler:v12];
          _Block_release(v12);

          swift_unknownObjectRelease();
          ++v11;
          if (v15 == v10)
          {
            goto LABEL_21;
          }
        }

        if (v13 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_20:
        v10 = _CocoaArrayWrapper.endIndex.getter();
        if (!v10)
        {
          goto LABEL_21;
        }
      }

      v14 = *(v9 + 8 * v11);
      swift_unknownObjectRetain();
      v15 = v11 - 3;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

LABEL_21:

    swift_unknownObjectRelease();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v20);
  }

  else
  {
LABEL_18:
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v25);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v20);
  }
}

uint64_t lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @in_guaranteed Error?) -> (@out ())(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = a1;
  v6 = a2;
  return v3(&v7, &v6);
}

void specialized static Application.main()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 featureFlagLaunchAngelEnabled];

  if (v1)
  {
    v2 = *AppContainer.shared.unsafeMutableAddressor();
    AppContainer.assemble()();
  }

  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    delegateClassNamea = String._bridgeToObjectiveC()();

    v6 = delegateClassNamea;
  }

  delegateClassName = v6;
  UIApplicationMain(v3, v4, 0, v6);
}

id AppDelegate.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id AppDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance UIApplicationLaunchOptionsKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UIApplicationLaunchOptionsKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UIApplicationLaunchOptionsKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIApplicationLaunchOptionsKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIApplicationLaunchOptionsKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIApplicationLaunchOptionsKey@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UIApplicationLaunchOptionsKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UIApplicationLaunchOptionsKey@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UIApplicationLaunchOptionsKey@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIApplicationLaunchOptionsKey()
{
  lazy protocol witness table accessor for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey(&lazy protocol witness table cache variable for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey);
  lazy protocol witness table accessor for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey(&lazy protocol witness table cache variable for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t specialized AppDelegate.application(_:didFinishLaunchingWithOptions:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x8000000100098A80, &v15);
    *(v9 + 12) = 2080;
    v14 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo29UIApplicationLaunchOptionsKeyaypGSgMd, &_sSDySo29UIApplicationLaunchOptionsKeyaypGSgMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s - options: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v6, v2);
  return 1;
}

uint64_t specialized AppDelegate.applicationWillTerminate(_:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000100098A60, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

id specialized AppDelegate.application(_:configurationForConnecting:options:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000100098A20, &v40);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  (*(v3 + 8))(v6, v2);
  v11 = [a1 role];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      v18 = [a1 configuration];
      v19 = [v18 name];

      if (v19)
      {
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (v22)
        {
          if (v23 == v20 && v22 == v24)
          {
            goto LABEL_12;
          }

          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v32)
          {
            goto LABEL_21;
          }

          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v20 && v22 == v37)
          {
LABEL_12:

LABEL_21:

LABEL_22:
            v33 = [a1 configuration];
            v34 = [v33 name];

            if (v34)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v36 = v35;
            }

            else
            {
              v36 = 0;
            }

            v27 = [a1 role];
            if (v36)
            {
              v25 = String._bridgeToObjectiveC()();
            }

            else
            {
              v25 = 0;
            }

            goto LABEL_15;
          }

          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v38)
          {
            goto LABEL_22;
          }

LABEL_19:
          v27 = [a1 role];
          v31 = objc_allocWithZone(UISceneConfiguration);
          v25 = String._bridgeToObjectiveC()();
          v28 = [v31 initWithName:v25 sessionRole:v27];
          goto LABEL_16;
        }
      }

      else
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_19;
    }
  }

  v25 = LACUserInterfaceSceneIdentifierSceneHosting;
  v26 = [a1 configuration];
  v27 = [v26 role];

LABEL_15:
  v28 = [objc_allocWithZone(UISceneConfiguration) initWithName:v25 sessionRole:v27];
LABEL_16:
  v29 = v28;

  return v29;
}

uint64_t specialized AppDelegate.application(_:didDiscardSceneSessions:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x80000001000989D0, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

void type metadata accessor for UIApplicationLaunchOptionsKey()
{
  if (!lazy cache variable for type metadata for UIApplicationLaunchOptionsKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for UIApplicationLaunchOptionsKey);
    }
  }
}

uint64_t lazy protocol witness table accessor for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIApplicationLaunchOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL static UIDevice.isPad.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

CGFloat Shake.effectValue(size:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D2>, double a4@<D3>)
{
  v6 = sin(a4 * 3.14159265 * a1);
  CGAffineTransformMakeTranslation(&v10, v6 * a3, 0.0);
  result = v10.a;
  v8 = *&v10.c;
  v9 = *&v10.tx;
  *a2 = *&v10.a;
  *(a2 + 16) = 0;
  *(a2 + 24) = v8;
  *(a2 + 40) = 0;
  *(a2 + 48) = v9;
  *(a2 + 64) = 0x3FF0000000000000;
  return result;
}

unint64_t lazy protocol witness table accessor for type Shake and conformance Shake()
{
  result = lazy protocol witness table cache variable for type Shake and conformance Shake;
  if (!lazy protocol witness table cache variable for type Shake and conformance Shake)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shake and conformance Shake);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Shake and conformance Shake;
  if (!lazy protocol witness table cache variable for type Shake and conformance Shake)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shake and conformance Shake);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Shake and conformance Shake;
  if (!lazy protocol witness table cache variable for type Shake and conformance Shake)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shake and conformance Shake);
  }

  return result;
}

CGFloat protocol witness for GeometryEffect.effectValue(size:) in conformance Shake@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sin(*(v1 + 16) * 3.14159265 * *(v1 + 8));
  CGAffineTransformMakeTranslation(&v8, v3 * v4, 0.0);
  result = v8.a;
  v6 = *&v8.c;
  v7 = *&v8.tx;
  *a1 = *&v8.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + 40) = 0;
  *(a1 + 48) = v7;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance Shake@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance Shake(double *a1)
{
  result = *a1;
  *(v1 + 16) = *a1;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance Shake(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type Shake and conformance Shake();

  return static GeometryEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance Shake(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type Shake and conformance Shake();

  return static GeometryEffect._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Shake(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Shake(uint64_t result, int a2, int a3)
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

uint64_t PasscodeEmbeddedView.passcodeFocused.getter()
{
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.wrappedValue.getter();
  return v2;
}

uint64_t key path getter for PasscodeEmbeddedView.passcodeFocused : PasscodeEmbeddedView@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  result = Binding.wrappedValue.getter();
  *a2 = v4;
  return result;
}

uint64_t key path setter for PasscodeEmbeddedView.passcodeFocused : PasscodeEmbeddedView(char *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  return Binding.wrappedValue.setter();
}

uint64_t PasscodeEmbeddedView.passcodeFocused.setter()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  return Binding.wrappedValue.setter();
}

void (*PasscodeEmbeddedView.passcodeFocused.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 24);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.wrappedValue.getter();
  return PasscodeEmbeddedView.passcodeFocused.modify;
}

void PasscodeEmbeddedView.passcodeFocused.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  *(*a1 + 24) = *(*a1 + 48);
  v5 = *(v1 + 19);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 18) = v2;
  Binding.wrappedValue.setter();

  free(v1);
}

uint64_t PasscodeEmbeddedView.$passcodeFocused.getter()
{
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.projectedValue.getter();
  return v2;
}

uint64_t key path getter for PasscodeEmbeddedView.blockedUntil : PasscodeEmbeddedView()
{
  v0 = *(type metadata accessor for PasscodeEmbeddedView(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  return Binding.wrappedValue.getter();
}

uint64_t key path setter for PasscodeEmbeddedView.blockedUntil : PasscodeEmbeddedView(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  outlined init with copy of LACUIAngelConnectionHandling?(a1, &v10 - v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  LODWORD(a1) = *(type metadata accessor for PasscodeEmbeddedView(0) + 24);
  outlined init with copy of LACUIAngelConnectionHandling?(v8, v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of LACUIAngelConnectionHandling?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t PasscodeEmbeddedView.blockedUntil.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  v6 = *(type metadata accessor for PasscodeEmbeddedView(0) + 24);
  outlined init with copy of LACUIAngelConnectionHandling?(a1, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of LACUIAngelConnectionHandling?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

void (*PasscodeEmbeddedView.blockedUntil.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  a1[2] = v5;
  v6 = *(*(v5 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for PasscodeEmbeddedView(0);
  outlined init with copy of LACUIAngelConnectionHandling?(v1 + *(v9 + 24), v8, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  Binding.wrappedValue.getter();
  return PasscodeEmbeddedView.blockedUntil.modify;
}

void PasscodeEmbeddedView.blockedUntil.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  if (a2)
  {
    outlined init with copy of LACUIAngelConnectionHandling?(*(a1 + 8), v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    Binding.wrappedValue.setter();
    outlined destroy of LACUIAngelConnectionHandling?(v2, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
    v6 = v5;
    v7 = &_s10Foundation4DateVSgMd;
    v8 = &_s10Foundation4DateVSgMR;
  }

  else
  {
    v9 = *(a1 + 8);
    Binding.wrappedValue.setter();
    v7 = &_s7SwiftUI7BindingVy10Foundation4DateVSgGMd;
    v8 = &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR;
    v6 = v2;
  }

  outlined destroy of LACUIAngelConnectionHandling?(v6, v7, v8);
  free(v2);
  free(v5);

  free(v4);
}

uint64_t PasscodeEmbeddedView.blockedUntil.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PasscodeEmbeddedView(0) + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  return a1(v3);
}

void PasscodeEmbeddedView.init(passcodeLength:alphanumeric:placeholder:dismissKeyboardOnDissappear:passcodeFocused:blockedUntil:verifyPasscode:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45 = a8;
  v43 = a6;
  v44 = a7;
  v39 = a5;
  v36[1] = a3;
  v37 = a1;
  v42 = a10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService20PasscodeEmbeddedViewVSgMd, &_s28LocalAuthenticationUIService20PasscodeEmbeddedViewVSgMR);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v36 - v17;
  v38 = type metadata accessor for PasscodeEmbeddedParentViewController(0);
  v19 = objc_allocWithZone(v38);
  v20 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  v21 = type metadata accessor for PasscodeEmbeddedView(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v40 = v22 + 56;
  v41 = v23;
  v23(&v19[v20], 1, 1, v21);
  v24 = &v19[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_verifyPasscode];
  *v24 = 0;
  v24[1] = 0;
  v25 = objc_allocWithZone(PasscodeEmbeddedCustomizableViewController);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a11);
  v26 = [v25 initWithPasscodeLength:v37 alphanumeric:a2 & 1];
  *&v19[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController] = v26;
  v27 = v26;
  if (a4)
  {
    v28 = String._bridgeToObjectiveC()();
  }

  else
  {
    v28 = 0;
  }

  [v26 setPlaceholderText:v28];

  v29 = *v24;
  v30 = v24[1];
  *v24 = a11;
  v24[1] = a12;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a11);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v29);
  v19[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_dismissKeyboardOnDissappear] = v39 & 1;
  v46.receiver = v19;
  v46.super_class = v38;
  v31 = objc_msgSendSuper2(&v46, "initWithNibName:bundle:", 0, 0);
  [*&v31[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController] setDelegate:v31];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a11);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a11);
  v33 = v43;
  v32 = v44;
  *a9 = v31;
  *(a9 + 8) = v33;
  *(a9 + 16) = v32;
  *(a9 + 24) = v45 & 1;
  outlined init with take of Binding<Date?>(v42, a9 + *(v21 + 24));
  outlined init with copy of PasscodeEmbeddedView(a9, v18);
  v41(v18, 0, 1, v21);
  v34 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  swift_beginAccess();
  v35 = v31;
  outlined assign with take of PasscodeEmbeddedView?(v18, &v31[v34]);
  swift_endAccess();
}

char *PasscodeEmbeddedParentViewController.__allocating_init(passcodeLength:alphanumeric:placeholder:dismissKeyboardOnDissappear:verifyPasscode:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = objc_allocWithZone(v8);
  v16 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  v17 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  v18 = &v15[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_verifyPasscode];
  *v18 = 0;
  v18[1] = 0;
  v19 = [objc_allocWithZone(PasscodeEmbeddedCustomizableViewController) initWithPasscodeLength:a1 alphanumeric:a2 & 1];
  *&v15[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController] = v19;
  v20 = v19;
  if (a4)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  [v19 setPlaceholderText:v21];

  v22 = *v18;
  v23 = v18[1];
  *v18 = a6;
  v18[1] = a7;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a6);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v22);
  v15[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_dismissKeyboardOnDissappear] = a5 & 1;
  v28.receiver = v15;
  v28.super_class = v8;
  v24 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
  v25 = *&v24[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController];
  v26 = v24;
  [v25 setDelegate:v26];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);

  return v26;
}

uint64_t PasscodeEmbeddedParentViewController.setEmbeddedView(embeddedView:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService20PasscodeEmbeddedViewVSgMd, &_s28LocalAuthenticationUIService20PasscodeEmbeddedViewVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  outlined init with copy of PasscodeEmbeddedView(a1, &v10 - v5);
  v7 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  swift_beginAccess();
  outlined assign with take of PasscodeEmbeddedView?(v6, v1 + v8);
  return swift_endAccess();
}

id PasscodeEmbeddedView.updateUIViewController(_:context:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v23[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23[-v14];
  v16 = *(type metadata accessor for PasscodeEmbeddedView(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  Binding.wrappedValue.getter();
  if ((*(v5 + 48))(v15, 1, v4))
  {
    outlined destroy of LACUIAngelConnectionHandling?(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v17 = 0.0;
  }

  else
  {
    (*(v5 + 16))(v11, v15, v4);
    outlined destroy of LACUIAngelConnectionHandling?(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v17 = v18;
    v19 = *(v5 + 8);
    v19(v9, v4);
    v19(v11, v4);
  }

  v20 = *(v2 + 16);
  v21 = *(v2 + 24);
  v24 = *(v2 + 8);
  v25 = v20;
  v26 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.wrappedValue.getter();
  return [*(a1 + OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController) setBackoffTimeout:0 showBackoffTitle:v23[7] passcodeFocused:v17];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PasscodeEmbeddedView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView(&lazy protocol witness table cache variable for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PasscodeEmbeddedView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView(&lazy protocol witness table cache variable for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance PasscodeEmbeddedView()
{
  lazy protocol witness table accessor for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView(&lazy protocol witness table cache variable for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t variable initialization expression of PasscodeEmbeddedParentViewController.passcodeEmbeddedView@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PasscodeEmbeddedView(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

char *PasscodeEmbeddedParentViewController.init(passcodeLength:alphanumeric:placeholder:dismissKeyboardOnDissappear:verifyPasscode:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v16 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  v17 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v17 - 8) + 56))(&v8[v16], 1, 1, v17);
  v18 = &v8[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_verifyPasscode];
  *v18 = 0;
  v18[1] = 0;
  v19 = [objc_allocWithZone(PasscodeEmbeddedCustomizableViewController) initWithPasscodeLength:a1 alphanumeric:a2 & 1];
  *&v8[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController] = v19;
  v20 = v19;
  if (a4)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  [v19 setPlaceholderText:v21];

  v22 = *v18;
  v23 = v18[1];
  *v18 = a6;
  v18[1] = a7;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a6);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v22);
  v8[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_dismissKeyboardOnDissappear] = a5 & 1;
  v28.receiver = v8;
  v28.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
  v25 = *&v24[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController];
  v26 = v24;
  [v25 setDelegate:v26];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);

  return v26;
}

uint64_t type metadata accessor for PasscodeEmbeddedView(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of Binding<Date?>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PasscodeEmbeddedView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PasscodeEmbeddedView?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService20PasscodeEmbeddedViewVSgMd, &_s28LocalAuthenticationUIService20PasscodeEmbeddedViewVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void PasscodeEmbeddedParentViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  v2 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_verifyPasscode);
  *v3 = 0;
  v3[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall PasscodeEmbeddedParentViewController.loadView()()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeViewController];
  v5 = [v4 view];
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  [v3 addSubview:v5];

  [v0 addChildViewController:v4];
  [v4 didMoveToParentViewController:v0];
  v7 = [v4 view];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100087710;
  v10 = [v4 view];
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  v12 = [v10 trailingAnchor];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  v15 = [v13 trailingAnchor];

  v16 = [v12 constraintEqualToAnchor:v15];
  *(v9 + 32) = v16;
  v17 = [v4 view];
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
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor:v22];
  *(v9 + 40) = v23;
  v24 = [v4 view];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v0 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v9 + 48) = v30;
  v31 = [v4 view];
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v0 view];
  if (!v34)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 bottomAnchor];

  v38 = [v33 constraintEqualToAnchor:v37];
  *(v9 + 56) = v38;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];
}

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = lazy cache variable for type metadata for NSLayoutConstraint;
  if (!lazy cache variable for type metadata for NSLayoutConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLayoutConstraint);
  }

  return result;
}

Swift::Void __swiftcall PasscodeEmbeddedParentViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v1;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:), v11);
}

uint64_t closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  v5 = type metadata accessor for PasscodeEmbeddedView(0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();

  return _swift_task_switch(closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:), 0, 0);
}

uint64_t closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)()
{
  v1 = *(v0 + 104);
  *(v0 + 120) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:), v3, v2);
}

{
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);

  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  swift_beginAccess();
  v6 = (*(v2 + 48))(v4 + v5, 1, v3);
  if (!v6)
  {
    v7 = *(v0 + 96);
    outlined init with copy of PasscodeEmbeddedView(v4 + v5, v7);
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    *(v0 + 40) = *(v7 + 8);
    *(v0 + 48) = v8;
    *(v0 + 56) = v9;
    *(v0 + 57) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    Binding.wrappedValue.setter();
    outlined destroy of PasscodeEmbeddedView(v7);
  }

  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  **(v0 + 64) = v6 != 0;
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:), v13, v12);
}

{
  v1 = v0[14];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:);

  return closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)(a1, v5, v6, v4);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of LACUIAngelConnectionHandling?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of LACUIAngelConnectionHandling?(v12, &_sScPSgMd, &_sScPSgMR);
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      outlined destroy of LACUIAngelConnectionHandling?(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
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

  outlined destroy of LACUIAngelConnectionHandling?(a3, &_sScPSgMd, &_sScPSgMR);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

Swift::Void __swiftcall PasscodeEmbeddedParentViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "viewWillDisappear:", a1);
  if (*(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_dismissKeyboardOnDissappear) == 1)
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = v1;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:), v11);
  }
}

uint64_t closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  v5 = type metadata accessor for PasscodeEmbeddedView(0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();

  return _swift_task_switch(closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:), 0, 0);
}

uint64_t closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:)()
{
  v1 = *(v0 + 104);
  *(v0 + 120) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:), v3, v2);
}

{
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);

  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  swift_beginAccess();
  v6 = (*(v2 + 48))(v4 + v5, 1, v3);
  if (!v6)
  {
    v7 = *(v0 + 96);
    outlined init with copy of PasscodeEmbeddedView(v4 + v5, v7);
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    *(v0 + 40) = *(v7 + 8);
    *(v0 + 48) = v8;
    *(v0 + 56) = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    Binding.wrappedValue.setter();
    outlined destroy of PasscodeEmbeddedView(v7);
  }

  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  **(v0 + 64) = v6 != 0;
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:), v13, v12);
}

uint64_t partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:)(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:);

  return closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:)(a1, v5, v6, v4);
}

uint64_t PasscodeEmbeddedParentViewController.verifyPasscode(_:reply:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_verifyPasscode);
  if (v5)
  {
    v9 = result;
    v10 = *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_verifyPasscode + 8);

    v5(v9, a2, a3, a4);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
  }

  return result;
}

uint64_t sub_100043CEC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100043DBC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4DateVSgGMd, &_s7SwiftUI7BindingVy10Foundation4DateVSgGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PasscodeEmbeddedView()
{
  type metadata accessor for PasscodeEmbeddedParentViewController(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding<Bool>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Binding<Date?>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Binding<Bool>()
{
  if (!lazy cache variable for type metadata for Binding<Bool>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Bool>);
    }
  }
}

void type metadata accessor for Binding<Date?>()
{
  if (!lazy cache variable for type metadata for Binding<Date?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Date?>);
    }
  }
}

void type metadata completion function for PasscodeEmbeddedParentViewController()
{
  type metadata accessor for PasscodeEmbeddedView?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for PasscodeEmbeddedView?()
{
  if (!lazy cache variable for type metadata for PasscodeEmbeddedView?)
  {
    type metadata accessor for PasscodeEmbeddedView(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PasscodeEmbeddedView?);
    }
  }
}

uint64_t sub_1000440D0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)partial apply(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)partial apply;

  return closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)(a1, v5, v6, v4);
}

uint64_t closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)partial apply()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t lazy protocol witness table accessor for type PasscodeEmbeddedView and conformance PasscodeEmbeddedView(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PasscodeEmbeddedView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of PasscodeEmbeddedView(uint64_t a1)
{
  v2 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v6(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10004459C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in PasscodeEmbeddedParentViewController.viewWillDisappear(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_29(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in PasscodeEmbeddedParentViewController.viewWillAppear(_:)partial apply;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v5);
}

uint64_t key path getter for SceneControllerRemoteAlert.delegate : SceneControllerRemoteAlert@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for SceneControllerRemoteAlert.delegate : SceneControllerRemoteAlert(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 40) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t (*SceneControllerRemoteAlert.delegate.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return SceneControllerRemoteAlert.delegate.modify;
}

Swift::Void __swiftcall SceneControllerRemoteAlert.sceneDidConnect(identifier:options:urls:)(Swift::String identifier, Swift::OpaquePointer_optional options, Swift::OpaquePointer_optional urls)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 40);
    swift_getObjectType();
    lazy protocol witness table accessor for type SceneControllerRemoteAlert and conformance SceneControllerRemoteAlert();
    dispatch thunk of LACUISceneControllerDelegate.sceneControllerDidConnectScene(_:identifier:userInfo:)();
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall SceneControllerRemoteAlert.sceneDidDisconnect(identifier:)(Swift::String identifier)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 40);
    swift_getObjectType();
    lazy protocol witness table accessor for type SceneControllerRemoteAlert and conformance SceneControllerRemoteAlert();
    dispatch thunk of LACUISceneControllerDelegate.sceneControllerDidDisconnectScene(_:identifier:)();
    swift_unknownObjectRelease();
  }
}

uint64_t (*protocol witness for LACUISceneControlling.delegate.modify in conformance SceneControllerRemoteAlert(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return protocol witness for LACUISceneControlling.delegate.modify in conformance SceneControllerRemoteAlert;
}

uint64_t protocol witness for LACUISceneControlling.sceneDidConnect(identifier:options:urls:) in conformance SceneControllerRemoteAlert()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 40);
    swift_getObjectType();
    dispatch thunk of LACUISceneControllerDelegate.sceneControllerDidConnectScene(_:identifier:userInfo:)();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t protocol witness for LACUISceneControlling.sceneDidDisconnect(identifier:) in conformance SceneControllerRemoteAlert()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 40);
    swift_getObjectType();
    dispatch thunk of LACUISceneControllerDelegate.sceneControllerDidDisconnectScene(_:identifier:)();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized SceneControllerRemoteAlert.checkNeedsScene(options:urls:)(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  static LACUISceneUserInfoKey.rootControllerName.getter();
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v5 & 1) == 0))
  {
    outlined destroy of AnyHashable(v8);
LABEL_10:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_11;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, &v9);
  outlined destroy of AnyHashable(v8);
  if (!*(&v10 + 1))
  {
LABEL_11:
    outlined destroy of Any?(&v9);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v6 = 0;
    return v6 & 1;
  }

  if (v8[0] == *(v2 + 16) && v8[1] == *(v2 + 24))
  {

    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a5;
  v53 = a8;
  v49 = a7;
  v50 = a3;
  v51 = a4;
  v47 = a6;
  v48 = a10;
  v45 = a9;
  v12 = type metadata accessor for String.Encoding();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = [objc_opt_self() sharedInstance];
  v17 = objc_allocWithZone(LACSecureData);
  v18 = String._bridgeToObjectiveC()();
  v44 = [v17 initWithString:v18];

  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  if ([objc_opt_self() isSharedIPad])
  {
    static String.Encoding.utf8.getter();
    v20 = String.data(using:allowLossyConversion:)();
    v22 = v21;
    (*(v13 + 8))(v16, v12);
    if (v22 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v20, v22);
    }

    v24 = MKBUnlockDevice();

    *(v19 + 16) = v24;
  }

  v43 = (*(a12 + 8))(a11, a12);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v26[2] = a11;
  v26[3] = a12;
  v27 = v45;
  v28 = v46;
  v26[4] = v25;
  v26[5] = v27;
  v29 = v49;
  v26[6] = v48;
  v26[7] = v19;
  v26[8] = v28;
  v26[9] = v29;
  v42[1] = v19;
  v30 = v44;
  v32 = v50;
  v31 = v51;
  v26[10] = v44;
  v26[11] = v32;
  v34 = v52;
  v33 = v53;
  v26[12] = v31;
  v26[13] = v33;
  v35 = v47;
  v26[14] = v34;
  v26[15] = v35;
  aBlock[4] = partial apply for closure #1 in DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:);
  v55 = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_3;
  v36 = _Block_copy(aBlock);
  v47 = v55;

  v37 = v28;

  v38 = v30;
  outlined copy of Data._Representation(v32, v31);
  v39 = v34;
  v40 = v33;

  [v43 currentBackoffErrorWithReply:v36];
  _Block_release(v36);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000450D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t closure #1 in DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, unint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v58 = a8;
  v61 = a6;
  v62 = a7;
  v60 = a5;
  v65 = a3;
  v66 = a4;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v59 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v59);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v63 = *(v20 - 8);
  v64 = v20;
  v21 = *(v63 + 64);
  __chkstk_darwin(v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS.QoSClass();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = v65;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(a15 + 80);
      swift_errorRetain();
      v30(a1, a14, a15);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_errorRetain();
    }

    v29(0);
  }

  else
  {
    v54 = a13;
    v53 = a12;
    v51 = a11;
    v50 = a10;
    v55 = v19;
    type metadata accessor for OS_dispatch_queue();
    v57 = v16;
    (*(v25 + 104))(v28, enum case for DispatchQoS.QoSClass.default(_:), v24);
    v56 = static OS_dispatch_queue.global(qos:)();
    (*(v25 + 8))(v28, v24);
    v31 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v32 = swift_allocObject();
    v32[2] = a14;
    v32[3] = a15;
    v52 = v31;
    v34 = v60;
    v33 = v61;
    v32[4] = v31;
    v32[5] = v34;
    v35 = v66;
    v32[6] = v65;
    v32[7] = v35;
    v36 = v62;
    v32[8] = v33;
    v32[9] = v36;
    v37 = v58;
    v32[10] = v58;
    v32[11] = a9;
    v38 = v51;
    v32[12] = a10;
    v32[13] = v38;
    v39 = v53;
    v40 = v54;
    v32[14] = v53;
    v32[15] = v40;
    aBlock[4] = partial apply for closure #1 in closure #1 in DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:);
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_13;
    v65 = _Block_copy(aBlock);
    v41 = v37;

    v42 = v33;

    outlined copy of Data._Representation(a9, v50);
    v43 = v39;
    v44 = v38;
    static DispatchQoS.unspecified.getter();
    v67 = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v45 = v55;
    v46 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v47 = v65;
    v48 = v56;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v47);

    (*(v57 + 8))(v45, v46);
    (*(v63 + 8))(v23, v64);
  }
}

uint64_t sub_100045618()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  outlined consume of Data._Representation(*(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 128, 7);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

void type metadata accessor for LAPolicy()
{
  if (!lazy cache variable for type metadata for LAPolicy)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for LAPolicy);
    }
  }
}

uint64_t sub_100045818()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  outlined consume of Data._Representation(*(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 128, 7);
}

void (*partial apply for closure #1 in closure #1 in DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:)())(uint64_t *, void)
{
  v44 = v0[2];
  v45 = v0[3];
  v2 = v0[4];
  v1 = v0[5];
  v41 = v0[6];
  v42 = v0[7];
  v3 = v0[9];
  v43 = v0[8];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[12];
  v7 = v0[13];
  v9 = v0[14];
  v8 = v0[15];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([objc_opt_self() isSharedIPad])
    {
      swift_beginAccess();
      v11 = *(v1 + 16);
      if (v11 == -14 || v11 == -3)
      {
        v14 = v44;
        v13 = v45;
        goto LABEL_14;
      }

      if (v11)
      {
        v14 = v44;
        v13 = v45;
LABEL_21:
        (*(v13 + 56))(v14, v13);
        v34 = objc_opt_self();
        v35 = LACErrorCodeInternal;
        v36 = String._bridgeToObjectiveC()();
        v37 = [v34 errorWithCode:v35 debugDescription:v36];

        (*(v13 + 64))(v37, v14, v13);
LABEL_23:

        return swift_unknownObjectRelease();
      }
    }

    v15 = objc_allocWithZone(LACMutablePasscodeVerificationRequest);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v17 = [v15 initWithPasscode:v5 acmContext:isa auditToken:v7];

    [v17 setUserId:v9];
    [v17 setPolicy:LACPolicy.policy.getter(v8)];
    v18 = Dictionary._bridgeToObjectiveC()().super.isa;
    [v17 setOptions:v18];

    v19 = [v43 verifyPasscode:v17];
    if (v19 == 2)
    {
      (*(v45 + 56))(v44, v45);
      v31 = (*(v45 + 8))(v44, v45);
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      v33[2] = v44;
      v33[3] = v45;
      v33[4] = v32;
      v33[5] = v41;
      v33[6] = v42;
      v50 = partial apply for closure #2 in DevicePasscodeVerifier.handlePasscode(result:reply:);
      v51 = v33;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
      v49 = &block_descriptor_20;
      v30 = _Block_copy(&aBlock);

      [v31 actionBackoffWithReply:{v30, v41, v42}];
      goto LABEL_19;
    }

    v14 = v44;
    v13 = v45;
    if (v19 != 1)
    {
      if (!v19)
      {
        [(*(v45 + 8))(v44 v45)];
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000867F0;
        aBlock = 0x746C75736552;
        v47 = 0xE600000000000000;
        AnyHashable.init<A>(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SbtGMd, &_ss23_ContiguousArrayStorageCySi_SbtGMR);
        v21 = swift_initStackObject();
        *(v21 + 16) = xmmword_1000867F0;
        *(v21 + 32) = LACResultPassedPasscode;
        *(v21 + 40) = 1;
        v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SbTt0g5Tf4g_n(v21);
        swift_setDeallocating();
        *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSbGMd, &_sSDySiSbGMR);
        *(inited + 72) = v22;
        v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of (AnyHashable, Any)(inited + 32);
        (*(v45 + 48))(v23, v44, v45);

        v41(1);
        return swift_unknownObjectRelease();
      }

      goto LABEL_21;
    }

LABEL_14:
    (*(v13 + 56))(v14, v13);
    result = (*(v13 + 40))(&aBlock, v14, v13);
    if (*v24 == -1)
    {
      __break(1u);
      return result;
    }

    ++*v24;
    result(&aBlock, 0);
    v25 = (*(v13 + 16))(v14, v13);
    if ((v26 & 1) == 0 && (*(v13 + 24))(v14, v13) >= v25)
    {
      v38 = objc_opt_self();
      v39 = LACErrorCodeAuthenticationFailed;
      v40 = String._bridgeToObjectiveC()();
      v37 = [v38 errorWithCode:v39 debugDescription:v40];

      (*(v13 + 72))(v37, v14, v13);
      goto LABEL_23;
    }

    v27 = (*(v13 + 8))(v14, v13);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = v14;
    v29[3] = v13;
    v29[4] = v28;
    v29[5] = v41;
    v29[6] = v42;
    v50 = partial apply for closure #1 in DevicePasscodeVerifier.handlePasscode(result:reply:);
    v51 = v29;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v49 = &block_descriptor_27;
    v30 = _Block_copy(&aBlock);

    [v27 actionFailureWithReply:{v30, v41, v42}];
LABEL_19:
    _Block_release(v30);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in DevicePasscodeVerifier.handlePasscode(result:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a3;
  v26 = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v27);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v19 = swift_allocObject();
  v20 = v25;
  v21 = v26;
  v19[2] = a5;
  v19[3] = v21;
  v19[4] = a1;
  v19[5] = v20;
  v19[6] = a4;
  v19[7] = v18;
  aBlock[4] = partial apply for closure #1 in closure #1 in DevicePasscodeVerifier.handlePasscode(result:reply:);
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_34;
  v22 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v28 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v27);
}

uint64_t closure #2 in DevicePasscodeVerifier.handlePasscode(result:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  result = __chkstk_darwin(v16);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = result;
    v29 = v19;
    type metadata accessor for OS_dispatch_queue();
    v28 = v12;
    v22 = a3;
    swift_errorRetain();
    v30 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v24 = swift_allocObject();
    v24[2] = a5;
    v24[3] = a6;
    v24[4] = v23;
    v24[5] = a1;
    v24[6] = v22;
    v24[7] = a4;
    aBlock[4] = partial apply for closure #1 in closure #2 in DevicePasscodeVerifier.handlePasscode(result:reply:);
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_41;
    v25 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v26 = v30;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v28 + 8))(v15, v11);
    return (*(v29 + 8))(v21, v31);
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t outlined destroy of (AnyHashable, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000466F8()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for closure #1 in closure #1 in DevicePasscodeVerifier.handlePasscode(result:reply:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  if (v1)
  {
    v4 = v0[2];
    v5 = v0[3];
    v6 = v0[7];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v5 + 80);
      swift_errorRetain();
      v7(v1, v4, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_errorRetain();
    }

    v2(0);
  }

  else
  {
    v8 = v0[6];
    return (v2)(0);
  }
}

uint64_t sub_10004681C()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for closure #1 in closure #2 in DevicePasscodeVerifier.handlePasscode(result:reply:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(v2 + 80))(v4, v1, v2);
    swift_unknownObjectRelease();
  }

  return v6(0);
}

uint64_t AngelSceneFrontBoard.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_identifier + 8);

  return v1;
}

uint64_t AngelSceneFrontBoard.persistentIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_persistentIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t AngelSceneFrontBoard.persistentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_persistentIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t key path getter for AngelSceneFrontBoard.persistentIdentifier : AngelSceneFrontBoard@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for AngelSceneFrontBoard.persistentIdentifier : AngelSceneFrontBoard(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0xA8);

  return v4(v2, v3);
}

uint64_t AngelSceneFrontBoard.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for AngelSceneFrontBoard.delegate : AngelSceneFrontBoard@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AngelSceneFrontBoard.delegate : AngelSceneFrontBoard(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xC0);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

void (*AngelSceneFrontBoard.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return AngelSceneRemoteAlert.delegate.modify;
}

id AngelSceneFrontBoard.__allocating_init(identifier:bundleId:service:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_processHandle] = 0;
  v14 = &v13[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_persistentIdentifier];
  *v14 = 0;
  *(v14 + 1) = 0;
  swift_unknownObjectWeakInit();
  v15 = &v13[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_identifier];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = &v13[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_bundleId];
  *v16 = a3;
  *(v16 + 1) = a4;
  *&v13[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_options] = a6;
  *&v13[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_service] = a5;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, "init");
}

id AngelSceneFrontBoard.init(identifier:bundleId:service:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_processHandle] = 0;
  v13 = &v6[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_persistentIdentifier];
  *v13 = 0;
  *(v13 + 1) = 0;
  swift_unknownObjectWeakInit();
  v14 = &v6[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_identifier];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_bundleId];
  *v15 = a3;
  *(v15 + 1) = a4;
  *&v6[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_options] = a6;
  *&v6[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_service] = a5;
  v17.receiver = v6;
  v17.super_class = type metadata accessor for AngelSceneFrontBoard();
  return objc_msgSendSuper2(&v17, "init");
}

Swift::Void __swiftcall AngelSceneFrontBoard.activate()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_service);
  v3 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_bundleId);
  v4 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_bundleId + 8);
  v5 = String._bridgeToObjectiveC()();
  v6 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_options);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = partial apply for closure #1 in AngelSceneFrontBoard.activate();
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed BSProcessHandle?, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor_4;
  v8 = _Block_copy(v9);

  [v2 openApplication:v5 withOptions:v6 completion:v8];
  _Block_release(v8);
}

uint64_t sub_100047290()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in AngelSceneFrontBoard.activate()(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = Strong;
    v4 = (*((swift_isaMask & *Strong) + 0xB8))();
    if (v4)
    {
      v5 = v4;
      v6 = _convertErrorToNSError(_:)();
      [v5 angelSceneDidDeactivate:v3 error:v6];

      swift_unknownObjectRelease();
      v3 = v6;
    }
  }

  else if (a1)
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (!v8)
    {
      return;
    }

    v3 = v8;
    v9 = *(v8 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_processHandle);
    *(v8 + OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_processHandle) = a1;
    v10 = a1;
  }

  else
  {
    v11 = objc_opt_self();
    v12 = LACErrorCodeInternal;
    _StringGuts.grow(_:)(26);
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService20AngelSceneFrontBoardCSgMd, &_s28LocalAuthenticationUIService20AngelSceneFrontBoardCSgMR);
    v13 = String.init<A>(describing:)();
    v15 = v14;

    v24 = v13;
    v16._object = 0x8000000100098DE0;
    v16._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v16);
    v17 = String._bridgeToObjectiveC()();

    v3 = [v11 errorWithCode:v12 debugDescription:{v17, v24, v15}];

    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = *((swift_isaMask & *v18) + 0xB8);
      v3 = v3;
      v21 = v20();
      if (v21)
      {
        v22 = v21;
        v23 = _convertErrorToNSError(_:)();
        [v22 angelSceneDidDeactivate:v19 error:v23];

        swift_unknownObjectRelease();
        v3 = v23;
      }

      else
      {
      }
    }
  }
}

uint64_t AngelSceneFrontBoard.sceneDidDeactivate(with:)(void *a1)
{
  result = (*((swift_isaMask & *v1) + 0xB8))();
  if (result)
  {
    v4 = result;
    if (a1)
    {
      a1 = _convertErrorToNSError(_:)();
    }

    [v4 angelSceneDidDeactivate:v1 error:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed BSProcessHandle?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall AngelSceneFrontBoard.deactivate()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_processHandle];
  if (v6)
  {
    *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService20AngelSceneFrontBoard_processHandle] = 0;

    v7 = [objc_opt_self() sharedApplication];
    v8 = [v7 openSessions];
    v9 = type metadata accessor for UISceneSession();
    lazy protocol witness table accessor for type UISceneSession and conformance NSObject();
    v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = v0;
    v12 = specialized Set._Variant.filter(_:)(v10, v11);

    v45 = v11;
    v46 = v9;
    v44 = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v12 = aBlock[7];
      v13 = aBlock[8];
      v14 = aBlock[9];
      v15 = aBlock[10];
      v16 = aBlock[11];
    }

    else
    {
      v27 = -1 << *(v12 + 32);
      v13 = v12 + 56;
      v14 = ~v27;
      v28 = -v27;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v16 = v29 & *(v12 + 56);

      v15 = 0;
    }

    v43 = v14;
    v30 = (v14 + 64) >> 6;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v31 = __CocoaSet.Iterator.next()();
      if (!v31)
      {
        break;
      }

      v47 = v31;
      swift_dynamicCast();
      v32 = aBlock[0];
      v33 = v15;
      v34 = v16;
      if (!aBlock[0])
      {
        break;
      }

      while (1)
      {
        v37 = swift_allocObject();
        *(v37 + 16) = v32;
        aBlock[4] = partial apply for closure #1 in closure #2 in AngelSceneFrontBoard.deactivate();
        aBlock[5] = v37;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
        aBlock[3] = &block_descriptor_6_0;
        v38 = _Block_copy(aBlock);
        v39 = v32;

        [v7 requestSceneSessionDestruction:v39 options:0 errorHandler:{v38, v43, v44}];
        _Block_release(v38);

        v15 = v33;
        v16 = v34;
        if (v12 < 0)
        {
          break;
        }

LABEL_15:
        v35 = v15;
        v36 = v16;
        v33 = v15;
        if (!v16)
        {
          while (1)
          {
            v33 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              break;
            }

            if (v33 >= v30)
            {
              goto LABEL_22;
            }

            v36 = *(v13 + 8 * v33);
            ++v35;
            if (v36)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          return;
        }

LABEL_19:
        v34 = (v36 - 1) & v36;
        v32 = *(*(v12 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v36)))));
        if (!v32)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_22:
    outlined consume of Set<UISceneSession>.Iterator._Variant();

    v41 = v45;
    v42 = (*((swift_isaMask & *v45) + 0xB8))(v40);
    if (v42)
    {
      [v42 angelSceneDidDeactivate:v41 error:0];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    static LACLog.ui.getter();
    v17 = v0;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *v20 = 136315138;
      v21 = v17;
      v22 = [v21 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, aBlock);

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - cannot deactivate nil handle", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
    }

    (*(v2 + 8))(v5, v1);
  }
}

uint64_t closure #1 in closure #2 in AngelSceneFrontBoard.deactivate()(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v8 = a2;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2112;
    v13 = v8;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    v12[1] = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "Scene session %@ failed to deactivate with error: %@", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
  }

  return (*(v4 + 8))(v7, v3);
}

id AngelSceneFrontBoard.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AngelSceneFrontBoard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall AngelSceneFrontBoard.sceneDidActivate()()
{
  v1 = (*((swift_isaMask & *v0) + 0xB8))();
  if (v1)
  {
    [v1 angelSceneDidActivate:v0];

    swift_unknownObjectRelease();
  }
}

unint64_t type metadata accessor for UISceneSession()
{
  result = lazy cache variable for type metadata for UISceneSession;
  if (!lazy cache variable for type metadata for UISceneSession)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UISceneSession);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UISceneSession and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UISceneSession and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UISceneSession and conformance NSObject)
  {
    type metadata accessor for UISceneSession();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UISceneSession and conformance NSObject);
  }

  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo14UISceneSessionCGMd, &_ss11_SetStorageCySo14UISceneSessionCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo14UISceneSessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So14iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n072_s28LocalAuthenticationUIService20AngelSceneFrontBoardC10deactivateyyFSbqiJ6CXEfU_0uV9UIService0xyZ5BoardCTf1nnc_n(void *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    v9 = specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo14UISceneSessionCGMd, &_ss11_SetStorageCySo14UISceneSessionCGMR);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = result;
  v26 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v27 = v11 | (v5 << 6);
    v14 = *(*(a3 + 48) + 8 * v27);
    v15 = [v14 persistentIdentifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = (*((swift_isaMask & *a4) + 0xA0))();
    if (v20)
    {
      if (v16 == v19 && v20 == v18)
      {

LABEL_20:
        *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
LABEL_23:

          return specialized _NativeSet.extractSubset(using:count:)(v25, a2, v26, a3);
        }
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_23;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.filter(_:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v10 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v34 = v7;
    v35 = v3;
    v33 = &v33;
    __chkstk_darwin(v9);
    v36 = &v33 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v8);
    v37 = 0;
    v8 = 0;
    v3 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    v7 = (v11 + 63) >> 6;
    v39 = v4;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_13:
      v17 = v14 | (v8 << 6);
      v18 = *(v4 + 48);
      v38 = v17;
      v19 = *(v18 + 8 * v17);
      v20 = [v19 persistentIdentifier];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = (*((swift_isaMask & *v10) + 0xA0))();
      if (v25)
      {
        if (v21 == v24 && v25 == v23)
        {

          v4 = v39;
LABEL_21:
          *&v36[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
          if (__OFADD__(v37++, 1))
          {
            __break(1u);
LABEL_24:
            v29 = specialized _NativeSet.extractSubset(using:count:)(v36, v34, v37, v4);

            return v29;
          }
        }

        else
        {
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v4 = v39;
          if (v27)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {

        v4 = v39;
      }
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v7)
      {
        goto LABEL_24;
      }

      v16 = *(v3 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v31 = swift_slowAlloc();
  v32 = v10;
  v29 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo14UISceneSessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So14iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n072_s28LocalAuthenticationUIService20AngelSceneFrontBoardC10deactivateyyFSbqiJ6CXEfU_0uV9UIService0xyZ5BoardCTf1nnc_n(v31, v7, v4, v32);

  return v29;
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2);
  }

  v2 = a2;
  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for UISceneSession();
    do
    {
      swift_dynamicCast();
      v9 = [v22 persistentIdentifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = (*((swift_isaMask & *v2) + 0xA0))();
      if (v14)
      {
        if (v10 == v13 && v14 == v12)
        {

LABEL_18:
          v17 = *(&_swiftEmptySetSingleton + 2);
          if (*(&_swiftEmptySetSingleton + 3) <= v17)
          {
            specialized _NativeSet.resize(capacity:)(v17 + 1);
          }

          result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
          v4 = &_swiftEmptySetSingleton + 56;
          v5 = -1 << *(&_swiftEmptySetSingleton + 32);
          v6 = result & ~v5;
          v7 = v6 >> 6;
          if (((-1 << v6) & ~*(&_swiftEmptySetSingleton + (v6 >> 6) + 7)) != 0)
          {
            v8 = __clz(__rbit64((-1 << v6) & ~*(&_swiftEmptySetSingleton + (v6 >> 6) + 7))) | v6 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v18 = 0;
            v19 = (63 - v5) >> 6;
            do
            {
              if (++v7 == v19 && (v18 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v20 = v7 == v19;
              if (v7 == v19)
              {
                v7 = 0;
              }

              v18 |= v20;
              v21 = *&v4[8 * v7];
            }

            while (v21 == -1);
            v8 = __clz(__rbit64(~v21)) + (v7 << 6);
          }

          *&v4[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
          *(*(&_swiftEmptySetSingleton + 6) + 8 * v8) = v22;
          ++*(&_swiftEmptySetSingleton + 2);
          continue;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100048D74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t key path getter for RemoteAlertSceneDelegate.presenter : RemoteAlertSceneDelegate@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RemoteAlertSceneDelegate.presenter : RemoteAlertSceneDelegate(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x70);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t RemoteAlertSceneDelegate.presenter.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_presenter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t RemoteAlertSceneDelegate.presenter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_presenter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t key path getter for RemoteAlertSceneDelegate.sceneController : RemoteAlertSceneDelegate@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for RemoteAlertSceneDelegate.sceneController : RemoteAlertSceneDelegate(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x88);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t RemoteAlertSceneDelegate.sceneController.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_sceneController);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t RemoteAlertSceneDelegate.sceneController.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_sceneController);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void *RemoteAlertSceneDelegate.window.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RemoteAlertSceneDelegate.window.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for RemoteAlertSceneDelegate.window : RemoteAlertSceneDelegate@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RemoteAlertSceneDelegate.window : RemoteAlertSceneDelegate(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xA0);
  v4 = *a1;
  return v3(v2);
}

void *RemoteAlertSceneDelegate.remoteAlertRootViewController.getter()
{
  result = (*((swift_isaMask & *v0) + 0x98))();
  if (result)
  {
    v2 = result;
    v3 = [result rootViewController];

    if (v3)
    {
      type metadata accessor for RemoteAlertRootViewController();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo16UIOpenURLContextCG_10Foundation3URLVs5NeverOTg50162_s28LocalAuthenticationUIService24RemoteAlertSceneDelegateC5scene_13willConnectTo7optionsySo7UISceneC_So0M7SessionCSo0M17ConnectionOptionsCtF10Foundation3URLVSo16dE6CXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v8)
  {
    v51 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = _HashTable.startBucket.getter();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        specialized Set.subscript.getter(v48, v49, v50, a1);
        v21 = v20;
        v22 = [v20 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = v46;
        v51 = v46;
        v25 = v46[2];
        v24 = v46[3];
        if (v25 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        v23[2] = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo16UIOpenURLContextC_GMd, &_sSh5IndexVySo16UIOpenURLContextC_GMR);
          v14 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            outlined consume of Set<UIOpenURLContext>.Index._Variant(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
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

Swift::Void __swiftcall RemoteAlertSceneDelegate.sceneDidBecomeActive(_:)(UIScene a1)
{
  v3 = (*((swift_isaMask & *v1) + 0xB0))();
  if (v3)
  {
    v10 = v3;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = a1.super.super.isa;
      v7 = closure #1 in RemoteAlertSceneDelegate.sceneDidBecomeActive(_:)(v5);
      v8 = [objc_allocWithZone(LACUIScenePresentationRequest) initWithUserInterfaceRequest:v7];

      (*((swift_isaMask & *v10) + 0x50))(v8);
      v9 = v8;
    }

    else
    {
      v9 = v10;
    }
  }
}

id closure #1 in RemoteAlertSceneDelegate.sceneDidBecomeActive(_:)(void *a1)
{
  v2 = [objc_allocWithZone(LACUserInterfaceRequestCoder) init];
  v3 = [a1 configurationContext];
  if (v3 && (v4 = v3, v5 = [v3 userInfo], v4, v5))
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v2 decode:isa];

  if (!v7)
  {
    v7 = [objc_opt_self() unknownInstance];
  }

  return v7;
}

Swift::Void __swiftcall RemoteAlertSceneDelegate.sceneDidDisconnect(_:)(UIScene a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v9 = a1.super.super.isa;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136315138;
    v15 = [(objc_class *)v9 session];
    v29 = v9;
    v16 = v15;
    v17 = [v15 persistentIdentifier];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v30);

    *(v13 + 4) = v21;
    v9 = v29;
    _os_log_impl(&_mh_execute_header, v10, v11, "Did disconnect from scene: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);

    v22 = (*(v5 + 8))(v8, v28);
  }

  else
  {

    v22 = (*(v5 + 8))(v8, v4);
  }

  v23 = (*((swift_isaMask & *v2) + 0x98))(v22);
  if (v23)
  {
    v24 = v23;
    v25 = [v23 rootViewController];

    if (v25)
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        [v26 sceneDeactivated];
      }
    }
  }

  type metadata accessor for RemoteAlertSceneDelegate();
  AngelSceneDelegate.disconnect(scene:)(v9);
}

id RemoteAlertSceneDelegate.init()()
{
  *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_presenter] = 0;
  v1 = &v0[OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_sceneController];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService24RemoteAlertSceneDelegate_window] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v3, "init");
}

id RemoteAlertSceneDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*protocol witness for AngelSceneDelegate.window.modify in conformance RemoteAlertSceneDelegate(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((swift_isaMask & *v1) + 0xA8))();
  return protocol witness for LACUISceneControlling.delegate.modify in conformance SceneControllerFrontBoard;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for URL() - 8);
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

void specialized Set.subscript.getter(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIOpenURLContext, UIOpenURLContext_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIOpenURLContext, UIOpenURLContext_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void specialized RemoteAlertSceneDelegate.remoteAlertScene(_:handle:)(uint64_t a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x98))();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 rootViewController];

  if (!v5)
  {
    return;
  }

  v6 = swift_dynamicCastObjCProtocolConditional();
  if (!v6)
  {
LABEL_23:

    return;
  }

  v19 = v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for SBUIRemoteAlertButtonAction, SBUIRemoteAlertButtonAction_ptr);
    lazy protocol witness table accessor for type UIOpenURLContext and conformance NSObject(&lazy protocol witness table cache variable for type SBUIRemoteAlertButtonAction and conformance NSObject, &lazy cache variable for type metadata for SBUIRemoteAlertButtonAction, SBUIRemoteAlertButtonAction_ptr);
    Set.Iterator.init(_cocoa:)();
    a1 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
    v10 = v25;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  while (a1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for SBUIRemoteAlertButtonAction, SBUIRemoteAlertButtonAction_ptr), swift_dynamicCast(), (v17 = v20) == 0))
    {
LABEL_22:
      outlined consume of Set<UISceneSession>.Iterator._Variant();
      goto LABEL_23;
    }

LABEL_20:
    v18 = [v17 events];

    if ((v18 & 0x10) != 0)
    {
      outlined consume of Set<UISceneSession>.Iterator._Variant();
      [v19 handleSceneButton:0];
      goto LABEL_23;
    }
  }

  v15 = v9;
  v16 = v10;
  if (v10)
  {
LABEL_16:
    v10 = (v16 - 1) & v16;
    v17 = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_22;
    }

    v16 = *(v7 + 8 * v9);
    ++v15;
    if (v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t lazy protocol witness table accessor for type UIOpenURLContext and conformance NSObject(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIDevice(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of Set<UIOpenURLContext>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

Swift::Void __swiftcall AngelSceneDelegate.disconnect(scene:)(UIScene scene)
{
  v3 = v2;
  v4 = v1;
  if ((*(v2 + 16))())
  {
    swift_getObjectType();
    v6 = [(objc_class *)scene.super.super.isa session];
    v7 = [v6 persistentIdentifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    dispatch thunk of LACUISceneControlling.sceneDidDisconnect(identifier:)();
    swift_unknownObjectRelease();

    v8 = (*(v3 + 24))(v4, v3);
    if (v8)
    {
      v9 = v8;
      v10 = [v8 windowScene];

      if (v10)
      {
        type metadata accessor for UIScene();
        v11 = scene.super.super.isa;
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          v13 = *(v3 + 32);

          v13(0, v4, v3);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t type metadata accessor for UIScene()
{
  result = lazy cache variable for type metadata for UIScene;
  if (!lazy cache variable for type metadata for UIScene)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIScene);
  }

  return result;
}

id AngelSceneProviderFrontBoard.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AngelSceneProviderFrontBoard();
  return objc_msgSendSuper2(&v2, "init");
}

id AngelSceneProviderFrontBoard.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AngelSceneProviderFrontBoard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id specialized AngelSceneProviderFrontBoard.makeFrontBoardScene(for:)(void *a1)
{
  v51 = a1;
  v1 = type metadata accessor for Logger();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = *(v49 + 64);
  v3 = __chkstk_darwin(v1);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v46 = &v46 - v5;
  v6 = type metadata accessor for URL();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  v18 = LACUserInterfaceBundleIdentifierAngel;
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = objc_opt_self();
  type metadata accessor for SceneControllerFrontBoard();
  lazy protocol witness table accessor for type SceneControllerFrontBoard and conformance SceneControllerFrontBoard();
  v22 = v18;
  static LACUISceneControlling.globalSceneIdentifier.getter();
  v23 = String._bridgeToObjectiveC()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000867F0;
  *(inited + 32) = static LACUISceneUserInfoKey.identifier.getter();
  *(inited + 40) = v25;
  *(inited + 48) = v15;
  *(inited + 56) = v17;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, String)(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = [v21 applicationPayloadURLForBundleID:v22 rootControllerName:v23 parameters:isa];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  v31 = [v21 applicationOptionsForPayloadURL:v29 softwareUpdate:{objc_msgSend(v51, "isForSoftwareUpdate")}];

  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = [objc_opt_self() optionsWithDictionary:v32];

  if (v33)
  {
    v34 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    if (v34)
    {
      v35 = v34;
      type metadata accessor for AngelSceneFrontBoard();
      v36 = AngelSceneFrontBoard.__allocating_init(identifier:bundleId:service:options:)(v15, v17, v48, v20, v35, v33);
      (*(v52 + 8))(v9, v53);
      return v36;
    }

    v42 = v46;
    static LACLog.ui.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Unable to create FBSOpenApplicationService", v45, 2u);
    }

    (*(v49 + 8))(v42, v50);
  }

  else
  {

    v38 = v47;
    static LACLog.ui.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Unable to create FBSOpenApplicationOptions", v41, 2u);
    }

    (*(v49 + 8))(v38, v50);
  }

  (*(v52 + 8))(v9, v53);
  return 0;
}

uint64_t outlined destroy of (String, String)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id variable initialization expression of PasscodeAlertContentViewController.passcodeController()
{
  v0 = objc_opt_self();
  v1 = [v0 currentPasscode];
  v2 = [v1 length];

  v3 = [v0 currentPasscode];
  v4 = [v3 type];

  v5 = v4 == 4;
  if (v2 == NSNotFound.getter())
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  v7 = objc_allocWithZone(PasscodeEmbeddedCustomizableViewController);

  return [v7 initWithPasscodeLength:v6 alphanumeric:v5];
}

uint64_t PasscodeAlertContentViewController.externalizedContext.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_externalizedContext);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_externalizedContext + 8));
  return v1;
}

void *PasscodeAlertContentViewController.userId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_userId);
  v2 = v1;
  return v1;
}

uint64_t key path getter for PasscodeAlertContentViewController.delegate : PasscodeAlertContentViewController@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for PasscodeAlertContentViewController.delegate : PasscodeAlertContentViewController(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t PasscodeAlertContentViewController.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t PasscodeAlertContentViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PasscodeAlertContentViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PasscodeAlertContentViewController.delegate.modify;
}

void PasscodeAlertContentViewController.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id PasscodeAlertContentViewController.failureLimit.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_options);
  v6 = LACPolicyOptionMaxPasscodeFailures;
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v3 & 1) != 0))
  {
    outlined init with copy of Any(*(v1 + 56) + 32 * v2, v8);
    outlined destroy of AnyHashable(v7);
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v4 = [v6 unsignedIntegerValue];

      return v4;
    }
  }

  else
  {
    outlined destroy of AnyHashable(v7);
  }

  return 0;
}

uint64_t PasscodeAlertContentViewController.failures.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_failures;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PasscodeAlertContentViewController.failures.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_failures;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id PasscodeAlertContentViewController.__allocating_init(externalizedContext:userId:policy:options:backoffCounter:auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = objc_allocWithZone(v7);
  v13 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v13);
  v14 = objc_opt_self();
  v15 = [v14 currentPasscode];
  v16 = [v15 length];

  v17 = [v14 currentPasscode];
  v18 = [v17 type];

  if (v16 == NSNotFound.getter())
  {
    v16 = 0;
  }

  v19 = OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_passcodeController;
  *&v12[v19] = [objc_allocWithZone(PasscodeEmbeddedCustomizableViewController) initWithPasscodeLength:v16 alphanumeric:v18 == 4];
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_failures] = 0;
  v20 = &v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_externalizedContext];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_userId] = a3;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_policy] = a4;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_options] = a5;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_backoffCounter] = a6;
  *&v12[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_auditToken] = a7;
  v25.receiver = v12;
  v25.super_class = v7;
  return objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
}

id PasscodeAlertContentViewController.init(externalizedContext:userId:policy:options:backoffCounter:auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v13 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v13);
  v14 = objc_opt_self();
  v15 = [v14 currentPasscode];
  v16 = [v15 length];

  v17 = [v14 currentPasscode];
  v18 = [v17 type];

  if (v16 == NSNotFound.getter())
  {
    v16 = 0;
  }

  v19 = OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_passcodeController;
  *&v7[v19] = [objc_allocWithZone(PasscodeEmbeddedCustomizableViewController) initWithPasscodeLength:v16 alphanumeric:v18 == 4];
  *&v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_failures] = 0;
  v20 = &v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_externalizedContext];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_userId] = a3;
  *&v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_policy] = a4;
  *&v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_options] = a5;
  *&v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_backoffCounter] = a6;
  *&v7[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_auditToken] = a7;
  v25.receiver = v7;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
}

Swift::Void __swiftcall PasscodeAlertContentViewController.loadView()()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_passcodeController];
  v5 = [v4 view];
  if (!v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v5;
  [v3 addSubview:v5];

  v7 = [v4 view];
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100087B80;
  v10 = [v4 view];
  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13;
  v15 = [v13 leadingAnchor];

  v16 = [v12 constraintEqualToAnchor:v15 constant:10.0];
  *(v9 + 32) = v16;
  v17 = [v4 view];
  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v17;
  v19 = [v17 trailingAnchor];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = [v19 constraintEqualToAnchor:v22 constant:-10.0];
  *(v9 + 40) = v23;
  v24 = [v4 view];
  if (!v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v0 view];
  if (!v27)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v9 + 48) = v30;
  v31 = [v4 view];
  if (!v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v0 view];
  if (!v34)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v35 = v34;
  v36 = [v34 bottomAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v9 + 56) = v37;
  v38 = [v4 view];
  if (!v38)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v39 = v38;
  v40 = objc_opt_self();
  v41 = [v39 heightAnchor];

  v42 = [v41 constraintEqualToConstant:80.0];
  *(v9 + 64) = v42;
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v40 activateConstraints:isa];

  [v0 addChildViewController:v4];
  [v4 didMoveToParentViewController:v0];

  [v4 setDelegate:v0];
}

Swift::Void __swiftcall PasscodeAlertContentViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1);
  v3 = *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_backoffCounter];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = partial apply for closure #1 in PasscodeAlertContentViewController.viewWillAppear(_:);
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v6[3] = &block_descriptor_5;
  v5 = _Block_copy(v6);

  [v3 currentBackoffErrorWithReply:v5];
  _Block_release(v5);
}

uint64_t closure #1 in PasscodeAlertContentViewController.viewWillAppear(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    swift_errorRetain();
    v18 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = a1;
    aBlock[4] = partial apply for closure #1 in closure #1 in PasscodeAlertContentViewController.viewWillAppear(_:);
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_18_0;
    v16 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v18;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t PasscodeAlertContentViewController.switchToBackoffScreen(error:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v54[-v5];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v61 = &v54[-v14];
  __chkstk_darwin(v13);
  v16 = &v54[-v15];
  v17 = _convertErrorToNSError(_:)();
  v18 = [v17 userInfo];

  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v19 + 16))
  {

    goto LABEL_8;
  }

  v58 = v12;
  v59 = a1;
  v60 = v1;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_8:

    (*(v8 + 56))(v6, 1, 1, v7);
    return outlined destroy of LACUIAngelConnectionHandling?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  outlined init with copy of Any(*(v19 + 56) + 32 * v22, aBlock);

  v25 = swift_dynamicCast();
  (*(v8 + 56))(v6, v25 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return outlined destroy of LACUIAngelConnectionHandling?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v26 = v16;
  (*(v8 + 32))(v16, v6, v7);
  v27 = v61;
  Date.init()();
  v28 = Date.compare(_:)();
  v29 = *(v8 + 8);
  (v29)(v27, v7);
  if (v28 == 1)
  {
    v30 = v58;
    (*(v8 + 16))(v58, v26, v7);
    v31 = v60;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v60 = v29;
      v35 = v34;
      v36 = swift_slowAlloc();
      v56 = v36;
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v35 = 138543618;
      *(v35 + 4) = v31;
      *v36 = v31;
      *(v35 + 12) = 2082;
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
      v37 = v31;
      v55 = v33;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (v60)(v30, v7);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, aBlock);

      *(v35 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v32, v55, "%{public}@ is blocked until %{public}s", v35, 0x16u);
      outlined destroy of LACUIAngelConnectionHandling?(v56, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0(v57);

      v29 = v60;
    }

    else
    {

      (v29)(v30, v7);
    }

    v44 = *&v31[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_passcodeController];
    Date.init()();
    Date.timeIntervalSince(_:)();
    v46 = v45;
    (v29)(v27, v7);
    [v44 setBackoffTimeout:0 showBackoffTitle:1 passcodeFocused:v46];
    v47 = objc_opt_self();
    v48 = swift_allocObject();
    v49 = v26;
    v50 = v59;
    *(v48 + 16) = v31;
    *(v48 + 24) = v50;
    aBlock[4] = partial apply for closure #1 in PasscodeAlertContentViewController.switchToBackoffScreen(error:);
    aBlock[5] = v48;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = &block_descriptor_6_1;
    v51 = _Block_copy(aBlock);
    v52 = v31;
    swift_errorRetain();

    v53 = [v47 scheduledTimerWithTimeInterval:0 repeats:v51 block:1.0];
    _Block_release(v51);

    v43 = v49;
  }

  else
  {
    [*&v60[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_passcodeController] setBackoffTimeout:0 showBackoffTitle:1 passcodeFocused:0.0];
    v43 = v26;
  }

  return (v29)(v43, v7);
}

Swift::Void __swiftcall PasscodeAlertContentViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "viewDidAppear:", a1);
  [*&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_passcodeController] setPasscodeFocused:1];
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

Swift::Void __swiftcall PasscodeAlertContentViewController.passcodeVerified(result:)(Swift::OpaquePointer result)
{
  v3 = v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(result._rawValue, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall PasscodeAlertContentViewController.passcodeRejected()()
{
  v1 = v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

uint64_t PasscodeAlertContentViewController.passcodeAuthenticationFailed(error:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PasscodeAlertContentViewController.passcodeFailure(error:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t protocol witness for DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:) in conformance PasscodeAlertContentViewController(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();

  return DevicePasscodeVerifier.verify(passcode:acmContext:userId:policy:options:auditToken:reply:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, ObjectType, a12);
}

void specialized PasscodeAlertContentViewController.init(coder:)()
{
  v1 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v1);
  v2 = objc_opt_self();
  v3 = [v2 currentPasscode];
  v4 = [v3 length];

  v5 = [v2 currentPasscode];
  v6 = [v5 type];

  v7 = v6 == 4;
  if (v4 == NSNotFound.getter())
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_passcodeController;
  *(v0 + v9) = [objc_allocWithZone(PasscodeEmbeddedCustomizableViewController) initWithPasscodeLength:v8 alphanumeric:v7];
  *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_failures) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10004EA9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004EAF4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for PasscodeAlertContentViewController()
{
  result = type metadata singleton initialization cache for PasscodeAlertContentViewController;
  if (!type metadata singleton initialization cache for PasscodeAlertContentViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PasscodeAlertContentViewController()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10004EC94()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004ECCC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void partial apply for closure #1 in closure #1 in PasscodeAlertContentViewController.viewWillAppear(_:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    PasscodeAlertContentViewController.switchToBackoffScreen(error:)(v1);
  }
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

id static RatchetCoolOffFactory.makeViewController(with:delegate:)(uint64_t a1)
{
  type metadata accessor for RatchetCoolOffContentViewModel(0);

  swift_unknownObjectRetain();
  v2 = RatchetCoolOffContentViewModel.__allocating_init(with:delegate:)(a1);
  type metadata accessor for RatchetCoolOffContentViewController();
  v3 = lazy protocol witness table accessor for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel();
  return RatchetCoolOffContentViewController.__allocating_init(viewModel:)(v2, v3);
}

unint64_t lazy protocol witness table accessor for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel()
{
  result = lazy protocol witness table cache variable for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel;
  if (!lazy protocol witness table cache variable for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel)
  {
    type metadata accessor for RatchetCoolOffContentViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel;
  if (!lazy protocol witness table cache variable for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel)
  {
    type metadata accessor for RatchetCoolOffContentViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel);
  }

  return result;
}

id SecureUIControllerDynamicIslandConfiguration.init(lightweightMode:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithLightweightMode:a1];
}

{
  *(v1 + OBJC_IVAR___SecureUIControllerDynamicIslandConfiguration_isForLightweightUI) = LACLightweightUIModeNone != a1;
  v3.super_class = SecureUIControllerDynamicIslandConfiguration;
  return objc_msgSendSuper2(&v3, "init");
}

SecureUIControllerDynamicIslandConfiguration __swiftcall SecureUIControllerDynamicIslandConfiguration.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v0 init];
  result.isForLightweightUI = v1;
  return result;
}

unint64_t type metadata accessor for SecureUIControllerDynamicIslandConfiguration()
{
  result = lazy cache variable for type metadata for SecureUIControllerDynamicIslandConfiguration;
  if (!lazy cache variable for type metadata for SecureUIControllerDynamicIslandConfiguration)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SecureUIControllerDynamicIslandConfiguration);
  }

  return result;
}

uint64_t key path getter for RatchetCoolOffContentViewModel.delegate : RatchetCoolOffContentViewModel@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t key path setter for RatchetCoolOffContentViewModel.delegate : RatchetCoolOffContentViewModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t RatchetCoolOffContentViewModel.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RatchetCoolOffContentViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return AngelSceneRemoteAlert.delegate.modify;
}

uint64_t RatchetCoolOffContentViewModel.state.getter()
{
  v1 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel____lazy_storage___state;
  if (*(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel____lazy_storage___state))
  {
    v5 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel____lazy_storage___state);
  }

  else
  {
    v6 = v0;
    RatchetCoolOffContentViewModel.configuration.getter(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    swift_storeEnumTagMultiPayload();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMR);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v5 = CurrentValueSubject.init(_:)();
    v10 = *(v0 + v4);
    *(v6 + v4) = v5;
  }

  return v5;
}

uint64_t RatchetCoolOffContentViewModel.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v52 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  v18 = RatchetCoolOffContentViewModel.options.getter();
  v60[0] = LACPolicyOptionCustomRatchetCancelLocalizedTitle;
  AnyHashable.init<A>(_:)();
  if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v59), (v20 & 1) != 0))
  {
    outlined init with copy of Any(*(v18 + 56) + 32 * v19, v60);
    outlined destroy of AnyHashable(v59);

    v21 = swift_dynamicCast();
    if (v21)
    {
      v22 = v57;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v58;
    }

    else
    {
      v23 = 0;
    }

    v53 = v22;
    v54 = v23;
  }

  else
  {

    outlined destroy of AnyHashable(v59);
    v53 = 0;
    v54 = 0;
  }

  v24 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_expirationDate;
  swift_beginAccess();
  outlined init with copy of LACUIAngelConnectionHandling?(v2 + v24, v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v25 = *(v11 + 48);
  if (v25(v9, 1, v10) == 1)
  {
    outlined destroy of LACUIAngelConnectionHandling?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v26 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_gracePeriodExpirationDate;
    swift_beginAccess();
    outlined init with copy of LACUIAngelConnectionHandling?(v2 + v26, v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v27 = v25(v7, 1, v10);
    outlined destroy of LACUIAngelConnectionHandling?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v27 == 1)
    {
      v28 = RatchetCoolOffContentViewModel.options.getter();
      v60[0] = LACPolicyOptionBeginRatchetLocalizedTitle;
      AnyHashable.init<A>(_:)();
      if (*(v28 + 16) && (v29 = specialized __RawDictionaryStorage.find<A>(_:)(v59), (v30 & 1) != 0))
      {
        outlined init with copy of Any(*(v28 + 56) + 32 * v29, v60);
        outlined destroy of AnyHashable(v59);

        swift_dynamicCast();
      }

      else
      {

        outlined destroy of AnyHashable(v59);
      }

      v36 = RatchetCoolOffContentViewModel.options.getter();
      v60[0] = LACPolicyOptionBeginRatchetLocalizedText;
      AnyHashable.init<A>(_:)();
      if (*(v36 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(v59), (v38 & 1) != 0))
      {
        outlined init with copy of Any(*(v36 + 56) + 32 * v37, v60);
        outlined destroy of AnyHashable(v59);

        if (swift_dynamicCast())
        {
          v39 = v56;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v59);
        v39 = 0;
      }

      v42 = RatchetCoolOffContentViewModel.options.getter();
      v60[0] = LACPolicyOptionBeginRatchetStrictModeLocalizedText;
      AnyHashable.init<A>(_:)();
      if (*(v42 + 16) && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(v59), (v44 & 1) != 0))
      {
        outlined init with copy of Any(*(v42 + 56) + 32 * v43, v60);
        outlined destroy of AnyHashable(v59);

        if (swift_dynamicCast())
        {
          v45 = v56;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v59);
        v45 = 0;
      }

      v46 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_isStrictModeEnabled;
      if ((*(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_isStrictModeEnabled) & 1) == 0)
      {

        v45 = v39;
      }

      if (v45)
      {
      }

      v47 = RatchetCoolOffContentViewModel.options.getter();
      v60[0] = LACPolicyOptionBeginRatchetShowsLocationWarning;
      AnyHashable.init<A>(_:)();
      if (*(v47 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(v59), (v49 & 1) != 0))
      {
        outlined init with copy of Any(*(v47 + 56) + 32 * v48, v60);
        outlined destroy of AnyHashable(v59);

        swift_dynamicCast();
      }

      else
      {

        outlined destroy of AnyHashable(v59);
      }

      v50 = *(v2 + v46);
      v51 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_familiarLocationsUnavailable);
      static LACUIAuthCountdownConfiguration.begin(title:message:strictModeEnabled:showsLocationWarning:familiarLocationsUnavailable:customCancelTitle:)();
    }

    else
    {
      static LACUIAuthCountdownConfiguration.gracePeriod(customCancelTitle:)();
    }
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    static Date.now.getter();
    v31 = static Date.> infix(_:_:)();
    v32 = *(v11 + 8);
    v32(v15, v10);
    if (v31)
    {
      v33 = RatchetCoolOffContentViewModel.options.getter();
      v60[0] = LACPolicyOptionCountdownLocalizedText;
      AnyHashable.init<A>(_:)();
      if (*(v33 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v59), (v35 & 1) != 0))
      {
        outlined init with copy of Any(*(v33 + 56) + 32 * v34, v60);
        outlined destroy of AnyHashable(v59);

        swift_dynamicCast();
      }

      else
      {

        outlined destroy of AnyHashable(v59);
      }

      v40 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_isStrictModeEnabled);
      static LACUIAuthCountdownConfiguration.countdown(message:delayExpiration:strictModeEnabled:customCancelTitle:)();
    }

    else
    {
      static LACUIAuthCountdownConfiguration.ready(message:customCancelTitle:)();
    }

    return (v32)(v17, v10);
  }
}

uint64_t RatchetCoolOffContentViewModel.statePublisher.getter()
{
  RatchetCoolOffContentViewModel.state.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<RatchetCoolOffContentViewModelState, Never> and conformance CurrentValueSubject<A, B>();
  v0 = Publisher.eraseToAnyPublisher()();

  return v0;
}

uint64_t variable initialization expression of AuthorizationViewModel._blockedUntilDate@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t RatchetCoolOffContentViewModel.options.getter()
{
  AnyHashable.init<A>(_:)();
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_internalInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, &v7);
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  swift_endAccess();
  outlined destroy of AnyHashable(v6);
  if (*(&v8 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    if (swift_dynamicCast())
    {
      return 0x736E6F6974704FLL;
    }
  }

  else
  {
    outlined destroy of LACUIAngelConnectionHandling?(&v7, &_sypSgMd, &_sypSgMR);
  }

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
}

id RatchetCoolOffContentViewModel.init(with:delegate:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v32 = &v31 - v11;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel____lazy_storage___state] = 0;
  v12 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_expirationDate;
  v31 = v5;
  v13 = *(v5 + 56);
  v13(&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_expirationDate], 1, 1, v4);
  v14 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_gracePeriodExpirationDate;
  v13(&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_gracePeriodExpirationDate], 1, 1, v4);
  *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_internalInfo] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v35 = 0x6F6974704F4F5444;
  v36 = 0xEA0000000000736ELL;

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v37), (v16 & 1) == 0))
  {

    outlined destroy of AnyHashable(v37);
LABEL_11:
    v38 = 0u;
    v39 = 0u;
    outlined destroy of LACUIAngelConnectionHandling?(&v38, &_sypSgMd, &_sypSgMR);
    v38 = 0u;
    v39 = 0u;
    outlined destroy of LACUIAngelConnectionHandling?(&v38, &_sypSgMd, &_sypSgMR);
    v38 = 0u;
    v39 = 0u;
    outlined destroy of LACUIAngelConnectionHandling?(&v38, &_sypSgMd, &_sypSgMR);
    v2[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_isStrictModeEnabled] = 0;
LABEL_12:
    v38 = 0u;
    v39 = 0u;
LABEL_13:
    outlined destroy of LACUIAngelConnectionHandling?(&v38, &_sypSgMd, &_sypSgMR);
    goto LABEL_14;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v15, &v38);
  outlined destroy of AnyHashable(v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = v35;
  if (!v35)
  {
    goto LABEL_11;
  }

  v35 = 0x4466664F6C6F6F43;
  v36 = 0xEF6E6F6974617275;

  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v37), (v19 & 1) == 0))
  {

    outlined destroy of AnyHashable(v37);
    v38 = 0u;
    v39 = 0u;
    goto LABEL_17;
  }

  outlined init with copy of Any(*(v17 + 56) + 32 * v18, &v38);
  outlined destroy of AnyHashable(v37);

  if (!*(&v39 + 1))
  {
LABEL_17:
    outlined destroy of LACUIAngelConnectionHandling?(&v38, &_sypSgMd, &_sypSgMR);
    goto LABEL_18;
  }

  if (swift_dynamicCast())
  {
    static Date.now.getter();
    Date.addingTimeInterval(_:)();
    (*(v31 + 8))(v8, v4);
    v13(v32, 0, 1, v4);
    swift_beginAccess();
    outlined assign with take of Date?(v32, &v2[v12]);
    swift_endAccess();
  }

LABEL_18:
  v35 = 0xD000000000000013;
  v36 = 0x8000000100099370;

  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v37), (v24 & 1) == 0))
  {

    outlined destroy of AnyHashable(v37);
    v38 = 0u;
    v39 = 0u;
    goto LABEL_24;
  }

  outlined init with copy of Any(*(v17 + 56) + 32 * v23, &v38);
  outlined destroy of AnyHashable(v37);

  if (!*(&v39 + 1))
  {
LABEL_24:
    outlined destroy of LACUIAngelConnectionHandling?(&v38, &_sypSgMd, &_sypSgMR);
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    static Date.now.getter();
    v25 = v32;
    Date.addingTimeInterval(_:)();
    (*(v31 + 8))(v8, v4);
    v13(v25, 0, 1, v4);
    swift_beginAccess();
    outlined assign with take of Date?(v25, &v2[v14]);
    swift_endAccess();
  }

LABEL_25:
  v35 = 0xD000000000000011;
  v36 = 0x8000000100099350;

  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v37), (v27 & 1) == 0))
  {

    outlined destroy of AnyHashable(v37);
    v38 = 0u;
    v39 = 0u;
    goto LABEL_31;
  }

  outlined init with copy of Any(*(v17 + 56) + 32 * v26, &v38);
  outlined destroy of AnyHashable(v37);

  if (!*(&v39 + 1))
  {
LABEL_31:
    outlined destroy of LACUIAngelConnectionHandling?(&v38, &_sypSgMd, &_sypSgMR);
    v2[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_isStrictModeEnabled] = 0;
    goto LABEL_32;
  }

  if (swift_dynamicCast())
  {
    v28 = v37[0];
  }

  else
  {
    v28 = 0;
  }

  v2[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_isStrictModeEnabled] = v28;
LABEL_32:
  v35 = 0xD00000000000001CLL;
  v36 = 0x8000000100099330;
  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v29 = specialized __RawDictionaryStorage.find<A>(_:)(v37), (v30 & 1) == 0))
  {

    outlined destroy of AnyHashable(v37);
    goto LABEL_12;
  }

  outlined init with copy of Any(*(v17 + 56) + 32 * v29, &v38);
  outlined destroy of AnyHashable(v37);

  if (!*(&v39 + 1))
  {
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v20 = v37[0];
    goto LABEL_15;
  }

LABEL_14:
  v20 = 0;
LABEL_15:
  v2[OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_familiarLocationsUnavailable] = v20;
  v34.receiver = v2;
  v34.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v34, "init");
  RatchetCoolOffContentViewModel.resolveCurrentState()();

  swift_unknownObjectRelease();
  return v21;
}

uint64_t RatchetCoolOffContentViewModel.resolveCurrentState()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v28 = &v26 - v6;
  v31 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v7 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_gracePeriodExpirationDate;
  swift_beginAccess();
  outlined init with copy of LACUIAngelConnectionHandling?(v0 + v17, v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v29 = v2;
  v30 = v1;
  v18 = *(v2 + 48);
  LODWORD(v2) = v18(v16, 1, v1);
  outlined destroy of LACUIAngelConnectionHandling?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v2 != 1)
  {
    RatchetCoolOffContentViewModel.state.getter();
    RatchetCoolOffContentViewModel.configuration.getter(v9);
    goto LABEL_5;
  }

  v19 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_expirationDate;
  swift_beginAccess();
  outlined init with copy of LACUIAngelConnectionHandling?(v0 + v19, v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v20 = v30;
  if (v18(v14, 1, v30) == 1)
  {
    outlined destroy of LACUIAngelConnectionHandling?(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    RatchetCoolOffContentViewModel.state.getter();
    RatchetCoolOffContentViewModel.configuration.getter(v9);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    CurrentValueSubject.value.setter();
  }

  v23 = v28;
  v22 = v29;
  (*(v29 + 32))(v28, v14, v20);
  v24 = v27;
  static Date.now.getter();
  static Date.> infix(_:_:)();
  v25 = *(v22 + 8);
  v25(v24, v20);
  RatchetCoolOffContentViewModel.state.getter();
  RatchetCoolOffContentViewModel.configuration.getter(v9);
  swift_storeEnumTagMultiPayload();
  CurrentValueSubject.value.setter();

  return (v25)(v23, v20);
}

Swift::Void __swiftcall RatchetCoolOffContentViewModel.setCoolOffDuration(_:)(Swift::Double a1)
{
  v2 = v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v13 - v10;
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  (*(v4 + 8))(v7, v3);
  (*(v4 + 56))(v11, 0, 1, v3);
  v12 = OBJC_IVAR____TtC28LocalAuthenticationUIService30RatchetCoolOffContentViewModel_expirationDate;
  swift_beginAccess();
  outlined assign with take of Date?(v11, v2 + v12);
  swift_endAccess();
  RatchetCoolOffContentViewModel.resolveCurrentState()();
}

uint64_t RatchetCoolOffContentViewModel.handle(action:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationV22ActionButtonIdentifierOSgMd, &_s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationV22ActionButtonIdentifierOSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v37 - v4;
  v6 = type metadata accessor for LACUIAuthCountdownConfiguration.ActionButtonIdentifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v37 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v38 = &v37 - v11;
  v12 = type metadata accessor for LACUIAuthButtonConfiguration();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LACUIAuthActionCountdown();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == enum case for LACUIAuthActionCountdown.buttonTapped(_:))
  {
    (*(v18 + 96))(v21, v17);
    (*(v13 + 32))(v16, v21, v12);
    LACUIAuthButtonConfiguration.id.getter();
    LACUIAuthCountdownConfiguration.ActionButtonIdentifier.init(rawValue:)();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      (*(v13 + 8))(v16, v12);
      return outlined destroy of LACUIAngelConnectionHandling?(v5, &_s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationV22ActionButtonIdentifierOSgMd, &_s25LocalAuthenticationCoreUI31LACUIAuthCountdownConfigurationV22ActionButtonIdentifierOSgMR);
    }

    v24 = v38;
    (*(v7 + 32))(v38, v5, v6);
    v25 = v37;
    (*(v7 + 16))(v37, v24, v6);
    v26 = (*(v7 + 88))(v25, v6);
    if (v26 == enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.beginSecurityDelay(_:))
    {
      v27 = v39;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong ratchetCoolOffContentDidTapOnBeginDelay:v27];
LABEL_20:
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v29 = v39;
      if (v26 == enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.learnMore(_:))
      {
        swift_beginAccess();
        v30 = swift_unknownObjectWeakLoadStrong();
        if (v30)
        {
          [v30 ratchetCoolOffContentDidTapOnLearnMore:v29];
          goto LABEL_20;
        }
      }

      else if (v26 == enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.done(_:))
      {
        swift_beginAccess();
        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          [v31 ratchetCoolOffContentDidTapOnDone:v29];
          goto LABEL_20;
        }
      }

      else
      {
        if (v26 != enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.continue(_:) && v26 != enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.continueInGracePeriod(_:))
        {
          if (v26 == enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.cancel(_:))
          {
            swift_beginAccess();
            v33 = swift_unknownObjectWeakLoadStrong();
            if (!v33)
            {
              goto LABEL_21;
            }

            [v33 ratchetCoolOffContentDidTapOnCancel:v29];
          }

          else if (v26 == enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.customCancel(_:))
          {
            swift_beginAccess();
            v34 = swift_unknownObjectWeakLoadStrong();
            if (!v34)
            {
              goto LABEL_21;
            }

            [v34 ratchetCoolOffContentDidTapOnCustomCancel:v29];
          }

          else
          {
            if (v26 != enum case for LACUIAuthCountdownConfiguration.ActionButtonIdentifier.tapToRadar(_:))
            {
              v36 = *(v7 + 8);
              v36(v24, v6);
              (*(v13 + 8))(v16, v12);
              return (v36)(v25, v6);
            }

            swift_beginAccess();
            v35 = swift_unknownObjectWeakLoadStrong();
            if (!v35)
            {
              goto LABEL_21;
            }

            [v35 ratchetCoolOffContentDidTapOnFileRadar:v29];
          }

          goto LABEL_20;
        }

        swift_beginAccess();
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {
          [v32 ratchetCoolOffContentDidTapOnContinue:v29];
          goto LABEL_20;
        }
      }
    }

LABEL_21:
    (*(v7 + 8))(v24, v6);
    return (*(v13 + 8))(v16, v12);
  }

  if (v22 == enum case for LACUIAuthActionCountdown.delayElapsed(_:))
  {
    return RatchetCoolOffContentViewModel.resolveCurrentState()();
  }

  else
  {
    return (*(v18 + 8))(v21, v17);
  }
}

uint64_t specialized static RatchetCoolOffContentViewModelState.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  v5 = __chkstk_darwin(v3);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v54 = &v53 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v53 - v10;
  __chkstk_darwin(v9);
  v13 = &v53 - v12;
  v14 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v53 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v53 - v23;
  __chkstk_darwin(v22);
  v26 = &v53 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateO_ACtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateO_ACtMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v31 = &v53 - v30;
  v32 = *(v29 + 56);
  outlined init with copy of RatchetCoolOffContentViewModelState(a1, &v53 - v30);
  outlined init with copy of RatchetCoolOffContentViewModelState(v56, &v31[v32]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of RatchetCoolOffContentViewModelState(v31, v21);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v18 = v21;
        goto LABEL_14;
      }

      v34 = v57;
      v35 = &v31[v32];
      v36 = v54;
      v37 = v58;
      (*(v57 + 32))(v54, v35, v58);
      v38 = static LACUIAuthCountdownConfiguration.== infix(_:_:)();
      v39 = *(v34 + 8);
      v39(v36, v37);
      v39(v21, v37);
    }

    else
    {
      outlined init with copy of RatchetCoolOffContentViewModelState(v31, v18);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_14;
      }

      v44 = v57;
      v43 = v58;
      v45 = &v31[v32];
      v46 = v55;
      (*(v57 + 32))(v55, v45, v58);
      v38 = static LACUIAuthCountdownConfiguration.== infix(_:_:)();
      v47 = *(v44 + 8);
      v47(v46, v43);
      v47(v18, v43);
    }

LABEL_17:
    outlined destroy of RatchetCoolOffContentViewModelState(v31);
    return v38 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with copy of RatchetCoolOffContentViewModelState(v31, v24);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v18 = v24;
      goto LABEL_14;
    }

    v41 = v57;
    v40 = v58;
    (*(v57 + 32))(v11, &v31[v32], v58);
    v38 = static LACUIAuthCountdownConfiguration.== infix(_:_:)();
    v42 = *(v41 + 8);
    v42(v11, v40);
    v42(v24, v40);
    goto LABEL_17;
  }

  outlined init with copy of RatchetCoolOffContentViewModelState(v31, v26);
  if (!swift_getEnumCaseMultiPayload())
  {
    v48 = v57;
    v49 = &v31[v32];
    v50 = v58;
    (*(v57 + 32))(v13, v49, v58);
    v38 = static LACUIAuthCountdownConfiguration.== infix(_:_:)();
    v51 = *(v48 + 8);
    v51(v13, v50);
    v51(v26, v50);
    goto LABEL_17;
  }

  v18 = v26;
LABEL_14:
  (*(v57 + 8))(v18, v58);
  outlined destroy of LACUIAngelConnectionHandling?(v31, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateO_ACtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateO_ACtMR);
  v38 = 0;
  return v38 & 1;
}

unint64_t lazy protocol witness table accessor for type CurrentValueSubject<RatchetCoolOffContentViewModelState, Never> and conformance CurrentValueSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type CurrentValueSubject<RatchetCoolOffContentViewModelState, Never> and conformance CurrentValueSubject<A, B>;
  if (!lazy protocol witness table cache variable for type CurrentValueSubject<RatchetCoolOffContentViewModelState, Never> and conformance CurrentValueSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine19CurrentValueSubjectCy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CurrentValueSubject<RatchetCoolOffContentViewModelState, Never> and conformance CurrentValueSubject<A, B>);
  }

  return result;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t instantiation function for generic protocol witness table for RatchetCoolOffContentViewModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for RatchetCoolOffContentViewModelState()
{
  type metadata accessor for (configuration: LACUIAuthCountdownConfiguration)();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void type metadata accessor for (configuration: LACUIAuthCountdownConfiguration)()
{
  if (!lazy cache variable for type metadata for (configuration: LACUIAuthCountdownConfiguration))
  {
    v0 = type metadata accessor for LACUIAuthCountdownConfiguration();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (configuration: LACUIAuthCountdownConfiguration));
    }
  }
}

void type metadata completion function for RatchetCoolOffContentViewModel()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t outlined init with copy of RatchetCoolOffContentViewModelState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RatchetCoolOffContentViewModelState(uint64_t a1)
{
  v2 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *variable initialization expression of RatchetCoolOffContentViewController.cancellables()
{
  if (!(&_swiftEmptyArrayStorage >> 62) || !_CocoaArrayWrapper.endIndex.getter())
  {
    return &_swiftEmptySetSingleton;
  }

  return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(&_swiftEmptyArrayStorage);
}

id RatchetCoolOffContentViewController.__allocating_init(viewModel:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  if (&_swiftEmptyArrayStorage >> 62)
  {
    v9 = v5;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v6 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    }

    else
    {
      v6 = &_swiftEmptySetSingleton;
    }

    v5 = v9;
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *&v5[OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_cancellables] = v6;
  v7 = &v5[OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel];
  *v7 = a1;
  *(v7 + 1) = a2;
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
}

id RatchetCoolOffContentViewController.init(viewModel:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (&_swiftEmptyArrayStorage >> 62)
  {
    v9 = ObjectType;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v6 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    }

    else
    {
      v6 = &_swiftEmptySetSingleton;
    }

    ObjectType = v9;
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_cancellables] = v6;
  v7 = &v2[OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel];
  *v7 = a1;
  *(v7 + 1) = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
}

void RatchetCoolOffContentViewController.init(coder:)()
{
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_cancellables) = v1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall RatchetCoolOffContentViewController.viewDidLoad()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "viewDidLoad");
  v1 = [v0 interactivePopGestureRecognizer];
  if (v1)
  {
    v2 = v1;
    [v1 setEnabled:0];
  }

  RatchetCoolOffContentViewController.setup()();
}

uint64_t RatchetCoolOffContentViewController.setup()()
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMR);
  v1 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v3 = &v32 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  v4 = *(*(v32 - 8) + 64);
  v5 = __chkstk_darwin(v32);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGALSgGMd, &_s7Combine10PublishersO3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGALSgGMR);
  v36 = *(v34 - 8);
  v13 = *(v36 + 64);
  __chkstk_darwin(v34);
  v15 = &v32 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4ScanVy_AC3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGANSgGAS_AStGMd, &_s7Combine10PublishersO4ScanVy_AC3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGANSgGAS_AStGMR);
  v39 = *(v37 - 8);
  v16 = *(v39 + 64);
  __chkstk_darwin(v37);
  v18 = &v32 - v17;
  v19 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel + 8);
  v20 = *(v0 + OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel);
  ObjectType = swift_getObjectType();
  v40 = (*(v19 + 16))(ObjectType, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMd, &_s7Combine12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMR);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AnyPublisher<RatchetCoolOffContentViewModelState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMd, &_s7Combine12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGMR);
  lazy protocol witness table accessor for type RatchetCoolOffContentViewModelState and conformance RatchetCoolOffContentViewModelState(&lazy protocol witness table cache variable for type RatchetCoolOffContentViewModelState and conformance RatchetCoolOffContentViewModelState, type metadata accessor for RatchetCoolOffContentViewModelState);
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<RatchetCoolOffContentViewModelState, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGMR);
  Publisher.map<A>(_:)();
  (*(v9 + 8))(v12, v8);
  v22 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v23 = *(*(v22 - 8) + 56);
  v24 = v33;
  v23(v33, 1, 1, v22);
  v25 = v35;
  v23(v35, 1, 1, v22);
  v26 = *(v38 + 48);
  outlined init with take of RatchetCoolOffContentViewModelState?(v24, v3);
  outlined init with take of RatchetCoolOffContentViewModelState?(v25, &v3[v26]);
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.RemoveDuplicates<AnyPublisher<RatchetCoolOffContentViewModelState, Never>>, RatchetCoolOffContentViewModelState?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGALSgGMd, &_s7Combine10PublishersO3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGALSgGMR);
  v27 = v34;
  Publisher.scan<A>(_:_:)();
  outlined destroy of LACUIAngelConnectionHandling?(v3, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMR);
  (*(v36 + 8))(v15, v27);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for closure #3 in RatchetCoolOffContentViewController.setup();
  *(v29 + 24) = v28;
  lazy protocol witness table accessor for type Published<NSXPCConnection?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Scan<Publishers.Map<Publishers.RemoveDuplicates<AnyPublisher<RatchetCoolOffContentViewModelState, Never>>, RatchetCoolOffContentViewModelState?>, (RatchetCoolOffContentViewModelState?, RatchetCoolOffContentViewModelState?)> and conformance Publishers.Scan<A, B>, &_s7Combine10PublishersO4ScanVy_AC3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGANSgGAS_AStGMd, &_s7Combine10PublishersO4ScanVy_AC3MapVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVy28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOs5NeverOGGANSgGAS_AStGMR);
  v30 = v37;
  Publisher<>.sink(receiveValue:)();

  (*(v39 + 8))(v18, v30);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

Swift::Void __swiftcall RatchetCoolOffContentViewController.pushViewController(_:animated:)(UIViewController _, Swift::Bool animated)
{
  ObjectType = swift_getObjectType();
  v6 = [(objc_class *)_.super.super.isa navigationItem];
  [v6 setHidesBackButton:1];

  v7.receiver = v2;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, "pushViewController:animated:", _.super.super.isa, animated);
}

id RatchetCoolOffContentViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id RatchetCoolOffContentViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController:a1];

  return v3;
}

uint64_t closure #1 in RatchetCoolOffContentViewController.setup()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of RatchetCoolOffContentViewModelState(a1, a2);
  v3 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t closure #2 in RatchetCoolOffContentViewController.setup()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMR);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = *(v7 + 56);
  outlined init with copy of LACUIAngelConnectionHandling?(a1, &v13 - v9, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMR);
  outlined init with take of RatchetCoolOffContentViewModelState?(&v10[*(v7 + 56)], a3);
  outlined init with copy of LACUIAngelConnectionHandling?(a2, a3 + v11, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  return outlined destroy of LACUIAngelConnectionHandling?(v10, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
}

void RatchetCoolOffContentViewController.handleStateUpdate(previousState:state:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v59 = &v59 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v59 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v59 - v14;
  __chkstk_darwin(v13);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMR);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v59 - v21;
  v23 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v64 = *(v23 - 8);
  v65 = v23;
  v24 = *(v64 + 64);
  v25 = __chkstk_darwin(v23);
  v62 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v59 - v28;
  __chkstk_darwin(v27);
  v61 = &v59 - v30;
  v31 = *(v19 + 56);
  outlined init with copy of LACUIAngelConnectionHandling?(a1, v22, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  outlined init with copy of LACUIAngelConnectionHandling?(a2, &v22[v31], &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  v32 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v33 = *(*(v32 - 8) + 48);
  if (v33(&v22[v31], 1, v32) == 1)
  {
    outlined destroy of LACUIAngelConnectionHandling?(v22, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMR);
    return;
  }

  outlined init with copy of LACUIAngelConnectionHandling?(&v22[v31], v17, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v35 = v33(v22, 1, v32);
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (v35 == 1)
      {
        goto LABEL_16;
      }

      outlined init with copy of LACUIAngelConnectionHandling?(v22, v12, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
      v15 = v12;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v35 == 1)
      {
        goto LABEL_16;
      }

      v15 = v59;
      outlined init with copy of LACUIAngelConnectionHandling?(v22, v59, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    if (v35 == 1)
    {
      goto LABEL_16;
    }

    v15 = v60;
    outlined init with copy of LACUIAngelConnectionHandling?(v22, v60, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  if (v35 != 1)
  {
    outlined init with copy of LACUIAngelConnectionHandling?(v22, v15, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
    if (swift_getEnumCaseMultiPayload())
    {
LABEL_7:
      outlined destroy of RatchetCoolOffContentViewModelState(v15);
      goto LABEL_16;
    }

LABEL_20:
    v47 = v64;
    v48 = v17;
    v49 = v65;
    (*(v64 + 32))(v61, v48, v65);
    v50 = *(v47 + 8);
    v50(v15, v49);
    outlined destroy of LACUIAngelConnectionHandling?(&v22[v31], &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
    outlined destroy of LACUIAngelConnectionHandling?(v22, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
    v51 = [v66 viewControllers];
    type metadata accessor for UIViewController();
    v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v52 >> 62)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
      if (v53)
      {
LABEL_22:
        v54 = __OFSUB__(v53, 1);
        v55 = v53 - 1;
        if (v54)
        {
          __break(1u);
        }

        else if ((v52 & 0xC000000000000001) == 0)
        {
          if ((v55 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v55 < *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v56 = *(v52 + 8 * v55 + 32);
LABEL_27:
            v57 = v56;

            type metadata accessor for LACUIDTOViewController();
            if (swift_dynamicCastClass())
            {
              v58 = v61;
              dispatch thunk of LACUIDTOViewController.refresh(with:)();

LABEL_34:
              v50(v58, v49);
              return;
            }

LABEL_33:
            v58 = v61;
            goto LABEL_34;
          }

          __break(1u);
          return;
        }

        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_27;
      }
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_33;
  }

LABEL_16:
  v37 = v64;
  v36 = v65;
  (*(v64 + 32))(v29, v17, v65);
  outlined destroy of LACUIAngelConnectionHandling?(&v22[v31], &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  outlined destroy of LACUIAngelConnectionHandling?(v22, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  (*(v37 + 16))(v62, v29, v36);
  v38 = v66;
  v39 = *&v66[OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel];
  v40 = *(*&v66[OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel + 8] + 8);
  v41 = objc_allocWithZone(type metadata accessor for LACUIDTOViewController());
  swift_unknownObjectRetain();
  v42 = LACUIDTOViewController.init(configuration:handler:)();
  (*(v37 + 8))(v29, v36);
  v43 = [v38 viewControllers];
  type metadata accessor for UIViewController();
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v44 >> 62)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = [v42 navigationItem];
  [v46 setHidesBackButton:1];

  v67.receiver = v38;
  v67.super_class = ObjectType;
  objc_msgSendSuper2(&v67, "pushViewController:animated:", v42, v45 != 0);
}

Swift::Void __swiftcall RatchetCoolOffContentViewController.willMoveToParent(_:)(UIViewController a1)
{
  [(objc_class *)a1.super.super.isa addChildViewController:v1];

  [v1 willMoveToParentViewController:a1.super.super.isa];
}

Swift::Void __swiftcall RatchetCoolOffContentViewController.setCoolOffDuration(_:)(Swift::Double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel + 8);
  v4 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel);
  ObjectType = swift_getObjectType();
  (*(v3 + 24))(ObjectType, v3, a1);
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    type metadata accessor for AnyCancellable();
    lazy protocol witness table accessor for type RatchetCoolOffContentViewModelState and conformance RatchetCoolOffContentViewModelState(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      lazy protocol witness table accessor for type RatchetCoolOffContentViewModelState and conformance RatchetCoolOffContentViewModelState(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t outlined init with take of RatchetCoolOffContentViewModelState?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005388C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #3 in RatchetCoolOffContentViewController.setup()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    RatchetCoolOffContentViewController.handleStateUpdate(previousState:state:)(a1, a2);
  }
}

uint64_t sub_100053930()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed RatchetCoolOffContentViewModelState?, @in_guaranteed RatchetCoolOffContentViewModelState?) -> ()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMd, &_s28LocalAuthenticationUIService35RatchetCoolOffContentViewModelStateOSg_ADtMR);
  return v4(a1, a1 + *(v5 + 48));
}

unint64_t type metadata accessor for UIViewController()
{
  result = lazy cache variable for type metadata for UIViewController;
  if (!lazy cache variable for type metadata for UIViewController)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIViewController);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RatchetCoolOffContentViewModelState and conformance RatchetCoolOffContentViewModelState(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall PINSheetViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1);
  v3 = closure #1 in PINSheetViewController.viewWillAppear(_:)(v1);
  v4 = *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager];
  *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = v3;
}

id closure #1 in PINSheetViewController.viewWillAppear(_:)(char *a1)
{
  result = [*&a1[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context] externalizedContext];
  if (result)
  {
    v3 = result;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = objc_allocWithZone(LACUIAuthenticatorServiceConfiguration);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v9 = [v7 initWithContext:isa requirement:3];

    outlined consume of Data._Representation(v4, v6);
    v10 = [a1 options];
    if (v10)
    {
      v11 = v10;
      v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      AnyHashable.init<A>(_:)();
      if (*(v12 + 16))
      {
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(&v65);
        if (v14)
        {
          outlined init with copy of Any(*(v12 + 56) + 32 * v13, &v66);
          outlined destroy of AnyHashable(&v65);

          if (*(&v67 + 1))
          {
            type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSError, NSError_ptr);
            if (swift_dynamicCast())
            {
              v15 = v65;
              v16 = [v65 localizedDescription];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }

LABEL_11:
            v17 = String._bridgeToObjectiveC()();

            [v9 setPrompt:v17];

            [v9 setPasscodeLength:LACustomPasswordTypeCustomDigits];
            static LocalizedStrings.cancel.getter();
            v18 = String._bridgeToObjectiveC()();

            [v9 setCancelButtonTitle:v18];

            v19 = [a1 callerName];
            if (!v19)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v19 = String._bridgeToObjectiveC()();
            }

            [v9 setTitle:v19];

            v20 = [a1 options];
            if (v20)
            {
              v21 = v20;
              v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              AnyHashable.init<A>(_:)();
              if (*(v22 + 16))
              {
                v23 = specialized __RawDictionaryStorage.find<A>(_:)(&v65);
                if (v24)
                {
                  outlined init with copy of Any(*(v22 + 56) + 32 * v23, &v66);
                  outlined destroy of AnyHashable(&v65);

                  if (*(&v67 + 1))
                  {
                    if (swift_dynamicCast())
                    {
LABEL_27:
                      v30 = objc_opt_self();
                      v31 = String._bridgeToObjectiveC()();

                      v32 = [v30 truncateString:v31 maxLength:512];

                      if (v32)
                      {
                        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v35 = v34;

                        if (String.count.getter() >= 1)
                        {
                          v36 = [a1 callerName];
                          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v39 = v38;

                          static LocalizedStrings.AuthenticationReason.custom(_:callerName:)(v33, v35, v37, v39);

LABEL_34:

                          v44 = String._bridgeToObjectiveC()();

                          [v9 setSubtitle:v44];

                          static LocalizedStrings.enterPin.getter();
                          v45 = String._bridgeToObjectiveC()();

                          [v9 setPasswordFieldPlaceholder:v45];

                          [v9 setStyle:0];
                          v46 = [a1 internalInfo];
                          v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                          AnyHashable.init<A>(_:)();
                          if (*(v47 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(&v65), (v49 & 1) != 0))
                          {
                            outlined init with copy of Any(*(v47 + 56) + 32 * v48, &v66);
                            outlined destroy of AnyHashable(&v65);

                            if (swift_dynamicCast())
                            {
                              v50 = String._bridgeToObjectiveC()();

LABEL_40:
                              [v9 setBundleIdentifier:v50];

                              v51 = v9;
                              v52 = [a1 internalInfo];
                              static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                              v53 = objc_allocWithZone(LACInternalInfoParser);
                              v54 = Dictionary._bridgeToObjectiveC()().super.isa;

                              v55 = [v53 initWithInternalInfo:v54];

                              v56 = [v55 callerAuditToken];
                              v57 = swift_allocObject();
                              swift_unknownObjectWeakInit();

                              v58 = default argument 3 of AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)();
                              v59 = default argument 5 of AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)();
                              v60 = default argument 7 of AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)();
                              AuthorizationViewManager.init(configuration:auditToken:cachedContext:backoffCounter:failureLimit:policy:userId:options:completion:)(v51, v56, 0, v58, 0, 1, v59, 0, v60, partial apply for closure #1 in closure #1 in PINSheetViewController.viewWillAppear(_:), v57);
                              v62 = v61;

                              v65 = v62;
                              swift_unknownObjectRetain();
                              AuthorizationViewManager.delegate.setter();
                              v63 = v65;
                              canShowWhile = RatchetCoolOffContentViewController._canShowWhileLocked()();
                              AuthorizationViewManager.presentAuthorizationViewInVC(_:animated:)(a1, canShowWhile);

                              return v63;
                            }
                          }

                          else
                          {

                            outlined destroy of AnyHashable(&v65);
                          }

                          v50 = 0;
                          goto LABEL_40;
                        }
                      }

LABEL_33:
                      v40 = [a1 callerName];
                      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v43 = v42;

                      static LocalizedStrings.AuthenticationReason.default(callerName:)(v41, v43);
                      goto LABEL_34;
                    }

LABEL_22:
                    v25 = [a1 options];
                    if (v25)
                    {
                      v26 = v25;
                      v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                      AnyHashable.init<A>(_:)();
                      if (*(v27 + 16))
                      {
                        v28 = specialized __RawDictionaryStorage.find<A>(_:)(&v65);
                        if (v29)
                        {
                          outlined init with copy of Any(*(v27 + 56) + 32 * v28, &v66);
                          outlined destroy of AnyHashable(&v65);

                          if (*(&v67 + 1))
                          {
                            if ((swift_dynamicCast() & 1) == 0)
                            {
                              goto LABEL_33;
                            }

                            goto LABEL_27;
                          }

LABEL_32:
                          outlined destroy of Any?(&v66);
                          goto LABEL_33;
                        }
                      }

                      outlined destroy of AnyHashable(&v65);
                    }

                    v66 = 0u;
                    v67 = 0u;
                    goto LABEL_32;
                  }

LABEL_21:
                  outlined destroy of Any?(&v66);
                  goto LABEL_22;
                }
              }

              outlined destroy of AnyHashable(&v65);
            }

            v66 = 0u;
            v67 = 0u;
            goto LABEL_21;
          }

LABEL_10:
          outlined destroy of Any?(&v66);
          goto LABEL_11;
        }
      }

      outlined destroy of AnyHashable(&v65);
    }

    v66 = 0u;
    v67 = 0u;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void PINSheetViewController.dismissChild(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIDevice, UIDevice_ptr);
  if (static UIDevice.isPad.getter())
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a1;
    v7[4] = a2;
    v16[4] = partial apply for closure #1 in PINSheetViewController.dismissChild(completionHandler:);
    v16[5] = v7;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v16[3] = &block_descriptor_6;
    v8 = _Block_copy(v16);
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a1);

    [v3 dismissViewControllerAnimated:1 completion:v8];
    _Block_release(v8);
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager];
    if (v9)
    {
      v10 = objc_opt_self();
      v11 = LACErrorCodeSystemCancel;
      v12 = v9;
      v13 = [v10 errorWithCode:v11];
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = a1;
      v15[4] = a2;
      outlined copy of (@escaping @callee_guaranteed () -> ())?(a1);

      AuthorizationViewManager.dismissAuthorizationView(error:reply:)(v13, partial apply for closure #2 in PINSheetViewController.dismissChild(completionHandler:), v15);
    }
  }
}

uint64_t sub_1000546E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in PINSheetViewController.dismissChild(completionHandler:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager);
    if (v6)
    {
      v7 = v6;

      v8 = [objc_opt_self() errorWithCode:LACErrorCodeSystemCancel];
      v9 = swift_allocObject();
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v11 = swift_allocObject();
      v11[2] = v9;
      v11[3] = v1;
      v11[4] = v3;

      outlined copy of (@escaping @callee_guaranteed () -> ())?(v1);
      AuthorizationViewManager.dismissAuthorizationView(error:reply:)(v8, partial apply for closure #1 in closure #1 in PINSheetViewController.dismissChild(completionHandler:), v11);

      v5 = v7;
    }
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id PINSheetViewController.init(requestID:endpoint:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  *&v2[v6] = [objc_allocWithZone(LAContext) init];
  *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithRequestID:endpoint:", a1, a2);

  return v7;
}

id PINSheetViewController.init(requestID:endpoint:remoteAlert:)(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  *&v3[v8] = [objc_allocWithZone(LAContext) init];
  *&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithRequestID:endpoint:remoteAlertPresentationMode:", a1, a2, a3);

  return v9;
}

id PINSheetViewController.init(internalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  *&v6[v12] = [objc_allocWithZone(LAContext) init];
  *&v6[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16.receiver = v6;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithInternalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:", isa, a2, a3, a4, a5 & 1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

id PINSheetViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  *&v3[v7] = [objc_allocWithZone(LAContext) init];
  *&v3[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id PINSheetViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  *&v1[v4] = [objc_allocWithZone(LAContext) init];
  *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id PINSheetViewController.init(internalInfo:parent:)(uint64_t a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  *&v2[v5] = [objc_allocWithZone(LAContext) init];
  *&v2[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithInternalInfo:parent:", isa, v7);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v8;
}

uint64_t PINSheetViewController.viewModel(_:didReceiveCustomPassword:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v9 = [v4 options];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = LACPolicyOptionPINMinLength;
  AnyHashable.init<A>(_:)();
  if (!*(v11 + 16) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(&v31), (v13 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v31);
LABEL_9:
    v33 = 0u;
    v34 = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v11 + 56) + 32 * v12, &v33);
  outlined destroy of AnyHashable(&v31);

  if (!*(&v34 + 1))
  {
LABEL_10:
    outlined destroy of Any?(&v33);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v14 = v31;
    if (String.count.getter() < v14)
    {
      return a4(0);
    }
  }

LABEL_11:
  v15 = [v5 options];
  if (!v15)
  {
LABEL_19:
    v33 = 0u;
    v34 = 0u;
    goto LABEL_20;
  }

  v16 = v15;
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v18 = specialized __RawDictionaryStorage.find<A>(_:)(&v31), (v19 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v31);
    goto LABEL_19;
  }

  outlined init with copy of Any(*(v17 + 56) + 32 * v18, &v33);
  outlined destroy of AnyHashable(&v31);

  if (!*(&v34 + 1))
  {
LABEL_20:
    outlined destroy of Any?(&v33);
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v20 = v31;
    if (v20 < String.count.getter())
    {
      return a4(0);
    }
  }

LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100087EF0;
  v31 = 0x746C75736552;
  v32 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SbtGMd, &_ss23_ContiguousArrayStorageCySi_SbtGMR);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1000867F0;
  *(v23 + 32) = LACResultEnteredPassphrase;
  *(v23 + 40) = 1;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SbTt0g5Tf4g_n(v23);
  swift_setDeallocating();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSbGMd, &_sSDySiSbGMR);
  *(inited + 72) = v24;
  v31 = 5130576;
  v32 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = a2;
  *(inited + 152) = a3;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 uiSuccessWithResult:isa];

  result = a4(1);
  v26 = *&v5[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager];
  if (v26)
  {
    v27 = v26;
    v28 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
    AuthorizationViewManager.dismissAuthorizationView(error:reply:)(0, v28, v29);
  }

  return result;
}

uint64_t specialized PINSheetViewController.viewModel(_:didReceiveCustomPassword:handler:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v8 = [a3 options];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = LACPolicyOptionPINMinLength;
  AnyHashable.init<A>(_:)();
  if (!*(v10 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&v30), (v12 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v30);
LABEL_9:
    v32 = 0u;
    v33 = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v10 + 56) + 32 * v11, &v32);
  outlined destroy of AnyHashable(&v30);

  if (!*(&v33 + 1))
  {
LABEL_10:
    outlined destroy of Any?(&v32);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v13 = v30;
    if (String.count.getter() < v13)
    {
      return (*(a4 + 16))(a4, 0);
    }
  }

LABEL_11:
  v14 = [a3 options];
  if (!v14)
  {
LABEL_19:
    v32 = 0u;
    v33 = 0u;
    goto LABEL_20;
  }

  v15 = v14;
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(&v30), (v18 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v30);
    goto LABEL_19;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v17, &v32);
  outlined destroy of AnyHashable(&v30);

  if (!*(&v33 + 1))
  {
LABEL_20:
    outlined destroy of Any?(&v32);
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v19 = v30;
    if (v19 < String.count.getter())
    {
      return (*(a4 + 16))(a4, 0);
    }
  }

LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100087EF0;
  v30 = 0x746C75736552;
  v31 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SbtGMd, &_ss23_ContiguousArrayStorageCySi_SbtGMR);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1000867F0;
  *(v22 + 32) = LACResultEnteredPassphrase;
  *(v22 + 40) = 1;
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SbTt0g5Tf4g_n(v22);
  swift_setDeallocating();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSbGMd, &_sSDySiSbGMR);
  *(inited + 72) = v23;
  v30 = 5130576;
  v31 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = a1;
  *(inited + 152) = a2;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a3 uiSuccessWithResult:isa];

  result = (*(a4 + 16))(a4, 1);
  v25 = *&a3[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager];
  if (v25)
  {
    v26 = v25;
    v27 = default argument 1 of AuthorizationViewManager.dismissAuthorizationView(error:reply:)();
    AuthorizationViewManager.dismissAuthorizationView(error:reply:)(0, v27, v28);
  }

  return result;
}

uint64_t sub_100055C74()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroy_2Tm()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40, 7);
}

void partial apply for closure #2 in PINSheetViewController.dismissChild(completionHandler:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (v4)
    {
      v13 = v4;
      v14 = v5;
      aBlock.receiver = _NSConcreteStackBlock;
      aBlock.super_class = 1107296256;
      v11 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v12 = a1;
      v8 = _Block_copy(&aBlock);
    }

    else
    {
      v8 = 0;
    }

    v9 = type metadata accessor for PINSheetViewController();
    aBlock.receiver = v7;
    aBlock.super_class = v9;
    objc_msgSendSuper2(&aBlock, "dismissChildWithCompletionHandler:", v8);
    _Block_release(v8);
  }
}

void partial apply for closure #1 in closure #1 in PINSheetViewController.viewWillAppear(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_opt_self();
    swift_errorRetain();
    v2 = _convertErrorToNSError(_:)();
    LODWORD(v1) = [v1 error:v2 hasCode:LACErrorCodeUserCancel];

    if (v1)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        [Strong uiCancel];

LABEL_7:

        return;
      }
    }

    else
    {
      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v4 = v5;
        v6 = _convertErrorToNSError(_:)();
        [v4 uiFailureWithError:v6];

        goto LABEL_7;
      }
    }
  }
}

Swift::Void __swiftcall ComplementaryPasscodeViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  if ([objc_opt_self() isSharedIPad])
  {
    v1 = [objc_allocWithZone(LACLocalBackoffCounter) init];
    [v0 setBackoffCounter:v1];
  }
}

void ComplementaryPasscodeViewController.dismissChild(completionHandler:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = [v2 presentedViewController];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    v16 = partial apply for closure #1 in ComplementaryPasscodeViewController.dismissChild(completionHandler:);
    v17 = v8;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v15 = &block_descriptor_12_0;
    v9 = _Block_copy(&v12);
    v10 = v2;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a1);

    [v7 dismissViewControllerAnimated:0 completion:v9];
    _Block_release(v9);
  }

  else
  {
    if (a1)
    {
      v16 = a1;
      v17 = a2;
      v12 = _NSConcreteStackBlock;
      v13 = 1107296256;
      v14 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v15 = &block_descriptor_6_2;
      v11 = _Block_copy(&v12);
    }

    else
    {
      v11 = 0;
    }

    v18.receiver = v2;
    v18.super_class = ObjectType;
    objc_msgSendSuper2(&v18, "dismissChildWithCompletionHandler:", v11);
    _Block_release(v11);
  }
}

id ComplementaryPasscodeViewController.init(requestID:endpoint:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, "initWithRequestID:endpoint:", a1, a2);

  return v5;
}

id ComplementaryPasscodeViewController.init(requestID:endpoint:remoteAlert:)(void *a1, void *a2, uint64_t a3)
{
  v9.receiver = v3;
  v9.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v9, "initWithRequestID:endpoint:remoteAlertPresentationMode:", a1, a2, a3);

  return v7;
}

id ComplementaryPasscodeViewController.init(internalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithInternalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:", isa, a2, a3, a4, a5 & 1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

id ComplementaryPasscodeViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id ComplementaryPasscodeViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ComplementaryPasscodeViewController.init(internalInfo:parent:)(uint64_t a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithInternalInfo:parent:", isa, v6);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v7;
}

Swift::Void __swiftcall ComplementaryPasscodeViewController.passcodeVerified(result:)(Swift::OpaquePointer result)
{
  v2 = [v1 mechanism];
  if (v2)
  {
    [v2 uiEvent:8 options:0];
    swift_unknownObjectRelease();
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v1 uiSuccessWithResult:isa];
}

void ComplementaryPasscodeViewController.passcodeAuthenticationFailed(error:)()
{
  v1 = _convertErrorToNSError(_:)();
  [v0 uiFailureWithError:v1];
}

void PasscodeAlertViewController.viewDidLoad()()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewDidLoad");
  type metadata accessor for PasscodeAlertContentViewController();
  v2 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_externalizedContext];
  v3 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_externalizedContext + 8];
  v4 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_userId];
  v5 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_policy];
  v6 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_options];
  v7 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_backoffCounter];
  v8 = *&v0[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_auditToken];
  outlined copy of Data._Representation(*&v1[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_externalizedContext], *&v1[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_externalizedContext + 8]);
  v9 = v4;

  swift_unknownObjectRetain();
  v10 = PasscodeAlertContentViewController.__allocating_init(externalizedContext:userId:policy:options:backoffCounter:auditToken:)(v2, v3, v4, v5, v6, v7, v8);
  v11 = &v1[OBJC_IVAR____TtC28LocalAuthenticationUIServiceP33_CE09A497601390BBF62A7A1047BCBEDC27PasscodeAlertViewController_delegate];
  swift_unknownObjectWeakLoadStrong();
  v12 = *(v11 + 1);
  v13 = &v10[OBJC_IVAR____TtC28LocalAuthenticationUIService34PasscodeAlertContentViewController_delegate];
  swift_beginAccess();
  *(v13 + 1) = v12;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  [v1 setContentViewController:v10];
}

uint64_t sub_100057930()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in ComplementaryPasscodeViewController.viewDidAppear(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong uiCancel];
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t sub_100057A24()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40, 7);
}

void partial apply for closure #1 in ComplementaryPasscodeViewController.dismissChild(completionHandler:)()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    v3 = v0[4];
    v9 = v1;
    v10 = v3;
    v6.receiver = _NSConcreteStackBlock;
    v6.super_class = 1107296256;
    v7 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v8 = &block_descriptor_20_1;
    v4 = _Block_copy(&v6);
  }

  else
  {
    v4 = 0;
  }

  v5 = type metadata accessor for ComplementaryPasscodeViewController();
  v6.receiver = v2;
  v6.super_class = v5;
  objc_msgSendSuper2(&v6, "dismissChildWithCompletionHandler:", v4);
  _Block_release(v4);
}

uint64_t sub_100057B5C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id HostedWindowScene.__allocating_init(session:connectionOptions:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithSession:a1 connectionOptions:a2];

  return v5;
}

id HostedWindowScene.init(session:connectionOptions:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HostedWindowScene();
  v5 = objc_msgSendSuper2(&v7, "initWithSession:connectionOptions:", a1, a2);

  return v5;
}

id HostedWindowScene.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostedWindowScene();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *SceneHostingDelegate.window.getter()
{
  v1 = OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SceneHostingDelegate.window.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for SceneHostingDelegate.window : SceneHostingDelegate@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SceneHostingDelegate.window : SceneHostingDelegate(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x78);
  v4 = *a1;
  return v3(v2);
}

Swift::Void __swiftcall SceneHostingDelegate.scene(_:willConnectTo:options:)(UIScene _, UISceneSession willConnectTo, UISceneConnectionOptions options)
{
  v4 = v3;
  isa = options.super.isa;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v189 = v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v188 = v175 - v13;
  v14 = __chkstk_darwin(v12);
  v185 = v175 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = v175 - v17;
  __chkstk_darwin(v16);
  v20 = v175 - v19;
  static LACLog.ui.getter();
  v21 = willConnectTo.super.isa;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v184 = v18;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v183 = _.super.super.isa;
    v26 = v25;
    v182 = swift_slowAlloc();
    v195[0] = v182;
    *v26 = 136315138;
    v27 = [(objc_class *)v21 persistentIdentifier];
    v187 = v4;
    v28 = v27;
    v29 = v21;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v8;
    v32 = v7;
    v34 = v33;

    v35 = v30;
    v21 = v29;
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, v195);
    v7 = v32;
    v8 = v31;

    *(v26 + 4) = v36;
    v4 = v187;
    _os_log_impl(&_mh_execute_header, v22, v23, "Will connect to scene: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v182);

    _.super.super.isa = v183;

    v37 = v31;
  }

  else
  {

    v37 = v8;
  }

  v38 = *(v37 + 8);
  (v38)(v20, v7);
  v39 = *AppContainer.shared.unsafeMutableAddressor();
  v40 = OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_sceneController;
  swift_beginAccess();
  v41 = (v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneController);
  v42 = *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneController);
  *(v4 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneController) = *(v39 + v40);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (v43)
  {
    v44 = v43;
    v181 = v41;
    v45 = _.super.super.isa;
    v182 = v44;
    v46 = [v44 _FBSScene];
    v47 = [v46 hostHandle];

    if (v47)
    {
      v48 = [v47 auditToken];

      if (v48)
      {
        v183 = v38;
        v179 = v8;
        if ([v48 hasEntitlement:LACEntitlementSPI])
        {
          v187 = v4;
          v177 = v48;
          v178 = v45;
          v49 = [(objc_class *)isa userActivities];
          v50 = type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSUserActivity, NSUserActivity_ptr);
          lazy protocol witness table accessor for type NSUserActivity and conformance NSObject();
          v51 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v176 = v21;
          v175[2] = v51;
          isa = v50;
          if ((v51 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v51 = v195[0];
            v52 = v195[1];
            v53 = v195[2];
            v54 = v195[3];
            v55 = v195[4];
          }

          else
          {
            v87 = -1 << *(v51 + 32);
            v52 = v51 + 56;
            v53 = ~v87;
            v88 = -v87;
            if (v88 < 64)
            {
              v89 = ~(-1 << v88);
            }

            else
            {
              v89 = -1;
            }

            v55 = v89 & *(v51 + 56);

            v54 = 0;
          }

          v175[1] = v53;
          v90 = ((v53 + 64) >> 6);
          v189 = LACAngelHostedSceneUserActivityType;
          v180 = v7;
          if ((v51 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

LABEL_22:
          v91 = __CocoaSet.Iterator.next()();
          if (!v91)
          {
            goto LABEL_37;
          }

          *&v193 = v91;
          swift_dynamicCast();
          v92 = v192;
          v93 = v54;
          v45 = v55;
          if (!v192)
          {
LABEL_44:
            v7 = v180;
LABEL_37:
            v105 = v178;

            outlined consume of Set<UISceneSession>.Iterator._Variant();

            v106 = v185;
            static LACLog.ui.getter();
            v107 = v176;
            v108 = Logger.logObject.getter();
            v109 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v108, v109))
            {
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              v192 = v111;
              *v110 = 136315138;
              v112 = [(objc_class *)v107 persistentIdentifier];
              v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v115 = v114;

              v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, &v192);

              *(v110 + 4) = v116;
              _os_log_impl(&_mh_execute_header, v108, v109, "No user activity for scene: %s", v110, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v111);
            }

            else
            {
            }

            v69 = v106;
            goto LABEL_41;
          }

          while (1)
          {
            v188 = v55;
            v96 = v51;
            v97 = v92;
            v98 = [v92 activityType];
            v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v101 = v100;

            if (v99 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v101 == v102)
            {
              break;
            }

            v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v104)
            {
              goto LABEL_46;
            }

            v54 = v93;
            v55 = v45;
            v7 = v180;
            v51 = v96;
            if (v96 < 0)
            {
              goto LABEL_22;
            }

LABEL_25:
            v94 = v54;
            v95 = v55;
            v93 = v54;
            if (!v55)
            {
              while (1)
              {
                v93 = v94 + 1;
                if (__OFADD__(v94, 1))
                {
                  break;
                }

                if (v93 >= v90)
                {
                  goto LABEL_37;
                }

                v95 = *(v52 + 8 * v93);
                ++v94;
                if (v95)
                {
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_70:

              outlined destroy of AnyHashable(&v192);
              v193 = 0u;
              v194 = 0u;
              v123 = v52;
              goto LABEL_72;
            }

LABEL_29:
            v45 = ((v95 - 1) & v95);
            v92 = *(*(v51 + 48) + ((v93 << 9) | (8 * __clz(__rbit64(v95)))));
            if (!v92)
            {
              goto LABEL_44;
            }
          }

LABEL_46:
          outlined consume of Set<UISceneSession>.Iterator._Variant();

          v7 = &selRef_passcodeLength;
          v45 = v97;
          v118 = [v97 userInfo];
          v119 = v180;
          if (v118)
          {
            v120 = v118;
            v121 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v191 = v122;
            AnyHashable.init<A>(_:)();
            v123 = v178;
            v38 = v183;
            v124 = v176;
            if (*(v121 + 16) && (v125 = specialized __RawDictionaryStorage.find<A>(_:)(&v192), (v126 & 1) != 0))
            {
              outlined init with copy of Any(*(v121 + 56) + 32 * v125, &v193);
              outlined destroy of AnyHashable(&v192);

              if (*(&v194 + 1))
              {
                if (swift_dynamicCast())
                {
                  v127 = String._bridgeToObjectiveC()();
                  v128 = *(v187 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneIdentifier);
                  *(v187 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneIdentifier) = v127;

                  v129 = [v97 userInfo];
                  if (!v129)
                  {
                    v193 = 0u;
                    v194 = 0u;
                    v90 = v177;
                    goto LABEL_72;
                  }

                  v52 = v123;
                  v130 = v129;
                  v131 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                  *&v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  *(&v193 + 1) = v132;
                  AnyHashable.init<A>(_:)();
                  v90 = v177;
                  if (!*(v131 + 16))
                  {
                    goto LABEL_70;
                  }

                  v133 = specialized __RawDictionaryStorage.find<A>(_:)(&v192);
                  if ((v134 & 1) == 0)
                  {
                    goto LABEL_70;
                  }

                  outlined init with copy of Any(*(v131 + 56) + 32 * v133, &v193);
                  outlined destroy of AnyHashable(&v192);

                  v123 = v52;
                  if (*(&v194 + 1))
                  {
                    type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
                    v135 = swift_dynamicCast();
                    v136 = v192;
                    if (!v135)
                    {
                      v136 = 0;
                    }
                  }

                  else
                  {
LABEL_72:
                    outlined destroy of Any?(&v193);
                    v136 = 0;
                  }

                  v157 = v123;
                  v158 = *(v187 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_requestId);
                  *(v187 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_requestId) = v136;

                  if (!*v181)
                  {
                    __break(1u);
                    return;
                  }

                  v159 = v181[1];
                  v160 = *v181;
                  swift_unknownObjectRetain();

                  v161 = [v182 session];

                  v162 = [v161 persistentIdentifier];
                  static String._unconditionallyBridgeFromObjectiveC(_:)();

                  v163 = [v45 v7[296]];
                  if (v163)
                  {
                    v164 = v163;
                    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                    v90 = v177;
                  }

                  swift_getObjectType();
                  dispatch thunk of LACUISceneControlling.sceneDidConnect(identifier:options:urls:)();
                  swift_unknownObjectRelease();

                  v165 = objc_allocWithZone(LACUISecureWindow);
                  v166 = [v165 initWithWindowScene:v182];
                  (*((swift_isaMask & *v187) + 0x78))(v166);
                  v167 = [v45 v7[296]];
                  if (v167)
                  {
                    v168 = v167;
                    v169 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                    v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v191 = v170;
                    AnyHashable.init<A>(_:)();
                    if (*(v169 + 16))
                    {
                      v171 = specialized __RawDictionaryStorage.find<A>(_:)(&v192);
                      if (v172)
                      {
                        outlined init with copy of Any(*(v169 + 56) + 32 * v171, &v193);
                        outlined destroy of AnyHashable(&v192);

                        if (*(&v194 + 1))
                        {
                          type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
                          if (swift_dynamicCast())
                          {
                            v173 = v192;
                            v174 = [v192 BOOLValue];

                            if (v174)
                            {
                              goto LABEL_87;
                            }
                          }

                          goto LABEL_86;
                        }

LABEL_85:
                        outlined destroy of Any?(&v193);
LABEL_86:
                        SceneHostingDelegate.setRootViewController(endpoint:)(0);
LABEL_87:

                        return;
                      }
                    }

                    outlined destroy of AnyHashable(&v192);
                  }

                  v193 = 0u;
                  v194 = 0u;
                  goto LABEL_85;
                }

                v137 = v123;

LABEL_61:
                v138 = v184;
                static LACLog.ui.getter();
                v139 = v124;
                v140 = v45;
                v141 = Logger.logObject.getter();
                v142 = static os_log_type_t.error.getter();

                if (!os_log_type_enabled(v141, v142))
                {

                  v70 = v138;
                  v71 = v119;
                  goto LABEL_13;
                }

                v143 = swift_slowAlloc();
                v192 = swift_slowAlloc();
                *v143 = 136315394;
                v144 = [(objc_class *)v139 persistentIdentifier];
                v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v147 = v146;

                v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v147, &v192);

                *(v143 + 4) = v148;
                *(v143 + 12) = 2080;
                v149 = [(objc_class *)v140 userInfo];
                if (v149)
                {
                  v150 = v149;
                  v151 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
                }

                else
                {
                  v151 = 0;
                }

                v152 = v184;
                *&v193 = v151;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
                v153 = Optional.debugDescription.getter();
                v155 = v154;

                v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v155, &v192);

                *(v143 + 14) = v156;
                _os_log_impl(&_mh_execute_header, v141, v142, "No entry point for scene: %s with userInfo: %s", v143, 0x16u);
                swift_arrayDestroy();

                v69 = v152;
                v117 = v119;
                goto LABEL_42;
              }
            }

            else
            {

              outlined destroy of AnyHashable(&v192);
              v193 = 0u;
              v194 = 0u;
            }
          }

          else
          {
            v123 = v178;

            v193 = 0u;
            v194 = 0u;
            v38 = v183;
            v124 = v176;
          }

          v137 = v123;
          outlined destroy of Any?(&v193);
          goto LABEL_61;
        }

        v72 = v21;
        v73 = v48;

        v74 = v188;
        static LACLog.ui.getter();
        v75 = v72;
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v195[0] = swift_slowAlloc();
          *v78 = 136315394;
          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v195);

          *(v78 + 4) = v81;
          *(v78 + 12) = 2080;
          v82 = [(objc_class *)v75 persistentIdentifier];
          v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v85 = v84;

          v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v195);

          *(v78 + 14) = v86;
          _os_log_impl(&_mh_execute_header, v76, v77, "Missing entitlement %s for scene: %s", v78, 0x16u);
          swift_arrayDestroy();

          v69 = v188;
        }

        else
        {

          v69 = v74;
        }

LABEL_41:
        v117 = v7;
LABEL_42:
        (v183)(v69, v117);
        return;
      }
    }

    v56 = v189;
    static LACLog.ui.getter();
    v57 = v21;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v183 = v38;
      v62 = v61;
      v195[0] = v61;
      *v60 = 136315138;
      v63 = [(objc_class *)v57 persistentIdentifier];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v45;
      v67 = v66;

      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v67, v195);

      *(v60 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v58, v59, "Missing audit token for scene: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);

      v69 = v189;
      goto LABEL_41;
    }

    v70 = v56;
    v71 = v7;
LABEL_13:
    (v38)(v70, v71);
  }
}

void SceneHostingDelegate.setRootViewController(endpoint:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneIdentifier;
  v10 = *(v1 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneIdentifier);
  if (!v10)
  {
LABEL_39:
    v61 = v5;
    static LACLog.ui.getter();
    v49 = v2;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 136315138;
      v62 = *(v2 + v9);
      v63 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29LACAngelHostedSceneIdentifieraSgMd, &_sSo29LACAngelHostedSceneIdentifieraSgMR);
      v54 = Optional.debugDescription.getter();
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v63);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "Unknown hosted scene: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
    }

    v29 = (*(v61 + 8))(v8, v4);
    goto LABEL_42;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

LABEL_16:

    v29 = (*((swift_isaMask & *v2) + 0x70))();
    if (v29)
    {
      v30 = v29;
      type metadata accessor for AuthorizationRemoteViewController();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
LABEL_18:
      v32 = [objc_allocWithZone(ObjCClassFromMetadata) init];
LABEL_23:
      v35 = v32;
      [v30 setRootViewController:v32];

      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v61 = v5;
  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v17 = v10;

  if (v16)
  {
    goto LABEL_16;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v60 = v17;

    if ((v23 & 1) == 0)
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
      {
        v28 = v60;

LABEL_25:

        v29 = (*((swift_isaMask & *v2) + 0x70))();
        if (!v29)
        {
          goto LABEL_42;
        }

        v30 = v29;
        ObjCClassFromMetadata = PasscodeEmbeddedRemoteViewController;
        goto LABEL_18;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v28 = v60;
      v59 = v60;

      if (v36)
      {
        goto LABEL_25;
      }

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
      if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
      {
        v41 = v59;

LABEL_31:

        v29 = (*((swift_isaMask & *v2) + 0x70))();
        if (!v29)
        {
          goto LABEL_42;
        }

        v30 = v29;
        v33 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_requestId);
        v34 = PasswordRemoteViewController;
        goto LABEL_22;
      }

      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41 = v59;
      v60 = v59;

      if (v42)
      {
        goto LABEL_31;
      }

      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;
      if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
      {

LABEL_37:
        v29 = (*((swift_isaMask & *v2) + 0x70))(v47);
        if (!v29)
        {
          goto LABEL_42;
        }

        v30 = v29;
        v33 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_requestId);
        v34 = PinRemoteViewController;
        goto LABEL_22;
      }

      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v5 = v61;
      if (v48)
      {
        goto LABEL_37;
      }

      goto LABEL_39;
    }
  }

  v29 = (*((swift_isaMask & *v2) + 0x70))();
  if (v29)
  {
    v30 = v29;
    v33 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_requestId);
    v34 = PasscodeRemoteViewController;
LABEL_22:
    v32 = [objc_allocWithZone(v34) initWithRequestID:v33 endpoint:a1];
    goto LABEL_23;
  }

LABEL_42:
  v57 = (*((swift_isaMask & *v2) + 0x70))(v29);
  [v57 makeKeyAndVisible];
}

Swift::Void __swiftcall SceneHostingDelegate.sceneDidDisconnect(_:)(UIScene a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v9 = a1.super.super.isa;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v35 = v9;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v34 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315138;
    v16 = [(objc_class *)v9 session];
    v17 = [v16 persistentIdentifier];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v36);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Did disconnect from scene: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v5 + 8))(v8, v34);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  if (*(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneController))
  {
    v22 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneController + 8);
    v23 = *(v2 + OBJC_IVAR____TtC28LocalAuthenticationUIService20SceneHostingDelegate_sceneController);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v24 = v35;
    v25 = [(objc_class *)v35 session];
    v26 = [v25 persistentIdentifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    dispatch thunk of LACUISceneControlling.sceneDidDisconnect(identifier:)();
    swift_unknownObjectRelease();

    v28 = (*((swift_isaMask & *v2) + 0x70))(v27);
    if (v28)
    {
      v29 = v28;
      v30 = [v28 windowScene];

      if (v30)
      {
        type metadata accessor for UIDevice(0, &lazy cache variable for type metadata for UIScene, UIScene_ptr);
        v31 = v24;
        v32 = static NSObject.== infix(_:_:)();

        if (v32)
        {
          (*((swift_isaMask & *v2) + 0x78))(0);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}