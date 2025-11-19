void ReportFlowPresenter.presentGroupFaceTimeSpamReportAndBlockAlert(for:)(void *a1)
{
  v2 = specialized CallReportingViewModel.getFormattedInitiator(for:)(a1);
  if (v3)
  {
    specialized CallReportingViewModel.getReportInitiatorMessage(formattedHandle:)(v2, v3);

    v4 = String._bridgeToObjectiveC()();

    v5 = String._bridgeToObjectiveC()();

    oslog = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:0];

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v7 = String._bridgeToObjectiveC()();

    v45 = partial apply for closure #1 in ReportFlowPresenter.presentGroupFaceTimeSpamReportAndBlockAlert(for:);
    v46 = v6;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v44 = &block_descriptor_54;
    v8 = _Block_copy(&aBlock);

    v9 = objc_opt_self();
    v10 = [v9 actionWithTitle:v7 style:1 handler:v8];
    _Block_release(v8);

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;

    v13 = a1;
    v14 = String._bridgeToObjectiveC()();
    v15 = v10;

    v45 = partial apply for closure #2 in ReportFlowPresenter.presentGroupFaceTimeSpamReportAndBlockAlert(for:);
    v46 = v12;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v44 = &block_descriptor_61;
    v16 = _Block_copy(&aBlock);

    v17 = [v9 actionWithTitle:v14 style:2 handler:v16];
    _Block_release(v16);

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v13;
    v20 = v13;

    v21 = String._bridgeToObjectiveC()();

    v45 = partial apply for closure #3 in ReportFlowPresenter.presentGroupFaceTimeSpamReportAndBlockAlert(for:);
    v46 = v19;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v44 = &block_descriptor_68;
    v22 = _Block_copy(&aBlock);

    v23 = [v9 actionWithTitle:v21 style:2 handler:v22];
    v24 = v22;
    v25 = v17;
    _Block_release(v24);

    [oslog addAction:v17];
    [oslog addAction:v23];
    v26 = v15;
    [oslog addAction:v15];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      [Strong presentViewController:oslog animated:1 completion:0];
    }

    else
    {
      v28 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v33))
      {
        v34 = v25;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        aBlock = v36;
        *v35 = 136315138;
        *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x8000000100244FE0, &aBlock);
        _os_log_impl(&_mh_execute_header, v28, v33, "ReportFlowPresenter: in %s, failed to present alert because alertPresentingViewController was nil", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);

        v25 = v34;
      }
    }

    v37 = swift_unknownObjectWeakLoadStrong();
    if (v37)
    {
      v38 = v37;
      [v37 fetchSharing];
    }
  }

  else
  {
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.spamReport);
    osloga = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(osloga, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x8000000100244FE0, &aBlock);
      _os_log_impl(&_mh_execute_header, osloga, v30, "MPRecentsTableViewController: in %s, call initiator is nil", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    else
    {
    }
  }
}

void ReportFlowPresenter.presentBlockUnknownAlert(for:)(void *a1)
{
  v2 = v1;

  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() alertControllerWithTitle:v4 message:0 preferredStyle:0];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = String._bridgeToObjectiveC()();

  v39 = partial apply for closure #1 in ReportFlowPresenter.presentBlockUnknownAlert(for:);
  v40 = v6;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v38 = &block_descriptor_72_0;
  v8 = _Block_copy(&aBlock);

  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v7 style:1 handler:v8];
  _Block_release(v8);

  v11 = *(v2 + OBJC_IVAR___MPReportFlowPresenter_contactsService);
  v12 = *&v11[OBJC_IVAR___MPContactsService_dataProvider];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14 = [v12 contactByHandleForRecentCall:a1 keyDescriptors:isa];

  if (v14)
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = 0;
  }

  v16 = [a1 validRemoteParticipantHandles];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = a1;
    v20 = v11;
    specialized Sequence.compactMap<A>(_:)(v18, v15, v19, v20);
    v22 = v21;

    swift_bridgeObjectRelease_n();
  }

  else
  {

    v22 = &_swiftEmptyArrayStorage;
  }

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;

  v25 = String._bridgeToObjectiveC()();

  v39 = partial apply for closure #2 in ReportFlowPresenter.presentBlockUnknownAlert(for:);
  v40 = v24;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v38 = &block_descriptor_79;
  v26 = _Block_copy(&aBlock);

  v27 = [v9 actionWithTitle:v25 style:2 handler:v26];
  _Block_release(v26);

  [v5 addAction:v27];
  [v5 addAction:v10];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    [Strong presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000100245020, &aBlock);
      _os_log_impl(&_mh_execute_header, v29, v30, "ReportFlowPresenter: in %s, failed to present alert because alertPresentingViewController was nil", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }
  }

  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    [v33 fetchSharing];
  }
}

id ReportFlowPresenter.__allocating_init(callReportingViewModel:alertPresentingViewController:contactsService:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR___MPReportFlowPresenter_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static Logger.mobilePhone);
  (*(*(v10 - 8) + 16))(&v8[v9], v11, v10);
  *&v8[OBJC_IVAR___MPReportFlowPresenter_classificationViewController] = 0;
  *&v8[OBJC_IVAR___MPReportFlowPresenter_callReportingViewModel] = a1;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR___MPReportFlowPresenter_contactsService] = a3;
  v15.receiver = v8;
  v15.super_class = v4;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, "init");

  return v13;
}

id ReportFlowPresenter.init(callReportingViewModel:alertPresentingViewController:contactsService:)(void *a1, void *a2, uint64_t a3)
{
  v5 = specialized ReportFlowPresenter.init(callReportingViewModel:alertPresentingViewController:contactsService:)(a1, a2, a3);

  return v5;
}

void ReportFlowPresenter.presentFaceTimeSpamReportAlert(for:)(void *a1)
{

  v1 = String._bridgeToObjectiveC()();

  v20 = [objc_opt_self() alertControllerWithTitle:v1 message:0 preferredStyle:0];

  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v3 = String._bridgeToObjectiveC()();

  v25 = partial apply for closure #1 in ReportFlowPresenter.presentFaceTimeSpamReportAlert(for:);
  v26 = v2;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v24 = &block_descriptor_83;
  v4 = _Block_copy(&aBlock);

  v5 = objc_opt_self();
  v6 = [v5 actionWithTitle:v3 style:1 handler:v4];
  _Block_release(v4);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  v9 = a1;
  v10 = String._bridgeToObjectiveC()();

  v25 = partial apply for closure #2 in ReportFlowPresenter.presentFaceTimeSpamReportAlert(for:);
  v26 = v8;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v24 = &block_descriptor_90;
  v11 = _Block_copy(&aBlock);

  v12 = [v5 actionWithTitle:v10 style:2 handler:v11];
  _Block_release(v11);

  [v20 addAction:v12];
  [v20 addAction:v6];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong presentViewController:v20 animated:1 completion:0];
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000100245040, &aBlock);
      _os_log_impl(&_mh_execute_header, v15, v16, "ReportFlowPresenter: in %s, failed to present alert because alertPresentingViewController was nil", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }
  }
}

void closure #1 in ReportFlowPresenter.presentFaceTimeSpamReportAlert(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.spamReport);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000100245040, &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "ReportFlowPresenter: in %s, user did tap on cancel", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void closure #2 in ReportFlowPresenter.presentFaceTimeSpamReportAlert(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.spamReport);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000100245040, &v15);
      _os_log_impl(&_mh_execute_header, v7, v8, "ReportFlowPresenter: in %s, user did tap on report", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v11 = *&v5[OBJC_IVAR___MPReportFlowPresenter_callReportingViewModel];
    v12 = *&v11[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_spamReportManager];
    v13 = v11;
    v14 = v12;
    FaceTimeSpamReportManager.reportSpam(call:)(a3);
  }
}

void closure #1 in ReportFlowPresenter.presentBlockAllAlert(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.spamReport);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000100244FC0, &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "ReportFlowPresenter: in %s, user did tap on cancel", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void closure #2 in ReportFlowPresenter.presentBlockAllAlert(for:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.spamReport);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000100244FC0, &v15);
      _os_log_impl(&_mh_execute_header, v7, v8, "ReportFlowPresenter: in %s, user did tap on block all", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v11 = *&v5[OBJC_IVAR___MPReportFlowPresenter_callReportingViewModel];
    specialized CallReportingViewModel.block(contacts:)(a3);

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v13 presentSafetyCheckFor:isa];
    }
  }
}

void closure #1 in ReportFlowPresenter.presentBlockUnknownAlert(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.spamReport);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000100245020, &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "ReportFlowPresenter: in %s, user did tap on cancel", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void closure #2 in ReportFlowPresenter.presentBlockUnknownAlert(for:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.spamReport);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000100245020, &v15);
      _os_log_impl(&_mh_execute_header, v7, v8, "ReportFlowPresenter: in %s, user did tap on block unknown", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v11 = *&v5[OBJC_IVAR___MPReportFlowPresenter_callReportingViewModel];
    specialized CallReportingViewModel.block(unknownContacts:)(a3);

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v13 presentSafetyCheckFor:isa];
    }
  }
}

void closure #1 in ReportFlowPresenter.presentFaceTimeSpamReportAndBlockAlert(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.spamReport);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000100244F20, &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "ReportFlowPresenter: in %s, user did tap on cancel", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void closure #2 in ReportFlowPresenter.presentFaceTimeSpamReportAndBlockAlert(for:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.spamReport);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000100244F20, &v15);
      _os_log_impl(&_mh_execute_header, v7, v8, "ReportFlowPresenter: in %s, user did tap on block", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v11 = *&v5[OBJC_IVAR___MPReportFlowPresenter_callReportingViewModel];
    specialized CallReportingViewModel.block(contacts:)(a3);

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v13 presentSafetyCheckFor:isa];
    }
  }
}

void closure #3 in ReportFlowPresenter.presentFaceTimeSpamReportAndBlockAlert(for:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.spamReport);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000100244F20, &v22);
      _os_log_impl(&_mh_execute_header, v9, v10, "ReportFlowPresenter: in %s, user did tap on block and report", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    v13 = OBJC_IVAR___MPReportFlowPresenter_callReportingViewModel;
    v14 = *&v7[OBJC_IVAR___MPReportFlowPresenter_callReportingViewModel];
    specialized CallReportingViewModel.block(contacts:)(a3);

    v15 = *&v7[v13];
    v16 = *&v15[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_spamReportManager];
    v17 = v15;
    v18 = v16;
    FaceTimeSpamReportManager.reportSpam(call:)(a4);

    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v20 presentSafetyCheckFor:isa];
    }
  }
}

uint64_t sub_100143850()
{

  return _swift_deallocObject(v0, 40, 7);
}

void closure #1 in ReportFlowPresenter.presentGroupFaceTimeSpamReportAndBlockAlert(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.spamReport);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x8000000100244FE0, &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "MPRecentsTableViewController: in %s, user did tap on cancel", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void closure #2 in ReportFlowPresenter.presentGroupFaceTimeSpamReportAndBlockAlert(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.spamReport);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x8000000100244FE0, &v15);
      _os_log_impl(&_mh_execute_header, v7, v8, "MPRecentsTableViewController: in %s, user did tap on block", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v11 = *&v5[OBJC_IVAR___MPReportFlowPresenter_callReportingViewModel];
    specialized CallReportingViewModel.blockInitiator(spamCall:)(a3);

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8CHHandleCSgGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_100209AA0;
      *(v14 + 32) = [a3 initiator];
      UIViewController.presentSafetyCheck(handles:)(v14);
    }
  }
}

void closure #3 in ReportFlowPresenter.presentGroupFaceTimeSpamReportAndBlockAlert(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.spamReport);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x8000000100244FE0, &v20);
      _os_log_impl(&_mh_execute_header, v7, v8, "MPRecentsTableViewController: in %s, user did tap on block and report", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v11 = OBJC_IVAR___MPReportFlowPresenter_callReportingViewModel;
    v12 = *&v5[OBJC_IVAR___MPReportFlowPresenter_callReportingViewModel];
    specialized CallReportingViewModel.blockInitiator(spamCall:)(a3);

    v13 = *&v5[v11];
    v14 = *&v13[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_spamReportManager];
    v15 = v13;
    v16 = v14;
    FaceTimeSpamReportManager.reportSpam(call:)(a3);

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8CHHandleCSgGMd);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100209AA0;
      *(v19 + 32) = [a3 initiator];
      UIViewController.presentSafetyCheck(handles:)(v19);
    }
  }
}

void closure #1 in ReportFlowPresenter.showReportingExtension(for:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v9 = a4;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25[0] = v14;
    *v12 = 136315650;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000100244F80, v25);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    *v13 = v8;
    v13[1] = v9;
    v15 = v8;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "ReportFlowPresenter: in %s, Presenting ClassificationViewController with communication: %@ for call: %@", v12, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v18 = Strong, v19 = swift_unknownObjectWeakLoadStrong(), v18, v19))
  {
    [v19 presentViewController:a6 animated:1 completion:0];
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v22 = 136315138;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000100244F80, &v24);
      _os_log_impl(&_mh_execute_header, v20, v21, "ReportFlowPresenter: in %s, Unable to show reporting extension for call because the alertPresentingViewController is nil", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void closure #1 in ReportFlowPresenter.showCarrierVoiceCallReportAlert(for:)(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Spamreporting: carrier reporting, user did tap block", v11, 2u);
  }

  v12 = *&a3[OBJC_IVAR___MPContactsService_dataProvider];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14 = [v12 contactByHandleForRecentCall:a4 keyDescriptors:isa];

  if (v14)
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = 0;
  }

  v16 = [a4 validRemoteParticipantHandles];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = a4;
    v20 = a3;
    v21 = specialized Sequence.compactMap<A>(_:)(v18, v15, v19, v20);

    swift_bridgeObjectRelease_n();
  }

  else
  {

    v21 = &_swiftEmptyArrayStorage;
  }

  specialized CallReportingViewModel.block(contacts:)(v21);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
  v22 = Array._bridgeToObjectiveC()().super.isa;

  [a6 presentSafetyCheckFor:v22];
}

void closure #2 in ReportFlowPresenter.showCarrierVoiceCallReportAlert(for:)(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Spamreporting: carrier reporting, user did tap block and report", v11, 2u);
  }

  v12 = *&a3[OBJC_IVAR___MPContactsService_dataProvider];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14 = [v12 contactByHandleForRecentCall:a4 keyDescriptors:isa];

  if (v14)
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = 0;
  }

  v16 = [a4 validRemoteParticipantHandles];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = a4;
    v20 = a3;
    v21 = specialized Sequence.compactMap<A>(_:)(v18, v15, v19, v20);

    swift_bridgeObjectRelease_n();
  }

  else
  {

    v21 = &_swiftEmptyArrayStorage;
  }

  specialized CallReportingViewModel.block(contacts:)(v21);
  v24[3] = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
  v24[4] = &protocol witness table for CHRecentCall;
  v24[0] = a4;
  v22 = a4;

  dispatch thunk of CarrierVoiceSpamReportHelper.reportSpam(voiceCall:)();

  __swift_destroy_boxed_opaque_existential_0(v24);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
  v23 = Array._bridgeToObjectiveC()().super.isa;

  [a6 presentSafetyCheckFor:v23];
}

uint64_t closure #3 in ReportFlowPresenter.showCarrierVoiceCallReportAlert(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6[3] = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
  v6[4] = &protocol witness table for CHRecentCall;
  v6[0] = a3;

  v4 = a3;
  dispatch thunk of CarrierVoiceSpamReportHelper.logEventForCancelledScenario(for:)();

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t ReportFlowPresenter.controller(_:didComplete:with:)(uint64_t a1, void *a2, void *a3)
{
  v22 = a3;
  v6 = type metadata accessor for Logger();
  v23 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, v3 + OBJC_IVAR___MPReportFlowPresenter_logger, v6);
  type metadata accessor for MainActor();
  v14 = a3;
  v15 = v3;
  v16 = a2;
  v17 = static MainActor.shared.getter();
  v18 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = v17;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = v15;
  (*(v7 + 32))(&v20[v18], v9, v23);
  *&v20[v19] = v16;
  *&v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8] = v22;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in ReportFlowPresenter.controller(_:didComplete:with:), v20);
}

uint64_t closure #1 in ReportFlowPresenter.controller(_:didComplete:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[8] = a1;
  v8 = type metadata accessor for Logger();
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v7[15] = *(v9 + 64);
  v7[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[17] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in ReportFlowPresenter.controller(_:didComplete:with:), v11, v10);
}

uint64_t closure #1 in ReportFlowPresenter.controller(_:didComplete:with:)()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[15];
    v2 = v0[16];
    v4 = v0[13];
    v5 = v0[14];
    v14 = v0[11];
    v15 = v0[12];
    (*(v5 + 16))(v2, v0[10], v4);
    v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v7 = (v3 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v8 = swift_allocObject();
    (*(v5 + 32))(v8 + v6, v2, v4);
    *(v8 + v7) = v14;
    *(v8 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;
    v0[6] = partial apply for closure #1 in closure #1 in ReportFlowPresenter.controller(_:didComplete:with:);
    v0[7] = v8;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed () -> ();
    v0[5] = &block_descriptor_107;
    v9 = _Block_copy(v0 + 2);
    v10 = v15;
    v11 = v14;

    [Strong dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
  }

  *v0[8] = Strong == 0;

  v12 = v0[1];

  return v12();
}

void closure #1 in closure #1 in ReportFlowPresenter.controller(_:didComplete:with:)(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v6;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v6;
    v9[1] = a3;
    v10 = v6;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v7, "Completed classification request: %@ with response: %@", v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
  }
}

uint64_t objectdestroy_16Tm()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_10014542C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100145474()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in ReportFlowPresenter.showCarrierVoiceCallReportAlert(for:)(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v6);
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v9, v10, v11, v12);
}

uint64_t objectdestroy_3Tm()
{

  return _swift_deallocObject(v0, 32, 7);
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v5 = v39;
    v6 = v40;
    v7 = v41;
    v8 = v42;
    v9 = v43;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v36 = a2 & 0xC000000000000001;
  v37 = a2;
  while (1)
  {
    if (v5 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle), swift_dynamicCast(), (v15 = v38) == 0))
      {
LABEL_40:
        outlined consume of Set<CHHandle>.Iterator._Variant();
        return;
      }

      goto LABEL_18;
    }

    v13 = v8;
    v14 = v9;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v9 = (v14 - 1) & v14;
    v15 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_40;
    }

