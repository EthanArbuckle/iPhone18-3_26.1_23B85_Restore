uint64_t TaskProcessorManager.endTask(taskTokenId:)()
{
  v23 = v0;
  v1 = v0[19];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v0[18]), (v4 & 1) != 0))
  {
    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[20];
    v8 = v0[18];
    outlined init with copy of MOProtectedAppsManagerDelegate(*(v2 + 56) + 40 * v3, (v0 + 7));
    outlined init with take of URLBasedAsset(v0 + 7, v0 + 2);
    swift_endAccess();
    (*(v6 + 16))(v5, v8, v7);
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v21, v5);
    swift_endAccess();
    v9 = v0[5];
    v10 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v9);
    v20 = (*(v10 + 24) + **(v10 + 24));
    v11 = swift_task_alloc();
    v0[23] = v11;
    *v11 = v0;
    v11[1] = TaskProcessorManager.endTask(taskTokenId:);

    return v20(v9, v10);
  }

  else
  {
    v13 = v0[20];
    v14 = v0[21];
    v15 = v0[18];
    swift_endAccess();
    v16 = type metadata accessor for MUIProcessingError();
    lazy protocol witness table accessor for type MUIProcessingError and conformance MUIProcessingError();
    swift_allocError();
    v18 = v17;
    (*(v14 + 16))(v17, v15, v13);
    (*(*(v16 - 8) + 104))(v18, enum case for MUIProcessingError.InvalidTaskToken(_:), v16);
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }
}

{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(v0 + 8);
  v2 = *(v0 + 200);

  return v1(v2);
}

{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TaskProcessorManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TaskProcessorManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t TaskProcessorManager.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_16MomentsUIService19TaskProcessorWorker_pTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *(v0 + 120) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_16MomentsUIService19TaskProcessorWorker_pyKcTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  return v0;
}

uint64_t TaskProcessorManager.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_16MomentsUIService19TaskProcessorWorker_pTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *(v0 + 120) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_16MomentsUIService19TaskProcessorWorker_pyKcTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  return v0;
}

unint64_t lazy protocol witness table accessor for type MUIProcessingError and conformance MUIProcessingError()
{
  result = lazy protocol witness table cache variable for type MUIProcessingError and conformance MUIProcessingError;
  if (!lazy protocol witness table cache variable for type MUIProcessingError and conformance MUIProcessingError)
  {
    type metadata accessor for MUIProcessingError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MUIProcessingError and conformance MUIProcessingError);
  }

  return result;
}

uint64_t sub_100179298@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

void MOAngelRootViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_presentedSheetController) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_currentlyPresentedOptions) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MOAngelRootViewController.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  specialized MOAngelRootViewController.init(_:)(a1);
  v5 = v4;

  return v5;
}

uint64_t MOAngelRootViewController.init(_:)(void *a1)
{
  specialized MOAngelRootViewController.init(_:)(a1);
  v3 = v2;

  return v3;
}

uint64_t static MOAngelRootViewController.currentInterfaceOrientation()()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIScene);
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Collection.first.getter(v2);

  if (!v3)
  {
    return 1;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

Swift::Void __swiftcall MOAngelRootViewController.shouldClearPresentedOptions()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_currentlyPresentedOptions);
  *(v0 + OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_currentlyPresentedOptions) = 0;
}

Swift::Void __swiftcall MOAngelRootViewController.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(UISheetPresentationController a1)
{
  v2 = v1;
  v3 = [(objc_class *)a1.super.super.isa selectedDetentIdentifier];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  if (one-time initialization token for full != -1)
  {
    swift_once();
  }

  v5 = [static SuggestionSheetDetents.full identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {

    goto LABEL_12;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_12:
    (*((swift_isaMask & **(v2 + OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_privacyBlur)) + 0xA8))(1);
    v12 = 2;
    goto LABEL_13;
  }

  v12 = 1;
  (*((swift_isaMask & **(v2 + OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_privacyBlur)) + 0xA0))(1);
LABEL_13:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState;
    v16 = Strong;
    if (v12 == *(Strong + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState))
    {

      v15 = v16;
    }

    else
    {
      [*(Strong + OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager) sendSuggestionSheetStateUpdate:v12 sender:Strong];

      v15 = v16;
      *&v16[v14] = v12;
    }
  }

  else
  {
    v15 = v4;
  }
}

Swift::Void __swiftcall MOAngelRootViewController.refreshData()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_presentedSheetController);
  if (v1)
  {
    type metadata accessor for MOSuggestionSheetViewController();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *((swift_isaMask & *v2) + 0x180);
      v4 = v1;
      v3();
    }
  }
}

uint64_t MOAngelRootViewController.present(with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v90 = *(v4 - 8);
  v91 = v4;
  __chkstk_darwin(v4);
  v89 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v93 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v84 - v10;
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v12, static MOAngelSignposter.processing);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v13 = [a1 presentFullScreen];
  if (v13)
  {
    v14 = 0xEA00000000006E65;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = a1;
  v16 = OSSignposter.logHandle.getter();
  v17 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    if (v13)
    {
      v18 = 0x657263536C6C7566;
    }

    else
    {
      v18 = 1801807216;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v92 = v2;
    v21 = v6;
    v22 = v20;
    aBlock[0] = v20;
    *v19 = 136315394;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v14, aBlock);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    *(v19 + 14) = [v15 presentationIsAnimated];

    v24 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v17, v24, "UIService_PresentSuggestionSheet", "mode=%s animated=%ld", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v6 = v21;
    v2 = v92;
  }

  else
  {
  }

  v25 = v15;
  (*(v93 + 16))(v9, v11, v6);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v26 = [v2 presentedViewController];
  if (v26)
  {

LABEL_14:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static MOAngelLogger.shared);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "MOAngelRootViewController - Received an update request something is already presented. Ignoring.", v30, 2u);
    }

    goto LABEL_51;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v28 = Strong;
  v88 = v6;
  v32 = OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_currentlyPresentedOptions;
  v33 = *&v2[OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_currentlyPresentedOptions];
  if (!v33 || ([v33 isEqual:v15] & 1) == 0)
  {
    v34 = objc_allocWithZone(type metadata accessor for MOSuggestionSheetViewController());
    v35 = v15;
    MOSuggestionSheetViewController.init(controller:options:)(v28, v35);
    v37 = v36;
    [v36 setModalInPresentation:1];
    v38 = *&v2[OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_presentedSheetController];
    *&v2[OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_presentedSheetController] = v37;

    v39 = *&v2[v32];
    *&v2[v32] = v35;
    v40 = v35;
  }

  v41 = OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_presentedSheetController;
  v42 = *&v2[OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_presentedSheetController];
  if (!v42)
  {
    v44 = 0;
    v6 = v88;
LABEL_41:

    goto LABEL_51;
  }

  v86 = v32;
  v43 = [v42 sheetPresentationController];
  v44 = v43;
  v6 = v88;
  v87 = v43;
  if (v43)
  {
    v85 = v41;
    v92 = v25;
    aBlock[0] = _swiftEmptyArrayStorage;
    v45 = one-time initialization token for full;
    v46 = v43;
    if (v45 != -1)
    {
      swift_once();
    }

    v47 = static SuggestionSheetDetents.full;
    v48 = [static SuggestionSheetDetents.full identifier];
    [v46 setSelectedDetentIdentifier:v48];

    [v46 _setShouldScaleDownBehindDescendantSheets:0];
    [v92 peekDetentRatio];
    if (v49 >= 0.2 && v49 <= 0.8)
    {
      v84 = v47;
      v50 = v89;
      UUID.init()();
      UUID.uuidString.getter();
      (*(v90 + 8))(v50, v91);
      v51 = String._bridgeToObjectiveC()();

      v52 = v92;
      [v92 peekDetentRatio];
      v54 = v53;
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
      *(swift_allocObject() + 16) = v54;
      v55 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

      if (([v52 presentFullScreen] & 1) == 0)
      {
        v56 = [v55 identifier];
        [v46 setSelectedDetentIdentifier:v56];
      }

      v57 = v55;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = v88;
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v88;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      [v46 setPrefersGrabberVisible:1];
      v58 = [v57 identifier];
      [v46 setLargestUndimmedDetentIdentifier:v58];

      v44 = v87;
      v47 = v84;
    }

    [v46 setPrefersEdgeAttachedInCompactHeight:1];
    [v46 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    [v46 setPrefersPageSizing:0];
    v59 = v47;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v88;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v46 setDetents:isa];

    [v46 setDelegate:v2];
    v25 = v92;
    v41 = v85;
  }

  v61 = *&v2[v41];
  if (!v61)
  {
    goto LABEL_41;
  }

  v92 = v2;
  v62 = *&v2[v86];
  if (v62)
  {
    type metadata accessor for MOSuggestionSheetViewController();
    v63 = swift_dynamicCastClass();
    if (v63)
    {
      v91 = *((swift_isaMask & *v63) + 0x150);
      v64 = v61;
      v65 = v62;
      v66 = v92;
      v67 = v92;
      v91(v66, &protocol witness table for MOAngelRootViewController);
      v6 = v88;
    }

    else
    {
      type metadata accessor for SuggestionsViewController();
      if (swift_dynamicCastClass())
      {
        lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type MOAngelRootViewController and conformance MOAngelRootViewController, v68, type metadata accessor for MOAngelRootViewController);
        v69 = v61;
        v70 = v62;
        v66 = v92;
        v71 = v92;
        dispatch thunk of SuggestionsViewController.delegate.setter();

        v6 = v88;
      }

      else
      {
        v72 = v61;
        v73 = v62;
        v66 = v92;
      }
    }

    v74 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v61];
    v75 = [v66 navigationController];
    if (v75)
    {
      v76 = v75;
      LODWORD(v91) = [v25 presentationIsAnimated];
      v77 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v78 = swift_allocObject();
      v78[2] = v61;
      v78[3] = v77;
      v78[4] = v62;
      aBlock[4] = partial apply for closure #1 in MOAngelRootViewController.present(with:);
      aBlock[5] = v78;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_27;
      v79 = _Block_copy(aBlock);
      v80 = v61;
      v81 = v62;

      [v76 presentViewController:v74 animated:v91 completion:v79];
      v82 = v79;
      v6 = v88;
      _Block_release(v82);
    }

    if ([v62 presentFullScreen])
    {
      (*((swift_isaMask & **&v92[OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_privacyBlur]) + 0xA8))(1);
    }
  }

  else
  {
  }

LABEL_51:

  $defer #1 () in MOAngelRootViewController.present(with:)();

  return (*(v93 + 8))(v11, v6);
}

uint64_t $defer #1 () in MOAngelRootViewController.present(with:)()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v8, static MOAngelSignposter.processing);
  v9 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v10 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v3, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v13, "UIService_PresentSuggestionSheet", v11, v12, 2u);
  }

  return (*(v5 + 8))(v7, v4);
}

void closure #1 in MOAngelRootViewController.present(with:)(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 sheetPresentationController];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 valueForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (!*(&v22 + 1))
  {
    goto LABEL_12;
  }

  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIView);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = v21;
  v10 = [a1 sheetPresentationController];
  if (!v10)
  {

LABEL_11:
    v23 = 0u;
    v24 = 0u;
LABEL_12:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v23, &_sypSgMd);
    goto LABEL_13;
  }

  v11 = v10;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 valueForKey:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (!*(&v22 + 1))
  {

    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v19 = [v9 layer];
    [v19 setHitTestsAsOpaque:0];

    v20 = [v21 layer];
    [v20 setHitTestsAsOpaque:0];
  }

  else
  {
  }

LABEL_13:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = swift_unknownObjectWeakLoadStrong();

    if (v16)
    {
      if ([a3 presentFullScreen])
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      v18 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState;
      if (v17 != *&v16[OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState])
      {
        [*&v16[OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager] sendSuggestionSheetStateUpdate:v17 sender:v16];
        *&v16[v18] = v17;
      }
    }
  }
}

void MOAngelRootViewController.update(with:animated:)(uint64_t a1, char a2)
{
  v3 = *&v2[OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_presentedSheetController];
  if (v3)
  {
    v4 = v2;
    v50 = v3;
    v7 = [v50 sheetPresentationController];
    if (v7)
    {
      v8 = v7;
      if (a1)
      {
        if (one-time initialization token for full != -1)
        {
          swift_once();
        }

        oslog = static SuggestionSheetDetents.full;
        v9 = [static SuggestionSheetDetents.full identifier];
        v60 = v9;
        if (a1 != 2)
        {
          v49 = a1;
          v10 = [v8 detents];
          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
          v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v48 = a2;
          v47 = v9;
          if (v11 >> 62)
          {
            v12 = _CocoaArrayWrapper.endIndex.getter();
            if (v12)
            {
LABEL_9:
              v13 = 0;
              while (1)
              {
                if ((v11 & 0xC000000000000001) != 0)
                {
                  v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_33;
                  }

                  v14 = *(v11 + 8 * v13 + 32);
                }

                v15 = v14;
                v16 = v13 + 1;
                if (__OFADD__(v13, 1))
                {
                  break;
                }

                v17 = oslog;
                v18 = static NSObject.== infix(_:_:)();

                if ((v18 & 1) == 0)
                {

                  v9 = [v15 identifier];

                  v60 = v9;
                  a1 = v49;
                  a2 = v48;
                  goto LABEL_37;
                }

                ++v13;
                if (v16 == v12)
                {
                  goto LABEL_36;
                }
              }

              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }
          }

          else
          {
            v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v12)
            {
              goto LABEL_9;
            }
          }

LABEL_36:

          a1 = v49;
          a2 = v48;
          v9 = v47;
        }

LABEL_37:
        v30 = [v8 selectedDetentIdentifier];
        if (v30)
        {
          v31 = v30;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;
          if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
          {

LABEL_42:

            return;
          }

          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v36)
          {
            goto LABEL_42;
          }
        }

        if ((a2 & 1) == 0)
        {
          [v8 setSelectedDetentIdentifier:v9];
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v45 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState;
            if (*&Strong[OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState] != a1)
            {
              v46 = Strong;
              [*&Strong[OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager] sendSuggestionSheetStateUpdate:a1 sender:Strong];
              Strong = v46;
              *&v46[v45] = a1;
            }
          }

          v39 = 0;
          goto LABEL_51;
        }

        v37 = swift_allocObject();
        *(v37 + 16) = v8;
        *(v37 + 24) = &v60;
        v38 = swift_allocObject();
        v39 = partial apply for closure #2 in MOAngelRootViewController.update(with:animated:);
        *(v38 + 16) = partial apply for closure #2 in MOAngelRootViewController.update(with:animated:);
        *(v38 + 24) = v37;
        v58 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
        v59 = v38;
        aBlock = _NSConcreteStackBlock;
        v55 = 1107296256;
        v56 = thunk for @escaping @callee_guaranteed () -> ();
        v57 = &block_descriptor_15_0;
        v40 = _Block_copy(&aBlock);
        oslogb = v8;

        v41 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v42 = swift_allocObject();
        *(v42 + 16) = v41;
        *(v42 + 24) = a1;
        v58 = partial apply for closure #3 in MOAngelRootViewController.update(with:animated:);
        v59 = v42;
        aBlock = _NSConcreteStackBlock;
        v55 = 1107296256;
        v56 = thunk for @escaping @callee_guaranteed @Sendable (@unowned UIViewAnimatingPosition) -> ();
        v57 = &block_descriptor_22_0;
        v43 = _Block_copy(&aBlock);

        [oslogb _animateChanges:v40 completion:v43];
        _Block_release(v43);
        _Block_release(v40);
        LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

        if ((v43 & 1) == 0)
        {
LABEL_51:
          if (a1 == 2)
          {
            (*((swift_isaMask & **&v4[OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_privacyBlur]) + 0xA8))(a2 & 1);
          }

          else
          {
            (*((swift_isaMask & **&v4[OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_privacyBlur]) + 0xA0))(a2 & 1);
          }

          outlined consume of (@escaping @callee_guaranteed () -> ())?(v39);
          return;
        }

        __break(1u);
      }

      else
      {
        (*((swift_isaMask & **&v2[OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_privacyBlur]) + 0xA0))(a2 & 1);
        v23 = [v2 view];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 window];

          if (v25)
          {
            v26 = [v25 rootViewController];

            if (v26)
            {
              v27 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v28 = swift_allocObject();
              *(v28 + 16) = v27;
              *(v28 + 24) = 0;
              v58 = partial apply for closure #1 in MOAngelRootViewController.update(with:animated:);
              v59 = v28;
              aBlock = _NSConcreteStackBlock;
              v55 = 1107296256;
              v56 = thunk for @escaping @callee_guaranteed () -> ();
              v57 = &block_descriptor_29_0;
              v29 = _Block_copy(&aBlock);

              [v26 dismissViewControllerAnimated:a2 & 1 completion:v29];

              _Block_release(v29);
              return;
            }
          }

          v22 = v50;
          goto LABEL_23;
        }
      }

      __break(1u);
      return;
    }
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_34:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static MOAngelLogger.shared);
  osloga = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(osloga, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, osloga, v20, "MOAngelRootViewController - Received an update request while no sheet is currently presented. Rejecting!", v21, 2u);
  }

  v22 = osloga;
LABEL_23:
}

void closure #1 in MOAngelRootViewController.update(with:animated:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      v6 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState;
      if (*&v5[OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState] != a2)
      {
        [*&v5[OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager] sendSuggestionSheetStateUpdate:a2 sender:v5];
        *&v5[v6] = a2;
      }
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = swift_unknownObjectWeakLoadStrong();

    if (v9)
    {
      if ((*((swift_isaMask & *v9) + 0x1B0))())
      {
        swift_beginAccess();
        v10 = swift_unknownObjectWeakLoadStrong();
        if (v10)
        {
          v11 = v10;
          v12 = [v10 view];

          if (!v12)
          {
            __break(1u);
            return;
          }

          v13 = [v12 window];

          if (v13)
          {
            v14 = [v13 windowScene];

            if (v14)
            {
              v15 = [v14 session];

              if (v15)
              {
                v16 = [objc_opt_self() sharedApplication];
                [v16 requestSceneSessionDestruction:v15 options:0 errorHandler:0];

                v9 = v16;
              }
            }
          }
        }
      }
    }
  }
}

void closure #3 in MOAngelRootViewController.update(with:animated:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      v7 = OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState;
      if (*&v6[OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_currentViewState] != a3)
      {
        [*&v6[OBJC_IVAR____TtC16MomentsUIService24MOAngelControllerWrapper_serverManager] sendSuggestionSheetStateUpdate:a3 sender:v6];
        *&v6[v7] = a3;
      }
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned UIViewAnimatingPosition) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void protocol witness for MOAngelControllerWrapperDelegate.refreshData() in conformance MOAngelRootViewController()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_presentedSheetController);
  if (v1)
  {
    type metadata accessor for MOSuggestionSheetViewController();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *((swift_isaMask & *v2) + 0x180);
      v4 = v1;
      v3();
    }
  }
}

void protocol witness for MOAngelControllerWrapperDelegate.shouldClearPresentedOptions() in conformance MOAngelRootViewController()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_currentlyPresentedOptions);
  *(*v0 + OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_currentlyPresentedOptions) = 0;
}

Swift::Void __swiftcall MOSuggestionSheetViewController.updateSheetIfOnboardingRefreshComplete()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  v12 = objc_opt_self();
  v13 = [v12 sharedInstance];
  v14 = [v13 onboardingFlowCompletionStatus];

  v15 = [v12 sharedInstance];
  v16 = [v15 onboardingFlowRefreshCompletionStatus];

  if (one-time initialization token for sheetController != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static MOAngelLogger.sheetController);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134218240;
    *(v20 + 4) = v14;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v18, v19, "checking onboarding&refresh status onboardingFlowCompletionStatus=%lu onboardingFlowRefreshCompletionStatus=%lu", v20, 0x16u);
  }

  if (v14 == 1)
  {

    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    if (v14 == v16)
    {
      if (v23)
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "dismissing and updating sheet", v24, 2u);
      }

      [v1 dismissViewControllerAnimated:1 completion:0];
      v25 = *((swift_isaMask & *v1) + 0x180);

      v25();
    }

    else
    {
      if (v23)
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "scheduling new onboarding&refresh status check", v26, 2u);
      }

      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v27 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v36 = *(v36 + 8);
      v28 = v9;
      v29 = v37;
      (v36)(v28, v37);
      v30 = swift_allocObject();
      *(v30 + 16) = v1;
      aBlock[4] = partial apply for closure #1 in MOSuggestionSheetViewController.updateSheetIfOnboardingRefreshComplete();
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_35;
      v31 = _Block_copy(aBlock);
      v32 = v1;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v33 = v39;
      v34 = v42;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v31);

      (*(v41 + 8))(v33, v34);
      (*(v38 + 8))(v5, v40);
      (v36)(v11, v29);
    }
  }
}

Swift::Void __swiftcall MOSuggestionSheetViewController.shouldDismissOnboarding()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  [v3 onboardingFlowCompletionStatus];

  if (one-time initialization token for $showSuggestionsOnboarding != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v4, static MOSuggestionOnboardingTip.$showSuggestionsOnboarding);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  v5 = [v2 sharedInstance];
  [v5 isOnboarded];

  if (one-time initialization token for $showPrivacyOnboarding != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, static MOSuggestionPrivacyTip.$showPrivacyOnboarding);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  v6 = MOSuggestionSheetViewController.suggestionSegmentedControl.getter();
  v7 = [v6 selectedSegmentIndex];

  if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_15;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_suggestionCollectionView;
  v10 = *(v1 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_suggestionCollectionView);
  if (v10)
  {
    v11 = *((swift_isaMask & *v10) + 0x100);
    v12 = v10;
    v13 = v11();

    if (v13)
    {
      (*(*v13 + 824))(v8, 1, 0);
    }

    v14 = *(v1 + v9);
    if (v14)
    {
      v15 = *((swift_isaMask & *v14) + 0xE8);
      v16 = v14;
      v17 = v15();

      if (v17)
      {
        v18 = [v17 collectionViewLayout];

        [v18 invalidateLayout];
      }
    }
  }

LABEL_15:
  (*((swift_isaMask & *v1) + 0x90))();
}

id MOSuggestionSheetViewController.suggestionSegmentedControl.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController____lazy_storage___suggestionSegmentedControl;
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController____lazy_storage___suggestionSegmentedControl);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController____lazy_storage___suggestionSegmentedControl);
  }

  else
  {
    v4 = closure #1 in MOSuggestionSheetViewController.suggestionSegmentedControl.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in MOSuggestionSheetViewController.suggestionSegmentedControl.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002A4A00;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v3._object = 0xEB00000000646564;
  v16._object = 0xEB00000000646564;
  v3._countAndFlagsBits = 0x6E656D6D6F636552;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0x6E656D6D6F636552;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v16);

  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = v5;
  v6 = [v1 mainBundle];
  v17._object = 0xE600000000000000;
  v7._countAndFlagsBits = 0x746E65636552;
  v7._object = 0xE600000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0x746E65636552;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v17);

  *(v0 + 88) = &type metadata for String;
  *(v0 + 64) = v9;
  v10 = objc_allocWithZone(UISegmentedControl);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initWithItems:isa];

  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [objc_opt_self() secondarySystemBackgroundColor];
  [v13 setBackgroundColor:v14];

  [v13 setSelectedSegmentIndex:0];
  return v13;
}

uint64_t MOSuggestionSheetViewController.presentationDelegate.getter()
{
  return MOSuggestionSheetViewController.presentationDelegate.getter();
}

{
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t (*MOSuggestionSheetViewController.presentationDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_presentationDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetViewController.presentationDelegate.modify;
}

uint64_t MOSuggestionSheetViewController.presentationDelegate.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*MOSuggestionSheetViewController.rootControllerDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_rootControllerDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetViewController.rootControllerDelegate.modify;
}

