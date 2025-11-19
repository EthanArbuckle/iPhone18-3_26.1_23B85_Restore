id PresenterServerViewController.okAction.getter()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v12._object = 0xEE006E6F69746361;
  v12._countAndFlagsBits = 0x20746C7561666544;
  v3._countAndFlagsBits = 19279;
  v3._object = 0xE200000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v12);

  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = v0;
  v7 = String._bridgeToObjectiveC()();

  aBlock[4] = partial apply for closure #1 in PresenterServerViewController.okAction.getter;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_32;
  v8 = _Block_copy(aBlock);

  v9 = [objc_opt_self() actionWithTitle:v7 style:0 handler:v8];
  _Block_release(v8);

  return v9;
}

void closure #1 in PresenterServerViewController.okAction.getter(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = closure #1 in PresenterServerViewController.dismissAndCleanup(animated:)partial apply;
  v5[5] = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed () -> ();
  v5[3] = &block_descriptor_132;
  v4 = _Block_copy(v5);

  [a2 dismissViewControllerAnimated:1 completion:v4];
  _Block_release(v4);
}

Swift::Void __swiftcall PresenterServerViewController.dismissAndCleanup(animated:)(Swift::Bool animated)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = partial apply for closure #1 in PresenterServerViewController.dismissAndCleanup(animated:);
  v5[5] = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed () -> ();
  v5[3] = &block_descriptor_36;
  v4 = _Block_copy(v5);

  [v1 dismissViewControllerAnimated:animated completion:v4];
  _Block_release(v4);
}

id PresenterServerViewController.noPrimaryPhoneAlert.getter()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass:ObjCClassFromMetadata];
  v13._object = 0x80000001002B3F10;
  v3._object = 0x80000001002AFEF0;
  v13._countAndFlagsBits = 0xD000000000000022;
  v3._countAndFlagsBits = 0xD000000000000016;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v13);

  v5 = [v1 bundleForClass:ObjCClassFromMetadata];
  v14._object = 0x80000001002B4360;
  v6._object = 0x80000001002B42A0;
  v14._countAndFlagsBits = 0xD00000000000002CLL;
  v6._countAndFlagsBits = 0x10000000000000B7;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v14);

  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  [v10 setModalPresentationStyle:-1];
  v11 = PresenterServerViewController.okAction.getter();
  [v10 addAction:v11];
  [v10 setPreferredAction:v11];

  return v10;
}

uint64_t closure #2 in PresenterServerViewController.showInfoPopups(controller:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v7 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  URL.init(string:)();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  outlined init with copy of (String, Date?)(v9, v7, &_s10Foundation3URLVSgMd);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  outlined init with take of Date?(v7, v13 + v12, &_s10Foundation3URLVSgMd);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in closure #2 in PresenterServerViewController.showInfoPopups(controller:), v13);

  return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v9, &_s10Foundation3URLVSgMd);
}

uint64_t closure #1 in closure #2 in PresenterServerViewController.showInfoPopups(controller:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a1;
  v4[19] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v6;
  v4[23] = v5;

  return _swift_task_switch(closure #1 in closure #2 in PresenterServerViewController.showInfoPopups(controller:), v6, v5);
}

uint64_t closure #1 in closure #2 in PresenterServerViewController.showInfoPopups(controller:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = [objc_opt_self() sharedApplication];
  v0[24] = v3;
  outlined init with copy of (String, Date?)(v2, v1, &_s10Foundation3URLVSgMd);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v8 = 0;
  if (v6 != 1)
  {
    v9 = v0[20];
    URL._bridgeToObjectiveC()(v7);
    v8 = v10;
    (*(v5 + 8))(v9, v4);
  }

  v0[25] = v8;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = closure #1 in closure #2 in PresenterServerViewController.showInfoPopups(controller:);
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v0[13] = &block_descriptor_139;
  v0[14] = v11;
  [v3 openURL:v8 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return _swift_task_switch(closure #1 in closure #2 in PresenterServerViewController.showInfoPopups(controller:), v2, v1);
}

{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 144);

  *v3 = *(v0 + 208);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t PresenterServerViewController.didReceiveUpdateRequest(with:animated:client:)(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v44 = a1;
  v6 = type metadata accessor for Client();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v41 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v42 = &v41 - v10;
  v46 = type metadata accessor for Logger();
  v11 = *(v46 - 8);
  v12 = __chkstk_darwin(v46);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  (*(v7 + 16))(&v41 - v21, a3, v6);
  v43 = v7;
  (*(v7 + 56))(v22, 0, 1, v6);
  (*((swift_isaMask & *v4) + 0x90))(v22);
  type metadata accessor for CommonLogger();
  static CommonLogger.views.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    *(v25 + 4) = SuggestionSheetViewState.rawValue.getter();
    *(v25 + 12) = 1024;
    *(v25 + 14) = v45 & 1;
    _os_log_impl(&_mh_execute_header, v23, v24, "[PresenterServerViewController] didReceiveUpdateRequest, state: %ld, animated: %{BOOL}d", v25, 0x12u);
  }

  v26 = *(v11 + 8);
  v26(v16, v46);
  v27 = *(v4 + OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController);
  if (v27 && (v28 = [v27 sheetPresentationController]) != 0)
  {

    v29 = type metadata accessor for TaskPriority();
    v30 = v42;
    (*(*(v29 - 8) + 56))(v42, 1, 1, v29);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v32 = static MainActor.shared.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = &protocol witness table for MainActor;
    *(v33 + 32) = v44;
    *(v33 + 40) = v31;
    *(v33 + 48) = v45 & 1;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v30, &async function pointer to partial apply for closure #1 in PresenterServerViewController.didReceiveUpdateRequest(with:animated:client:), v33);
  }

  else
  {
    static CommonLogger.views.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "[PresenterServerViewController] - Received an update request while no sheet is currently presented. Rejecting!", v37, 2u);
    }

    v38 = (v26)(v14, v46);
    (*((swift_isaMask & *v4) + 0x88))(v38);
    v39 = v43;
    if ((*(v43 + 48))(v20, 1, v6) == 1)
    {
      return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v20, &_s9MomentsUI6ClientVSgMd);
    }

    else
    {
      v40 = v41;
      (*(v39 + 32))(v41, v20, v6);
      if (Client.sharedServer.getter())
      {
        swift_getObjectType();
        dispatch thunk of SharedServer.sendSuggestionSheetStateUpdate(to:for:)();
        swift_unknownObjectRelease();
      }

      return (*(v39 + 8))(v40, v6);
    }
  }
}

uint64_t closure #1 in PresenterServerViewController.didReceiveUpdateRequest(with:animated:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 136) = a6;
  *(v6 + 88) = a4;
  *(v6 + 96) = a5;
  v7 = type metadata accessor for Logger();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 128) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in PresenterServerViewController.didReceiveUpdateRequest(with:animated:client:), v9, v8);
}

uint64_t closure #1 in PresenterServerViewController.didReceiveUpdateRequest(with:animated:client:)()
{

  v1 = SuggestionSheetViewState.rawValue.getter();
  if (v1 == SuggestionSheetViewState.rawValue.getter())
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.views.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[PresenterServerViewController] Dismiss update", v4, 2u);
    }

    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 104);

    (*(v6 + 8))(v5, v7);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = *(v0 + 136);
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v0 + 48) = closure #1 in PresenterServerViewController.dismissAndCleanup(animated:)partial apply;
      *(v0 + 56) = v11;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = thunk for @escaping @callee_guaranteed () -> ();
      *(v0 + 40) = &block_descriptor_124;
      v12 = _Block_copy((v0 + 16));

      [v9 dismissViewControllerAnimated:v10 completion:v12];
      _Block_release(v12);
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

void closure #1 in PresenterServerViewController.dismissAndCleanup(animated:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &aBlock[-1] - v8;
  v10 = type metadata accessor for Client();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_7;
  }

  v15 = Strong;
  (*((swift_isaMask & *Strong) + 0x88))();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_7:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v9, &_s9MomentsUI6ClientVSgMd);
    goto LABEL_8;
  }

  (*(v11 + 32))(v13, v9, v10);
  if (Client.sharedServer.getter())
  {
    swift_getObjectType();
    dispatch thunk of SharedServer.sendSuggestionSheetStateUpdate(to:for:)();
    swift_unknownObjectRelease();
  }

  (*(v11 + 8))(v13, v10);
LABEL_8:
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 view];

    if (!v18)
    {
      __break(1u);
      return;
    }

    v19 = [v18 window];

    if (v19)
    {
      v20 = [v19 windowScene];

      if (v20)
      {
        v21 = [v20 session];

        if (v21)
        {
          type metadata accessor for CommonLogger();
          static CommonLogger.viewModel.getter();
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v22, v23, "[dismissAndCleanup] sceneSession non nil", v24, 2u);
          }

          (*(v1 + 8))(v6, v0);
          v25 = [objc_opt_self() sharedApplication];
          aBlock[4] = closure #1 in closure #1 in PresenterServerViewController.dismissAndCleanup(animated:);
          aBlock[5] = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
          aBlock[3] = &block_descriptor_127;
          v26 = _Block_copy(aBlock);
          [v25 requestSceneSessionDestruction:v21 options:0 errorHandler:v26];
          _Block_release(v26);
        }
      }
    }
  }

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = *&v27[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController];
    *&v27[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController] = 0;
  }

  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    (*((swift_isaMask & *v29) + 0xC0))(0);
  }

  type metadata accessor for CommonLogger();
  static CommonLogger.viewModel.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "[dismissAndCleanup] set VC as nil", v33, 2u);
  }

  (*(v1 + 8))(v4, v0);
}

uint64_t closure #1 in closure #1 in PresenterServerViewController.dismissAndCleanup(animated:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.viewModel.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[dismissAndCleanup] sceneSession destruction error=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t protocol witness for SuggestionSheetPresenterControllerDelegate.didReceivePresentationRequest(with:client:) in conformance PresenterServerViewController(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Client();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a2, v5);
  type metadata accessor for MainActor();
  v13 = v2;
  v14 = a1;
  v15 = static MainActor.shared.getter();
  v16 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = &protocol witness table for MainActor;
  *(v17 + 4) = v13;
  *(v17 + 5) = v14;
  (*(v6 + 32))(&v17[v16], v8, v5);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:)partial apply, v17);
}

Swift::Void __swiftcall PresenterServerViewController.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(UISheetPresentationController a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for Client();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [(objc_class *)a1.super.super.isa selectedDetentIdentifier];
  if (v10)
  {
    v11 = v10;
    (*((swift_isaMask & *v1) + 0x88))();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v5, &_s9MomentsUI6ClientVSgMd);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      if (one-time initialization token for full != -1)
      {
        swift_once();
      }

      v12 = [static SuggestionSheetDetents.full identifier];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
      }

      else
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      SuggestionSheetViewState.rawValue.getter();
      SuggestionSheetViewState.rawValue.getter();
      if (Client.sharedServer.getter())
      {
        swift_getObjectType();
        dispatch thunk of SharedServer.sendSuggestionSheetStateUpdate(to:for:)();

        swift_unknownObjectRelease();
        (*(v7 + 8))(v9, v6);
      }

      else
      {
        (*(v7 + 8))(v9, v6);
      }
    }
  }
}

id one-time initialization function for full()
{
  result = [objc_opt_self() largeDetent];
  static SuggestionSheetDetents.full = result;
  return result;
}

{
  result = [objc_opt_self() largeDetent];
  static SuggestionSheetDetents.full = result;
  return result;
}

uint64_t _sSS10describingSSx_tcs23CustomStringConvertibleRzlufCSo20UIUserInterfaceIdiomV_Tt0g5Tm(uint64_t a1, uint64_t a2)
{
  if (a1 == 1)
  {
    return 6578544;
  }

  if (a1)
  {
    return _sSS10describingSSx_tcs23CustomStringConvertibleRzlufCSo20UIUserInterfaceIdiomV_Tt0g5Tm(a1, a2);
  }

  return 0x656E6F6870;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UIUserInterfaceIdiom(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*v2 == 1)
  {
    return 6578544;
  }

  if (v3)
  {
    return _sSS10describingSSx_tcs23CustomStringConvertibleRzlufCSo20UIUserInterfaceIdiomV_Tt0g5Tm(v3, a2);
  }

  return 0x656E6F6870;
}

void PresenterServerViewController.journalingSuggestionsOnboardingViewControllerDidTapCustomizeSuggestions(_:)(void *a1)
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
    _os_log_impl(&_mh_execute_header, v6, v7, "[PresenterServerViewController] Presenting Settings", v8, 2u);
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

void PresenterServerViewController.journalingSuggestionsOnboardingViewControllerDidTapTurnOnJournalingSuggestions(_:onboardingOnlyPresentation:)(void *a1, int a2)
{
  v3 = v2;
  v37 = a2;
  v35 = a1;
  v4 = type metadata accessor for Client();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v34 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v37 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "[PresenterServerViewController] Finishing suggestions onboarding, onboardingOnlyPresentation: %{BOOL}d", v18, 8u);
  }

  (*(v13 + 8))(v15, v12);
  v19 = [objc_opt_self() sharedInstance];
  [v19 setOnboardingFlowCompletionStatus:2];

  v20 = *((swift_isaMask & *v3) + 0x88);
  v20();
  v21 = v36;
  v22 = *(v36 + 48);
  if (v22(v11, 1, v4))
  {
    v23 = outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_s9MomentsUI6ClientVSgMd);
  }

  else
  {
    v24 = v34;
    (*(v21 + 16))(v34, v11, v4);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_s9MomentsUI6ClientVSgMd);
    Client.connectionBundleIdentifier.getter();
    v25 = v21;
    v27 = v26;
    v23 = (*(v25 + 8))(v24, v4);
    if (v27)
    {
      static DefaultsManager.Onboarding.setOnboardingApp(clientBundleID:)();
    }
  }

  (v20)(v23);
  if (v22(v9, 1, v4))
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v9, &_s9MomentsUI6ClientVSgMd);
  }

  else
  {
    v28 = v36;
    v29 = v34;
    (*(v36 + 16))(v34, v9, v4);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v9, &_s9MomentsUI6ClientVSgMd);
    Client.connectionBundleIdentifier.getter();
    (*(v28 + 8))(v29, v4);
  }

  lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type PresenterServerViewController and conformance PresenterServerViewController, type metadata accessor for PresenterServerViewController);
  objc_allocWithZone(type metadata accessor for NotificationsOnboardingViewController());
  v30 = v3;
  v31 = NotificationsOnboardingViewController.init(delegate:onboardingOnlyPresentation:clientBundleIdentifier:)();
  v32 = [v35 navigationController];
  if (v32)
  {
    v33 = v32;
    [v32 pushViewController:v31 animated:1];
  }
}

void PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue(_:onboardingOnlyPresentation:)(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[PresenterServerViewController] journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue", v12, 2u);
  }

  (*(v7 + 8))(v9, v6);
  v13 = objc_allocWithZone(UNUserNotificationCenter);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 initWithBundleIdentifier:v14];

  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2 & 1;
  aBlock[4] = partial apply for closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue(_:onboardingOnlyPresentation:);
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_47;
  v17 = _Block_copy(aBlock);
  v18 = v3;
  v19 = a1;

  [v15 requestAuthorizationWithOptions:6 completionHandler:v17];

  _Block_release(v17);
}

uint64_t closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue(_:onboardingOnlyPresentation:)(char a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = objc_opt_self();
  v12 = [v11 currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13)
  {
    v14 = [v11 currentDevice];
    v15 = [v14 userInterfaceIdiom];

    if (v15 == 1)
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 32) = a1 & 1;
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue(_:onboardingOnlyPresentation:), v17);
    }
  }

  else
  {
    type metadata accessor for NotificationHandlingManager();
    v18 = static NotificationHandlingManager.shared.getter();
    NotificationHandlingManager.setNotificationSchedulePostPhoneOnboarding(authorized:)(a1 & 1);
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v21 = a4;

  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = &protocol witness table for MainActor;
  *(v23 + 32) = v21;
  *(v23 + 40) = a5 & 1;
  *(v23 + 48) = v20;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #2 in closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue(_:onboardingOnlyPresentation:), v23);
}

uint64_t closure #1 in closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue(_:onboardingOnlyPresentation:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = (*((swift_isaMask & *static SuggestionNotificationManager.shared) + 0xA0) + **((swift_isaMask & *static SuggestionNotificationManager.shared) + 0xA0));
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);
  v2 = *(v0 + 24);

  return v4(v2);
}

uint64_t closure #2 in closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue(_:onboardingOnlyPresentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 184) = a5;
  *(v6 + 64) = a4;
  *(v6 + 72) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd);
  *(v6 + 80) = swift_task_alloc();
  v7 = type metadata accessor for Client();
  *(v6 + 88) = v7;
  *(v6 + 96) = *(v7 - 8);
  *(v6 + 104) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 144) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 152) = v10;
  *(v6 + 160) = v9;

  return _swift_task_switch(closure #2 in closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue(_:onboardingOnlyPresentation:), v10, v9);
}