LABEL_18:
    if (v37)
    {
      if (v36)
      {
        v16 = v15;
        v17 = __CocoaDictionary.lookup(_:)();

        if (!v17)
        {
          goto LABEL_26;
        }

        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
        swift_dynamicCast();
        v18 = v38;
        if (!v38)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!*(v37 + 16))
        {
          goto LABEL_26;
        }

        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
        if ((v20 & 1) == 0)
        {
          goto LABEL_26;
        }

        v18 = *(*(v37 + 56) + 8 * v19);
        if (!v18)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_26:
      v21 = v15;
      v22 = [v21 type];
      if (v22 > 3)
      {
        v23 = 1;
      }

      else
      {
        v23 = qword_10020D1D0[v22];
      }

      v24 = [v21 value];
      if (!v24)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = String._bridgeToObjectiveC()();
      }

      v35 = [objc_allocWithZone(TUHandle) initWithType:v23 value:v24];

      v25 = [a3 isoCountryCode];
      if (v25)
      {
        v26 = v25;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v29 = [*(a4 + OBJC_IVAR___MPContactsService_dataProvider) metadataCache];
      v32 = v21;
      if (v28)
      {
        v30 = String._bridgeToObjectiveC()();
      }

      else
      {
        v30 = 0;
      }

      v31 = [objc_opt_self() contactForHandle:v35 isoCountryCode:v30 metadataCache:v29];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  while (1)
  {
    v8 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v8 >= ((v7 + 64) >> 6))
    {
      goto LABEL_40;
    }

    v14 = *(v6 + 8 * v8);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id specialized ReportFlowPresenter.init(callReportingViewModel:alertPresentingViewController:contactsService:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR___MPReportFlowPresenter_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = __swift_project_value_buffer(v8, static Logger.mobilePhone);
  (*(*(v8 - 8) + 16))(&v3[v7], v9, v8);
  *&v3[OBJC_IVAR___MPReportFlowPresenter_classificationViewController] = 0;
  *&v3[OBJC_IVAR___MPReportFlowPresenter_callReportingViewModel] = a1;
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR___MPReportFlowPresenter_contactsService] = a3;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = a1;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t objectdestroy_57Tm()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #1 in ReportFlowPresenter.controller(_:didComplete:with:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in ReportFlowPresenter.controller(_:didComplete:with:)(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t type metadata accessor for ReportFlowPresenter()
{
  result = type metadata singleton initialization cache for ReportFlowPresenter;
  if (!type metadata singleton initialization cache for ReportFlowPresenter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ReportFlowPresenter()
{
  result = type metadata accessor for Logger();
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

uint64_t objectdestroy_92Tm()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t closure #1 in ReportFlowPresenter.controller(_:didComplete:with:)partial apply(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #1 in ReportFlowPresenter.controller(_:didComplete:with:)(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_100146134()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

void partial apply for closure #1 in closure #1 in ReportFlowPresenter.controller(_:didComplete:with:)()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in ReportFlowPresenter.controller(_:didComplete:with:)(v0 + v2, v4, v5);
}

MobilePhone::PersonalNicknameMenuViewDisplayContext_optional __swiftcall PersonalNicknameMenuViewDisplayContext.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance PersonalNicknameMenuViewDisplayContext@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

Class static PersonalNicknameMenuView.meCardSharingEnabled.getter()
{
  if (one-time initialization token for nicknamesDefaults != -1)
  {
    swift_once();
  }

  isa = nicknamesDefaults.value.super.isa;
  if (nicknamesDefaults.value.super.isa)
  {
    v1 = String._bridgeToObjectiveC()();
    isa = [(objc_class *)isa BOOLForKey:v1];
  }

  return isa;
}

void PersonalNicknameMenuView.personalNickname.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd);
  __chkstk_darwin(v1 - 8);
  v3 = &v44 - v2;
  v4 = type metadata accessor for PersonNameComponents();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(nicknamesDefaults.value._kvo_ + v0);
  if (v8)
  {
    v9 = v8;
    v47 = v0;
    v46 = PersonalNicknameMenuView.nameLabel.getter();
    v45 = objc_opt_self();
    v10 = [v9 firstName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = [v9 lastName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 56))(v3, 1, 1, v4);
    PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
    v13 = [v45 localizedStringFromPersonNameComponents:isa style:2 options:0];

    if (!v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = String._bridgeToObjectiveC()();
    }

    v14 = v46;
    [v46 setText:v13];

    v15 = [v9 avatar];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 imageData];

      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = [objc_opt_self() mainScreen];
      [v21 scale];
      v23 = v22;

      v24 = objc_allocWithZone(UIImage);
      outlined copy of Data._Representation(v18, v20);
      v25 = Data._bridgeToObjectiveC()().super.isa;
      v26 = [v24 initWithData:v25 scale:v23];

      outlined consume of Data._Representation(v18, v20);
      v27 = v47;
      v28 = PersonalNicknameMenuView.leadingAvatarView.getter();
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        [v29 setImage:v26];
      }

      else
      {

        v30 = PersonalNicknameMenuView.containerStackView.getter();
        v31 = *&nicknamesDefaults.is_nil;
        [v30 removeArrangedSubview:*(v47 + *&nicknamesDefaults.is_nil)];

        v32 = [objc_allocWithZone(UIImageView) initWithImage:v26];
        v33 = *(v47 + v31);
        *(v47 + v31) = v32;
        v34 = v32;

        [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
        [*(v47 + OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___containerStackView) insertArrangedSubview:*(v47 + v31) atIndex:0];
        v46 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v35 = v9;
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_100209A90;
        v37 = [*(v47 + v31) heightAnchor];
        v38 = [v37 constraintEqualToConstant:50.0];

        *(v36 + 32) = v38;
        v27 = v47;
        v39 = [*(v47 + v31) widthAnchor];
        v40 = [v39 constraintEqualToConstant:50.0];

        *(v36 + 40) = v40;
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        v28 = Array._bridgeToObjectiveC()().super.isa;
        v9 = v35;

        [v46 activateConstraints:v28];
      }

      v41 = *&nicknamesDefaults.is_nil;
      v42 = [*(v27 + *&nicknamesDefaults.is_nil) layer];
      [v42 setCornerRadius:25.0];

      v43 = [*(v27 + v41) layer];
      [v43 setMasksToBounds:1];

      outlined consume of Data._Representation(v18, v20);
    }

    else
    {
    }
  }
}

id PersonalNicknameMenuView.contactStore.getter()
{
  identifier = nicknamesDefaults.value._identifier_;
  v2 = *(&nicknamesDefaults.value._identifier_->isa + v0);
  if (v2)
  {
    v3 = *(&nicknamesDefaults.value._identifier_->isa + v0);
  }

  else
  {
    v4 = closure #1 in PersonalNicknameMenuView.contactStore.getter();
    v5 = *(&identifier->isa + v0);
    *(&identifier->isa + v0) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in PersonalNicknameMenuView.contactStore.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    v1 = TUPreferredFaceTimeBundleIdentifier();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 tu_contactStoreConfigurationForBundleIdentifier:v3];

  v5 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v4];
  return v5;
}

id PersonalNicknameMenuView.meContact.getter()
{
  container = nicknamesDefaults.value._container_;
  v2 = *(&nicknamesDefaults.value._container_->isa + v0);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = closure #1 in PersonalNicknameMenuView.meContact.getter();
    v4 = *(&container->isa + v0);
    *(&container->isa + v0) = v3;
    v5 = v3;
    outlined consume of CNContact??(v4);
  }

  outlined copy of CNContact??(v2);
  return v3;
}

id closure #1 in PersonalNicknameMenuView.meContact.getter()
{
  v0 = PersonalNicknameMenuView.contactStore.getter();
  isa = [objc_opt_self() keysForNicknameHandling];
  if (!isa)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v12 = 0;
  v2 = [v0 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:&v12];

  v3 = v12;
  if (!v2)
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.nickname);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Could not fetch me card %@", v8, 0xCu);
      outlined destroy of (NSAttributedStringKey, Any)(v9, &_sSo8NSObjectCSgMd);
    }

    else
    {
    }

    return 0;
  }

  return v2;
}

id closure #1 in PersonalNicknameMenuView.leadingAvatarView.getter(uint64_t a1)
{
  v1 = *(nicknamesDefaults.value._kvo_ + a1);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 avatar];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 imageData];

      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = [objc_opt_self() mainScreen];
      [v9 scale];
      v11 = v10;

      v12 = objc_allocWithZone(UIImage);
      outlined copy of Data._Representation(v6, v8);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v14 = [v12 initWithData:isa scale:v11];

      outlined consume of Data._Representation(v6, v8);
      v15 = [objc_allocWithZone(UIImageView) initWithImage:v14];
      v16 = [v15 layer];
      [v16 setCornerRadius:25.0];

      v17 = [v15 layer];
      [v17 setMasksToBounds:1];

      outlined consume of Data._Representation(v6, v8);
      return v15;
    }

    else
    {
      v22 = [objc_allocWithZone(CNMutableContact) init];
      v23 = [v2 firstName];
      if (!v23)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = String._bridgeToObjectiveC()();
      }

      [v22 setGivenName:v23];

      v24 = [v2 lastName];
      if (!v24)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = String._bridgeToObjectiveC()();
      }

      [v22 setFamilyName:v24];

      v25 = [objc_allocWithZone(CNAvatarView) initWithContact:v22];
      return v25;
    }
  }

  else
  {
    v19 = PersonalNicknameMenuView.meContact.getter();
    if (v19)
    {
      v20 = v19;
      v21 = [objc_allocWithZone(CNAvatarView) initWithContact:v19];

      return v21;
    }

    else
    {
      v26 = objc_allocWithZone(UIView);

      return [v26 init];
    }
  }
}

id PersonalNicknameMenuView.leadingAvatarView.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id closure #1 in PersonalNicknameMenuView.nameLabel.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for PersonNameComponents();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(UILabel) init];
  v10 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCallout];
  [v9 setFont:v10];

  v11 = [objc_opt_self() labelColor];
  [v9 setTextColor:v11];

  v12 = *(nicknamesDefaults.value._kvo_ + a1);
  if (v12)
  {
    v23 = objc_opt_self();
    v13 = v12;
    v14 = v5;
    v15 = [v13 firstName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = v13;
    v16 = [v13 lastName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 56))(v4, 1, 1, v14);
    PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v8, v14);
    v18 = [v23 localizedStringFromPersonNameComponents:isa style:2 options:0];

    if (!v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = String._bridgeToObjectiveC()();
    }

    [v9 setText:v18];
  }

  else
  {
    v19 = PersonalNicknameMenuView.meContact.getter();
    if (v19)
    {
      v20 = v19;
      v21 = [v19 displayName];
      [v9 setText:v21];
    }
  }

  return v9;
}

id closure #1 in PersonalNicknameMenuView.subtitleLabel.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v2 setFont:v3];

  v4 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v4];

  if (*(a1 + OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView_displayContext) == 2)
  {
    v5 = [objc_opt_self() mainBundle];
    v13 = 0xE000000000000000;
    v6 = 0x8000000100245460;
    v7 = 0xD000000000000014;
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v13 = 0xE000000000000000;
    v7 = 0x50202620656D614ELL;
    v6 = 0xEC0000006F746F68;
  }

  v8.value._countAndFlagsBits = 0x746E656365524850;
  v8.value._object = 0xE900000000000073;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, v8, v5, v9, *(&v13 - 1));

  v11 = String._bridgeToObjectiveC()();

  [v2 setText:v11];

  return v2;
}

id closure #1 in PersonalNicknameMenuView.labelStackView.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100209A90;
  *(v0 + 32) = PersonalNicknameMenuView.nameLabel.getter();
  *(v0 + 40) = PersonalNicknameMenuView.subtitleLabel.getter();
  v1 = objc_allocWithZone(UIStackView);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIView);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithArrangedSubviews:isa];

  [v3 setAxis:1];
  [v3 setAlignment:1];
  [v3 setSpacing:2.0];
  return v3;
}

id closure #1 in PersonalNicknameMenuView.containerStackView.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100209A90;
  *(v0 + 32) = PersonalNicknameMenuView.leadingAvatarView.getter();
  *(v0 + 40) = PersonalNicknameMenuView.labelStackView.getter();
  v1 = objc_allocWithZone(UIStackView);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIView);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithArrangedSubviews:isa];

  [v3 setAxis:0];
  [v3 setAlignment:3];
  [v3 setSpacing:9.0];
  return v3;
}

id PersonalNicknameMenuView.tapRecognizer.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___tapRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___tapRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___tapRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapWithSender:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id PersonalNicknameMenuView.init(displayContext:personalNicknameMenuViewDelegate:)(char a1, uint64_t a2, uint64_t a3)
{
  *&v3[nicknamesDefaults.value._kvo_] = 0;
  *&v3[nicknamesDefaults.value._identifier_] = 0;
  *&v3[nicknamesDefaults.value._container_] = 1;
  *&v3[*&nicknamesDefaults.is_nil] = 0;
  *&v3[OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___nameLabel] = 0;
  *&v3[OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___subtitleLabel] = 0;
  *&v3[OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___labelStackView] = 0;
  *&v3[OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___containerStackView] = 0;
  *&v3[OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___tapRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView_personalNicknameMenuViewDelegate + 8] = 0;
  v6 = swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView_displayContext] = a1;
  *(v6 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v10.receiver = v3;
  v10.super_class = type metadata accessor for PersonalNicknameMenuView();
  v7 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  specialized PersonalNicknameMenuView.getPersonalNickname(completion:)(v7);
  PersonalNicknameMenuView.setupConstraints()();
  v8 = PersonalNicknameMenuView.tapRecognizer.getter();
  [v7 addGestureRecognizer:v8];

  swift_unknownObjectRelease();
  return v7;
}

void PersonalNicknameMenuView.setupConstraints()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10020D1F0;
  *(inited + 32) = PersonalNicknameMenuView.leadingAvatarView.getter();
  *(inited + 40) = PersonalNicknameMenuView.nameLabel.getter();
  *(inited + 48) = PersonalNicknameMenuView.subtitleLabel.getter();
  *(inited + 56) = PersonalNicknameMenuView.labelStackView.getter();
  *(inited + 64) = PersonalNicknameMenuView.containerStackView.getter();
  v2 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v3 = *(inited + 32);
  }

  v4 = v3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (v2)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v5 = *(inited + 40);
LABEL_8:
  v6 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (v2)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(inited + 48);
LABEL_12:
  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (!v2)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v9 = *(inited + 56);
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (v2)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_20:
    v12 = v11;

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___containerStackView;
    [v0 addSubview:*&v0[OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___containerStackView]];
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10020D200;
    v15 = [*&v0[v13] topAnchor];
    v16 = [v0 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:12.0];

    *(v14 + 32) = v17;
    v18 = [*&v0[v13] bottomAnchor];
    v19 = [v0 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:-12.0];

    *(v14 + 40) = v20;
    v21 = [*&v0[v13] leadingAnchor];
    v22 = [v0 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:12.0];

    *(v14 + 48) = v23;
    v24 = [*&v0[v13] trailingAnchor];
    v25 = [v0 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:-12.0];

    *(v14 + 56) = v26;
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_100209A90;
    v28 = *&nicknamesDefaults.is_nil;
    v29 = [*&v0[*&nicknamesDefaults.is_nil] heightAnchor];
    v30 = [v29 constraintEqualToConstant:50.0];

    *(v27 + 32) = v30;
    v31 = [*&v0[v28] widthAnchor];
    v32 = [v31 constraintEqualToConstant:50.0];

    *(v27 + 40) = v32;
    specialized Array.append<A>(contentsOf:)(v27);
    v33 = objc_opt_self();
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v33 activateConstraints:isa];

    return;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
  {
    v11 = *(inited + 64);
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
}

void closure #1 in PersonalNicknameMenuView.setNickname()(void *a1, uint64_t a2)
{
  v2 = *(nicknamesDefaults.value._kvo_ + a2);
  *(nicknamesDefaults.value._kvo_ + a2) = a1;
  v3 = a1;

  PersonalNicknameMenuView.personalNickname.didset();
}

uint64_t closure #1 in PersonalNicknameMenuView.getPersonalNickname(completion:)(void *a1, uint64_t (*a2)(void *))
{
  if (one-time initialization token for nickname != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.nickname);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = a1;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching the personal nick name: %@", v8, 0xCu);
    outlined destroy of (NSAttributedStringKey, Any)(v9, &_sSo8NSObjectCSgMd);
  }

  return a2(a1);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMNickname?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void one-time initialization function for nicknamesDefaults()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  nicknamesDefaults.value.super.isa = v2;
}

void *PersonalNicknameNameProvider.personalNickname.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone28PersonalNicknameNameProvider_personalNickname);
  v2 = v1;
  return v1;
}

id PersonalNicknameNameProvider.__allocating_init(personalNickname:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MobilePhone28PersonalNicknameNameProvider_personalNickname] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id PersonalNicknameNameProvider.init(personalNickname:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11MobilePhone28PersonalNicknameNameProvider_personalNickname] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PersonalNicknameNameProvider();
  return objc_msgSendSuper2(&v3, "init");
}

Swift::String_optional __swiftcall PersonalNicknameNameProvider.givenName()()
{
  v0 = PersonalNicknameNameProvider.givenName()(&selRef_firstName);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall PersonalNicknameNameProvider.familyName()()
{
  v0 = PersonalNicknameNameProvider.givenName()(&selRef_lastName);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t PersonalNicknameNameProvider.givenName()(SEL *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC11MobilePhone28PersonalNicknameNameProvider_personalNickname))
  {
    return 0;
  }

  v2 = [*(v1 + OBJC_IVAR____TtC11MobilePhone28PersonalNicknameNameProvider_personalNickname) *a1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id @objc PersonalNicknameNameProvider.givenName()(char *a1, uint64_t a2, SEL *a3)
{
  v3 = *&a1[OBJC_IVAR____TtC11MobilePhone28PersonalNicknameNameProvider_personalNickname];
  if (v3)
  {
    v5 = a1;
    v6 = [v3 *a3];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t PersonalNicknameAvatarProvider.imageData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_imageData);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_imageData + 8));
  return v1;
}

uint64_t PersonalNicknameAvatarProvider.wallpaperFilePath.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_wallpaperFilePath);

  return v1;
}

uint64_t PersonalNicknameAvatarProvider.nameString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_nameString);

  return v1;
}

id PersonalNicknameAvatarProvider.__allocating_init(imageData:wallpaperFilePath:nameString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_imageData];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_wallpaperFilePath];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_nameString];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, "init");
}

id PersonalNicknameAvatarProvider.init(imageData:wallpaperFilePath:nameString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_imageData];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = &v6[OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_wallpaperFilePath];
  *v8 = a3;
  *(v8 + 1) = a4;
  v9 = &v6[OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_nameString];
  *v9 = a5;
  *(v9 + 1) = a6;
  v11.receiver = v6;
  v11.super_class = type metadata accessor for PersonalNicknameAvatarProvider();
  return objc_msgSendSuper2(&v11, "init");
}

id PersonalNicknameMenuView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void PersonalNicknameAvatarProvider.generateAvatarImage(of:imageHandler:)(void (*a1)(void), double a2, double a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a2 == 0.0 && (*&a3 & 0x7FF0000000000000) == 0;
  if (v7 && (*&a3 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v6 = 100.0;
    v5 = 100.0;
  }

  v8 = [objc_opt_self() mainScreen];
  [v8 scale];
  v10 = v9;

  v11 = (v3 + OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_imageData);
  v12 = *(v3 + OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_imageData + 8);
  if (v12 >> 60 == 15)
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v15 = *v11;
    v16 = objc_allocWithZone(UIImage);
    outlined copy of Data._Representation(v15, v12);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v14 = [v16 initWithData:isa scale:v10];

    outlined consume of Data?(v15, v12);
    if (v14)
    {
      v14 = v14;
      v21.width = v6;
      v21.height = v5;
      UIGraphicsBeginImageContextWithOptions(v21, 0, v10);
      [v14 drawInRect:{0.0, 0.0, v6, v5}];
      v18 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();

      v13 = v18;
    }

    else
    {
      v13 = 0;
    }
  }

  v19 = v13;
  a1();
}

uint64_t PersonalNicknameAvatarProvider.generatePosterImage(handler:)(void (*a1)(void, void **), uint64_t a2)
{
  v67 = a1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v9 = __chkstk_darwin(v8 - 8);
  v62 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v64 = v60 - v12;
  __chkstk_darwin(v11);
  v14 = v60 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v24 = v60 - v23;
  if (*(v2 + OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_wallpaperFilePath + 8))
  {
    v60[1] = v22;
    v60[2] = v21;
    v65 = v16;
    v66 = a2;
    v25 = *(v16 + 56);
    v63 = v20;
    v60[4] = v25;
    v25(v14, 1, 1);
    (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);

    URL.init(filePath:directoryHint:relativeTo:)();
    v31 = Data.init(contentsOf:options:)();
    v33 = v32;
    v34 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    aBlock = 0;
    v36 = [v34 unarchiveConfigurationFromData:isa error:&aBlock];

    if (v36)
    {
      v37 = v66;
      v38 = v63;
      if (*(v2 + OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_nameString + 8))
      {
        v39 = aBlock;
        v40 = v36;
        v41 = String._bridgeToObjectiveC()();
      }

      else
      {
        v55 = aBlock;
        v56 = v36;
        v41 = 0;
      }

      v57 = [objc_allocWithZone(TPInComingCallUISnapshotViewController) initWithConfiguration:v36 style:3 nameString:v41];

      v58 = swift_allocObject();
      *(v58 + 16) = v67;
      *(v58 + 24) = v37;
      v72 = partial apply for closure #1 in PersonalNicknameAvatarProvider.generatePosterImage(handler:);
      v73 = v58;
      aBlock = _NSConcreteStackBlock;
      v69 = 1107296256;
      v70 = thunk for @escaping @callee_guaranteed (@guaranteed UIImage?, @guaranteed Error?) -> ();
      v71 = &block_descriptor_12;
      v59 = _Block_copy(&aBlock);

      [v57 snapshotWithOptions:0 completionBlock:v59];
      _Block_release(v59);

      outlined consume of Data._Representation(v31, v33);
      return (*(v65 + 8))(v24, v38);
    }

    else
    {
      v61 = v24;
      v42 = aBlock;
      v43 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v44 = v63;
      if (one-time initialization token for nickname != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.nickname);
      outlined copy of Data._Representation(v31, v33);
      swift_errorRetain();
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      outlined consume of Data._Representation(v31, v33);

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v48 = 136315394;
        aBlock = v31;
        v69 = v33;
        outlined copy of Data._Representation(v31, v33);
        v49 = String.init<A>(reflecting:)();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v74);

        *(v48 + 4) = v51;
        *(v48 + 12) = 2080;
        aBlock = v43;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
        v52 = String.init<A>(reflecting:)();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v74);

        *(v48 + 14) = v54;
        _os_log_impl(&_mh_execute_header, v46, v47, "Could not unarchive configuration from data: %s error: %s", v48, 0x16u);
        swift_arrayDestroy();
      }

      swift_errorRetain();
      v67(0, v43);

      outlined consume of Data._Representation(v31, v33);
      return (*(v65 + 8))(v61, v44);
    }
  }

  else
  {
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.nickname);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Could not find a wallpaperFilePath", v29, 2u);
    }

    return (v67)(0, 0);
  }
}