void MOSuggestionSheetViewController.init(controller:options:)(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_segmentedDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_segmentedVisibilityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_suggestionCollectionView] = 0;
  *&v2[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController____lazy_storage___suggestionSegmentedControl] = 0;
  *&v2[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_presentationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_rootControllerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_options] = a2;
  v94.receiver = v2;
  v94.super_class = type metadata accessor for MOSuggestionSheetViewController();
  v5 = a2;
  v6 = objc_msgSendSuper2(&v94, "initWithNibName:bundle:", 0, 0);
  v7 = [v6 view];
  if (!v7)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;

  v13 = specialized static MOAngelRootViewController.isLandscape.getter();
  v14 = *&static MOAngelRootViewController.LANDSCAPE_WIDTH;
  if (!v13)
  {
    v14 = v10;
  }

  [v6 setPreferredContentSize:{v14, v12}];
  v15 = [objc_allocWithZone(UINavigationBar) init];
  v16 = objc_opt_self();
  v17 = [v16 systemBackgroundColor];
  [v15 setBarTintColor:v17];

  v18 = v15;
  v19 = [v16 systemBackgroundColor];
  [v18 setBackgroundColor:v19];

  [v18 setTranslucent:0];
  v20 = [objc_allocWithZone(UIImage) init];
  [v18 setShadowImage:v20];

  v21 = [v6 navigationItem];
  v22 = MOSuggestionSheetViewController.suggestionSegmentedControl.getter();
  [v21 setTitleView:v22];

  v23 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController____lazy_storage___suggestionSegmentedControl;
  v24 = *&v6[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController____lazy_storage___suggestionSegmentedControl];
  [v24 setHidden:{objc_msgSend(v5, "showBlankEntryButton")}];

  if (([v5 showBlankEntryButton] & 1) == 0 && (objc_msgSend(v5, "presentFullScreen") & 1) == 0)
  {
    [v18 setTitleVerticalPositionAdjustment:0 forBarMetrics:8.0];
  }

  [*&v6[v23] addTarget:v6 action:"pressedSegmentControl" forControlEvents:4096];
  v25 = [v6 view];
  if (!v25)
  {
    goto LABEL_30;
  }

  v26 = v25;
  [v25 addSubview:v18];

  v27 = [objc_opt_self() defaultCenter];
  [v27 addObserver:v6 selector:"handleContentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];

  v28 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v6 action:"cancelSheet"];
  v29 = (*((swift_isaMask & *a1) + 0x1B0))();
  v30 = &selRef_systemBlueColor;
  if ((v29 & 1) == 0)
  {
    v30 = &selRef_systemIndigoColor;
  }

  v31 = [v16 *v30];
  v93 = v28;
  [v28 setTintColor:v31];

  if ([v5 showCancelButton])
  {
    v32 = [v6 navigationItem];
    [v32 setLeftBarButtonItem:v28];
  }

  if (one-time initialization token for uiInternalOS != -1)
  {
    swift_once();
  }

  if (static MOAngelControllerWrapper.uiInternalOS == 1)
  {
    v33 = String._bridgeToObjectiveC()();
    v34 = [objc_opt_self() systemImageNamed:v33];

    v35 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v34 style:2 target:v6 action:"showMomentsValidator"];
    v36 = [v6 navigationItem];
    [v36 setRightBarButtonItem:v35];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1002A4A70;
  *(v37 + 32) = [v6 navigationItem];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UINavigationItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 setItems:isa animated:0];

  if (*&v6[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_suggestionCollectionView])
  {

LABEL_28:
    return;
  }

  v90 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_suggestionCollectionView;
  v39 = objc_allocWithZone(type metadata accessor for MOSuggestionCollectionView());
  v40 = v6;
  v41 = v5;
  v42 = v40;
  v43 = a1;
  v44 = specialized MOSuggestionCollectionView.init(controller:presentationDelegate:dialogDelegate:segmentedVisibilityDelegate:options:)(v43, v42, v42, v42, v41, v39);
  v89 = v43;

  v91 = v41;
  Strong = swift_unknownObjectWeakLoadStrong();
  v92 = v44;
  (*((swift_isaMask & *v44) + 0x120))(Strong);
  v46 = [v42 view];
  if (!v46)
  {
    goto LABEL_31;
  }

  v47 = v46;
  v48 = v44;
  [v47 insertSubview:v48 atIndex:0];

  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1002A5360;
  v50 = [v48 topAnchor];

  v51 = [v18 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v49 + 32) = v52;
  v53 = [v48 bottomAnchor];

  v54 = [v42 view];
  if (!v54)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v55 = v54;
  v56 = [v54 bottomAnchor];

  v57 = [v53 constraintEqualToAnchor:v56];
  *(v49 + 40) = v57;
  v58 = [v48 leadingAnchor];

  v59 = [v42 view];
  if (!v59)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v60 = v59;
  v61 = [v59 leadingAnchor];

  v62 = [v58 constraintEqualToAnchor:v61];
  *(v49 + 48) = v62;
  v63 = [v48 trailingAnchor];

  v64 = [v42 view];
  if (!v64)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v65 = v64;
  v66 = [v64 trailingAnchor];

  v67 = [v63 constraintEqualToAnchor:v66];
  *(v49 + 56) = v67;
  v68 = [v18 leadingAnchor];
  v69 = [v42 view];
  if (!v69)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v70 = v69;
  v71 = [v69 leadingAnchor];

  v72 = [v68 constraintEqualToAnchor:v71];
  *(v49 + 64) = v72;
  v73 = [v18 trailingAnchor];
  v74 = [v42 view];
  if (!v74)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v75 = v74;
  v76 = [v74 trailingAnchor];

  v77 = [v73 constraintEqualToAnchor:v76];
  *(v49 + 72) = v77;
  v78 = [v18 heightAnchor];
  v79 = [v91 showBlankEntryButton];
  v80 = 60.0;
  if (v79)
  {
    v80 = 55.0;
  }

  v81 = [v78 constraintEqualToConstant:v80];

  *(v49 + 80) = v81;
  v82 = [v18 topAnchor];

  v83 = [v42 view];
  if (v83)
  {
    v84 = objc_opt_self();
    v85 = [v83 topAnchor];

    v86 = [v82 constraintEqualToAnchor:v85];
    *(v49 + 88) = v86;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v87 = Array._bridgeToObjectiveC()().super.isa;

    [v84 activateConstraints:v87];

    v88 = *&v6[v90];
    *&v6[v90] = v92;
    v18 = v48;

    *&v42[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_segmentedDelegate + 8] = &protocol witness table for MOSuggestionCollectionView;
    swift_unknownObjectWeakAssign();
    goto LABEL_28;
  }

LABEL_37:
  __break(1u);
}

void MOSuggestionSheetViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v7 = specialized static MOAngelRootViewController.isLandscape.getter();
  v8 = *&static MOAngelRootViewController.LANDSCAPE_WIDTH;
  if (!v7)
  {
    v8 = a2;
  }

  [v3 setPreferredContentSize:{v8, a3}];
  [v3 preferredContentSize];
  v10 = v9;
  v12 = v11;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for MOSuggestionSheetViewController();
  objc_msgSendSuper2(&v16, "viewWillTransitionToSize:withTransitionCoordinator:", a1, v10, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[4] = partial apply for closure #1 in MOSuggestionSheetViewController.viewWillTransition(to:with:);
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v15[3] = &block_descriptor_41;
  v14 = _Block_copy(v15);

  [a1 animateAlongsideTransition:0 completion:v14];
  _Block_release(v14);
}

void closure #1 in MOSuggestionSheetViewController.viewWillTransition(to:with:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_suggestionCollectionView);
    if (v2)
    {
      v3 = *((swift_isaMask & *v2) + 0xE8);
      v4 = v2;
      v5 = v3();

      if (v5)
      {
        v6 = [v5 collectionViewLayout];

        [v6 invalidateLayout];
      }
    }
  }
}

Swift::Void __swiftcall MOSuggestionSheetViewController.handleContentSizeChanged()()
{
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_suggestionCollectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    (*((swift_isaMask & *v2) + 0x260))(v4);
  }
}

Swift::Void __swiftcall MOSuggestionSheetViewController.cancelSheet()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((swift_isaMask & *Strong) + 0x158))();
  }

  if ((*((swift_isaMask & *v0) + 0x148))())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall MOSuggestionSheetViewController.updateSheet()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_suggestionCollectionView);
  if (v1)
  {
    v2 = *((swift_isaMask & *v1) + 0x248);
    v3 = v1;
    v2();
  }
}

Swift::Void __swiftcall MOSuggestionSheetViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MOSuggestionSheetViewController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall MOSuggestionSheetViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for MOSuggestionSheetViewController();
  objc_msgSendSuper2(&v10, "viewDidAppear:", a1);
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 onboardingFlowCompletionStatus];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static MOAngelLogger.shared);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sheet view controller state, onboarding state = %lu", v9, 0xCu);
  }

  if (!v5)
  {
    MOSuggestionSheetViewController.presentOnboardingController()();
  }
}

Swift::Void __swiftcall MOSuggestionSheetViewController.presentOnboardingController()()
{
  v1 = objc_allocWithZone(type metadata accessor for MOOnboardingNavigationController());
  v2 = v0;
  v3 = MOOnboardingNavigationController.init(onboardingDelegate:)();
  [v3 setModalInPresentation:1];
  swift_unknownObjectRetain();
  dispatch thunk of MOOnboardingNavigationController.onboardingDelegate.setter();
  [v3 setModalPresentationStyle:2];

  [v2 presentViewController:v3 animated:1 completion:0];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

Swift::Void __swiftcall MOSuggestionSheetViewController.pressedSegmentControl()()
{
  v1 = MOSuggestionSheetViewController.suggestionSegmentedControl.getter();
  v2 = [v1 selectedSegmentIndex];

  if (v2 <= 1)
  {
    v3 = v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_segmentedDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v2, [*(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_options) showBlankEntryButton] ^ 1, objc_msgSend(*(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_options), "showBlankEntryButton"), ObjectType, v4);

      swift_unknownObjectRelease();
    }
  }
}

id MOAngelRootViewController.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Void __swiftcall MOSuggestionSheetViewController.prepareViewControllerForPresentation(_:)(UIViewController a1)
{
  [v1 preferredContentSize];
  [(objc_class *)a1.super.super.isa setPreferredContentSize:?];
  v3 = [(objc_class *)a1.super.super.isa sheetPresentationController];
  if (v3)
  {
    v4 = v3;
    [v3 setPrefersEdgeAttachedInCompactHeight:1];
    [v4 setWidthFollowsPreferredContentSizeWhenEdgeAttached:0];
    [v4 setPrefersPageSizing:0];
  }
}

void MOSuggestionSheetViewController.presentInterstitialView(interstitial:completion:)(void *a1, void *a2, uint64_t a3)
{
  [v3 preferredContentSize];
  [a1 setPreferredContentSize:?];
  v7 = [a1 sheetPresentationController];
  if (v7)
  {
    v8 = v7;
    [v7 setPrefersEdgeAttachedInCompactHeight:1];
    [v8 setWidthFollowsPreferredContentSizeWhenEdgeAttached:0];
    [v8 setPrefersPageSizing:0];
  }

  if (a2)
  {
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed () -> ();
    v9[3] = &block_descriptor_44;
    a2 = _Block_copy(v9);
  }

  [v3 presentViewController:a1 animated:1 completion:a2];
  _Block_release(a2);
}

Swift::Void __swiftcall MOSuggestionSheetViewController.dismissInterstitialView()()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

Swift::Void __swiftcall MOSuggestionSheetViewController.presentPrivacyController()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = objc_allocWithZone(type metadata accessor for PrivacyViewController());
    v4 = specialized PrivacyViewController.init(clientName:)();
    [v4 setModalInPresentation:1];
    [v0 presentViewController:v4 animated:1 completion:0];
  }
}

Swift::Void __swiftcall MOSuggestionSheetViewController.shouldUpdateCancelButtonToClose()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() mainBundle];
    v28._object = 0x80000001002B7110;
    v5._countAndFlagsBits = 0x65736F6C63;
    v5._object = 0xE500000000000000;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0xD000000000000021;
    v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v28);

    v27 = v7;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.localizedCapitalized.getter();

    v26 = type metadata accessor for MOSuggestionSheetViewController();
    v25[0] = v1;
    v8 = v1;
    v9 = String._bridgeToObjectiveC()();

    v10 = v26;
    if (v26)
    {
      v11 = __swift_project_boxed_opaque_existential_0(v25, v26);
      v12 = *(v10 - 8);
      __chkstk_darwin(v11);
      v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v14);
      v15 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v12 + 8))(v14, v10);
      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    else
    {
      v15 = 0;
    }

    v16 = objc_allocWithZone(UIBarButtonItem);
    v17 = [v16 initWithTitle:v9 style:2 target:v15 action:{"cancelSheet", v25[0]}];

    v18 = swift_unknownObjectRelease();
    v19 = (*((swift_isaMask & *v3) + 0x1B0))(v18);
    v20 = objc_opt_self();
    v21 = &selRef_systemBlueColor;
    if ((v19 & 1) == 0)
    {
      v21 = &selRef_systemIndigoColor;
    }

    v22 = [v20 *v21];
    [v17 setTintColor:v22];

    if ([*&v8[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_options] showCancelButton])
    {
      v23 = [v8 navigationItem];
      [v23 setLeftBarButtonItem:v17];

      v24 = v17;
    }

    else
    {
      v24 = v3;
      v3 = v17;
    }
  }
}

Swift::Void __swiftcall MOSuggestionSheetViewController.showSegmentedController(withSegment:)(MomentsUIService::SegmentType withSegment)
{
  v2 = MOSuggestionSheetViewController.suggestionSegmentedControl.getter();
  [v2 setSelectedSegmentIndex:withSegment & 1];

  v3 = objc_opt_self();
  v4 = MOSuggestionSheetViewController.suggestionSegmentedControl.getter();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = closure #1 in MOSuggestionSheetViewController.showSegmentedController()partial apply;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> ();
  v7[3] = &block_descriptor_53;
  v6 = _Block_copy(v7);

  [v3 transitionWithView:v4 duration:5242880 options:v6 animations:0 completion:0.5];
  _Block_release(v6);
}

void MOSuggestionSheetViewController.showSegmentedController()(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = MOSuggestionSheetViewController.suggestionSegmentedControl.getter();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = a1;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = a2;
  v7 = _Block_copy(v8);

  [v4 transitionWithView:v5 duration:5242880 options:v7 animations:0 completion:0.5];
  _Block_release(v7);
}

void closure #1 in MOSuggestionSheetViewController.showSegmentedController()(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = MOSuggestionSheetViewController.suggestionSegmentedControl.getter();

    [v5 setHidden:a2 & 1];
  }
}

void MOAngelRootViewController.journalingSuggestionsOnboardingViewControllerDidTapCustomizeSuggestions(_:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[MOAngelRootViewController] Presenting Settings", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = objc_allocWithZone(type metadata accessor for MOSuggestionSheetOnboardingSettingsViewController());
  v10 = MOSuggestionSheetOnboardingSettingsViewController.init(preferDoneFlow:)();
  swift_unknownObjectRetain();
  dispatch thunk of MOSuggestionSheetOnboardingSettingsViewController.delegate.setter();
  v11 = [a1 navigationController];
  if (v11)
  {
    v12 = v11;
    [v11 pushViewController:v10 animated:1];
  }
}

uint64_t closure #1 in MOAngelRootViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v0[2] = swift_task_alloc();
  v1 = type metadata accessor for Logger();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = closure #1 in MOAngelRootViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:);

  return CloudManager.getDeviceDB()();
}

{
  if (v0[8])
  {
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, 255, &type metadata accessor for CloudDevicesDB);
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in MOAngelRootViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:), v2, v1);
  }

  else
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.onboarding.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[6];
    v7 = v0[3];
    v8 = v0[4];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[MOAngelRootViewController] Unable to nominate primary device; cloudManager or deviceDB is nil", v9, 2u);
    }

    (*(v8 + 8))(v6, v7);

    v10 = v0[1];

    return v10();
  }
}

{
  CloudDevicesDB.primaryDevice.getter();

  return _swift_task_switch(closure #1 in MOAngelRootViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:), 0, 0);
}

{
  v1 = v0[2];
  v2 = type metadata accessor for CloudDevice();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v3 == 1)
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = closure #1 in MOAngelRootViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:);

    return CloudDevicesDB.autoNominateDevice()();
  }

  else
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.onboarding.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[4];
    v8 = v0[5];
    v10 = v0[3];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "[PresenterServerViewController] Unable to nominate primary device; there is already a primary device", v11, 2u);
    }

    else
    {
    }

    (*(v9 + 8))(v8, v10);

    v12 = v0[1];

    return v12();
  }
}

{

  return _swift_task_switch(closure #1 in MOAngelRootViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MOAngelRootViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:)(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(closure #1 in MOAngelRootViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:), 0, 0);
}

BOOL specialized static MOAngelRootViewController.isLandscape.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v1 connectedScenes];

  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIScene);
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Collection.first.getter(v3);

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 interfaceOrientation];

      if (v6 == 4)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v8 = [v0 sharedApplication];
  v9 = [v8 connectedScenes];

  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = specialized Collection.first.getter(v10);

  if (v11)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = [v12 interfaceOrientation];

      return v13 == 3;
    }
  }

  return 0;
}

void specialized MOAngelRootViewController.init(_:)(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_presentedSheetController] = 0;
  *&v2[OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_currentlyPresentedOptions] = 0;
  v4 = swift_unknownObjectWeakAssign();
  v5 = (*((swift_isaMask & *a1) + 0x1D0))(v4);
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = objc_allocWithZone(type metadata accessor for MOSuggestionSheetPrivacyOverlayView());
  *&v2[OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_privacyBlur] = MOSuggestionSheetPrivacyOverlayView.init(frame:clientIdentifier:)(v7, v8, 0.0, 0.0, 0.0, 0.0);
  v10 = type metadata accessor for MOAngelRootViewController();
  v43.receiver = v2;
  v43.super_class = v10;
  v11 = objc_msgSendSuper2(&v43, "initWithNibName:bundle:", 0, 0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42[3] = v10;
    v42[4] = &protocol witness table for MOAngelRootViewController;
    v42[0] = v11;
    v13 = *((swift_isaMask & *Strong) + 0xE0);
    v14 = Strong;
    v15 = v11;
    v13(v42);
  }

  v16 = v11;
  v17 = [v16 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  [v17 frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v44.origin.x = v20;
  v44.origin.y = v22;
  v44.size.width = v24;
  v44.size.height = v26;
  Width = CGRectGetWidth(v44);
  v28 = [v16 view];
  if (!v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = v28;
  [v28 frame];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v45.origin.x = v31;
  v45.origin.y = v33;
  v45.size.width = v35;
  v45.size.height = v37;
  Height = CGRectGetHeight(v45);
  if (Width > Height)
  {
    Height = Width;
  }

  *&static MOAngelRootViewController.LANDSCAPE_WIDTH = Height * 0.5;
  v39 = [v16 view];

  if (v39)
  {
    v40 = OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_privacyBlur;
    [v39 addSubview:*&v16[OBJC_IVAR____TtC16MomentsUIService25MOAngelRootViewController_privacyBlur]];

    [*&v16[v40] setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = *&v16[v40];
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return;
  }

LABEL_17:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type UIScene and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIScene and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIScene and conformance NSObject)
  {
    type metadata accessor for UIApplication(255, &lazy cache variable for type metadata for UIScene);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIScene and conformance NSObject);
  }

  return result;
}

uint64_t sub_10017FB18()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10017FB50()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10017FC14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10017FC70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10017FCB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

char *specialized MOSuggestionCollectionView.init(controller:presentationDelegate:dialogDelegate:segmentedVisibilityDelegate:options:)(void *a1, void *a2, void *a3, void *a4, void *a5, char *a6)
{
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_suggestionCollectionView] = 0;
  v9 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_onboardingManager;
  *&a6[v9] = [objc_opt_self() sharedInstance];
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_viewModel] = 0;
  v10 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_engagementWriter;
  *&a6[v10] = [objc_opt_self() sharedInstance];
  swift_unknownObjectWeakInit();
  v11 = &a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_presentationDelegate];
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_presentationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_dialogDelegate];
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_dialogDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = &a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_segmentedVisibilityDelegate];
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_segmentedVisibilityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_newEntryHeaderDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_privacyBadge;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  *&a6[v14] = [objc_allocWithZone(type metadata accessor for MOSuggestionPickerPrivacyBadge()) initWithFrame:{CGRectZero.origin.x, y, width, height}];
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_headerOffsetHeight] = 0;
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_currentBadgeOffset] = 0;
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_privacyBadgeTopConstraint] = 0;
  v65 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_tipCoordinator;
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_tipCoordinator] = 0;
  v18 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_refresher;
  *&a6[v18] = [objc_allocWithZone(UIRefreshControl) init];
  v19 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_activityIndicator;
  v20 = [objc_allocWithZone(UIActivityIndicatorView) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&a6[v19] = v20;
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_protectedContentShield] = 0;
  v21 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_supportingLoadingTextLabel;
  closure #1 in variable initialization expression of MOSuggestionCollectionView.supportingLoadingTextLabel();
  *&a6[v21] = v22;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v11 + 1) = &protocol witness table for MOSuggestionSheetViewController;
  swift_unknownObjectWeakAssign();

  swift_beginAccess();
  *(v12 + 1) = &protocol witness table for MOSuggestionSheetViewController;
  swift_unknownObjectWeakAssign();

  swift_beginAccess();
  *(v13 + 1) = &protocol witness table for MOSuggestionSheetViewController;
  swift_unknownObjectWeakAssign();

  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_options] = a5;
  v23 = (*((swift_isaMask & *a1) + 0x1D0))(a5);
  v25 = v24;
  v26 = (*((swift_isaMask & *a1) + 0x1C8))();
  v28 = v27;
  LOBYTE(a1) = (*((swift_isaMask & *a1) + 0x1B0))();
  type metadata accessor for MOSuggestionTipCoordinator();
  swift_allocObject();
  *&a6[v65] = MOSuggestionTipCoordinator.init(clientId:clientName:isPublicUI:)(v23, v25, v26, v28, a1 & 1);

  v70.receiver = a6;
  v70.super_class = type metadata accessor for MOSuggestionCollectionView();
  v29 = objc_msgSendSuper2(&v70, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v30 = *&v29[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_tipCoordinator];
  if (v30)
  {
    v31 = *(*v30 + 128);

    v32 = v29;
    v31(v29, &protocol witness table for MOSuggestionCollectionView);
  }

  v33 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_activityIndicator;
  v34 = *&v29[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_activityIndicator];
  v35 = v29;
  [v35 addSubview:v34];
  v36 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_supportingLoadingTextLabel;
  [v35 addSubview:*&v35[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_supportingLoadingTextLabel]];
  v69 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1002A48D0;
  v38 = [*&v29[v33] centerYAnchor];
  v39 = [v35 centerYAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v37 + 32) = v40;
  v41 = [*&v29[v33] centerXAnchor];
  v42 = [v35 centerXAnchor];

  v43 = [v41 constraintEqualToAnchor:v42];
  *(v37 + 40) = v43;
  v44 = [*&v29[v33] heightAnchor];
  v45 = [v44 constraintEqualToConstant:50.0];

  *(v37 + 48) = v45;
  v46 = [*&v29[v33] widthAnchor];
  v47 = [v46 constraintEqualToConstant:50.0];

  *(v37 + 56) = v47;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v69 activateConstraints:isa];

  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1002A48D0;
  v50 = [*&v35[v36] topAnchor];
  v51 = [*&v29[v33] bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:2.0];

  *(v49 + 32) = v52;
  v53 = [*&v35[v36] centerXAnchor];
  v54 = [v35 centerXAnchor];

  v55 = [v53 constraintEqualToAnchor:v54];
  *(v49 + 40) = v55;
  v56 = [*&v35[v36] leadingAnchor];
  v57 = [v35 leadingAnchor];

  v58 = [v56 constraintEqualToAnchor:v57 constant:20.0];
  *(v49 + 48) = v58;
  v59 = [*&v35[v36] trailingAnchor];
  v60 = [v35 trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:-20.0];

  *(v49 + 56) = v61;
  v62 = Array._bridgeToObjectiveC()().super.isa;

  [v69 activateConstraints:v62];

  v63 = *&v35[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_refresher];
  [v63 addTarget:v35 action:"handlePullToRefreshTrigger" forControlEvents:4096];

  return v35;
}

void specialized MOSuggestionSheetViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_segmentedDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_segmentedVisibilityDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_suggestionCollectionView) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController____lazy_storage___suggestionSegmentedControl) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_presentationDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetViewController_rootControllerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized MOSuggestionSheetViewController.showMomentsValidator()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v2, &_s10Foundation3URLVSgMd);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
  lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, 255, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 openURL:v11 options:isa completionHandler:0];

  return (*(v4 + 8))(v6, v3);
}

void specialized MOAngelRootViewController.onboardingSettingsViewControllerDidTapDoneButton(_:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[MOAngelRootViewController] Done presenting Settings", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [a1 navigationController];
  if (v9)
  {
    v10 = v9;
  }
}

void specialized MOAngelRootViewController.journalingSuggestionsOnboardingViewControllerDidTapTurnOnJournalingSuggestions(_:onboardingOnlyPresentation:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[MOAngelRootViewController] Finishing Onboarding", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [objc_opt_self() sharedInstance];
  [v9 setOnboardingFlowCompletionStatus:2];

  v10 = [a1 navigationController];
  if (v10)
  {
    v11 = v10;
    [v10 dismissViewControllerAnimated:1 completion:0];
  }
}

void specialized MOAngelRootViewController.journalingSuggestionsOnboardingViewControllerDidTapNotNow(_:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[MOAngelRootViewController] Dismissing Onboarding", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [objc_opt_self() sharedInstance];
  [v9 setOnboardingFlowCompletionStatus:1];

  static DefaultsManager.Onboarding.increaseDeferralCount()();
  v10 = [a1 navigationController];
  if (v10)
  {
    v11 = v10;
    [v10 dismissViewControllerAnimated:1 completion:0];
  }
}

void specialized MOAngelRootViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[MOAngelRootViewController] Finishing Onboarding", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  static DefaultsManager.SyncOnboarding.finishOnboarding()();
  type metadata accessor for MomentsUIManager();
  v9 = static MomentsUIManager.shared.getter();
  v10 = dispatch thunk of MomentsUIManager.cloudManager.getter();

  specialized BTask.init(name:operation:)(0xD00000000000007ALL, 0x80000001002B72A0, &async function pointer to partial apply for closure #1 in MOAngelRootViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:), v10);
  v11 = [a1 navigationController];
  if (v11)
  {
    v12 = v11;
    [v11 dismissViewControllerAnimated:1 completion:0];
  }
}

void specialized MOAngelRootViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapNotNow(_:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[MOAngelRootViewController] Deferring Onboarding", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  static DefaultsManager.SyncOnboarding.deferOnboarding()();
  v9 = [a1 navigationController];
  if (v9)
  {
    v10 = v9;
    [v9 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_10018127C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x130))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1001812E0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0x138);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_10018135C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x148))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1001813C0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0x150);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t partial apply for closure #1 in MOAngelRootViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return closure #1 in MOAngelRootViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:)();
}