uint64_t closure #2 in closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue(_:onboardingOnlyPresentation:)()
{
  v1 = [*(v0 + 64) navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  if (*(v0 + 184))
  {

    type metadata accessor for CommonLogger();
    static CommonLogger.onboarding.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[PresenterServerViewController] Finishing Onboarding, now dismissing", v5, 2u);
    }

    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = *(v0 + 112);

    (*(v7 + 8))(v6, v8);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    v12 = *(v0 + 80);
    if (Strong)
    {
      v13 = Strong;
      (*((swift_isaMask & *Strong) + 0x88))();

      if ((*(v11 + 48))(v12, 1, v10) != 1)
      {
        (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 80), *(v0 + 88));
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v15 = *(v0 + 96);
        v14 = *(v0 + 104);
        v16 = *(v0 + 88);
        MOPresenterServer.sendSuggestionSheetStateUpdate(to:for:)(0, v14);
        (*(v15 + 8))(v14, v16);
        goto LABEL_20;
      }
    }

    else
    {
      (*(v11 + 56))(*(v0 + 80), 1, 1, *(v0 + 88));
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 80), &_s9MomentsUI6ClientVSgMd);
LABEL_20:

    v26 = *(v0 + 8);

    return v26();
  }

  type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "[PresenterServerViewController] Finishing Onboarding, now presenting pending sheet content", v19, 2u);
  }

  v20 = *(v0 + 136);
  v21 = *(v0 + 112);
  v22 = *(v0 + 120);

  (*(v22 + 8))(v20, v21);
  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 168) = v23;
  if (!v23)
  {

    goto LABEL_20;
  }

  v24 = swift_task_alloc();
  *(v0 + 176) = v24;
  *v24 = v0;
  v24[1] = closure #2 in closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue(_:onboardingOnlyPresentation:);

  return PresenterServerViewController.presentPendingSheetContentViewController()();
}

{
  v1 = *v0;
  v2 = *(*v0 + 168);

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return _swift_task_switch(closure #2 in closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue(_:onboardingOnlyPresentation:), v4, v3);
}

void PresenterServerViewController.journalingSuggestionsOnboardingViewControllerDidTapNotNow(_:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[PresenterServerViewController] Dismissing Onboarding", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [objc_opt_self() sharedInstance];
  [v9 setOnboardingFlowCompletionStatus:1];

  static DefaultsManager.Onboarding.increaseDeferralCount()();
  v10 = [a1 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in PresenterServerViewController.journalingSuggestionsOnboardingViewControllerDidTapNotNow(_:);
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_51;
    v13 = _Block_copy(aBlock);

    [v11 dismissViewControllerAnimated:1 completion:v13];
    _Block_release(v13);
  }
}

void closure #1 in PresenterServerViewController.journalingSuggestionsOnboardingViewControllerDidTapNotNow(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = closure #1 in PresenterServerViewController.dismissAndCleanup(animated:)partial apply;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_107;
    v3 = _Block_copy(aBlock);

    [v1 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }
}

uint64_t PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapNotNow(_:onboardingOnlyPresentation:)(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "[PresenterServerViewController] Dismissing notification onboarding", v13, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v16 = a1;

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  *(v18 + 32) = v16;
  *(v18 + 40) = a2 & 1;
  *(v18 + 48) = v15;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapNotNow(_:onboardingOnlyPresentation:), v18);
}

uint64_t closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapNotNow(_:onboardingOnlyPresentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 184) = a5;
  *(v6 + 64) = a4;
  *(v6 + 72) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd);
  *(v6 + 80) = swift_task_alloc();
  v7 = type metadata accessor for Client();
  *(v6 + 88) = v7;
  *(v6 + 96) = *(v7 - 8);
  *(v6 + 104) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 144) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 152) = v10;
  *(v6 + 160) = v9;

  return _swift_task_switch(closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapNotNow(_:onboardingOnlyPresentation:), v10, v9);
}

uint64_t closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapNotNow(_:onboardingOnlyPresentation:)()
{
  v1 = [*(v0 + 64) navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  if (*(v0 + 184))
  {

    type metadata accessor for CommonLogger();
    static CommonLogger.onboarding.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[PresenterServerViewController] Finishing Onboarding, now dismissing", v5, 2u);
    }

    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = *(v0 + 112);

    (*(v7 + 8))(v6, v8);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    v12 = *(v0 + 80);
    if (Strong)
    {
      v13 = Strong;
      (*((swift_isaMask & *Strong) + 0x88))();

      if ((*(v11 + 48))(v12, 1, v10) != 1)
      {
        (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 80), *(v0 + 88));
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v15 = *(v0 + 96);
        v14 = *(v0 + 104);
        v16 = *(v0 + 88);
        MOPresenterServer.sendSuggestionSheetStateUpdate(to:for:)(0, v14);
        (*(v15 + 8))(v14, v16);
        goto LABEL_20;
      }
    }

    else
    {
      (*(v11 + 56))(*(v0 + 80), 1, 1, *(v0 + 88));
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 80), &_s9MomentsUI6ClientVSgMd);
LABEL_20:

    v26 = *(v0 + 8);

    return v26();
  }

  type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "[PresenterServerViewController] Finishing Onboarding, now presenting pending sheet content", v19, 2u);
  }

  v20 = *(v0 + 136);
  v21 = *(v0 + 112);
  v22 = *(v0 + 120);

  (*(v22 + 8))(v20, v21);
  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 168) = v23;
  if (!v23)
  {

    goto LABEL_20;
  }

  v24 = swift_task_alloc();
  *(v0 + 176) = v24;
  *v24 = v0;
  v24[1] = closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapNotNow(_:onboardingOnlyPresentation:);

  return PresenterServerViewController.presentPendingSheetContentViewController()();
}

{
  v1 = *v0;
  v2 = *(*v0 + 168);

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return _swift_task_switch(closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapNotNow(_:onboardingOnlyPresentation:), v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:)(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[PresenterServerViewController] Finishing Onboarding", v12, 2u);
  }

  (*(v7 + 8))(v9, v6);
  static DefaultsManager.SyncOnboarding.finishOnboarding()();
  type metadata accessor for MomentsUIManager();
  v13 = static MomentsUIManager.shared.getter();
  v14 = dispatch thunk of MomentsUIManager.cloudManager.getter();

  specialized BTask.init(name:operation:)(0xD00000000000007ELL, 0x80000001002B43C0, &async function pointer to partial apply for closure #1 in PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:), v14);
  $defer #1 () in PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:)(v3, a2 & 1, a1);
}

void $defer #1 () in PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:)(void *a1, int a2, void *a3)
{
  v31 = a3;
  v30 = a2;
  v4 = type metadata accessor for Client();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - v13;
  v15 = *((swift_isaMask & *a1) + 0x88);
  v15(v12);
  v16 = v5;
  v17 = *(v5 + 48);
  v18 = v17(v14, 1, v4);
  v29 = v16;
  if (v18)
  {
    v19 = outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_s9MomentsUI6ClientVSgMd);
  }

  else
  {
    (*(v16 + 16))(v7, v14, v4);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_s9MomentsUI6ClientVSgMd);
    v20 = v16;
    v28 = Client.connectionBundleIdentifier.getter();
    v22 = v21;
    v19 = (*(v20 + 8))(v7, v4);
    if (v22)
    {
      static DefaultsManager.Onboarding.setOnboardingApp(clientBundleID:)();
    }
  }

  v15(v19);
  if (v17(v11, 1, v4))
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_s9MomentsUI6ClientVSgMd);
  }

  else
  {
    v23 = v29;
    (*(v29 + 16))(v7, v11, v4);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_s9MomentsUI6ClientVSgMd);
    Client.connectionBundleIdentifier.getter();
    (*(v23 + 8))(v7, v4);
  }

  lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type PresenterServerViewController and conformance PresenterServerViewController, type metadata accessor for PresenterServerViewController);
  objc_allocWithZone(type metadata accessor for NotificationsOnboardingViewController());
  v24 = a1;
  v25 = NotificationsOnboardingViewController.init(delegate:onboardingOnlyPresentation:clientBundleIdentifier:)();
  v26 = [v31 navigationController];
  if (v26)
  {
    v27 = v26;
    [v26 pushViewController:v25 animated:1];
  }
}

uint64_t closure #1 in PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3[2] = a3;
  v4 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v3[3] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[8] = v6;
  v7 = lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, &type metadata accessor for CloudManager);
  *v6 = v3;
  v6[1] = closure #1 in PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:);

  return CloudManagerProtocol.refresh(force:wait:_:_:)(1, 0, 0xD000000000000060, 0x80000001002B4500, 870, v4, v7);
}

uint64_t closure #1 in PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:)()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = closure #1 in PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:);

  return CloudManager.getDeviceDB()();
}

{
  if (v0[10])
  {
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB);
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:), v2, v1);
  }

  else
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.onboarding.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[7];
    v7 = v0[4];
    v8 = v0[5];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[PresenterServerViewController] Unable to nominate primary device; cloudManager or deviceDB is nil", v9, 2u);
    }

    (*(v8 + 8))(v6, v7);

    v10 = v0[1];

    return v10();
  }
}

{
  CloudDevicesDB.primaryDevice.getter();

  return _swift_task_switch(closure #1 in PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:), 0, 0);
}

{
  v1 = v0[3];
  v2 = type metadata accessor for CloudDevice();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v3 == 1)
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = closure #1 in PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:);

    return CloudDevicesDB.autoNominateDevice()();
  }

  else
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.onboarding.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[4];
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

  return _swift_task_switch(closure #1 in PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:)(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(closure #1 in PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:), 0, 0);
}

void PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapNotNow(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "[PresenterServerViewController] Deferring Onboarding", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  static DefaultsManager.SyncOnboarding.deferOnboarding()();
  v11 = [a1 navigationController];
  if (v11)
  {
    v12 = v11;
    [v11 dismissViewControllerAnimated:1 completion:0];
  }

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = closure #1 in PresenterServerViewController.dismissAndCleanup(animated:)partial apply;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_62;
  v14 = _Block_copy(aBlock);

  [v2 dismissViewControllerAnimated:1 completion:v14];
  _Block_release(v14);
}

void PresenterServerViewController.didCancel()(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = a1;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> ();
  v7[3] = a2;
  v6 = _Block_copy(v7);

  [v2 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

void protocol witness for IneligibleForSyncOnboardingViewControllerDelegate.didCancel() in conformance PresenterServerViewController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = a3;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed () -> ();
  v10[3] = a4;
  v9 = _Block_copy(v10);

  [v7 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);
}

double partial apply for closure #1 in static SuggestionSheetDetents.peek(identifier:fraction:)(void *a1)
{
  v2 = *(v1 + 16);
  [a1 maximumDetentValue];
  return v2 * v3;
}

uint64_t sub_1000B675C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B67D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B6818()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t partial apply for closure #1 in PresenterServerViewController.didReceiveUpdateRequest(with:animated:client:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in PresenterServerViewController.didReceiveUpdateRequest(with:animated:client:)(a1, v4, v5, v6, v7, v8);
}

void specialized PresenterServerViewController.onboardingSettingsViewControllerDidTapDoneButton(_:)(void *a1)
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
    _os_log_impl(&_mh_execute_header, v6, v7, "[PresenterServerViewController] Done presenting Settings", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [a1 navigationController];
  if (v9)
  {
    v10 = v9;
  }
}

uint64_t sub_1000B6AB0()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t partial apply for closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapNotNow(_:onboardingOnlyPresentation:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapNotNow(_:onboardingOnlyPresentation:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in PresenterServerViewController.journalingSuggestionsSyncOnboardingViewControllerDidTapSyncToiPad(_:onboardingOnlyPresentation:)(a1, a2, v2);
}

unint64_t lazy protocol witness table accessor for type PresenterServerViewController.SyncOnboardingError and conformance PresenterServerViewController.SyncOnboardingError()
{
  result = lazy protocol witness table cache variable for type PresenterServerViewController.SyncOnboardingError and conformance PresenterServerViewController.SyncOnboardingError;
  if (!lazy protocol witness table cache variable for type PresenterServerViewController.SyncOnboardingError and conformance PresenterServerViewController.SyncOnboardingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenterServerViewController.SyncOnboardingError and conformance PresenterServerViewController.SyncOnboardingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenterServerViewController.SyncOnboardingError and conformance PresenterServerViewController.SyncOnboardingError;
  if (!lazy protocol witness table cache variable for type PresenterServerViewController.SyncOnboardingError and conformance PresenterServerViewController.SyncOnboardingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenterServerViewController.SyncOnboardingError and conformance PresenterServerViewController.SyncOnboardingError);
  }

  return result;
}

uint64_t sub_1000B6D28@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_1000B6D84(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xA8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1000B6DEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_1000B6E48(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xC0);
  v4 = *a1;
  return v3(v2);
}

void type metadata completion function for PresenterServerViewController()
{
  type metadata accessor for Client?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Client?()
{
  if (!lazy cache variable for type metadata for Client?)
  {
    type metadata accessor for Client();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Client?);
    }
  }
}

uint64_t objectdestroy_2Tm()
{
  v1 = type metadata accessor for Client();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_54Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #2 in closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue(_:onboardingOnlyPresentation:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #2 in closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue(_:onboardingOnlyPresentation:)(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000B71AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t partial apply for closure #1 in closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue(_:onboardingOnlyPresentation:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return closure #1 in closure #1 in PresenterServerViewController.journalingSuggestionsNotificationOnboardingViewControllerDidTapContinue(_:onboardingOnlyPresentation:)(a1, v4, v5, v6);
}

uint64_t sub_1000B7298()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #2 in PresenterServerViewController.showInfoPopups(controller:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in closure #2 in PresenterServerViewController.showInfoPopups(controller:)(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000B7534()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController()(a1, v4, v5, v7, v6);
}