uint64_t closure #1 in PersonalNicknameAvatarProvider.generatePosterImage(handler:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v5 = a1;
    swift_errorRetain();
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.nickname);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Could not snapshot TPInComingCallUISnapshotViewController with error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    else
    {
    }

    a1 = v5;
  }

  return a3(a1, a2);
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIImage?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void specialized PersonalNicknameMenuView.getPersonalNickname(completion:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 sharedController];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 hasListenerForID:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [v3 sharedController];
    v9 = String._bridgeToObjectiveC()();
    [v8 addListenerID:v9 capabilities:kFZListenerCapAccounts];
  }

  v10 = objc_opt_self();
  v11 = [v10 sharedInstance];
  v12 = [v11 personalNickname];

  if (v12)
  {
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.nickname);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v12;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "Reading the personal nick name from cache %@", v17, 0xCu);
      outlined destroy of (NSAttributedStringKey, Any)(v18, &_sSo8NSObjectCSgMd);
    }

    v20 = *&v4[nicknamesDefaults.value._kvo_];
    *&v4[nicknamesDefaults.value._kvo_] = v12;
    v24 = v14;

    PersonalNicknameMenuView.personalNickname.didset();
  }

  else
  {
    v21 = [v10 sharedInstance];
    v22 = swift_allocObject();
    *(v22 + 16) = partial apply for closure #1 in PersonalNicknameMenuView.setNickname();
    *(v22 + 24) = v2;
    aBlock[4] = partial apply for closure #1 in PersonalNicknameMenuView.getPersonalNickname(completion:);
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMNickname?) -> ();
    aBlock[3] = &block_descriptor_42;
    v23 = _Block_copy(aBlock);

    [v21 fetchPersonalNicknameWithCompletion:v23];
    _Block_release(v23);
  }
}

void specialized PersonalNicknameMenuView.init(coder:)()
{
  *(nicknamesDefaults.value._kvo_ + v0) = 0;
  *(&nicknamesDefaults.value._identifier_->isa + v0) = 0;
  *(&nicknamesDefaults.value._container_->isa + v0) = 1;
  *(v0 + *&nicknamesDefaults.is_nil) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___nameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___labelStackView) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___containerStackView) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView____lazy_storage___tapRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView_personalNicknameMenuViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized PersonalNicknameMenuView.didTap(sender:)()
{
  v1 = v0;
  if (one-time initialization token for nickname != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.nickname);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received tap on nickname menu view", v5, 2u);
  }

  v6 = v1 + OBJC_IVAR____TtC11MobilePhone24PersonalNicknameMenuView_personalNicknameMenuViewDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
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

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014A240()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type PersonalNicknameMenuViewDisplayContext and conformance PersonalNicknameMenuViewDisplayContext()
{
  result = lazy protocol witness table cache variable for type PersonalNicknameMenuViewDisplayContext and conformance PersonalNicknameMenuViewDisplayContext;
  if (!lazy protocol witness table cache variable for type PersonalNicknameMenuViewDisplayContext and conformance PersonalNicknameMenuViewDisplayContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalNicknameMenuViewDisplayContext and conformance PersonalNicknameMenuViewDisplayContext);
  }

  return result;
}

void specialized PersonalNicknameAvatarProvider.generateAvatarImage(of:imageHandler:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a3 == 0.0 && (*&a4 & 0x7FF0000000000000) == 0;
  if (v8 && (*&a4 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v7 = 100.0;
    v6 = 100.0;
  }

  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;

  v12 = (a1 + OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_imageData);
  v13 = *(a1 + OBJC_IVAR____TtC11MobilePhone30PersonalNicknameAvatarProvider_imageData + 8);
  if (v13 >> 60 == 15 || (v14 = *v12, v15 = objc_allocWithZone(UIImage), outlined copy of Data._Representation(v14, v13), isa = Data._bridgeToObjectiveC()().super.isa, v17 = [v15 initWithData:isa scale:v11], isa, outlined consume of Data?(v14, v13), !v17))
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v19 = v17;
    v21.width = v7;
    v21.height = v6;
    UIGraphicsBeginImageContextWithOptions(v21, 0, v11);
    [v19 drawInRect:{0.0, 0.0, v7, v6}];
    v18 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  (*(a2 + 16))(a2, v18, 0);
}

void outlined consume of CNContact??(id a1)
{
  if (a1 != 1)
  {
  }
}

id outlined copy of CNContact??(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10014A4F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata completion function for UnsafeTransfer()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeTransfer(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for UnsafeTransfer(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

id VisualTranscriptionMessage.attributedText.getter()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for Features()) init];
  v3 = Features.showTranscriptWithoutConfidenceFiltering.getter();

  v4 = *(v1 + OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript);
  if (v3)
  {
    v5 = [v4 transcriptionString];
    if (!v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = String._bridgeToObjectiveC()();
    }

    v6 = [objc_allocWithZone(NSAttributedString) initWithString:v5];

    return v6;
  }

  else
  {
    result = PHVoicemailFormatTranscript(v4, 1);
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t VisualTranscriptionMessage.text.getter()
{
  v1 = [*(v0 + OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript) transcriptionString];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id VisualMessage.id.getter()
{
  v1 = [*(v0 + OBJC_IVAR___MPVisualMessage_vmMessage) identifier];
  v2 = type metadata accessor for MessageID(0);
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___MPMessageID_value] = v1;
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t VisualMessage.provider.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 providerManager];

  v2 = [v1 telephonyProvider];
  v3 = [v2 identifier];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

id VisualMessage.senderHandle.getter()
{
  v1 = *(v0 + OBJC_IVAR___MPVisualMessage_vmMessage);
  v2 = [v1 senderDestinationID];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v1 senderISOCountryCode];
  v6 = [v4 normalizedPhoneNumberHandleForValue:v3 isoCountryCode:v5];

  return v6;
}

id @objc VisualMessage.senderDestinationID.getter(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR___MPVisualMessage_vmMessage];
  v5 = a1;
  v6 = [v4 *a3];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = String._bridgeToObjectiveC()();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

uint64_t VisualMessage.senderDestinationID.getter(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR___MPVisualMessage_vmMessage) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t VisualMessage.folder.getter()
{
  v1 = *(v0 + OBJC_IVAR___MPVisualMessage_vmMessage);
  if ([v1 isDeleted])
  {
    return 0;
  }

  if ([v1 isBlocked])
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  if ([v1 isTrashed])
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

void VisualMessage.date.getter()
{
  v1 = [*(v0 + OBJC_IVAR___MPVisualMessage_vmMessage) date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

id VisualMessage.transcript.getter()
{
  result = [*(v0 + OBJC_IVAR___MPVisualMessage_vmMessage) transcript];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for VisualTranscriptionMessage();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript] = v2;
    v5.receiver = v4;
    v5.super_class = v3;
    return objc_msgSendSuper2(&v5, "init");
  }

  return result;
}

uint64_t VisualMessage.dataURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR___MPVisualMessage_vmMessage) dataURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t VisualMessage.callUUID.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id VisualTranscriptionMessage.__allocating_init(vmTranscript:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id VisualTranscriptionMessage.init(vmTranscript:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[*a2] = a1;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

id @objc VisualTranscriptionMessage.init(vmTranscript:)(char *a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&a1[*a4] = a3;
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v8 = a3;
  return objc_msgSendSuper2(&v10, "init");
}

CNContact_optional __swiftcall VisualMessage.getContact(using:with:)(CNContactStore using, Swift::OpaquePointer with)
{
  v4 = *(v2 + OBJC_IVAR___MPVisualMessage_vmMessage);
  specialized _arrayForceCast<A, B>(_:)(with._rawValue);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 contactUsingContactStore:using.super.isa withKeysToFetch:isa];

  v8 = v6;
  result.value.super.isa = v8;
  result.is_nil = v7;
  return result;
}

Swift::String_optional __swiftcall VisualMessage.getDisplayName(using:)(CNContactStore using)
{
  v2 = [*(v1 + OBJC_IVAR___MPVisualMessage_vmMessage) displayNameUsingContactStore:using.super.isa];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = v4;
  v8 = v6;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

uint64_t one-time initialization function for tipUserInfo()
{
  type metadata accessor for MPRecentsTableViewController.RecentsUserInfo();
  result = swift_allocObject();
  *(result + 16) = 0;
  static MPRecentsTableViewController.tipUserInfo = result;
  return result;
}

{
  type metadata accessor for MPFavoritesTableViewController.FavoritesUserInfo();
  result = swift_allocObject();
  *(result + 16) = 0;
  static MPFavoritesTableViewController.tipUserInfo = result;
  return result;
}

uint64_t specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[44] = a5;
  v6[45] = a6;
  v6[43] = a4;
  v7 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v6[46] = v7;
  v6[47] = *(v7 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  v6[50] = swift_task_alloc();
  v8 = type metadata accessor for Tips.Status();
  v6[51] = v8;
  v6[52] = *(v8 - 8);
  v6[53] = swift_task_alloc();
  v6[54] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd);
  v6[55] = swift_task_alloc();
  v6[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v6[57] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMd);
  v6[58] = v9;
  v6[59] = *(v9 - 8);
  v6[60] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd);
  v6[61] = v10;
  v6[62] = *(v10 - 8);
  v6[63] = swift_task_alloc();
  v6[64] = type metadata accessor for MainActor();
  v6[65] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[66] = v12;
  v6[67] = v11;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v12, v11);
}

{
  v6[44] = a5;
  v6[45] = a6;
  v6[43] = a4;
  v7 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v6[46] = v7;
  v6[47] = *(v7 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  v6[50] = swift_task_alloc();
  v8 = type metadata accessor for Tips.Status();
  v6[51] = v8;
  v6[52] = *(v8 - 8);
  v6[53] = swift_task_alloc();
  v6[54] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd);
  v6[55] = swift_task_alloc();
  v6[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v6[57] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMd);
  v6[58] = v9;
  v6[59] = *(v9 - 8);
  v6[60] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd);
  v6[61] = v10;
  v6[62] = *(v10 - 8);
  v6[63] = swift_task_alloc();
  v6[64] = type metadata accessor for MainActor();
  v6[65] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[66] = v12;
  v6[67] = v11;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v12, v11);
}

{
  v6[44] = a5;
  v6[45] = a6;
  v6[43] = a4;
  v7 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v6[46] = v7;
  v6[47] = *(v7 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  v6[50] = swift_task_alloc();
  v8 = type metadata accessor for Tips.Status();
  v6[51] = v8;
  v6[52] = *(v8 - 8);
  v6[53] = swift_task_alloc();
  v6[54] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd);
  v6[55] = swift_task_alloc();
  v6[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v6[57] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMd);
  v6[58] = v9;
  v6[59] = *(v9 - 8);
  v6[60] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd);
  v6[61] = v10;
  v6[62] = *(v10 - 8);
  v6[63] = swift_task_alloc();
  v6[64] = type metadata accessor for MainActor();
  v6[65] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[66] = v12;
  v6[67] = v11;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v12, v11);
}

{
  v6[44] = a5;
  v6[45] = a6;
  v6[43] = a4;
  v7 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v6[46] = v7;
  v6[47] = *(v7 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  v6[50] = swift_task_alloc();
  v8 = type metadata accessor for Tips.Status();
  v6[51] = v8;
  v6[52] = *(v8 - 8);
  v6[53] = swift_task_alloc();
  v6[54] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd);
  v6[55] = swift_task_alloc();
  v6[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v6[57] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMd);
  v6[58] = v9;
  v6[59] = *(v9 - 8);
  v6[60] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd);
  v6[61] = v10;
  v6[62] = *(v10 - 8);
  v6[63] = swift_task_alloc();
  v6[64] = type metadata accessor for MainActor();
  v6[65] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[66] = v12;
  v6[67] = v11;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v12, v11);
}

{
  v6[44] = a5;
  v6[45] = a6;
  v6[43] = a4;
  v7 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v6[46] = v7;
  v6[47] = *(v7 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  v6[50] = swift_task_alloc();
  v8 = type metadata accessor for Tips.Status();
  v6[51] = v8;
  v6[52] = *(v8 - 8);
  v6[53] = swift_task_alloc();
  v6[54] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd);
  v6[55] = swift_task_alloc();
  v6[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v6[57] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMd);
  v6[58] = v9;
  v6[59] = *(v9 - 8);
  v6[60] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd);
  v6[61] = v10;
  v6[62] = *(v10 - 8);
  v6[63] = swift_task_alloc();
  v6[64] = type metadata accessor for MainActor();
  v6[65] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[66] = v12;
  v6[67] = v11;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v12, v11);
}

uint64_t specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:)()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  *(v0 + 544) = type metadata accessor for RecentsUnknownCallersTip();
  *(v0 + 552) = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type RecentsUnknownCallersTip and conformance RecentsUnknownCallersTip, &type metadata accessor for RecentsUnknownCallersTip);
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>, &_sScSy6TipKit4TipsO6StatusOGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  *(v0 + 680) = enum case for TPTipsHelper.Entry.Kind.recents(_:);
  v4 = static MainActor.shared.getter();
  *(v0 + 560) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v0 + 576) = v7;
  *(v0 + 568) = v5;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v5);
}

{
  v1 = v0[70];
  v0[73] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v2 = swift_task_alloc();
  v0[74] = v2;
  *v2 = v0;
  v2[1] = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  v3 = v0[50];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 576);
    v4 = *(v2 + 568);
    v5 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  else
  {
    (*(v2 + 584))();
    v3 = *(v2 + 576);
    v4 = *(v2 + 568);
    v5 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  return (_swift_task_switch)(v5, v4, v3);
}

{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(v0[53], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[75] = v7;
    v10 = v6 + *v6;
    v8 = swift_task_alloc();
    v0[76] = v8;
    *v8 = v0;
    v8[1] = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);

    __asm { BRAA            X2, X16 }
  }

  outlined destroy of (NSAttributedStringKey, Any)(v3, &_s6TipKit4TipsO6StatusOSgMd);
  v4 = v0[67];
  v5 = v0[66];

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v5, v4);
}

{
  v1 = *v0;
  v2 = *(*v0 + 424);
  v3 = *(*v0 + 416);
  v4 = *(*v0 + 408);

  (*(v3 + 8))(v2, v4);
  *(v1 + 685) = *(v1 + 684);
  v5 = *(v1 + 576);
  v6 = *(v1 + 568);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v6, v5);
}

{

  v1 = *(v0 + 536);
  v2 = *(v0 + 528);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v2, v1);
}

{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 616) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));

    goto LABEL_14;
  }

  if (*(v0 + 685))
  {
    v2 = Strong;
    v3 = [Strong tableView];
    v4 = [v3 tableHeaderView];

    if (v4)
    {
      type metadata accessor for TPTipHeaderView();
      if (swift_dynamicCastClass())
      {
        v5 = dispatch thunk of TPTipHeaderView.hostingView.getter();

        if (v5)
        {
          v7 = *(v0 + 496);
          v6 = *(v0 + 504);
          v8 = *(v0 + 488);

          (*(v7 + 8))(v6, v8);
LABEL_14:

          v14 = *(v0 + 8);

          return v14();
        }
      }

      else
      {
      }
    }

    if (one-time initialization token for tipUserInfo != -1)
    {
      swift_once();
    }

    if (*(static MPRecentsTableViewController.tipUserInfo + 2))
    {
      v12 = *(v0 + 496);
      v11 = *(v0 + 504);
      v13 = *(v0 + 488);

      (*(v12 + 8))(v11, v13);
      goto LABEL_14;
    }

    v16 = *(v0 + 360);
    v17 = *(v0 + 344);
    v18 = *(v0 + 544);
    *(v0 + 120) = v18;
    v19 = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    v21 = *(v19 - 8);
    v22 = *(v21 + 16);
    *(v0 + 640) = v22;
    *(v0 + 648) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(boxed_opaque_existential_1, v17, v19);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v16;
    v25 = objc_allocWithZone(type metadata accessor for TipUIView());
    *(v0 + 656) = TipUIView.init(_:arrowEdge:actionHandler:)();
    type metadata accessor for TPTipsHelper();
    v9 = swift_task_alloc();
    *(v0 + 664) = v9;
    *v9 = v0;
    v10 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  else
  {
    type metadata accessor for TPTipsHelper();
    v9 = swift_task_alloc();
    *(v0 + 624) = v9;
    *v9 = v0;
    v10 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  v9[1] = v10;

  return static TPTipsHelper.shared.getter();
}

{
  v28 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 344);
  v25 = *(v0 + 544);
  (*(*(v0 + 376) + 104))(*(v0 + 384), *(v0 + 680), *(v0 + 368));
  *(v0 + 160) = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  v1(boxed_opaque_existential_1, v2, v25);
  v4 = dispatch thunk of TPTipsHelper.currentTip.modify();
  v6 = v5;
  v7 = *(v0 + 384);
  v8 = *(v0 + 368);
  v9 = (*(v0 + 376) + 8);
  if (*(v0 + 160))
  {
    outlined init with take of Tip((v0 + 136), v0 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v6;
    *v6 = 0x8000000000000000;
    v10 = *(v0 + 240);
    v24 = v8;
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v10);
    v12 = v4;
    v13 = *(v10 - 8);
    v14 = swift_task_alloc();
    (*(v13 + 16))(v14, v11, v10);
    v4 = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v7, isUniquelyReferenced_nonNull_native, &v27);
    (*v9)(v7, v24);
    __swift_destroy_boxed_opaque_existential_0(v0 + 216);

    *v6 = v27;
  }

  else
  {
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 136, &_s6TipKit0A0_pSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(v7, v0 + 176);
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 176, &_s6TipKit0A0_pSgMd);
    (*v9)(v7, v8);
  }

  v15 = *(v0 + 672);
  v16 = *(v0 + 656);
  v17 = *(v0 + 616);
  v4(v0 + 288, 0);

  v18 = v16;
  MPRecentsTableViewController.setTipView(_:)(v16);

  v19 = static MainActor.shared.getter();
  *(v0 + 560) = v19;
  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *(v0 + 576) = v22;
  *(v0 + 568) = v20;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v20);
}

{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  *(v0 + 544) = type metadata accessor for RecentsBrandedCallingTip();
  *(v0 + 552) = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip, &type metadata accessor for RecentsBrandedCallingTip);
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>, &_sScSy6TipKit4TipsO6StatusOGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  *(v0 + 680) = enum case for TPTipsHelper.Entry.Kind.recents(_:);
  v4 = static MainActor.shared.getter();
  *(v0 + 560) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v0 + 576) = v7;
  *(v0 + 568) = v5;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v5);
}

{
  v1 = v0[70];
  v0[73] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v2 = swift_task_alloc();
  v0[74] = v2;
  *v2 = v0;
  v2[1] = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  v3 = v0[50];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 576);
    v4 = *(v2 + 568);
    v5 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  else
  {
    (*(v2 + 584))();
    v3 = *(v2 + 576);
    v4 = *(v2 + 568);
    v5 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  return (_swift_task_switch)(v5, v4, v3);
}

{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(v0[53], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[75] = v7;
    v10 = v6 + *v6;
    v8 = swift_task_alloc();
    v0[76] = v8;
    *v8 = v0;
    v8[1] = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);

    __asm { BRAA            X2, X16 }
  }

  outlined destroy of (NSAttributedStringKey, Any)(v3, &_s6TipKit4TipsO6StatusOSgMd);
  v4 = v0[67];
  v5 = v0[66];

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v5, v4);
}