Swift::Void __swiftcall MOPresenterServer.subscribeToScreenLockNotification()()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = String._bridgeToObjectiveC()();
  CFNotificationCenterAddObserver(v1, v0, @objc closure #1 in MOPresenterServer.subscribeToScreenLockNotification(), v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t specialized closure #1 in MOPresenterServer.subscribeToScreenLockNotification()(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v28 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v28 - v11;
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  if (SBSGetScreenLockStatus())
  {
    if (a1)
    {
      v15 = a1;
      MOPresenterServer.cleanUpAllConnections()();
      v16 = static DefaultsManager.ViewService.shouldViewServiceTerminateOnLock.getter();
      type metadata accessor for CommonLogger();
      if (v16)
      {
        static CommonLogger.presentation.getter();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "[subscribeToScreenLockNotification] terminating process", v27, 2u);
        }

        (*(v3 + 8))(v12, v2);
        exit(0);
      }

      static CommonLogger.presentation.getter();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "[subscribeToScreenLockNotification] not explicitly terminating process, system might still terminate us later", v19, 2u);
      }
    }

    else
    {
      type metadata accessor for CommonLogger();
      static CommonLogger.presentation.getter();
      v15 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v15, v22, "[subscribeToScreenLockNotification] nil observer", v23, 2u);
      }

      v9 = v14;
    }
  }

  else
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.presentation.getter();
    v15 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v15, v20, "[subscribeToScreenLockNotification] false positive, ignoring", v21, 2u);
    }

    v9 = v6;
  }

  return (*(v3 + 8))(v9, v2);
}

uint64_t static MOReachability.isInternetAvailable()()
{
  v1 = type metadata accessor for NWPath.Status();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathV6StatusOSg_AFtMd);
  v0[7] = swift_task_alloc();
  v2 = type metadata accessor for NWPath();
  v0[8] = v2;
  v0[9] = *(v2 - 8);
  v0[10] = swift_task_alloc();
  v3 = type metadata accessor for NWPathMonitor.Iterator();
  v0[11] = v3;
  v0[12] = *(v3 - 8);
  v0[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathVSgMd);
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathV6StatusOSgMd);
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();

  return _swift_task_switch(static MOReachability.isInternetAvailable(), 0, 0);
}

{
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  v1 = NWPathMonitor.init()();
  v0[19] = v1;
  v0[2] = v1;
  lazy protocol witness table accessor for type NWPathMonitor and conformance NWPathMonitor(&lazy protocol witness table cache variable for type NWPathMonitor and conformance NWPathMonitor, &type metadata accessor for NWPathMonitor);

  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v2 = lazy protocol witness table accessor for type NWPathMonitor and conformance NWPathMonitor(&lazy protocol witness table cache variable for type NWPathMonitor.Iterator and conformance NWPathMonitor.Iterator, &type metadata accessor for NWPathMonitor.Iterator);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = static MOReachability.isInternetAvailable();
  v4 = v0[14];
  v5 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[12];
    v3 = v2[13];
    v5 = v2[11];

    (*(v4 + 8))(v3, v5);
    v6 = MOSuggestionInterstitialExpandableListViewCellConstants.init();
  }

  else
  {
    v6 = static MOReachability.isInternetAvailable();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[9];
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];

    (*(v6 + 8))(v5, v7);
    v8 = 1;
  }

  else
  {
    v9 = v0[12];
    v45 = v0[13];
    v46 = v0[15];
    v10 = v0[10];
    v44 = v0[11];
    v11 = *(v3 + 32);
    v11(v10, v1, v2);

    (*(v9 + 8))(v45, v44);
    v11(v46, v10, v2);
    v8 = 0;
  }

  v12 = v0[15];
  v13 = v0[8];
  (*(v0[9] + 56))(v12, v8, 1, v13);
  if (v4(v12, 1, v13) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[15], &_s7Network6NWPathVSgMd);
    v14 = 1;
  }

  else
  {
    v15 = v0[15];
    v16 = v0[8];
    v17 = v0[9];
    NWPath.status.getter();
    (*(v17 + 8))(v15, v16);
    v14 = 0;
  }

  v19 = v0[17];
  v18 = v0[18];
  v21 = v0[6];
  v20 = v0[7];
  v22 = v0[3];
  v23 = v0[4];
  v24 = *(v23 + 56);
  v24(v18, v14, 1, v22);
  (*(v23 + 104))(v19, enum case for NWPath.Status.unsatisfied(_:), v22);
  v24(v19, 0, 1, v22);
  v25 = *(v21 + 48);
  outlined init with copy of NWPath.Status?(v18, v20);
  outlined init with copy of NWPath.Status?(v19, v20 + v25);
  v26 = *(v23 + 48);
  if (v26(v20, 1, v22) == 1)
  {
    v27 = v0[18];
    v28 = v0[3];
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[17], &_s7Network6NWPathV6StatusOSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v27, &_s7Network6NWPathV6StatusOSgMd);
    if (v26(v20 + v25, 1, v28) == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[7], &_s7Network6NWPathV6StatusOSgMd);
      v29 = 0;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v30 = v0[3];
  outlined init with copy of NWPath.Status?(v0[7], v0[16]);
  v31 = v26(v20 + v25, 1, v30);
  v33 = v0[17];
  v32 = v0[18];
  v34 = v0[16];
  if (v31 == 1)
  {
    v35 = v0[3];
    v36 = v0[4];
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[17], &_s7Network6NWPathV6StatusOSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v32, &_s7Network6NWPathV6StatusOSgMd);
    (*(v36 + 8))(v34, v35);
LABEL_12:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[7], &_s7Network6NWPathV6StatusOSg_AFtMd);
    v29 = 1;
    goto LABEL_14;
  }

  v47 = v0[7];
  v38 = v0[4];
  v37 = v0[5];
  v39 = v0[3];
  (*(v38 + 32))(v37, v20 + v25, v39);
  lazy protocol witness table accessor for type NWPathMonitor and conformance NWPathMonitor(&lazy protocol witness table cache variable for type NWPath.Status and conformance NWPath.Status, &type metadata accessor for NWPath.Status);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v38 + 8);
  v41(v37, v39);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v33, &_s7Network6NWPathV6StatusOSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v32, &_s7Network6NWPathV6StatusOSgMd);
  v41(v34, v39);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v47, &_s7Network6NWPathV6StatusOSgMd);
  v29 = v40 ^ 1;
LABEL_14:

  v42 = v0[1];

  return v42(v29 & 1);
}

uint64_t outlined init with copy of NWPath.Status?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathV6StatusOSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type NWPathMonitor and conformance NWPathMonitor(unint64_t *a1, void (*a2)(uint64_t))
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

const __SCNetworkReachability *static MOReachability.isInternetAvailable()()
{
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  result = SCNetworkReachabilityCreateWithAddress(0, &address);
  if (result)
  {
    flags = 0;
    v1 = result;
    v2 = SCNetworkReachabilityGetFlags(result, &flags);

    if (v2)
    {
      return ((flags & 6) == 2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MOSuggestionSheetImage.__allocating_init(image:associatedTintColor:associatedBackgroundColor:tileBackgroundColor:shouldBeRounded:squareCrop:extraMargin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = swift_allocObject();
  *(v12 + 40) = 0;
  *(v12 + 32) = 0;
  *(v12 + 24) = 0;
  *(v12 + 72) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 16) = a1;
  swift_beginAccess();
  *(v12 + 24) = a2;
  swift_beginAccess();
  *(v12 + 32) = a3;
  swift_beginAccess();
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  swift_beginAccess();
  v13 = *(a6 + 16);
  *(v12 + 56) = *a6;
  *(v12 + 72) = v13;
  *(v12 + 88) = *(a6 + 32);
  swift_beginAccess();
  *(v12 + 96) = a7;
  *(v12 + 104) = a8 & 1;
  return v12;
}

void *MOServerConnectionProperties.responseQueue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *MOSuggestionSheetAssetViewModel.image.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void MOSuggestionSheetAssetViewModel.image.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void *MOSuggestionSheetAssetViewModel.activitySummary.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void MOSuggestionSheetAssetViewModel.activitySummary.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t MOSuggestionSheetImage.shouldBeRounded.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

__n128 MOSuggestionSheetImage.squareCrop.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  result = *(v1 + 56);
  v5 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 MOSuggestionSheetImage.squareCrop.setter(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v4;
  *(v1 + 88) = *(a1 + 32);
  return result;
}

uint64_t MOSuggestionSheetImage.extraMargin.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t MOSuggestionSheetImage.init(image:associatedTintColor:associatedBackgroundColor:tileBackgroundColor:shouldBeRounded:squareCrop:extraMargin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 40) = 0;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 1;
  *(v8 + 104) = 1;
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 56) = 0u;
  *(v8 + 96) = 0;
  *(v8 + 16) = a1;
  swift_beginAccess();
  *(v8 + 24) = a2;
  swift_beginAccess();
  *(v8 + 32) = a3;
  swift_beginAccess();
  v13 = *(v8 + 40);
  *(v8 + 40) = a4;

  *(v8 + 48) = a5;
  swift_beginAccess();
  v14 = *(a6 + 16);
  *(v8 + 56) = *a6;
  *(v8 + 72) = v14;
  *(v8 + 88) = *(a6 + 32);
  swift_beginAccess();
  *(v8 + 96) = a7;
  *(v8 + 104) = a8 & 1;
  return v8;
}

uint64_t MOSuggestionSheetImage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100182B50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_100182BF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_100182C3C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_100182C94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_100182CE0(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 192);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_100182D38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_100182D84(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 216);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_100182DDC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result & 1;
  return result;
}

double sub_100182E74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 256))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_100182EE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return (*(**a2 + 264))(v4);
}

uint64_t sub_100182F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t UIView.uiImage.getter()
{
  [v0 bounds];
  v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:{v1, v2, v3, v4}];
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in UIView.uiImage.getter;
  *(v7 + 24) = v6;
  v12[4] = _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v12[3] = &block_descriptor_28;
  v8 = _Block_copy(v12);
  v9 = v0;

  v10 = [v5 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

void closure #1 in UIView.uiImage.getter(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext:v4];
}

uint64_t sub_100183278()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *MOSuggestionCollectionView.suggestionCollectionView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_suggestionCollectionView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionCollectionView.suggestionCollectionView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_suggestionCollectionView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionCollectionView.viewModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_viewModel;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void MOSuggestionCollectionView.controller.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*MOSuggestionCollectionView.controller.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_controller;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return MOSuggestionSheetInterstitialView.controller.modify;
}

uint64_t (*MOSuggestionCollectionView.presentationDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_presentationDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetViewController.presentationDelegate.modify;
}

uint64_t (*MOSuggestionCollectionView.dialogDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_dialogDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetViewController.rootControllerDelegate.modify;
}

uint64_t (*MOSuggestionCollectionView.segmentedVisibilityDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_segmentedVisibilityDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetViewController.presentationDelegate.modify;
}

uint64_t (*MOSuggestionCollectionView.newEntryHeaderDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_newEntryHeaderDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetViewController.presentationDelegate.modify;
}

void *MOSuggestionCollectionView.protectedContentShield.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_protectedContentShield;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionCollectionView.protectedContentShield.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_protectedContentShield;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void MOSuggestionCollectionView.newEntryHeaderHeight(isPublicUI:)()
{
  if (one-time initialization token for HEADER_LABEL != -1)
  {
    swift_once();
  }

  v48 = v0;
  [v0 bounds];
  Width = CGRectGetWidth(v49);
  v2 = String._bridgeToObjectiveC()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A48B0;
  *(inited + 32) = NSFontAttributeName;
  v4 = objc_opt_self();
  v47 = NSFontAttributeName;
  v5 = [v4 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithSymbolicTraits:2];

  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = [v4 fontWithDescriptor:v7 size:0.0];

  *(inited + 64) = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIFont);
  *(inited + 40) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
  type metadata accessor for NSAttributedStringKey(0);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 boundingRectWithSize:1 options:isa attributes:0 context:{Width + -30.0, 3.40282347e38}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v50.origin.x = v11;
  v50.origin.y = v13;
  v50.size.width = v15;
  v50.size.height = v17;
  Height = CGRectGetHeight(v50);
  v19 = [v4 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v20 = [v19 fontDescriptor];
  v21 = [v20 fontDescriptorWithSymbolicTraits:2];

  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = [v4 fontWithDescriptor:v21 size:0.0];

  [v22 lineHeight];
  v24 = v23;

  v25 = ceil(Height / v24);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v26 = [objc_allocWithZone(UILabel) init];
  [v48 frame];
  v27 = CGRectGetWidth(v51);
  v28 = [v4 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v29 = [v28 fontDescriptor];
  v30 = [v29 fontDescriptorWithSymbolicTraits:2];

  if (v30)
  {
    v31 = [v4 fontWithDescriptor:v30 size:0.0];

    [v31 pointSize];
    v33 = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_So6UIFontCtGMd);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_1002A48B0;
    *(v34 + 32) = v47;
    v35 = v47;
    *(v34 + 40) = [v4 systemFontOfSize:v33 weight:UIFontWeightBold];
    v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So6UIFontCTt0g5Tf4g_n(v34);
    swift_setDeallocating();
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v34 + 32, &_sSo21NSAttributedStringKeya_So6UIFontCtMd);
    String.init<A>(_:)();
    v37 = String._bridgeToObjectiveC()();

    specialized _dictionaryUpCast<A, B, C, D>(_:)(v36);

    v38 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v37 boundingRectWithSize:3 options:v38 attributes:0 context:{v27, 3.40282347e38}];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v52.origin.x = v40;
    v52.origin.y = v42;
    v52.size.width = v44;
    v52.size.height = v46;
    CGRectGetHeight(v52);

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t MOSuggestionCollectionView.__allocating_init(controller:presentationDelegate:dialogDelegate:segmentedVisibilityDelegate:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t (*a9)(void *, uint64_t, uint64_t, uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v18 = swift_getObjectType();
  v19 = swift_getObjectType();
  v20 = a9(a1, a2, a4, a6, a8, v22, v18, ObjectType, v19, a5, a3, a7);

  return v20;
}

void closure #1 in variable initialization expression of MOSuggestionCollectionView.supportingLoadingTextLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() mainBundle];
  v11._object = 0x80000001002B7A80;
  v2._object = 0x80000001002B7A50;
  v11._countAndFlagsBits = 0xD000000000000037;
  v2._countAndFlagsBits = 0xD000000000000028;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v11);

  v4 = String._bridgeToObjectiveC()();

  [v0 setText:v4];

  v5 = v0;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = objc_opt_self();
  v7 = [v6 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v8 = [v7 fontDescriptor];
  v9 = [v8 fontDescriptorWithSymbolicTraits:2];

  if (v9)
  {
    v10 = [v6 fontWithDescriptor:v9 size:0.0];

    [v5 setFont:v10];
    [v5 setHidden:1];

    [v5 setNumberOfLines:0];
    [v5 setLineBreakMode:0];
    [v5 setTextAlignment:1];
  }

  else
  {
    __break(1u);
  }
}

void MOSuggestionCollectionView.handlePullToRefreshTrigger()()
{
  v6 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:2];
  v1 = [v6 impactOccurred];
  v2 = (*((swift_isaMask & *v0) + 0x100))(v1);
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = *(*v3 + 800);

    v5(partial apply for closure #1 in MOSuggestionCollectionView.handlePullToRefreshTrigger(), v4);
  }
}

void closure #1 in closure #1 in MOSuggestionCollectionView.handlePullToRefreshTrigger()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_refresher);

    [v2 endRefreshing];
  }
}

Swift::Void __swiftcall MOSuggestionCollectionView.layoutSubviews()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v124 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v114 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MOSuggestionCollectionView();
  v129.receiver = v0;
  v129.super_class = v8;
  v9 = objc_msgSendSuper2(&v129, "layoutSubviews");
  v10 = *((swift_isaMask & *v0) + 0xE8);
  v11 = (swift_isaMask & *v0) + 232;
  v12 = (v10)(v9);
  if (v12)
  {
  }

  else
  {
    v119 = v8;
    v120 = v11;
    v121 = v10;
    v122 = v7;
    v13 = (*((swift_isaMask & *v0) + 0x118))();
    if (v13)
    {
      v14 = v13;
      v15 = v0;
      v115 = v5;
      v116 = v3;
      v117 = v4;
      v118 = v1;
      v16 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
      [v16 setScrollDirection:0];
      [v16 setMinimumLineSpacing:6.0];
      [v16 setMinimumInteritemSpacing:4.0];
      [v15 safeAreaInsets];
      v123 = v16;
      v17 = [v16 setSectionInset:{0.0, 13.0}];
      v18 = (*((swift_isaMask & *v14) + 0x1B8))(v17);
      v20 = v19;
      v21 = (*((swift_isaMask & *v14) + 0x1D0))();
      v23 = v22;
      type metadata accessor for MOSuggestionCollectionViewModel(0);
      swift_allocObject();
      v24 = MOSuggestionCollectionViewModel.init(clientDetails:clientId:)(v18 & 1, v20, v21, v23);
      v25 = (*((swift_isaMask & *v15) + 0x108))(v24);
      v26 = *((swift_isaMask & *v15) + 0x100);
      v27 = v26(v25);
      if (v27)
      {
        v28 = *(v15 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_options);
        v29 = *(*v27 + 472);
        v30 = v28;
        v29(v28);
      }

      v31 = v26(v27);
      if (v31)
      {
        v126 = v119;
        v127 = &protocol witness table for MOSuggestionCollectionView;
        aBlock[0] = v15;
        v32 = *(*v31 + 424);
        v33 = v15;
        v32(aBlock);
      }

      v34 = v26(v31);
      if (v34)
      {
        v35 = v34;
        v36 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v37 = *(*v35 + 352);

        v37(partial apply for closure #1 in MOSuggestionCollectionView.layoutSubviews(), v36);
      }

      v38 = v26(v34);
      if (v38)
      {
        v39 = v38;
        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v41 = *(*v39 + 376);

        v41(partial apply for closure #2 in MOSuggestionCollectionView.layoutSubviews(), v40);
      }

      v42 = v26(v38);
      if (v42)
      {
        v43 = v42;
        v44 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = *(*v43 + 400);

        v45(partial apply for closure #3 in MOSuggestionCollectionView.layoutSubviews(), v44);
      }

      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      v49 = objc_allocWithZone(UICollectionView);
      v50 = [v49 initWithFrame:v123 collectionViewLayout:{CGRectZero.origin.x, y, width, height}];
      [v50 setDelegate:v15];
      [v50 setDataSource:v15];
      [v50 setShowsVerticalScrollIndicator:0];
      v51 = v50;
      [v15 addSubview:v51];
      [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1002A48D0;
      v53 = [v51 topAnchor];
      v54 = [v15 topAnchor];
      if ([*(v15 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_options) showBlankEntryButton])
      {
        v55 = 0.0;
      }

      else
      {
        v55 = 10.0;
      }

      v56 = objc_opt_self();
      v57 = [v53 constraintEqualToAnchor:v54 constant:v55];

      *(v52 + 32) = v57;
      v58 = [v51 bottomAnchor];

      v59 = [v15 bottomAnchor];
      v60 = [v58 constraintEqualToAnchor:v59];

      *(v52 + 40) = v60;
      v61 = [v51 leadingAnchor];

      v62 = [v15 leadingAnchor];
      v63 = [v61 constraintEqualToAnchor:v62];

      *(v52 + 48) = v63;
      v64 = [v51 trailingAnchor];

      v65 = [v15 trailingAnchor];
      v66 = [v64 constraintEqualToAnchor:v65];

      *(v52 + 56) = v66;
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v56 activateConstraints:isa];

      type metadata accessor for MOSuggestionCollectionViewCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v69 = String._bridgeToObjectiveC()();
      [v51 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v69];

      type metadata accessor for MOSuggestionCollectionViewSingleAssetCell();
      v70 = swift_getObjCClassFromMetadata();
      v71 = String._bridgeToObjectiveC()();
      [v51 registerClass:v70 forCellWithReuseIdentifier:v71];

      type metadata accessor for MOSuggestionCollectionViewListCell();
      v72 = swift_getObjCClassFromMetadata();
      v73 = String._bridgeToObjectiveC()();
      [v51 registerClass:v72 forCellWithReuseIdentifier:v73];

      type metadata accessor for MOSuggestionEvergreenCollectionViewCell();
      v74 = swift_getObjCClassFromMetadata();
      v75 = String._bridgeToObjectiveC()();
      [v51 registerClass:v74 forCellWithReuseIdentifier:v75];

      type metadata accessor for MOSuggestionCollectionViewDateSectionHeaderView();
      v76 = swift_getObjCClassFromMetadata();
      v77 = UICollectionElementKindSectionHeader;
      v78 = String._bridgeToObjectiveC()();
      [v51 registerClass:v76 forSupplementaryViewOfKind:v77 withReuseIdentifier:v78];

      type metadata accessor for MOSuggestionPrivacyTipCell();
      v79 = swift_getObjCClassFromMetadata();
      v80 = v77;
      v81 = String._bridgeToObjectiveC()();
      [v51 registerClass:v79 forSupplementaryViewOfKind:v80 withReuseIdentifier:v81];

      type metadata accessor for MOSuggestionSheetOnboardingTipCell();
      v82 = swift_getObjCClassFromMetadata();
      v83 = v80;
      v84 = String._bridgeToObjectiveC()();
      [v51 registerClass:v82 forSupplementaryViewOfKind:v83 withReuseIdentifier:v84];

      type metadata accessor for MOSuggestionSheetStateOfMindTipCell();
      v85 = swift_getObjCClassFromMetadata();
      v86 = v83;
      v87 = String._bridgeToObjectiveC()();
      [v51 registerClass:v85 forSupplementaryViewOfKind:v86 withReuseIdentifier:v87];

      type metadata accessor for MOSuggestionCollectionViewBlankEntrySectionHeaderView();
      v88 = swift_getObjCClassFromMetadata();
      v89 = v86;
      v90 = String._bridgeToObjectiveC()();
      [v51 registerClass:v88 forSupplementaryViewOfKind:v89 withReuseIdentifier:v90];

      type metadata accessor for MOSuggestionCollectionViewOnboardingSectionHeaderView();
      v91 = swift_getObjCClassFromMetadata();
      v92 = v89;
      v93 = String._bridgeToObjectiveC()();
      [v51 registerClass:v91 forSupplementaryViewOfKind:v92 withReuseIdentifier:v93];

      type metadata accessor for MOSuggestionShowMoreFooterView();
      v94 = swift_getObjCClassFromMetadata();
      v95 = UICollectionElementKindSectionFooter;
      v96 = String._bridgeToObjectiveC()();
      [v51 registerClass:v94 forSupplementaryViewOfKind:v95 withReuseIdentifier:v96];

      v97 = *((swift_isaMask & *v15) + 0xF0);
      v114 = v51;
      v97(v51);
      MOSuggestionCollectionView.setupProtectedContentBanner()();
      v98 = v121;
      v99 = v121();
      if (v99)
      {
        v100 = v99;
        [v99 setAlwaysBounceVertical:1];
      }

      v101 = v98();
      v102 = v122;
      if (v101)
      {
        v103 = v101;
        [v101 setClipsToBounds:0];
      }

      v119 = v14;
      v104 = (v98)([v15 setClipsToBounds:0]);
      if (v104)
      {
        v105 = v104;
        v106 = [objc_opt_self() clearColor];
        [v105 setBackgroundColor:v106];
      }

      v107 = v123;
      [v123 invalidateLayout];
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v108 = static OS_dispatch_queue.main.getter();
      v109 = swift_allocObject();
      *(v109 + 16) = v15;
      v127 = partial apply for closure #4 in MOSuggestionCollectionView.layoutSubviews();
      v128 = v109;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      v126 = &block_descriptor_29;
      v110 = _Block_copy(aBlock);
      v111 = v15;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v112 = v116;
      v113 = v118;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v110);

      (*(v124 + 8))(v112, v113);
      (*(v115 + 8))(v102, v117);
    }
  }
}

uint64_t closure #1 in MOSuggestionCollectionView.layoutSubviews()(char a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a1;
  *(v13 + 25) = a2;
  aBlock[4] = partial apply for closure #1 in closure #1 in MOSuggestionCollectionView.layoutSubviews();
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_137;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

void closure #1 in closure #1 in MOSuggestionCollectionView.layoutSubviews()(uint64_t a1, int a2, int a3)
{
  v178 = a3;
  v181 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  __chkstk_darwin(v3 - 8);
  v174 = &v166 - v4;
  v5 = type metadata accessor for IndexPath();
  v176 = *(v5 - 8);
  v177 = v5;
  __chkstk_darwin(v5);
  v172 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v173 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v175 = &v166 - v12;
  __chkstk_darwin(v11);
  v180 = &v166 - v13;
  v14 = type metadata accessor for OSSignpostError();
  v182 = *(v14 - 1);
  v183 = v14;
  v15 = __chkstk_darwin(v14);
  v179 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v166 - v17;
  v19 = type metadata accessor for OSSignpostID();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v186 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v188 = &v166 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v166 - v26;
  v28 = __chkstk_darwin(v25);
  v187 = &v166 - v29;
  __chkstk_darwin(v28);
  v190 = &v166 - v30;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v32 = Strong;
  v33 = (*((swift_isaMask & *Strong) + 0x160))();
  v168 = v34;

  v171 = v33;
  if (!v33)
  {
    return;
  }

  v166 = v7;
  v189 = v20;
  if (one-time initialization token for bundleProcessing != -1)
  {
    swift_once();
  }

  v167 = v8;
  v35 = type metadata accessor for OSSignposter();
  v36 = __swift_project_value_buffer(v35, static MOAngelSignposter.bundleProcessing);
  OSSignposter.logHandle.getter();
  v37 = v190;
  OSSignpostID.init(log:)();
  v185 = v36;
  v38 = OSSignposter.logHandle.getter();
  v39 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, v39, v41, "UIService_SetupCollectionView", "", v40, 2u);
    v37 = v190;
  }

  v42 = *(v189 + 16);
  v184 = v19;
  v169 = v42;
  v170 = v189 + 16;
  v42(v187, v37, v19);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v43 = OSSignpostIntervalState.init(id:isOpen:)();
  swift_beginAccess();
  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44)
  {
    v45 = v44;
    v46 = (*((swift_isaMask & *v44) + 0xE8))();

    [v46 reloadData];
  }

  v47 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v48 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v50 = v182;
    v49 = v183;
    if ((*(v182 + 88))(v18, v183) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v51 = "[Error] Interval already ended";
    }

    else
    {
      (*(v50 + 8))(v18, v49);
      v51 = "";
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, v48, v53, "UIService_SetupCollectionView", v51, v52, 2u);
  }

  v54 = *(v189 + 8);
  v55 = v184;
  v189 += 8;
  v54(v27, v184);
  swift_beginAccess();
  v56 = swift_unknownObjectWeakLoadStrong();
  if (v56)
  {
    v57 = v56;
    v58 = (*((swift_isaMask & *v56) + 0x100))();

    if (v58)
    {
      v59 = (*(*v58 + 536))();

      if ((v59 & 1) == 0)
      {
        v60 = [objc_opt_self() sharedInstance];
        v61 = [v60 isOnboarded];

        if (v61)
        {
          swift_beginAccess();
          v62 = swift_unknownObjectWeakLoadStrong();
          if (v62)
          {
            v63 = v62;
            v64 = (*((swift_isaMask & *v62) + 0x160))();
            v66 = v65;

            if (v64)
            {
              ObjectType = swift_getObjectType();
              (*(v66 + 16))(ObjectType, v66);
              swift_unknownObjectRelease();
            }
          }

          swift_beginAccess();
          v68 = swift_unknownObjectWeakLoadStrong();
          if (v68)
          {
            v69 = v68;
            v70 = (*((swift_isaMask & *v68) + 0x178))();
            v72 = v71;

            if (v70)
            {
              v73 = swift_getObjectType();
              (*(v72 + 8))(0, v73, v72);
              swift_unknownObjectRelease();
            }
          }
        }
      }
    }
  }

  v74 = v43;
  v75 = v54;
  OSSignposter.logHandle.getter();
  v76 = v188;
  OSSignpostID.init(log:)();
  v77 = OSSignposter.logHandle.getter();
  v78 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    v80 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, v78, v80, "UIService_LayoutCollectionView", "", v79, 2u);
    v55 = v184;
  }

  v169(v187, v76, v55);
  swift_allocObject();
  v81 = OSSignpostIntervalState.init(id:isOpen:)();
  if (v181)
  {
    swift_beginAccess();
    v82 = swift_unknownObjectWeakLoadStrong();
    v83 = v75;
    v84 = v74;
    if (v82)
    {
      v85 = v82;
      v86 = (*((swift_isaMask & *v82) + 0xE8))();

      if (v86)
      {
        [v86 setContentOffset:0 animated:{0.0, 0.0, v166}];
LABEL_37:
      }
    }
  }

  else
  {
    v83 = v75;
    v84 = v74;
    if (v178)
    {
      swift_beginAccess();
      v87 = swift_unknownObjectWeakLoadStrong();
      if (v87)
      {
        v88 = v87;
        v86 = (*((swift_isaMask & *v87) + 0xE8))();

        if (v86)
        {
          swift_beginAccess();
          v89 = swift_unknownObjectWeakLoadStrong();
          if (v89)
          {
            v90 = *&v89[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_headerOffsetHeight];
          }

          else
          {
            v90 = 0.0;
          }

          [v86 setContentOffset:0 animated:{0.0, v90, v166}];
          goto LABEL_37;
        }
      }
    }
  }

  swift_beginAccess();
  v91 = swift_unknownObjectWeakLoadStrong();
  if (v91)
  {
    v92 = v91;
    (*((swift_isaMask & *v91) + 0x250))();
  }

  v93 = OSSignposter.logHandle.getter();
  v94 = v186;
  OSSignpostIntervalState.signpostID.getter();
  v95 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v187 = v83;

    v96 = v179;
    checkForErrorAndConsumeState(state:)();

    v98 = v182;
    v97 = v183;
    v99 = v84;
    if ((*(v182 + 88))(v96, v183) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v100 = "[Error] Interval already ended";
    }

    else
    {
      (*(v98 + 8))(v96, v97);
      v100 = "";
    }

    v94 = v186;
    v101 = swift_slowAlloc();
    *v101 = 0;
    v102 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v93, v95, v102, "UIService_LayoutCollectionView", v100, v101, 2u);

    v84 = v99;
    v83 = v187;
    v55 = v184;
  }

  (v83)(v94, v55);
  swift_beginAccess();
  v103 = swift_unknownObjectWeakLoadStrong();
  if (!v103)
  {

    swift_unknownObjectRelease();
    (v83)(v188, v55);
    v139 = v190;
    v140 = v55;
LABEL_71:
    (v83)(v139, v140);
    return;
  }

  v104 = v103;
  v105 = *(v103 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_options);

  v106 = [v105 selectedSuggestionId];
  if (!v106)
  {

    swift_unknownObjectRelease();

    v157 = v188;
LABEL_70:
    v159 = v184;
    (v83)(v157, v184);
    v139 = v190;
    v140 = v159;
    goto LABEL_71;
  }

  v185 = v81;
  v186 = v84;
  v107 = v106;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v108 = swift_unknownObjectWeakLoadStrong();
  if (v108)
  {
    v109 = v108;
    v110 = MOSuggestionSheetOptions.copyWithoutSuggestionID.getter();
    v111 = *&v109[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_options];
    *&v109[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_options] = v110;
  }

  v183 = v105;
  swift_beginAccess();
  v112 = swift_unknownObjectWeakLoadStrong();
  v114 = v176;
  v113 = v177;
  v115 = v175;
  if (!v112 || (v116 = v112, v117 = (*((swift_isaMask & *v112) + 0x100))(), v116, !v117))
  {
    v118 = v174;
    (*(v114 + 56))(v174, 1, 1, v113);
    v119 = v180;
    goto LABEL_63;
  }

  v118 = v174;
  v119 = v180;
  (*(*v117 + 744))(v180);

  if ((*(v114 + 48))(v118, 1, v113) == 1)
  {
LABEL_63:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v118, &_s10Foundation9IndexPathVSgMd);
LABEL_64:
    v141 = v173;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v142 = type metadata accessor for Logger();
    __swift_project_value_buffer(v142, static MOAngelLogger.shared);
    v144 = v166;
    v143 = v167;
    (*(v167 + 16))(v141, v119, v166);
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v191[0] = v148;
      *v147 = 136315138;
      v149 = UUID.uuidString.getter();
      v150 = v141;
      v152 = v151;
      v187 = v83;
      v153 = *(v143 + 8);
      v153(v150, v144);
      v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v152, v191);

      *(v147 + 4) = v154;
      _os_log_impl(&_mh_execute_header, v145, v146, "[HandleReviewSuggestion] Did not find suggestionID=%s, not presenting interstitial", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v148);

      swift_unknownObjectRelease();

      v153(v180, v144);
      v155 = v184;
      v156 = v187;
      (v187)(v188, v184);
      v156(v190, v155);
      return;
    }

    swift_unknownObjectRelease();

    v158 = *(v143 + 8);
    v158(v141, v144);
    v158(v119, v144);
    v157 = v188;
    goto LABEL_70;
  }

  (*(v114 + 32))(v172, v118, v113);
  swift_beginAccess();
  v120 = swift_unknownObjectWeakLoadStrong();
  if (!v120)
  {
    goto LABEL_74;
  }

  v121 = v120;
  v122 = (*((swift_isaMask & *v120) + 0x100))();

  if (!v122)
  {
    goto LABEL_74;
  }

  v123 = (*(*v122 + 760))(v172);

  if (!v123)
  {
    goto LABEL_74;
  }

  swift_beginAccess();
  v124 = swift_unknownObjectWeakLoadStrong();
  if (!v124)
  {

LABEL_74:
    (*(v114 + 8))(v172, v113);
    goto LABEL_64;
  }

  v125 = v124;
  v126 = (*((swift_isaMask & *v124) + 0x100))();

  if (!v126)
  {
    (*(v114 + 8))(v172, v113);

    v119 = v180;
    goto LABEL_64;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v127 = type metadata accessor for Logger();
  __swift_project_value_buffer(v127, static MOAngelLogger.shared);
  v129 = v166;
  v128 = v167;
  (*(v167 + 16))(v115, v180, v166);
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v191[0] = v182;
    *v132 = 136315138;
    v181 = v131;
    v179 = UUID.uuidString.getter();
    v134 = v133;
    v135 = v115;
    v136 = v166;
    v187 = *(v128 + 8);
    (v187)(v135, v166);
    v137 = v83;
    v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v134, v191);

    *(v132 + 4) = v138;
    v83 = v137;
    _os_log_impl(&_mh_execute_header, v130, v181, "[HandleReviewSuggestion] Found suggestionID=%s, presenting Interstitial", v132, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v182);

    v129 = v136;
  }

  else
  {

    v187 = *(v128 + 8);
    (v187)(v115, v129);
  }

  swift_beginAccess();
  v160 = swift_unknownObjectWeakLoadStrong();
  v161 = v172;
  if (v160)
  {
    v162 = v160;
    MOSuggestionCollectionView.presentInterstitialFor(cellViewModel:indexPath:fromNotification:)(v123, v172, 1);
  }

  v163 = swift_getObjectType();
  v164 = (*(*v126 + 440))();
  (*(v168 + 8))(v164 & 1, v163);

  swift_unknownObjectRelease();

  (*(v176 + 8))(v161, v177);
  (v187)(v180, v129);
  v165 = v184;
  (v83)(v188, v184);
  (v83)(v190, v165);
}