uint64_t lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(unint64_t *a1, void (*a2)(uint64_t))
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

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16MomentsUIService26MOSuggestionAssetReferenceCG_AHs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v14 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(a3 + 8 * j + 32);
      }

      v12 = v10;
      a1(&v13, &v12);
      if (v4)
      {
        goto LABEL_19;
      }

      v4 = 0;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v9 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9MomentsUI11CloudDeviceVG_SSs5NeverOTg5(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v18 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = *(type metadata accessor for CloudDevice() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    a1(v17, v8);
    if (v3)
    {
      break;
    }

    v11 = v17[0];
    v10 = v17[1];
    v18 = v5;
    v13 = v5[2];
    v12 = v5[3];
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v5 = v18;
    }

    v5[2] = v13 + 1;
    v14 = &v5[2 * v13];
    v14[4] = v11;
    v14[5] = v10;
    v8 += v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

unint64_t MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields.rawValue.getter(char a1)
{
  result = 0x74657373416D756ELL;
  switch(a1)
  {
    case 1:
    case 9:
    case 12:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x726566736E617274;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields(char *a1, char *a2)
{
  v2 = *a2;
  v3 = MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields()
{
  MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields@<X0>(unint64_t *a1@<X8>)
{
  result = MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *MOSuggestionAssetAnalytics.AssetTransferEvent.assetsAuthorized.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t MOSuggestionAssetAnalytics.AssetTransferEvent.transferID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MOSuggestionAssetAnalytics.AssetTransferEvent() + 32);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MOSuggestionAssetAnalytics.AssetTransferEvent.transferID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MOSuggestionAssetAnalytics.AssetTransferEvent() + 32);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MOSuggestionAssetAnalytics.AssetTransferEvent.sheetProcessingTime_Seconds.setter(double a1)
{
  result = type metadata accessor for MOSuggestionAssetAnalytics.AssetTransferEvent();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t one-time initialization function for fieldTypeToAssetType()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService26MOSuggestionAssetAnalyticsC0G13TransferEventV0J6FieldsO_So0F10AssetsTypeatGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A7010;
  *(inited + 32) = 1;
  v1 = MOSuggestionAssetsTypeContactPhoto;
  *(inited + 40) = MOSuggestionAssetsTypeContactPhoto;
  *(inited + 48) = 2;
  v2 = MOSuggestionAssetsTypeLivePhoto;
  *(inited + 56) = MOSuggestionAssetsTypeLivePhoto;
  *(inited + 64) = 3;
  v3 = MOSuggestionAssetsTypeMultiPinMap;
  *(inited + 72) = MOSuggestionAssetsTypeMultiPinMap;
  *(inited + 80) = 4;
  v4 = MOSuggestionAssetsTypeMediaCoverArt;
  *(inited + 88) = MOSuggestionAssetsTypeMediaCoverArt;
  *(inited + 96) = 5;
  v5 = MOSuggestionAssetsTypeMotionActivity;
  *(inited + 104) = MOSuggestionAssetsTypeMotionActivity;
  *(inited + 112) = 6;
  v6 = MOSuggestionAssetsTypePhoto;
  *(inited + 120) = MOSuggestionAssetsTypePhoto;
  *(inited + 128) = 7;
  v7 = MOSuggestionAssetsTypeReflectionPrompt;
  *(inited + 136) = MOSuggestionAssetsTypeReflectionPrompt;
  *(inited + 144) = 8;
  v8 = MOSuggestionAssetsTypeVideo;
  *(inited + 152) = MOSuggestionAssetsTypeVideo;
  *(inited + 160) = 9;
  v9 = MOSuggestionAssetsTypeWorkout;
  *(inited + 168) = MOSuggestionAssetsTypeWorkout;
  *(inited + 176) = 10;
  v10 = MOSuggestionAssetsTypeWorkoutGroup;
  *(inited + 184) = MOSuggestionAssetsTypeWorkoutGroup;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService26MOSuggestionAssetAnalyticsC0F13TransferEventV0I6FieldsO_So0E10AssetsTypeaTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService26MOSuggestionAssetAnalyticsC0D13TransferEventV0G6FieldsO_So0C10AssetsTypeatMd);
  result = swift_arrayDestroy();
  static MOSuggestionAssetAnalytics.AssetTransferEvent.fieldTypeToAssetType = v21;
  return result;
}

uint64_t *MOSuggestionAssetAnalytics.AssetTransferEvent.fieldTypeToAssetType.unsafeMutableAddressor()
{
  if (one-time initialization token for fieldTypeToAssetType != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAssetAnalytics.AssetTransferEvent.fieldTypeToAssetType;
}

uint64_t static MOSuggestionAssetAnalytics.AssetTransferEvent.fieldTypeToAssetType.getter()
{
  if (one-time initialization token for fieldTypeToAssetType != -1)
  {
    swift_once();
  }
}

uint64_t MOSuggestionAssetAnalytics.AssetTransferEvent.init(bundle:references:transferID:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for MOSuggestionAssetAnalytics.AssetTransferEvent();
  *a4 = 0;
  a4[1] = 0;
  *(a4 + *(v8 + 36)) = 0;
  a4[2] = [a1 bundleSubType];
  a4[3] = [a1 bundleSuperType];
  v9 = *(v8 + 32);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a4 + v9, a3, v10);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = (*(*static MOSuggestionAssetCacheManager.shared + 256))(a2);
  if (v12)
  {
    v13 = v12;
    if (a2 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = (*(v11 + 8))(a3, v10);
    *a4 = v14;
    a4[1] = v13;
  }

  else
  {
    (*(v11 + 8))(a3, v10);
  }

  return result;
}

Swift::Void __swiftcall MOSuggestionAssetAnalytics.AssetTransferEvent.send()()
{
  v1 = type metadata accessor for MOSuggestionAssetAnalytics.AssetTransferEvent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v4 = String._bridgeToObjectiveC()();
  outlined init with copy of MOSuggestionAssetAnalytics.AssetTransferEvent(v0, aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  outlined init with take of MOSuggestionAssetAnalytics.AssetTransferEvent(aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  aBlock[4] = partial apply for closure #1 in MOSuggestionAssetAnalytics.AssetTransferEvent.send();
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_11;
  v7 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

uint64_t closure #1 in MOSuggestionAssetAnalytics.AssetTransferEvent.send()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A4D20;
  *(inited + 32) = 0x74657373416D756ELL;
  *(inited + 40) = 0xE900000000000073;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:*a1];
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x80000001002AEB30;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:a1[2]];
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001002AEB50;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:a1[3]];
  *(inited + 104) = 0x726566736E617274;
  *(inited + 112) = 0xEA00000000004449;
  v3 = type metadata accessor for MOSuggestionAssetAnalytics.AssetTransferEvent();
  UUID.uuidString.getter();
  v4 = objc_allocWithZone(NSString);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithString:v5];

  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x80000001002AEB70;
  v7 = *(a1 + *(v3 + 36)) * 10000.0;
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_56;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
    goto LABEL_48;
  }

  *(inited + 144) = [objc_allocWithZone(NSNumber) initWithInteger:v7];
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  swift_arrayDestroy();
  v8 = a1[1];
  if (v8)
  {
    v9 = one-time initialization token for fieldTypeToAssetType;
    v57 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v10 = static MOSuggestionAssetAnalytics.AssetTransferEvent.fieldTypeToAssetType + 64;
    v11 = 1 << *(static MOSuggestionAssetAnalytics.AssetTransferEvent.fieldTypeToAssetType + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(static MOSuggestionAssetAnalytics.AssetTransferEvent.fieldTypeToAssetType + 64);
    v14 = (v11 + 63) >> 6;
    v56 = static MOSuggestionAssetAnalytics.AssetTransferEvent.fieldTypeToAssetType;

    v15 = 0;
    v16 = 0;
    v54 = v14;
    v55 = v10;
    while (1)
    {
      if (!v13)
      {
        while (1)
        {
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v19 >= v14)
          {

            v42 = [objc_allocWithZone(NSNumber) initWithInteger:v15];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v60 = v4;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, 0xD000000000000013, 0x80000001002AEB10, isUniquelyReferenced_nonNull_native);

            goto LABEL_47;
          }

          v13 = *(v10 + 8 * v19);
          ++v16;
          if (v13)
          {
            v58 = v15;
            v16 = v19;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v58 = v15;
LABEL_18:
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v21 = v20 | (v16 << 6);
      v22 = *(*(v56 + 48) + v21);
      v59 = *(*(v56 + 56) + 8 * v21);
      v23 = 0xE900000000000073;
      v24 = [v57 countForObject:?];
      v25 = 0x74657373416D756ELL;
      switch(v22)
      {
        case 1:
          v25 = 0xD000000000000011;
          v23 = 0x80000001002AEA00;
          break;
        case 2:
          v25 = 0xD000000000000013;
          v23 = 0x80000001002AEA20;
          break;
        case 3:
          v25 = 0xD000000000000012;
          v23 = 0x80000001002AEA40;
          break;
        case 4:
          v23 = 0xEF616964654D5F73;
          break;
        case 5:
          v25 = 0xD000000000000018;
          v23 = 0x80000001002AEA70;
          break;
        case 6:
          v26 = 0x746F68505F73;
          goto LABEL_34;
        case 7:
          v25 = 0xD000000000000014;
          v23 = 0x80000001002AEAA0;
          break;
        case 8:
          v26 = 0x656469565F73;
LABEL_34:
          v23 = v26 & 0xFFFFFFFFFFFFLL | 0xEF6F000000000000;
          break;
        case 9:
          v25 = 0xD000000000000011;
          v23 = 0x80000001002AEAD0;
          break;
        case 10:
          v25 = 0xD000000000000016;
          v23 = 0x80000001002AEAF0;
          break;
        case 11:
          v25 = 0xD000000000000013;
          v23 = 0x80000001002AEB10;
          break;
        case 12:
          v25 = 0xD000000000000011;
          v23 = 0x80000001002AEB30;
          break;
        case 13:
          v25 = 0xD000000000000013;
          v23 = 0x80000001002AEB50;
          break;
        case 14:
          v25 = 0x726566736E617274;
          v23 = 0xEA00000000004449;
          break;
        case 15:
          v25 = 0xD000000000000013;
          v23 = 0x80000001002AEB70;
          break;
        default:
          break;
      }

      v27 = v24;
      v28 = [objc_allocWithZone(NSNumber) initWithInteger:v24];
      v29 = v4;
      v4 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v29;
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v23);
      v32 = *(v29 + 16);
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_53;
      }

      v35 = v30;
      if (*(v29 + 24) >= v34)
      {
        if (v4)
        {
          if ((v30 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if ((v35 & 1) == 0)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v4);
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v23);
        if ((v35 & 1) != (v37 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          JUMPOUT(0x1000B8F20);
        }

        v31 = v36;
        if ((v35 & 1) == 0)
        {
LABEL_42:
          v4 = v60;
          *(v60 + 8 * (v31 >> 6) + 64) |= 1 << v31;
          v38 = (*(v4 + 48) + 16 * v31);
          *v38 = v25;
          v38[1] = v23;
          *(*(v4 + 56) + 8 * v31) = v28;

          v39 = *(v4 + 16);
          v40 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v40)
          {
            goto LABEL_55;
          }

          *(v4 + 16) = v41;
          goto LABEL_11;
        }
      }

      v4 = v60;
      v17 = *(v60 + 56);
      v18 = *(v17 + 8 * v31);
      *(v17 + 8 * v31) = v28;

LABEL_11:
      v15 = &v27[v58];
      v14 = v54;
      v10 = v55;
      if (__OFADD__(v58, v27))
      {
        goto LABEL_54;
      }
    }
  }

LABEL_47:
  if (one-time initialization token for assets != -1)
  {
    goto LABEL_59;
  }

LABEL_48:
  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static MOAngelLogger.assets);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v60 = v48;
    *v47 = 136315138;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSObject);
    v49 = Dictionary.debugDescription.getter();
    v51 = v4;
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v60);

    *(v47 + 4) = v52;
    v4 = v51;

    _os_log_impl(&_mh_execute_header, v45, v46, "[analytics] result=%s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
  }

  else
  {
  }

  return v4;
}

uint64_t closure #1 in Array<A>.withTransferID(uuid:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = *a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a2, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  (*(*v9 + 200))(v8);
  *a3 = v9;
}

unint64_t specialized MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields.init(rawValue:), v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for MOSuggestionAssetAnalytics.AssetTransferEvent()
{
  result = type metadata singleton initialization cache for MOSuggestionAssetAnalytics.AssetTransferEvent;
  if (!type metadata singleton initialization cache for MOSuggestionAssetAnalytics.AssetTransferEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of MOSuggestionAssetAnalytics.AssetTransferEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionAssetAnalytics.AssetTransferEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B91F0()
{
  v1 = (type metadata accessor for MOSuggestionAssetAnalytics.AssetTransferEvent() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of MOSuggestionAssetAnalytics.AssetTransferEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionAssetAnalytics.AssetTransferEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in MOSuggestionAssetAnalytics.AssetTransferEvent.send()()
{
  v1 = *(type metadata accessor for MOSuggestionAssetAnalytics.AssetTransferEvent() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return closure #1 in MOSuggestionAssetAnalytics.AssetTransferEvent.send()(v2);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields and conformance MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields and conformance MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields and conformance MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields and conformance MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields);
  }

  return result;
}

uint64_t sub_1000B9474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000B9540(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for MOSuggestionAssetAnalytics.AssetTransferEvent()
{
  type metadata accessor for NSCountedSet?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MOEventBundleSubType(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MOEventBundleSuperType(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for NSCountedSet?()
{
  if (!lazy cache variable for type metadata for NSCountedSet?)
  {
    type metadata accessor for UIApplication(255, &lazy cache variable for type metadata for NSCountedSet);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NSCountedSet?);
    }
  }
}

uint64_t getEnumTagSinglePayload for MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t key path getter for MOSuggestionInterstitialCarouselViewCell.blockUserInteraction : MOSuggestionInterstitialCarouselViewCell@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x70))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = thunk for @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MOSuggestionInterstitialCarouselViewCell.blockUserInteraction : MOSuggestionInterstitialCarouselViewCell(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((swift_isaMask & **a2) + 0x78);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t key path getter for MOSuggestionInterstitialCarouselViewCell.unBlockUserInteraction : MOSuggestionInterstitialCarouselViewCell@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x88))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MOSuggestionInterstitialCarouselViewCell.unBlockUserInteraction : MOSuggestionInterstitialCarouselViewCell(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((swift_isaMask & **a2) + 0x90);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t MOSuggestionInterstitialCarouselViewCell.blockUserInteraction.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(*v2);
  return v3;
}

uint64_t MOSuggestionInterstitialCarouselViewCell.blockUserInteraction.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
}

Swift::Void __swiftcall MOSuggestionInterstitialCarouselViewCell.updateAssetView()()
{
  v1 = *((swift_isaMask & *v0) + 0xA0);
  v2 = v1();
  if (v2)
  {
    (*(*v2 + 808))(1);
  }

  v3 = *(v0 + OBJC_IVAR____TtC16MomentsUIService40MOSuggestionInterstitialCarouselViewCell_assetView);
  v4 = (v1)(v2);
  (*((swift_isaMask & *v3) + 0xA0))(v4);
}

uint64_t MOSuggestionInterstitialCarouselViewCell.assetViewModel.setter()
{
  swift_beginAccess();
  v1 = swift_weakAssign();
  v2 = *((swift_isaMask & *v0) + 0xA0);
  v3 = v2(v1);
  if (v3)
  {
    (*(*v3 + 808))(1);
  }

  v4 = *(v0 + OBJC_IVAR____TtC16MomentsUIService40MOSuggestionInterstitialCarouselViewCell_assetView);
  v5 = v2(v3);
  (*((swift_isaMask & *v4) + 0xA0))(v5);
}

void (*MOSuggestionInterstitialCarouselViewCell.assetViewModel.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MomentsUIService40MOSuggestionInterstitialCarouselViewCell_assetViewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return MOSuggestionInterstitialCarouselViewCell.assetViewModel.modify;
}

void MOSuggestionInterstitialCarouselViewCell.assetViewModel.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v4 = v3[4];
    swift_endAccess();

    v6 = *((swift_isaMask & *v4) + 0xA0);
    v7 = v6(v5);
    if (v7)
    {
      (*(*v7 + 808))(1);
    }

    v8 = *(v3[4] + OBJC_IVAR____TtC16MomentsUIService40MOSuggestionInterstitialCarouselViewCell_assetView);
    v9 = v6(v7);
    (*((swift_isaMask & *v8) + 0xA0))(v9);
  }

  free(v3);
}

Swift::Void __swiftcall MOSuggestionInterstitialCarouselViewCell.setupViews()()
{
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService40MOSuggestionInterstitialCarouselViewCell_assetView];
  [v0 addSubview:v1];
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v0 setBackgroundColor:v3];

  [v0 setClipsToBounds:0];
  v4 = [v0 layer];
  [v4 setCornerRadius:7.0];

  v5 = [v0 layer];
  v6 = [v2 blackColor];
  v7 = [v6 CGColor];

  [v5 setShadowColor:v7];
  v8 = [v0 layer];
  LODWORD(v9) = 1036831949;
  [v8 setShadowOpacity:v9];

  v10 = [v0 layer];
  [v10 setShadowOffset:{0.0, 2.0}];

  v11 = [v0 layer];
  [v11 setShadowRadius:4.0];

  v12 = [v0 layer];
  [v12 setCornerCurve:kCACornerCurveContinuous];

  v13 = [v0 layer];
  [v13 setShadowPathIsBounds:1];

  v14 = *((swift_isaMask & *v1) + 0x88);
  v15 = swift_unknownObjectRetain();
  v14(v15, &protocol witness table for MOSuggestionInterstitialCarouselViewCell);
}

id MOSuggestionInterstitialCarouselViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionInterstitialCarouselViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall MOSuggestionInterstitialCarouselViewCell.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionInterstitialCarouselViewCell();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService40MOSuggestionInterstitialCarouselViewCell_assetView];
  [v0 bounds];
  [v1 setFrame:?];
}

Swift::Void __swiftcall MOSuggestionInterstitialCarouselViewCell.shouldBlockUserSelection()()
{
  v1 = (*((swift_isaMask & *v0) + 0x70))();
  if (v1)
  {
    v2 = v1;
    v1();

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  }
}

Swift::Void __swiftcall MOSuggestionInterstitialCarouselViewCell.shouldUnblockUserSelection()()
{
  v1 = (*((swift_isaMask & *v0) + 0x88))();
  if (v1)
  {
    v2 = v1;
    v1();

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  }
}

id specialized MOSuggestionInterstitialCarouselViewCell.init(frame:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService40MOSuggestionInterstitialCarouselViewCell_assetView;
  type metadata accessor for MOSuggestionSheetAssetView();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = &v0[OBJC_IVAR____TtC16MomentsUIService40MOSuggestionInterstitialCarouselViewCell_blockUserInteraction];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC16MomentsUIService40MOSuggestionInterstitialCarouselViewCell_unBlockUserInteraction];
  *v3 = 0;
  *(v3 + 1) = 0;
  swift_weakInit();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for MOSuggestionInterstitialCarouselViewCell();
  v4 = objc_msgSendSuper2(&v6, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  MOSuggestionInterstitialCarouselViewCell.setupViews()();

  return v4;
}

void specialized MOSuggestionInterstitialCarouselViewCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService40MOSuggestionInterstitialCarouselViewCell_assetView;
  type metadata accessor for MOSuggestionSheetAssetView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = (v0 + OBJC_IVAR____TtC16MomentsUIService40MOSuggestionInterstitialCarouselViewCell_blockUserInteraction);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC16MomentsUIService40MOSuggestionInterstitialCarouselViewCell_unBlockUserInteraction);
  *v3 = 0;
  v3[1] = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000BA87C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_1000BA8D8(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xA8);

  return v2(v3);
}