{
  v1 = *v0;
  v2 = *(*v0 + 424);
  v3 = *(*v0 + 416);
  v4 = *(*v0 + 408);

  (*(v3 + 8))(v2, v4);
  *(v1 + 685) = *(v1 + 684);
  v5 = *(v1 + 576);
  v6 = *(v1 + 568);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v6, v5);
}

{

  v1 = *(v0 + 536);
  v2 = *(v0 + 528);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v2, v1);
}

{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 616) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));

    goto LABEL_14;
  }

  if (*(v0 + 685))
  {
    v2 = Strong;
    v3 = [Strong tableView];
    v4 = [v3 tableHeaderView];

    if (v4)
    {
      type metadata accessor for TPTipHeaderView();
      if (swift_dynamicCastClass())
      {
        v5 = dispatch thunk of TPTipHeaderView.hostingView.getter();

        if (v5)
        {
          v7 = *(v0 + 496);
          v6 = *(v0 + 504);
          v8 = *(v0 + 488);

          (*(v7 + 8))(v6, v8);
LABEL_14:

          v14 = *(v0 + 8);

          return v14();
        }
      }

      else
      {
      }
    }

    if (one-time initialization token for tipUserInfo != -1)
    {
      swift_once();
    }

    if (*(static MPRecentsTableViewController.tipUserInfo + 2))
    {
      v12 = *(v0 + 496);
      v11 = *(v0 + 504);
      v13 = *(v0 + 488);

      (*(v12 + 8))(v11, v13);
      goto LABEL_14;
    }

    v16 = *(v0 + 360);
    v17 = *(v0 + 344);
    v18 = *(v0 + 544);
    *(v0 + 120) = v18;
    v19 = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    v21 = *(v19 - 8);
    v22 = *(v21 + 16);
    *(v0 + 640) = v22;
    *(v0 + 648) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(boxed_opaque_existential_1, v17, v19);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v16;
    v25 = objc_allocWithZone(type metadata accessor for TipUIView());
    *(v0 + 656) = TipUIView.init(_:arrowEdge:actionHandler:)();
    type metadata accessor for TPTipsHelper();
    v9 = swift_task_alloc();
    *(v0 + 664) = v9;
    *v9 = v0;
    v10 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  else
  {
    type metadata accessor for TPTipsHelper();
    v9 = swift_task_alloc();
    *(v0 + 624) = v9;
    *v9 = v0;
    v10 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  v9[1] = v10;

  return static TPTipsHelper.shared.getter();
}

{
  v28 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 344);
  v25 = *(v0 + 544);
  (*(*(v0 + 376) + 104))(*(v0 + 384), *(v0 + 680), *(v0 + 368));
  *(v0 + 160) = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  v1(boxed_opaque_existential_1, v2, v25);
  v4 = dispatch thunk of TPTipsHelper.currentTip.modify();
  v6 = v5;
  v7 = *(v0 + 384);
  v8 = *(v0 + 368);
  v9 = (*(v0 + 376) + 8);
  if (*(v0 + 160))
  {
    outlined init with take of Tip((v0 + 136), v0 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v6;
    *v6 = 0x8000000000000000;
    v10 = *(v0 + 240);
    v24 = v8;
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v10);
    v12 = v4;
    v13 = *(v10 - 8);
    v14 = swift_task_alloc();
    (*(v13 + 16))(v14, v11, v10);
    v4 = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v7, isUniquelyReferenced_nonNull_native, &v27);
    (*v9)(v7, v24);
    __swift_destroy_boxed_opaque_existential_0(v0 + 216);

    *v6 = v27;
  }

  else
  {
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 136, &_s6TipKit0A0_pSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(v7, v0 + 176);
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 176, &_s6TipKit0A0_pSgMd);
    (*v9)(v7, v8);
  }

  v15 = *(v0 + 672);
  v16 = *(v0 + 656);
  v17 = *(v0 + 616);
  v4(v0 + 288, 0);

  v18 = v16;
  MPRecentsTableViewController.setTipView(_:)(v16);

  v19 = static MainActor.shared.getter();
  *(v0 + 560) = v19;
  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *(v0 + 576) = v22;
  *(v0 + 568) = v20;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v20);
}

{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  *(v0 + 544) = type metadata accessor for RecentsSaveAsFavoritesTip();
  *(v0 + 552) = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type RecentsSaveAsFavoritesTip and conformance RecentsSaveAsFavoritesTip, &type metadata accessor for RecentsSaveAsFavoritesTip);
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>, &_sScSy6TipKit4TipsO6StatusOGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  *(v0 + 680) = enum case for TPTipsHelper.Entry.Kind.recents(_:);
  v4 = static MainActor.shared.getter();
  *(v0 + 560) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v0 + 576) = v7;
  *(v0 + 568) = v5;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v5);
}

{
  v1 = v0[70];
  v0[73] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v2 = swift_task_alloc();
  v0[74] = v2;
  *v2 = v0;
  v2[1] = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  v3 = v0[50];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 576);
    v4 = *(v2 + 568);
    v5 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  else
  {
    (*(v2 + 584))();
    v3 = *(v2 + 576);
    v4 = *(v2 + 568);
    v5 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  return (_swift_task_switch)(v5, v4, v3);
}

{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(v0[53], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[75] = v7;
    v10 = v6 + *v6;
    v8 = swift_task_alloc();
    v0[76] = v8;
    *v8 = v0;
    v8[1] = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);

    __asm { BRAA            X2, X16 }
  }

  outlined destroy of (NSAttributedStringKey, Any)(v3, &_s6TipKit4TipsO6StatusOSgMd);
  v4 = v0[67];
  v5 = v0[66];

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v5, v4);
}

{
  v1 = *v0;
  v2 = *(*v0 + 424);
  v3 = *(*v0 + 416);
  v4 = *(*v0 + 408);

  (*(v3 + 8))(v2, v4);
  *(v1 + 685) = *(v1 + 684);
  v5 = *(v1 + 576);
  v6 = *(v1 + 568);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v6, v5);
}

{

  v1 = *(v0 + 536);
  v2 = *(v0 + 528);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v2, v1);
}

{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 616) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));

    goto LABEL_14;
  }

  if (*(v0 + 685))
  {
    v2 = Strong;
    v3 = [Strong tableView];
    v4 = [v3 tableHeaderView];

    if (v4)
    {
      type metadata accessor for TPTipHeaderView();
      if (swift_dynamicCastClass())
      {
        v5 = dispatch thunk of TPTipHeaderView.hostingView.getter();

        if (v5)
        {
          v7 = *(v0 + 496);
          v6 = *(v0 + 504);
          v8 = *(v0 + 488);

          (*(v7 + 8))(v6, v8);
LABEL_14:

          v14 = *(v0 + 8);

          return v14();
        }
      }

      else
      {
      }
    }

    if (one-time initialization token for tipUserInfo != -1)
    {
      swift_once();
    }

    if (*(static MPRecentsTableViewController.tipUserInfo + 2))
    {
      v12 = *(v0 + 496);
      v11 = *(v0 + 504);
      v13 = *(v0 + 488);

      (*(v12 + 8))(v11, v13);
      goto LABEL_14;
    }

    v16 = *(v0 + 360);
    v17 = *(v0 + 344);
    v18 = *(v0 + 544);
    *(v0 + 120) = v18;
    v19 = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    v21 = *(v19 - 8);
    v22 = *(v21 + 16);
    *(v0 + 640) = v22;
    *(v0 + 648) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(boxed_opaque_existential_1, v17, v19);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v16;
    v25 = objc_allocWithZone(type metadata accessor for TipUIView());
    *(v0 + 656) = TipUIView.init(_:arrowEdge:actionHandler:)();
    type metadata accessor for TPTipsHelper();
    v9 = swift_task_alloc();
    *(v0 + 664) = v9;
    *v9 = v0;
    v10 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  else
  {
    type metadata accessor for TPTipsHelper();
    v9 = swift_task_alloc();
    *(v0 + 624) = v9;
    *v9 = v0;
    v10 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  v9[1] = v10;

  return static TPTipsHelper.shared.getter();
}

{
  v28 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 344);
  v25 = *(v0 + 544);
  (*(*(v0 + 376) + 104))(*(v0 + 384), *(v0 + 680), *(v0 + 368));
  *(v0 + 160) = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  v1(boxed_opaque_existential_1, v2, v25);
  v4 = dispatch thunk of TPTipsHelper.currentTip.modify();
  v6 = v5;
  v7 = *(v0 + 384);
  v8 = *(v0 + 368);
  v9 = (*(v0 + 376) + 8);
  if (*(v0 + 160))
  {
    outlined init with take of Tip((v0 + 136), v0 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v6;
    *v6 = 0x8000000000000000;
    v10 = *(v0 + 240);
    v24 = v8;
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v10);
    v12 = v4;
    v13 = *(v10 - 8);
    v14 = swift_task_alloc();
    (*(v13 + 16))(v14, v11, v10);
    v4 = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v7, isUniquelyReferenced_nonNull_native, &v27);
    (*v9)(v7, v24);
    __swift_destroy_boxed_opaque_existential_0(v0 + 216);

    *v6 = v27;
  }

  else
  {
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 136, &_s6TipKit0A0_pSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(v7, v0 + 176);
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 176, &_s6TipKit0A0_pSgMd);
    (*v9)(v7, v8);
  }

  v15 = *(v0 + 672);
  v16 = *(v0 + 656);
  v17 = *(v0 + 616);
  v4(v0 + 288, 0);

  v18 = v16;
  MPRecentsTableViewController.setTipView(_:)(v16);

  v19 = static MainActor.shared.getter();
  *(v0 + 560) = v19;
  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *(v0 + 576) = v22;
  *(v0 + 568) = v20;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v20);
}

{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  *(v0 + 544) = type metadata accessor for RecentsSaveAsContactTip();
  *(v0 + 552) = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type RecentsSaveAsContactTip and conformance RecentsSaveAsContactTip, &type metadata accessor for RecentsSaveAsContactTip);
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>, &_sScSy6TipKit4TipsO6StatusOGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  *(v0 + 680) = enum case for TPTipsHelper.Entry.Kind.recents(_:);
  v4 = static MainActor.shared.getter();
  *(v0 + 560) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v0 + 576) = v7;
  *(v0 + 568) = v5;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v5);
}

{
  v1 = v0[70];
  v0[73] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v2 = swift_task_alloc();
  v0[74] = v2;
  *v2 = v0;
  v2[1] = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  v3 = v0[50];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 576);
    v4 = *(v2 + 568);
    v5 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  else
  {
    (*(v2 + 584))();
    v3 = *(v2 + 576);
    v4 = *(v2 + 568);
    v5 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  return (_swift_task_switch)(v5, v4, v3);
}

{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(v0[53], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[75] = v7;
    v10 = v6 + *v6;
    v8 = swift_task_alloc();
    v0[76] = v8;
    *v8 = v0;
    v8[1] = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);

    __asm { BRAA            X2, X16 }
  }

  outlined destroy of (NSAttributedStringKey, Any)(v3, &_s6TipKit4TipsO6StatusOSgMd);
  v4 = v0[67];
  v5 = v0[66];

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v5, v4);
}

{
  v1 = *v0;
  v2 = *(*v0 + 424);
  v3 = *(*v0 + 416);
  v4 = *(*v0 + 408);

  (*(v3 + 8))(v2, v4);
  *(v1 + 685) = *(v1 + 684);
  v5 = *(v1 + 576);
  v6 = *(v1 + 568);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v6, v5);
}

{

  v1 = *(v0 + 536);
  v2 = *(v0 + 528);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v2, v1);
}

{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 616) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));

    goto LABEL_14;
  }

  if (*(v0 + 685))
  {
    v2 = Strong;
    v3 = [Strong tableView];
    v4 = [v3 tableHeaderView];

    if (v4)
    {
      type metadata accessor for TPTipHeaderView();
      if (swift_dynamicCastClass())
      {
        v5 = dispatch thunk of TPTipHeaderView.hostingView.getter();

        if (v5)
        {
          v7 = *(v0 + 496);
          v6 = *(v0 + 504);
          v8 = *(v0 + 488);

          (*(v7 + 8))(v6, v8);
LABEL_14:

          v14 = *(v0 + 8);

          return v14();
        }
      }

      else
      {
      }
    }

    if (one-time initialization token for tipUserInfo != -1)
    {
      swift_once();
    }

    if (*(static MPRecentsTableViewController.tipUserInfo + 2))
    {
      v12 = *(v0 + 496);
      v11 = *(v0 + 504);
      v13 = *(v0 + 488);

      (*(v12 + 8))(v11, v13);
      goto LABEL_14;
    }

    v16 = *(v0 + 360);
    v17 = *(v0 + 344);
    v18 = *(v0 + 544);
    *(v0 + 120) = v18;
    v19 = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    v21 = *(v19 - 8);
    v22 = *(v21 + 16);
    *(v0 + 640) = v22;
    *(v0 + 648) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(boxed_opaque_existential_1, v17, v19);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v16;
    v25 = objc_allocWithZone(type metadata accessor for TipUIView());
    *(v0 + 656) = TipUIView.init(_:arrowEdge:actionHandler:)();
    type metadata accessor for TPTipsHelper();
    v9 = swift_task_alloc();
    *(v0 + 664) = v9;
    *v9 = v0;
    v10 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  else
  {
    type metadata accessor for TPTipsHelper();
    v9 = swift_task_alloc();
    *(v0 + 624) = v9;
    *v9 = v0;
    v10 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  v9[1] = v10;

  return static TPTipsHelper.shared.getter();
}

{
  v28 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 344);
  v25 = *(v0 + 544);
  (*(*(v0 + 376) + 104))(*(v0 + 384), *(v0 + 680), *(v0 + 368));
  *(v0 + 160) = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  v1(boxed_opaque_existential_1, v2, v25);
  v4 = dispatch thunk of TPTipsHelper.currentTip.modify();
  v6 = v5;
  v7 = *(v0 + 384);
  v8 = *(v0 + 368);
  v9 = (*(v0 + 376) + 8);
  if (*(v0 + 160))
  {
    outlined init with take of Tip((v0 + 136), v0 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v6;
    *v6 = 0x8000000000000000;
    v10 = *(v0 + 240);
    v24 = v8;
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v10);
    v12 = v4;
    v13 = *(v10 - 8);
    v14 = swift_task_alloc();
    (*(v13 + 16))(v14, v11, v10);
    v4 = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v7, isUniquelyReferenced_nonNull_native, &v27);
    (*v9)(v7, v24);
    __swift_destroy_boxed_opaque_existential_0(v0 + 216);

    *v6 = v27;
  }

  else
  {
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 136, &_s6TipKit0A0_pSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(v7, v0 + 176);
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 176, &_s6TipKit0A0_pSgMd);
    (*v9)(v7, v8);
  }

  v15 = *(v0 + 672);
  v16 = *(v0 + 656);
  v17 = *(v0 + 616);
  v4(v0 + 288, 0);

  v18 = v16;
  MPRecentsTableViewController.setTipView(_:)(v16);

  v19 = static MainActor.shared.getter();
  *(v0 + 560) = v19;
  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *(v0 + 576) = v22;
  *(v0 + 568) = v20;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v20);
}

{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  *(v0 + 544) = type metadata accessor for LiveVoicemailTip();
  *(v0 + 552) = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type LiveVoicemailTip and conformance LiveVoicemailTip, &type metadata accessor for LiveVoicemailTip);
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>, &_sScSy6TipKit4TipsO6StatusOGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  *(v0 + 680) = enum case for TPTipsHelper.Entry.Kind.recents(_:);
  v4 = static MainActor.shared.getter();
  *(v0 + 560) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v0 + 576) = v7;
  *(v0 + 568) = v5;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v5);
}

{
  v1 = v0[70];
  v0[73] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v2 = swift_task_alloc();
  v0[74] = v2;
  *v2 = v0;
  v2[1] = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  v3 = v0[50];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 576);
    v4 = *(v2 + 568);
    v5 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  else
  {
    (*(v2 + 584))();
    v3 = *(v2 + 576);
    v4 = *(v2 + 568);
    v5 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  return (_swift_task_switch)(v5, v4, v3);
}

{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(v0[53], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[75] = v7;
    v10 = v6 + *v6;
    v8 = swift_task_alloc();
    v0[76] = v8;
    *v8 = v0;
    v8[1] = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);

    __asm { BRAA            X2, X16 }
  }

  outlined destroy of (NSAttributedStringKey, Any)(v3, &_s6TipKit4TipsO6StatusOSgMd);
  v4 = v0[67];
  v5 = v0[66];

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v5, v4);
}

{
  return (*(v0 + 584))();
}

{
  v1 = *v0;
  v2 = *(*v0 + 424);
  v3 = *(*v0 + 416);
  v4 = *(*v0 + 408);

  (*(v3 + 8))(v2, v4);
  *(v1 + 685) = *(v1 + 684);
  v5 = *(v1 + 576);
  v6 = *(v1 + 568);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v6, v5);
}

{

  v1 = *(v0 + 536);
  v2 = *(v0 + 528);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v2, v1);
}

{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 616) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));

    goto LABEL_14;
  }

  if (*(v0 + 685))
  {
    v2 = Strong;
    v3 = [Strong tableView];
    v4 = [v3 tableHeaderView];

    if (v4)
    {
      type metadata accessor for TPTipHeaderView();
      if (swift_dynamicCastClass())
      {
        v5 = dispatch thunk of TPTipHeaderView.hostingView.getter();

        if (v5)
        {
          v7 = *(v0 + 496);
          v6 = *(v0 + 504);
          v8 = *(v0 + 488);

          (*(v7 + 8))(v6, v8);
LABEL_14:

          v14 = *(v0 + 8);

          return v14();
        }
      }

      else
      {
      }
    }

    if (one-time initialization token for tipUserInfo != -1)
    {
      swift_once();
    }

    if (*(static MPRecentsTableViewController.tipUserInfo + 2))
    {
      v12 = *(v0 + 496);
      v11 = *(v0 + 504);
      v13 = *(v0 + 488);

      (*(v12 + 8))(v11, v13);
      goto LABEL_14;
    }

    v16 = *(v0 + 360);
    v17 = *(v0 + 344);
    v18 = *(v0 + 544);
    *(v0 + 120) = v18;
    v19 = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    v21 = *(v19 - 8);
    v22 = *(v21 + 16);
    *(v0 + 640) = v22;
    *(v0 + 648) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(boxed_opaque_existential_1, v17, v19);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v16;
    v25 = objc_allocWithZone(type metadata accessor for TipUIView());
    *(v0 + 656) = TipUIView.init(_:arrowEdge:actionHandler:)();
    type metadata accessor for TPTipsHelper();
    v9 = swift_task_alloc();
    *(v0 + 664) = v9;
    *v9 = v0;
    v10 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  else
  {
    type metadata accessor for TPTipsHelper();
    v9 = swift_task_alloc();
    *(v0 + 624) = v9;
    *v9 = v0;
    v10 = specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:);
  }

  v9[1] = v10;

  return static TPTipsHelper.shared.getter();
}

{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[61];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 632);
  v2 = *(v0 + 680);
  v3 = *(v0 + 392);
  v4 = *(v0 + 368);
  v5 = *(v0 + 376);

  (*(v5 + 104))(v3, v2, v4);
  v6 = dispatch thunk of TPTipsHelper.currentTip.getter();

  if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 392)), (v8 & 1) == 0))
  {
    v16 = *(v0 + 616);
    v18 = *(v0 + 496);
    v17 = *(v0 + 504);
    v19 = *(v0 + 488);
    v20 = *(v0 + 392);
    v21 = *(v0 + 368);
    v22 = *(v0 + 376);

    (*(v22 + 8))(v20, v21);
    (*(v18 + 8))(v17, v19);
    goto LABEL_11;
  }

  v9 = *(v0 + 392);
  v10 = *(v0 + 368);
  v11 = *(v0 + 376);
  outlined init with copy of Tip(*(v6 + 56) + 40 * v7, v0 + 56);
  (*(v11 + 8))(v9, v10);

  outlined init with take of Tip((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v12 = dispatch thunk of Tip.id.getter();
  v14 = v13;
  if (v12 == dispatch thunk of Tip.id.getter() && v14 == v15)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      v28 = *(v0 + 616);
      (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));

      goto LABEL_10;
    }
  }

  v24 = *(v0 + 616);
  v26 = *(v0 + 496);
  v25 = *(v0 + 504);
  v27 = *(v0 + 488);
  MPRecentsTableViewController.setTipView(_:)(0);

  (*(v26 + 8))(v25, v27);
