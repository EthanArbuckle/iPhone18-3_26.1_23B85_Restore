int main(int argc, const char **argv, const char **envp)
{
  v8 = objc_autoreleasePoolPush();
  v3 = objc_opt_class();
  principalClassName = NSStringFromClass(v3);
  v4 = objc_opt_class();
  v6 = NSStringFromClass(v4);
  v11 = UIApplicationMain(argc, argv, principalClassName, v6);
  _objc_release(v6);
  _objc_release(principalClassName);
  objc_autoreleasePoolPop(v8);
  return v11;
}

void WorkoutRemoteAlertServiceViewController.configure(with:completion:)(void *a1, void (*a2)(uint64_t))
{
  v3 = v2;
  v6 = [v3 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_26;
  }

  v7 = v6;
  v8 = [v6 window];

  if (v8)
  {
    v9 = [v8 _rootSheetPresentationController];

    if (!v9)
    {
LABEL_27:
      __break(1u);
      return;
    }

    [v9 _setShouldScaleDownBehindDescendantSheets:0];
  }

  v23 = closure #1 in WorkoutRemoteAlertServiceViewController.configure(with:completion:);
  v24 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v22 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  *(&v22 + 1) = &block_descriptor_24;
  v10 = _Block_copy(&aBlock);
  v11 = [v3 _remoteViewControllerProxyWithErrorHandler:v10];
  _Block_release(v10);
  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v22 = 0u;
  }

  v25[0] = aBlock;
  v25[1] = v22;
  outlined init with copy of Any?(v25, &aBlock);
  if (*(&v22 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28SBUIRemoteAlertHostInterface_pMd, &_sSo28SBUIRemoteAlertHostInterface_pMR);
    if (swift_dynamicCast())
    {
      [v19[0] setAllowsAlertStacking:1];
      [v19[0] setWallpaperTunnelActive:1];
      [v19[0] setAllowsMenuButtonDismissal:1];
      [v19[0] setAllowsSiri:1];
      [v19[0] setDismissalAnimationStyle:2];
      [v19[0] setSwipeDismissalStyle:1];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
  }

  if (!a1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = [a1 userInfo];
  if (!v12)
  {
LABEL_20:
    *v19 = 0u;
    v20 = 0u;
    goto LABEL_21;
  }

  v13 = v12;
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v14 + 16) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v16 & 1) == 0))
  {

    outlined destroy of AnyHashable(&aBlock);
    goto LABEL_20;
  }

  outlined init with copy of Any(*(v14 + 56) + 32 * v15, v19);
  outlined destroy of AnyHashable(&aBlock);

  if (*(&v20 + 1))
  {
    v17 = swift_dynamicCast();
    if (v17)
    {
      v18 = aBlock;
      WorkoutRemoteAlertServiceViewController.presentPreviewController(with:)();
      v17 = outlined consume of Data._Representation(v18, *(&v18 + 1));
    }

    goto LABEL_22;
  }

LABEL_21:
  v17 = outlined destroy of Any?(v19, &_sypSgMd, &_sypSgMR);
LABEL_22:
  if (a2)
  {
    a2(v17);
  }

  outlined destroy of Any?(v25, &_sypSgMd, &_sypSgMR);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t WorkoutRemoteAlertServiceViewController.presentPreviewController(with:)()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutConfigurationView();
  v27[0] = *(v2 - 8);
  v3 = *(v27[0] + 64);
  v4 = (__chkstk_darwin)();
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v27 - v7;
  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for Occurrence();
  v9 = Occurrence.__allocating_init(count:)();
  type metadata accessor for WorkoutConfigurationValidator();
  static WorkoutConfigurationValidator.shared.getter();
  v10 = static WorkoutConfiguration.importFromData(_:with:validator:)();

  type metadata accessor for WorkoutCoreInjector();
  v11 = static WorkoutCoreInjector.shared.getter();
  v12 = dispatch thunk of WorkoutCoreInjector.inject()();

  *(swift_allocObject() + 16) = v1;
  v13 = v10;
  v14 = v12;
  v15 = v1;
  WorkoutConfigurationView.init(workoutConfiguration:formattingManager:showAddButton:showStartWorkoutButton:overrideSaveWorkoutAction:startWorkoutAction:overrideDismissAction:referenceIntervalWorkoutConfiguration:)();
  v16 = v27[0];
  (*(v27[0] + 16))(v6, v8, v2);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type WorkoutConfigurationView and conformance WorkoutConfigurationView, &type metadata accessor for WorkoutConfigurationView);
  AnyView.init<A>(_:)();
  v17 = _makeUIHostingController(_:)();

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = objc_allocWithZone(UINavigationController);
    v21 = v17;
    v22 = [v20 initWithRootViewController:v19];
    [v22 setModalInPresentation:1];
    [v15 presentViewController:v22 animated:1 completion:0];

    return (*(v16 + 8))(v8, v2);
  }

  else
  {

    v24 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError);
    v25 = swift_allocError();
    (*(*(v24 - 8) + 104))(v26, enum case for ImportError.unexpectedValueType(_:), v24);
    swift_willThrow();

    (*(v16 + 8))(v8, v2);
    WorkoutRemoteAlertServiceViewController.presentError(_:)(v25);
  }
}