uint64_t sub_1000BA93C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t MOSuggestionLivePhotoView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16MomentsUIService25MOSuggestionLivePhotoView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MOSuggestionLivePhotoView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MomentsUIService25MOSuggestionLivePhotoView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetAssetGridView.delegate.modify;
}

char *MOSuggestionLivePhotoView.init(livePhoto:frame:shouldAutoPlay:size:)(void *a1, int a2, unsigned __int8 a3, double a4, double a5, double a6, double a7)
{
  LODWORD(v89) = a2;
  v13 = a3;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v14 - 8);
  v88 = v14;
  __chkstk_darwin(v14);
  v85 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for DispatchTime();
  v82 = *(v90 - 8);
  v17 = __chkstk_darwin(v90);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v81 - v20;
  *&v7[OBJC_IVAR____TtC16MomentsUIService25MOSuggestionLivePhotoView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v22 = [objc_allocWithZone(PHLivePhotoView) initWithFrame:{a4, a5, a6, a7}];
  *&v7[OBJC_IVAR____TtC16MomentsUIService25MOSuggestionLivePhotoView_livePhotoView] = v22;
  v23 = CGRectMake_0();
  v27 = [objc_allocWithZone(UIImageView) initWithFrame:{v23, v24, v25, v26}];
  *&v7[OBJC_IVAR____TtC16MomentsUIService25MOSuggestionLivePhotoView_iconView] = v27;
  v28 = type metadata accessor for MOSuggestionLivePhotoView();
  v93.receiver = v7;
  v93.super_class = v28;
  v29 = objc_msgSendSuper2(&v93, "initWithFrame:", a4, a5, a6, a7);
  v30 = OBJC_IVAR____TtC16MomentsUIService25MOSuggestionLivePhotoView_livePhotoView;
  v31 = *&v29[OBJC_IVAR____TtC16MomentsUIService25MOSuggestionLivePhotoView_livePhotoView];
  v32 = v29;
  v91 = a1;
  [v31 setLivePhoto:a1];
  [*&v29[v30] setContentMode:2];
  v33 = *&v29[v30];
  v34 = v32;
  [v34 addSubview:v33];
  v35 = *&v29[v30];
  [v35 setDelegate:v34];

  v36 = *&v29[v30];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  if (v13 == 8)
  {
    v37 = OBJC_IVAR____TtC16MomentsUIService25MOSuggestionLivePhotoView_iconView;
    v38 = *&v34[OBJC_IVAR____TtC16MomentsUIService25MOSuggestionLivePhotoView_iconView];
    v39 = String._bridgeToObjectiveC()();
    v40 = [objc_opt_self() _systemImageNamed:v39];

    [v38 setImage:v40];
    v41 = *&v34[v37];
    v42 = objc_opt_self();
    v43 = v41;
    v44 = [v42 whiteColor];
    [v43 setTintColor:v44];

    v45 = [*&v34[v37] layer];
    v46 = [v42 blackColor];
    v47 = [v46 CGColor];

    [v45 setShadowColor:v47];
    v48 = [*&v34[v37] layer];
    [v48 setShadowRadius:2.0];

    v49 = [*&v34[v37] layer];
    LODWORD(v50) = 1045220557;
    [v49 setShadowOpacity:v50];

    v51 = [*&v34[v37] layer];
    [*&v34[v37] bounds];
    [v51 setCornerRadius:CGRectGetHeight(v95) * 0.5];

    v52 = [*&v34[v37] layer];
    [v52 setShadowOffset:{0.0, 0.0}];

    v53 = [*&v34[v37] layer];
    [*&v34[v37] bounds];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    [*&v34[v37] bounds];
    v62 = CGRectGetHeight(v96) * 0.5;
    v63 = [objc_opt_self() bezierPathWithRoundedRect:v55 cornerRadius:{v57, v59, v61, v62}];
    v64 = [v63 CGPath];

    [v53 setShadowPath:v64];
    v65 = [*&v34[v37] layer];
    [v65 setShadowPathIsBounds:1];

    [v34 addSubview:*&v34[v37]];
  }

  v66 = v34;
  [v66 setIsAccessibilityElement:1];
  v67 = UIAccessibilityTraitImage;
  v68 = [v66 accessibilityTraits];
  if ((v67 & ~v68) != 0)
  {
    v69 = v67;
  }

  else
  {
    v69 = 0;
  }

  [v66 setAccessibilityTraits:v69 | v68];
  [v66 setAccessibilityIgnoresInvertColors:1];

  v70 = [objc_opt_self() mainBundle];
  v94._object = 0x80000001002B4890;
  v71._countAndFlagsBits = 0x6F6850206576694CLL;
  v71._object = 0xEA00000000006F74;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  v94._countAndFlagsBits = 0xD00000000000002FLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v70, v72, v94);

  v73 = String._bridgeToObjectiveC()();

  [v66 setAccessibilityLabel:v73];

  if (v89)
  {
    type metadata accessor for OS_dispatch_queue();
    v74 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v89 = *(v82 + 8);
    v89(v19, v90);
    v75 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in MOSuggestionLivePhotoView.init(livePhoto:frame:shouldAutoPlay:size:);
    aBlock[5] = v75;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_12;
    v76 = _Block_copy(aBlock);

    v77 = v83;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v78 = v85;
    v79 = v88;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v76);

    (*(v87 + 8))(v78, v79);
    (*(v84 + 8))(v77, v86);
    v89(v21, v90);
  }

  else
  {
  }

  return v66;
}

void closure #1 in MOSuggestionLivePhotoView.init(livePhoto:frame:shouldAutoPlay:size:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setMuted:1];
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 startPlaybackWithStyle:2];
  }
}

void MOSuggestionLivePhotoView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService25MOSuggestionLivePhotoView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MOSuggestionLivePhotoView.updateCrop(_:)(double a1, double a2, double a3, double a4)
{
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = 0.0;
  v11.size.height = 0.0;
  if (!CGRectEqualToRect(*&a1, v11))
  {
    [*(v4 + OBJC_IVAR____TtC16MomentsUIService25MOSuggestionLivePhotoView_livePhotoView) setContentsRect:{a1, a2, a3, a4}];
  }

  v9 = [*(v4 + OBJC_IVAR____TtC16MomentsUIService25MOSuggestionLivePhotoView_livePhotoView) layer];
  [v9 setNeedsDisplay];
}

id MOSuggestionLivePhotoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionLivePhotoView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000BB938()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized MOSuggestionLivePhotoView.livePhotoView(_:willBeginPlaybackWith:)()
{
  if ((*((swift_isaMask & *v0) + 0x68))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static MOAngelLogger.shared);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "[MOSuggestionLivePhotoView] shouldBlockUserSelection", v6, 2u);
  }
}

void specialized MOSuggestionLivePhotoView.livePhotoView(_:didEndPlaybackWith:)()
{
  if ((*((swift_isaMask & *v0) + 0x68))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static MOAngelLogger.shared);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "[MOSuggestionLivePhotoView] shouldUnblockUserSelection", v6, 2u);
  }
}

uint64_t sub_1000BBC28@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000BBC84(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0x70);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

id MOSuggestionSheetJournalButton.__allocating_init(frame:isSingleCell:)(char a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_buttonTapped];
  *v12 = 0;
  v12[1] = 0;
  v11[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_singleCellAsset] = a1;
  v15.receiver = v11;
  v15.super_class = v5;
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a2, a3, a4, a5);
  MOSuggestionSheetJournalButton.sharedInit()();

  return v13;
}

uint64_t key path getter for MOSuggestionSheetJournalButton.buttonTapped : MOSuggestionSheetJournalButton@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x60))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MOSuggestionSheetJournalButton.buttonTapped : MOSuggestionSheetJournalButton(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((swift_isaMask & **a2) + 0x68);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t MOSuggestionSheetJournalButton.buttonTapped.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_buttonTapped);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(*v1);
  return v2;
}

uint64_t MOSuggestionSheetJournalButton.buttonTapped.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_buttonTapped);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

id MOSuggestionSheetJournalButton.init(frame:isSingleCell:)(char a1, double a2, double a3, double a4, double a5)
{
  v10 = &v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_buttonTapped];
  *v10 = 0;
  v10[1] = 0;
  v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_singleCellAsset] = a1;
  v13.receiver = v5;
  v13.super_class = type metadata accessor for MOSuggestionSheetJournalButton();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
  MOSuggestionSheetJournalButton.sharedInit()();

  return v11;
}

id MOSuggestionSheetJournalButton.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_buttonTapped];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_singleCellAsset] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for MOSuggestionSheetJournalButton();
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    MOSuggestionSheetJournalButton.sharedInit()();
  }

  return v5;
}

Swift::Void __swiftcall MOSuggestionSheetJournalButton.setPublicUI(_:)(Swift::Bool a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  UIButton.configuration.getter();
  v9 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    outlined init with copy of UIButton.Configuration?(v8, v6);
    UIButton.configuration.setter();
    outlined destroy of UIButton.Configuration?(v8);
  }

  else
  {
    v10 = objc_opt_self();
    v11 = &selRef_systemBlueColor;
    if (!a1)
    {
      v11 = &selRef_systemIndigoColor;
    }

    v12 = [v10 *v11];
    UIButton.Configuration.baseForegroundColor.setter();
    UIButton.configuration.setter();
  }

  [v1 setNeedsUpdateConfiguration];
}

uint64_t MOSuggestionSheetJournalButton.sharedInit()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  __chkstk_darwin();
  v3 = &v31 - v2;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration.Size();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for UIButton.Configuration();
  v12 = *(v32 - 8);
  __chkstk_darwin();
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  static UIButton.Configuration.filled()();
  (*(v9 + 104))(v11, enum case for UIButton.Configuration.Size.medium(_:), v8);
  UIButton.Configuration.buttonSize.setter();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  UIButton.Configuration.cornerStyle.setter();
  v15 = objc_opt_self();
  v16 = [v15 tertiarySystemFillColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v17 = [v15 systemIndigoColor];
  UIButton.Configuration.baseForegroundColor.setter();
  v18 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];
  isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

  v20 = [objc_opt_self() configurationWithFont:isa];
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() systemImageNamed:v21 withConfiguration:v20];

  UIButton.Configuration.image.setter();
  if (*(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_singleCellAsset))
  {
    v23 = &UIContentSizeCategoryExtraLarge;
  }

  else
  {
    v23 = &UIContentSizeCategoryAccessibilityMedium;
  }

  [v1 setMaximumContentSizeCategory:*v23];
  v24 = [objc_opt_self() mainBundle];
  v33._object = 0x80000001002B4A50;
  v25._countAndFlagsBits = 0x206C616E72756F4ALL;
  v25._object = 0xEB00000000776F4ELL;
  v33._countAndFlagsBits = 0xD00000000000002ELL;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v33);

  v27 = String._bridgeToObjectiveC()();

  [v1 setAccessibilityLabel:v27];

  v28 = v32;
  (*(v12 + 16))(v3, v14, v32);
  (*(v12 + 56))(v3, 0, 1, v28);
  UIButton.configuration.setter();
  type metadata accessor for UIAction();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v1 addAction:v29 forControlEvents:64];

  return (*(v12 + 8))(v14, v28);
}

void closure #1 in MOSuggestionSheetJournalButton.sharedInit()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((swift_isaMask & *Strong) + 0x60))();
    if (v2)
    {
      v3 = v2;
      v2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
    }
  }
}

id MOSuggestionSheetJournalButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetJournalButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000BCA50()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t type metadata accessor for UIAction()
{
  result = lazy cache variable for type metadata for UIAction;
  if (!lazy cache variable for type metadata for UIAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIAction);
  }

  return result;
}

uint64_t sub_1000BCAD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id MOSuggestionCollectionViewHeader.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionCollectionViewHeader_titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionCollectionViewHeader_subTitleLabel] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for MOSuggestionCollectionViewHeader();
  v9 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 secondarySystemBackgroundColor];
  [v11 setBackgroundColor:v12];

  return v11;
}

void MOSuggestionCollectionViewHeader.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionCollectionViewHeader_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionCollectionViewHeader_subTitleLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MOSuggestionCollectionViewHeader.layoutSubviews()()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for MOSuggestionCollectionViewHeader();
  objc_msgSendSuper2(&v25, "layoutSubviews");
  v1 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionCollectionViewHeader_titleLabel;
  if (!*&v0[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionCollectionViewHeader_titleLabel])
  {
    v2 = [objc_allocWithZone(UILabel) init];
    v3 = [objc_opt_self() mainBundle];
    v26._object = 0x80000001002B4AC0;
    v4._countAndFlagsBits = 0xD000000000000019;
    v4._object = 0x80000001002B4AC0;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0xD000000000000019;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v26);

    v6 = String._bridgeToObjectiveC()();

    [v2 setText:v6];

    v7 = [objc_opt_self() boldSystemFontOfSize:15.0];
    [v2 setFont:v7];

    v8 = objc_opt_self();
    v9 = [v8 labelColor];
    [v2 setTextColor:v9];

    v10 = *&v0[v1];
    *&v0[v1] = v2;
    v11 = v2;

    v12 = v11;
    [v0 addSubview:v12];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1002A6160;
    v15 = [v12 topAnchor];
    v16 = [v0 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    *(v14 + 32) = v17;
    v18 = [v12 centerXAnchor];

    v19 = [v0 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    *(v14 + 40) = v20;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 activateConstraints:isa];

    v22 = [v12 heightAnchor];
    v23 = [v22 constraintEqualToConstant:50.0];

    [v23 setActive:1];
    v24 = [v8 secondarySystemBackgroundColor];
    [v12 setBackgroundColor:v24];
  }
}

id MOSuggestionCollectionViewHeader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionCollectionViewHeader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for Constants()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

void one-time initialization function for avatarLayout()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo6CGRectVGGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002A7250;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002A48B0;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v0 + 32) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002A4A00;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  *(v6 + 48) = v9;
  *(v6 + 56) = v10;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  *(v6 + 64) = v11;
  *(v6 + 72) = v12;
  *(v6 + 80) = v13;
  *(v6 + 88) = v14;
  *(v0 + 40) = v6;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002A55C0;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  v18 = v16;
  v86 = v17;
  v87 = v16;
  v19 = v17;
  *(v15 + 48) = v20;
  *(v15 + 56) = v21;
  v22 = v20;
  v23 = v21;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  v91 = v24;
  *(v15 + 64) = v25;
  *(v15 + 72) = v26;
  v27 = v25;
  v96 = v26;
  v97 = v25;
  v28 = v26;
  *(v15 + 80) = v29;
  *(v15 + 88) = v24;
  v30 = v29;
  v95 = v29;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  v89 = v32;
  v90 = v31;
  v88 = v33;
  v35 = v34;
  *(v15 + 96) = v31;
  *(v15 + 104) = v32;
  *(v15 + 112) = v33;
  *(v15 + 120) = v34;
  v94 = v34;
  *(v0 + 48) = v15;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1002A48C0;
  *(v36 + 32) = v18;
  *(v36 + 40) = v19;
  v82 = v23;
  v83 = v22;
  *(v36 + 48) = v22;
  *(v36 + 56) = v23;
  *(v36 + 64) = v27;
  *(v36 + 72) = v28;
  *(v36 + 80) = v30;
  *(v36 + 88) = v91;
  *(v36 + 96) = v90;
  *(v36 + 104) = v89;
  *(v36 + 112) = v88;
  *(v36 + 120) = v35;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  v38 = v37;
  v40 = v39;
  v92 = v42;
  v93 = v41;
  *(v36 + 128) = v37;
  *(v36 + 136) = v39;
  v84 = v39;
  v85 = v37;
  *(v36 + 144) = v41;
  *(v36 + 152) = v42;
  *(v0 + 56) = v36;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1002A4D20;
  *(v43 + 32) = v87;
  *(v43 + 40) = v86;
  *(v43 + 48) = v22;
  *(v43 + 56) = v23;
  *(v43 + 64) = v97;
  *(v43 + 72) = v96;
  *(v43 + 80) = v95;
  *(v43 + 88) = v91;
  *(v43 + 96) = v90;
  *(v43 + 104) = v89;
  *(v43 + 112) = v88;
  *(v43 + 120) = v94;
  *(v43 + 128) = v38;
  *(v43 + 136) = v40;
  *(v43 + 144) = v93;
  *(v43 + 152) = v92;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  *(v43 + 160) = v44;
  *(v43 + 168) = v46;
  *(v43 + 176) = v48;
  *(v43 + 184) = v50;
  *(v0 + 64) = v43;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1002A7260;
  *(v52 + 32) = v87;
  *(v52 + 40) = v86;
  *(v52 + 48) = v83;
  *(v52 + 56) = v82;
  *(v52 + 64) = v97;
  *(v52 + 72) = v96;
  *(v52 + 80) = v95;
  *(v52 + 88) = v91;
  *(v52 + 96) = v90;
  *(v52 + 104) = v89;
  *(v52 + 112) = v88;
  *(v52 + 120) = v94;
  *(v52 + 128) = v85;
  *(v52 + 136) = v84;
  *(v52 + 144) = v93;
  *(v52 + 152) = v92;
  *(v52 + 160) = v45;
  *(v52 + 168) = v47;
  *(v52 + 176) = v49;
  *(v52 + 184) = v51;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  *(v52 + 192) = v53;
  *(v52 + 200) = v54;
  *(v52 + 208) = v55;
  *(v52 + 216) = v56;
  *(v0 + 72) = v52;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1002A7250;
  *(v57 + 32) = v87;
  *(v57 + 40) = v86;
  *(v57 + 48) = v83;
  *(v57 + 56) = v82;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  *(v57 + 64) = v58;
  *(v57 + 72) = v59;
  *(v57 + 80) = v60;
  *(v57 + 88) = v61;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  *(v57 + 96) = v62;
  *(v57 + 104) = v63;
  *(v57 + 112) = v64;
  *(v57 + 120) = v65;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  *(v57 + 128) = v66;
  *(v57 + 136) = v67;
  *(v57 + 144) = v68;
  *(v57 + 152) = v69;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  *(v57 + 160) = v70;
  *(v57 + 168) = v71;
  *(v57 + 176) = v72;
  *(v57 + 184) = v73;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  *(v57 + 192) = v74;
  *(v57 + 200) = v75;
  *(v57 + 208) = v76;
  *(v57 + 216) = v77;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  *(v57 + 224) = v78;
  *(v57 + 232) = v79;
  *(v57 + 240) = v80;
  *(v57 + 248) = v81;
  *(v0 + 80) = v57;
  static MOSuggestionAssetSnowglobeEffect.avatarLayout = v0;
}