LABEL_10:
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
LABEL_11:

  v29 = *(v0 + 8);

  return v29();
}

{
  v28 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 344);
  v25 = *(v0 + 544);
  (*(*(v0 + 376) + 104))(*(v0 + 384), *(v0 + 680), *(v0 + 368));
  *(v0 + 160) = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  v1(boxed_opaque_existential_1, v2, v25);
  v4 = dispatch thunk of TPTipsHelper.currentTip.modify();
  v6 = v5;
  v7 = *(v0 + 384);
  v8 = *(v0 + 368);
  v9 = (*(v0 + 376) + 8);
  if (*(v0 + 160))
  {
    outlined init with take of Tip((v0 + 136), v0 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v6;
    *v6 = 0x8000000000000000;
    v10 = *(v0 + 240);
    v24 = v8;
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v10);
    v12 = v4;
    v13 = *(v10 - 8);
    v14 = swift_task_alloc();
    (*(v13 + 16))(v14, v11, v10);
    v4 = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v7, isUniquelyReferenced_nonNull_native, &v27);
    (*v9)(v7, v24);
    __swift_destroy_boxed_opaque_existential_0(v0 + 216);

    *v6 = v27;
  }

  else
  {
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 136, &_s6TipKit0A0_pSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(v7, v0 + 176);
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 176, &_s6TipKit0A0_pSgMd);
    (*v9)(v7, v8);
  }

  v15 = *(v0 + 672);
  v16 = *(v0 + 656);
  v17 = *(v0 + 616);
  v4(v0 + 288, 0);

  v18 = v16;
  MPRecentsTableViewController.setTipView(_:)(v16);

  v19 = static MainActor.shared.getter();
  *(v0 + 560) = v19;
  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *(v0 + 576) = v22;
  *(v0 + 568) = v20;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v20);
}

uint64_t specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:)(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 632) = a1;

  v3 = *(v2 + 536);
  v4 = *(v2 + 528);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 672) = a1;

  v3 = *(v2 + 536);
  v4 = *(v2 + 528);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 672) = a1;

  v3 = *(v2 + 536);
  v4 = *(v2 + 528);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 672) = a1;

  v3 = *(v2 + 536);
  v4 = *(v2 + 528);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 672) = a1;

  v3 = *(v2 + 536);
  v4 = *(v2 + 528);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 632) = a1;

  v3 = *(v2 + 536);
  v4 = *(v2 + 528);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 672) = a1;

  v3 = *(v2 + 536);
  v4 = *(v2 + 528);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v4, v3);
}

void MPRecentsTableViewController.setTipView(_:)(void *a1)
{
  v2 = v1;
  v4 = [v1 tableView];
  v5 = [v4 tableHeaderView];

  if (v5)
  {
    type metadata accessor for TPTipHeaderView();
    if (swift_dynamicCastClass())
    {
      v6 = dispatch thunk of TPTipHeaderView.hostingView.getter();

      if (v6)
      {

        if (a1)
        {
          return;
        }

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  if (!a1)
  {
    return;
  }

LABEL_8:
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.mobilePhone);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Showing Tip in RecentsTableViewController", v10, 2u);
  }

  v11 = [v2 tableView];
  if (a1)
  {
    goto LABEL_13;
  }

  v17 = [v2 tableView];
  v18 = [v17 tableHeaderView];

  if (!v18)
  {
    goto LABEL_13;
  }

  type metadata accessor for TPTipHeaderView();
  v19 = swift_dynamicCastClass();
  v12 = v19 != 0;
  if (v19)
  {
    v20 = dispatch thunk of TPTipHeaderView.hostingView.getter();

    if (v20)
    {
      v18 = v20;
      goto LABEL_21;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

LABEL_21:

LABEL_14:
  v59 = v11;
  [v59 contentOffset];
  v14 = v13;
  v16 = v15;
  if (a1)
  {
    if (!v12)
    {
      goto LABEL_30;
    }
  }

  else if (!v12)
  {
LABEL_35:

    goto LABEL_40;
  }

  v21 = [v2 tableView];
  v22 = [v21 tableHeaderView];

  if (!v22)
  {
    goto LABEL_27;
  }

  type metadata accessor for TPTipHeaderView();
  if (!swift_dynamicCastClass())
  {

LABEL_27:
    v23 = 0;
    goto LABEL_28;
  }

  v23 = dispatch thunk of TPTipHeaderView.hostingView.getter();

LABEL_28:
  v24 = [v23 superview];

  if (!v24)
  {
    [v59 setContentOffset:{v14, v16}];

    [v59 setTableHeaderView:0];
    goto LABEL_40;
  }

LABEL_30:
  v25 = type metadata accessor for TPTipHeaderView();
  static TPTipHeaderView.verticalInsetTotal.getter();
  if (a1)
  {
    v58 = v14;
    v26 = a1;
    v27 = [v2 view];
    if (!v27)
    {
      __break(1u);
      return;
    }

    v28 = v27;
    y = CGRectZero.origin.y;
    height = CGRectZero.size.height;
    [v27 bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v67.origin.x = v32;
    v67.origin.y = v34;
    v67.size.width = v36;
    v67.size.height = v38;
    Width = CGRectGetWidth(v67);
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    v68.origin.x = CGRectZero.origin.x;
    v68.origin.y = y;
    v68.size.width = Width;
    v68.size.height = height;
    CGRectGetWidth(v68);
    PHVoicemailInboxListViewController.refreshTableHeaderView()();
    v41 = v40;
    [v26 bounds];
    if (v41 != CGRectGetWidth(v69))
    {
      [v26 bounds];
      [v26 setBounds:?];
    }

    LODWORD(v42) = 1148846080;
    LODWORD(v43) = 1132068864;
    [v26 systemLayoutSizeFittingSize:v41 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v42, v43}];
    [v59 separatorInset];
    v44 = objc_allocWithZone(v25);
    v45 = TPTipHeaderView.init(frame:separatorInset:)();
    v46 = v26;
    dispatch thunk of TPTipHeaderView.hostingView.setter();
    TPTipHeaderView.displaysBottomSeparator.setter();
    [v59 setTableHeaderView:v45];
    [v59 setContentOffset:{v58, v16}];

    goto LABEL_35;
  }

  v47 = [v59 tableHeaderView];
  if (v47)
  {
    v48 = CGSizeZero.height;
    v49 = v47;
    [v47 setAlpha:1.0];
    v50 = objc_opt_self();
    v51 = swift_allocObject();
    *(v51 + 16) = v49;
    *(v51 + 24) = v59;
    *(v51 + 32) = v14;
    *(v51 + 40) = v16;
    *(v51 + 48) = CGSizeZero.width;
    *(v51 + 56) = v48;
    v64 = partial apply for specialized closure #1 in MPRecentsTableViewController.setTipView(_:);
    v65 = v51;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = thunk for @escaping @callee_guaranteed () -> ();
    v63 = &block_descriptor_13;
    v52 = _Block_copy(&aBlock);
    v53 = v59;
    v54 = v49;

    v55 = swift_allocObject();
    *(v55 + 16) = v12;
    *(v55 + 24) = v53;
    *(v55 + 32) = v14;
    *(v55 + 40) = v16;
    v64 = partial apply for closure #2 in MPRecentsTableViewController.setTipView(_:);
    v65 = v55;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
    v63 = &block_descriptor_48;
    v56 = _Block_copy(&aBlock);
    v57 = v53;

    [v50 animateWithDuration:v52 animations:v56 completion:0.33];

    _Block_release(v56);
    _Block_release(v52);

    return;
  }

LABEL_40:
}

void closure #1 in closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for mobilePhoneTips != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.mobilePhoneTips);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315138;
      v7 = _typeName(_:qualified:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: Presenting LiveVoicemailWelcomeViewController", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    v10 = objc_allocWithZone(type metadata accessor for LiveVoicemailWelcomeViewController());
    v11 = v1;
    v12 = specialized LiveVoicemailWelcomeViewController.init(delegate:)(v11, v10);
    [v11 presentViewController:v12 animated:1 completion:0];
  }
}

uint64_t specialized MPRecentsTableViewController.observePopoverTip<A>(_:)(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for TPTipsHelper.Entry();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = type metadata accessor for CallHistorySearchTip();
  v2[21] = v5;
  v6 = *(v5 - 8);
  v2[22] = v6;
  v2[23] = *(v6 + 64);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for MainActor();
  v2[27] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[28] = v8;
  v2[29] = v7;

  return (_swift_task_switch)(specialized MPRecentsTableViewController.observePopoverTip<A>(_:), v8, v7);
}

{
  v2 = *v1;
  *(*v1 + 272) = a1;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);

  return (_swift_task_switch)(specialized MPRecentsTableViewController.observePopoverTip<A>(_:), v4, v3);
}

uint64_t specialized MPRecentsTableViewController.observePopoverTip<A>(_:)()
{
  v1 = v0[25];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[12];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v5 + 16);
  v0[30] = v9;
  v0[31] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v6, v4);

  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v12 + v11, v2, v4);
  *(v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

  v0[32] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:), v12);
  type metadata accessor for TPTipsHelper();
  v13 = swift_task_alloc();
  v0[33] = v13;
  *v13 = v0;
  v13[1] = specialized MPRecentsTableViewController.observePopoverTip<A>(_:);

  return static TPTipsHelper.shared.getter();
}

{
  v13 = v0[34];
  v12 = v0[30];
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v14 = v0[18];
  v4 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[12];

  (*(v6 + 104))(v5, enum case for TPTipsHelper.Entry.Kind.recents(_:), v7);
  v0[5] = v2;
  v0[6] = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type CallHistorySearchTip and conformance CallHistorySearchTip, &type metadata accessor for CallHistorySearchTip);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v12(boxed_opaque_existential_1, v8, v2);
  (*(v6 + 16))(v4, v5, v7);
  outlined init with copy of Tip((v0 + 2), (v0 + 7));

  TPTipsHelper.Entry.init(_:tip:observationTask:)();
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  dispatch thunk of TPTipsHelper.addEntry(_:)();

  (*(v3 + 8))(v1, v14);

  v10 = v0[1];

  return v10();
}

uint64_t specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[79] = a5;
  v5[78] = a4;
  v6 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v5[80] = v6;
  v5[81] = *(v6 - 8);
  v5[82] = swift_task_alloc();
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  v5[85] = swift_task_alloc();
  v7 = type metadata accessor for Tips.Status();
  v5[86] = v7;
  v5[87] = *(v7 - 8);
  v5[88] = swift_task_alloc();
  v5[89] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd);
  v5[90] = swift_task_alloc();
  v5[91] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v5[92] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMd);
  v5[93] = v8;
  v5[94] = *(v8 - 8);
  v5[95] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd);
  v5[96] = v9;
  v5[97] = *(v9 - 8);
  v5[98] = swift_task_alloc();
  v5[99] = type metadata accessor for MainActor();
  v5[100] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[101] = v11;
  v5[102] = v10;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:), v11, v10);
}

uint64_t specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:)()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  *(v0 + 824) = type metadata accessor for CallHistorySearchTip();
  *(v0 + 832) = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type CallHistorySearchTip and conformance CallHistorySearchTip, &type metadata accessor for CallHistorySearchTip);
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>, &_sScSy6TipKit4TipsO6StatusOGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  *(v0 + 1016) = enum case for TPTipsHelper.Entry.Kind.recents(_:);
  v4 = static MainActor.shared.getter();
  *(v0 + 840) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v0 + 856) = v7;
  *(v0 + 848) = v5;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:), v5);
}

{
  v1 = v0[105];
  v0[108] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v2 = swift_task_alloc();
  v0[109] = v2;
  *v2 = v0;
  v2[1] = specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:);
  v3 = v0[85];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 856);
    v4 = *(v2 + 848);
    v5 = specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:);
  }

  else
  {
    (*(v2 + 864))();
    v3 = *(v2 + 856);
    v4 = *(v2 + 848);
    v5 = specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:);
  }

  return (_swift_task_switch)(v5, v4, v3);
}

{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];
  if ((*(v1 + 48))(v3, 1, v2) != 1)
  {
    (*(v1 + 32))(v0[88], v3, v2);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[110] = v7;
    v10 = v6 + *v6;
    v8 = swift_task_alloc();
    v0[111] = v8;
    *v8 = v0;
    v8[1] = specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:);

    __asm { BRAA            X2, X16 }
  }

  outlined destroy of (NSAttributedStringKey, Any)(v3, &_s6TipKit4TipsO6StatusOSgMd);
  v4 = v0[102];
  v5 = v0[101];

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:), v5, v4);
}

{
  return (*(v0 + 864))();
}

{
  v1 = *v0;
  v2 = *(*v0 + 704);
  v3 = *(*v0 + 696);
  v4 = *(*v0 + 688);

  (*(v3 + 8))(v2, v4);
  *(v1 + 1021) = *(v1 + 1020);
  v5 = *(v1 + 856);
  v6 = *(v1 + 848);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:), v6, v5);
}

{

  v1 = *(v0 + 816);
  v2 = *(v0 + 808);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:), v2, v1);
}

{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 896) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v2 = (v0 + 824);
  if (*(v0 + 1021))
  {
    v3 = Strong;
    v4 = [Strong tableView];
    v5 = [v4 tableHeaderView];

    if (v5)
    {
      type metadata accessor for TPTipHeaderView();
      if (swift_dynamicCastClass())
      {
        v6 = dispatch thunk of TPTipHeaderView.hostingView.getter();

        if (v6)
        {

LABEL_25:
          v26 = static MainActor.shared.getter();
          *(v0 + 840) = v26;
          if (v26)
          {
            swift_getObjectType();
            v27 = dispatch thunk of Actor.unownedExecutor.getter();
            v29 = v28;
          }

          else
          {
            v27 = 0;
            v29 = 0;
          }

          *(v0 + 856) = v29;
          *(v0 + 848) = v27;

          return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:), v27);
        }
      }

      else
      {
      }
    }

    v9 = v3;
    if (one-time initialization token for tipUserInfo != -1)
    {
      swift_once();
      v9 = v3;
    }

    if (*(static MPRecentsTableViewController.tipUserInfo + 2))
    {
      v6 = v9;
      goto LABEL_25;
    }

    v10 = *(v0 + 624);
    type metadata accessor for TipUIPopoverViewController();
    v11 = *v2;
    *(v0 + 368) = *v2;
    v12 = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 344));
    v14 = *(v12 - 8);
    v15 = *(v14 + 16);
    *(v0 + 944) = v15;
    *(v0 + 952) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(boxed_opaque_existential_1, v10, v12);
    v16 = [v9 searchController];
    v17 = [v16 searchBar];

    v18 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
    *(v0 + 960) = v18;
    v6 = v9;
    TipUIPopoverViewController.presentationDelegate.setter();
    v19 = TipUIPopoverViewController.popoverPresentationController.getter();
    if (v19)
    {
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100209A80;
      v22 = [v6 searchController];
      v23 = [v22 searchBar];

      *(v21 + 32) = v23;
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIView);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v20 setPassthroughViews:isa];
    }

    if (![v6 canDisplaySearchBarPopover])
    {

      goto LABEL_25;
    }

    *(v0 + 16) = v0;
    *(v0 + 24) = specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:);
    v25 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) () -> () with result type ();
    *(v0 + 104) = &block_descriptor_61_0;
    *(v0 + 112) = v25;
    [v6 presentViewController:v18 animated:1 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    *(v0 + 904) = type metadata accessor for TPTipsHelper();
    v8 = swift_task_alloc();
    *(v0 + 912) = v8;
    *v8 = v0;
    v8[1] = specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:);

    return static TPTipsHelper.shared.getter();
  }
}

{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[96];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 920);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 672);
  v4 = *(v0 + 648);
  v5 = *(v0 + 640);
  v6 = *(v4 + 104);
  *(v0 + 928) = v6;
  *(v0 + 936) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v3, v2, v5);
  v7 = dispatch thunk of TPTipsHelper.currentTip.getter();

  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 672)), (v9 & 1) != 0))
  {
    v10 = *(v0 + 672);
    v11 = *(v0 + 648);
    v12 = *(v0 + 640);
    outlined init with copy of Tip(*(v7 + 56) + 40 * v8, v0 + 184);
    v13 = *(v11 + 8);
    *(v0 + 984) = v13;
    *(v0 + 992) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v10, v12);

    outlined init with take of Tip((v0 + 184), v0 + 144);
    __swift_project_boxed_opaque_existential_0((v0 + 144), *(v0 + 168));
    v14 = dispatch thunk of Tip.id.getter();
    v16 = v15;
    if (v14 == dispatch thunk of Tip.id.getter() && v16 == v17)
    {

LABEL_14:
      [*(v0 + 896) dismissPopover];
      v26 = swift_task_alloc();
      *(v0 + 1000) = v26;
      *v26 = v0;
      v26[1] = specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:);

      return static TPTipsHelper.shared.getter();
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_14;
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 144);
  }

  else
  {
    v18 = *(v0 + 672);
    v19 = *(v0 + 648);
    v20 = *(v0 + 640);

    (*(v19 + 8))(v18, v20);
  }

  v21 = static MainActor.shared.getter();
  *(v0 + 840) = v21;
  if (v21)
  {
    swift_getObjectType();
    v22 = dispatch thunk of Actor.unownedExecutor.getter();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  *(v0 + 856) = v24;
  *(v0 + 848) = v22;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:), v22);
}

{
  v1 = *(*v0 + 816);
  v2 = *(*v0 + 808);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:), v2, v1);
}

{
  v1 = *(v0 + 960);
  v2 = *(static MPRecentsTableViewController.tipUserInfo + 2);
  *(static MPRecentsTableViewController.tipUserInfo + 2) = v1;
  v3 = v1;

  type metadata accessor for TPTipsHelper();
  v4 = swift_task_alloc();
  *(v0 + 968) = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:);

  return static TPTipsHelper.shared.getter();
}

{
  v28 = v0;
  v1 = *(v0 + 944);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 624);
  (*(*(v0 + 648) + 104))(*(v0 + 664), *(v0 + 1016), *(v0 + 640));
  *(v0 + 408) = v3;
  *(v0 + 416) = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
  v1(boxed_opaque_existential_1, v4, v3);
  v6 = dispatch thunk of TPTipsHelper.currentTip.modify();
  v8 = v7;
  v9 = *(v0 + 664);
  v10 = *(v0 + 648);
  v11 = *(v0 + 640);
  if (*(v0 + 408))
  {
    outlined init with take of Tip((v0 + 384), v0 + 464);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v8;
    *v8 = 0x8000000000000000;
    v12 = *(v0 + 488);
    v25 = v11;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 464, v12);
    v14 = v6;
    v15 = *(v12 - 8);
    v16 = swift_task_alloc();
    (*(v15 + 16))(v16, v13, v12);
    v6 = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v9, isUniquelyReferenced_nonNull_native, &v27);
    (*(v10 + 8))(v9, v25);
    __swift_destroy_boxed_opaque_existential_0(v0 + 464);

    *v8 = v27;
  }

  else
  {
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 384, &_s6TipKit0A0_pSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(v9, v0 + 424);
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 424, &_s6TipKit0A0_pSgMd);
    (*(v10 + 8))(v9, v11);
  }

  v17 = *(v0 + 976);
  v18 = *(v0 + 960);
  v19 = *(v0 + 896);
  v6(v0 + 568, 0);

  v20 = static MainActor.shared.getter();
  *(v0 + 840) = v20;
  if (v20)
  {
    swift_getObjectType();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  *(v0 + 856) = v23;
  *(v0 + 848) = v21;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:), v21);
}