void WorkoutRemoteAlertServiceViewController.presentError(_:)(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit11ImportErrorOSgMd, &_s10WorkoutKit11ImportErrorOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = aBlock - v4;
  aBlock[0] = a1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = type metadata accessor for ImportError();
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (v7)
  {
    v9 = *(v6 - 8);
    v8(v5, 0, 1, v6);
    (*(v9 + 88))(v5, v6);
    (*(v9 + 8))(v5, v6);
  }

  else
  {
    v8(v5, 1, 1, v6);
    outlined destroy of Any?(v5, &_s10WorkoutKit11ImportErrorOSgMd, &_s10WorkoutKit11ImportErrorOSgMR);
  }

  String.workoutKitLocalized()();
  String.workoutKitLocalized()();
  String.workoutKitLocalized()();
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = String._bridgeToObjectiveC()();
  aBlock[4] = partial apply for closure #1 in WorkoutRemoteAlertServiceViewController.presentError(_:);
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_15;
  v15 = _Block_copy(aBlock);

  v16 = [objc_opt_self() actionWithTitle:v14 style:0 handler:v15];
  _Block_release(v15);

  [v12 addAction:v16];
  v17 = [objc_allocWithZone(UIViewController) init];
  v18 = [v17 view];
  if (v18)
  {
    v19 = v18;

    v20 = [objc_opt_self() systemBackgroundColor];
    [v19 setBackgroundColor:v20];

    [v17 presentViewController:v12 animated:0 completion:0];
    [v1 presentViewController:v17 animated:0 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in WorkoutRemoteAlertServiceViewController.presentError(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    WorkoutRemoteAlertServiceViewController.dismissView()();
  }
}

Swift::Void __swiftcall WorkoutRemoteAlertServiceViewController.dismissView()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  v3 = [v2 presentedViewController];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = partial apply for closure #1 in WorkoutRemoteAlertServiceViewController.dismissView();
    *(v5 + 24) = v1;
    v7[4] = partial apply for closure #2 in WorkoutRemoteAlertServiceViewController.dismissView();
    v7[5] = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed () -> ();
    v7[3] = &block_descriptor;
    v6 = _Block_copy(v7);

    [v4 dismissViewControllerAnimated:1 completion:v6];

    _Block_release(v6);
  }

  else
  {
    closure #1 in WorkoutRemoteAlertServiceViewController.dismissView()(v2);
  }
}

uint64_t closure #1 in WorkoutRemoteAlertServiceViewController.dismissView()(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = closure #1 in closure #1 in WorkoutRemoteAlertServiceViewController.dismissView();
  v24 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v22 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  *(&v22 + 1) = &block_descriptor_6;
  v12 = _Block_copy(&aBlock);
  v13 = [a1 _remoteViewControllerProxyWithErrorHandler:v12];
  _Block_release(v12);
  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v22 = 0u;
  }

  v25[0] = aBlock;
  v25[1] = v22;
  outlined init with copy of Any?(v25, &aBlock);
  if (*(&v22 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28SBUIRemoteAlertHostInterface_pMd, &_sSo28SBUIRemoteAlertHostInterface_pMR);
    if (swift_dynamicCast())
    {
      v14 = v20;
      [v20 deactivate];
      [v14 invalidate];
      type metadata accessor for OS_dispatch_queue();
      v15 = static OS_dispatch_queue.main.getter();
      v23 = closure #2 in closure #1 in WorkoutRemoteAlertServiceViewController.dismissView();
      v24 = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v22 = thunk for @escaping @callee_guaranteed () -> ();
      *(&v22 + 1) = &block_descriptor_9;
      v16 = _Block_copy(&aBlock);
      static DispatchQoS.unspecified.getter();
      *&aBlock = &_swiftEmptyArrayStorage;
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
      v19 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v16);
      swift_unknownObjectRelease();

      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v11, v19);
    }

    p_aBlock = v25;
  }

  else
  {
    outlined destroy of Any?(v25, &_sypSgMd, &_sypSgMR);
    p_aBlock = &aBlock;
  }

  return outlined destroy of Any?(p_aBlock, &_sypSgMd, &_sypSgMR);
}

uint64_t closure #1 in WorkoutRemoteAlertServiceViewController.configure(with:completion:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.app.getter();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = a1;
    v16 = v10;
    *v9 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v11 = Optional.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[RemoteAlert] proxy error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  return (*(v3 + 8))(v6, v2);
}