id MOSuggestionSheetOptions.copyWithoutSuggestionID.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = [v1 showCancelButton];
  v6 = [v1 showBlankEntryButton];
  [v1 peekDetentRatio];
  v8 = v7;
  v9 = [v1 presentFullScreen];
  v10 = [v1 presentationIsAnimated];
  v11 = [v1 selectedTabIsRecommended];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v4, 1, 1, v12);
  v14 = [v1 contentOptions];
  isa = 0;
  if ((*(v13 + 48))(v4, 1, v12) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v4, v12);
  }

  v16 = [objc_allocWithZone(MOSuggestionSheetOptions) initWithShowCancelButton:v5 showBlankEntryButton:v6 peekDetentRatio:v9 presentFullScreen:v10 presentationIsAnimated:v11 selectedTabIsRecommended:isa selectedSuggestionId:v8 contentOptions:v14];

  return v16;
}

void MOSuggestionCollectionView.presentInterstitialFor(cellViewModel:indexPath:fromNotification:)(void *a1, char *a2, int a3)
{
  v98 = a3;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*((swift_isaMask & *v3) + 0x130))(v8);
  if (v11)
  {
    v13 = v11;
    v14 = v12;
    v15 = (*((swift_isaMask & *v3) + 0x118))();
    if (v15)
    {
      v16 = v15;
      v94 = swift_allocObject();
      *(v94 + 16) = v3;
      v17 = *(v7 + 16);
      v89 = v7 + 16;
      v90 = v17;
      v17(v10, a2, v6);
      v91 = type metadata accessor for MOSuggestionSheetInterstitialView();
      v18 = objc_allocWithZone(v91);
      v87 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_controller;
      swift_unknownObjectWeakInit();
      v96 = v10;
      v19 = &v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate];
      *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode] = 0;
      *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_photoMemoryBanner] = 0;
      v88 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_cellViewModel;
      *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_cellViewModel] = 0;
      *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_toggleListViewCarouselButton] = 0;
      v20 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_scrollView;
      v21 = objc_allocWithZone(UIScrollView);
      v92 = v7;
      v22 = v21;
      v85 = v3;
      v86 = v3;

      swift_unknownObjectRetain();
      v23 = v16;
      v93 = v16;
      v24 = v23;
      v25 = [v22 init];
      [v25 setShowsVerticalScrollIndicator:0];
      *&v18[v20] = v25;
      v26 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_stackView;
      v97 = v13;
      v27 = [objc_allocWithZone(UIStackView) init];
      v99 = a1;
      v95 = v6;
      [v27 setAxis:1];
      [v27 setAlignment:3];
      [v27 setSpacing:3.0];
      *&v18[v26] = v27;
      v28 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_labelStackView;
      v29 = [objc_allocWithZone(UIStackView) init];
      [v29 setAxis:0];
      [v29 setAlignment:3];
      *&v18[v28] = v29;
      v30 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleLabel;
      closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.titleLabel();
      *&v18[v30] = v31;
      v32 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_dateLabel;
      *&v18[v32] = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.dateLabel();
      v33 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetTypeLabel;
      *&v18[v33] = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.assetTypeLabel();
      v34 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel;
      *&v18[v34] = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.emptySelectionLabel();
      *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_portraitConstraints] = _swiftEmptyArrayStorage;
      *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_landscapeConstraints] = _swiftEmptyArrayStorage;
      *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_commonConstraints] = _swiftEmptyArrayStorage;
      *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint] = 0;
      *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint] = 0;
      *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonBottomConstraint] = 0;
      v35 = &v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString];
      *v35 = 0;
      v35[1] = 0;
      v36 = &v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString];
      *v36 = 0;
      v36[1] = 0;
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      v87 = v14;
      *(v19 + 1) = v14;
      swift_unknownObjectWeakAssign();
      v37 = &v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_selectedSuggestion];
      v38 = v94;
      *v37 = partial apply for implicit closure #2 in implicit closure #1 in MOSuggestionCollectionView.presentInterstitialFor(cellViewModel:indexPath:fromNotification:);
      v37[1] = v38;
      v90(&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_indexPath], v96, v95);
      v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_fromNotification] = v98 & 1;
      v39 = objc_allocWithZone(UINavigationBar);

      v40 = [v39 init];
      *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_navigationBar] = v40;
      v41 = v88;
      swift_beginAccess();
      *&v18[v41] = v99;

      v43 = *((swift_isaMask & *v24) + 0x1B0);
      LOBYTE(v39) = v43(v42);
      v44 = (*((swift_isaMask & *v24) + 0x1C8))();
      v46 = v45;
      v47 = (*((swift_isaMask & *v24) + 0x1C0))();
      v48 = specialized static MOSuggestionSheetInterstitialView.makeJournalButton(publicUI:clientName:isSourceJournalComposer:)(v39 & 1, v44, v46, v47 & 1);

      *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton] = v48;
      v50 = v43(v49);
      *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton] = specialized static MOSuggestionSheetInterstitialView.makeQuickAddButton(publicUI:)(v50 & 1);
      v51 = objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialExpandableListView());
      v52 = v24;
      *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView] = MOSuggestionInterstitialExpandableListView.init(controller:)(v52);
      v53 = objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialCarouselView());
      v54 = v52;
      *&v18[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView] = MOSuggestionInterstitialCarouselView.init(controller:)(v54);
      v103.receiver = v18;
      v103.super_class = v91;
      v55 = objc_msgSendSuper2(&v103, "initWithNibName:bundle:", 0, 0);
      v56 = *&v55[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView];
      v57 = *((swift_isaMask & *v56) + 0x198);
      v58 = v55;
      v59 = v56;
      v57(v55, &protocol witness table for MOSuggestionSheetInterstitialView);

      v60 = *&v58[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView];
      v61 = *((swift_isaMask & *v60) + 0xF0);
      v62 = v58;
      v63 = v60;
      v61(v55, &protocol witness table for MOSuggestionSheetInterstitialView);
      v64 = v99;

      v65 = [objc_opt_self() defaultCenter];
      [v65 addObserver:v62 selector:"handleContentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];

      v66 = (*(*v64 + 176))();
      v67 = &v62[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString];
      *v67 = v66;
      v67[1] = v68;

      MOSuggestionSheetInterstitialView.updateTitleLabelString()();
      (*((swift_isaMask & *v62) + 0x318))();
      MOSuggestionSheetInterstitialView.updateConstraints()();

      (*(v92 + 8))(v96, v95);

      swift_unknownObjectRelease();

      v69 = v62;
      v70 = [v69 view];
      if (v70)
      {
        v71 = v70;
        [v70 bounds];
        v73 = v72;
        v75 = v74;

        v76 = specialized static MOAngelRootViewController.isLandscape.getter();
        v77 = *&static MOAngelRootViewController.LANDSCAPE_WIDTH;
        if (!v76)
        {
          v77 = v73;
        }

        [v69 setPreferredContentSize:{v77, v75}];

        v78 = (*((swift_isaMask & *v69) + 0x320))();
        v79 = v64[2];
        v101 = 0;
        v102 = 0xE000000000000000;
        v80 = (*((swift_isaMask & *v86) + 0x100))(v78);
        if (v80)
        {
          v81 = (*(*v80 + 440))(v80);

          v82 = v81 & 1;
        }

        else
        {
          v82 = -1;
        }

        v100 = v82;
        v83._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v83);

        (*((swift_isaMask & *v54) + 0x178))(v79, v101, v102);

        ObjectType = swift_getObjectType();
        (*(v87 + 8))(v69, 0, 0, ObjectType);
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t closure #2 in MOSuggestionCollectionView.layoutSubviews()(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  (*(v10 + 32))(v14 + v13, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = partial apply for closure #1 in closure #2 in MOSuggestionCollectionView.layoutSubviews();
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_131;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v18 + 8))(v8, v19);
}

void closure #1 in closure #2 in MOSuggestionCollectionView.layoutSubviews()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((swift_isaMask & *Strong) + 0xE8))();

    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
      v6 = type metadata accessor for IndexPath();
      v7 = *(v6 - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1002A48B0;
      (*(v7 + 16))(v9 + v8, a2, v6);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 reconfigureItemsAtIndexPaths:isa];
    }
  }
}

uint64_t closure #1 in MOSuggestionCollectionView.handlePullToRefreshTrigger()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v9 = *(v15 - 8);
  __chkstk_darwin(v15);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v12 = static OS_dispatch_queue.main.getter();
  aBlock[4] = a2;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = a3;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v16 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v15);
}

void closure #1 in closure #3 in MOSuggestionCollectionView.layoutSubviews()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = (*((swift_isaMask & *Strong) + 0x100))(), v1, v2))
  {
    v3 = (*(*v2 + 640))();
  }

  else
  {
    v3 = 1;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4 || (v5 = v4, v6 = (*((swift_isaMask & *v4) + 0x100))(), v5, !v6))
  {
    if ((v3 & 1) == 0)
    {
      v7 = 0;
      goto LABEL_24;
    }

LABEL_10:
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = (*((swift_isaMask & *v8) + 0x160))();
      v12 = v11;

      if (v10)
      {
        ObjectType = swift_getObjectType();
        (*(v12 + 24))(ObjectType, v12);
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      v16 = (*((swift_isaMask & *v14) + 0xE8))();

      [v16 reloadData];
    }

    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *(v17 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_activityIndicator);

      [v19 startAnimating];
    }

    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      v22 = *(v20 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_activityIndicator);

      [v22 setHidden:0];
    }

    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v25 = *(v23 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_supportingLoadingTextLabel);

      swift_beginAccess();
      v26 = swift_unknownObjectWeakLoadStrong();
      if (v26 && (v27 = v26, v28 = (*((swift_isaMask & *v26) + 0x100))(), v27, v28))
      {
        v29 = (*(*v28 + 696))();

        v30 = v29 ^ 1;
      }

      else
      {
        v30 = 1;
      }

      [v25 setHidden:v30 & 1];
    }

    swift_beginAccess();
    v52 = swift_unknownObjectWeakLoadStrong();
    if (v52)
    {
      v53 = v52;
      v54 = (*((swift_isaMask & *v52) + 0x178))();
      v56 = v55;

      if (v54)
      {
        v57 = swift_getObjectType();
        (*(v56 + 8))(1, v57, v56);
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_43;
  }

  v7 = (*(*v6 + 728))();

  if (v3)
  {
    goto LABEL_10;
  }

LABEL_24:
  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = v31;
    v33 = *(v31 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_activityIndicator);

    [v33 stopAnimating];
  }

  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    v36 = *(v34 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_activityIndicator);

    [v36 setHidden:1];
  }

  swift_beginAccess();
  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v38 = v37;
    v39 = *(v37 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_supportingLoadingTextLabel);

    [v39 setHidden:1];
  }

  swift_beginAccess();
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    v41 = v40;
    v42 = (*((swift_isaMask & *v40) + 0x178))();
    v44 = v43;

    if (v42)
    {
      v45 = swift_getObjectType();
      (*(v44 + 8))(0, v45, v44);
      swift_unknownObjectRelease();
    }
  }

  if (v7)
  {
    swift_beginAccess();
    v46 = swift_unknownObjectWeakLoadStrong();
    if (v46)
    {
      v47 = v46;
      v48 = (*((swift_isaMask & *v46) + 0xE8))();

      if (v48)
      {
        swift_beginAccess();
        v49 = swift_unknownObjectWeakLoadStrong();
        if (v49)
        {
          v50 = v49;
          v51 = *(v49 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_refresher);
        }

        else
        {
          v51 = 0;
        }

        [v48 setRefreshControl:v51];

        goto LABEL_48;
      }
    }

    return;
  }

LABEL_43:
  swift_beginAccess();
  v58 = swift_unknownObjectWeakLoadStrong();
  if (v58)
  {
    v59 = v58;
    v51 = (*((swift_isaMask & *v58) + 0xE8))();

    if (v51)
    {
      [v51 setRefreshControl:0];
LABEL_48:
    }
  }
}

uint64_t closure #4 in MOSuggestionCollectionView.layoutSubviews()(void *a1)
{
  result = (*((swift_isaMask & *a1) + 0x100))();
  if (result)
  {
    (*(*result + 792))(result);
  }

  return result;
}

Swift::Void __swiftcall MOSuggestionCollectionView.didChangeSegmentedControlValue(segmentType:scrollToTop:scrollToHeaderOffset:)(MomentsUIService::SegmentType segmentType, Swift::Bool scrollToTop, Swift::Bool scrollToHeaderOffset)
{
  v4 = v3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static MOAngelLogger.shared);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v25 = scrollToTop;
    v11 = scrollToHeaderOffset;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    v14 = [objc_opt_self() mainBundle];
    if (segmentType)
    {
      v24 = 0xE600000000000000;
      v15 = 0x746E65636552;
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = 0xEB00000000646564;
      v24 = 0xEB00000000646564;
      v15 = 0x6E656D6D6F636552;
    }

    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v18 = v15;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v15, 0, v14, v17, *(&v24 - 1));

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19._countAndFlagsBits, v19._object, &v26);

    *(v12 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "[Bundles] Tab Changed to:%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);

    scrollToHeaderOffset = v11;
    scrollToTop = v25;
  }

  else
  {
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v21 = (*(*static MOSuggestionAssetCacheManager.shared + 296))();
  v22 = (*((swift_isaMask & *v4) + 0x100))(v21);
  if (v22)
  {
    (*(*v22 + 824))(segmentType & 1, scrollToTop, scrollToHeaderOffset);
  }

  if (segmentType)
  {
    v23 = *(v4 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_privacyBadge);

    [v23 setHidden:1];
  }
}

Swift::Void __swiftcall MOSuggestionCollectionView.didPressNewEntryButton()()
{
  v1 = (*((swift_isaMask & *v0) + 0x118))();
  if (v1)
  {
    v2 = v1;
    (*((swift_isaMask & *v1) + 0x160))();
  }
}

Swift::Void __swiftcall MOSuggestionCollectionView.refreshCollectionViewSheetBundles()()
{
  v1 = (*((swift_isaMask & *v0) + 0x100))();
  if (v1)
  {
    (*(*v1 + 792))(v1);
  }
}

Swift::Void __swiftcall MOSuggestionCollectionView.showPrivacyBadge()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*((swift_isaMask & *v0) + 0x118))(v4);
  if (!v7)
  {
    return;
  }

  v38 = v7;
  v8 = (*((swift_isaMask & *v0) + 0x100))();
  if (!v8)
  {
LABEL_19:
    v24 = v38;

    return;
  }

  v9 = v8;
  v10 = *(v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_tipCoordinator);
  if (v10)
  {
    v11 = *(*v8 + 624);

    if ((v11(v12) & 1) != 0 && ((*(*v9 + 440))() & 1) == 0)
    {
      if (((*(*v10 + 272))(1) & 1) == 0)
      {
        v13 = [objc_opt_self() sharedInstance];
        v14 = [v13 isOnboarded];

        if (v14)
        {
          v15 = *(v1 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_privacyBadge);
          [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v15 removeFromSuperview];
          v16 = 26.0;
          if ((*(*v9 + 616))([v1 addSubview:v15]))
          {
            v17 = (*((swift_isaMask & *v38) + 0x1B0))();
            v16 = (*((swift_isaMask & *v1) + 0x220))(v17 & 1) + 16.0;
          }

          IndexPath.init(row:section:)();
          v18 = (*(*v9 + 752))(v6);
          (*(v3 + 8))(v6, v2);
          v19 = 0.0;
          if (v18)
          {
            if ([*(v18 + 16) interfaceType] == 10)
            {
              v20 = [objc_allocWithZone(UILabel) init];
              v21 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
              isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

              v23 = specialized UILabel.estimatedHeight(forWidth:text:ofFont:)(0, 0xE000000000000000, isa, 100.0);

              v19 = v23 + 12.0;
            }

            else
            {
            }
          }

          v25 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_1002A4A70;
          v27 = [v15 leadingAnchor];
          v28 = [v1 leadingAnchor];
          v29 = [v27 constraintEqualToAnchor:v28 constant:30.0];

          *(v26 + 32) = v29;
          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);
          v30 = Array._bridgeToObjectiveC()().super.isa;

          [v25 activateConstraints:v30];

          v31 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_currentBadgeOffset;
          *(v1 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_currentBadgeOffset) = v16 + v19;
          v32 = [v15 topAnchor];
          v33 = [v1 topAnchor];
          v34 = [v32 constraintEqualToAnchor:v33 constant:*(v1 + v31)];

          v35 = *(v1 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_privacyBadgeTopConstraint);
          *(v1 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_privacyBadgeTopConstraint) = v34;
          v36 = v34;

          if (v36)
          {
            [v36 setActive:1];
          }

          (*((swift_isaMask & *v15) + 0x90))();

          return;
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
  }
}

Swift::Void __swiftcall MOSuggestionCollectionView.handleContentSizeChanged(contentSize:)(UIContentSizeCategory contentSize)
{
  v2 = *((swift_isaMask & *v1) + 0xE8);
  v3 = (v2)(contentSize);
  [v3 reloadData];

  v4 = v2();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 collectionViewLayout];

    [v6 invalidateLayout];
  }
}