{
  v24 = v0;
  (*(v0 + 928))(*(v0 + 656), *(v0 + 1016), *(v0 + 640));
  *(v0 + 224) = 0u;
  v1 = v0 + 144;
  *(v0 + 256) = 0;
  *(v0 + 240) = 0u;
  v2 = dispatch thunk of TPTipsHelper.currentTip.modify();
  v4 = v3;
  v5 = *(v0 + 656);
  v21 = *(v0 + 640);
  v22 = *(v0 + 984);
  if (*(v0 + 248))
  {
    outlined init with take of Tip((v0 + 224), v0 + 304);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;
    *v4 = 0x8000000000000000;
    v20 = v2;
    v6 = *(v0 + 328);
    v7 = *(v0 + 336);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 304, v6);
    v9 = *(v6 - 8);
    v10 = swift_task_alloc();
    (*(v9 + 16))(v10, v8, v6);
    v1 = v0 + 144;
    v11 = v6;
    v2 = v20;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v5, isUniquelyReferenced_nonNull_native, &v23, v11, v7);
    v22(v5, v21);
    __swift_destroy_boxed_opaque_existential_0(v0 + 304);

    *v4 = v23;
  }

  else
  {
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 224, &_s6TipKit0A0_pSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(v5, v0 + 264);
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 264, &_s6TipKit0A0_pSgMd);
    v22(v5, v21);
  }

  v12 = *(v0 + 1008);
  v13 = *(v0 + 896);
  v2(v0 + 536, 0);

  dispatch thunk of static TPTipsHelper.didDisplayCallHistorySearchTip()();
  __swift_destroy_boxed_opaque_existential_0(v1);
  v14 = static MainActor.shared.getter();
  *(v0 + 840) = v14;
  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  *(v0 + 856) = v17;
  *(v0 + 848) = v15;

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:), v15);
}

uint64_t specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:)(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 920) = a1;

  v3 = *(v2 + 816);
  v4 = *(v2 + 808);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 976) = a1;

  v3 = *(v2 + 816);
  v4 = *(v2 + 808);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 1008) = a1;

  v3 = *(v2 + 816);
  v4 = *(v2 + 808);

  return (_swift_task_switch)(specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:), v4, v3);
}

Swift::Void __swiftcall MPRecentsTableViewController.tipKitStartObservation()()
{
  v1 = [v0 featureFlags];
  v2 = [v1 callHistorySearchEnabled];

  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t sub_1001553D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t closure #1 in MPRecentsTableViewController.tipKitStartObservation()(uint64_t a1, char a2)
{
  *(v2 + 384) = a2;
  *(v2 + 96) = a1;
  v3 = type metadata accessor for CallHistorySearchTip();
  *(v2 + 104) = v3;
  *(v2 + 112) = *(v3 - 8);
  *(v2 + 120) = swift_task_alloc();
  v4 = type metadata accessor for RecentsUnknownCallersTip();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  v5 = type metadata accessor for RecentsBrandedCallingTip();
  *(v2 + 152) = v5;
  *(v2 + 160) = *(v5 - 8);
  *(v2 + 168) = swift_task_alloc();
  v6 = type metadata accessor for RecentsSaveAsFavoritesTip();
  *(v2 + 176) = v6;
  *(v2 + 184) = *(v6 - 8);
  *(v2 + 192) = swift_task_alloc();
  v7 = type metadata accessor for RecentsSaveAsContactTip();
  *(v2 + 200) = v7;
  *(v2 + 208) = *(v7 - 8);
  *(v2 + 216) = swift_task_alloc();
  v8 = type metadata accessor for LiveVoicemailTip();
  *(v2 + 224) = v8;
  *(v2 + 232) = *(v8 - 8);
  *(v2 + 240) = swift_task_alloc();

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), 0, 0);
}

uint64_t closure #1 in MPRecentsTableViewController.tipKitStartObservation()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[31] = Strong;
  if (Strong)
  {
    type metadata accessor for TPTipsHelper();
    v2 = swift_task_alloc();
    v0[32] = v2;
    *v2 = v0;
    v2[1] = closure #1 in MPRecentsTableViewController.tipKitStartObservation();

    return static TPTipsHelper.shared.getter();
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

{
  *(v0 + 272) = type metadata accessor for MainActor();
  *(v0 + 280) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), v2, v1);
}

{
  v1 = *(v0 + 264);

  dispatch thunk of TPTipsHelper.setup()();

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), 0, 0);
}

{
  LiveVoicemailTip.init()();
  v0[36] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = closure #1 in MPRecentsTableViewController.tipKitStartObservation();
  v2 = v0[30];

  return specialized MPRecentsTableViewController.observeTip<A>(_:action:)(v2);
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), v1, v0);
}

{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  (*(v2 + 8))(v1, v3);

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), 0, 0);
}

{
  RecentsSaveAsContactTip.init()();
  v0[38] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = closure #1 in MPRecentsTableViewController.tipKitStartObservation();
  v2 = v0[27];

  return specialized MPRecentsTableViewController.observeTip<A>(_:action:)(v2);
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), v1, v0);
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];

  (*(v2 + 8))(v1, v3);

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), 0, 0);
}

{
  RecentsSaveAsFavoritesTip.init()();
  v0[40] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[41] = v1;
  *v1 = v0;
  v1[1] = closure #1 in MPRecentsTableViewController.tipKitStartObservation();
  v2 = v0[24];

  return specialized MPRecentsTableViewController.observeTip<A>(_:action:)(v2);
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), v1, v0);
}

{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  (*(v2 + 8))(v1, v3);

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), 0, 0);
}

{
  *(v0 + 336) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), v2, v1);
}

{
  v1 = *(v0 + 248);

  *(v0 + 344) = [v1 personalizedCarrierString];

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), 0, 0);
}

{
  v1 = v0[43];
  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SStGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100209AA0;
    *(inited + 32) = 1;
    v6 = inited + 32;
    *(inited + 40) = v2;
    *(inited + 48) = v4;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (NSAttributedStringKey, Any)(v6, &_sSi_SStMd);
    RecentsBrandedCallingTip.init(_:)();
    v0[44] = static MainActor.shared.getter();
    v7 = swift_task_alloc();
    v0[45] = v7;
    *v7 = v0;
    v7[1] = closure #1 in MPRecentsTableViewController.tipKitStartObservation();
    v8 = v0[21];

    return specialized MPRecentsTableViewController.observeTip<A>(_:action:)(v8);
  }

  else
  {
    RecentsUnknownCallersTip.init()();
    v10 = swift_task_alloc();
    v0[46] = v10;
    *v10 = v0;
    v10[1] = closure #1 in MPRecentsTableViewController.tipKitStartObservation();
    v11 = v0[18];

    return specialized MPRecentsTableViewController.observeTip<A>(_:action:)(v11);
  }
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), v1, v0);
}

{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), 0, 0);
}

{
  RecentsUnknownCallersTip.init()();
  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  *v1 = v0;
  v1[1] = closure #1 in MPRecentsTableViewController.tipKitStartObservation();
  v2 = *(v0 + 144);

  return specialized MPRecentsTableViewController.observeTip<A>(_:action:)(v2);
}

{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);

  (*(v2 + 8))(v1, v3);

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), 0, 0);
}

{
  if (*(v0 + 384) == 1)
  {
    CallHistorySearchTip.init()();
    v1 = swift_task_alloc();
    *(v0 + 376) = v1;
    *v1 = v0;
    v1[1] = closure #1 in MPRecentsTableViewController.tipKitStartObservation();
    v2 = *(v0 + 120);

    return specialized MPRecentsTableViewController.observePopoverTip<A>(_:)(v2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);

  (*(v2 + 8))(v1, v3);

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MPRecentsTableViewController.tipKitStartObservation()(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStartObservation(), 0, 0);
}

uint64_t sub_100156B44()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t partial apply for closure #1 in MPRecentsTableViewController.tipKitStartObservation()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in MPRecentsTableViewController.tipKitStartObservation()(v2, v3);
}

Swift::Void __swiftcall MPRecentsTableViewController.tipKitStopObservation()()
{
  [v0 dismissPopover];
  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in MPRecentsTableViewController.tipKitStopObservation()(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStopObservation(), 0, 0);
}

{
  *(*v1 + 80) = a1;

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStopObservation(), 0, 0);
}

uint64_t closure #1 in MPRecentsTableViewController.tipKitStopObservation()()
{
  swift_unknownObjectWeakInit();
  *(v0 + 56) = type metadata accessor for MainActor();
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStopObservation(), v2, v1);
}

{

  specialized closure #1 in closure #1 in MPRecentsTableViewController.tipKitStopObservation()();
  swift_unknownObjectWeakDestroy();

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStopObservation(), 0, 0);
}

{
  type metadata accessor for TPTipsHelper();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = closure #1 in MPRecentsTableViewController.tipKitStopObservation();

  return static TPTipsHelper.shared.getter();
}

{
  (*(v0[5] + 104))(v0[6], enum case for TPTipsHelper.Entry.Kind.recents(_:), v0[4]);
  v0[11] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MPRecentsTableViewController.tipKitStopObservation(), v2, v1);
}

{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  dispatch thunk of TPTipsHelper.removeEntries(_:)();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t partial apply for closure #1 in MPRecentsTableViewController.tipKitStopObservation()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in MPRecentsTableViewController.tipKitStopObservation()(v2);
}

void specialized closure #1 in closure #1 in MPRecentsTableViewController.tipKitStopObservation()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong tableView];
    [v2 setTableHeaderView:0];
  }

  if (one-time initialization token for tipUserInfo != -1)
  {
    swift_once();
  }

  v3 = *(static MPRecentsTableViewController.tipUserInfo + 2);
  *(static MPRecentsTableViewController.tipUserInfo + 2) = 0;
}

Swift::Bool __swiftcall MPRecentsTableViewController.canDisplaySearchBarPopover()()
{
  v1 = v0;
  v2 = [v0 tabBarController];
  v3 = [v2 selectedViewController];

  v4 = [v1 navigationController];
  v5 = v4;
  if (!v3)
  {
    if (v4)
    {

      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (!v4)
  {

    goto LABEL_11;
  }

  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIViewController);
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
LABEL_7:
    v7 = [v1 navigationController];
    v8 = [v7 visibleViewController];

    if (!v8)
    {
      goto LABEL_12;
    }

    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIViewController);
    v9 = v1;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      v11 = [v9 searchController];
      v12 = [v11 isActive];

      LOBYTE(v8) = v12 ^ 1;
      goto LABEL_12;
    }
  }

LABEL_11:
  LOBYTE(v8) = 0;
LABEL_12:
  v13 = [v1 searchController];
  v14 = [v13 searchBar];

  [v14 frame];
  v16 = v15;

  if (v16 > 0.0)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LiveVoicemailTip();
  v33 = v12;
  v34 = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type LiveVoicemailTip and conformance LiveVoicemailTip, &type metadata accessor for LiveVoicemailTip);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(v12 - 8) + 32))(boxed_opaque_existential_1, a1, v12);
  v14 = *a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      __swift_destroy_boxed_opaque_existential_0(v23);
      return outlined init with take of Tip(&v32, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a3 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  __chkstk_darwin(v27);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  specialized _NativeDictionary._insert(at:key:value:)(v16, v11, v29, v22, &type metadata accessor for LiveVoicemailTip, &lazy protocol witness table cache variable for type LiveVoicemailTip and conformance LiveVoicemailTip, &type metadata accessor for LiveVoicemailTip);
  return __swift_destroy_boxed_opaque_existential_0(&v32);
}

{
  v8 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CallHistorySearchTip();
  v33 = v12;
  v34 = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type CallHistorySearchTip and conformance CallHistorySearchTip, &type metadata accessor for CallHistorySearchTip);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(v12 - 8) + 32))(boxed_opaque_existential_1, a1, v12);
  v14 = *a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      __swift_destroy_boxed_opaque_existential_0(v23);
      return outlined init with take of Tip(&v32, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a3 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  __chkstk_darwin(v27);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  specialized _NativeDictionary._insert(at:key:value:)(v16, v11, v29, v22, &type metadata accessor for CallHistorySearchTip, &lazy protocol witness table cache variable for type CallHistorySearchTip and conformance CallHistorySearchTip, &type metadata accessor for CallHistorySearchTip);
  return __swift_destroy_boxed_opaque_existential_0(&v32);
}

{
  v8 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecentsUnknownCallersTip();
  v33 = v12;
  v34 = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type RecentsUnknownCallersTip and conformance RecentsUnknownCallersTip, &type metadata accessor for RecentsUnknownCallersTip);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(v12 - 8) + 32))(boxed_opaque_existential_1, a1, v12);
  v14 = *a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      __swift_destroy_boxed_opaque_existential_0(v23);
      return outlined init with take of Tip(&v32, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a3 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  __chkstk_darwin(v27);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  specialized _NativeDictionary._insert(at:key:value:)(v16, v11, v29, v22, &type metadata accessor for RecentsUnknownCallersTip, &lazy protocol witness table cache variable for type RecentsUnknownCallersTip and conformance RecentsUnknownCallersTip, &type metadata accessor for RecentsUnknownCallersTip);
  return __swift_destroy_boxed_opaque_existential_0(&v32);
}

{
  v8 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecentsBrandedCallingTip();
  v33 = v12;
  v34 = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip, &type metadata accessor for RecentsBrandedCallingTip);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(v12 - 8) + 32))(boxed_opaque_existential_1, a1, v12);
  v14 = *a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      __swift_destroy_boxed_opaque_existential_0(v23);
      return outlined init with take of Tip(&v32, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a3 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  __chkstk_darwin(v27);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  specialized _NativeDictionary._insert(at:key:value:)(v16, v11, v29, v22, &type metadata accessor for RecentsBrandedCallingTip, &lazy protocol witness table cache variable for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip, &type metadata accessor for RecentsBrandedCallingTip);
  return __swift_destroy_boxed_opaque_existential_0(&v32);
}

{
  v8 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecentsSaveAsFavoritesTip();
  v33 = v12;
  v34 = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type RecentsSaveAsFavoritesTip and conformance RecentsSaveAsFavoritesTip, &type metadata accessor for RecentsSaveAsFavoritesTip);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(v12 - 8) + 32))(boxed_opaque_existential_1, a1, v12);
  v14 = *a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      __swift_destroy_boxed_opaque_existential_0(v23);
      return outlined init with take of Tip(&v32, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a3 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  __chkstk_darwin(v27);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  specialized _NativeDictionary._insert(at:key:value:)(v16, v11, v29, v22, &type metadata accessor for RecentsSaveAsFavoritesTip, &lazy protocol witness table cache variable for type RecentsSaveAsFavoritesTip and conformance RecentsSaveAsFavoritesTip, &type metadata accessor for RecentsSaveAsFavoritesTip);
  return __swift_destroy_boxed_opaque_existential_0(&v32);
}

{
  v8 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecentsSaveAsContactTip();
  v33 = v12;
  v34 = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type RecentsSaveAsContactTip and conformance RecentsSaveAsContactTip, &type metadata accessor for RecentsSaveAsContactTip);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(v12 - 8) + 32))(boxed_opaque_existential_1, a1, v12);
  v14 = *a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      __swift_destroy_boxed_opaque_existential_0(v23);
      return outlined init with take of Tip(&v32, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a3 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  __chkstk_darwin(v27);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  specialized _NativeDictionary._insert(at:key:value:)(v16, v11, v29, v22, &type metadata accessor for RecentsSaveAsContactTip, &lazy protocol witness table cache variable for type RecentsSaveAsContactTip and conformance RecentsSaveAsContactTip, &type metadata accessor for RecentsSaveAsContactTip);
  return __swift_destroy_boxed_opaque_existential_0(&v32);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a5;
  v37 = a6;
  v34 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v17 = *a4;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a3 & 1) != 0)
  {
LABEL_7:
    v25 = *a4;
    if (v23)
    {
LABEL_8:
      v26 = v25[7] + 40 * v19;
      __swift_destroy_boxed_opaque_existential_0(v26);
      return outlined init with take of Tip(&v35, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a3 & 1);
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a4;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v13 + 16))(v15, a2, v12);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v35, v36);
  __chkstk_darwin(v30);
  v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  specialized _NativeDictionary._insert(at:key:value:)(v19, v15, v32, v25, a5, v34);
  return __swift_destroy_boxed_opaque_existential_0(&v35);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v13 = a5(0);
  v22 = v13;
  v23 = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(a6, a7);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(*(v13 - 8) + 32))(boxed_opaque_existential_1, a3, v13);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v15 = a4[6];
  v16 = type metadata accessor for TPTipsHelper.Entry.Kind();
  (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * a1, a2, v16);
  result = outlined init with take of Tip(&v21, a4[7] + 40 * a1);
  v18 = a4[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v20;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for TPTipsHelper.Entry.Kind();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = outlined init with take of Tip(&v18, a4[7] + 40 * a1);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t specialized MPRecentsTableViewController.observeTip<A>(_:action:)(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getObjectType();
  v3 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for TPTipsHelper.Entry();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for RecentsUnknownCallersTip();
  v2[22] = v5;
  v6 = *(v5 - 8);
  v2[23] = v6;
  v2[24] = *(v6 + 64);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for MainActor();
  v2[28] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[29] = v8;
  v2[30] = v7;

  return (_swift_task_switch)(specialized MPRecentsTableViewController.observeTip<A>(_:action:), v8, v7);
}

{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return (_swift_task_switch)(specialized MPRecentsTableViewController.observeTip<A>(_:action:), v4, v3);
}

{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getObjectType();
  v3 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for TPTipsHelper.Entry();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for RecentsBrandedCallingTip();
  v2[22] = v5;
  v6 = *(v5 - 8);
  v2[23] = v6;
  v2[24] = *(v6 + 64);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for MainActor();
  v2[28] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[29] = v8;
  v2[30] = v7;

  return (_swift_task_switch)(specialized MPRecentsTableViewController.observeTip<A>(_:action:), v8, v7);
}

{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return (_swift_task_switch)(specialized MPRecentsTableViewController.observeTip<A>(_:action:), v4, v3);
}

{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getObjectType();
  v3 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for TPTipsHelper.Entry();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for RecentsSaveAsFavoritesTip();
  v2[22] = v5;
  v6 = *(v5 - 8);
  v2[23] = v6;
  v2[24] = *(v6 + 64);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for MainActor();
  v2[28] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[29] = v8;
  v2[30] = v7;

  return (_swift_task_switch)(specialized MPRecentsTableViewController.observeTip<A>(_:action:), v8, v7);
}

{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return (_swift_task_switch)(specialized MPRecentsTableViewController.observeTip<A>(_:action:), v4, v3);
}

{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getObjectType();
  v3 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for TPTipsHelper.Entry();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for RecentsSaveAsContactTip();
  v2[22] = v5;
  v6 = *(v5 - 8);
  v2[23] = v6;
  v2[24] = *(v6 + 64);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for MainActor();
  v2[28] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[29] = v8;
  v2[30] = v7;

  return (_swift_task_switch)(specialized MPRecentsTableViewController.observeTip<A>(_:action:), v8, v7);
}

{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return (_swift_task_switch)(specialized MPRecentsTableViewController.observeTip<A>(_:action:), v4, v3);
}

{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getObjectType();
  v3 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for TPTipsHelper.Entry();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for LiveVoicemailTip();
  v2[22] = v5;
  v6 = *(v5 - 8);
  v2[23] = v6;
  v2[24] = *(v6 + 64);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for MainActor();
  v2[28] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[29] = v8;
  v2[30] = v7;

  return (_swift_task_switch)(specialized MPRecentsTableViewController.observeTip<A>(_:action:), v8, v7);
}

{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return (_swift_task_switch)(specialized MPRecentsTableViewController.observeTip<A>(_:action:), v4, v3);
}

uint64_t specialized MPRecentsTableViewController.observeTip<A>(_:action:)()
{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v16 = v0[14];
  v6 = v0[12];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v5 + 16);
  v0[31] = v9;
  v0[32] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v6, v4);

  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v13 + v11, v2, v4);
  *(v13 + v12) = v8;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;

  v0[33] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v13);
  type metadata accessor for TPTipsHelper();
  v14 = swift_task_alloc();
  v0[34] = v14;
  *v14 = v0;
  v14[1] = specialized MPRecentsTableViewController.observeTip<A>(_:action:);

  return static TPTipsHelper.shared.getter();
}