id closure #2 in closure #1 in WorkoutRemoteAlertServiceViewController.dismissView()()
{
  result = UIApp;
  if (UIApp)
  {
    return [UIApp terminateWithSuccess];
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id WorkoutRemoteAlertServiceViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutRemoteAlertServiceViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000034C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003500()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #2 in WorkoutRemoteAlertServiceViewController.dismissView()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003DDC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
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

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100003E98()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      outlined destroy of AnyHashable(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id WorkoutPreviewViewController.formattingManager.getter()
{
  v1 = OBJC_IVAR___WorkoutPreviewViewController____lazy_storage___formattingManager;
  v2 = *(v0 + OBJC_IVAR___WorkoutPreviewViewController____lazy_storage___formattingManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WorkoutPreviewViewController____lazy_storage___formattingManager);
  }

  else
  {
    v4 = v0;
    type metadata accessor for WorkoutCoreInjector();
    v5 = static WorkoutCoreInjector.shared.getter();
    v6 = dispatch thunk of WorkoutCoreInjector.inject()();

    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id @objc static WorkoutPreviewViewController._remoteViewControllerInterface()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol:*a3];

  return v3;
}

void WorkoutPreviewViewController.presentConfigurationViewer(for:)(void *a1)
{
  v3 = type metadata accessor for WorkoutConfigurationView();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = a1;
  WorkoutPreviewViewController.formattingManager.getter();
  *(swift_allocObject() + 16) = v1;
  v6 = v1;
  WorkoutConfigurationView.init(workoutConfiguration:formattingManager:showAddButton:showStartWorkoutButton:overrideSaveWorkoutAction:startWorkoutAction:overrideDismissAction:referenceIntervalWorkoutConfiguration:)();
  lazy protocol witness table accessor for type WorkoutConfigurationView and conformance WorkoutConfigurationView();
  AnyView.init<A>(_:)();
  v7 = _makeUIHostingController(_:)();

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v8];
    WorkoutPreviewViewController.displayViewController(_:)(v9);

    v7 = v9;
  }
}

uint64_t implicit closure #2 in implicit closure #1 in WorkoutPreviewViewController.presentConfigurationViewer(for:)(void *a1)
{
  v1 = WorkoutRemoteViewServiceExportedInterfaceFunc([a1 _remoteViewControllerProxy]);
  result = swift_unknownObjectRelease();
  if (v1)
  {
    [v1 dismiss];

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall WorkoutPreviewViewController.displayViewController(_:)(UIViewController a1)
{
  [v1 addChildViewController:a1.super.super.isa];
  v3 = [(objc_class *)a1.super.super.isa view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  v7 = [(objc_class *)a1.super.super.isa view];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  [v6 addSubview:v7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100007F20;
  v10 = [(objc_class *)a1.super.super.isa view];
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v1 view];
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  v15 = [v13 leadingAnchor];

  v16 = [v12 constraintEqualToAnchor:v15];
  *(v9 + 32) = v16;
  v17 = [(objc_class *)a1.super.super.isa view];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v19 constraintEqualToAnchor:v22];
  *(v9 + 40) = v23;
  v24 = [(objc_class *)a1.super.super.isa view];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = [v24 trailingAnchor];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 trailingAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v9 + 48) = v30;
  v31 = [(objc_class *)a1.super.super.isa view];
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v1 view];
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

  [(objc_class *)a1.super.super.isa didMoveToParentViewController:v1];
}

void WorkoutPreviewViewController.presentError(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit11ImportErrorOSgMd, &_s10WorkoutKit11ImportErrorOSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = aBlock - v4;
  aBlock[0] = a1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = type metadata accessor for ImportError();
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (v7)
  {
    v9 = *(v6 - 8);
    v8(v5, 0, 1, v6);
    (*(v9 + 88))(v5, v6);
    (*(v9 + 8))(v5, v6);
  }

  else
  {
    v8(v5, 1, 1, v6);
    outlined destroy of ImportError?(v5);
  }

  String.workoutKitLocalized()();
  String.workoutKitLocalized()();
  String.workoutKitLocalized()();
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = String._bridgeToObjectiveC()();
  aBlock[4] = partial apply for closure #1 in WorkoutPreviewViewController.presentError(_:);
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_0;
  v15 = _Block_copy(aBlock);

  v16 = [objc_opt_self() actionWithTitle:v14 style:0 handler:v15];
  _Block_release(v15);

  [v12 addAction:v16];
  v17 = [objc_allocWithZone(UIViewController) init];
  v18 = [v17 view];
  if (v18)
  {
    v19 = v18;

    v20 = [objc_opt_self() systemBackgroundColor];
    [v19 setBackgroundColor:v20];

    WorkoutPreviewViewController.displayViewController(_:)(v17);
    [v17 presentViewController:v12 animated:0 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in WorkoutPreviewViewController.presentError(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = WorkoutRemoteViewServiceExportedInterfaceFunc([Strong _remoteViewControllerProxy]);
    swift_unknownObjectRelease();
    if (v2)
    {
      [v2 dismiss];
      swift_unknownObjectRelease();
    }
  }
}

id WorkoutPreviewViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPreviewViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t outlined destroy of ImportError?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit11ImportErrorOSgMd, &_s10WorkoutKit11ImportErrorOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005108()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_1000051B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t lazy protocol witness table accessor for type WorkoutConfigurationView and conformance WorkoutConfigurationView()
{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationView and conformance WorkoutConfigurationView;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationView and conformance WorkoutConfigurationView)
  {
    type metadata accessor for WorkoutConfigurationView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationView and conformance WorkoutConfigurationView);
  }

  return result;
}

Swift::String __swiftcall String.workoutKitLocalized()()
{
  v0 = String.workoutKitLocalized()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}