Swift::Void __swiftcall MOSuggestionCollectionView.displayTip(tipType:)(MomentsUIService::MOSuggestionTipType tipType)
{
  v2 = tipType;
  v3 = (*((swift_isaMask & *v1) + 0x178))();
  if (v3)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v2, ObjectType, v5);
    v3 = swift_unknownObjectRelease();
  }

  v7 = (*((swift_isaMask & *v1) + 0xE8))(v3);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }
}

Swift::Void __swiftcall MOSuggestionCollectionView.removeTip(tipType:)(MomentsUIService::MOSuggestionTipType tipType)
{
  v2 = tipType;
  v3 = (*((swift_isaMask & *v1) + 0x178))();
  if (v3)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v2, ObjectType, v5);
    v3 = swift_unknownObjectRelease();
  }

  v7 = (*((swift_isaMask & *v1) + 0xE8))(v3);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }
}

id MOSuggestionCollectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionCollectionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int __swiftcall MOSuggestionCollectionView.collectionView(_:numberOfItemsInSection:)(UICollectionView _, Swift::Int numberOfItemsInSection)
{
  result = (*((swift_isaMask & *v2) + 0x100))(_.super.super.super.super.isa);
  if (result)
  {
    v5 = (*(*result + 664))(numberOfItemsInSection);

    return v5;
  }

  return result;
}

void *MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(void *a1, uint64_t a2)
{
  *&v488 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v5 = __chkstk_darwin(v4 - 8);
  v480 = (&v427 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v477 = &v427 - v8;
  __chkstk_darwin(v7);
  *&v483 = &v427 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
  v11 = __chkstk_darwin(v10 - 8);
  v479 = &v427 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v476 = &v427 - v14;
  __chkstk_darwin(v13);
  v482 = (&v427 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v17 = __chkstk_darwin(v16 - 8);
  v478 = &v427 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v475 = &v427 - v20;
  __chkstk_darwin(v19);
  v481 = (&v427 - v21);
  v487 = type metadata accessor for IndexPath();
  v484 = *(v487 - 8);
  __chkstk_darwin(v487);
  v485 = v22;
  v486 = &v427 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OSSignpostID();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v427 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v427 - v29;
  v31 = (*((swift_isaMask & *v2) + 0x100))(v28);
  if (v31)
  {
    v32 = v31;
    v33 = (*((swift_isaMask & *v2) + 0x118))();
    if (!v33)
    {
LABEL_10:

      goto LABEL_12;
    }

    v34 = v33;
    v35 = (*(*v32 + 752))(v488);
    if (!v35)
    {

      goto LABEL_12;
    }

    v467 = v34;
    v469 = v32;
    v473 = v35;
    [*(v35 + 16) interfaceType];
    v470 = specialized static MOBundleProcessingSession.signpostNameForSuggestionCell(bundleInterfaceType:)();
    v466 = v36;
    v471 = v37;
    if (one-time initialization token for bundleProcessing != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v38, static MOAngelSignposter.bundleProcessing);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v39 = OSSignposter.logHandle.getter();
    v40 = static os_signpost_type_t.begin.getter();
    v41 = OS_os_log.signpostsEnabled.getter();
    v468 = v23;
    v472 = v24;
    if ((v41 & 1) == 0)
    {
LABEL_20:

      (*(v24 + 16))(v27, v30, v23);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v47 = OSSignpostIntervalState.init(id:isOpen:)();
      v48 = v473;
      v49 = *(*v473 + 152);
      v463 = *v473 + 152;
      v50 = v49();
      v51 = v488;
      if (v50 > 2)
      {
        if (v50 - 4 >= 2)
        {
          v289 = String._bridgeToObjectiveC()();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v54 = [a1 dequeueReusableCellWithReuseIdentifier:v289 forIndexPath:isa];

          type metadata accessor for MOSuggestionEvergreenCollectionViewCell();
          v291 = swift_dynamicCastClass();
          v292 = v466;
          if (v291)
          {
            v462 = v54;
            v293 = v291;
            v294 = *((swift_isaMask & *v291) + 0xA0);

            v296 = v294(v295);
            v72 = v293;
            v297 = (*((swift_isaMask & *v293) + 0x98))(v296);
            v298 = v467;
            if (v297)
            {
              v299 = v484;
              v300 = *(v484 + 16);
              *&v483 = v297;
              v300(v486, v488, v487);
              v301 = (*(v299 + 80) + 48) & ~*(v299 + 80);
              v302 = swift_allocObject();
              *(v302 + 2) = v72;
              *(v302 + 3) = v48;
              v303 = v469;
              *(v302 + 4) = v467;
              *(v302 + 5) = v303;
              (*(v299 + 32))(&v302[v301], v486, v487);

              v304 = v467;

              v305 = v462;
              MOSuggestionCollectionViewCellViewModel.fetchAssetsForBundle(previewOnly:previewMax:style:completionHandler:)(1, 5, 1, partial apply for closure #7 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:), v302);
              v298 = v467;
            }

            $defer #1 () in MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(v470, v292, v471);

            goto LABEL_54;
          }

LABEL_53:

          v72 = [objc_allocWithZone(UICollectionViewCell) init];
          $defer #1 () in MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(v470, v292, v471);

LABEL_54:

          (*(v472 + 8))(v30, v23);
          return v72;
        }
      }

      else if (v50)
      {
        v465 = v30;
        if (v50 == 1)
        {
          v52 = String._bridgeToObjectiveC()();
          v53 = IndexPath._bridgeToObjectiveC()().super.isa;
          v54 = [a1 dequeueReusableCellWithReuseIdentifier:v52 forIndexPath:v53];

          type metadata accessor for MOSuggestionCollectionViewSingleAssetCell();
          v55 = swift_dynamicCastClass();
          v56 = v484;
          if (v55)
          {
            v462 = v54;
            v464 = v47;
            v57 = *v55;
            v474 = v55;
            v58 = v51;
            v59 = *((swift_isaMask & v57) + 0xA8);
            v60 = swift_retain_n();
            v59(v60);
            v61 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v63 = v486;
            v62 = v487;
            v482 = *(v56 + 16);
            *&v483 = v56 + 16;
            v482(v486, v58, v487);
            v64 = *(v56 + 80);
            v65 = (v64 + 32) & ~v64;
            v66 = (v485 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
            v67 = swift_allocObject();
            *(v67 + 16) = v61;
            *(v67 + 24) = v48;
            v484 = *(v56 + 32);
            (v484)(v67 + v65, v63, v62);
            v68 = v467;
            *(v67 + v66) = v467;
            v69 = *((swift_isaMask & *v474) + 0x90);

            v70 = v68;

            v69(partial apply for closure #3 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:), v67);

            v72 = v474;
            if ((*((swift_isaMask & *v474) + 0xA0))(v71))
            {
              v73 = v486;
              v74 = v487;
              v482(v486, v488, v487);
              v75 = (v64 + 40) & ~v64;
              v76 = swift_allocObject();
              v76[2] = v72;
              v76[3] = v70;
              v76[4] = v469;
              (v484)(v76 + v75, v73, v74);
              v487 = v70;
              v77 = v70;

              v78 = v462;
              v486 = MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:style:typeSorted:completionHandler:)(1, 4, 1, 0, partial apply for closure #4 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:), v76);

              v79 = type metadata accessor for URL();
              v80 = *(*(v79 - 8) + 56);
              v80(v475, 1, 1, v79);
              v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd);
              v82 = *(*(v81 - 8) + 56);
              v82(v476, 1, 1, v81);
              v461 = type metadata accessor for Date();
              v83 = *(v461 - 8);
              v438 = *(v83 + 56);
              v485 = v83 + 56;
              v438(v477, 1, 1, v461);
              type metadata accessor for MOSuggestionSheetAssetViewModel(0);
              v84 = swift_allocObject();
              *(v84 + 64) = 0;
              v439 = (v84 + 64);
              *(v84 + 48) = 0u;
              *(v84 + 32) = 0u;
              *(v84 + 72) = 26;
              *(v84 + 80) = 0;
              v440 = v84 + 72;
              v441 = (v84 + 80);
              *(v84 + 104) = 0;
              *(v84 + 96) = 0;
              v442 = (v84 + 96);
              *&v488 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_URL;
              v80((v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_URL), 1, 1, v79);
              v85 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactName);
              v443 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactName);
              *v85 = 0;
              v85[1] = 0;
              v86 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactID);
              *v86 = 0;
              v86[1] = 0;
              v87 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactFirstName);
              v444 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactFirstName);
              *v87 = 0;
              v87[1] = 0;
              v88 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_workoutName);
              v445 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_workoutName);
              *v88 = 0;
              v88[1] = 0;
              v446 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto;
              *(v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto) = 0;
              v447 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset;
              *(v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset) = 0;
              v89 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityName);
              v448 = v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityName;
              *v89 = 0;
              v89[1] = 0;
              v90 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityStepCount);
              v449 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityStepCount);
              *v90 = 0;
              v90[1] = 0;
              v91 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_title);
              *v91 = 0;
              v91[1] = 0;
              v92 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_subtitle);
              v450 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_subtitle);
              *v92 = 0;
              v92[1] = 0;
              v93 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherString);
              v451 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherString);
              *v93 = 0;
              v93[1] = 0;
              v452 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherTemperature;
              v82((v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherTemperature), 1, 1, v81);
              v94 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_calories);
              v453 = v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_calories;
              *v94 = 0;
              v94[1] = 0;
              v95 = v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_duration;
              v454 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_duration);
              *v95 = 0;
              *(v95 + 8) = 1;
              v96 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_distance);
              v455 = v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_distance;
              *v96 = 0;
              v96[1] = 0;
              v97 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_averageHeartRate);
              v456 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_averageHeartRate);
              *v97 = 0;
              v97[1] = 0;
              v98 = v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_squareCropRect;
              v457 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_squareCropRect);
              *v98 = 0u;
              *(v98 + 16) = 0u;
              *(v98 + 32) = 1;
              v99 = v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_landscapeCropRect;
              *v99 = 0u;
              *(v99 + 16) = 0u;
              *(v99 + 32) = 1;
              v100 = v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_portraitCropRect;
              *v100 = 0u;
              *(v100 + 16) = 0u;
              *(v100 + 32) = 1;
              v459 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize;
              *(v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize) = 11;
              v101 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapPrimaryField);
              v460 = v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapPrimaryField;
              *v101 = 0;
              v101[1] = 0;
              v102 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapSecondaryField);
              v462 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapSecondaryField);
              *v102 = 0;
              v102[1] = 0;
              v103 = v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapLocationCount;
              v463 = v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapLocationCount;
              *v103 = 0;
              *(v103 + 8) = 1;
              v458 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView;
              *(v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView) = 0;
              v104 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_valenceClassificationAndReflectiveInterval);
              v467 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_valenceClassificationAndReflectiveInterval);
              *v104 = 0;
              v104[1] = 0;
              v105 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabels);
              v478 = v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabels;
              *v105 = 0;
              v105[1] = 0;
              v106 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabelsShortened);
              v479 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabelsShortened);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomains);
              v480 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomains);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomainsShortened);
              v481 = (v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomainsShortened);
              *v108 = 0;
              v108[1] = 0;
              v482 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsLight;
              *(v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsLight) = 0;
              *&v483 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsDark;
              *(v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsDark) = 0;
              v484 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDate;
              v438((v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDate), 1, 1, v461);
              v461 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor;
              *(v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor) = 0;
              v485 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaThirdPartyAppAssociatedColors;
              *(v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaThirdPartyAppAssociatedColors) = 0;
              swift_weakInit();
              v109 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_uuid;

              v438 = v109;
              UUID.init()();
              *(v84 + 16) = 0x6C6F686563616C70;
              *(v84 + 24) = 0xEB00000000726564;
              swift_beginAccess();
              swift_weakAssign();

              swift_beginAccess();
              v110 = *(v84 + 32);
              *(v84 + 32) = 0;

              swift_beginAccess();
              v111 = *(v84 + 40);
              *(v84 + 40) = 0;

              swift_beginAccess();
              v112 = *(v84 + 48);
              *(v84 + 48) = 0;

              swift_beginAccess();
              v113 = *(v84 + 56);
              *(v84 + 56) = 0;

              v114 = v439;
              swift_beginAccess();
              v115 = *v114;
              *v114 = 0;

              v116 = v440;
              swift_beginAccess();
              *v116 = 26;
              v117 = v441;
              swift_beginAccess();
              v118 = *v117;
              *v117 = 0;

              *(v84 + 88) = 0;
              v119 = v442;
              swift_beginAccess();
              *v119 = 0;
              *(v84 + 104) = 0;

              v120 = v488;
              swift_beginAccess();
              outlined assign with copy of URL?(v475, v84 + v120, &_s10Foundation3URLVSgMd);
              swift_endAccess();
              *(v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaType) = 0;
              *(v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isSquare) = 0;
              v121 = v443;
              swift_beginAccess();
              v488 = xmmword_1002A8990;
              *v121 = xmmword_1002A8990;

              v122 = v444;
              swift_beginAccess();
              *v122 = v488;

              v123 = v445;
              swift_beginAccess();
              *v123 = v488;

              v124 = v446;
              swift_beginAccess();
              v125 = *(v84 + v124);
              *(v84 + v124) = 0;

              v126 = v447;
              swift_beginAccess();
              v127 = *(v84 + v126);
              *(v84 + v126) = 0;

              v128 = v448;
              swift_beginAccess();
              *v128 = v488;

              v129 = v449;
              swift_beginAccess();
              *v129 = v488;

              *(v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_motionActivityNumSteps) = 0;
              swift_beginAccess();
              *v91 = 0;
              v91[1] = 0;

              v130 = v450;
              swift_beginAccess();
              *v130 = 0;
              *(v130 + 1) = 0;

              v131 = v451;
              swift_beginAccess();
              *v131 = v488;

              v132 = v452;
              swift_beginAccess();
              outlined assign with copy of URL?(v476, v84 + v132, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
              swift_endAccess();
              v133 = v453;
              swift_beginAccess();
              *v133 = v488;

              v134 = v454;
              swift_beginAccess();
              *v134 = 0;
              v134[8] = 0;
              v135 = v455;
              swift_beginAccess();
              *v135 = v488;

              v136 = v456;
              swift_beginAccess();
              *v136 = v488;

              *(v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_shouldAutoPlay) = 0;
              v137 = v457;
              swift_beginAccess();
              *v137 = 0u;
              *(v137 + 1) = 0u;
              v137[32] = 1;
              swift_beginAccess();
              *v99 = 0u;
              *(v99 + 16) = 0u;
              *(v99 + 32) = 1;
              swift_beginAccess();
              *v100 = 0u;
              *(v100 + 16) = 0u;
              *(v100 + 32) = 1;
              v138 = v459;
              swift_beginAccess();
              *(v84 + v138) = 11;
              v139 = v460;
              swift_beginAccess();
              *v139 = 0;
              v139[1] = 0;

              v140 = v462;
              swift_beginAccess();
              *v140 = 0;
              v140[1] = 0;

              v141 = v463;
              swift_beginAccess();
              *v141 = 0;
              *(v141 + 8) = 1;
              *(v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isLoadingPlaceHolder) = 1;
              v142 = v458;
              swift_beginAccess();
              v143 = *(v84 + v142);
              *(v84 + v142) = 0;

              v144 = v467;
              swift_beginAccess();
              *v144 = v488;

              *(v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_reflectiveInterval) = 1;
              v145 = v478;
              swift_beginAccess();
              *v145 = v488;

              v146 = v479;
              swift_beginAccess();
              *v146 = v488;

              v147 = v480;
              swift_beginAccess();
              *v147 = v488;

              v148 = v481;
              swift_beginAccess();
              *v148 = v488;

              v149 = v482;
              swift_beginAccess();
              *(v149 + v84) = 0;

              v150 = v483;
              swift_beginAccess();
              *(v84 + v150) = 0;

              v151 = v484;
              swift_beginAccess();
              outlined assign with copy of URL?(v477, v84 + v151, &_s10Foundation4DateVSgMd);
              swift_endAccess();
              v152 = v461;
              swift_beginAccess();
              v153 = *(v84 + v152);
              *(v84 + v152) = 0;

              v154 = v485;
              swift_beginAccess();
              *(v84 + v154) = 0;

              *(v84 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColorVariant) = 0;
              if (one-time initialization token for memory != -1)
              {
                swift_once();
              }

              v155 = type metadata accessor for Logger();
              __swift_project_value_buffer(v155, static MOAngelLogger.memory);

              v156 = Logger.logObject.getter();
              v157 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v156, v157))
              {
                v158 = swift_slowAlloc();
                v490[0] = swift_slowAlloc();
                *v158 = 136315394;
                v159 = UUID.uuidString.getter();
                v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v160, v490);

                *(v158 + 4) = v161;
                *(v158 + 12) = 2080;
                swift_beginAccess();
                v162 = *(v84 + 16);
                v163 = *(v84 + 24);

                v164 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v163, v490);

                *(v158 + 14) = v164;
                _os_log_impl(&_mh_execute_header, v156, v157, "[MOSuggestionSheetAssetViewModel] init=%s\t id=%s", v158, 0x16u);
                swift_arrayDestroy();
              }

              outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v477, &_s10Foundation4DateVSgMd);
              outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v476, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
              outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v475, &_s10Foundation3URLVSgMd);
              v165 = v465;
              v166 = v466;
              v72 = v474;
              v70 = v487;
              v167 = _sSa9repeating5countSayxGx_SitcfC16MomentsUIService31MOSuggestionSheetAssetViewModelC_Tt1g5Tf4gn_n(v84, v486);

              (*((swift_isaMask & *v72) + 0xF0))(v167);
            }

            else
            {

              v165 = v465;
              v166 = v466;
            }

            $defer #1 () in MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(v470, v166, v471);

            (*(v472 + 8))(v165, v468);
            return v72;
          }

          goto LABEL_51;
        }

        v481 = v49;
        v306 = String._bridgeToObjectiveC()();
        v307 = IndexPath._bridgeToObjectiveC()().super.isa;
        v54 = [a1 dequeueReusableCellWithReuseIdentifier:v306 forIndexPath:v307];

        type metadata accessor for MOSuggestionCollectionViewListCell();
        v308 = swift_dynamicCastClass();
        v309 = v484;
        if (!v308)
        {
LABEL_51:
          v23 = v468;
          v30 = v465;
          goto LABEL_52;
        }

        v310 = v308;
        v462 = v54;
        v464 = v47;
        v311 = *((swift_isaMask & *v308) + 0x110);
        v312 = swift_retain_n();
        v311(v312);
        v313 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v314 = v486;
        v315 = v487;
        v428 = *(v309 + 16);
        v429 = v309 + 16;
        v428(v486, v51, v487);
        v316 = *(v309 + 80);
        v317 = (v316 + 32) & ~v316;
        v318 = v309;
        v319 = (v485 + v317 + 7) & 0xFFFFFFFFFFFFFFF8;
        v430 = v316;
        v320 = swift_allocObject();
        *(v320 + 16) = v313;
        *(v320 + 24) = v48;
        v321 = *(v318 + 32);
        v484 = v318 + 32;
        v427 = v321;
        v321((v320 + v317), v314, v315);
        v322 = v467;
        *(v320 + v319) = v467;
        v323 = *((swift_isaMask & *v310) + 0xF0);

        v482 = v322;

        v474 = v310;
        v323(partial apply for closure #5 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:), v320);

        (*(*v48 + 304))(0);
        v324 = type metadata accessor for URL();
        v325 = *(*(v324 - 8) + 56);
        v325(v478, 1, 1, v324);
        v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd);
        v327 = *(*(v326 - 8) + 56);
        v327(v479, 1, 1, v326);
        v476 = type metadata accessor for Date();
        v328 = *(v476 - 1);
        v431 = *(v328 + 56);
        v477 = (v328 + 56);
        v431(v480, 1, 1, v476);
        type metadata accessor for MOSuggestionSheetAssetViewModel(0);
        v39 = swift_allocObject();
        *(v39 + 64) = 0;
        v433 = (v39 + 64);
        *(v39 + 48) = 0u;
        *(v39 + 32) = 0u;
        *(v39 + 72) = 26;
        *(v39 + 80) = 0;
        v434 = (v39 + 72);
        v435 = (v39 + 80);
        *(v39 + 104) = 0;
        *(v39 + 96) = 0;
        v436 = (v39 + 96);
        *&v483 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_URL;
        v325(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_URL, 1, 1, v324);
        v329 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactName);
        v437 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactName);
        *v329 = 0;
        v329[1] = 0;
        v330 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactID);
        *v330 = 0;
        v330[1] = 0;
        v331 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactFirstName);
        v438 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactFirstName);
        *v331 = 0;
        v331[1] = 0;
        v332 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_workoutName);
        v439 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_workoutName);
        *v332 = 0;
        v332[1] = 0;
        v333 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto;
        *(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto) = 0;
        v440 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset;
        *(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset) = 0;
        v334 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityName);
        v441 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityName);
        *v334 = 0;
        v334[1] = 0;
        v335 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityStepCount);
        v442 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityStepCount);
        *v335 = 0;
        v335[1] = 0;
        v336 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_title);
        v443 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_title);
        *v336 = 0;
        v336[1] = 0;
        v337 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_subtitle);
        v444 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_subtitle);
        *v337 = 0;
        v337[1] = 0;
        v338 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherString);
        v445 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherString);
        *v338 = 0;
        v338[1] = 0;
        v446 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherTemperature;
        v327((v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherTemperature), 1, 1, v326);
        v339 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_calories);
        v447 = v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_calories;
        *v339 = 0;
        v339[1] = 0;
        v340 = v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_duration;
        v448 = v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_duration;
        *v340 = 0;
        *(v340 + 8) = 1;
        v341 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_distance);
        v449 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_distance);
        *v341 = 0;
        v341[1] = 0;
        v342 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_averageHeartRate);
        v450 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_averageHeartRate);
        *v342 = 0;
        v342[1] = 0;
        v343 = v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_squareCropRect;
        v451 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_squareCropRect);
        *v343 = 0u;
        *(v343 + 16) = 0u;
        *(v343 + 32) = 1;
        v344 = v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_landscapeCropRect;
        v452 = v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_landscapeCropRect;
        *v344 = 0u;
        *(v344 + 16) = 0u;
        *(v344 + 32) = 1;
        v345 = v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_portraitCropRect;
        *v345 = 0u;
        *(v345 + 16) = 0u;
        *(v345 + 32) = 1;
        v453 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize;
        *(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize) = 11;
        v346 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapPrimaryField);
        v454 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapPrimaryField);
        *v346 = 0;
        v346[1] = 0;
        v347 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapSecondaryField);
        v456 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapSecondaryField);
        *v347 = 0;
        v347[1] = 0;
        v348 = v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapLocationCount;
        v457 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapLocationCount);
        *v348 = 0;
        *(v348 + 8) = 1;
        v455 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView;
        *(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView) = 0;
        v349 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_valenceClassificationAndReflectiveInterval);
        v458 = v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_valenceClassificationAndReflectiveInterval;
        *v349 = 0;
        v349[1] = 0;
        v350 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabels);
        v459 = v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabels;
        *v350 = 0;
        v350[1] = 0;
        v351 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabelsShortened);
        v460 = v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabelsShortened;
        *v351 = 0;
        v351[1] = 0;
        v352 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomains);
        v461 = v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomains;
        *v352 = 0;
        v352[1] = 0;
        v353 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomainsShortened);
        v432 = (v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomainsShortened);
        *v353 = 0;
        v353[1] = 0;
        v467 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsLight;
        *(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsLight) = 0;
        v475 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsDark;
        *(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsDark) = 0;
        v354 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDate;
        v431((v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDate), 1, 1, v476);
        v476 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor;
        *(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor) = 0;
        v477 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaThirdPartyAppAssociatedColors;
        *(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaThirdPartyAppAssociatedColors) = 0;
        swift_weakInit();
        v355 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_uuid;

        v431 = v355;
        UUID.init()();
        *(v39 + 16) = 0x6C6F686563616C70;
        *(v39 + 24) = 0xEB00000000726564;
        swift_beginAccess();
        swift_weakAssign();

        swift_beginAccess();
        v356 = *(v39 + 32);
        *(v39 + 32) = 0;

        swift_beginAccess();
        v357 = *(v39 + 40);
        *(v39 + 40) = 0;

        swift_beginAccess();
        v358 = *(v39 + 48);
        *(v39 + 48) = 0;

        swift_beginAccess();
        v359 = *(v39 + 56);
        *(v39 + 56) = 0;

        v360 = v433;
        swift_beginAccess();
        v361 = *v360;
        *v360 = 0;

        v362 = v434;
        swift_beginAccess();
        *v362 = 26;
        v363 = v435;
        swift_beginAccess();
        v364 = *v363;
        *v363 = 0;

        *(v39 + 88) = 0;
        v365 = v436;
        swift_beginAccess();
        *v365 = 0;
        *(v39 + 104) = 0;

        v366 = v483;
        swift_beginAccess();
        outlined assign with copy of URL?(v478, v39 + v366, &_s10Foundation3URLVSgMd);
        swift_endAccess();
        *(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaType) = 0;
        *(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isSquare) = 0;
        v367 = v437;
        swift_beginAccess();
        v483 = xmmword_1002A8990;
        *v367 = xmmword_1002A8990;

        v368 = v438;
        swift_beginAccess();
        *v368 = v483;

        v369 = v439;
        swift_beginAccess();
        *v369 = v483;

        swift_beginAccess();
        v370 = *(v39 + v333);
        *(v39 + v333) = 0;

        v371 = v440;
        swift_beginAccess();
        v372 = *(v39 + v371);
        *(v39 + v371) = 0;

        v373 = v441;
        swift_beginAccess();
        *v373 = v483;

        v374 = v442;
        swift_beginAccess();
        *v374 = v483;

        *(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_motionActivityNumSteps) = 0;
        v375 = v443;
        swift_beginAccess();
        *v375 = 0;
        *(v375 + 1) = 0;

        v376 = v444;
        swift_beginAccess();
        *v376 = 0;
        *(v376 + 1) = 0;

        v377 = v445;
        swift_beginAccess();
        *v377 = v483;

        v378 = v446;
        swift_beginAccess();
        outlined assign with copy of URL?(v479, v39 + v378, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
        swift_endAccess();
        v379 = v447;
        swift_beginAccess();
        *v379 = v483;

        v380 = v448;
        swift_beginAccess();
        *v380 = 0;
        *(v380 + 8) = 0;
        v381 = v449;
        swift_beginAccess();
        *v381 = v483;

        v382 = v450;
        swift_beginAccess();
        *v382 = v483;

        *(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_shouldAutoPlay) = 0;
        v383 = v451;
        swift_beginAccess();
        *v383 = 0u;
        *(v383 + 1) = 0u;
        v383[32] = 1;
        v384 = v452;
        swift_beginAccess();
        *v384 = 0u;
        *(v384 + 16) = 0u;
        *(v384 + 32) = 1;
        swift_beginAccess();
        *v345 = 0u;
        *(v345 + 16) = 0u;
        *(v345 + 32) = 1;
        v385 = v453;
        swift_beginAccess();
        *(v39 + v385) = 11;
        v386 = v454;
        swift_beginAccess();
        *v386 = 0;
        *(v386 + 1) = 0;

        v387 = v456;
        swift_beginAccess();
        *v387 = 0;
        *(v387 + 1) = 0;

        v388 = v457;
        swift_beginAccess();
        *v388 = 0;
        v388[8] = 1;
        *(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isLoadingPlaceHolder) = 1;
        v389 = v455;
        swift_beginAccess();
        v390 = *(v39 + v389);
        *(v39 + v389) = 0;

        v391 = v458;
        swift_beginAccess();
        *v391 = v483;

        *(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_reflectiveInterval) = 1;
        v392 = v459;
        swift_beginAccess();
        *v392 = v483;

        v393 = v460;
        swift_beginAccess();
        *v393 = v483;

        v394 = v461;
        swift_beginAccess();
        *v394 = v483;

        v395 = v432;
        swift_beginAccess();
        *v395 = v483;

        v396 = v467;
        swift_beginAccess();
        *&v396[v39] = 0;

        v397 = v475;
        swift_beginAccess();
        *(v39 + v397) = 0;

        swift_beginAccess();
        outlined assign with copy of URL?(v480, v39 + v354, &_s10Foundation4DateVSgMd);
        swift_endAccess();
        v398 = v476;
        swift_beginAccess();
        v399 = *(v39 + v398);
        *(v39 + v398) = 0;

        v400 = v477;
        swift_beginAccess();
        *(v39 + v400) = 0;

        *(v39 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColorVariant) = 0;
        if (one-time initialization token for memory == -1)
        {
LABEL_46:
          v401 = type metadata accessor for Logger();
          __swift_project_value_buffer(v401, static MOAngelLogger.memory);

          v402 = Logger.logObject.getter();
          v403 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v402, v403))
          {
            v404 = swift_slowAlloc();
            v490[0] = swift_slowAlloc();
            *v404 = 136315394;
            v405 = UUID.uuidString.getter();
            v407 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v405, v406, v490);

            *(v404 + 4) = v407;
            *(v404 + 12) = 2080;
            swift_beginAccess();
            v408 = *(v39 + 16);
            v409 = *(v39 + 24);

            v410 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v408, v409, v490);

            *(v404 + 14) = v410;
            _os_log_impl(&_mh_execute_header, v402, v403, "[MOSuggestionSheetAssetViewModel] init=%s\t id=%s", v404, 0x16u);
            swift_arrayDestroy();
          }

          v411 = v473;

          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v480, &_s10Foundation4DateVSgMd);
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v479, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v478, &_s10Foundation3URLVSgMd);
          v413 = v468;
          v412 = v469;
          v414 = v472;
          v72 = v474;
          (*((swift_isaMask & *v474) + 0x170))(v39);

          v416 = (*((swift_isaMask & *v72) + 0x108))(v415);
          v417 = v482;
          v418 = v412;
          v419 = v413;
          if (v416)
          {
            v420 = v430;
            LODWORD(v483) = v481();
            v421 = v486;
            v422 = v418;
            v423 = v487;
            v428(v486, v488, v487);
            v424 = swift_allocObject();
            *(v424 + 2) = v72;
            *(v424 + 3) = v411;
            *(v424 + 4) = v482;
            *(v424 + 5) = v422;
            v419 = v468;
            v427(&v424[(v420 + 48) & ~v420], v421, v423);

            v425 = v482;

            v426 = v462;
            MOSuggestionCollectionViewCellViewModel.fetchAssetsForBundle(previewOnly:previewMax:style:completionHandler:)(1, 1, v483, partial apply for closure #6 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:), v424);
            v417 = v482;
            v414 = v472;
          }

          $defer #1 () in MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(v470, v466, v471);

          (*(v414 + 8))(v465, v419);
          return v72;
        }