UIImage *UIImage.composedOf(with:rects:targetSize:backgroundColor:)(uint64_t a1, uint64_t a2, void *a3, CGFloat a4, CGFloat a5)
{
  UIGraphicsBeginImageContext(*&a4);
  [a3 set];
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = a4;
  v30.size.height = a5;
  UIRectFill(v30);
  result = [v5 drawInRect:{0.0, 0.0, a4, a5}];
  v27 = *(a2 + 16);
  if (!v27)
  {
LABEL_13:
    v25 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return v25;
  }

  if (one-time initialization token for assets != -1)
  {
    result = swift_once();
  }

  v11 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 || v27 <= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = type metadata accessor for Logger();
    v13 = 0;
    v14 = (a2 + 56);
    v26 = 136315138;
    do
    {
      __swift_project_value_buffer(v12, static MOAngelLogger.assets);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      v19 = v18;
      if (os_log_type_enabled(v17, v18))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29 = v21;
        *v20 = v26;
        v22 = CGRect.debugDescription.getter();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v29);
        v11 = a1 & 0xC000000000000001;

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v17, v19, "[Snowglobe] %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
      }

      if (v11)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(a1 + 8 * v13 + 32);
      }

      v16 = v15;
      ++v13;
      [v15 drawInRect:{*(v14 - 3), *(v14 - 2), *(v14 - 1), *v14, v26}];

      v14 += 4;
    }

    while (v27 != v13);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t specialized static MOSuggestionAssetSnowglobeEffect.layoutRectsFor(targetSize:count:)(uint64_t result, double a2, float64_t a3)
{
  v3 = 7;
  if (result < 7)
  {
    v3 = result;
  }

  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v26 = a2;
    if (one-time initialization token for avatarLayout == -1)
    {
      goto LABEL_5;
    }
  }

  result = swift_once();
LABEL_5:
  v5 = _swiftEmptyArrayStorage;
  if (v4 < *(static MOSuggestionAssetSnowglobeEffect.avatarLayout + 2))
  {
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = *(static MOSuggestionAssetSnowglobeEffect.avatarLayout + v4 + 4);
  }

  v6 = *(v5 + 2);
  if (v6)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7.f64[0] = v26;
    v7.f64[1] = a3;
    v8 = vdivq_f64(v7, vdupq_n_s64(0x4056000000000000uLL));
    v9 = v8.f64[1] < 100.0 && v8.f64[0] < 100.0;
    v10 = (v5 + 6);
    __asm { FMOV            V4.2D, #0.5 }

    do
    {
      v16 = 0uLL;
      v17 = 0uLL;
      if (v9)
      {
        v17 = vmulq_f64(v8, *v10);
        v16 = vaddq_f64(vmulq_f64(vsubq_f64(v7, v17), _Q4), vmulq_f64(v8, v10[-1]));
      }

      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (*&v19 >= *&v18 >> 1)
      {
        v25 = v8;
        v27 = v7;
        v22 = v17;
        v23 = _Q4;
        v21 = v16;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((*&v18 > 1uLL), *&v19 + 1, 1);
        v16 = v21;
        v17 = v22;
        _Q4 = v23;
        v8 = v25;
        v7 = v27;
      }

      *&_swiftEmptyArrayStorage[2] = *&v19 + 1;
      v20 = &_swiftEmptyArrayStorage[4 * *&v19];
      *(v20 + 2) = v16;
      *(v20 + 3) = v17;
      v10 += 2;
      --v6;
    }

    while (v6);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t specialized static MOSuggestionAssetSnowglobeEffect.imageFor(images:targetSize:)(unint64_t a1, double a2, float64_t a3)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() <= 7)
    {
      goto LABEL_3;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 7)
    {
      __break(1u);
    }

LABEL_8:
    if ((v5 & 0xC000000000000001) != 0)
    {
      type metadata accessor for UIImage();

      _ArrayBuffer._typeCheckSlowPath(_:)(0);
      _ArrayBuffer._typeCheckSlowPath(_:)(1);
      _ArrayBuffer._typeCheckSlowPath(_:)(2);
      _ArrayBuffer._typeCheckSlowPath(_:)(3);
      _ArrayBuffer._typeCheckSlowPath(_:)(4);
      _ArrayBuffer._typeCheckSlowPath(_:)(5);
      _ArrayBuffer._typeCheckSlowPath(_:)(6);
      if (!v6)
      {
LABEL_10:
        v8 = v5 & 0xFFFFFFFFFFFFFF8;
        v9 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
        v10 = 15;
        goto LABEL_14;
      }
    }

    else
    {

      if (!v6)
      {
        goto LABEL_10;
      }
    }

    v8 = _CocoaArrayWrapper.subscript.getter();
    v9 = v11;
    v6 = v12;
    v10 = v13;
    if ((v13 & 1) == 0)
    {
LABEL_13:
      specialized _copyCollectionToContiguousArray<A>(_:)(v8, v9, v6, v10);
      v5 = v14;
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

LABEL_14:
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
      v15 = _swiftEmptyArrayStorage;
    }

    v16 = *(v15 + 2);

    if (__OFSUB__(v10 >> 1, v6))
    {
      __break(1u);
    }

    else if (v16 == (v10 >> 1) - v6)
    {
      v5 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v5)
      {
        swift_unknownObjectRelease();
        v5 = _swiftEmptyArrayStorage;
      }

      goto LABEL_20;
    }

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 8uLL)
  {
    goto LABEL_8;
  }

LABEL_3:

LABEL_20:
  if (v5 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = specialized static MOSuggestionAssetSnowglobeEffect.layoutRectsFor(targetSize:count:)(v17, a2, a3);
  v19 = [objc_allocWithZone(UIImage) init];
  v20 = [objc_opt_self() clearColor];
  v21 = UIImage.composedOf(with:rects:targetSize:backgroundColor:)(v5, v18, v20, a2, a3);

  return v21;
}

unint64_t type metadata accessor for UIImage()
{
  result = lazy cache variable for type metadata for UIImage;
  if (!lazy cache variable for type metadata for UIImage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIImage);
  }

  return result;
}

uint64_t one-time initialization function for localizableStringKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService30MOSuggestionAssetVisualSubTypeO_SSTt0g5Tf4g_n(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService30MOSuggestionAssetVisualSubTypeO_SStMd);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

uint64_t MOSuggestionAssetVisualSubType.localizableKeyWithCount(count:)(uint64_t a1, char a2)
{
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  switch(a2)
  {
    case 1:
    case 5:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v4._countAndFlagsBits = 0;
      v4._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v4);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v5 = 0x6D75626C4120;
      goto LABEL_9;
    case 2:
    case 3:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v6);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7 = 0x74736163646F5020;
      goto LABEL_7;
    case 4:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7 = 0x4920616964654D20;
      v19 = 1936549236;
      goto LABEL_27;
    case 6:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7 = 0x7374736974724120;
      v11 = 0xE800000000000000;
      break;
    case 7:
    case 8:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7 = 0x74756F6B726F5720;
LABEL_7:
      v11 = 0xE900000000000073;
      break;
    case 9:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7 = 0x74756F6B726F5720;
      v11 = 0xEF736574756F5220;
      break;
    case 10:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v11 = 0x80000001002B4BA0;
      v7 = 0xD000000000000012;
      break;
    case 11:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7 = 0x656C706F655020;
      v11 = 0xE700000000000000;
      break;
    case 12:
    case 13:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v5 = 0x6F746F685020;
      goto LABEL_9;
    case 14:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v5 = 0x6F6564695620;
LABEL_9:
      v7 = v5 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      v11 = 0xE700000000000000;
      break;
    case 15:
    case 16:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7 = 0x6F697461636F4C20;
      goto LABEL_15;
    case 17:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7 = 0x736B6C615720;
      v11 = 0xE600000000000000;
      break;
    case 18:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7 = 0x736E755220;
      v11 = 0xE500000000000000;
      break;
    case 19:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7 = 0x572026206E755220;
      v19 = 1936419937;
      goto LABEL_27;
    case 20:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v24 = 0x696B6C615720;
      goto LABEL_22;
    case 21:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v24 = 0x696E6E755220;
LABEL_22:
      v7 = v24 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      v11 = 0xEE00736165724120;
      break;
    case 22:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7 = 0xD000000000000018;
      v11 = 0x80000001002B4B80;
      break;
    case 23:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7 = 0x7463656C66655220;
      v19 = 1936617321;
LABEL_27:
      v11 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 24:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7 = 0x6F63492070704120;
LABEL_15:
      v11 = 0xEA0000000000736ELL;
      break;
    case 25:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7 = 0x6F20657461745320;
      v11 = 0xEF73646E694D2066;
      break;
    default:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7 = 0x73676E6F5320;
      v11 = 0xE600000000000000;
      break;
  }

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v7);
  return String.LocalizationValue.init(stringInterpolation:)();
}

uint64_t one-time initialization function for assetTypeMapping()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeO_So0f6AssetsJ0atGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A72A0;
  *(inited + 32) = 0;
  v1 = MOSuggestionAssetsTypeMediaCoverArt;
  *(inited + 40) = MOSuggestionAssetsTypeMediaCoverArt;
  *(inited + 48) = 1;
  *(inited + 56) = v1;
  *(inited + 64) = 2;
  *(inited + 72) = v1;
  *(inited + 80) = 3;
  *(inited + 88) = v1;
  *(inited + 96) = 4;
  *(inited + 104) = v1;
  *(inited + 112) = 5;
  *(inited + 120) = v1;
  *(inited + 128) = 6;
  *(inited + 136) = v1;
  *(inited + 144) = 7;
  v2 = MOSuggestionAssetsTypeWorkout;
  *(inited + 152) = MOSuggestionAssetsTypeWorkout;
  *(inited + 160) = 8;
  *(inited + 168) = v2;
  *(inited + 176) = 9;
  *(inited + 184) = v2;
  *(inited + 192) = 10;
  v37 = MOSuggestionAssetsTypeWorkoutGroup;
  *(inited + 200) = MOSuggestionAssetsTypeWorkoutGroup;
  *(inited + 208) = 11;
  v36 = MOSuggestionAssetsTypeContactPhoto;
  *(inited + 216) = MOSuggestionAssetsTypeContactPhoto;
  *(inited + 224) = 12;
  v35 = MOSuggestionAssetsTypePhoto;
  *(inited + 232) = MOSuggestionAssetsTypePhoto;
  *(inited + 240) = 14;
  v34 = MOSuggestionAssetsTypeVideo;
  *(inited + 248) = MOSuggestionAssetsTypeVideo;
  *(inited + 256) = 13;
  v33 = MOSuggestionAssetsTypeLivePhoto;
  *(inited + 264) = MOSuggestionAssetsTypeLivePhoto;
  *(inited + 272) = 15;
  v3 = MOSuggestionAssetsTypeMultiPinMap;
  *(inited + 280) = MOSuggestionAssetsTypeMultiPinMap;
  *(inited + 288) = 16;
  v4 = MOSuggestionAssetsTypeLocationPreview;
  *(inited + 296) = MOSuggestionAssetsTypeLocationPreview;
  *(inited + 304) = 20;
  v5 = MOSuggestionAssetsTypeGenericMap;
  *(inited + 312) = MOSuggestionAssetsTypeGenericMap;
  *(inited + 320) = 21;
  *(inited + 328) = v5;
  *(inited + 336) = 22;
  *(inited + 344) = v5;
  *(inited + 352) = 17;
  v6 = MOSuggestionAssetsTypeMotionActivity;
  *(inited + 360) = MOSuggestionAssetsTypeMotionActivity;
  *(inited + 368) = 18;
  *(inited + 376) = v6;
  *(inited + 384) = 19;
  *(inited + 392) = v6;
  *(inited + 400) = 23;
  v7 = MOSuggestionAssetsTypeReflectionPrompt;
  *(inited + 408) = MOSuggestionAssetsTypeReflectionPrompt;
  *(inited + 416) = 25;
  v8 = MOSuggestionAssetsTypeStateOfMindAsset;
  *(inited + 424) = MOSuggestionAssetsTypeStateOfMindAsset;
  v9 = v1;
  v10 = v2;
  v11 = v5;
  v12 = v6;
  v13 = v9;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService30MOSuggestionAssetVisualSubTypeO_So0e6AssetsI0aTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  v15 = v13;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v37;
  v24 = v36;
  v25 = v35;
  v26 = v34;
  v27 = v33;
  v28 = v3;
  v29 = v4;
  v30 = v7;
  v31 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService30MOSuggestionAssetVisualSubTypeO_So0c6AssetsG0atMd);
  result = swift_arrayDestroy();
  static MOSuggestionAssetVisualSubType.assetTypeMapping = v14;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MOSuggestionAssetVisualSubType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MOSuggestionAssetVisualSubType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t MOSuggestionAssetVisualSubType.singularLocalizedString.getter(unsigned __int8 a1)
{
  if (one-time initialization token for localizableStringKey != -1)
  {
    swift_once();
  }

  v2 = static MOSuggestionAssetVisualSubType.localizableStringKey;
  if (*(static MOSuggestionAssetVisualSubType.localizableStringKey + 2) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    v5 = (v2[7] + 16 * v3);
    v6 = *v5;
    v7 = v5[1];

    v8 = StaticString.description.getter();
    v10 = v9;
    v11 = [objc_opt_self() mainBundle];
    v20._object = v10;
    v12._countAndFlagsBits = v6;
    v12._object = v7;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v20._countAndFlagsBits = v8;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v20)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static MOAngelLogger.assets);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v17, v18, "(Singular) Unknown visual subtype: %ld", v19, 0xCu);
    }

    return 0;
  }
}

uint64_t MOSuggestionAssetVisualSubType.pluralLocalizedString.getter(unsigned __int8 a1)
{
  v2 = MOSuggestionAssetVisualSubType.pluralLocalizableStringKey.getter(a1);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = StaticString.description.getter();
    v8 = v7;
    v9 = [objc_opt_self() mainBundle];
    v18._object = v8;
    v10._countAndFlagsBits = v4;
    v10._object = v5;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v18._countAndFlagsBits = v6;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v18)._countAndFlagsBits;
  }

  else
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static MOAngelLogger.assets);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v14, v15, "(Plural) Unknown visual subtype: %ld", v16, 0xCu);
    }

    return 0;
  }

  return countAndFlagsBits;
}