{
  v13 = v0[35];
  v12 = v0[31];
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v14 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];

  (*(v6 + 104))(v5, enum case for TPTipsHelper.Entry.Kind.recents(_:), v7);
  v0[5] = v2;
  v0[6] = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type RecentsUnknownCallersTip and conformance RecentsUnknownCallersTip, &type metadata accessor for RecentsUnknownCallersTip);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v12(boxed_opaque_existential_1, v8, v2);
  (*(v6 + 16))(v4, v5, v7);
  outlined init with copy of Tip((v0 + 2), (v0 + 7));

  TPTipsHelper.Entry.init(_:tip:observationTask:)();
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  dispatch thunk of TPTipsHelper.addEntry(_:)();

  (*(v3 + 8))(v1, v14);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v16 = v0[14];
  v6 = v0[12];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v5 + 16);
  v0[31] = v9;
  v0[32] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v6, v4);

  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v13 + v11, v2, v4);
  *(v13 + v12) = v8;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;

  v0[33] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v13);
  type metadata accessor for TPTipsHelper();
  v14 = swift_task_alloc();
  v0[34] = v14;
  *v14 = v0;
  v14[1] = specialized MPRecentsTableViewController.observeTip<A>(_:action:);

  return static TPTipsHelper.shared.getter();
}

{
  v13 = v0[35];
  v12 = v0[31];
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v14 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];

  (*(v6 + 104))(v5, enum case for TPTipsHelper.Entry.Kind.recents(_:), v7);
  v0[5] = v2;
  v0[6] = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip, &type metadata accessor for RecentsBrandedCallingTip);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v12(boxed_opaque_existential_1, v8, v2);
  (*(v6 + 16))(v4, v5, v7);
  outlined init with copy of Tip((v0 + 2), (v0 + 7));

  TPTipsHelper.Entry.init(_:tip:observationTask:)();
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  dispatch thunk of TPTipsHelper.addEntry(_:)();

  (*(v3 + 8))(v1, v14);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v16 = v0[14];
  v6 = v0[12];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v5 + 16);
  v0[31] = v9;
  v0[32] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v6, v4);

  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v13 + v11, v2, v4);
  *(v13 + v12) = v8;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;

  v0[33] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v13);
  type metadata accessor for TPTipsHelper();
  v14 = swift_task_alloc();
  v0[34] = v14;
  *v14 = v0;
  v14[1] = specialized MPRecentsTableViewController.observeTip<A>(_:action:);

  return static TPTipsHelper.shared.getter();
}

{
  v13 = v0[35];
  v12 = v0[31];
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v14 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];

  (*(v6 + 104))(v5, enum case for TPTipsHelper.Entry.Kind.recents(_:), v7);
  v0[5] = v2;
  v0[6] = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type RecentsSaveAsFavoritesTip and conformance RecentsSaveAsFavoritesTip, &type metadata accessor for RecentsSaveAsFavoritesTip);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v12(boxed_opaque_existential_1, v8, v2);
  (*(v6 + 16))(v4, v5, v7);
  outlined init with copy of Tip((v0 + 2), (v0 + 7));

  TPTipsHelper.Entry.init(_:tip:observationTask:)();
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  dispatch thunk of TPTipsHelper.addEntry(_:)();

  (*(v3 + 8))(v1, v14);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v16 = v0[14];
  v6 = v0[12];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v5 + 16);
  v0[31] = v9;
  v0[32] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v6, v4);

  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v13 + v11, v2, v4);
  *(v13 + v12) = v8;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;

  v0[33] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v13);
  type metadata accessor for TPTipsHelper();
  v14 = swift_task_alloc();
  v0[34] = v14;
  *v14 = v0;
  v14[1] = specialized MPRecentsTableViewController.observeTip<A>(_:action:);

  return static TPTipsHelper.shared.getter();
}

{
  v13 = v0[35];
  v12 = v0[31];
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v14 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];

  (*(v6 + 104))(v5, enum case for TPTipsHelper.Entry.Kind.recents(_:), v7);
  v0[5] = v2;
  v0[6] = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type RecentsSaveAsContactTip and conformance RecentsSaveAsContactTip, &type metadata accessor for RecentsSaveAsContactTip);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v12(boxed_opaque_existential_1, v8, v2);
  (*(v6 + 16))(v4, v5, v7);
  outlined init with copy of Tip((v0 + 2), (v0 + 7));

  TPTipsHelper.Entry.init(_:tip:observationTask:)();
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  dispatch thunk of TPTipsHelper.addEntry(_:)();

  (*(v3 + 8))(v1, v14);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v16 = v0[14];
  v6 = v0[12];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v5 + 16);
  v0[31] = v9;
  v0[32] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v6, v4);

  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v13 + v11, v2, v4);
  *(v13 + v12) = v8;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;

  v0[33] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:), v13);
  type metadata accessor for TPTipsHelper();
  v14 = swift_task_alloc();
  v0[34] = v14;
  *v14 = v0;
  v14[1] = specialized MPRecentsTableViewController.observeTip<A>(_:action:);

  return static TPTipsHelper.shared.getter();
}

{
  v13 = v0[35];
  v12 = v0[31];
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v14 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];

  (*(v6 + 104))(v5, enum case for TPTipsHelper.Entry.Kind.recents(_:), v7);
  v0[5] = v2;
  v0[6] = lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(&lazy protocol witness table cache variable for type LiveVoicemailTip and conformance LiveVoicemailTip, &type metadata accessor for LiveVoicemailTip);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v12(boxed_opaque_existential_1, v8, v2);
  (*(v6 + 16))(v4, v5, v7);
  outlined init with copy of Tip((v0 + 2), (v0 + 7));

  TPTipsHelper.Entry.init(_:tip:observationTask:)();
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  dispatch thunk of TPTipsHelper.addEntry(_:)();

  (*(v3 + 8))(v1, v14);

  v10 = v0[1];

  return v10();
}

void specialized MPRecentsTableViewController.dismissPopover()()
{
  if (one-time initialization token for tipUserInfo != -1)
  {
    swift_once();
  }

  v0 = *(static MPRecentsTableViewController.tipUserInfo + 2);
  if (v0)
  {
    v1 = v0;
    [v1 dismissViewControllerAnimated:1 completion:0];
    v2 = static MPRecentsTableViewController.tipUserInfo;

    v3 = v2[2];
    v2[2] = 0;
  }
}

void specialized MPRecentsTableViewController.presentationControllerDidDismiss(_:)()
{
  if (one-time initialization token for tipUserInfo != -1)
  {
    swift_once();
  }

  if (*(static MPRecentsTableViewController.tipUserInfo + 2))
  {
    type metadata accessor for TPTipsHelper();
    dispatch thunk of static TPTipsHelper.didDisplayCallHistorySearchTip()();
    v0 = *(static MPRecentsTableViewController.tipUserInfo + 2);
    *(static MPRecentsTableViewController.tipUserInfo + 2) = 0;
  }
}

uint64_t sub_10015B3BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t partial apply for specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:)(uint64_t a1)
{
  v4 = *(type metadata accessor for RecentsBrandedCallingTip() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:)(a1, v7, v8, v1 + v5, v9, v10);
}

{
  v4 = *(type metadata accessor for RecentsUnknownCallersTip() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:)(a1, v7, v8, v1 + v5, v9, v10);
}

{
  v4 = *(type metadata accessor for RecentsSaveAsFavoritesTip() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:)(a1, v7, v8, v1 + v5, v9, v10);
}

{
  v4 = *(type metadata accessor for RecentsSaveAsContactTip() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:)(a1, v7, v8, v1 + v5, v9, v10);
}

{
  v4 = *(type metadata accessor for LiveVoicemailTip() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return specialized closure #1 in MPRecentsTableViewController.observeTip<A>(_:action:)(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_10015B54C()
{

  return _swift_deallocObject(v0, 64, 7);
}

id partial apply for specialized closure #1 in MPRecentsTableViewController.setTipView(_:)()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha:0.0];
  PHVoicemailInboxListViewController.refreshTableHeaderView()();

  return [v1 setContentOffset:?];
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015B614()
{

  return _swift_deallocObject(v0, 48, 7);
}

void partial apply for closure #2 in MPRecentsTableViewController.setTipView(_:)()
{
  if (*(v0 + 16) == 1)
  {
    v1 = *(v0 + 24);
    [v1 setContentOffset:{*(v0 + 32), *(v0 + 40)}];

    [v1 setTableHeaderView:0];
  }
}

uint64_t sub_10015B6B8()
{
  v1 = type metadata accessor for CallHistorySearchTip();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CallHistorySearchTip() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return specialized closure #1 in MPRecentsTableViewController.observePopoverTip<A>(_:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10015BCCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t objectdestroy_28Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t lazy protocol witness table accessor for type RecentsBrandedCallingTip and conformance RecentsBrandedCallingTip(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScSy6TipKit4TipsO6StatusOG_SbTg5(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[13] = v6;
  v3[14] = v8;

  return (_swift_task_switch)(_ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScSy6TipKit4TipsO6StatusOG_SbTg5TY0_, v6);
}

uint64_t _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScSy6TipKit4TipsO6StatusOG_SbTg5TY0_()
{
  v0[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd);
  v0[16] = AsyncMapSequence.Iterator.baseIterator.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScSy6TipKit4TipsO6StatusOG_SbTg5TQ1_;
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v2, v3, v4);
}

uint64_t _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScSy6TipKit4TipsO6StatusOG_SbTg5TQ1_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScSy6TipKit4TipsO6StatusOG_SbTg5TY3_;
  }

  else
  {
    (*(v2 + 128))();
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScSy6TipKit4TipsO6StatusOG_SbTg5TY2_;
  }

  return (_swift_task_switch)(v5, v3, v4);
}

uint64_t _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScSy6TipKit4TipsO6StatusOG_SbTg5TY2_()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of Tips.Status?(v3);

    v4 = v0[1];

    return v4(2);
  }

  else
  {
    (*(v2 + 32))(v0[12], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[18] = v7;
    v10 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[19] = v8;
    *v8 = v0;
    v8[1] = _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScSy6TipKit4TipsO6StatusOG_SbTg5TQ4_;
    v9 = v0[12];

    return (v10)(v0 + 20, v9);
  }
}

uint64_t _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScSy6TipKit4TipsO6StatusOG_SbTg5TY3_()
{
  (*(v0 + 128))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScSy6TipKit4TipsO6StatusOG_SbTg5TQ4_()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);

  *(v1 + 161) = *(v1 + 160);
  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 112);
  v6 = *(v1 + 104);

  return (_swift_task_switch)(_ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScSy6TipKit4TipsO6StatusOG_SbTg5TY5_, v6, v5);
}

uint64_t _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScSy6TipKit4TipsO6StatusOG_SbTg5TY5_()
{
  v1 = *(v0 + 161);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t specialized MPFavoritesTableViewController.observeTip<A>(_:)(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for TPTipsHelper.Entry();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = type metadata accessor for FavoritesTip();
  v2[21] = v5;
  v6 = *(v5 - 8);
  v2[22] = v6;
  v2[23] = *(v6 + 64);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for MainActor();
  v2[27] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[28] = v8;
  v2[29] = v7;

  return (_swift_task_switch)(specialized MPFavoritesTableViewController.observeTip<A>(_:), v8, v7);
}

{
  v2 = *v1;
  *(*v1 + 272) = a1;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);

  return (_swift_task_switch)(specialized MPFavoritesTableViewController.observeTip<A>(_:), v4, v3);
}

uint64_t specialized MPFavoritesTableViewController.observeTip<A>(_:)()
{
  v1 = v0[25];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[12];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v5 + 16);
  v0[30] = v9;
  v0[31] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v6, v4);

  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v12 + v11, v2, v4);
  *(v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

  v0[32] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in MPFavoritesTableViewController.observeTip<A>(_:), v12);
  type metadata accessor for TPTipsHelper();
  v13 = swift_task_alloc();
  v0[33] = v13;
  *v13 = v0;
  v13[1] = specialized MPFavoritesTableViewController.observeTip<A>(_:);

  return static TPTipsHelper.shared.getter();
}

{
  v13 = v0[34];
  v12 = v0[30];
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v14 = v0[18];
  v4 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[12];

  (*(v6 + 104))(v5, enum case for TPTipsHelper.Entry.Kind.favorites(_:), v7);
  v0[5] = v2;
  v0[6] = lazy protocol witness table accessor for type FavoritesTip and conformance FavoritesTip();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v12(boxed_opaque_existential_1, v8, v2);
  (*(v6 + 16))(v4, v5, v7);
  outlined init with copy of Tip((v0 + 2), (v0 + 7));

  TPTipsHelper.Entry.init(_:tip:observationTask:)();
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  dispatch thunk of TPTipsHelper.addEntry(_:)();

  (*(v3 + 8))(v1, v14);

  v10 = v0[1];

  return v10();
}

uint64_t specialized closure #1 in MPFavoritesTableViewController.observeTip<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v5[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd);
  v5[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v5[36] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMd);
  v5[37] = v6;
  v5[38] = *(v6 - 8);
  v5[39] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd);
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = type metadata accessor for MainActor();
  v5[44] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[45] = v9;
  v5[46] = v8;

  return (_swift_task_switch)(specialized closure #1 in MPFavoritesTableViewController.observeTip<A>(_:), v9, v8);
}

uint64_t specialized closure #1 in MPFavoritesTableViewController.observeTip<A>(_:)()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v0[47] = type metadata accessor for FavoritesTip();
  v0[48] = lazy protocol witness table accessor for type FavoritesTip and conformance FavoritesTip();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>, &_sScSy6TipKit4TipsO6StatusOGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v4 = static MainActor.shared.getter();
  v0[49] = v4;
  v5 = swift_task_alloc();
  v0[50] = v5;
  *v5 = v0;
  v5[1] = specialized closure #1 in MPFavoritesTableViewController.observeTip<A>(_:);

  return _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScSy6TipKit4TipsO6StatusOG_SbTg5(v4, &protocol witness table for MainActor);
}

{
  if (*(v0 + 440) == 2 || (Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 408) = Strong) == 0))
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
LABEL_9:

LABEL_12:

    v6 = *(v0 + 8);

    return v6();
  }

  v2 = Strong;
  if ((*(v0 + 440) & 1) == 0)
  {
    v4 = *(v0 + 328);
    v3 = *(v0 + 336);
    v5 = *(v0 + 320);

    specialized MPFavoritesTableViewController.dismissPopover()();
    goto LABEL_11;
  }

  if (one-time initialization token for tipUserInfo != -1)
  {
    swift_once();
  }

  if (*(static MPFavoritesTableViewController.tipUserInfo + 2))
  {
    v4 = *(v0 + 328);
    v3 = *(v0 + 336);
    v5 = *(v0 + 320);

LABEL_11:

    (*(v4 + 8))(v3, v5);
    goto LABEL_12;
  }

  v8 = *(v0 + 256);
  v35 = *(v0 + 376);
  v9 = *(v0 + 376);
  v10 = [v2 addButtonItem];
  *(v0 + 416) = v10;
  type metadata accessor for TipUIPopoverViewController();
  *(v0 + 216) = v35;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 192));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v8, v9);
  v12 = v10;
  v13 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
  *(v0 + 424) = v13;
  v14 = TipUIPopoverViewController.popoverPresentationController.getter();
  *(v0 + 432) = v14;
  if (!v14)
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

    goto LABEL_9;
  }

  v15 = v14;
  [v14 setBarButtonItem:v12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100209F70;
  v17 = v2;
  v18 = [v17 tabBarController];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 tabBar];
  }

  else
  {
    v20 = 0;
  }

  *(inited + 32) = v20;
  v21 = [v17 navigationController];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 navigationBar];
  }

  else
  {
    v23 = 0;
  }

  *(inited + 40) = v23;
  v24 = specialized _arrayConditionalCast<A, B>(_:)(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewCSgMd);
  swift_arrayDestroy();
  if (v24)
  {
    type metadata accessor for UIView();
    v25.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v25.super.isa = 0;
  }

  [v15 setPassthroughViews:v25.super.isa];

  v26 = v13;
  v27 = [v17 view];

  if (v27)
  {
    [v27 frame];
    v30 = v29;
    v32 = v31;

    [v26 setPreferredContentSize:{v30, v32}];
    v33 = *(static MPFavoritesTableViewController.tipUserInfo + 2);
    *(static MPFavoritesTableViewController.tipUserInfo + 2) = v26;

    *(v0 + 16) = v0;
    *(v0 + 24) = specialized closure #1 in MPFavoritesTableViewController.observeTip<A>(_:);
    v34 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) () -> () with result type ();
    *(v0 + 104) = &block_descriptor_14;
    *(v0 + 112) = v34;
    [v17 presentViewController:v26 animated:1 completion:v0 + 80];
    v28 = v0 + 16;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v28);
}

{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);

  return (_swift_task_switch)(specialized closure #1 in MPFavoritesTableViewController.observeTip<A>(_:), v2, v1);
}

{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 408);

  v4 = static MainActor.shared.getter();
  *(v0 + 392) = v4;
  v5 = swift_task_alloc();
  *(v0 + 400) = v5;
  *v5 = v0;
  v5[1] = specialized closure #1 in MPFavoritesTableViewController.observeTip<A>(_:);

  return _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScSy6TipKit4TipsO6StatusOG_SbTg5(v4, &protocol witness table for MainActor);
}

uint64_t specialized closure #1 in MPFavoritesTableViewController.observeTip<A>(_:)(char a1)
{
  v3 = *v2;
  *(*v2 + 440) = a1;

  if (!v1)
  {

    v5 = *(v3 + 360);
    v6 = *(v3 + 368);

    return (_swift_task_switch)(specialized closure #1 in MPFavoritesTableViewController.observeTip<A>(_:), v5, v6);
  }

  return result;
}

Swift::Void __swiftcall MPFavoritesTableViewController.tipKitStartObservation()()
{
  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t sub_10015DB5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t closure #1 in MPFavoritesTableViewController.tipKitStartObservation()(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for FavoritesTip();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for TPTipsHelper();
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  v3[1] = closure #1 in MPFavoritesTableViewController.tipKitStartObservation();

  return static TPTipsHelper.shared.getter();
}

{
  *(*v1 + 80) = a1;

  return (_swift_task_switch)(closure #1 in MPFavoritesTableViewController.tipKitStartObservation(), 0, 0);
}

uint64_t closure #1 in MPFavoritesTableViewController.tipKitStartObservation()()
{
  type metadata accessor for MainActor();
  *(v0 + 88) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MPFavoritesTableViewController.tipKitStartObservation(), v2, v1);
}

{
  v1 = *(v0 + 80);

  dispatch thunk of TPTipsHelper.setup()();

  return (_swift_task_switch)(closure #1 in MPFavoritesTableViewController.tipKitStartObservation(), 0, 0);
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    FavoritesTip.init()();
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = closure #1 in MPFavoritesTableViewController.tipKitStartObservation();
    v3 = v0[8];

    return specialized MPFavoritesTableViewController.observeTip<A>(_:)(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t partial apply for closure #1 in MPFavoritesTableViewController.tipKitStartObservation()()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in MPFavoritesTableViewController.tipKitStartObservation()(v0);
}

Swift::Void __swiftcall MPFavoritesTableViewController.tipKitStopObservation()()
{
  specialized MPFavoritesTableViewController.dismissPopover()();
  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in MPFavoritesTableViewController.tipKitStopObservation()()
{
  v1 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  type metadata accessor for TPTipsHelper();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = closure #1 in MPFavoritesTableViewController.tipKitStopObservation();

  return static TPTipsHelper.shared.getter();
}

{
  (*(v0[3] + 104))(v0[4], enum case for TPTipsHelper.Entry.Kind.favorites(_:), v0[2]);
  v0[7] = type metadata accessor for MainActor();
  v0[8] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MPFavoritesTableViewController.tipKitStopObservation(), v2, v1);
}

{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  dispatch thunk of TPTipsHelper.removeEntries(_:)();

  (*(v3 + 8))(v2, v4);

  return (_swift_task_switch)(closure #1 in MPFavoritesTableViewController.tipKitStopObservation(), 0, 0);
}

{
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MPFavoritesTableViewController.tipKitStopObservation(), v2, v1);
}

{

  if (one-time initialization token for tipUserInfo != -1)
  {
    swift_once();
  }

  type metadata accessor for MPFavoritesTableViewController.FavoritesUserInfo();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  static MPFavoritesTableViewController.tipUserInfo = v1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in MPFavoritesTableViewController.tipKitStopObservation()(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return (_swift_task_switch)(closure #1 in MPFavoritesTableViewController.tipKitStopObservation(), 0, 0);
}

Swift::Void __swiftcall MPFavoritesTableViewController.tipKitLogAnalyticsAddFavoritesEvent()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in MPFavoritesTableViewController.tipKitLogAnalyticsAddFavoritesEvent(), v5);
}

uint64_t closure #1 in MPFavoritesTableViewController.tipKitLogAnalyticsAddFavoritesEvent()()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MPFavoritesTableViewController.tipKitLogAnalyticsAddFavoritesEvent(), v2, v1);
}

{

  [objc_opt_self() logAnalyticsEventPhoneAddFavorites];
  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall MPFavoritesTableViewController.tipKitActionFavoriteAdded()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO5EventVy_AC13EmptyDonationVGMd);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  v4 = type metadata accessor for Tips.InvalidationReason();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FavoritesTip();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  FavoritesTip.init()();
  (*(v5 + 104))(v7, enum case for Tips.InvalidationReason.actionPerformed(_:), v4);
  lazy protocol witness table accessor for type FavoritesTip and conformance FavoritesTip();
  Tip.invalidate(reason:)();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  static FavoritesTip.favoriteAddedEvent.getter();
  Tips.Event.sendDonation<>(_:)();
  (*(v1 + 8))(v3, v0);
}

void specialized MPFavoritesTableViewController.dismissPopover()()
{
  if (one-time initialization token for tipUserInfo != -1)
  {
    swift_once();
  }

  v0 = *(static MPFavoritesTableViewController.tipUserInfo + 2);
  if (v0)
  {
    v1 = v0;
    [v1 dismissViewControllerAnimated:1 completion:0];
    v2 = static MPFavoritesTableViewController.tipUserInfo;

    v3 = v2[2];
    v2[2] = 0;
  }
}

uint64_t partial apply for closure #1 in MPFavoritesTableViewController.tipKitLogAnalyticsAddFavoritesEvent()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in MPFavoritesTableViewController.tipKitLogAnalyticsAddFavoritesEvent()();
}