LABEL_64:
        swift_once();
        goto LABEL_46;
      }

      v168 = String._bridgeToObjectiveC()();
      v169 = IndexPath._bridgeToObjectiveC()().super.isa;
      v54 = [a1 dequeueReusableCellWithReuseIdentifier:v168 forIndexPath:v169];

      type metadata accessor for MOSuggestionCollectionViewCell();
      v170 = swift_dynamicCastClass();
      if (!v170)
      {
LABEL_52:
        v292 = v466;
        goto LABEL_53;
      }

      v462 = v54;
      v464 = v47;
      v465 = v30;
      v171 = *v170;
      v474 = v170;
      v172 = v51;
      v173 = *((swift_isaMask & v171) + 0x100);
      v174 = swift_retain_n();
      v173(v174);
      v175 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v176 = v484;
      v177 = v486;
      v178 = v172;
      v179 = v487;
      v480 = *(v484 + 16);
      (v480)(v486, v178, v487);
      v180 = *(v176 + 80);
      v181 = (v180 + 32) & ~v180;
      v182 = (v485 + v181 + 7) & 0xFFFFFFFFFFFFFFF8;
      v183 = swift_allocObject();
      v184 = v473;
      *(v183 + 16) = v175;
      *(v183 + 24) = v184;
      v484 = *(v176 + 32);
      (v484)(v183 + v181, v177, v179);
      v185 = v467;
      *(v183 + v182) = v467;
      v186 = *((swift_isaMask & *v474) + 0xB8);

      v187 = v185;
      v186(partial apply for closure #5 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:), v183);
      v188 = v473;

      v189 = (*(*v188 + 304))(0);
      v72 = v474;
      v190 = (*((swift_isaMask & *v474) + 0xF8))(v189);
      if (!v190)
      {

        v284 = v468;
        v285 = v465;
        v286 = v466;
        v287 = v187;
LABEL_56:
        $defer #1 () in MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(v470, v286, v471);

        (*(v472 + 8))(v285, v284);
        return v72;
      }

      v191 = *(*v188 + 400);
      v479 = v190;
      LODWORD(v478) = v191();
      v192 = v486;
      v193 = v487;
      (v480)(v486, v488, v487);
      v194 = (v180 + 40) & ~v180;
      v195 = swift_allocObject();
      v195[2] = v72;
      v195[3] = v187;
      v195[4] = v469;
      (v484)(v195 + v194, v192, v193);
      v487 = v187;
      v196 = v187;
      v197 = v462;

      if (v478)
      {
        v198 = 4;
      }

      else
      {
        v198 = 0;
      }

      v486 = MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:style:typeSorted:completionHandler:)(1, 5, v198, 0, partial apply for closure #2 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:), v195);

      v199 = type metadata accessor for URL();
      v200 = *(*(v199 - 8) + 56);
      v200(v481, 1, 1, v199);
      v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd);
      v202 = *(*(v201 - 8) + 56);
      v202(v482, 1, 1, v201);
      v459 = type metadata accessor for Date();
      v203 = *(v459 - 8);
      v438 = *(v203 + 56);
      v485 = v203 + 56;
      v438(v483, 1, 1, v459);
      type metadata accessor for MOSuggestionSheetAssetViewModel(0);
      v30 = swift_allocObject();
      *(v30 + 8) = 0;
      v440 = (v30 + 64);
      *(v30 + 3) = 0u;
      *(v30 + 2) = 0u;
      v30[72] = 26;
      *(v30 + 10) = 0;
      v441 = (v30 + 72);
      v442 = v30 + 80;
      *(v30 + 13) = 0;
      *(v30 + 12) = 0;
      v443 = v30 + 96;
      *&v488 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_URL;
      v200(&v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_URL], 1, 1, v199);
      v204 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactName];
      v444 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactName];
      *v204 = 0;
      *(v204 + 1) = 0;
      v205 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactID];
      *v205 = 0;
      *(v205 + 1) = 0;
      v206 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactFirstName];
      v445 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactFirstName];
      *v206 = 0;
      *(v206 + 1) = 0;
      v207 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_workoutName];
      v446 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_workoutName];
      *v207 = 0;
      *(v207 + 1) = 0;
      v447 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto;
      *&v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto] = 0;
      v448 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset;
      *&v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset] = 0;
      v208 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityName];
      v449 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityName];
      *v208 = 0;
      *(v208 + 1) = 0;
      v209 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityStepCount];
      v450 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityStepCount];
      *v209 = 0;
      *(v209 + 1) = 0;
      v210 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_title];
      *v210 = 0;
      *(v210 + 1) = 0;
      v211 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_subtitle];
      v451 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_subtitle];
      *v211 = 0;
      *(v211 + 1) = 0;
      v212 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherString];
      v452 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherString];
      *v212 = 0;
      *(v212 + 1) = 0;
      v453 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherTemperature;
      v202(&v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherTemperature], 1, 1, v201);
      v213 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_calories];
      v454 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_calories];
      *v213 = 0;
      *(v213 + 1) = 0;
      v214 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_duration];
      v455 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_duration];
      *v214 = 0;
      v214[8] = 1;
      v215 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_distance];
      v456 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_distance];
      *v215 = 0;
      *(v215 + 1) = 0;
      v216 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_averageHeartRate];
      v457 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_averageHeartRate];
      *v216 = 0;
      *(v216 + 1) = 0;
      v217 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_squareCropRect];
      *v217 = 0u;
      *(v217 + 1) = 0u;
      v217[32] = 1;
      v218 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_landscapeCropRect];
      *v218 = 0u;
      *(v218 + 1) = 0u;
      v218[32] = 1;
      v219 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_portraitCropRect];
      v439 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_portraitCropRect];
      *v219 = 0u;
      *(v219 + 1) = 0u;
      v219[32] = 1;
      v460 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize;
      v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize] = 11;
      v220 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapPrimaryField];
      v461 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapPrimaryField];
      *v220 = 0;
      *(v220 + 1) = 0;
      v221 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapSecondaryField];
      v463 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapSecondaryField];
      *v221 = 0;
      *(v221 + 1) = 0;
      v222 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapLocationCount];
      v467 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapLocationCount];
      *v222 = 0;
      v222[8] = 1;
      v458 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView;
      *&v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView] = 0;
      v223 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_valenceClassificationAndReflectiveInterval];
      v475 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_valenceClassificationAndReflectiveInterval];
      *v223 = 0;
      *(v223 + 1) = 0;
      v224 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabels];
      v476 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabels];
      *v224 = 0;
      *(v224 + 1) = 0;
      v225 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabelsShortened];
      v477 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabelsShortened];
      *v225 = 0;
      *(v225 + 1) = 0;
      v226 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomains];
      v478 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomains];
      *v226 = 0;
      *(v226 + 1) = 0;
      v227 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomainsShortened];
      v479 = &v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomainsShortened];
      *v227 = 0;
      *(v227 + 1) = 0;
      v480 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsLight;
      *&v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsLight] = 0;
      v484 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsDark;
      *&v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsDark] = 0;
      v462 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDate;
      v438(&v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDate], 1, 1, v459);
      v459 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor;
      *&v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor] = 0;
      v485 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaThirdPartyAppAssociatedColors;
      *&v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaThirdPartyAppAssociatedColors] = 0;
      swift_weakInit();
      v228 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_uuid;

      v438 = v228;
      UUID.init()();
      *(v30 + 2) = 0x6C6F686563616C70;
      *(v30 + 3) = 0xEB00000000726564;
      swift_beginAccess();
      swift_weakAssign();

      swift_beginAccess();
      v229 = *(v30 + 4);
      *(v30 + 4) = 0;

      swift_beginAccess();
      v230 = *(v30 + 5);
      *(v30 + 5) = 0;

      swift_beginAccess();
      v231 = *(v30 + 6);
      *(v30 + 6) = 0;

      swift_beginAccess();
      v232 = *(v30 + 7);
      *(v30 + 7) = 0;

      v233 = v440;
      swift_beginAccess();
      v234 = *v233;
      *v233 = 0;

      v235 = v441;
      swift_beginAccess();
      *v235 = 26;
      v236 = v442;
      swift_beginAccess();
      v237 = *v236;
      *v236 = 0;

      *(v30 + 11) = 0;
      v238 = v443;
      swift_beginAccess();
      *v238 = 0;
      *(v30 + 13) = 0;

      v239 = v488;
      swift_beginAccess();
      outlined assign with copy of URL?(v481, &v30[v239], &_s10Foundation3URLVSgMd);
      swift_endAccess();
      *&v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaType] = 0;
      v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isSquare] = 0;
      v240 = v444;
      swift_beginAccess();
      v488 = xmmword_1002A8990;
      *v240 = xmmword_1002A8990;

      v241 = v445;
      swift_beginAccess();
      *v241 = v488;

      v242 = v446;
      swift_beginAccess();
      *v242 = v488;

      v243 = v447;
      swift_beginAccess();
      v244 = *&v30[v243];
      *&v30[v243] = 0;

      v245 = v448;
      swift_beginAccess();
      v246 = *&v30[v245];
      *&v30[v245] = 0;

      v247 = v449;
      swift_beginAccess();
      *v247 = v488;

      v248 = v450;
      swift_beginAccess();
      *v248 = v488;

      *&v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_motionActivityNumSteps] = 0;
      swift_beginAccess();
      *v210 = 0;
      *(v210 + 1) = 0;

      v249 = v451;
      swift_beginAccess();
      *v249 = 0;
      *(v249 + 1) = 0;

      v250 = v452;
      swift_beginAccess();
      *v250 = v488;

      v251 = v453;
      swift_beginAccess();
      outlined assign with copy of URL?(v482, &v30[v251], &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
      swift_endAccess();
      v252 = v454;
      swift_beginAccess();
      *v252 = v488;

      v253 = v455;
      swift_beginAccess();
      *v253 = 0;
      *(v253 + 8) = 0;
      v254 = v456;
      swift_beginAccess();
      *v254 = v488;

      v255 = v457;
      swift_beginAccess();
      *v255 = v488;

      v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_shouldAutoPlay] = 0;
      swift_beginAccess();
      *v217 = 0u;
      *(v217 + 1) = 0u;
      v217[32] = 1;
      swift_beginAccess();
      *v218 = 0u;
      *(v218 + 1) = 0u;
      v218[32] = 1;
      v256 = v439;
      swift_beginAccess();
      *v256 = 0u;
      *(v256 + 1) = 0u;
      *(v256 + 32) = 1;
      v257 = v460;
      swift_beginAccess();
      v30[v257] = 11;
      v258 = v461;
      swift_beginAccess();
      *v258 = 0;
      v258[1] = 0;

      v259 = v463;
      swift_beginAccess();
      *v259 = 0;
      v259[1] = 0;

      v260 = v467;
      swift_beginAccess();
      *v260 = 0;
      v260[8] = 1;
      v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isLoadingPlaceHolder] = 1;
      v261 = v458;
      swift_beginAccess();
      v262 = *&v30[v261];
      *&v30[v261] = 0;

      v263 = v475;
      swift_beginAccess();
      *v263 = v488;

      *&v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_reflectiveInterval] = 1;
      v264 = v476;
      swift_beginAccess();
      *v264 = v488;

      v265 = v477;
      swift_beginAccess();
      *v265 = v488;

      v266 = v478;
      swift_beginAccess();
      *v266 = v488;

      v267 = v479;
      swift_beginAccess();
      *v267 = v488;

      v268 = v480;
      swift_beginAccess();
      *&v268[v30] = 0;

      v269 = v484;
      swift_beginAccess();
      *&v30[v269] = 0;

      v270 = v462;
      swift_beginAccess();
      outlined assign with copy of URL?(v483, v270 + v30, &_s10Foundation4DateVSgMd);
      swift_endAccess();
      v271 = v459;
      swift_beginAccess();
      v272 = *&v30[v271];
      *&v30[v271] = 0;

      v273 = v485;
      swift_beginAccess();
      *&v30[v273] = 0;

      *&v30[OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColorVariant] = 0;
      if (one-time initialization token for memory == -1)
      {
LABEL_37:
        v274 = type metadata accessor for Logger();
        __swift_project_value_buffer(v274, static MOAngelLogger.memory);

        v275 = Logger.logObject.getter();
        v276 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v275, v276))
        {
          v277 = swift_slowAlloc();
          v490[0] = swift_slowAlloc();
          *v277 = 136315394;
          v278 = UUID.uuidString.getter();
          v280 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v278, v279, v490);

          *(v277 + 4) = v280;
          *(v277 + 12) = 2080;
          swift_beginAccess();
          v281 = *(v30 + 2);
          v282 = *(v30 + 3);

          v283 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v281, v282, v490);

          *(v277 + 14) = v283;
          _os_log_impl(&_mh_execute_header, v275, v276, "[MOSuggestionSheetAssetViewModel] init=%s\t id=%s", v277, 0x16u);
          swift_arrayDestroy();
        }

        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v483, &_s10Foundation4DateVSgMd);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v482, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v481, &_s10Foundation3URLVSgMd);
        v284 = v468;
        v285 = v465;
        v286 = v466;
        v72 = v474;
        v287 = v487;
        v288 = _sSa9repeating5countSayxGx_SitcfC16MomentsUIService31MOSuggestionSheetAssetViewModelC_Tt1g5Tf4gn_n(v30, v486);

        (*((swift_isaMask & *v72) + 0x170))(v288);

        goto LABEL_56;
      }

LABEL_62:
      swift_once();
      goto LABEL_37;
    }

    if ((v471 & 1) == 0)
    {
      v42 = v470;
      if (!v470)
      {
        __break(1u);
        goto LABEL_10;
      }

      goto LABEL_19;
    }

    if (v470 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v470 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        goto LABEL_64;
      }

      if (v470 >> 16 <= 0x10)
      {
        v42 = &v489;
LABEL_19:
        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, v40, v46, v42, "", v45, 2u);

        v23 = v468;
        v24 = v472;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_62;
  }

LABEL_12:
  v43 = objc_allocWithZone(UICollectionViewCell);

  return [v43 init];
}

uint64_t $defer #1 () in MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(const char *a1, uint64_t a2, int a3)
{
  v19 = a3;
  v4 = type metadata accessor for OSSignpostError();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for bundleProcessing != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v12, static MOAngelSignposter.bundleProcessing);
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v18 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v19 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v5 + 88))(v7, v4) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v7, v4);
        v15 = "";
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v18, v17, a1, v15, v16, 2u);

LABEL_15:

      return (*(v9 + 8))(v11, v8);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v20;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t MOSuggestionCollectionView.collectionViewHandleSuggestionSelection(indexPath:interactionState:)(uint64_t a1, char a2)
{
  result = (*((swift_isaMask & *v2) + 0x130))();
  if (result)
  {
    if (a2)
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      (*(v7 + 40))(ObjectType, v7);
    }

    v9 = (*((swift_isaMask & *v2) + 0x100))();
    if (v9)
    {
      (*(*v9 + 776))(a1, a2 & 1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #4 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(uint64_t *a1, void *a2, void *a3, uint64_t a4, NSObject *a5)
{
  v78 = a3;
  v79 = a5;
  v77 = a4;
  v7 = type metadata accessor for IndexPath();
  v80 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v81 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v12 - 8);
  v14 = &v69 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v69 - v21;
  __chkstk_darwin(v20);
  v24 = &v69 - v23;
  v25 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult(0);
  outlined init with copy of UUID?(a1 + *(v25 + 24), v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_s10Foundation4UUIDVSgMd);
  }

  v76 = v7;
  (*(v16 + 32))(v24, v14, v15);
  v27 = *a1;
  if (!*a1)
  {
    return (*(v16 + 8))(v24, v15);
  }

  v74 = v11;
  v71 = v19;
  v28 = *((swift_isaMask & *a2) + 0xA0);
  v29 = (swift_isaMask & *a2) + 160;

  v72 = v29;
  v73 = v28;
  v31 = v28(v30);
  if (!v31)
  {
    (*(v16 + 8))(v24, v15);
  }

  v75 = v27;
  v32 = v31;
  (*(*v31 + 344))();
  v33 = static UUID.== infix(_:_:)();
  v34 = v22;
  v35 = *(v16 + 8);
  v35(v34, v15);
  if ((v33 & 1) == 0 || (v70 = v32, *(a1 + 16) == 1))
  {
    v35(v24, v15);
  }

  v69 = v35;
  (*((swift_isaMask & *a2) + 0x100))(v75, a1[1]);
  v36 = *(*v77 + 440);
  v37 = *(v70 + 16);
  v38 = v36();
  if (v38)
  {
    v39 = 0x746E65636552;
  }

  else
  {
    v39 = 0x6E656D6D6F636552;
  }

  if (v38)
  {
    v40 = 0xE600000000000000;
  }

  else
  {
    v40 = 0xEB00000000646564;
  }

  (*((swift_isaMask & *v78) + 0x188))(v37, v39, v40);

  if (one-time initialization token for ranking != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v78 = __swift_project_value_buffer(v41, static MOAngelLogger.ranking);
  v42 = v79;
  v43 = v80;
  v44 = *(v80 + 16);
  v45 = v74;
  v46 = v76;
  v44(v74, v79, v76);
  v44(v81, v42, v46);
  v47 = a2;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v48, v49))
  {
    LODWORD(v78) = v49;
    v79 = v48;
    v50 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v82 = v77;
    *v50 = 134218498;
    v51 = IndexPath.row.getter();
    v52 = *(v43 + 8);
    v53 = v45;
    v54 = v76;
    v52(v53, v76);
    *(v50 + 4) = v51;
    *(v50 + 12) = 2048;
    v55 = v81;
    v56 = IndexPath.section.getter();
    v57 = (v52)(v55, v54);
    *(v50 + 14) = v56;
    *(v50 + 22) = 2080;
    v58 = v73(v57);
    if (v58)
    {
      v59 = v71;
      (*(*v58 + 344))(v58);

      v60 = UUID.uuidString.getter();
      v62 = v61;
      v63 = v59;
      v64 = v69;
      v69(v63, v15);
    }

    else
    {
      v62 = 0xE300000000000000;
      v60 = 7104878;
      v64 = v69;
    }

    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v82);

    *(v50 + 24) = v67;
    v68 = v79;
    _os_log_impl(&_mh_execute_header, v79, v78, "(collectionView) layout cell %ld, %ld, bundleId=%s", v50, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v77);

    return v64(v24, v15);
  }

  else
  {
    v65 = *(v43 + 8);
    v66 = v76;
    v65(v81, v76);
    v65(v45, v66);

    return (v69)(v24, v15);
  }
}

uint64_t closure #6 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v84 = a5;
  v85 = a7;
  v83 = a6;
  v86 = a4;
  v93 = a2;
  v90 = type metadata accessor for IndexPath();
  v9 = *(v90 - 8);
  v10 = __chkstk_darwin(v90);
  v89 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v88 = &v76 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v92 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v91 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  __chkstk_darwin(v18);
  v20 = &v76 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v76 - v26;
  result = __chkstk_darwin(v25);
  v30 = &v76 - v29;
  v87 = a1;
  if (!a1)
  {
    return result;
  }

  v80 = v9;
  v31 = *((swift_isaMask & *a3) + 0x108);
  v32 = (swift_isaMask & *a3) + 264;
  v81 = a3;
  v78 = v32;
  v79 = v31;
  v33 = v31(result);
  if (v33)
  {
    (*(*v33 + 344))(v33);

    v34 = v14[7];
    v34(v30, 0, 1, v13);
  }

  else
  {
    v34 = v14[7];
    v34(v30, 1, 1, v13);
  }

  v35 = v14 + 2;
  v77 = v14[2];
  v77(v27, v93, v13);
  v34(v27, 0, 1, v13);
  v36 = v13;
  v37 = *(v18 + 48);
  outlined init with copy of UUID?(v30, v20);
  outlined init with copy of UUID?(v27, &v20[v37]);
  v82 = v14;
  v38 = v14[6];
  if (v38(v20, 1, v36) != 1)
  {
    outlined init with copy of UUID?(v20, v24);
    if (v38(&v20[v37], 1, v36) != 1)
    {
      v76 = v14 + 2;
      v41 = v82;
      v42 = v91;
      (v82[4])(v91, &v20[v37], v36);
      _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = v41[1];
      v44(v42, v36);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v27, &_s10Foundation4UUIDVSgMd);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v30, &_s10Foundation4UUIDVSgMd);
      v44(v24, v36);
      result = outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v20, &_s10Foundation4UUIDVSgMd);
      v39 = v36;
      v40 = v80;
      if ((v43 & 1) == 0)
      {
        return result;
      }

      goto LABEL_12;
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v27, &_s10Foundation4UUIDVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v30, &_s10Foundation4UUIDVSgMd);
    (v82[1])(v24, v36);
    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v20, &_s10Foundation4UUIDVSg_ADtMd);
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v27, &_s10Foundation4UUIDVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v30, &_s10Foundation4UUIDVSgMd);
  if (v38(&v20[v37], 1, v36) != 1)
  {
    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v20, &_s10Foundation4UUIDVSg_ADtMd);
  }

  v39 = v36;
  v76 = v35;
  result = outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v20, &_s10Foundation4UUIDVSgMd);
  v40 = v80;