uint64_t MOSuggestionAssetVisualSubType.pluralLocalizableStringKey.getter(unsigned __int8 a1)
{
  if (one-time initialization token for pluralLocalizableStringKey != -1)
  {
    swift_once();
  }

  v2 = static MOSuggestionAssetVisualSubType.pluralLocalizableStringKey;
  if (*(static MOSuggestionAssetVisualSubType.pluralLocalizableStringKey + 2) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    v5 = *(v2[7] + 16 * v3);

    return v5;
  }

  else
  {
    if (one-time initialization token for localizableStringKey != -1)
    {
      swift_once();
    }

    v7 = static MOSuggestionAssetVisualSubType.localizableStringKey;
    if (*(static MOSuggestionAssetVisualSubType.localizableStringKey + 2) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v9 & 1) != 0))
    {
      v11 = *(v7[7] + 16 * v8);

      v10._countAndFlagsBits = 115;
      v10._object = 0xE100000000000000;
      String.append(_:)(v10);
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

Swift::String __swiftcall MOSuggestionAssetVisualSubType.localizedStringWithCount(_:)(Swift::Int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  MOSuggestionAssetVisualSubType.localizableKeyWithCount(count:)(a1, v2);
  static Locale.current.getter();
  v6 = String.init(localized:table:bundle:locale:comment:)();
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

void *MOSuggestionAssetVisualSubType.assetType.getter(unsigned __int8 a1)
{
  if (one-time initialization token for assetTypeMapping != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = static MOSuggestionAssetVisualSubType.assetTypeMapping;
  if (!*(static MOSuggestionAssetVisualSubType.assetTypeMapping + 2))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1[7] + 8 * v2);
  v5 = v4;
  return v4;
}

unint64_t specialized MOSuggestionAssetVisualSubType.init(rawValue:)(unint64_t result)
{
  if (result >= 0x1A)
  {
    return 26;
  }

  return result;
}

unint64_t specialized MOSuggestionAssetVisualSubType.init(assetType:mediaType:motionActivityType:)(void *a1, uint64_t a2, char a3, void *a4)
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    goto LABEL_8;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {

LABEL_8:
    return 12;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    goto LABEL_16;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {

LABEL_16:
    return 13;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {

LABEL_22:

    return 14;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {

    goto LABEL_22;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {

LABEL_28:

    return 15;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {

    goto LABEL_28;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {

LABEL_34:

    return 10;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {

    goto LABEL_34;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {

    goto LABEL_39;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {
LABEL_39:
    if (a4)
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
      if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
      {

        return 18;
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v49)
      {

        return 18;
      }

      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;
      if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
      {

        return 17;
      }

      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v64)
      {

        return 17;
      }

      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;
      if (v70 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v72 == v73)
      {

        return 19;
      }

      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v75)
      {
        return 19;
      }

      return 26;
    }

    goto LABEL_53;
  }

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;
  if (v45 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v47 == v48)
  {
  }

  else
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v50 & 1) == 0)
    {
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;
      if (v59 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v61 == v62)
      {

        if (a3)
        {
          return 26;
        }
      }

      else
      {
        v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v65 & 1) == 0 || (a3)
        {
          return 26;
        }
      }

      if ((a2 - 1) < 8)
      {
        return 0x6050402011A0200uLL >> (8 * (a2 - 1));
      }

      return 26;
    }
  }

  if (!a4)
  {
LABEL_53:

    return 26;
  }

  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;
  if (v51 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v53 == v54)
  {

    return 21;
  }

  v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v63)
  {

    return 21;
  }

  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;
  if (v66 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v68 == v69)
  {

    return 20;
  }

  v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v74)
  {

    return 20;
  }

  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;
  if (v76 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v78 == v79)
  {

    return 22;
  }

  else
  {
    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v80 & 1) == 0)
    {
      return 26;
    }

    return 22;
  }
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetVisualSubType and conformance MOSuggestionAssetVisualSubType()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetVisualSubType and conformance MOSuggestionAssetVisualSubType;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetVisualSubType and conformance MOSuggestionAssetVisualSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetVisualSubType and conformance MOSuggestionAssetVisualSubType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MOSuggestionAssetVisualSubType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MOSuggestionAssetVisualSubType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy16MomentsUIService19MOAssetAndMediaTypeVSiG_AH_Sits5NeverOTg504_s16d11UIService19fghi38VSiACSiIggyod_AC3key_Si5valuetAC_Sits5j129OIegnrzr_TR04_s16a61UIService42MOSuggestionInterstitialListAssetViewModelC32assetf38DictionaryToCountString4dictSSSDyAA015cdE27J0M32G_tFZAG_SitAG_SitXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v25 = *(a1 + 36);
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v9 = *(a1 + 48) + 24 * v5;
    v24 = *(v9 + 8);
    v23 = *(v9 + 16);
    v22 = *(*(a1 + 56) + 8 * v5);
    v10 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    result = *v9;
    if (v10 >= v11 >> 1)
    {
      v20 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v10 + 1, 1);
      result = v20;
    }

    _swiftEmptyArrayStorage[2] = v10 + 1;
    v12 = &_swiftEmptyArrayStorage[4 * v10];
    v12[4] = result;
    v12[5] = v24;
    *(v12 + 48) = v23;
    v12[7] = v22;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v13 = *(a1 + 64 + 8 * v8);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v15 = v8 << 6;
      v16 = v8 + 1;
      v17 = (a1 + 72 + 8 * v8);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = outlined consume of [MOAssetAndMediaType : Int].Index._Variant(v5, v25, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = outlined consume of [MOAssetAndMediaType : Int].Index._Variant(v5, v25, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
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

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, unsigned __int8 a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, Swift::UInt a3, char a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = specialized Dictionary._Variant.subscript.modify(v8, a2, a3, a4 & 1);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t MOSuggestionInterstitialListAssetViewModel.__allocating_init(id:subViewModels:topLevelGroupHeading:dates:titles:icons:assetVisualSubType:selectable:isLoadingPlaceHolder:isFallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, char a11, char a12)
{
  v17 = swift_allocObject();
  *(v17 + 32) = 0u;
  *(v17 + 64) = 0;
  *(v17 + 48) = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 90) = 1;
  UUID.init()();
  swift_beginAccess();
  *(v17 + 16) = a3;
  swift_beginAccess();
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  swift_beginAccess();
  *(v17 + 40) = a6;
  swift_beginAccess();
  *(v17 + 48) = a7;
  swift_beginAccess();
  *(v17 + 56) = a8;
  *(v17 + 65) = a9;
  *(v17 + 72) = a1;
  *(v17 + 80) = a2;
  *(v17 + 90) = a10;
  *(v17 + 88) = a11;
  *(v17 + 89) = a12;
  if (a12 & 1) != 0 || (a11)
  {
    *(v17 + 90) = 0;
  }

  return v17;
}

BOOL MOSuggestionInterstitialListAssetViewModel.isTopLevelWithChildren.getter()
{
  v1 = (*(*v0 + 176))();
  if (v1)
  {
  }

  return v1 != 0;
}

unint64_t MOSuggestionInterstitialListAssetViewModel.isSingleTopLevel.getter()
{
  result = (*(*v0 + 272))();
  if (result)
  {
    if (result >> 62)
    {
      v2 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v2 == 1)
    {
      (*(*v0 + 200))(v3);
      if (v4)
      {

        if (!(*(*v0 + 176))(v5))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.subViewModels.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.topLevelGroupHeading.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.topLevelGroupHeading.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.dates.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.titles.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.icons.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.topLevelShouldBeSkippedInSummary.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.id.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.uniqueUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService42MOSuggestionInterstitialListAssetViewModel_uniqueUUID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MOSuggestionInterstitialListAssetViewModel.init(id:subViewModels:topLevelGroupHeading:dates:titles:icons:assetVisualSubType:selectable:isLoadingPlaceHolder:isFallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, char a11, char a12)
{
  *(v12 + 64) = 0;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 90) = 1;
  UUID.init()();
  swift_beginAccess();
  *(v12 + 16) = a3;

  swift_beginAccess();
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;

  swift_beginAccess();
  *(v12 + 40) = a6;

  swift_beginAccess();
  *(v12 + 48) = a7;

  swift_beginAccess();
  *(v12 + 56) = a8;

  *(v12 + 65) = a9;
  *(v12 + 72) = a1;
  *(v12 + 80) = a2;
  *(v12 + 90) = a10;
  *(v12 + 88) = a11;
  *(v12 + 89) = a12;
  if (a12 & 1) != 0 || (a11)
  {
    *(v12 + 90) = 0;
  }

  return v12;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.hash(into:)()
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t MOSuggestionInterstitialListAssetViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC16MomentsUIService42MOSuggestionInterstitialListAssetViewModel_uniqueUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MomentsUIService42MOSuggestionInterstitialListAssetViewModel_uniqueUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::Int MOSuggestionInterstitialListAssetViewModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 352))(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionInterstitialListAssetViewModel()
{
  Hasher.init(_seed:)();
  (*(**v0 + 352))(v2);
  return Hasher._finalize()();
}

unint64_t MOSuggestionInterstitialListAssetViewModel.hasIdentifiersSelected(_:)(uint64_t a1)
{
  result = (*(*v1 + 176))();
  if (!result)
  {
    v9 = v1[9];
    v10 = v1[10];

    return specialized Set.contains(_:)(v9, v10, a1);
  }

  v4 = result;
  v5 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_39:

    return 0;
  }

LABEL_38:
  result = _CocoaArrayWrapper.endIndex.getter();
  v6 = result;
  if (!result)
  {
    goto LABEL_39;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) == 0)
  {
    v20 = 0;
    v31 = v6;
    v21 = a1 + 56;
    do
    {
      if (v20 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      if (*(a1 + 16))
      {
        v22 = *(v4 + 32 + 8 * v20);
        v24 = *(v22 + 72);
        v23 = *(v22 + 80);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v25 = Hasher._finalize()();
        v26 = -1 << *(a1 + 32);
        v27 = v25 & ~v26;
        if ((*(v21 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          v28 = ~v26;
          do
          {
            v29 = (*(a1 + 48) + 16 * v27);
            v30 = *v29 == v24 && v29[1] == v23;
            if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_36;
            }

            v27 = (v27 + 1) & v28;
          }

          while (((*(v21 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0);
        }

        v6 = v31;
      }

      ++v20;
    }

    while (v20 != v6);
    goto LABEL_39;
  }

  v7 = 0;
  v8 = a1 + 56;
  while (1)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (*(a1 + 16))
    {
      break;
    }

LABEL_10:
    swift_unknownObjectRelease();
    if (v7 == v6)
    {
      goto LABEL_39;
    }
  }

  v5 = *(v11 + 72);
  v13 = *(v11 + 80);
  Hasher.init(_seed:)();

  String.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(a1 + 32);
  v16 = v14 & ~v15;
  if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v17 = ~v15;
  while (1)
  {
    v18 = (*(a1 + 48) + 16 * v16);
    v19 = *v18 == v5 && v18[1] == v13;
    if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v16 = (v16 + 1) & v17;
    if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_36:

  return 1;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.hasConsistentSubArrays.getter()
{
  v1 = v0;
  v2 = *(*v0 + 224);
  v3 = v2();
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  v5 = (*(*v0 + 272))();
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = (*(*v0 + 248))();
  if (!v7)
  {

LABEL_11:

    goto LABEL_12;
  }

  v8 = v7;
  v9 = *(v4 + 16);

  if (v6 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 != v10)
  {
    goto LABEL_11;
  }

  v11 = *(v8 + 16);

  if (v9 == v11)
  {
    return 1;
  }

LABEL_12:
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static MOAngelLogger.assets);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = 7104878;
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v17 = 136315650;
    if (v2())
    {
      type metadata accessor for MOSuggestionSheetAssetDateRange(0);
      v18 = Array.debugDescription.getter();
      v20 = v19;
    }

    else
    {
      v20 = 0xE300000000000000;
      v18 = 7104878;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    if ((*(*v1 + 272))(v22))
    {
      type metadata accessor for MOSuggestionSheetImage();
      v23 = Array.debugDescription.getter();
      v25 = v24;
    }

    else
    {
      v25 = 0xE300000000000000;
      v23 = 7104878;
    }

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v31);

    *(v17 + 14) = v26;
    *(v17 + 22) = 2080;
    if ((*(*v1 + 248))(v27))
    {
      v16 = Array.debugDescription.getter();
      v29 = v28;
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v29, &v31);

    *(v17 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v14, v15, "[MOSuggestionInterstitialListAssetViewModel] inconsistent sub arrays dates=%s, icons=%s, titles=%s", v17, 0x20u);
    swift_arrayDestroy();
  }

  return 0;
}

void one-time initialization function for TIME_SEPARATOR()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001002B4D70;
  v1._countAndFlagsBits = 2108704;
  v1._object = 0xE300000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000034;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static MOSuggestionInterstitialListAssetViewModel.TIME_SEPARATOR = v3;
}

__int128 *MOSuggestionInterstitialListAssetViewModel.TIME_SEPARATOR.unsafeMutableAddressor()
{
  if (one-time initialization token for TIME_SEPARATOR != -1)
  {
    swift_once();
  }

  return &static MOSuggestionInterstitialListAssetViewModel.TIME_SEPARATOR;
}

void one-time initialization function for COMMA_SEPARATOR()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001002B4DB0;
  v1._countAndFlagsBits = 8236;
  v1._object = 0xE200000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000017;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static MOSuggestionInterstitialListAssetViewModel.COMMA_SEPARATOR = v3;
}

__int128 *MOSuggestionInterstitialListAssetViewModel.COMMA_SEPARATOR.unsafeMutableAddressor()
{
  if (one-time initialization token for COMMA_SEPARATOR != -1)
  {
    swift_once();
  }

  return &static MOSuggestionInterstitialListAssetViewModel.COMMA_SEPARATOR;
}

uint64_t static MOSuggestionInterstitialListAssetViewModel.TIME_SEPARATOR.getter(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

uint64_t MOSuggestionInterstitialListAssetViewModel._groupAssetTypeAndCountDescription(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = __chkstk_darwin(v5 - 8);
  v7 = (*(*v1 + 176))(v6);
  if (!v7)
  {
LABEL_4:
    v9 = *(v2 + 65);
    if (v9 == 26)
    {
      return 0;
    }

    v11 = a1 && (specialized Set.contains(_:)(*(v2 + 72), *(v2 + 80), a1) & 1) == 0;
    (*(*v2 + 304))(v11);
    MOSuggestionAssetVisualSubType.localizableKeyWithCount(count:)(1, v9);
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  v8 = v7;
  if ((*(v2 + 65) | 0x10) == 0x1A)
  {

    goto LABEL_4;
  }

  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService30MOSuggestionAssetVisualSubTypeO_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v61 = v12;
  v60 = &_swiftEmptySetSingleton;
  v13 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_47:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_11:
      v12 = 0;
      v15 = v8 & 0xC000000000000001;
      v56 = v2;
      v57 = v8 + 32;
      v16 = a1 + 56;
      v54 = v14;
      v55 = v13;
      v58 = v8;
      while (1)
      {
        if (v15)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v18 = __OFADD__(v12++, 1);
          if (v18)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v12 >= *(v13 + 16))
          {
            goto LABEL_46;
          }

          v17 = *(v57 + 8 * v12);

          v18 = __OFADD__(v12++, 1);
          if (v18)
          {
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        v19 = *(v17 + 65);
        if (v19 != 26)
        {
          specialized Set._Variant.insert(_:)(v59, *(v17 + 65));
          if (a1)
          {
            if (!*(a1 + 16))
            {
              goto LABEL_37;
            }

            v21 = *(v17 + 72);
            v20 = *(v17 + 80);
            Hasher.init(_seed:)();

            String.hash(into:)();
            v22 = Hasher._finalize()();
            v23 = -1 << *(a1 + 32);
            v24 = v22 & ~v23;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
LABEL_31:

              v13 = v55;
              v2 = v56;
              v14 = v54;
              v8 = v58;
              goto LABEL_13;
            }

            v25 = ~v23;
            while (1)
            {
              v26 = (*(a1 + 48) + 16 * v24);
              v27 = *v26 == v21 && v26[1] == v20;
              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v24 = (v24 + 1) & v25;
              if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            v13 = v55;
            v2 = v56;
            v14 = v54;
          }

          v28 = v61;
          if (!v61[2] || (specialized __RawDictionaryStorage.find<A>(_:)(v19), (v29 & 1) == 0))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v59[0] = v28;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, v19, isUniquelyReferenced_nonNull_native);

            v8 = v58;
            v61 = v59[0];
            goto LABEL_13;
          }

          v31 = specialized Dictionary.subscript.modify(v59, v19);
          if (*(v30 + 8))
          {
            (v31)(v59, 0);
LABEL_37:

            v8 = v58;
            goto LABEL_13;
          }

          v8 = v58;
          if (__OFADD__(*v30, 1))
          {
            goto LABEL_72;
          }

          ++*v30;
          (v31)(v59, 0);
        }

LABEL_13:
        if (v12 == v14)
        {

          v12 = v61;
          if (!v61[2])
          {
            goto LABEL_49;
          }

LABEL_42:

          (*(*v2 + 304))(0);
LABEL_69:
          v53 = specialized static MOSuggestionInterstitialListAssetViewModel.assetVisualSubTypesToCountString(_:includeCount:separator:)(v12, 1, 0x20A280E220, 0xA500000000000000);

          return v53;
        }
      }
    }
  }

  if (*(v12 + 16))
  {
    goto LABEL_42;
  }

LABEL_49:
  (*(*v2 + 304))(1);
  v33 = 0;
  v34 = v60;
  v35 = v60 + 56;
  v36 = 1 << v60[32];
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v60 + 7);
  v39 = (v36 + 63) >> 6;
  if (v38)
  {
    goto LABEL_54;
  }

  do
  {
LABEL_55:
    v40 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_71;
    }

    if (v40 >= v39)
    {
      v61 = v12;

      goto LABEL_69;
    }

    v38 = *&v35[8 * v40];
    ++v33;
  }

  while (!v38);
  while (1)
  {
    v41 = *(*(v34 + 6) + (__clz(__rbit64(v38)) | (v40 << 6)));
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v59[0] = v12;
    v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
    v45 = *(v12 + 16);
    v46 = (v44 & 1) == 0;
    v18 = __OFADD__(v45, v46);
    v47 = v45 + v46;
    if (v18)
    {
      break;
    }

    v48 = v44;
    if (*(v12 + 24) >= v47)
    {
      if ((v42 & 1) == 0)
      {
        v52 = v43;
        specialized _NativeDictionary.copy()();
        v43 = v52;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, v42);
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_74;
      }
    }

    v38 &= v38 - 1;
    v12 = v59[0];
    if (v48)
    {
      *(v59[0][7] + 8 * v43) = 0;
      v33 = v40;
      if (!v38)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v59[0][(v43 >> 6) + 8] |= 1 << v43;
      *(*(v12 + 48) + v43) = v41;
      *(*(v12 + 56) + 8 * v43) = 0;
      v50 = *(v12 + 16);
      v18 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v18)
      {
        goto LABEL_73;
      }

      *(v12 + 16) = v51;
      v33 = v40;
      if (!v38)
      {
        goto LABEL_55;
      }
    }