unint64_t lazy protocol witness table accessor for type FavoritesTip and conformance FavoritesTip()
{
  result = lazy protocol witness table cache variable for type FavoritesTip and conformance FavoritesTip;
  if (!lazy protocol witness table cache variable for type FavoritesTip and conformance FavoritesTip)
  {
    type metadata accessor for FavoritesTip();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FavoritesTip and conformance FavoritesTip);
  }

  return result;
}

uint64_t sub_10015F1AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10015F1E4()
{
  v1 = type metadata accessor for FavoritesTip();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for specialized closure #1 in MPFavoritesTableViewController.observeTip<A>(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for FavoritesTip() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return specialized closure #1 in MPFavoritesTableViewController.observeTip<A>(_:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t outlined destroy of Tips.Status?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VoicemailsSearchController.sectionTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___MPVoicemailsSearchController_sectionTitle);

  return v1;
}

uint64_t VoicemailsSearchController.sectionIndex.getter()
{
  v1 = OBJC_IVAR___MPVoicemailsSearchController_sectionIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VoicemailsSearchController.sectionIndex.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MPVoicemailsSearchController_sectionIndex;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VoicemailsSearchController.sectionType.getter()
{
  v1 = OBJC_IVAR___MPVoicemailsSearchController_sectionType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VoicemailsSearchController.sectionType.setter(int a1)
{
  v3 = OBJC_IVAR___MPVoicemailsSearchController_sectionType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Class @objc VoicemailsSearchController.results.getter()
{
  swift_beginAccess();

  v0.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v0.super.isa;
}

uint64_t @objc VoicemailsSearchController.results.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *a5;
  swift_beginAccess();
  *(a1 + v8) = v7;
}

uint64_t VoicemailsSearchController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*VoicemailsSearchController.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___MPVoicemailsSearchController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return CallsSearchController.delegate.modify;
}

void VoicemailsSearchController.hostingNavigationController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*VoicemailsSearchController.hostingNavigationController.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR___MPVoicemailsSearchController_hostingNavigationController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return VoicemailSearchMetadataView.delegate.modify;
}

uint64_t VoicemailsSearchController.delegate.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(v2 + v4);
}

uint64_t key path setter for VoicemailsSearchController.detailsPresenter : VoicemailsSearchController()
{
  swift_beginAccess();
  swift_weakAssign();
  swift_weakLoadStrong();
  swift_beginAccess();
  swift_weakAssign();
}

uint64_t VoicemailsSearchController.detailsPresenter.setter()
{
  swift_beginAccess();
  swift_weakAssign();
  swift_weakLoadStrong();

  swift_beginAccess();
  swift_weakAssign();
}

void (*VoicemailsSearchController.detailsPresenter.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___MPVoicemailsSearchController_detailsPresenter;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return VoicemailsSearchController.detailsPresenter.modify;
}

void VoicemailsSearchController.detailsPresenter.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    swift_weakLoadStrong();
    swift_beginAccess();
    swift_weakAssign();
  }

  free(v3);
}

id VoicemailsSearchController.searchManager.getter()
{
  v1 = OBJC_IVAR___MPVoicemailsSearchController____lazy_storage___searchManager;
  v2 = *(v0 + OBJC_IVAR___MPVoicemailsSearchController____lazy_storage___searchManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MPVoicemailsSearchController____lazy_storage___searchManager);
  }

  else
  {
    type metadata accessor for ApplicationServices();
    v4 = [swift_getObjCClassFromMetadata() sharedInstance];
    v5 = [v4 callProviderManager];

    v6 = [objc_allocWithZone(MPSearchManager) initWithItemType:1 callProviderManager:v5];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *VoicemailsSearchController.init(navigationController:voicemailController:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR___MPVoicemailsSearchController_sectionTitle];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v22._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x49414D4543494F56;
  v11.value._countAndFlagsBits = 0x746E656365524850;
  v10._object = 0xEA0000000000534CLL;
  v11.value._object = 0xE900000000000073;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v22);

  *v7 = v13;
  *&v3[OBJC_IVAR___MPVoicemailsSearchController_sectionIndex] = 0x7FFFFFFFFFFFFFFFLL;
  *&v3[OBJC_IVAR___MPVoicemailsSearchController_sectionType] = 3;
  *&v3[OBJC_IVAR___MPVoicemailsSearchController_results] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___MPVoicemailsSearchController_resultIDs] = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_weakInit();
  Logger.init(subsystem:category:)();
  v14 = OBJC_IVAR___MPVoicemailsSearchController_featureFlags;
  *&v3[v14] = [objc_allocWithZone(TUFeatureFlags) init];
  v3[OBJC_IVAR___MPVoicemailsSearchController_isSearching] = 0;
  v15 = &v3[OBJC_IVAR___MPVoicemailsSearchController_searchText];
  *v15 = 0;
  v15[1] = 0;
  *&v3[OBJC_IVAR___MPVoicemailsSearchController_searchTokens] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___MPVoicemailsSearchController____lazy_storage___searchManager] = 0;
  *&v3[OBJC_IVAR___MPVoicemailsSearchController_voicemailsTableViewController] = [objc_allocWithZone(type metadata accessor for VoicemailSearchTableViewController()) initWithNavigationController:a1 voicemailController:a2];
  v21.receiver = v3;
  v21.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v21, "init");
  v17 = OBJC_IVAR___MPVoicemailsSearchController_voicemailsTableViewController;
  v18 = *&v16[OBJC_IVAR___MPVoicemailsSearchController_voicemailsTableViewController];
  v19 = v16;
  [v18 setIsSearchViewController:1];
  [*&v16[v17] setFetchDelegate:v19];

  return v19;
}

char *VoicemailsSearchController.__allocating_init(navigationController:hostingNavigationController:voicemailController:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = a1;
  v9 = a3;
  v10 = VoicemailsSearchController.init(navigationController:voicemailController:)(v8, v9);
  v11 = *&v10[OBJC_IVAR___MPVoicemailsSearchController_voicemailsTableViewController];
  v12 = v10;
  [v11 setHostingNavigationController:a2];

  return v12;
}

uint64_t VoicemailsSearchController.search(with:searchTokens:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[41] = a3;
  v4[42] = v3;
  v4[39] = a1;
  v4[40] = a2;
  type metadata accessor for MainActor();
  v4[43] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[44] = v6;
  v4[45] = v5;

  return (_swift_task_switch)(VoicemailsSearchController.search(with:searchTokens:), v6, v5);
}

uint64_t VoicemailsSearchController.search(with:searchTokens:)()
{
  if (![*(v0[42] + OBJC_IVAR___MPVoicemailsSearchController_featureFlags) voicemailSearchEnabled])
  {

    goto LABEL_24;
  }

  v1 = v0[42];
  v2 = v0[40];
  v3 = OBJC_IVAR___MPVoicemailsSearchController_isSearching;
  v0[46] = OBJC_IVAR___MPVoicemailsSearchController_isSearching;
  *(v1 + v3) = 1;
  v4 = (v1 + OBJC_IVAR___MPVoicemailsSearchController_searchText);
  v5 = *(v1 + OBJC_IVAR___MPVoicemailsSearchController_searchText + 8);
  if (v2)
  {
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = *v4 == v0[39] && v5 == v0[40];
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    v7 = v0[41];

    LOBYTE(v7) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo13UISearchTokenC_Tt1g5(v8, v7);

    if (v7)
    {

      *(v1 + v3) = 0;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong didCompleteSearchFor:v0[42]];
        swift_unknownObjectRelease();
      }

      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_15:
  v10 = v0[41];
  v11 = v0[42];
  v12 = v0[40];
  *v4 = v0[39];
  v4[1] = v12;

  *(v11 + OBJC_IVAR___MPVoicemailsSearchController_searchTokens) = v10;

  v13 = *(v11 + OBJC_IVAR___MPVoicemailsSearchController_voicemailsTableViewController);
  v0[47] = v13;
  v15 = *v4;
  v14 = v4[1];
  v16 = &v13[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_searchText];
  swift_beginAccess();
  *v16 = v15;
  *(v16 + 1) = v14;

  if (v2)
  {
    v17 = String.count.getter();
    v18 = v0[41];
    if (v17 > 0)
    {
LABEL_19:
      v19 = VoicemailsSearchController.searchManager.getter();
      v0[48] = v19;
      v20 = String._bridgeToObjectiveC()();
      v0[49] = v20;
      type metadata accessor for UISearchToken();
      isa = Array._bridgeToObjectiveC()().super.isa;
      v0[50] = isa;
      v0[2] = v0;
      v0[7] = v0 + 21;
      v0[3] = VoicemailsSearchController.search(with:searchTokens:);
      v22 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySSGs5Error_pGMd);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> () with result type [String];
      v0[13] = &block_descriptor_3;
      v0[14] = v22;
      [v19 searchWithText:v20 searchTokens:isa completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    if (v18 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
        goto LABEL_19;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_19;
    }
  }

  v23 = v0[42];

  v24 = OBJC_IVAR___MPVoicemailsSearchController_results;
  swift_beginAccess();
  *(v23 + v24) = _swiftEmptyArrayStorage;

  v25 = OBJC_IVAR___MPVoicemailsSearchController_resultIDs;
  swift_beginAccess();
  *(v23 + v25) = _swiftEmptyArrayStorage;

  v0[14] = closure #1 in static VoicemailSearchTableViewController.voicemailPredicate.getter;
  v0[15] = 0;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = thunk for @escaping @callee_guaranteed (@guaranteed Message) -> (@unowned Bool);
  v0[13] = &block_descriptor_15;
  v26 = _Block_copy(v0 + 10);
  [v13 setPreFetchingPredicate:v26];
  _Block_release(v26);
  [v13 reloadDataIfNeeded];
LABEL_24:
  v27 = v0[1];

  return v27();
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  v3 = *(v1 + 360);
  v4 = *(v1 + 352);
  if (v2)
  {
    v5 = VoicemailsSearchController.search(with:searchTokens:);
  }

  else
  {
    v5 = VoicemailsSearchController.search(with:searchTokens:);
  }

  return (_swift_task_switch)(v5, v4, v3);
}

{
  v37 = v0;
  v1 = v0 + 10;
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[48];
  v5 = v0[21];
  swift_bridgeObjectRetain_n();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[39];
    v8 = v0[40];
    v10 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    v11 = v36[0];
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v36);
    *(v10 + 12) = 2048;
    v12 = *(v5 + 16);

    *(v10 + 14) = v12;

    _os_log_impl(&_mh_execute_header, v6, v7, "VoicemailsSearchController: Completed search for %s. Got %ld results", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    v1 = v0 + 10;
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v13 = *(v5 + 16);

  if (!v13)
  {
    v17 = v0[42];

    v18 = OBJC_IVAR___MPVoicemailsSearchController_results;
    swift_beginAccess();
    *(v17 + v18) = _swiftEmptyArrayStorage;

    v19 = OBJC_IVAR___MPVoicemailsSearchController_resultIDs;
    swift_beginAccess();
    *(v17 + v19) = _swiftEmptyArrayStorage;

    v20 = 0;
    v21 = FTMessage.isTranscriptionRated.getter;
LABEL_7:
    v22 = v0[47];
    v0[14] = v21;
    v0[15] = v20;
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = thunk for @escaping @callee_guaranteed (@guaranteed Message) -> (@unowned Bool);
    v0[13] = &block_descriptor_6_0;
    v23 = _Block_copy(v1);

    [v22 setPreFetchingPredicate:v23];
    _Block_release(v23);
    [v22 reloadDataIfNeeded];

    goto LABEL_8;
  }

  v36[0] = v5;

  specialized MutableCollection<>.sort(by:)(v36);
  v14 = v0[42];
  v15 = v36[0];
  v16 = OBJC_IVAR___MPVoicemailsSearchController_resultIDs;
  swift_beginAccess();
  v36[0] = *(v14 + v16);
  swift_bridgeObjectRetain_n();
  specialized MutableCollection<>.sort(by:)(v36);

  v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v15, v36[0]);

  if ((v26 & 1) == 0)
  {
    swift_bridgeObjectRetain_n();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = *(v5 + 16);

      _os_log_impl(&_mh_execute_header, v33, v34, "VoicemailsSearchController: Search voicemails did changed! Search results count: %ld", v35, 0xCu);
    }

    else
    {
    }

    *(v14 + v16) = v5;

    v20 = swift_allocObject();
    *(v20 + 16) = v5;

    v21 = partial apply for specialized closure #3 in VoicemailsSearchController.search(with:searchTokens:);
    goto LABEL_7;
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "VoicemailsSearchController: Search voicemails did not change for voicemails search controller.", v29, 2u);
  }

  v30 = v0[46];
  v31 = v0[42];

  *(v31 + v30) = 0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didCompleteSearchFor:v0[42]];
    swift_unknownObjectRelease();
  }

LABEL_8:
  v24 = v0[1];

  return v24();
}

{
  v15 = v0;
  v1 = v0[50];
  v3 = v0[48];
  v2 = v0[49];

  swift_willThrow();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[39];
    v6 = v0[40];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v14);
    _os_log_impl(&_mh_execute_header, v4, v5, "VoicemailsSearchController: Failed to search for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v10 = v0[47];
  v0[14] = FTMessage.isTranscriptionRated.getter;
  v0[15] = 0;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = thunk for @escaping @callee_guaranteed (@guaranteed Message) -> (@unowned Bool);
  v0[13] = &block_descriptor_6_0;
  v11 = _Block_copy(v0 + 10);

  [v10 setPreFetchingPredicate:v11];
  _Block_release(v11);
  [v10 reloadDataIfNeeded];
  v12 = v0[1];

  return v12();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for UISearchToken()
{
  result = lazy cache variable for type metadata for UISearchToken;
  if (!lazy cache variable for type metadata for UISearchToken)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UISearchToken);
  }

  return result;
}

BOOL specialized closure #3 in VoicemailsSearchController.search(with:searchTokens:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v20[-v8];
  v10 = [a1 identifier];
  outlined init with copy of MessageID.Value(v10 + OBJC_IVAR___MPMessageID_value, v6);

  LODWORD(v10) = swift_getEnumCaseMultiPayload();
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if (v10 == 1)
  {
    (*(*(v11 - 8) + 32))(v9, v6, v11);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  (*(v12 + 56))(v9, v13, 1, v11);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    outlined destroy of UUID?(v9);
  }

  else
  {
    v14 = UUID.uuidString.getter();
    v16 = v15;
    v17 = (*(v12 + 8))(v9, v11);
    v21[0] = v14;
    v21[1] = v16;
    __chkstk_darwin(v17);
    *&v20[-16] = v21;
    v18 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v20[-32], a2);

    if (v18)
    {
      return [a1 folder] == 1;
    }
  }

  return 0;
}

uint64_t @objc closure #1 in VoicemailsSearchController.search(with:searchTokens:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in VoicemailsSearchController.search(with:searchTokens:), v6, v5);
}

uint64_t @objc closure #1 in VoicemailsSearchController.search(with:searchTokens:)()
{
  v1 = v0[4];
  v2 = v0[2];

  v0[7] = _Block_copy(v1);
  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v0[8] = v5;
  v6 = v0[5];
  type metadata accessor for UISearchToken();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[9] = v7;
  v8 = v6;
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = @objc closure #1 in CallsSearchController.search(with:searchTokens:);

  return VoicemailsSearchController.search(with:searchTokens:)(v3, v5, v7);
}

Swift::Void __swiftcall VoicemailsSearchController.cancelPreviousSearchRequests()()
{
  if ([*(v0 + OBJC_IVAR___MPVoicemailsSearchController_featureFlags) voicemailSearchEnabled])
  {
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "VoicemailsSearchController: cancelling previous search requests", v3, 2u);
    }

    v4 = VoicemailsSearchController.searchManager.getter();
    MPSearchManager.cancelPreviousSearch()();
  }
}

Swift::Int __swiftcall VoicemailsSearchController.numberOfRowsInConsolidatedView()()
{
  if (![*(v0 + OBJC_IVAR___MPVoicemailsSearchController_featureFlags) voicemailSearchEnabled])
  {
    return 0;
  }

  v1 = OBJC_IVAR___MPVoicemailsSearchController_results;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16) >= 3uLL)
  {
    return 3;
  }

  else
  {
    return *(*(v0 + v1) + 16);
  }
}

Swift::Void __swiftcall VoicemailsSearchController.registerCell(with:)(UITableView with)
{
  type metadata accessor for VoicemailSearchViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = String._bridgeToObjectiveC()();
  [(objc_class *)with.super.super.super.super.isa registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v3];
}

void VoicemailsSearchController.tableView(_:didSelectRowAt:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecentsItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (![*(v1 + OBJC_IVAR___MPVoicemailsSearchController_featureFlags) callExperiencePhoneAppEnabled] || !objc_msgSend(*(v1 + OBJC_IVAR___MPVoicemailsSearchController_voicemailsTableViewController), "messageAtIndex:", IndexPath.row.getter()))
  {
    v11 = *(v1 + OBJC_IVAR___MPVoicemailsSearchController_voicemailsTableViewController);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v11 tableView:a1 expandRowAtIndexPath:isa animated:1];

    goto LABEL_7;
  }

  type metadata accessor for FTMessage();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC11MobilePhone9FTMessage_ftMessage);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v10 = v9;
      RecentsItem.init(message:callProviderManager:)();
      dispatch thunk of DetailsPresenter.presentDetailsView(for:)();
      swift_unknownObjectRelease();

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_7:
    v13 = [objc_opt_self() shared];
    v14 = OBJC_IVAR___MPVoicemailsSearchController_sectionType;
    swift_beginAccess();
    v15 = *(v2 + v14);
    if (*(v2 + OBJC_IVAR___MPVoicemailsSearchController_searchText + 8))
    {

      v16 = String.count.getter();
    }

    else
    {
      v16 = -1;
    }

    [v13 logSearchResultInteraction:1 cellType:v15 searchLength:v16];

    v17 = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 deselectRowAtIndexPath:v17 animated:0];

    return;
  }

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall VoicemailsSearchController.highlightMatchedText(in:)(UITableViewCell in)
{
  v3 = (*(v1 + OBJC_IVAR___MPVoicemailsSearchController_voicemailsTableViewController) + OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_searchText);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;

    if (String.count.getter() >= 1)
    {
      type metadata accessor for VoicemailSearchViewCell();
      if (swift_dynamicCastClass())
      {
        v6 = in.super.super.super.isa;
        v7._countAndFlagsBits = v5;
        v7._object = v4;
        VoicemailSearchViewCell.highlight(text:)(v7);
      }
    }
  }
}