LABEL_12:
  result = v79(result);
  if (result)
  {
    v45 = result;
    v46 = *(v86 + 16);
    v47 = [v46 interfaceType];
    v48 = (*(*v45 + 520))(v87, 2, v47);

    if (v48 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = v89;
    v50 = v90;
    v51 = v92;
    v52 = v88;
    if (!result)
    {
    }

    if ((v48 & 0xC000000000000001) != 0)
    {
      v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v53 = *(v48 + 32);
    }

    v54 = *((swift_isaMask & *v81) + 0x170);
    v91 = v53;
    v55 = v54(v53);
    v56 = (*(*v83 + 440))(v55);
    if (v56)
    {
      v57 = 0x746E65636552;
    }

    else
    {
      v57 = 0x6E656D6D6F636552;
    }

    if (v56)
    {
      v58 = 0xE600000000000000;
    }

    else
    {
      v58 = 0xEB00000000646564;
    }

    (*((swift_isaMask & *v84) + 0x188))(v46, v57, v58);

    if (one-time initialization token for ranking != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static MOAngelLogger.ranking);
    v60 = *(v40 + 16);
    v61 = v85;
    v60(v52, v85, v50);
    v60(v49, v61, v50);
    v77(v51, v93, v39);
    v62 = Logger.logObject.getter();
    v63 = v51;
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v62, v64))
    {
      v65 = swift_slowAlloc();
      v66 = v52;
      v93 = swift_slowAlloc();
      v94 = v93;
      *v65 = 134218498;
      v67 = IndexPath.row.getter();
      v68 = *(v40 + 8);
      v68(v66, v50);
      *(v65 + 4) = v67;
      *(v65 + 12) = 2048;
      v69 = IndexPath.section.getter();
      v68(v49, v50);
      *(v65 + 14) = v69;
      *(v65 + 22) = 2080;
      _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v70 = v92;
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      (v82[1])(v70, v39);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v94);

      *(v65 + 24) = v74;
      _os_log_impl(&_mh_execute_header, v62, v64, "(collectionView) layout cell %ld, %ld, bundleId=%s", v65, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v93);
    }

    else
    {
      v75 = *(v40 + 8);
      v75(v49, v50);
      v75(v52, v50);

      return (v82[1])(v63, v39);
    }
  }

  return result;
}

uint64_t closure #7 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v85 = a5;
  v86 = a7;
  v84 = a6;
  v92 = a4;
  v93 = a2;
  v9 = type metadata accessor for IndexPath();
  v89 = *(v9 - 8);
  v90 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v74[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v87 = &v74[-v13];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v88 = &v74[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v91 = &v74[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  __chkstk_darwin(v19);
  v21 = &v74[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v74[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v23);
  v28 = &v74[-v27];
  result = __chkstk_darwin(v26);
  v31 = &v74[-v30];
  v83 = a1;
  if (!a1)
  {
    return result;
  }

  v32 = (swift_isaMask & *a3) + 152;
  v79 = *((swift_isaMask & *a3) + 0x98);
  v80 = a3;
  v78 = v32;
  v33 = v79(result);
  v81 = v12;
  if (v33)
  {
    (*(*v33 + 344))(v33);

    v34 = v15[7];
    v34(v31, 0, 1, v14);
  }

  else
  {
    v34 = v15[7];
    v34(v31, 1, 1, v14);
  }

  v76 = v15[2];
  v77 = v15 + 2;
  v76(v28, v93, v14);
  v34(v28, 0, 1, v14);
  v35 = *(v19 + 48);
  outlined init with copy of UUID?(v31, v21);
  outlined init with copy of UUID?(v28, &v21[v35]);
  v82 = v15;
  v36 = v15[6];
  if (v36(v21, 1, v14) != 1)
  {
    outlined init with copy of UUID?(v21, v25);
    if (v36(&v21[v35], 1, v14) != 1)
    {
      v40 = v82;
      v41 = v91;
      (v82[4])(v91, &v21[v35], v14);
      _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v75 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = v40[1];
      v42(v41, v14);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v28, &_s10Foundation4UUIDVSgMd);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v31, &_s10Foundation4UUIDVSgMd);
      v42(v25, v14);
      result = outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v21, &_s10Foundation4UUIDVSgMd);
      v37 = v92;
      v38 = v80;
      v39 = v81;
      if ((v75 & 1) == 0)
      {
        return result;
      }

      goto LABEL_12;
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v28, &_s10Foundation4UUIDVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v31, &_s10Foundation4UUIDVSgMd);
    (v82[1])(v25, v14);
    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v21, &_s10Foundation4UUIDVSg_ADtMd);
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v28, &_s10Foundation4UUIDVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v31, &_s10Foundation4UUIDVSgMd);
  if (v36(&v21[v35], 1, v14) != 1)
  {
    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v21, &_s10Foundation4UUIDVSg_ADtMd);
  }

  result = outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v21, &_s10Foundation4UUIDVSgMd);
  v37 = v92;
  v38 = v80;
  v39 = v81;
LABEL_12:
  result = v79(result);
  if (result)
  {
    v43 = result;
    v44 = *(v37 + 16);
    v45 = [v44 interfaceType];
    v46 = (*(*v43 + 520))(v83, 3, v45);

    v47 = *((swift_isaMask & *v38) + 0xC8);
    v91 = v46;
    v48 = v47(v46);
    v49 = (*(*v84 + 440))(v48);
    if (v49)
    {
      v50 = 0x746E65636552;
    }

    else
    {
      v50 = 0x6E656D6D6F636552;
    }

    if (v49)
    {
      v51 = 0xE600000000000000;
    }

    else
    {
      v51 = 0xEB00000000646564;
    }

    (*((swift_isaMask & *v85) + 0x188))(v44, v50, v51);

    if (one-time initialization token for ranking != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static MOAngelLogger.ranking);
    v54 = v89;
    v53 = v90;
    v55 = *(v89 + 16);
    v56 = v86;
    v57 = v87;
    v55(v87, v86, v90);
    v55(v39, v56, v53);
    v58 = v88;
    v76(v88, v93, v14);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94 = v93;
      *v61 = 134218498;
      v62 = IndexPath.row.getter();
      v63 = v57;
      v64 = v62;
      v65 = v39;
      v66 = v58;
      v67 = *(v54 + 8);
      v67(v63, v53);
      *(v61 + 4) = v64;
      *(v61 + 12) = 2048;
      v68 = IndexPath.section.getter();
      v67(v65, v53);
      *(v61 + 14) = v68;
      *(v61 + 22) = 2080;
      _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      (v82[1])(v66, v14);
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v94);

      *(v61 + 24) = v72;
      _os_log_impl(&_mh_execute_header, v59, v60, "(collectionView) layout cell %ld, %ld, bundleId=%s", v61, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v93);
    }

    else
    {
      v73 = *(v54 + 8);
      v73(v39, v53);
      v73(v57, v53);

      (v82[1])(v58, v14);
    }

    return (*(*v92 + 304))(v91);
  }

  return result;
}

void closure #3 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static MOSuggestionAssetCacheManager.shared + 280))(a2[2]);
    v9 = IndexPath.row.getter();
    (*(*a2 + 528))(v9, 0, 0, 1, a4);
    MOSuggestionCollectionView.collectionViewHandleSuggestionSelection(indexPath:interactionState:)(a3, 0);
  }
}

uint64_t closure #2 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(uint64_t *a1, void *a2, void *a3, uint64_t a4, NSObject *a5)
{
  v78 = a3;
  v79 = a5;
  v77 = a4;
  v7 = type metadata accessor for IndexPath();
  v80 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v81 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v12 - 8);
  v14 = &v69 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v69 - v21;
  __chkstk_darwin(v20);
  v24 = &v69 - v23;
  v25 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult(0);
  outlined init with copy of UUID?(a1 + *(v25 + 24), v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_s10Foundation4UUIDVSgMd);
  }

  v76 = v7;
  (*(v16 + 32))(v24, v14, v15);
  v27 = *a1;
  if (!*a1)
  {
    return (*(v16 + 8))(v24, v15);
  }

  v74 = v11;
  v71 = v19;
  v28 = *((swift_isaMask & *a2) + 0xF8);
  v29 = (swift_isaMask & *a2) + 248;

  v72 = v29;
  v73 = v28;
  v31 = v28(v30);
  if (!v31)
  {
    (*(v16 + 8))(v24, v15);
  }

  v75 = v27;
  v32 = v31;
  (*(*v31 + 344))();
  v33 = static UUID.== infix(_:_:)();
  v34 = v22;
  v35 = *(v16 + 8);
  v35(v34, v15);
  if ((v33 & 1) == 0 || (v70 = v32, *(a1 + 16) == 1))
  {
    v35(v24, v15);
  }

  v69 = v35;
  (*((swift_isaMask & *a2) + 0x180))(v75, a1[1]);
  v36 = *(*v77 + 440);
  v37 = *(v70 + 16);
  v38 = v36();
  if (v38)
  {
    v39 = 0x746E65636552;
  }

  else
  {
    v39 = 0x6E656D6D6F636552;
  }

  if (v38)
  {
    v40 = 0xE600000000000000;
  }

  else
  {
    v40 = 0xEB00000000646564;
  }

  (*((swift_isaMask & *v78) + 0x188))(v37, v39, v40);

  if (one-time initialization token for ranking != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v78 = __swift_project_value_buffer(v41, static MOAngelLogger.ranking);
  v42 = v79;
  v43 = v80;
  v44 = *(v80 + 16);
  v45 = v74;
  v46 = v76;
  v44(v74, v79, v76);
  v44(v81, v42, v46);
  v47 = a2;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v48, v49))
  {
    LODWORD(v78) = v49;
    v79 = v48;
    v50 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v82 = v77;
    *v50 = 134218498;
    v51 = IndexPath.row.getter();
    v52 = *(v43 + 8);
    v53 = v45;
    v54 = v76;
    v52(v53, v76);
    *(v50 + 4) = v51;
    *(v50 + 12) = 2048;
    v55 = v81;
    v56 = IndexPath.section.getter();
    v57 = (v52)(v55, v54);
    *(v50 + 14) = v56;
    *(v50 + 22) = 2080;
    v58 = v73(v57);
    if (v58)
    {
      v59 = v71;
      (*(*v58 + 344))(v58);

      v60 = UUID.uuidString.getter();
      v62 = v61;
      v63 = v59;
      v64 = v69;
      v69(v63, v15);
    }

    else
    {
      v62 = 0xE300000000000000;
      v60 = 7104878;
      v64 = v69;
    }

    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v82);

    *(v50 + 24) = v67;
    v68 = v79;
    _os_log_impl(&_mh_execute_header, v79, v78, "(collectionView) layout cell %ld, %ld, bundleId=%s", v50, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v77);

    return v64(v24, v15);
  }

  else
  {
    v65 = *(v43 + 8);
    v66 = v76;
    v65(v81, v76);
    v65(v45, v66);

    return (v69)(v24, v15);
  }
}

Swift::Int __swiftcall MOSuggestionCollectionView.numberOfSections(in:)(UICollectionView in)
{
  v2 = (*((swift_isaMask & *v1) + 0x100))(in.super.super.super.super.isa);
  if (!v2)
  {
    return 1;
  }

  v3 = (*(*v2 + 672))(v2);

  return v3;
}

void *MOSuggestionCollectionView.collectionView(_:viewForSupplementaryElementOfKind:at:)(void *a1, uint64_t (*a2)(void), void *a3, uint64_t a4)
{
  v5 = v4;
  v201 = a4;
  v202 = a2;
  v203 = a3;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v188 - v12;
  v14 = (*((swift_isaMask & *v4) + 0x100))(v11);
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v14;
  v200 = a1;
  v16 = (*((swift_isaMask & *v4) + 0x118))();
  if (v16)
  {
    v17 = v16;
    v18 = *((swift_isaMask & *v4) + 0x130);
    v199 = (swift_isaMask & *v4) + 304;
    v19 = v18();
    if (!v19)
    {

      goto LABEL_12;
    }

    v195 = v18;
    v21 = *(v4 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_tipCoordinator);
    if (!v21)
    {

      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    v196 = v19;
    v197 = v17;
    v198 = v15;
    v192 = v20;
    v22 = *((swift_isaMask & *v4) + 0x160);

    v24 = v22(v23);
    if (v24)
    {
      v191 = v25;
      v193 = v24;
      v194 = v21;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v198;
      if (v26 == v202 && v27 == v203)
      {
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v202 && v62 == v203)
          {
          }

          else
          {
            v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v87 & 1) == 0)
            {
              v149 = [objc_allocWithZone(UICollectionReusableView) init];

              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              return v149;
            }
          }

          v88 = String._bridgeToObjectiveC()();
          v89 = String._bridgeToObjectiveC()();
          v90 = v201;
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v92 = v200;
          v93 = [v200 dequeueReusableSupplementaryViewOfKind:v88 withReuseIdentifier:v89 forIndexPath:isa];

          type metadata accessor for MOSuggestionShowMoreFooterView();
          v94 = swift_dynamicCastClass();
          if (v94)
          {
            v95 = v94;
            (*(v8 + 16))(&v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v90, v7);
            v96 = (*(v8 + 80) + 24) & ~*(v8 + 80);
            v97 = swift_allocObject();
            *(v97 + 16) = v198;
            (*(v8 + 32))(v97 + v96, &v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
            *(v97 + ((v9 + v96 + 7) & 0xFFFFFFFFFFFFFFF8)) = v92;
            v98 = *((swift_isaMask & *v95) + 0x68);

            v99 = v92;
            v98(partial apply for closure #2 in MOSuggestionCollectionView.collectionView(_:viewForSupplementaryElementOfKind:at:), v97);
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();

            return v95;
          }

          else
          {

            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            return v93;
          }
        }
      }

      if (((*(*v28 + 616))(v29) & 1) == 0)
      {
        goto LABEL_20;
      }

      v33 = [objc_opt_self() sharedInstance];
      v34 = [v33 isOnboarded];

      if (v34)
      {
        if (IndexPath.section.getter())
        {
LABEL_20:
          v35 = (*v28 + 440);
          v191 = *v35;
          v190 = v35;
          if (((v191)() & 1) == 0)
          {
            v36 = (*v194 + 272);
            v37 = *v36;
            if ((*v36)(1))
            {
              v38 = String._bridgeToObjectiveC()();
              v39 = String._bridgeToObjectiveC()();
              v40 = IndexPath._bridgeToObjectiveC()().super.isa;
              v41 = [v200 dequeueReusableSupplementaryViewOfKind:v38 withReuseIdentifier:v39 forIndexPath:v40];

              type metadata accessor for MOSuggestionPrivacyTipCell();
              v189 = swift_dynamicCastClass();
              if (v189)
              {
                v42 = (*((swift_isaMask & *v197) + 0x1D0))();
                if (v43)
                {
                  v44 = v43;
                  v188 = v42;
                  v45 = v195();
                  if (v45)
                  {
                    v47 = v45;
                    v48 = v46;
                    v49 = swift_allocObject();
                    v50 = v197;
                    *(v49 + 16) = v47;
                    *(v49 + 24) = v48;
                    LOBYTE(v47) = (*((swift_isaMask & *v50) + 0x1B0))();
                    v51 = (*((swift_isaMask & *v50) + 0x1C8))();
                    v53 = v52;
                    v54 = *(*v194 + 168);

                    v54(&v204, v55);
                    type metadata accessor for MOSuggestionPrivacyTipCellModel();
                    v56 = swift_allocObject();
                    *(v56 + 88) = 0u;
                    *(v56 + 104) = 0;
                    *(v56 + 72) = 0u;
                    *(v56 + 32) = v47 & 1;
                    *(v56 + 40) = v188;
                    *(v56 + 48) = v44;
                    *(v56 + 56) = v51;
                    *(v56 + 64) = v53;
                    *(v56 + 16) = partial apply for implicit closure #6 in implicit closure #5 in MOSuggestionCollectionView.collectionView(_:viewForSupplementaryElementOfKind:at:);
                    *(v56 + 24) = v49;
                    swift_beginAccess();
                    v57 = v205;
                    *(v56 + 72) = v204;
                    *(v56 + 88) = v57;
                    *(v56 + 104) = v206;
                    v58 = v189;
                    v59 = *((swift_isaMask & *v189) + 0x88);

                    v59(v60);
                    swift_unknownObjectRelease();

                    swift_unknownObjectRelease();

                    v61 = v58;
LABEL_69:

                    return v61;
                  }
                }
              }
            }

            if (v37(0))
            {
              v150 = String._bridgeToObjectiveC()();
              v151 = String._bridgeToObjectiveC()();
              v152 = IndexPath._bridgeToObjectiveC()().super.isa;
              v153 = [v200 dequeueReusableSupplementaryViewOfKind:v150 withReuseIdentifier:v151 forIndexPath:v152];

              type metadata accessor for MOSuggestionSheetOnboardingTipCell();
              v154 = swift_dynamicCastClass();
              if (v154)
              {
                v155 = v197;
                v61 = v154;
                v156 = (*((swift_isaMask & *v197) + 0x1B0))();
                v157 = swift_allocObject();
                v158 = v192;
                *(v157 + 16) = v196;
                *(v157 + 24) = v158;
                v159 = *(*v194 + 144);
                v160 = swift_unknownObjectRetain();
                v161 = v159(v160) & 1;
                type metadata accessor for MOSuggestionSheetOnboardingTipCellModel();
                v162 = swift_allocObject();
                *(v162 + 33) = 2;
                v163 = (v162 + 33);
                *(v162 + 32) = v156 & 1;
                *(v162 + 16) = partial apply for implicit closure #8 in implicit closure #7 in MOSuggestionCollectionView.collectionView(_:viewForSupplementaryElementOfKind:at:);
                *(v162 + 24) = v157;
                swift_beginAccess();
                *v163 = v161;
                v164 = *((swift_isaMask & *v61) + 0x60);

                v164(v165);
                v166 = [v200 collectionViewLayout];
                [v166 invalidateLayout];

                swift_unknownObjectRelease();

                swift_unknownObjectRelease();

                goto LABEL_69;
              }
            }

            if (v37(2))
            {
              v167 = String._bridgeToObjectiveC()();
              v168 = String._bridgeToObjectiveC()();
              v169 = IndexPath._bridgeToObjectiveC()().super.isa;
              v170 = [v200 dequeueReusableSupplementaryViewOfKind:v167 withReuseIdentifier:v168 forIndexPath:v169];

              type metadata accessor for MOSuggestionSheetStateOfMindTipCell();
              v171 = swift_dynamicCastClass();
              if (v171)
              {
                v61 = v171;
                v172 = v197;
                v173 = (*((swift_isaMask & *v197) + 0x1B0))();
                v174 = (*(*v194 + 192))() & 1;
                type metadata accessor for MOSuggestionSheetStateOfMindTipCellModel();
                v175 = swift_allocObject();
                *(v175 + 17) = 2;
                v176 = (v175 + 17);
                *(v175 + 16) = v173 & 1;
                swift_beginAccess();
                *v176 = v174;
                v177 = *((swift_isaMask & *v61) + 0x80);

                v177(v178);
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();

                goto LABEL_69;
              }
            }

            v179 = *(v5 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_privacyBadgeTopConstraint);
            if (v179)
            {
              [v179 setConstant:*(v5 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_currentBadgeOffset)];
            }
          }

          v180 = String._bridgeToObjectiveC()();
          v181 = String._bridgeToObjectiveC()();
          v182 = IndexPath._bridgeToObjectiveC()().super.isa;
          v183 = [v200 dequeueReusableSupplementaryViewOfKind:v180 withReuseIdentifier:v181 forIndexPath:v182];

          type metadata accessor for MOSuggestionCollectionViewDateSectionHeaderView();
          v184 = swift_dynamicCastClass();
          if (v184)
          {
            v61 = v184;
            if ((v191)())
            {
              v185 = IndexPath.section.getter();
              (*(*v28 + 680))(v185);
              v186 = type metadata accessor for Date();
              (*(*(v186 - 8) + 56))(v13, 0, 1, v186);
            }

            else
            {
              v187 = type metadata accessor for Date();
              (*(*(v187 - 8) + 56))(v13, 1, 1, v187);
            }

            (*((swift_isaMask & *v61) + 0x68))(v13);
            swift_unknownObjectRelease();
LABEL_68:

            swift_unknownObjectRelease();

            goto LABEL_69;
          }

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          return v183;
        }

        v100 = String._bridgeToObjectiveC()();
        v101 = String._bridgeToObjectiveC()();
        v102 = IndexPath._bridgeToObjectiveC()().super.isa;
        v61 = [v200 dequeueReusableSupplementaryViewOfKind:v100 withReuseIdentifier:v101 forIndexPath:v102];

        type metadata accessor for MOSuggestionCollectionViewBlankEntrySectionHeaderView();
        v103 = swift_dynamicCastClass();
        if (v103)
        {
          v104 = v103;
          v105 = *((swift_isaMask & *v5) + 0x180);
          v106 = v61;
          v61 = v104;
          v107 = v105(v104, &protocol witness table for MOSuggestionCollectionViewBlankEntrySectionHeaderView);
          v108 = (*((swift_isaMask & *v5) + 0x178))(v107);
          if (v108)
          {
            v110 = v109;
            ObjectType = swift_getObjectType();
            v112 = (*(*v28 + 640))();
            (*(v110 + 8))(v112 & 1, ObjectType, v110);
            v108 = swift_unknownObjectRelease();
          }

          v113 = v197;
          v114 = *((swift_isaMask & *v197) + 0x1B0);
          v203 = ((swift_isaMask & *v197) + 432);
          v115 = (v114)(v108);
          (*((swift_isaMask & *v61) + 0x1B0))(v115 & 1);
          v116 = swift_getObjectType();
          v117 = (*(v191 + 24))(v116);
          v118 = (*(*v28 + 440))(v117);
          (*((swift_isaMask & *v61) + 0x1C8))(v118 & 1);
          v119 = *((swift_isaMask & *v61) + 0xC8);
          v120 = swift_unknownObjectRetain();
          v119(v120, &protocol witness table for MOSuggestionCollectionView);
          *(&v205 + 1) = type metadata accessor for MOSuggestionCollectionView();
          v206 = &protocol witness table for MOSuggestionCollectionView;
          *&v204 = v5;
          v121 = *((swift_isaMask & *v61) + 0xE0);
          v122 = v5;
          v123 = v121(&v204);
          v124 = (*((swift_isaMask & *v113) + 0x1D0))(v123);
          v126 = v194;
          if (v125)
          {
            v127 = v125;
            v201 = v124;
            v128 = v114();
            v129 = (*((swift_isaMask & *v113) + 0x1C8))();
            v199 = v130;
            v131 = swift_allocObject();
            v202 = v114;
            v132 = v131;
            v133 = v192;
            *(v131 + 16) = v196;
            *(v131 + 24) = v133;
            v134 = *(*v126 + 168);
            v135 = swift_unknownObjectRetain();
            v134(&v204, v135);
            type metadata accessor for MOSuggestionPrivacyTipCellModel();
            v136 = swift_allocObject();
            *(v136 + 88) = 0u;
            *(v136 + 104) = 0;
            *(v136 + 72) = 0u;
            *(v136 + 32) = v128 & 1;
            *(v136 + 40) = v201;
            *(v136 + 48) = v127;
            *(v136 + 56) = v129;
            *(v136 + 64) = v199;
            *(v136 + 16) = partial apply for implicit closure #4 in implicit closure #3 in MOSuggestionCollectionView.collectionView(_:viewForSupplementaryElementOfKind:at:);
            *(v136 + 24) = v132;
            v114 = v202;
            swift_beginAccess();
            v137 = v205;
            *(v136 + 72) = v204;
            *(v136 + 88) = v137;
            *(v136 + 104) = v206;
            v138 = *((swift_isaMask & *v61) + 0x158);

            v138(v139);
          }

          v140 = (v114)(v124);
          v141 = (*(*v126 + 192))() & 1;
          type metadata accessor for MOSuggestionSheetStateOfMindTipCellModel();
          v142 = swift_allocObject();
          *(v142 + 17) = 2;
          v143 = (v142 + 17);
          *(v142 + 16) = v140 & 1;
          swift_beginAccess();
          *v143 = v141;
          v144 = *((swift_isaMask & *v61) + 0x188);

          v144(v145);
          v146 = *(*v126 + 272);
          if (v146(1))
          {
            (*((swift_isaMask & *v61) + 0x1C0))();
            v147 = [v200 collectionViewLayout];
            [v147 invalidateLayout];
          }

          if (v146(2))
          {
            (*((swift_isaMask & *v61) + 0x1B8))();
            v148 = [v200 collectionViewLayout];
            [v148 invalidateLayout];
          }

          swift_unknownObjectRelease();

          goto LABEL_68;
        }
      }

      else
      {
        v63 = String._bridgeToObjectiveC()();
        v64 = String._bridgeToObjectiveC()();
        v65 = IndexPath._bridgeToObjectiveC()().super.isa;
        v61 = [v200 dequeueReusableSupplementaryViewOfKind:v63 withReuseIdentifier:v64 forIndexPath:v65];

        type metadata accessor for MOSuggestionCollectionViewOnboardingSectionHeaderView();
        v66 = swift_dynamicCastClass();
        if (v66)
        {
          v67 = v66;
          *(&v205 + 1) = type metadata accessor for MOSuggestionCollectionView();
          v206 = &protocol witness table for MOSuggestionCollectionView;
          *&v204 = v5;
          v68 = *((swift_isaMask & *v67) + 0x80);
          v203 = v61;
          v69 = v5;
          v70 = v68(&v204);
          v71 = v197;
          v72 = *((swift_isaMask & *v197) + 0x1B0);
          v73 = v72(v70);
          (*((swift_isaMask & *v67) + 0xF0))(v73 & 1);
          v74 = *((swift_isaMask & *v69) + 0x180);
          v189 = v203;
          v75 = v74(v67, &protocol witness table for MOSuggestionCollectionViewOnboardingSectionHeaderView);
          v76 = v71;
          LOBYTE(v71) = v72(v75);
          v77 = swift_allocObject();
          v78 = v192;
          *(v77 + 16) = v196;
          *(v77 + 24) = v78;
          v79 = v194;
          v80 = *(*v194 + 144);
          v81 = swift_unknownObjectRetain();
          LOBYTE(v72) = v80(v81) & 1;
          type metadata accessor for MOSuggestionSheetOnboardingTipCellModel();
          v82 = swift_allocObject();
          *(v82 + 33) = 2;
          v83 = (v82 + 33);
          *(v82 + 32) = v71 & 1;
          *(v82 + 16) = partial apply for implicit closure #2 in implicit closure #1 in MOSuggestionCollectionView.collectionView(_:viewForSupplementaryElementOfKind:at:);
          *(v82 + 24) = v77;
          swift_beginAccess();
          *v83 = v72;
          v84 = *((swift_isaMask & *v67) + 0xE0);

          v84(v85);
          if ((*(*v79 + 272))(0))
          {
            (*((swift_isaMask & *v67) + 0x108))();
            v86 = [v200 collectionViewLayout];
            [v86 invalidateLayout];
          }

          swift_unknownObjectRelease();

          v61 = v189;

          swift_unknownObjectRelease();

          goto LABEL_69;
        }
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return v61;
    }

    swift_unknownObjectRelease();
  }

LABEL_12:
  v30 = objc_allocWithZone(UICollectionReusableView);

  return [v30 init];
}