LABEL_54:
    v40 = v33;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t static MOSuggestionInterstitialListAssetViewModel.assetTypeSetToCountString(_:)(void *a1)
{
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v33[0] = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  NSSet.makeIterator()();
  v5 = _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, &type metadata accessor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  v6 = _swiftEmptyArrayStorage;
  if (v42)
  {
    v33[1] = v5;
    do
    {
      outlined init with take of Any(&v41, &v39);
      outlined init with copy of Any(&v39, v38);
      if (swift_dynamicCast())
      {
        v7 = v4;
        v8 = v2;
        v10 = v35;
        v9 = v36;
        v11 = v37;
        __swift_project_boxed_opaque_existential_0(&v39, v40);
        v12 = [v34 countForObject:_bridgeAnythingToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
        }

        v14 = v6[2];
        v13 = v6[3];
        if (v14 >= v13 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v6);
        }

        v6[2] = v14 + 1;
        v15 = &v6[4 * v14];
        v15[4] = v10;
        v15[5] = v9;
        *(v15 + 48) = v11;
        v15[7] = v12;
        v2 = v8;
        v4 = v7;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v39);
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v42);
  }

  (*(v33[0] + 8))(v4, v2);
  *&v41 = v6;

  specialized MutableCollection<>.sort(by:)(&v41);

  v16 = v41;
  v17 = *(v41 + 16);
  if (v17)
  {
    *&v41 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = 0;
    v19 = v41;
    v20 = (v16 + 56);
    while (v18 < *(v16 + 16))
    {
      v21 = *(v20 - 2);
      v22 = *(v20 - 8);
      v23 = *v20;
      v24 = *(v20 - 3);
      v25 = specialized static MOSuggestionSheetAssetViewModel.assetTypeAsPluralString(assetAndMediaType:count:includeCount:)(v24, v21, v22, v23, 1);
      v27 = v26;

      *&v41 = v19;
      v29 = v19[2];
      v28 = v19[3];
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v19 = v41;
      }

      ++v18;
      v19[2] = v29 + 1;
      v30 = &v19[2 * v29];
      v30[4] = v25;
      v30[5] = v27;
      v20 += 4;
      if (v17 == v18)
      {

        goto LABEL_19;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
LABEL_19:
    *&v41 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v31 = BidirectionalCollection<>.joined(separator:)();

    return v31;
  }

  return result;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.groupAssetTypeAndCountDescription(selectedAssetIdentifiers:)(uint64_t a1)
{
  v2 = MOSuggestionInterstitialListAssetViewModel._groupAssetTypeAndCountDescription(with:)(a1);
  (*(*v1 + 208))(v2);
  v3 = *(*v1 + 200);

  return v3();
}

uint64_t MOSuggestionInterstitialListAssetViewModel.singleFirstTitleAndDate.getter()
{
  v1 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v3);
  v8 = &v13 - v7;
  v9 = v0[65];
  if (v9 > 0x19)
  {
    goto LABEL_8;
  }

  if (((1 << v9) & 0x20080F7) == 0 || (result = MOSuggestionInterstitialListAssetViewModel.firstTitleAndDate.getter(), !v10))
  {
    if (v9 == 11)
    {
      result = (*(*v0 + 248))(result);
      if (!result)
      {
        return result;
      }

      if (*(result + 16))
      {
        v11 = *(result + 32);

        return v11;
      }

LABEL_11:

      return 0;
    }

LABEL_8:
    result = (*(*v0 + 224))(result);
    if (!result)
    {
      return result;
    }

    if (*(result + 16))
    {
      outlined init with copy of MOSuggestionSheetAssetDateRange(result + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v5, type metadata accessor for MOSuggestionSheetAssetDateRange);

      outlined init with take of MOSuggestionSheetAssetDateRange(v5, v8, type metadata accessor for MOSuggestionSheetAssetDateRange);
      v12 = specialized MOSuggestionInterstitialListAssetViewModel.singleDateRangeRepresentation(_:)(v8);
      outlined destroy of MOSuggestionSheetAssetDateRange(v8, type metadata accessor for MOSuggestionSheetAssetDateRange);
      return v12;
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.firstTitleAndDate.getter()
{
  v1 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = v20 - v7;
  result = (*(*v0 + 224))(v6);
  if (result)
  {
    if (*(result + 16))
    {
      outlined init with copy of MOSuggestionSheetAssetDateRange(result + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v5, type metadata accessor for MOSuggestionSheetAssetDateRange);

      outlined init with take of MOSuggestionSheetAssetDateRange(v5, v8, type metadata accessor for MOSuggestionSheetAssetDateRange);
      v10 = specialized MOSuggestionInterstitialListAssetViewModel.singleDateRangeRepresentation(_:)(v8);
      if (v11)
      {
        v12 = v11;
        v13 = v10;
        v14 = (*(*v0 + 248))();
        if (v14)
        {
          if (v14[2])
          {
            v16 = v14[4];
            v15 = v14[5];

            v20[0] = v16;
            v20[1] = v15;

            v17._countAndFlagsBits = 0x20A280E220;
            v17._object = 0xA500000000000000;
            String.append(_:)(v17);

            v18._countAndFlagsBits = v13;
            v18._object = v12;
            String.append(_:)(v18);

            v19 = v20[0];
            outlined destroy of MOSuggestionSheetAssetDateRange(v8, type metadata accessor for MOSuggestionSheetAssetDateRange);
            return v19;
          }
        }
      }

      outlined destroy of MOSuggestionSheetAssetDateRange(v8, type metadata accessor for MOSuggestionSheetAssetDateRange);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.topLevelSubtitleString.getter()
{
  if ((*(v0 + 65) | 4) == 0xF)
  {
    return MOSuggestionInterstitialListAssetViewModel.concactenatedTitles.getter();
  }

  else
  {
    return MOSuggestionInterstitialListAssetViewModel.toplevelDateRangeString.getter();
  }
}

uint64_t MOSuggestionInterstitialListAssetViewModel.toplevelDateRangeString.getter()
{
  v1 = type metadata accessor for Calendar();
  v47 = *(v1 - 8);
  __chkstk_darwin(v1);
  v46 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v48 = v6;
  v49 = v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v42 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v42 - v22;
  if (v0[65] - 17 <= 1)
  {
    return MOSuggestionInterstitialListAssetViewModel.singleFirstTitleAndDate.getter();
  }

  result = (*(*v0 + 224))(v21);
  if (result)
  {
    v45 = v1;
    v25 = *(result + 16);
    if (!v25)
    {

      return 0;
    }

    v26 = result;
    v44 = ((*(v14 + 80) + 32) & ~*(v14 + 80));
    outlined init with copy of MOSuggestionSheetAssetDateRange(v44 + result, v23, type metadata accessor for MOSuggestionSheetAssetDateRange);
    if (v25 == 1)
    {
    }

    else
    {
      v50 = v26;

      specialized MutableCollection<>.sort(by:)(&v50);

      v27 = *(v50 + 2);
      if (v27)
      {
        v28 = v44 + v50;
        v43 = type metadata accessor for MOSuggestionSheetAssetDateRange;
        v44 = v50;
        outlined init with copy of MOSuggestionSheetAssetDateRange(v28, v20, type metadata accessor for MOSuggestionSheetAssetDateRange);
        outlined init with copy of MOSuggestionSheetAssetDateRange(&v28[*(v14 + 72) * (v27 - 1)], v17, v43);

        v29 = v48;
        v30 = v49;
        v44 = *(v49 + 16);
        v44(v12, v20, v48);
        outlined init with copy of (String, Date?)(&v17[*(v13 + 20)], v5, &_s10Foundation4DateVSgMd);
        v31 = *(v30 + 48);
        if (v31(v5, 1, v29) == 1)
        {
          v44(v10, v17, v29);
          v32 = v31(v5, 1, v29);
          v33 = v29;
          v34 = v49;
          if (v32 != 1)
          {
            outlined destroy of Date?(v5);
          }
        }

        else
        {
          v34 = v49;
          (*(v49 + 32))(v10, v5, v29);
          v33 = v29;
        }

        v37 = v46;
        static Calendar.current.getter();
        v38 = Calendar.isDate(_:inSameDayAs:)();
        (*(v47 + 8))(v37, v45);
        v39 = (v34 + 8);
        if (v38)
        {
          v40 = specialized MOSuggestionInterstitialListAssetViewModel.timeRangeWithSameDayRepresentation(startTime:endTime:)(v12, v10);
        }

        else
        {
          v40 = specialized MOSuggestionInterstitialListAssetViewModel.timeRangeWithDifferentDaysRepresentation(startTime:endTime:)();
        }

        v35 = v40;
        v41 = *v39;
        (*v39)(v10, v33);
        v41(v12, v33);
        outlined destroy of MOSuggestionSheetAssetDateRange(v17, type metadata accessor for MOSuggestionSheetAssetDateRange);
        outlined destroy of MOSuggestionSheetAssetDateRange(v20, type metadata accessor for MOSuggestionSheetAssetDateRange);
        v36 = v23;
        goto LABEL_20;
      }
    }

    v35 = specialized MOSuggestionInterstitialListAssetViewModel.singleDateRangeRepresentation(_:)(v23);
    v36 = v23;
LABEL_20:
    outlined destroy of MOSuggestionSheetAssetDateRange(v36, type metadata accessor for MOSuggestionSheetAssetDateRange);
    return v35;
  }

  return result;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.concactenatedTitles.getter()
{
  v1 = (*(*v0 + 176))();
  v2 = v1;
  if (!v1)
  {
    return v2;
  }

  if (v1 >> 62)
  {
LABEL_26:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_27:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_27;
  }

LABEL_4:
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v7 = *(v2 + 8 * v6 + 32);

        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      v8 = (*(*v7 + 248))();
      if (v8)
      {
        break;
      }

LABEL_7:

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_28;
      }
    }

    if (!v8[2])
    {

      goto LABEL_7;
    }

    v10 = v8[4];
    v9 = v8[5];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    }

    v13 = *(v5 + 2);
    v12 = *(v5 + 3);
    if (v13 >= v12 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
    }

    *(v5 + 2) = v13 + 1;
    v14 = &v5[16 * v13];
    *(v14 + 4) = v10;
    *(v14 + 5) = v9;
  }

  while (v4 != v3);
LABEL_28:

  v15 = [objc_opt_self() mainBundle];
  v26._object = 0x80000001002B4C30;
  v16._countAndFlagsBits = 0x26204025202C4025;
  v16._object = 0xED000065726F6D20;
  v17._countAndFlagsBits = 0xD000000000000021;
  v17._object = 0x80000001002B4C00;
  v26._countAndFlagsBits = 0xD00000000000001FLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v15, v16, v26);

  v18 = *(v5 + 2);
  if (v18 > 2)
  {
    v20 = *(v5 + 4);
    v19 = *(v5 + 5);
    v22 = *(v5 + 6);
    v21 = *(v5 + 7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1002A4A00;
    *(v23 + 56) = &type metadata for String;
    v24 = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 32) = v20;
    *(v23 + 40) = v19;
    *(v23 + 96) = &type metadata for String;
    *(v23 + 104) = v24;
    *(v23 + 64) = v24;
    *(v23 + 72) = v22;
    *(v23 + 80) = v21;
    v2 = static String.localizedStringWithFormat(_:_:)();

    goto LABEL_36;
  }

  if (v18 == 2)
  {
    if (one-time initialization token for COMMA_SEPARATOR != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v2 = BidirectionalCollection<>.joined(separator:)();
LABEL_36:
  }

  else
  {
    if (*(v5 + 2))
    {
      v2 = *(v5 + 4);

      goto LABEL_36;
    }

    return 0;
  }

  return v2;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.subLevelDateRangeString.getter()
{
  v1 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v11 - v7;
  result = (*(*v0 + 224))(v6);
  if (result)
  {
    if (*(result + 16))
    {
      outlined init with copy of MOSuggestionSheetAssetDateRange(result + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v5, type metadata accessor for MOSuggestionSheetAssetDateRange);

      outlined init with take of MOSuggestionSheetAssetDateRange(v5, v8, type metadata accessor for MOSuggestionSheetAssetDateRange);
      v10 = specialized MOSuggestionInterstitialListAssetViewModel.singleDateRangeRepresentation(_:)(v8);
      outlined destroy of MOSuggestionSheetAssetDateRange(v8, type metadata accessor for MOSuggestionSheetAssetDateRange);
      return v10;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService30MOSuggestionAssetVisualSubTypeO_SitMd);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *(type metadata accessor for MOSuggestionSheetAssetDateRange(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetC_SitMd);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *(type metadata accessor for CloudDevice.Capability() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService26MOSuggestionAssetReferenceC_SitMd);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService19MOAssetAndMediaTypeV_SitMd);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for MOSuggestionSheetAssetDateRange(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for MOSuggestionSheetAssetDateRange(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CloudDevice.Capability();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for CloudDevice.Capability() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 32 * a3 - 32;
    v7 = result - a3;
LABEL_6:
    v8 = v7;
    v23 = v6;
    while (1)
    {
      v9 = (v6 + 32);
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
      if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
      {

LABEL_5:
        ++v4;
        v6 = v23 + 32;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      result = *(v6 + 32);
      v16 = *(v6 + 40);
      v17 = *(v6 + 48);
      v18 = *(v6 + 56);
      v19 = *v6;
      v20 = *(v6 + 16);
      *v6 = result;
      *(v6 + 8) = v16;
      *(v6 + 16) = v17;
      *(v6 + 24) = v18;
      v6 -= 32;
      *v9 = v19;
      v9[1] = v20;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = (*a4 + 8 * a3 - 8);
    v8 = result - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v15 = v7;
    while (1)
    {
      v17 = v9;
      v16 = *v7;

      v11 = closure #1 in MOEventBundle.typeSortedAssetReferencesForInterstitial.getter(&v17, &v16);

      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *v7;
        v9 = v7[1];
        *v7 = v9;
        v7[1] = v12;
        --v7;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v15 + 1;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = result - a3;
LABEL_5:
    v28 = a3;
    v7 = *(v4 + 8 * a3);
    v24 = v6;
    v25 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = *(v7 + 16);

      v10 = [v9 rankingDictionary];
      v11 = 0.0;
      if (v10)
      {
        v12 = v10;
        v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        AnyHashable.init<A>(_:)();
        if (*(v13 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v26), (v15 & 1) != 0))
        {
          outlined init with copy of Any(*(v13 + 56) + 32 * v14, v27);
          outlined destroy of AnyHashable(v26);

          if (swift_dynamicCast())
          {
            v11 = 1.67436463e243;
          }
        }

        else
        {

          outlined destroy of AnyHashable(v26);
        }
      }

      v16 = [*(v8 + 16) rankingDictionary];
      if (v16)
      {
        v17 = v16;
        v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        AnyHashable.init<A>(_:)();
        if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v26), (v20 & 1) != 0))
        {
          outlined init with copy of Any(*(v18 + 56) + 32 * v19, v27);
          outlined destroy of AnyHashable(v26);

          if (swift_dynamicCast())
          {

            if (v11 <= 1.67436463e243)
            {
              goto LABEL_4;
            }

            goto LABEL_20;
          }
        }

        else
        {

          outlined destroy of AnyHashable(v26);
        }
      }

      if (v11 <= 0.0)
      {
        goto LABEL_4;
      }

LABEL_20:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v21 = *v5;
      v7 = v5[1];
      *v5 = v7;
      v5[1] = v21;
      --v5;
      if (__CFADD__(v6++, 1))
      {
LABEL_4:
        a3 = v28 + 1;
        v5 = v25 + 1;
        v6 = v24 - 1;
        if (v28 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v92 = *v92;
    if (!v92)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    v84 = v9 + 16;
    v85 = *(v9 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v9[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v86), (*a3 + 16 * *v88), (*a3 + 16 * v89), v92);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_112;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_113;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_114;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 16 * v8);
      v12 = 16 * v10;
      v13 = (*a3 + 16 * v10);
      v16 = *v13;
      v15 = v13 + 32;
      v14 = v16;
      v17 = v10 + 2;
      v18 = v11;
      while (v6 != v17)
      {
        v19 = *v15;
        v15 += 16;
        v20 = (v11 < v14) ^ (v19 >= v18);
        ++v17;
        v18 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v17 - 1;
          if (v11 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = 0;
        v22 = 16 * v8;
        v23 = v10;
        do
        {
          if (v23 != v8 + v21 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v28 + v12);
            v25 = v28 + v22;
            v26 = *v24;
            v27 = *(v24 + 1);
            *v24 = *(v25 - 16);
            *(v25 - 16) = v26;
            *(v25 - 8) = v27;
          }

          ++v23;
          --v21;
          v22 -= 16;
          v12 += 16;
        }

        while (v23 < v8 + v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v38 = *(v9 + 2);
    v37 = *(v9 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v39;
    v40 = &v9[16 * v38];
    *(v40 + 4) = v10;
    *(v40 + 5) = v8;
    v41 = *v92;
    if (!*v92)
    {
      goto LABEL_125;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v9 + 4);
          v44 = *(v9 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_103;
          }

          v59 = &v9[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v9[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_110;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v69 = &v9[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_71:
        if (v64)
        {
          goto LABEL_105;
        }

        v72 = &v9[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_108;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_78:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v81 = *&v9[16 * v80 + 32];
        v82 = *&v9[16 * v42 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v81), (*a3 + 16 * *&v9[16 * v42 + 32]), (*a3 + 16 * v82), v41);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v80 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v83 = &v9[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        result = specialized Array.remove(at:)(v42);
        v39 = *(v9 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v9[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_101;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_102;
      }

      v54 = &v9[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_104;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v9[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 16 * v8 - 16;
  v31 = v10 - v8;
LABEL_30:
  v32 = *(v29 + 16 * v8);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *v34)
    {
LABEL_29:
      ++v8;
      v30 += 16;
      --v31;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 3);
    *(v34 + 1) = *v34;
    *v34 = v32;
    *(v34 + 1) = v35;
    v34 -= 16;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

{
  v6 = v4;
  v7 = a3;
  v118 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_104:
    v5 = v6;
    v6 = *v118;
    if (!*v118)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v110 = *(v10 + 2);
      if (v110 >= 2)
      {
        while (1)
        {
          v111 = *v7;
          if (!*v7)
          {
            goto LABEL_141;
          }

          v7 = (v110 - 1);
          v112 = *&v10[16 * v110];
          v113 = *&v10[16 * v110 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((v111 + 32 * v112), (v111 + 32 * *&v10[16 * v110 + 16]), (v111 + 32 * v113), v6);
          if (v5)
          {
          }

          if (v113 < v112)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          }

          if (v110 - 2 >= *(v10 + 2))
          {
            goto LABEL_131;
          }

          v114 = &v10[16 * v110];
          *v114 = v112;
          *(v114 + 1) = v113;
          result = specialized Array.remove(at:)(v110 - 1);
          v110 = *(v10 + 2);
          v7 = a3;
          if (v110 <= 1)
          {
          }
        }
      }
    }

LABEL_137:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    v10 = result;
    goto LABEL_106;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v124 = v10;
    v125 = v8;
    if (v9 + 1 < v8)
    {
      v13 = *v7;
      v119 = v9;
      v122 = 32 * v9;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      v18 = v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17;
      v116 = v6;
      if (v18)
      {
        v5 = 0;
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v19 = 0;
      v20 = (v119 + 2);
      v21 = v13 + v122 + 64;
      v22 = v12;
      do
      {
        v6 = v20;
        v25 = v22;
        v26 = v19;
        if (v20 >= v125)
        {
          break;
        }

        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
        v31 = v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30;
        v23 = v31 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        v24 = v5 ^ v23;
        v20 = v6 + 1;
        v21 += 32;
        v22 = v25 + 1;
        v19 = v26 + 32;
        v10 = v124;
      }

      while ((v24 & 1) == 0);
      v7 = a3;
      if (v5)
      {
        v11 = v119;
        if (v6 < v119)
        {
          goto LABEL_134;
        }

        if (v119 < v6)
        {
          v32 = 0;
          v33 = v119;
          do
          {
            if (v33 != v25)
            {
              if (!*a3)
              {
                goto LABEL_140;
              }

              v35 = *a3 + v122;
              v36 = (v35 + v32);
              v37 = v35 + v26;
              v38 = *v36;
              v39 = v36[1];
              v40 = *(v36 + 16);
              v41 = v36[3];
              v42 = *(v37 + 48);
              *v36 = *(v37 + 32);
              *(v36 + 1) = v42;
              *(v37 + 32) = v38;
              *(v37 + 40) = v39;
              *(v37 + 48) = v40;
              *(v37 + 56) = v41;
            }

            ++v33;
            v26 -= 32;
            v32 += 32;
          }

          while (v33 < v25--);
        }

        v12 = v6;
        v6 = v116;
      }

      else
      {
        v12 = v6;
        v6 = v116;
        v11 = v119;
      }
    }

    v43 = v7[1];
    if (v12 < v43)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_133;
      }

      if (v12 - v11 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v12 < v11)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v127 = v12;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v65 = *(v10 + 2);
    v64 = *(v10 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v66;
    v67 = &v10[16 * v65];
    *(v67 + 4) = v11;
    *(v67 + 5) = v12;
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_142;
    }

    if (v65)
    {
      while (1)
      {
        v68 = v66 - 1;
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v69 = *(v10 + 4);
          v70 = *(v10 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_73:
          if (v72)
          {
            goto LABEL_121;
          }

          v85 = &v10[16 * v66];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_124;
          }

          v91 = &v10[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_128;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v66 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v95 = &v10[16 * v66];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_87:
        if (v90)
        {
          goto LABEL_123;
        }

        v98 = &v10[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_126;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_94:
        v106 = v68 - 1;
        if (v68 - 1 >= v66)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v7)
        {
          goto LABEL_139;
        }

        v107 = *&v10[16 * v106 + 32];
        v108 = *&v10[16 * v68 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 32 * v107), (*v7 + 32 * *&v10[16 * v68 + 32]), (*v7 + 32 * v108), v5);
        if (v6)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v106 >= *(v10 + 2))
        {
          goto LABEL_118;
        }

        v109 = &v10[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        result = specialized Array.remove(at:)(v68);
        v66 = *(v10 + 2);
        if (v66 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v10[16 * v66 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_119;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_120;
      }

      v80 = &v10[16 * v66];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_122;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_125;
      }

      if (v84 >= v76)
      {
        v102 = &v10[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_129;
        }

        if (v71 < v105)
        {
          v68 = v66 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v127;
    if (v127 >= v8)
    {
      goto LABEL_104;
    }
  }

  v44 = (v11 + a4);
  if (__OFADD__(v11, a4))
  {
    goto LABEL_135;
  }

  if (v44 >= v43)
  {
    v44 = v7[1];
  }

  if (v44 < v11)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v12 == v44)
  {
    goto LABEL_53;
  }

  v117 = v6;
  v45 = *v7;
  v46 = *v7 + 32 * v12 - 32;
  v120 = v11;
  v47 = v11 - v12;
  v123 = v44;
LABEL_42:
  v126 = v12;
  v48 = v47;
  v49 = v46;
  while (1)
  {
    v50 = (v49 + 32);
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v55;
    if (v51 == v54 && v53 == v55)
    {

LABEL_41:
      v12 = v126 + 1;
      v46 += 32;
      --v47;
      if ((v126 + 1) == v123)
      {
        v12 = v123;
        v6 = v117;
        v11 = v120;
        v7 = a3;
        v10 = v124;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v57 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v45)
    {
      break;
    }

    v58 = *(v49 + 40);
    v59 = *(v49 + 48);
    v60 = *(v49 + 56);
    v61 = *v49;
    v62 = *(v49 + 16);
    *v49 = *(v49 + 32);
    *(v49 + 8) = v58;
    *(v49 + 16) = v59;
    *(v49 + 24) = v60;
    v49 -= 32;
    *v50 = v61;
    v50[1] = v62;
    if (__CFADD__(v48++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

{
  v88 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v88;
    if (*v88)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_90;
    }

    goto LABEL_127;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v89 = v6;
      v10 = *a3;
      v11 = *(*a3 + 8 * v7);
      v92 = *(*a3 + 8 * v9);
      v93 = v11;

      v12 = closure #1 in MOEventBundle.typeSortedAssetReferencesForInterstitial.getter(&v93, &v92);
      if (v4)
      {
LABEL_99:
      }

      v13 = v9;
      v14 = v12;

      v15 = v13 + 2;
      v86 = v13;
      v16 = 8 * v13;
      v5 = v10 + v16 + 16;
      while (1)
      {
        v7 = v89;
        if (v89 == v15)
        {
          break;
        }

        v17 = *v5;
        v92 = *(v5 - 8);
        v93 = v17;

        v18 = closure #1 in MOEventBundle.typeSortedAssetReferencesForInterstitial.getter(&v93, &v92);

        ++v15;
        v5 += 8;
        if ((v14 ^ v18))
        {
          v7 = v15 - 1;
          break;
        }
      }

      if (v14)
      {
        v9 = v86;
        if (v7 < v86)
        {
          goto LABEL_121;
        }

        if (v86 < v7)
        {
          v19 = 8 * v7 - 8;
          v20 = v7;
          v21 = v86;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v23 = *(v22 + v16);
              *(v22 + v16) = *(v22 + v19);
              *(v22 + v19) = v23;
            }

            ++v21;
            v19 -= 8;
            v16 += 8;
          }

          while (v21 < v20);
        }
      }

      else
      {
        v9 = v86;
      }
    }

    v24 = a3[1];
    if (v7 >= v24)
    {
      goto LABEL_130;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_117;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_130;
    }

    v25 = v9 + a4;
    if (__OFADD__(v9, a4))
    {
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    if (v25 >= v24)
    {
      v25 = a3[1];
    }

    if (v25 < v9)
    {
      goto LABEL_120;
    }

    if (v7 == v25)
    {
LABEL_130:
      if (v7 < v9)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v72 = *a3;
      v5 = *a3 + 8 * v7 - 8;
      v87 = v9;
      v73 = v9 - v7;
      v83 = v25;
      do
      {
        v74 = *(v72 + 8 * v7);
        v84 = v73;
        v90 = v5;
        do
        {
          v92 = *v5;
          v93 = v74;

          v75 = closure #1 in MOEventBundle.typeSortedAssetReferencesForInterstitial.getter(&v93, &v92);
          if (v4)
          {
            goto LABEL_99;
          }

          v76 = v75;

          if (!v76)
          {
            break;
          }

          if (!v72)
          {
            goto LABEL_123;
          }

          v77 = *v5;
          v74 = *(v5 + 8);
          *v5 = v74;
          *(v5 + 8) = v77;
          v5 -= 8;
        }

        while (!__CFADD__(v73++, 1));
        ++v7;
        v5 = v90 + 8;
        v73 = v84 - 1;
      }

      while (v7 != v83);
      v7 = v83;
      v9 = v87;
      if (v83 < v87)
      {
        goto LABEL_116;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v27 = *(v8 + 2);
    v26 = *(v8 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v28;
    v29 = &v8[16 * v27];
    *(v29 + 4) = v9;
    *(v29 + 5) = v7;
    v30 = *v88;
    if (!*v88)
    {
      goto LABEL_126;
    }

    if (v27)
    {
      break;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  while (1)
  {
    v31 = v28 - 1;
    if (v28 >= 4)
    {
      v36 = &v8[16 * v28 + 32];
      v37 = *(v36 - 64);
      v38 = *(v36 - 56);
      v42 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      if (v42)
      {
        goto LABEL_103;
      }

      v41 = *(v36 - 48);
      v40 = *(v36 - 40);
      v42 = __OFSUB__(v40, v41);
      v34 = v40 - v41;
      v35 = v42;
      if (v42)
      {
        goto LABEL_104;
      }

      v43 = &v8[16 * v28];
      v45 = *v43;
      v44 = *(v43 + 1);
      v42 = __OFSUB__(v44, v45);
      v46 = v44 - v45;
      if (v42)
      {
        goto LABEL_106;
      }

      v42 = __OFADD__(v34, v46);
      v47 = v34 + v46;
      if (v42)
      {
        goto LABEL_109;
      }

      if (v47 >= v39)
      {
        v65 = &v8[16 * v31 + 32];
        v67 = *v65;
        v66 = *(v65 + 1);
        v42 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v42)
        {
          goto LABEL_115;
        }

        if (v34 < v68)
        {
          v31 = v28 - 2;
        }

        goto LABEL_68;
      }

      goto LABEL_47;
    }

    if (v28 == 3)
    {
      v32 = *(v8 + 4);
      v33 = *(v8 + 5);
      v42 = __OFSUB__(v33, v32);
      v34 = v33 - v32;
      v35 = v42;
LABEL_47:
      if (v35)
      {
        goto LABEL_105;
      }

      v48 = &v8[16 * v28];
      v50 = *v48;
      v49 = *(v48 + 1);
      v51 = __OFSUB__(v49, v50);
      v52 = v49 - v50;
      v53 = v51;
      if (v51)
      {
        goto LABEL_108;
      }

      v54 = &v8[16 * v31 + 32];
      v56 = *v54;
      v55 = *(v54 + 1);
      v42 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v42)
      {
        goto LABEL_111;
      }

      if (__OFADD__(v52, v57))
      {
        goto LABEL_112;
      }

      if (v52 + v57 >= v34)
      {
        if (v34 < v57)
        {
          v31 = v28 - 2;
        }

        goto LABEL_68;
      }

      goto LABEL_61;
    }

    v58 = &v8[16 * v28];
    v60 = *v58;
    v59 = *(v58 + 1);
    v42 = __OFSUB__(v59, v60);
    v52 = v59 - v60;
    v53 = v42;
LABEL_61:
    if (v53)
    {
      goto LABEL_107;
    }

    v61 = &v8[16 * v31];
    v63 = *(v61 + 4);
    v62 = *(v61 + 5);
    v42 = __OFSUB__(v62, v63);
    v64 = v62 - v63;
    if (v42)
    {
      goto LABEL_110;
    }

    if (v64 < v52)
    {
      goto LABEL_3;
    }

LABEL_68:
    v69 = v31 - 1;
    if (v31 - 1 >= v28)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_122;
    }

    v5 = *&v8[16 * v69 + 32];
    v70 = *&v8[16 * v31 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v5), (*a3 + 8 * *&v8[16 * v31 + 32]), (*a3 + 8 * v70), v30);
    if (v4)
    {
    }

    if (v70 < v5)
    {
      goto LABEL_101;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    if (v69 >= *(v8 + 2))
    {
      goto LABEL_102;
    }

    v71 = &v8[16 * v69];
    *(v71 + 4) = v5;
    *(v71 + 5) = v70;
    v94 = v8;
    result = specialized Array.remove(at:)(v31);
    v8 = v94;
    v28 = *(v94 + 2);
    if (v28 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  v8 = result;
LABEL_90:
  v94 = v8;
  v79 = *(v8 + 2);
  if (v79 < 2)
  {
  }

  while (*a3)
  {
    v80 = *&v8[16 * v79];
    v81 = *&v8[16 * v79 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v80), (*a3 + 8 * *&v8[16 * v79 + 16]), (*a3 + 8 * v81), v5);
    if (v4)
    {
    }

    if (v81 < v80)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    if (v79 - 2 >= *(v8 + 2))
    {
      goto LABEL_114;
    }

    v82 = &v8[16 * v79];
    *v82 = v80;
    *(v82 + 1) = v81;
    v94 = v8;
    result = specialized Array.remove(at:)(v79 - 1);
    v8 = v94;
    v79 = *(v94 + 2);
    if (v79 <= 1)
    {
    }
  }

LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v81 = v8 + 2;
    v82 = v8[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v10 < v13) ^ (v17 >= v16);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v36;
    v37 = v8 + 4;
    v38 = &v8[2 * v5 + 4];
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = v8[4];
          v40 = v8[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v8[2 * v36];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v37[2 * v5];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v8[2 * v36];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v37[2 * v5];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = &v37[2 * v5 - 2];
        v77 = *v76;
        v78 = &v37[2 * v5];
        v79 = v78[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v8[2];
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove(&v37[2 * v5], v78 + 2, 16 * (v80 - 1 - v5));
        v8[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[2 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v8[2 * v36];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v37[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}