void closure #2 in MOSuggestionCollectionView.collectionView(_:viewForSupplementaryElementOfKind:at:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexSet();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = IndexPath.section.getter();
  (*(*a1 + 896))(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1002A48B0;
  *(v10 + 32) = IndexPath.section.getter();
  v14[1] = v10;
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, &type metadata accessor for IndexSet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  IndexSet._bridgeToObjectiveC()(v11);
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  [a3 reloadSections:v13];
}

CGFloat MOSuggestionCollectionView.collectionView(_:layout:sizeForItemAt:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*((swift_isaMask & *v3) + 0x100))();
  if (!v8)
  {
    return CGSizeZero.width;
  }

  v9 = (*(*v8 + 752))(a3);
  if (!v9)
  {

    return CGSizeZero.width;
  }

  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  v12 = v11;
  if (v11)
  {
    v13 = a2;
    [v12 minimumInteritemSpacing];
    v15 = v14;
    [v12 sectionInset];
    v17 = v15 + v16;
    v11 = [v12 sectionInset];
    v19 = v17 + v18;
  }

  else
  {
    v19 = 0.0;
  }

  v21 = (*(*v10 + 152))(v11);
  if (v21 > 2)
  {
    if (v21 - 4 >= 2)
    {
      [a1 frame];
      v20 = v28 - v19;
      specialized static MOSuggestionEvergreenCollectionViewCell.calculateEvergreenHeight(width:)(v20);

      return v20;
    }
  }

  else if (v21)
  {
    if (v21 == 1)
    {
      [a1 frame];
      v20 = (v22 - v19) * 0.5;
      specialized static MOSuggestionCollectionViewCell.calculateLabelHeight(width:)(v20);
    }

    else
    {
      [a1 frame];
      v20 = v29;
    }

LABEL_20:

    return v20;
  }

  [a1 frame];
  v20 = v23 - v19;
  specialized static MOSuggestionCollectionViewCell.calculateLabelHeight(width:)(v20);
  v24 = [v4 traitCollection];
  v25 = [v24 preferredContentSizeCategory];

  v26 = static UIContentSizeCategory.> infix(_:_:)();
  if ((*(*v10 + 400))() & 1) != 0 && (v26)
  {
    (*(*v10 + 328))();
  }

  if (((*(*v10 + 320))() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (one-time initialization token for LABEL_HEIGHT != -1)
  {
    swift_once();
  }

  return v20;
}

double MOSuggestionCollectionView.collectionView(_:layout:referenceSizeForFooterInSection:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*((swift_isaMask & *v3) + 0x100))();
  if (!v6)
  {
    return CGSizeZero.width;
  }

  if ((*(*v6 + 720))(a3))
  {
    [a1 frame];
    width = v7;
  }

  else
  {
    width = CGSizeZero.width;
  }

  return width;
}

UIEdgeInsets __swiftcall MOSuggestionCollectionView.collectionView(_:layout:insetForSectionAt:)(UICollectionView _, UICollectionViewLayout layout, Swift::Int insetForSectionAt)
{
  specialized MOSuggestionCollectionView.collectionView(_:layout:insetForSectionAt:)(layout.super.isa, insetForSectionAt);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

id MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v5 + 32))(v9 + v8, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  v10 = objc_opt_self();
  aBlock[4] = partial apply for closure #1 in MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:);
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  aBlock[3] = &block_descriptor_54;
  v11 = _Block_copy(aBlock);
  v12 = v2;

  v13 = [v10 configurationWithIdentifier:0 previewProvider:0 actionProvider:v11];

  _Block_release(v11);
  return v13;
}

void *closure #1 in MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v116 = a4;
    v11 = (*((swift_isaMask & *result) + 0x118))();
    if (!v11)
    {

      return 0;
    }

    v12 = v11;
    v125 = a3;
    v123 = (*((swift_isaMask & *v11) + 0x1C8))();
    v14 = v13;
    v15 = *((swift_isaMask & *v12) + 0x1B0);
    v113 = (swift_isaMask & *v12) + 432;
    v112 = v15;
    v124 = v10;
    v126 = v7;
    if (v15())
    {
      if (v14)
      {
        v16 = [objc_opt_self() mainBundle];
        v130._object = 0x80000001002B0940;
        v17._countAndFlagsBits = 0xE2206F7420646441;
        v17._object = 0xAF9D80E240259C80;
        v130._countAndFlagsBits = 0xD000000000000011;
        v18._countAndFlagsBits = 0;
        v18._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v130);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1002A48B0;
        *(v19 + 56) = &type metadata for String;
        *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v19 + 32) = v123;
        *(v19 + 40) = v14;
        countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
        object = v20;

        goto LABEL_9;
      }
    }

    else
    {
    }

    v21 = [objc_opt_self() mainBundle];
    v131._object = 0x80000001002B7910;
    v22._countAndFlagsBits = 0xD000000000000010;
    v22._object = 0x80000001002B7910;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v131._countAndFlagsBits = 0xD000000000000010;
    v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v131);
    countAndFlagsBits = v24._countAndFlagsBits;
    object = v24._object;

LABEL_9:
    v107 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIAction);
    v25 = String._bridgeToObjectiveC()();
    v119 = objc_opt_self();
    v114 = [v119 systemImageNamed:v25];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v27 = v126;
    v28 = v126[2];
    v118 = v126 + 2;
    v123 = v28;
    v28(v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v125, v6);
    v29 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v117 = *(v27 + 80);
    v111 = v29 + v8;
    v30 = v29;
    v121 = v29;
    v31 = v6;
    v32 = v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = (v29 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    v35 = v124;
    *(v34 + 16) = v124;
    v36 = v27[4];
    v126 = v27 + 4;
    *&v122 = v36;
    v37 = v34 + v30;
    v38 = v31;
    v36(v37, v32, v31);
    *(v34 + v33) = v12;
    v39 = v35;
    v110 = v12;
    v114 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

    countAndFlagsBits = objc_opt_self();
    v40 = [countAndFlagsBits mainBundle];
    v132._object = 0x80000001002B0840;
    v41._countAndFlagsBits = 0xD000000000000014;
    v132._countAndFlagsBits = 0xD000000000000014;
    v41._object = 0x80000001002B0840;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v132);
    object = v43._countAndFlagsBits;
    v104 = v43._object;

    v44 = String._bridgeToObjectiveC()();
    v45 = v119;
    v46 = [v119 systemImageNamed:v44];

    v105 = v32;
    v47 = v125;
    v106 = v38;
    v123(v32, v125, v38);
    v108 = v33;
    v48 = swift_allocObject();
    *(v48 + 16) = v39;
    (v122)(v48 + v121, v32, v38);
    v49 = v110;
    *(v48 + v33) = v110;
    v109 = v39;
    v110 = v49;
    object = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v50 = [countAndFlagsBits mainBundle];
    v133._object = 0xED0000746E656D6FLL;
    v51._countAndFlagsBits = 0x65766F6D6552;
    v133._countAndFlagsBits = 0x4D2065766F6D6552;
    v51._object = 0xE600000000000000;
    v52._countAndFlagsBits = 0;
    v52._object = 0xE000000000000000;
    v53 = NSLocalizedString(_:tableName:bundle:value:comment:)(v51, 0, v50, v52, v133);
    v104 = v53._countAndFlagsBits;
    v103[1] = v53._object;

    v54 = String._bridgeToObjectiveC()();
    v55 = [v45 systemImageNamed:v54];

    v56 = v105;
    v57 = v47;
    v58 = v106;
    v59 = v123;
    v123(v105, v57, v106);
    v60 = swift_allocObject();
    v61 = v116;
    *(v60 + 16) = v116;
    v63 = v121;
    v62 = v122;
    (v122)(v60 + v121, v56, v58);
    v64 = v61;
    v116 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v65 = [countAndFlagsBits mainBundle];
    v134._object = 0xE800000000000000;
    v66._countAndFlagsBits = 0x6B63616264656546;
    v66._object = 0xE800000000000000;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    v134._countAndFlagsBits = 0x6B63616264656546;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v66, 0, v65, v67, v134)._countAndFlagsBits;

    v68 = String._bridgeToObjectiveC()();
    v69 = [v119 systemImageNamed:v68];

    v59(v56, v125, v58);
    v70 = v108;
    v71 = swift_allocObject();
    v72 = v109;
    *(v71 + 16) = v109;
    v62(v71 + v63, v56, v58);
    v73 = v110;
    *(v71 + v70) = v110;
    v74 = v72;
    v75 = v73;
    v76 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIMenu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v77 = swift_allocObject();
    v122 = xmmword_1002A4A70;
    *(v77 + 16) = xmmword_1002A4A70;
    *(v77 + 32) = v76;
    v123 = v76;
    v78._countAndFlagsBits = 0;
    v78._object = 0xE000000000000000;
    v128.value.super.isa = 0;
    v128.is_nil = 0;
    v79.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v78, 0, v128, 1, 0xFFFFFFFFFFFFFFFFLL, v77, v101).super.super.isa;
    v126 = v75;
    if (v112())
    {
      if (one-time initialization token for uiInternalOS != -1)
      {
        swift_once();
      }

      v80 = v114;
      if (static MOAngelControllerWrapper.uiInternalOS == 1)
      {
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_1002A6160;
        *(v81 + 32) = v80;
        *(v81 + 40) = v79;
        v82 = v79.super.super.isa;
        v83 = 1;
      }

      else
      {
        v81 = swift_allocObject();
        v83 = 0;
        *(v81 + 16) = v122;
        *(v81 + 32) = v80;
      }
    }

    else
    {
      if (one-time initialization token for uiInternalOS != -1)
      {
        swift_once();
      }

      v80 = v114;
      if (static MOAngelControllerWrapper.uiInternalOS == 1)
      {
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_1002A9750;
        *(v81 + 32) = v80;
        v84 = object;
        *(v81 + 40) = object;
        *(v81 + 48) = v79;
        v85 = v79.super.super.isa;
        v86 = v84;
        v80 = v114;
        v83 = 1;
      }

      else
      {
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_1002A6160;
        v87 = object;
        *(v81 + 32) = v80;
        *(v81 + 40) = v87;
        v88 = v87;
        v83 = 0;
      }
    }

    v127 = v81;
    v89 = *((swift_isaMask & *v74) + 0x100);
    v90 = v80;
    v91 = v89();
    if (v91)
    {
      v92 = (*(*v91 + 752))(v125);

      v94 = v116;
      if (v92)
      {
        if ((*(*v92 + 432))(v93))
        {

          v81 = swift_allocObject();
          *(v81 + 16) = v122;
          *(v81 + 32) = v90;
          v127 = v81;
          v95 = v90;
          v96 = v126;
          if (((v112)(v95) & 1) == 0)
          {
            if (one-time initialization token for uiInternalOS == -1)
            {
              if (v83)
              {
LABEL_26:
                v97 = v79.super.super.isa;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v96 = v126;
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v81 = v127;
                goto LABEL_34;
              }
            }

            else
            {
              swift_once();
              if (v83)
              {
                goto LABEL_26;
              }
            }
          }

LABEL_34:
          v99._countAndFlagsBits = 0;
          v99._object = 0xE000000000000000;
          v129.value.super.isa = 0;
          v129.is_nil = 0;
          isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v99, 0, v129, 1, 0xFFFFFFFFFFFFFFFFLL, v81, v102.super.super.isa).super.super.isa;

          return isa;
        }

        v98 = v94;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v81 = v127;
      }
    }

    else
    {
      v94 = v116;
    }

    v96 = v126;
    goto LABEL_34;
  }

  return result;
}

uint64_t closure #1 in closure #1 in MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = (*((swift_isaMask & *a2) + 0x100))();
  if (result)
  {
    v7 = (*(*result + 752))(a3);

    if (v7)
    {
      v8 = IndexPath.row.getter();
      v9 = (*(*v7 + 66))(v8, 0, 0, 1, a4);
      (*(*v7 + 55))(v9);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v10 = *(*static MOSuggestionAssetCacheManager.shared + 280);
      v11 = v7[2];
      v10();

      MOSuggestionCollectionView.collectionViewHandleSuggestionSelection(indexPath:interactionState:)(a3, 0);
    }
  }

  return result;
}

uint64_t closure #2 in closure #1 in MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = (*((swift_isaMask & *a2) + 0x100))();
  if (result)
  {
    v7 = (*(*result + 752))(a3);

    if (v7)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v8 = *(*static MOSuggestionAssetCacheManager.shared + 280);
      v9 = v7[2];
      v8();

      v10 = IndexPath.row.getter();
      v11 = (*(*v7 + 69))(v10, 0, 0, 1, a4);
      (*(*v7 + 55))(v11);
      MOSuggestionCollectionView.collectionViewHandleSuggestionSelection(indexPath:interactionState:)(a3, 1);
    }
  }

  return result;
}

void confirmRemove #1 () in MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*((swift_isaMask & *a1) + 0x148))(v7);
  if (v9)
  {
    v11 = v9;
    v12 = v10;
    v13 = (*((swift_isaMask & *a1) + 0x118))();
    if (v13)
    {
      v46 = v12;
      v44 = a2;
      v42 = v13;
      v14 = objc_opt_self();
      v43 = v14;
      v15 = [v14 mainBundle];
      v54._object = 0x80000001002B79A0;
      v16._countAndFlagsBits = 0xD000000000000049;
      v16._object = 0x80000001002B7950;
      v54._countAndFlagsBits = 0xD00000000000002FLL;
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v54);

      v18 = String._bridgeToObjectiveC()();

      v45 = [objc_opt_self() alertControllerWithTitle:0 message:v18 preferredStyle:0];

      v19 = [v14 mainBundle];
      v55._object = 0x80000001002B79D0;
      v20._countAndFlagsBits = 0x4D2065766F6D6552;
      v20._object = 0xED0000746E656D6FLL;
      v55._countAndFlagsBits = 0xD00000000000001ELL;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v55);

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v5 + 16))(&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v4);
      v23 = *(v5 + 80);
      v44 = v11;
      v24 = (v23 + 24) & ~v23;
      v25 = (v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      *(v26 + 16) = v22;
      (*(v5 + 32))(v26 + v24, v8, v4);
      v27 = v42;
      *(v26 + v25) = v42;

      v28 = v27;
      v29 = String._bridgeToObjectiveC()();

      v51 = partial apply for closure #1 in confirmRemove #1 () in MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:);
      v52 = v26;
      aBlock = _NSConcreteStackBlock;
      v48 = 1107296256;
      v49 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
      v50 = &block_descriptor_119;
      v30 = _Block_copy(&aBlock);

      v31 = objc_opt_self();
      v32 = [v31 actionWithTitle:v29 style:2 handler:v30];
      _Block_release(v30);

      v33 = [v43 mainBundle];
      v56._object = 0x80000001002B79F0;
      v34._countAndFlagsBits = 0x6C65636E6143;
      v34._object = 0xE600000000000000;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v56._countAndFlagsBits = 0xD000000000000013;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v56);

      v36 = String._bridgeToObjectiveC()();

      v51 = MOSuggestionInterstitialExpandableListViewCellConstants.init();
      v52 = 0;
      aBlock = _NSConcreteStackBlock;
      v48 = 1107296256;
      v49 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
      v50 = &block_descriptor_122;
      v37 = _Block_copy(&aBlock);

      v38 = [v31 actionWithTitle:v36 style:1 handler:v37];
      _Block_release(v37);

      v39 = v45;
      [v45 addAction:v32];
      [v39 addAction:v38];
      ObjectType = swift_getObjectType();
      (*(v46 + 8))(v39, ObjectType);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t closure #4 in closure #1 in MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = (*((swift_isaMask & *a2) + 0x100))();
  if (result)
  {
    v7 = (*(*result + 752))(a3);

    if (v7)
    {
      v8 = IndexPath.row.getter();
      (*(*v7 + 536))(v8, a4);
    }
  }

  return result;
}

id UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?);
  v16 = &block_descriptor_100_0;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v16 = &block_descriptor_97;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

void closure #1 in confirmRemove #1 () in MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *((swift_isaMask & *Strong) + 0x100);
    v9 = v8();
    if (v9)
    {
      v10 = (*(*v9 + 752))(a3);

      if (v10)
      {
        v11 = IndexPath.row.getter();
        v12 = (*(*v10 + 68))(v11, a4);
        v13 = (v8)(v12);
        if (v13)
        {
          v14 = *(*v13 + 888);
          v15 = v10[2];
          v14();
        }
      }
    }
  }
}

uint64_t implicit closure #2 in implicit closure #1 in MOSuggestionCollectionView.presentInterstitialFor(cellViewModel:indexPath:fromNotification:)(uint64_t a1, char a2, void *a3)
{
  result = (*((swift_isaMask & *a3) + 0x130))();
  if (result)
  {
    if (a2)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 40))(ObjectType, v8);
    }

    v10 = (*((swift_isaMask & *a3) + 0x100))();
    if (v10)
    {
      (*(*v10 + 776))(a1, a2 & 1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?)(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIMenuElement);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

char *specialized MOSuggestionCollectionView.init(controller:presentationDelegate:dialogDelegate:segmentedVisibilityDelegate:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_suggestionCollectionView] = 0;
  v14 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_onboardingManager;
  *&a6[v14] = [objc_opt_self() sharedInstance];
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_viewModel] = 0;
  v15 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_engagementWriter;
  *&a6[v15] = [objc_opt_self() sharedInstance];
  swift_unknownObjectWeakInit();
  v16 = &a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_presentationDelegate];
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_presentationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = &a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_dialogDelegate];
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_dialogDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = &a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_segmentedVisibilityDelegate];
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_segmentedVisibilityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_newEntryHeaderDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_privacyBadge;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  *&a6[v19] = [objc_allocWithZone(type metadata accessor for MOSuggestionPickerPrivacyBadge()) initWithFrame:{CGRectZero.origin.x, y, width, height}];
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_headerOffsetHeight] = 0;
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_currentBadgeOffset] = 0;
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_privacyBadgeTopConstraint] = 0;
  v70 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_tipCoordinator;
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_tipCoordinator] = 0;
  v23 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_refresher;
  *&a6[v23] = [objc_allocWithZone(UIRefreshControl) init];
  v24 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_activityIndicator;
  v25 = [objc_allocWithZone(UIActivityIndicatorView) init];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&a6[v24] = v25;
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_protectedContentShield] = 0;
  v26 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_supportingLoadingTextLabel;
  closure #1 in variable initialization expression of MOSuggestionCollectionView.supportingLoadingTextLabel();
  *&a6[v26] = v27;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v16 + 1) = a11;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_beginAccess();
  *(v17 + 1) = a10;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_beginAccess();
  *(v18 + 1) = a12;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *&a6[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_options] = a5;
  v28 = (*((swift_isaMask & *a1) + 0x1D0))(a5);
  v30 = v29;
  v31 = (*((swift_isaMask & *a1) + 0x1C8))();
  v33 = v32;
  LOBYTE(a1) = (*((swift_isaMask & *a1) + 0x1B0))();
  type metadata accessor for MOSuggestionTipCoordinator();
  swift_allocObject();
  *&a6[v70] = MOSuggestionTipCoordinator.init(clientId:clientName:isPublicUI:)(v28, v30, v31, v33, a1 & 1);

  v73.receiver = a6;
  v73.super_class = type metadata accessor for MOSuggestionCollectionView();
  v34 = objc_msgSendSuper2(&v73, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v35 = *&v34[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_tipCoordinator];
  if (v35)
  {
    v36 = *(*v35 + 128);

    v37 = v34;
    v36(v34, &protocol witness table for MOSuggestionCollectionView);
  }

  v38 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_activityIndicator;
  v39 = *&v34[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_activityIndicator];
  v40 = v34;
  [v40 addSubview:v39];
  v41 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_supportingLoadingTextLabel;
  [v40 addSubview:*&v40[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_supportingLoadingTextLabel]];
  v72 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1002A48D0;
  v43 = [*&v34[v38] centerYAnchor];
  v44 = [v40 centerYAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v42 + 32) = v45;
  v46 = [*&v34[v38] centerXAnchor];
  v47 = [v40 centerXAnchor];

  v48 = [v46 constraintEqualToAnchor:v47];
  *(v42 + 40) = v48;
  v49 = [*&v34[v38] heightAnchor];
  v50 = [v49 constraintEqualToConstant:50.0];

  *(v42 + 48) = v50;
  v51 = [*&v34[v38] widthAnchor];
  v52 = [v51 constraintEqualToConstant:50.0];

  *(v42 + 56) = v52;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v72 activateConstraints:isa];

  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1002A48D0;
  v55 = [*&v40[v41] topAnchor];
  v56 = [*&v34[v38] bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:2.0];

  *(v54 + 32) = v57;
  v58 = [*&v40[v41] centerXAnchor];
  v59 = [v40 centerXAnchor];

  v60 = [v58 constraintEqualToAnchor:v59];
  *(v54 + 40) = v60;
  v61 = [*&v40[v41] leadingAnchor];
  v62 = [v40 leadingAnchor];

  v63 = [v61 constraintEqualToAnchor:v62 constant:20.0];
  *(v54 + 48) = v63;
  v64 = [*&v40[v41] trailingAnchor];
  v65 = [v40 trailingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65 constant:-20.0];

  *(v54 + 56) = v66;
  v67 = Array._bridgeToObjectiveC()().super.isa;

  [v72 activateConstraints:v67];

  v68 = *&v40[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_refresher];
  [v68 addTarget:v40 action:"handlePullToRefreshTrigger" forControlEvents:4096];

  return v40;
}

char *specialized MOSuggestionCollectionView.__allocating_init(controller:presentationDelegate:dialogDelegate:segmentedVisibilityDelegate:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = objc_allocWithZone(type metadata accessor for MOSuggestionCollectionView());

  return specialized MOSuggestionCollectionView.init(controller:presentationDelegate:dialogDelegate:segmentedVisibilityDelegate:options:)(a1, a2, a3, a4, a5, v18, a7, a8, a9, a10, a11, a12);
}

void specialized MOSuggestionCollectionView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_suggestionCollectionView) = 0;
  v1 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_onboardingManager;
  *(v0 + v1) = [objc_opt_self() sharedInstance];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_viewModel) = 0;
  v2 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_engagementWriter;
  *(v0 + v2) = [objc_opt_self() sharedInstance];
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_presentationDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_dialogDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_segmentedVisibilityDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_newEntryHeaderDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_privacyBadge;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for MOSuggestionPickerPrivacyBadge()) initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_headerOffsetHeight) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_currentBadgeOffset) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_privacyBadgeTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_tipCoordinator) = 0;
  v4 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_refresher;
  *(v0 + v4) = [objc_allocWithZone(UIRefreshControl) init];
  v5 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_activityIndicator;
  v6 = [objc_allocWithZone(UIActivityIndicatorView) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v5) = v6;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_protectedContentShield) = 0;
  v7 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionCollectionView_supportingLoadingTextLabel;
  closure #1 in variable initialization expression of MOSuggestionCollectionView.supportingLoadingTextLabel();
  *(v0 + v7) = v8;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001964FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10019657C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_10Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #7 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8, v9, v10, v11);
}

void partial apply for closure #5 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:)()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  closure #3 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(*(v0 + 16), *(v0 + 24), v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t objectdestroy_24Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #4 in MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8);
}

void partial apply for closure #2 in MOSuggestionCollectionView.collectionView(_:viewForSupplementaryElementOfKind:at:)()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #2 in MOSuggestionCollectionView.collectionView(_:viewForSupplementaryElementOfKind:at:)(v3, v0 + v2, v4);
}