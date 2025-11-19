uint64_t PASVSSetupFlowController.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  sub_100006FC8(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_targetDevice, &qword_1000259E8, &unk_100017410);
  sub_100006FC8(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_viewDetails, &qword_1000259F0, &unk_100017E90);
  sub_100001E70(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_delegate);
  sub_1000054E8((v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_dtoStatusProvider));
  return v0;
}

uint64_t sub_100001E28(uint64_t *a1, uint64_t *a2)
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

uint64_t PASVSSetupFlowController.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  sub_100006FC8(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_targetDevice, &qword_1000259E8, &unk_100017410);
  sub_100006FC8(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_viewDetails, &qword_1000259F0, &unk_100017E90);
  sub_100001E70(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_delegate);
  sub_1000054E8((v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_dtoStatusProvider));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

Swift::Void __swiftcall PASVSSetupFlowController.initiateClientConnectionIfEligible()()
{
  v1 = v0;
  v2 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "PASVSSetupFlowController initiateClientConnectionIfEligible", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v1;
  sub_100002B58(0, 0, v5, &unk_100017430, v16);
}

uint64_t sub_100002194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v9;
  v4[8] = v8;

  return _swift_task_switch(sub_100002288, v9, v8);
}

uint64_t sub_100002288()
{
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = v0[2];

    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_1000023E4;

    return sub_100015A50();
  }

  else
  {
    v6 = v0[6];
    v7 = v0[2];

    v8 = v0[2];
    v9 = swift_retain_n();
    sub_100006334(v9, v8, sub_1000056DC, v8);

    v10 = v0[5];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1000023E4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = a1;

  v4 = *(v2 + 64);
  v5 = *(v2 + 56);

  return _swift_task_switch(sub_10000250C, v5, v4);
}

uint64_t sub_10000250C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  if (v1)
  {
    v3 = *(v0 + 72);
    swift_unknownObjectRelease();
    v4 = *(v0 + 16);
    v5 = swift_retain_n();
    sub_100006334(v5, v4, sub_1000056DC, v4);
  }

  else
  {
    v6 = *(v0 + 40);
    static PASLogger.viewService.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "PASVSSetupFlowController initiateClientConnectionIfEligible skipping local authentication per delegate", v9, 2u);
    }

    v11 = *(v0 + 32);
    v10 = *(v0 + 40);
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);

    (*(v11 + 8))(v10, v12);
    v14 = [*(v13 + 32) delegate];
    v15 = *(v0 + 72);
    v16 = *(v0 + 16);
    if (v14)
    {
      [v14 activateClientConnection];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      v17 = *(v0 + 72);
      swift_unknownObjectRelease();
    }
  }

  v18 = *(v0 + 40);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1000026E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007348;

  return sub_100002194(a1, v4, v5, v6);
}

BOOL sub_100002798(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  v2 = v1;
  if (v1)
  {
    [v1 activateClientConnection];
    swift_unknownObjectRelease();
  }

  return v2 == 0;
}

uint64_t sub_1000027F4(char a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v28[1] = a4;
  v29 = a3;
  v5 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v28 - v7;
  v9 = sub_100001E28(&qword_100025B58, &qword_1000175B8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = type metadata accessor for PASLocatedExtension();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v16);
  v20 = v28 - v19;
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      v23 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_designatedExtension;
      swift_beginAccess();
      sub_100006F60(v22 + v23, v12, &qword_100025B58, &qword_1000175B8);
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {
        swift_unknownObjectRelease();
        Strong = sub_100006FC8(v12, &qword_100025B58, &qword_1000175B8);
      }

      else
      {
        v28[0] = *(v14 + 32);
        (v28[0])(v20, v12, v13);
        v24 = type metadata accessor for TaskPriority();
        (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
        (*(v14 + 16))(v17, v20, v13);
        type metadata accessor for MainActor();
        v25 = static MainActor.shared.getter();
        v26 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v27 = swift_allocObject();
        *(v27 + 16) = v25;
        *(v27 + 24) = &protocol witness table for MainActor;
        (v28[0])(v27 + v26, v17, v13);
        sub_100002B58(0, 0, v8, &unk_1000175C0, v27);
        swift_unknownObjectRelease();

        Strong = (*(v14 + 8))(v20, v13);
      }
    }

    return v29(Strong);
  }

  return result;
}

uint64_t sub_100002B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100006F60(a3, v27 - v11, &unk_100025EC0, &qword_100017420);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100006FC8(v12, &unk_100025EC0, &qword_100017420);
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

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100006FC8(a3, &unk_100025EC0, &qword_100017420);

      return v25;
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

  sub_100006FC8(a3, &unk_100025EC0, &qword_100017420);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100002E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v42 = a3;
  v43 = a4;
  v11 = type metadata accessor for Locale();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v40 - v21;
  if (a2)
  {
    v40[0] = a5;
    v40[1] = a7;
    v41 = a6;
    static PASLogger.common.getter();
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Local authentication failed with error %{public}@", v25, 0xCu);
      sub_100006FC8(v26, &qword_1000259F8, &qword_100017438);
    }

    (*(v16 + 8))(v20, v15);
    v28 = *(v42 + 32);
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v44 = 0xD00000000000001ELL;
    v45 = 0x800000010001AE00;
    v29._countAndFlagsBits = v43;
    v29._object = v40[0];
    String.append(_:)(v29);
    String.LocalizationValue.init(_:)();
    type metadata accessor for PASVSPrimaryViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = objc_opt_self();
    v32 = [v31 bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v33 = String._bridgeToObjectiveC()();

    String.LocalizationValue.init(_:)();
    v34 = [v31 bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v35 = String._bridgeToObjectiveC()();

    [v28 showErrorWithTitle:v33 message:v35];

    a6 = v41;
  }

  else
  {
    static PASLogger.common.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Local authentication succeeded continue with setup", v38, 2u);
    }

    (*(v16 + 8))(v22, v15);
  }

  return a6(a2 == 0);
}

uint64_t sub_100003300(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

Swift::Void __swiftcall PASVSSetupFlowController.activateClientConnection()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "PASVSSetupFlowController activateClientConnection", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 88);

  v13(sub_100004BD4, v1, ObjectType, v11);
  (*(v11 + 136))(ObjectType, v11);
}

void sub_100003554(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v97 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v92 = &v91 - v11;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v96 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v91 - v18;
  v20 = __chkstk_darwin(v17);
  v95 = &v91 - v21;
  v22 = __chkstk_darwin(v20);
  v93 = &v91 - v23;
  v24 = __chkstk_darwin(v22);
  v94 = &v91 - v25;
  __chkstk_darwin(v24);
  v27 = &v91 - v26;
  static PASLogger.viewService.getter();
  v28 = a1;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v91 = v19;
    v32 = v2;
    v33 = v13;
    v34 = v12;
    v35 = v31;
    v36 = swift_slowAlloc();
    *v35 = 138543362;
    *(v35 + 4) = v28;
    *v36 = v28;
    v37 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "PASVSSetupFlowController SKEventHandler invoked for event: %{public}@", v35, 0xCu);
    sub_100006FC8(v36, &qword_1000259F8, &qword_100017438);

    v12 = v34;
    v13 = v33;
    v2 = v32;
    v19 = v91;
  }

  v38 = *(v13 + 8);
  v38(v27, v12);
  v39 = [v28 eventType];
  if (v39 <= 119)
  {
    if (v39 == 30)
    {
      v64 = v95;
      static PASLogger.viewService.getter();
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "PASVSSetupFlowController: Exiting PASViewService", v67, 2u);
      }

      v63 = v64;
      goto LABEL_29;
    }

    if (v39 == 41)
    {
      static PASLogger.viewService.getter();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Triggering error flow", v42, 2u);
      }

      v38(v19, v12);
      v43 = v2[4];
      String.LocalizationValue.init(_:)();
      type metadata accessor for PASVSPrimaryViewController();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v45 = objc_opt_self();
      v46 = [v45 bundleForClass:ObjCClassFromMetadata];
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v47 = String._bridgeToObjectiveC()();

      String.LocalizationValue.init(_:)();
      v48 = [v45 bundleForClass:ObjCClassFromMetadata];
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v49 = String._bridgeToObjectiveC()();

      [v43 showErrorWithTitle:v47 message:v49];

      return;
    }

    goto LABEL_13;
  }

  if (v39 != 140)
  {
    if (v39 == 120)
    {
      v51 = v2[2];
      v50 = v2[3];
      ObjectType = swift_getObjectType();
      v53 = (*(v50 + 32))(ObjectType, v50);
      v54 = v2[4];
      if (v53 == 3)
      {
        [v54 showPinEntryError];
      }

      else
      {
        [v54 authRequested];
      }

      return;
    }

LABEL_13:
    v55 = v96;
    static PASLogger.viewService.getter();
    v56 = v28;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = v12;
      v61 = swift_slowAlloc();
      *v59 = 138543362;
      *(v59 + 4) = v56;
      *v61 = v56;
      v62 = v56;
      _os_log_impl(&_mh_execute_header, v57, v58, "PASVSSetupFlowController: Got unhandled event %{public}@", v59, 0xCu);
      sub_100006FC8(v61, &qword_1000259F8, &qword_100017438);
      v12 = v60;
    }

    v63 = v55;
    goto LABEL_29;
  }

  v68 = [v28 error];
  if (v68)
  {
    v69 = v68;
    v70 = v94;
    static PASLogger.viewService.getter();
    v71 = v69;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = v12;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138543362;
      v77 = v71;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 4) = v78;
      *v76 = v78;
      _os_log_impl(&_mh_execute_header, v72, v73, "PASVSSetupFlowController: Pairing completed with error: %{public}@", v75, 0xCu);
      sub_100006FC8(v76, &qword_1000259F8, &qword_100017438);

      v12 = v74;
    }

    else
    {
      v77 = v72;
      v72 = v71;
    }

    v63 = v70;
LABEL_29:
    v38(v63, v12);
    return;
  }

  v79 = v93;
  static PASLogger.viewService.getter();
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v80, v81, "PASVSSetupFlowController: Activating Message Session", v82, 2u);
  }

  v38(v79, v12);
  v84 = v2[2];
  v83 = v2[3];
  v85 = swift_getObjectType();
  v86 = (*(v83 + 128))(v85, v83);
  if (v86)
  {
    v87 = v86;
    v88 = type metadata accessor for TaskPriority();
    v89 = v92;
    (*(*(v88 - 8) + 56))(v92, 1, 1, v88);
    v90 = swift_allocObject();
    v90[2] = 0;
    v90[3] = 0;
    v90[4] = v2;
    v90[5] = v87;

    sub_100002B58(0, 0, v89, &unk_100017578, v90);
  }
}

Swift::Void __swiftcall PASVSSetupFlowController.handleScannedCode(_:)(Swift::String a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(SKAuthenticationResponseEvent);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithPassword:v8];

  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v11 + 144))(v9, ObjectType, v11);
  static PASLogger.viewService.getter();
  v13 = v9;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 141558274;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "PASVSSetupFlowController post pairing code: %{mask.hash}@", v16, 0x16u);
    sub_100006FC8(v17, &qword_1000259F8, &qword_100017438);
  }

  else
  {
    v18 = v14;
    v14 = v13;
  }

  (*(v3 + 8))(v6, v2);
}

Swift::Void __swiftcall PASVSSetupFlowController.enableManualPairing()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "PASVSSetupFlowController manual pairing mode enabled...", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v11 + 40))(3, ObjectType, v11);
  [*(v1 + 32) showManualPinEntry];
}

Swift::Void __swiftcall PASVSSetupFlowController.invalidateClientConnection()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "PASVSSetupFlowController Connection ended, invalidate server", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 16);
  v10 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v10 + 152))(ObjectType, v10);
}

uint64_t sub_1000044D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_100004518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return _swift_task_switch(sub_100004538, 0, 0);
}

uint64_t sub_100004538()
{
  v1 = v0[19];
  v2 = *(v0[18] + 32);
  v0[2] = v0;
  v0[3] = sub_10000465C;
  v3 = swift_continuation_init();
  v0[17] = sub_100001E28(&qword_100025B38, &qword_100017580);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100004750;
  v0[13] = &unk_100020D30;
  v0[14] = v3;
  [v2 authCompleted:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000465C()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10000473C, 0, 0);
}

uint64_t sub_100004750(uint64_t a1)
{
  v1 = *sub_100006DEC((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100004798(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100004810(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100004890@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000048D4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100004910()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100004964()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000049F4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004A7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100004AC4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100004AF0(uint64_t a1)
{
  v2 = sub_1000072CC(&qword_100025B90);
  v3 = sub_1000072CC(&qword_100025B98);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004B88(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100004BD8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004CD0;

  return v7(a1);
}

uint64_t sub_100004CD0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

_BYTE **sub_100004DC8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100004DD8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void *sub_100004E4C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100004EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100004FD0;

  return v11(a1, a2, a3);
}

uint64_t sub_100004FD0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t type metadata accessor for PASVSSetupFlowController()
{
  result = qword_100025A28;
  if (!qword_100025A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005134()
{
  sub_10000520C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000520C()
{
  if (!qword_100025DE0)
  {
    type metadata accessor for PASDevice();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100025DE0);
    }
  }
}

uint64_t sub_100005264()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000052AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000536C;

  return sub_100004518(a1, v4, v5, v7, v6);
}

uint64_t sub_10000536C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100005470(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000054E8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005534()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000556C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007348;

  return sub_100004BD8(a1, v5);
}

uint64_t sub_100005624(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000536C;

  return sub_100004BD8(a1, v5);
}

uint64_t sub_1000056E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001E28(&qword_100025B50, &qword_1000175B0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_100006EA0((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_100006F04(v24, &v37);
        sub_100005470(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_100006EA0(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

_OWORD *sub_10000599C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100015328(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100005B64();
      goto LABEL_7;
    }

    sub_1000056E4(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_100015328(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100006F04(a2, v22);
      return sub_100005AE8(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_1000054E8(v17);

  return sub_100006EA0(a1, v17);
}

_OWORD *sub_100005AE8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100006EA0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_100005B64()
{
  v1 = v0;
  sub_100001E28(&qword_100025B50, &qword_1000175B0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100006F04(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100005470(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100006EA0(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_100005D08(uint64_t a1, void *a2, uint64_t a3)
{
  v40 = type metadata accessor for Logger();
  v39 = *(v40 - 8);
  v6 = *(v39 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = type metadata accessor for Locale();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  sub_100001E28(&qword_100025B40, &qword_1000175A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100017400;
  LODWORD(v45) = 1037;
  AnyHashable.init<A>(_:)();
  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v45 = 0xD00000000000001DLL;
  v46 = 0x800000010001AE40;
  v38._countAndFlagsBits = a1;
  v17._countAndFlagsBits = a1;
  v38._object = a2;
  v17._object = a2;
  String.append(_:)(v17);
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  v21 = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v21;
  *(inited + 80) = v22;
  v23 = sub_10000FB30(inited);
  swift_setDeallocating();
  sub_100006FC8(inited + 32, &qword_100025B48, &qword_1000175A8);
  v24 = [objc_opt_self() sharedInstance];
  v25 = [v24 isFeatureEnabled];

  if (v25)
  {
    LODWORD(v43) = 1061;
    AnyHashable.init<A>(_:)();
    v44 = &type metadata for Bool;
    LOBYTE(v43) = 1;
    sub_100006EA0(&v43, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v23;
    sub_10000599C(v42, &v45, isUniquelyReferenced_nonNull_native);
    sub_100006EB0(&v45);
    v23 = v41;
  }

  if (a3 == 2)
  {
    static PASLogger.viewService.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "PASVSSetupFlowController Biometric type is face id", v36, 2u);
    }

    (*(v39 + 8))(v9, v40);
  }

  else if (a3 == 1)
  {
    static PASLogger.viewService.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "PASVSSetupFlowController Biometric type is touch id", v29, 2u);
    }

    (*(v39 + 8))(v11, v40);
    LODWORD(v43) = 1030;
    AnyHashable.init<A>(_:)();
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    *&v43 = 0xD00000000000001BLL;
    *(&v43 + 1) = 0x800000010001AE60;
    String.append(_:)(v38);
    String.LocalizationValue.init(_:)();
    v30 = [v19 bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    v31 = String.init(localized:table:bundle:locale:comment:)();
    v44 = &type metadata for String;
    *&v43 = v31;
    *(&v43 + 1) = v32;
    sub_100006EA0(&v43, v42);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v23;
    sub_10000599C(v42, &v45, v33);
    sub_100006EB0(&v45);
    return v41;
  }

  return v23;
}

void sub_100006334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a1;
  v7 = type metadata accessor for PASDeviceClass();
  v82 = *(v7 - 1);
  v83 = v7;
  v8 = *(v82 + 64);
  __chkstk_darwin(v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v84 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v86 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PASDevice();
  v85 = *(v17 - 8);
  v18 = *(v85 + 64);
  __chkstk_darwin(v17);
  v81 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v80 - v26;
  v28 = swift_allocObject();
  v28[2] = a2;
  v28[3] = a3;
  v88 = v28;
  v28[4] = a4;
  v29 = objc_allocWithZone(LAContext);

  v30 = [v29 init];
  v31 = objc_opt_self();
  v32 = [v31 sharedInstance];
  LODWORD(a2) = [v32 isFeatureEnabled];

  if (a2)
  {
    v33 = 1025;
  }

  else
  {
    v33 = 2;
  }

  aBlock = 0;
  v87 = v30;
  v34 = [v30 canEvaluatePolicy:v33 error:&aBlock];
  v35 = aBlock;
  if (!v34 || aBlock)
  {
    v47 = aBlock;
    static PASLogger.common.getter();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138543362;
      *(v50 + 4) = v47;
      *v51 = v35;
      v52 = v47;
      _os_log_impl(&_mh_execute_header, v48, v49, "Local authentication failed with error %{public}@", v50, 0xCu);
      sub_100006FC8(v51, &qword_1000259F8, &qword_100017438);
    }

    (*(v21 + 8))(v25, v20);
    v53 = OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_targetDevice;
    v54 = v89;
    swift_beginAccess();
    v55 = v85;
    v56 = (*(v85 + 48))(v54 + v53, 1, v17);
    v83 = v47;
    if (v56)
    {
      v57 = 0xED00005343495254;
      v58 = 0x454D4F49425F4F4ELL;
    }

    else
    {
      v59 = v81;
      (*(v55 + 16))(v81, v54 + v53, v17);
      v58 = PASDevice.deviceBiometricKey.getter();
      v57 = v60;
      (*(v55 + 8))(v59, v17);
    }

    aBlock = 0;
    v91 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    aBlock = 0xD000000000000026;
    v91 = 0x800000010001AD70;
    v61._countAndFlagsBits = v58;
    v61._object = v57;
    String.append(_:)(v61);

    String.LocalizationValue.init(_:)();
    type metadata accessor for PASVSPrimaryViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v63 = objc_opt_self();
    v64 = [v63 bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_100006F60(v54 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_viewDetails, &aBlock, &qword_1000259F0, &unk_100017E90);
    v65 = v93;
    if (v93)
    {
      v66 = v94;
      sub_100006DEC(&aBlock, v93);
      (*(v66 + 1))(v65, v66);
      v68 = v67;
      sub_1000054E8(&aBlock);
      if (v68)
      {
      }
    }

    else
    {
      sub_100006FC8(&aBlock, &qword_1000259F0, &unk_100017E90);
    }

    v69 = *(v54 + 32);
    String.LocalizationValue.init(_:)();
    v70 = [v63 bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v71 = String._bridgeToObjectiveC()();

    isa = String._bridgeToObjectiveC()();

    [v69 showErrorWithTitle:v71 message:isa];
  }

  else
  {
    static PASLogger.common.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67240192;
      *(v38 + 4) = 1;
      _os_log_impl(&_mh_execute_header, v36, v37, "PASBiometryEvaluator result: %{BOOL,public}d", v38, 8u);
    }

    (*(v21 + 8))(v27, v20);
    v39 = OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_targetDevice;
    v40 = v89;
    swift_beginAccess();
    v41 = v85;
    if ((*(v85 + 48))(v40 + v39, 1, v17) || (v73 = v81, (*(v41 + 16))(v81, v40 + v39, v17), v44 = PASDevice.deviceClassCodeName.getter(), v46 = v74, (*(v41 + 8))(v73, v17), !v46))
    {
      v43 = v82;
      v42 = v83;
      (*(v82 + 104))(v10, enum case for PASDeviceClass.unknown(_:), v83);
      v44 = PASDeviceClass.rawValue.getter();
      v46 = v45;
      (*(v43 + 8))(v10, v42);
    }

    v75 = [v31 sharedInstance];
    v76 = [v75 isFeatureEnabled];

    if (v76)
    {
      v77 = 1025;
    }

    else
    {
      v77 = 2;
    }

    v71 = v87;
    sub_100005D08(v44, v46, [v87 biometryType]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v78 = swift_allocObject();
    v78[2] = v40;
    v78[3] = v44;
    v78[4] = v46;
    v78[5] = sub_100006DE0;
    v78[6] = v88;
    v94 = sub_100006E78;
    v95 = v78;
    aBlock = _NSConcreteStackBlock;
    v91 = 1107296256;
    v92 = sub_100003300;
    v93 = &unk_100020DF8;
    v79 = _Block_copy(&aBlock);

    [v71 evaluatePolicy:v77 options:isa reply:v79];
    _Block_release(v79);
  }
}

uint64_t sub_100006D98(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return _swift_deallocObject(v1, 40, 7);
}

void *sub_100006DEC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100006E30()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100006E88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_100006EA0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100006F60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001E28(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006FC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001E28(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007028()
{
  v1 = type metadata accessor for PASLocatedExtension();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000070EC(uint64_t a1)
{
  v4 = *(type metadata accessor for PASLocatedExtension() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007348;

  return sub_1000141F4(a1, v6, v7, v1 + v5);
}

void sub_100007218(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000072CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000073CC()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10000748C, 0, 0);
}

uint64_t sub_10000748C()
{
  v1 = v0[2];
  v2 = v1[10];
  v3 = v1[11];
  sub_100006DEC(v1 + 7, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    v4 = v0[5];
    static PASLogger.viewService.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "PASVSProxCardValidator Suppressing Proximity Apple ID Sign In prox card - Device is in lost mode", v7, 2u);
    }

    v9 = v0[4];
    v8 = v0[5];
    v10 = v0[3];

    (*(v9 + 8))(v8, v10);
    v11 = v0[5];

    v12 = v0[1];

    return v12(0, 0, 0);
  }

  else
  {
    v14 = swift_task_alloc();
    v0[6] = v14;
    *v14 = v0;
    v14[1] = sub_10000763C;
    v15 = v0[2];

    return sub_1000078D8();
  }
}

uint64_t sub_10000763C(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_10000773C, 0, 0);
}

uint64_t sub_10000773C()
{
  v1 = v0[7];
  if (!v1)
  {
    v16 = v0[5];

    v17 = 0;
    v9 = 0;
    v7 = 0;
    v15 = 0;
    goto LABEL_17;
  }

  v2 = *(v0[2] + 136);
  if (v2)
  {
    v3 = v2;
    v4 = PASExtensionManifest.isAccountPickerAvailable.getter();

    if (v4)
    {
      v5 = [v1 username];
      if (v5)
      {
        v6 = v5;
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;
      }

      else
      {

        v7 = 0;
        v9 = 0;
      }

      v18 = v0[5];

      goto LABEL_15;
    }
  }

  v10 = sub_100007FE8(v1);
  v11 = [v1 username];
  v12 = v0[5];
  if (!v11)
  {

    v9 = 0;
    if (v10 != 4)
    {
      v15 = 0;
      v17 = 1;
      v7 = 0;
      goto LABEL_17;
    }

    v7 = 0;
    goto LABEL_15;
  }

  v13 = v11;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v14;

  if (v10 == 4)
  {
LABEL_15:
    v15 = 256;
    goto LABEL_16;
  }

  v15 = 0;
LABEL_16:
  v17 = 1;
LABEL_17:
  v19 = v0[1];

  return v19(v15 | v17, v7, v9);
}

uint64_t sub_1000078D8()
{
  v1[3] = v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000079A4, 0, 0);
}

uint64_t sub_1000079A4()
{
  v1 = *(v0 + 24);
  v2 = v1[5];
  v3 = v1[6];
  sub_100006DEC(v1 + 2, v2);
  v4 = async function pointer to dispatch thunk of ACAccountStoreProtocol.aa_primaryAppleAccount()[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_100007A5C;

  return dispatch thunk of ACAccountStoreProtocol.aa_primaryAppleAccount()(v2, v3);
}

uint64_t sub_100007A5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_100007CA8;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_100007B84;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100007B84()
{
  v1 = v0[10];
  if (!v1)
  {
    v2 = v0[7];
    static PASLogger.viewService.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[7];
    v7 = v0[4];
    v8 = v0[5];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "PASVSProxCardValidator Suppressing Proximity Apple ID Sign In prox card - No primary account found", v9, 2u);
    }

    (*(v8 + 8))(v6, v7);
  }

  v11 = v0[6];
  v10 = v0[7];

  v12 = v0[1];

  return v12(v1);
}

uint64_t sub_100007CA8()
{
  v23 = v0;
  v1 = v0[9];
  v2 = v0[6];
  static PASLogger.viewService.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = v0[5];
    v21 = v0[6];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_100001E28(&qword_100025D18, &unk_100017958);
    v10 = String.init<A>(describing:)();
    v12 = sub_100014D80(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "PASVSProxCardValidator, failed trying to find local account %{public}s", v8, 0xCu);
    sub_1000054E8(v9);

    (*(v6 + 8))(v21, v7);
  }

  else
  {
    v13 = v0[9];
    v15 = v0[5];
    v14 = v0[6];
    v16 = v0[4];

    (*(v15 + 8))(v14, v16);
  }

  v18 = v0[6];
  v17 = v0[7];

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_100007EA0()
{
  sub_1000054E8((v0 + 16));
  sub_1000054E8((v0 + 56));
  sub_1000054E8((v0 + 96));

  return _swift_deallocClassInstance(v0, 144, 7);
}

__n128 sub_100007F14(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100007F28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100007F84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id sub_100007FE8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  v4 = [v3 altDSIDForAccount:a1];

  if (!v4)
  {
    return 0;
  }

  v5 = [v2 sharedInstance];
  v6 = [v5 authKitAccountWithAltDSID:v4];

  if (!v6)
  {
    return 0;
  }

  v7 = [v2 sharedInstance];
  v8 = [v7 securityLevelForAccount:v6];

  return v8;
}

uint64_t sub_100008110@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100001E28(&qword_100025D30, &qword_1000179E0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v26[-v8];
  v10 = Image.init(systemName:)();
  v11 = (v9 + *(sub_100001E28(&qword_100025D38, &qword_1000179E8) + 36));
  v12 = *(sub_100001E28(&qword_100025D40, &qword_1000179F0) + 28);
  v13 = enum case for Image.Scale.large(_:);
  v14 = type metadata accessor for Image.Scale();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = swift_getKeyPath();
  *v9 = v10;
  v15 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  v17 = (v9 + *(v3 + 44));
  *v17 = KeyPath;
  v17[1] = v15;
  LocalizedStringKey.init(stringLiteral:)();
  v18 = Text.init(_:tableName:bundle:comment:)();
  v20 = v19;
  LOBYTE(v13) = v21;
  v23 = v22;
  sub_10000856C(v9, v7);
  sub_10000856C(v7, a1);
  v24 = a1 + *(sub_100001E28(&qword_100025D48, &qword_100017A58) + 48);
  *v24 = v18;
  *(v24 + 8) = v20;
  *(v24 + 16) = v13 & 1;
  *(v24 + 24) = v23;
  sub_1000085DC(v18, v20, v13 & 1);

  sub_1000085EC(v9);
  sub_100008654(v18, v20, v13 & 1);

  return sub_1000085EC(v7);
}

double sub_100008394@<D0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_100001E28(&qword_100025D20, &qword_1000179D0);
  sub_100008110(a1 + *(v2 + 44));
  v3 = static Edge.Set.all.getter();
  v4 = a1 + *(sub_100001E28(&qword_100025D28, &qword_1000179D8) + 36);
  *v4 = v3;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 1;
  return result;
}

uint64_t sub_100008448(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

uint64_t sub_100008514@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100008540(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_10000856C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001E28(&qword_100025D30, &qword_1000179E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000085DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000085EC(uint64_t a1)
{
  v2 = sub_100001E28(&qword_100025D30, &qword_1000179E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008654(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100008668()
{
  result = qword_100025D50;
  if (!qword_100025D50)
  {
    sub_1000086F4(&qword_100025D28, &qword_1000179D8);
    sub_10000873C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025D50);
  }

  return result;
}

uint64_t sub_1000086F4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000873C()
{
  result = qword_100025D58;
  if (!qword_100025D58)
  {
    sub_1000086F4(&unk_100025D60, &unk_100017A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025D58);
  }

  return result;
}

NSString sub_1000087B4()
{
  result = String._bridgeToObjectiveC()();
  qword_100026200 = result;
  return result;
}

NSString sub_1000087EC()
{
  result = String._bridgeToObjectiveC()();
  qword_100026208 = result;
  return result;
}

id sub_1000088F8()
{
  v1 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController;
  v2 = *(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController);
  }

  else
  {
    v4 = [objc_allocWithZone(PRXCardContentViewController) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10000896C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_presentingViewController] = 0;
  *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate] = 0;
  *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_sourceViewPresenter] = 0;
  v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_hasEligibleAccountForProxSetup] = 1;
  v3 = &v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_accountUserName];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetDevice;
  v5 = type metadata accessor for PASDevice();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetAccountOptionsType;
  v7 = type metadata accessor for PASTargetAccountOptionsType();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_proxyDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController] = 0;
  *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_pinEntryController] = 0;
  sub_100006F60(a1, &v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_viewDetails], &qword_100025E50, &qword_100017B68);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PASVSSetupEventPresenter();
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_100006FC8(a1, &qword_100025E50, &qword_100017B68);
  return v8;
}

void sub_100008B04()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v89 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v88 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PASDeviceClass();
  v97 = *(v8 - 8);
  v9 = *(v97 + 64);
  __chkstk_darwin(v8);
  v91 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for PASDevice();
  v96 = *(v98 - 8);
  v11 = *(v96 + 64);
  __chkstk_darwin(v98);
  v90 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100001E28(&qword_1000259E8, &unk_100017410);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v94 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v86 - v17;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "PASVSSetupEventPresenter: About to present prox card", v26, 2u);
  }

  (*(v20 + 8))(v23, v19);
  v27 = sub_1000088F8();
  [v27 setDismissalType:1];

  sub_1000099BC();
  v99 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController;
  v28 = *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController];
  v29 = String._bridgeToObjectiveC()();
  v105 = sub_100009744;
  v106 = 0;
  aBlock = _NSConcreteStackBlock;
  v102 = 1107296256;
  v103 = sub_10000E748;
  v104 = &unk_100021108;
  v30 = _Block_copy(&aBlock);
  v87 = objc_opt_self();
  v31 = [v87 actionWithTitle:v29 style:0 handler:v30];

  _Block_release(v30);

  [v28 setDismissButtonAction:v31];

  v32 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetDevice;
  swift_beginAccess();
  sub_100006F60(&v1[v32], v18, &qword_1000259E8, &unk_100017410);
  v33 = v96;
  v34 = v98;
  v93 = *(v96 + 48);
  v35 = v93(v18, 1, v98);
  v95 = v8;
  if (v35)
  {
    sub_100006FC8(v18, &qword_1000259E8, &unk_100017410);
    v104 = v8;
    v105 = &protocol witness table for PASDeviceClass;
    v36 = sub_10000DEC8(&aBlock);
    (*(v97 + 104))(v36, enum case for PASDeviceClass.unknown(_:), v8);
  }

  else
  {
    v37 = v90;
    (*(v33 + 16))(v90, v18, v34);
    sub_100006FC8(v18, &qword_1000259E8, &unk_100017410);
    PASDevice.deviceClass.getter();
    (*(v33 + 8))(v37, v34);
    sub_10000DF7C(&v100, &aBlock);
  }

  sub_10000D4B8(&aBlock);
  v39 = v38;
  sub_1000054E8(&aBlock);
  v40 = v99;
  v41 = [*&v1[v99] contentView];
  [v41 addSubview:v39];

  v42 = [*&v1[v40] contentView];
  v43 = [v42 mainContentGuide];

  v92 = objc_opt_self();
  sub_100001E28(&qword_100025EA0, &qword_100017B90);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100017A70;
  v45 = [v39 topAnchor];
  v46 = [v43 topAnchor];
  v47 = [v45 constraintGreaterThanOrEqualToAnchor:v46];

  *(v44 + 32) = v47;
  v48 = [v39 bottomAnchor];
  v49 = [v43 bottomAnchor];
  v50 = [v48 constraintLessThanOrEqualToAnchor:v49];

  *(v44 + 40) = v50;
  v51 = [v39 centerXAnchor];
  v52 = [v43 centerXAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v44 + 48) = v53;
  v54 = [v39 centerYAnchor];
  v55 = [v43 centerYAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v44 + 56) = v56;
  sub_10000DF2C(0, &qword_100025EA8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v92 activateConstraints:isa];

  v58 = v94;
  sub_100006F60(&v1[v32], v94, &qword_1000259E8, &unk_100017410);
  v59 = v98;
  if (v93(v58, 1, v98))
  {
    sub_100006FC8(v58, &qword_1000259E8, &unk_100017410);
    v60 = v95;
LABEL_8:
    v61 = v97;
    v62 = v91;
    (*(v97 + 104))(v91, enum case for PASDeviceClass.unknown(_:), v60);
    v63 = PASDeviceClass.rawValue.getter();
    v65 = v64;
    (*(v61 + 8))(v62, v60);

    goto LABEL_10;
  }

  v66 = v59;
  v67 = v96;
  v68 = v90;
  (*(v96 + 16))(v90, v58, v66);
  sub_100006FC8(v58, &qword_1000259E8, &unk_100017410);
  v63 = PASDevice.deviceClassCodeName.getter();
  v65 = v69;
  (*(v67 + 8))(v68, v66);
  v60 = v95;
  if (!v65)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_hasEligibleAccountForProxSetup] == 1)
  {
    sub_10000A22C(v63, v65);

    sub_10000A954();
    v70 = *&v1[v99];
    v71 = swift_allocObject();
    *(v71 + 16) = v1;
    v72 = v70;
    v73 = v1;
    v74 = String._bridgeToObjectiveC()();

    v105 = sub_10000DF74;
    v106 = v71;
    aBlock = _NSConcreteStackBlock;
    v102 = 1107296256;
    v103 = sub_10000E748;
    v104 = &unk_100021158;
    v75 = _Block_copy(&aBlock);
    v76 = [v87 actionWithTitle:v74 style:0 handler:v75];

    _Block_release(v75);
  }

  else
  {
    v77 = *&v1[v99];
    aBlock = 0;
    v102 = 0xE000000000000000;
    v72 = v77;
    _StringGuts.grow(_:)(39);

    aBlock = 0xD000000000000025;
    v102 = 0x800000010001B4F0;
    v78._countAndFlagsBits = v63;
    v78._object = v65;
    String.append(_:)(v78);

    String.LocalizationValue.init(_:)();
    type metadata accessor for PASVSPrimaryViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v80 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v76 = String._bridgeToObjectiveC()();

    [v72 setSubtitle:v76];
  }

  v81 = *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_presentingViewController];
  if (v81)
  {
    v82 = *&v1[v99];
    v83 = v81;
    v84 = v82;
    v85 = [v83 presentProxCardFlowWithDelegate:v1 initialViewController:v84];

    v39 = v43;
    v43 = v85;
  }
}

void sub_100009758(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1000088F8();
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  [v7 showActivityIndicatorWithStatus:v10];

  v11 = *(a2 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate);
  if (v11)
  {
    [v11 initiateClientConnectionIfEligible];
  }

  sub_10000DF2C(0, &qword_100025E58, NSDistributedNotificationCenter_ptr);
  v12 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_1000259D0 != -1)
  {
    swift_once();
  }

  [v12 postNotificationName:qword_100026200 object:0];
}

void sub_1000099BC()
{
  v1 = v0;
  v2 = type metadata accessor for PASDeviceClass();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  __chkstk_darwin(v2);
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PASDevice();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  __chkstk_darwin(v5);
  v61 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001E28(&qword_1000259E8, &unk_100017410);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v66 = &v61 - v10;
  v11 = type metadata accessor for Locale();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v70 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v69 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PASTargetAccountOptionsType();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v62 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100001E28(&qword_100025E80, &unk_100017EA0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v61 - v24;
  v26 = sub_100001E28(&qword_100025E88, &unk_100017B80);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v61 - v31;
  v33 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetAccountOptionsType;
  swift_beginAccess();
  (*(v18 + 104))(v32, enum case for PASTargetAccountOptionsType.child(_:), v17);
  (*(v18 + 56))(v32, 0, 1, v17);
  v34 = *(v22 + 56);
  v35 = v1 + v33;
  v36 = v1;
  sub_100006F60(v35, v25, &qword_100025E88, &unk_100017B80);
  sub_100006F60(v32, &v25[v34], &qword_100025E88, &unk_100017B80);
  v37 = *(v18 + 48);
  if (v37(v25, 1, v17) != 1)
  {
    sub_100006F60(v25, v30, &qword_100025E88, &unk_100017B80);
    if (v37(&v25[v34], 1, v17) != 1)
    {
      v50 = v62;
      (*(v18 + 32))(v62, &v25[v34], v17);
      sub_10000DE80(&qword_100025E90, &type metadata accessor for PASTargetAccountOptionsType);
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *(v18 + 8);
      v52(v50, v17);
      sub_100006FC8(v32, &qword_100025E88, &unk_100017B80);
      v52(v30, v17);
      sub_100006FC8(v25, &qword_100025E88, &unk_100017B80);
      if (v51)
      {
        goto LABEL_11;
      }

LABEL_7:
      v38 = sub_1000088F8();
      v71 = 0;
      v72 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v73 = 0xD000000000000017;
      v74 = 0x800000010001B4B0;
      v39 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetDevice;
      swift_beginAccess();
      v40 = v36 + v39;
      v41 = v66;
      sub_100006F60(v40, v66, &qword_1000259E8, &unk_100017410);
      v43 = v67;
      v42 = v68;
      if ((*(v67 + 48))(v41, 1, v68))
      {
        sub_100006FC8(v41, &qword_1000259E8, &unk_100017410);
      }

      else
      {
        v55 = v61;
        (*(v43 + 16))(v61, v41, v42);
        sub_100006FC8(v41, &qword_1000259E8, &unk_100017410);
        v47 = PASDevice.deviceClassCodeName.getter();
        v49 = v56;
        (*(v43 + 8))(v55, v42);
        if (v49)
        {
          goto LABEL_13;
        }
      }

      v44 = v63;
      v45 = v64;
      v46 = v65;
      (*(v64 + 104))(v63, enum case for PASDeviceClass.unknown(_:), v65);
      v47 = PASDeviceClass.rawValue.getter();
      v49 = v48;
      (*(v45 + 8))(v44, v46);

LABEL_13:
      v57._countAndFlagsBits = v47;
      v57._object = v49;
      String.append(_:)(v57);

      String.LocalizationValue.init(_:)();
      type metadata accessor for PASVSPrimaryViewController();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v54 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      goto LABEL_14;
    }

    sub_100006FC8(v32, &qword_100025E88, &unk_100017B80);
    (*(v18 + 8))(v30, v17);
LABEL_6:
    sub_100006FC8(v25, &qword_100025E80, &unk_100017EA0);
    goto LABEL_7;
  }

  sub_100006FC8(v32, &qword_100025E88, &unk_100017B80);
  if (v37(&v25[v34], 1, v17) != 1)
  {
    goto LABEL_6;
  }

  sub_100006FC8(v25, &qword_100025E88, &unk_100017B80);
LABEL_11:
  v38 = sub_1000088F8();
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController();
  v53 = swift_getObjCClassFromMetadata();
  v54 = [objc_opt_self() bundleForClass:v53];
LABEL_14:
  v59 = v54;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v60 = String._bridgeToObjectiveC()();

  [v38 setTitle:v60];
}

void sub_10000A22C(uint64_t a1, void *a2)
{
  v3 = v2;
  v51._countAndFlagsBits = a1;
  v51._object = a2;
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PASTargetAccountOptionsType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v50 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001E28(&qword_100025E80, &unk_100017EA0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  v19 = sub_100001E28(&qword_100025E88, &unk_100017B80);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v50 - v24;
  v26 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetAccountOptionsType;
  swift_beginAccess();
  (*(v11 + 104))(v25, enum case for PASTargetAccountOptionsType.child(_:), v10);
  (*(v11 + 56))(v25, 0, 1, v10);
  v27 = *(v15 + 56);
  sub_100006F60(v3 + v26, v18, &qword_100025E88, &unk_100017B80);
  sub_100006F60(v25, &v18[v27], &qword_100025E88, &unk_100017B80);
  v28 = *(v11 + 48);
  if (v28(v18, 1, v10) != 1)
  {
    sub_100006F60(v18, v23, &qword_100025E88, &unk_100017B80);
    if (v28(&v18[v27], 1, v10) != 1)
    {
      v35 = &v18[v27];
      v36 = v50;
      (*(v11 + 32))(v50, v35, v10);
      sub_10000DE80(&qword_100025E90, &type metadata accessor for PASTargetAccountOptionsType);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v11 + 8);
      v38(v36, v10);
      sub_100006FC8(v25, &qword_100025E88, &unk_100017B80);
      v38(v23, v10);
      sub_100006FC8(v18, &qword_100025E88, &unk_100017B80);
      if (v37)
      {
        goto LABEL_11;
      }

LABEL_7:
      v29 = sub_1000088F8();
      sub_100006F60(v3 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_viewDetails, &v54, &qword_100025E50, &qword_100017B68);
      v30 = v56;
      if (v56)
      {
        v31 = v57;
        sub_100006DEC(&v54, v56);
        v32 = (*(v31 + 8))(v30, v31);
        v34 = v33;
        sub_1000054E8(&v54);
        if (v34)
        {
LABEL_14:
          v45 = PASBoldAppleIDPlaceholder.getter();
          v47 = v46;
          v48 = *(v3 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_accountUserName);
          v49 = *(v3 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_accountUserName + 8);

          v41 = sub_10000F62C(v45, v47, v48, v49, UIFontTextStyleSubheadline, v32, v34);

          [v29 setAttributedSubtitle:v41];
          goto LABEL_15;
        }
      }

      else
      {
        sub_100006FC8(&v54, &qword_100025E50, &qword_100017B68);
      }

      v54 = 0;
      v55 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v54 = 0xD00000000000001ALL;
      v55 = 0x800000010001B470;
      String.append(_:)(v51);
      String.LocalizationValue.init(_:)();
      type metadata accessor for PASVSPrimaryViewController();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v43 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      static Locale.current.getter();
      v32 = String.init(localized:table:bundle:locale:comment:)();
      v34 = v44;

      goto LABEL_14;
    }

    sub_100006FC8(v25, &qword_100025E88, &unk_100017B80);
    (*(v11 + 8))(v23, v10);
LABEL_6:
    sub_100006FC8(v18, &qword_100025E80, &unk_100017EA0);
    goto LABEL_7;
  }

  sub_100006FC8(v25, &qword_100025E88, &unk_100017B80);
  if (v28(&v18[v27], 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_100006FC8(v18, &qword_100025E88, &unk_100017B80);
LABEL_11:
  v29 = sub_1000088F8();
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController();
  v39 = swift_getObjCClassFromMetadata();
  v40 = [objc_opt_self() bundleForClass:v39];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v41 = String._bridgeToObjectiveC()();

  [v29 setSubtitle:v41];
LABEL_15:
}

uint64_t sub_10000A954()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PASTargetAccountOptionsType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001E28(&qword_100025E80, &unk_100017EA0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = sub_100001E28(&qword_100025E88, &unk_100017B80);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v31 - v21;
  v23 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetAccountOptionsType;
  swift_beginAccess();
  (*(v8 + 104))(v22, enum case for PASTargetAccountOptionsType.child(_:), v7);
  (*(v8 + 56))(v22, 0, 1, v7);
  v24 = *(v12 + 56);
  sub_100006F60(v0 + v23, v15, &qword_100025E88, &unk_100017B80);
  sub_100006F60(v22, &v15[v24], &qword_100025E88, &unk_100017B80);
  v25 = *(v8 + 48);
  if (v25(v15, 1, v7) != 1)
  {
    sub_100006F60(v15, v20, &qword_100025E88, &unk_100017B80);
    if (v25(&v15[v24], 1, v7) != 1)
    {
      v26 = v32;
      (*(v8 + 32))(v32, &v15[v24], v7);
      sub_10000DE80(&qword_100025E90, &type metadata accessor for PASTargetAccountOptionsType);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v8 + 8);
      v27(v26, v7);
      sub_100006FC8(v22, &qword_100025E88, &unk_100017B80);
      v27(v20, v7);
      sub_100006FC8(v15, &qword_100025E88, &unk_100017B80);
      goto LABEL_8;
    }

    sub_100006FC8(v22, &qword_100025E88, &unk_100017B80);
    (*(v8 + 8))(v20, v7);
    goto LABEL_6;
  }

  sub_100006FC8(v22, &qword_100025E88, &unk_100017B80);
  if (v25(&v15[v24], 1, v7) != 1)
  {
LABEL_6:
    sub_100006FC8(v15, &qword_100025E80, &unk_100017EA0);
    goto LABEL_8;
  }

  sub_100006FC8(v15, &qword_100025E88, &unk_100017B80);
LABEL_8:
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

void sub_10000AEBC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "PASVSSetupEventPresenter: Pairing Requested", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = objc_allocWithZone(type metadata accessor for PASVSScannerCardViewController());
  v11 = sub_10000E7B0();
  v12 = *&v11[OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_delegate];
  *&v11[OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_delegate] = *(v1 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v13 = sub_1000088F8();
  v14 = [v13 navigationController];

  if (v14)
  {
    [v14 pushViewController:v11 animated:1];
  }
}

void sub_10000B0D4()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = [objc_allocWithZone(PRXPasscodeEntryViewController) init];
  [v5 setNumberOfDigits:6];
  v6 = v5;
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  [v6 setTitle:v10];

  v11 = v6;
  String.LocalizationValue.init(_:)();
  v12 = [v8 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v13 = String._bridgeToObjectiveC()();

  [v11 setSubtitle:v13];

  [v11 setDismissalType:1];
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v0;
  v15 = v11;
  v16 = v0;
  v17 = String._bridgeToObjectiveC()();
  v30 = sub_10000DE38;
  v31 = v14;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_10000E748;
  v29 = &unk_100021090;
  v18 = _Block_copy(&aBlock);
  v19 = [objc_opt_self() actionWithTitle:v17 style:0 handler:v18];

  _Block_release(v18);

  [v15 setDismissButtonAction:v19];

  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  v30 = sub_10000DE78;
  v31 = v20;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_10000B638;
  v29 = &unk_1000210E0;
  v21 = _Block_copy(&aBlock);
  v22 = v16;

  [v15 setTextEntryCompletionHandler:v21];
  _Block_release(v21);
  v23 = sub_1000088F8();
  v24 = [v23 navigationController];

  if (v24)
  {
    [v24 pushViewController:v15 animated:1];
  }

  v25 = *&v22[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_pinEntryController];
  *&v22[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_pinEntryController] = v15;
}

void sub_10000B540(int a1, id a2, uint64_t a3)
{
  v4 = [a2 passcodeEntryView];
  [v4 endEditing:1];

  v5 = *(a3 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate);
  if (v5)
  {
    [v5 invalidateClientConnection];
  }

  exit(1);
}

void sub_10000B5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate);
  if (v3)
  {
    v4 = *(a3 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate);
    swift_unknownObjectRetain();
    v5 = String._bridgeToObjectiveC()();
    [v3 handleScannedCode:v5];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000B638(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);
}

void sub_10000B6EC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = *(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_pinEntryController);
  if (v10)
  {
    v11 = v10;
    String.LocalizationValue.init(_:)();
    type metadata accessor for PASVSPrimaryViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v14 = String._bridgeToObjectiveC()();

    [v11 setSubtitle:v14];

    v15 = [v11 contentView];
    v16 = [v15 subtitleLabel];

    if (v16)
    {
      v17 = [objc_opt_self() systemRedColor];
      [v16 setTextColor:v17];
    }

    v18 = [v11 passcodeEntryView];
    v19 = String._bridgeToObjectiveC()();
    [v18 setText:v19];
  }

  else
  {
    static PASLogger.viewService.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Attempted to show PIN entry error, but no PIN entry view was found.", v22, 2u);
    }

    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_10000BAA0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v7;
  v2[9] = v6;

  return _swift_task_switch(sub_10000BB94, v7, v6);
}

uint64_t sub_10000BB94()
{
  v1 = v0[3];
  v2 = sub_1000088F8();
  v3 = [v2 navigationController];

  if (v3)
  {
    v4 = [v3 popToViewController:*(v0[3] + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController) animated:0];
  }

  v5 = v0[6];
  static PASLogger.viewService.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "PASVSSetupEventPresenter: Pairing Completed", v8, 2u);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  v12 = v0[4];

  (*(v10 + 8))(v9, v12);
  v13 = *(v11 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController);
  v14 = objc_allocWithZone(type metadata accessor for PASUISourceViewPresenter());
  v15 = v13;
  v16 = PASUISourceViewPresenter.init(sharingViewController:)();
  v17 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_sourceViewPresenter;
  v18 = *(v11 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_sourceViewPresenter);
  *(v11 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_sourceViewPresenter) = v16;
  v19 = v16;

  swift_unknownObjectRetain();
  PASUISourceViewPresenter.delegate.setter();

  v20 = *(v11 + v17);
  v0[10] = v20;
  if (v20)
  {
    v21 = async function pointer to PASUISourceViewPresenter.activate(withTemplate:)[1];
    v20;
    v22 = swift_task_alloc();
    v0[11] = v22;
    *v22 = v0;
    v22[1] = sub_10000BDE8;
    v23 = v0[2];

    return PASUISourceViewPresenter.activate(withTemplate:)(v23);
  }

  else
  {
    v24 = v0[7];

    v25 = v0[6];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_10000BDE8(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v9 = *v1;

  v6 = *(v3 + 72);
  v7 = *(v3 + 64);

  return _swift_task_switch(sub_10000BF30, v7, v6);
}

uint64_t sub_10000BF30()
{
  v1 = v0[7];

  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000C120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000C1BC, v5, v4);
}

uint64_t sub_10000C1BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_10000C280;
  v8 = v0[4];
  v9 = v0[2];

  return sub_10000BAA0(v9);
}

uint64_t sub_10000C280()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10000C3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  result = __chkstk_darwin(v15);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v5[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_sourceViewPresenter])
  {
    v28 = v18;
    sub_10000DF2C(0, &qword_100025E60, OS_dispatch_queue_ptr);
    v27 = v11;
    v26 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = a2;
    v21[4] = a3;
    v21[5] = a4;
    v21[6] = v5;
    aBlock[4] = sub_10000DDE8;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C814;
    aBlock[3] = &unk_100021040;
    v22 = _Block_copy(aBlock);

    v23 = v5;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000DE80(&qword_100025E68, &type metadata accessor for DispatchWorkItemFlags);
    sub_100001E28(&qword_100025E70, &unk_100017B70);
    sub_10000DD3C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v26;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v27 + 8))(v14, v10);
    return (*(v28 + 8))(v20, v15);
  }

  return result;
}

void sub_10000C6E4()
{
  v4 = [objc_allocWithZone(PRXCardContentViewController) init];
  v0 = String._bridgeToObjectiveC()();
  [v4 setTitle:v0];

  v1 = String._bridgeToObjectiveC()();
  [v4 setSubtitle:v1];

  [v4 setDismissalType:1];
  v2 = sub_1000088F8();
  v3 = [v2 navigationController];

  if (v3)
  {
    [v3 pushViewController:v4 animated:1];
  }
}

uint64_t sub_10000C814(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_10000C918()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASVSSetupEventPresenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PASVSSetupEventPresenter()
{
  result = qword_100025DD0;
  if (!qword_100025DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000CAA4()
{
  sub_10000CBE0(319, &qword_100025DE0, &type metadata accessor for PASDevice);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000CBE0(319, &qword_100025DE8, &type metadata accessor for PASTargetAccountOptionsType);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000CBE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000CC34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_sourceViewPresenter];
    *&Strong[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_sourceViewPresenter] = 0;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (!v2 || (v3 = v2, v4 = *(v2 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_presentingViewController), v5 = v4, v3, !v4))
  {
    exit(0);
  }

  v7[4] = sub_10000CD6C;
  v7[5] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10000C814;
  v7[3] = &unk_100020FF0;
  v6 = _Block_copy(v7);
  [v5 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

void sub_10000CDE0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "PASVSSetupEventPresenter:proxCardFlowDidDismiss", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate);
  if (v10)
  {
    [v10 invalidateClientConnection];
  }

  sub_10000DF2C(0, &qword_100025E58, NSDistributedNotificationCenter_ptr);
  v11 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_1000259D8 != -1)
  {
    swift_once();
  }

  [v11 postNotificationName:qword_100026208 object:0];

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100013A20();
    swift_unknownObjectRelease();
  }

  exit(0);
}

uint64_t sub_10000CFEC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100007348;

  return v7();
}

uint64_t sub_10000D0D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000536C;

  return v8();
}

uint64_t sub_10000D1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100006F60(a3, v25 - v11, &unk_100025EC0, &qword_100017420);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100006FC8(v12, &unk_100025EC0, &qword_100017420);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_100006FC8(a3, &unk_100025EC0, &qword_100017420);

    return v23;
  }

LABEL_8:
  sub_100006FC8(a3, &unk_100025EC0, &qword_100017420);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_10000D4B8(uint64_t a1)
{
  v2 = sub_100001E28(&qword_100025EB0, &qword_100017B98);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v27[-v4 - 8];
  v6 = type metadata accessor for PASDeviceClass();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v13 = &v27[-v12 - 8];
  sub_10000DF94(a1, v27);
  sub_100001E28(&qword_100025EB8, &unk_100017BA0);
  v14 = swift_dynamicCast();
  v15 = *(v7 + 56);
  if (v14)
  {
    v15(v5, 0, 1, v6);
    (*(v7 + 32))(v13, v5, v6);
  }

  else
  {
    v15(v5, 1, 1, v6);
    (*(v7 + 104))(v13, enum case for PASDeviceClass.unknown(_:), v6);
  }

  (*(v7 + 16))(v11, v13, v6);
  if ((*(v7 + 88))(v11, v6) == enum case for PASDeviceClass.iPad(_:))
  {
    if (qword_1000259E0 != -1)
    {
      swift_once();
    }

    v16 = qword_100026230;
    v17 = String._bridgeToObjectiveC()();
    v18 = [objc_opt_self() imageNamed:v17 inBundle:v16];

    if (v18)
    {
      v19 = v18;
LABEL_13:
      v24 = [objc_allocWithZone(UIImageView) initWithImage:v19];

      v25 = v24;
      [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v25 setContentMode:1];

      (*(v7 + 8))(v13, v6);
      return;
    }

    __break(1u);
  }

  else
  {
    if (qword_1000259E0 != -1)
    {
      swift_once();
    }

    v20 = qword_100026230;
    v21 = String._bridgeToObjectiveC()();
    v22 = [objc_opt_self() imageNamed:v21 inBundle:v20];

    if (v22)
    {
      v23 = *(v7 + 8);
      v19 = v22;
      v23(v11, v6);
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_10000D8D8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = v10;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "PASVSSetupEventPresenter: proximitySetupCompleted", v18, 2u);
    v10 = v25;
  }

  (*(v12 + 8))(v15, v11);
  v19 = *(v1 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate);
  if (v19)
  {
    [v19 invalidateClientConnection];
  }

  sub_10000DF2C(0, &qword_100025E60, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10000DD1C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C814;
  aBlock[3] = &unk_100020FC8;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000DE80(&qword_100025E68, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001E28(&qword_100025E70, &unk_100017B70);
  sub_10000DD3C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v3 + 8))(v6, v2);
  return (*(v26 + 8))(v10, v27);
}

uint64_t sub_10000DCE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DD24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000DD3C()
{
  result = qword_100025E78;
  if (!qword_100025E78)
  {
    sub_1000086F4(&qword_100025E70, &unk_100017B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025E78);
  }

  return result;
}

uint64_t sub_10000DDA0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10000DDE8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_10000C6E4();
}

uint64_t sub_10000DDF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DE40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DE80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_10000DEC8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000DF2C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000DF7C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000DF94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000DFF8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E040()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000536C;

  return sub_10000C120(v2, v3, v4);
}

uint64_t sub_10000E0F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100007348;

  return sub_10000CFEC(v2, v3, v5);
}

uint64_t sub_10000E1B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000E1F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007348;

  return sub_10000D0D4(a1, v4, v5, v7);
}

uint64_t sub_10000E2C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E2FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007348;

  return sub_100004BD8(a1, v5);
}

uint64_t sub_10000E3B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000536C;

  return sub_100004BD8(a1, v5);
}

uint64_t sub_10000E4AC()
{
  v0 = sub_100001E28(&qword_100025F38, qword_100017C68);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  sub_10000E68C();
  WindowGroup.init(id:title:lazyContent:)();
  sub_10000E6E0();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v4, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000E60C();
  static App.main()();
  return 0;
}

unint64_t sub_10000E60C()
{
  result = qword_100025F30;
  if (!qword_100025F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025F30);
  }

  return result;
}

unint64_t sub_10000E68C()
{
  result = qword_100025F40;
  if (!qword_100025F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025F40);
  }

  return result;
}

unint64_t sub_10000E6E0()
{
  result = qword_100025F48;
  if (!qword_100025F48)
  {
    sub_1000086F4(&qword_100025F38, qword_100017C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025F48);
  }

  return result;
}

void sub_10000E748(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

char *sub_10000E7B0()
{
  *&v0[OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_delegate] = 0;
  v1 = [objc_allocWithZone(VPScannerProxCardViewController) init];
  *&v0[OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_scannerEngineVC] = v1;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for PASVSScannerCardViewController();
  v2 = objc_msgSendSuper2(&v10, "initWithScannerEngine:", v1);
  v3 = *&v2[OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_scannerEngineVC];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v9[4] = sub_10000F584;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000B638;
  v9[3] = &unk_1000212E0;
  v5 = _Block_copy(v9);
  v6 = v2;
  v7 = v3;

  [v7 setScannedCodeHandler:v5];
  _Block_release(v5);

  return v6;
}

void sub_10000E8FC()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v21.receiver = v0;
  v21.super_class = type metadata accessor for PASVSScannerCardViewController();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  [v0 setDismissalType:1];
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = String._bridgeToObjectiveC()();

  [v0 setTitle:v8];

  String.LocalizationValue.init(_:)();
  v9 = [v6 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v10];

  String.LocalizationValue.init(_:)();
  v11 = [v6 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v12 = String._bridgeToObjectiveC()();

  String.LocalizationValue.init(_:)();
  v13 = [v6 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v14 = String._bridgeToObjectiveC()();

  String.LocalizationValue.init(_:)();
  v15 = [v6 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v16 = String._bridgeToObjectiveC()();

  String.LocalizationValue.init(_:)();
  v17 = [v6 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v0 dismissalConfirmationActionWithTitle:v12 message:v14 confirmButtonTitle:v16 cancelButtonTitle:v18];

  [v0 setDismissButtonAction:v19];
  v20 = sub_10000EDA8();
}

id sub_10000EDA8()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  v8 = v0;
  v9 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10000F564;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000E748;
  aBlock[3] = &unk_100021290;
  v10 = _Block_copy(aBlock);
  v11 = [objc_opt_self() actionWithTitle:v9 style:1 handler:v10];

  _Block_release(v10);

  return v11;
}

void sub_10000F014()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  [v0 showConfirmationRing];
  [*&v0[OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_scannerEngineVC] stop];
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v7 = String._bridgeToObjectiveC()();

  [v0 showActivityIndicatorWithStatus:v7];

  v8 = *&v0[OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_delegate];
  if (v8)
  {
    swift_unknownObjectRetain();
    v9 = String._bridgeToObjectiveC()();
    [v8 handleScannedCode:v9];

    swift_unknownObjectRelease();
  }
}

id sub_10000F32C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASVSScannerCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000F3D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "User has elected manual pairing.", v10, 2u);
  }

  (*(v4 + 8))(v7, v3);
  result = *(a2 + OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_delegate);
  if (result)
  {
    return [result enableManualPairing];
  }

  return result;
}

uint64_t sub_10000F52C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F56C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10000F5B4()
{
  type metadata accessor for PASBundleForViewService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100026230 = result;
  return result;
}

id sub_10000F62C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v42[0] = a5;
  v13 = sub_100001E28(&qword_100026020, &qword_100017CC8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v42 - v15;
  v45 = a6;
  v46 = a7;
  v43 = a1;
  v44 = a2;
  v42[10] = a3;
  v42[11] = a4;
  sub_10000FA2C();
  v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v19 = v18;
  v45 = v17;
  v46 = v18;
  v43 = a3;
  v44 = a4;
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  v21 = StringProtocol.range<A>(of:options:range:locale:)();
  v23 = v22;
  LOBYTE(a4) = v24;
  sub_100006FC8(v16, &qword_100026020, &qword_100017CC8);
  if ((a4 & 1) != 0 || (v21 ^ v23) < 0x4000)
  {
    v40 = objc_allocWithZone(NSAttributedString);
    v39 = String._bridgeToObjectiveC()();

    v38 = [v40 initWithString:v39];
  }

  else
  {
    v45 = v21;
    v46 = v23;
    v43 = v17;
    v44 = v19;

    sub_100001E28(&qword_100026030, &qword_100017CD0);
    sub_10000FA80();
    v25 = _NSRange.init<A, B>(_:in:)();
    v27 = v26;
    v28 = objc_opt_self();
    v29 = [v28 preferredFontForTextStyle:v42[0]];
    [v29 pointSize];
    v31 = v30;

    sub_100001E28(&qword_100026040, &qword_100017CD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100017400;
    *(inited + 32) = NSFontAttributeName;
    v33 = NSFontAttributeName;
    v34 = [v28 systemFontOfSize:v31];
    *(inited + 64) = sub_10000FAE4();
    *(inited + 40) = v34;
    sub_10000FC6C(inited);
    swift_setDeallocating();
    sub_100006FC8(inited + 32, &qword_100026050, &qword_100017CE0);
    v35 = objc_allocWithZone(NSMutableAttributedString);
    v36 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10000FD94();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v38 = [v35 initWithString:v36 attributes:isa];

    v39 = [v28 boldSystemFontOfSize:v31];
    [v38 addAttribute:v33 value:v39 range:{v25, v27}];
  }

  return v38;
}

unint64_t sub_10000FA2C()
{
  result = qword_100026028;
  if (!qword_100026028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026028);
  }

  return result;
}

unint64_t sub_10000FA80()
{
  result = qword_100026038;
  if (!qword_100026038)
  {
    sub_1000086F4(&qword_100026030, &qword_100017CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026038);
  }

  return result;
}

unint64_t sub_10000FAE4()
{
  result = qword_100026048;
  if (!qword_100026048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100026048);
  }

  return result;
}

unint64_t sub_10000FB30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001E28(&qword_100025B50, &qword_1000175B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006F60(v4, v13, &qword_100025B48, &qword_1000175A8);
      result = sub_100015328(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100006EA0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000FC6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001E28(&qword_100026058, &qword_100017CE8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006F60(v4, &v11, &qword_100026050, &qword_100017CE0);
      v5 = v11;
      result = sub_10001536C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100006EA0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000FD94()
{
  result = qword_100025B90;
  if (!qword_100025B90)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025B90);
  }

  return result;
}

uint64_t sub_10000FDEC(void *a1, uint64_t a2, uint64_t a3)
{
  v173 = a3;
  v174 = a2;
  v4 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v168 = &v155[-v6];
  v165 = sub_100001E28(&qword_100025E80, &unk_100017EA0);
  v7 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165);
  v167 = &v155[-v8];
  v9 = sub_100001E28(&qword_100025E88, &unk_100017B80);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v163 = &v155[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v170 = &v155[-v14];
  __chkstk_darwin(v13);
  v166 = &v155[-v15];
  v169 = type metadata accessor for PASTargetAccountOptionsType();
  v171 = *(v169 - 8);
  v16 = *(v171 + 64);
  v17 = __chkstk_darwin(v169);
  v162 = &v155[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v164 = &v155[-v19];
  v20 = type metadata accessor for Logger();
  v175 = *(v20 - 8);
  v176 = v20;
  v21 = *(v175 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v155[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __chkstk_darwin(v22);
  v27 = &v155[-v26];
  v28 = __chkstk_darwin(v25);
  v30 = &v155[-v29];
  v31 = __chkstk_darwin(v28);
  v161 = &v155[-v32];
  v33 = __chkstk_darwin(v31);
  v35 = &v155[-v34];
  v36 = __chkstk_darwin(v33);
  v38 = &v155[-v37];
  v39 = __chkstk_darwin(v36);
  v41 = &v155[-v40];
  __chkstk_darwin(v39);
  v42 = sub_100001E28(&qword_1000259E8, &unk_100017410);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v45 = &v155[-v44];
  type metadata accessor for PASServices();
  static PASServices.shared.getter();
  PASServices.registerSourceServices()();

  if (a1 && (v46 = [a1 userInfo]) != 0)
  {
    v47 = v46;
    v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v177 = 0x656369766564;
    v178 = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v48 + 16) && (v49 = sub_100015328(&v179), (v50 & 1) != 0))
    {
      sub_100005470(*(v48 + 56) + 32 * v49, &v182);
      sub_100006EB0(&v179);
      sub_100001E28(&qword_100026128, &qword_100017EB0);
      if (swift_dynamicCast())
      {
        v51 = v177;
        v52 = objc_allocWithZone(CBDevice);

        v53 = sub_100014BB4();
        v159 = v51;
        v72 = v53;
        v73 = [v53 nearbyActionDeviceClass];
        v181 = 0;
        v179 = 0u;
        v180 = 0u;
        if ([objc_opt_self() currentDevice])
        {
          v158 = v73;
          PASDevice.init(deviceClass:biometryProvider:ak_device:)();
          v75 = type metadata accessor for PASDevice();
          (*(*(v75 - 8) + 56))(v45, 0, 1, v75);
          v76 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_targetDevice;
          v77 = v172;
          swift_beginAccess();
          sub_1000159D0(v45, &v77[v76], &qword_1000259E8, &unk_100017410);
          swift_endAccess();
          static PASLogger.viewService.getter();
          v78 = v72;
          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            *v81 = 141558274;
            *(v81 + 4) = 1752392040;
            *(v81 + 12) = 2112;
            *(v81 + 14) = v78;
            *v82 = v78;
            v83 = v78;
            _os_log_impl(&_mh_execute_header, v79, v80, "PASVSPrimaryViewController Started CoreBluetooth device %{mask.hash}@", v81, 0x16u);
            sub_100006FC8(v82, &qword_1000259F8, &qword_100017438);

            v77 = v172;
          }

          v84 = v175 + 8;
          v160 = *(v175 + 8);
          v160(v41, v176);
          v85 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_device;
          v86 = *&v77[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_device];
          *&v77[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_device] = v78;
          v87 = v78;

          if (*(v85 + v77))
          {
            v157 = v85;
            v88 = [v87 nearbyActionType];

            static PASLogger.viewService.getter();
            v89 = Logger.logObject.getter();
            v90 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v89, v90))
            {
              v91 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              v156 = v88;
              v93 = v92;
              *&v179 = v92;
              *v91 = 136315138;
              LOBYTE(v182) = v156;
              type metadata accessor for CBNearbyActionType(0);
              v94 = String.init<A>(describing:)();
              v96 = sub_100014D80(v94, v95, &v179);

              *(v91 + 4) = v96;
              v77 = v172;
              _os_log_impl(&_mh_execute_header, v89, v90, "PASVSPrimaryViewController received nearbyActionType: %s", v91, 0xCu);
              sub_1000054E8(v93);
              v88 = v156;
            }

            v160(v38, v176);
            v98 = v169;
            v97 = v170;
            v99 = v171;
            if (v88 != 95)
            {
              goto LABEL_38;
            }

            v100 = *(v157 + v77);
            v101 = &unk_100026000;
            v175 = v84;
            if (v100)
            {
              v102 = [v100 nearbyActionExtraData];
              if (v102)
              {
                v103 = v102;
                v104 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v106 = v105;

                isa = Data._bridgeToObjectiveC()().super.isa;
                sub_10001597C(v104, v106);
                static PASLogger.viewService.getter();
                v108 = isa;
                v109 = Logger.logObject.getter();
                v110 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v109, v110))
                {
                  v111 = swift_slowAlloc();
                  v157 = swift_slowAlloc();
                  *&v179 = v157;
                  *v111 = 136315138;
                  v112 = v108;
                  v156 = v110;
                  v113 = v112;
                  v114 = [(objc_class *)v112 description];
                  v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v117 = v116;

                  v118 = v115;
                  v99 = v171;
                  v77 = v172;
                  v119 = sub_100014D80(v118, v117, &v179);
                  v98 = v169;

                  *(v111 + 4) = v119;
                  _os_log_impl(&_mh_execute_header, v109, v156, "PASVSPrimaryViewController received nearbyActionExtraData: %s", v111, 0xCu);
                  sub_1000054E8(v157);

                  v97 = v170;
                }

                v160(v35, v176);
                v120 = v108;
                v172 = v120;
                v121 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v123 = v122;

                v124 = v164;
                static PASTargetAccountOptionsType.from(deviceFlags:)();
                sub_10001597C(v121, v123);
                v125 = *&v77[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__targetAccountOptionsProvider];

                dispatch thunk of PASService.wrappedValue.getter();

                swift_getObjectType();
                (*(v99 + 16))(v162, v124, v98);
                *(&v180 + 1) = type metadata accessor for PASTargetAccountOptions();
                v181 = &protocol witness table for PASTargetAccountOptions;
                sub_10000DEC8(&v179);
                PASTargetAccountOptions.init(targetAccountOptionsType:)();
                v101 = &unk_100026000;
                dispatch thunk of PASTargetAccountOptionsProviderProtocol.setTargetAccountOptions(_:)();

                swift_unknownObjectRelease();
                (*(v99 + 8))(v124, v98);
                sub_100006FC8(&v179, &qword_100026118, &qword_100017E80);
              }
            }

            v126 = *&v77[v101[16]];

            dispatch thunk of PASService.wrappedValue.getter();

            swift_getObjectType();
            dispatch thunk of PASTargetAccountOptionsProviderProtocol.targetAccountOptions.getter();
            swift_unknownObjectRelease();
            if (*(&v180 + 1))
            {
              sub_100006DEC(&v179, *(&v180 + 1));
              v127 = v166;
              dispatch thunk of PASTargetAccountOptionsProtocol.targetAccountOptionsType.getter();
              v128 = *(v99 + 56);
              v128(v127, 0, 1, v98);
              sub_1000054E8(&v179);
            }

            else
            {
              sub_100006FC8(&v179, &qword_100026118, &qword_100017E80);
              v128 = *(v99 + 56);
              v127 = v166;
              v128(v166, 1, 1, v98);
            }

            (*(v99 + 104))(v97, enum case for PASTargetAccountOptionsType.child(_:), v98);
            v128(v97, 0, 1, v98);
            v129 = *(v165 + 48);
            v130 = v167;
            sub_100006F60(v127, v167, &qword_100025E88, &unk_100017B80);
            sub_100006F60(v97, &v130[v129], &qword_100025E88, &unk_100017B80);
            v131 = *(v99 + 48);
            if (v131(v130, 1, v98) == 1)
            {
              sub_100006FC8(v97, &qword_100025E88, &unk_100017B80);
              v132 = v167;
              sub_100006FC8(v127, &qword_100025E88, &unk_100017B80);
              if (v131(&v132[v129], 1, v98) == 1)
              {
                sub_100006FC8(v132, &qword_100025E88, &unk_100017B80);
LABEL_38:

                v140 = type metadata accessor for TaskPriority();
                v141 = v168;
                (*(*(v140 - 8) + 56))(v168, 1, 1, v140);
                type metadata accessor for MainActor();
                v142 = v77;
                v144 = v173;
                v143 = v174;
                sub_1000157EC(v174);
                v145 = static MainActor.shared.getter();
                v146 = swift_allocObject();
                *(v146 + 16) = v145;
                *(v146 + 24) = &protocol witness table for MainActor;
                *(v146 + 32) = v142;
                *(v146 + 40) = v158;
                *(v146 + 48) = v143;
                *(v146 + 56) = v144;
                sub_1000125E4(0, 0, v141, &unk_100017EC0, v146);
              }
            }

            else
            {
              v133 = v163;
              sub_100006F60(v130, v163, &qword_100025E88, &unk_100017B80);
              if (v131(&v130[v129], 1, v98) != 1)
              {
                v134 = v171;
                v135 = &v130[v129];
                v136 = v164;
                (*(v171 + 32))(v164, v135, v98);
                sub_100015924();
                v137 = v133;
                v138 = dispatch thunk of static Equatable.== infix(_:_:)();
                v139 = *(v134 + 8);
                v139(v136, v98);
                sub_100006FC8(v170, &qword_100025E88, &unk_100017B80);
                sub_100006FC8(v166, &qword_100025E88, &unk_100017B80);
                v139(v137, v98);
                sub_100006FC8(v130, &qword_100025E88, &unk_100017B80);
                if (v138)
                {
                  goto LABEL_38;
                }

                goto LABEL_45;
              }

              v151 = v133;
              sub_100006FC8(v170, &qword_100025E88, &unk_100017B80);
              v132 = v167;
              sub_100006FC8(v166, &qword_100025E88, &unk_100017B80);
              (*(v171 + 8))(v151, v98);
            }

            sub_100006FC8(v132, &qword_100025E80, &unk_100017EA0);
LABEL_45:
            static PASLogger.viewService.getter();
            v152 = Logger.logObject.getter();
            v153 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v152, v153))
            {
              v154 = swift_slowAlloc();
              *v154 = 0;
              _os_log_impl(&_mh_execute_header, v152, v153, "PASVSPrimaryViewController received Family action but not for child, exiting", v154, 2u);
            }

            v150 = v161;
            goto LABEL_48;
          }
        }

        else
        {
          __break(1u);
        }

        static PASLogger.viewService.getter();
        v147 = Logger.logObject.getter();
        v148 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v147, v148))
        {
          v149 = swift_slowAlloc();
          *v149 = 0;
          _os_log_impl(&_mh_execute_header, v147, v148, "PASVSPrimaryViewController No remote device, exiting PASViewService.", v149, 2u);
        }

        v150 = v30;
LABEL_48:
        v160(v150, v176);
        exit(-1);
      }
    }

    else
    {
      sub_100006EB0(&v179);
    }

    static PASLogger.viewService.getter();

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    v64 = os_log_type_enabled(v62, v63);
    v65 = v175;
    if (v64)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v179 = v67;
      *v66 = 141558274;
      *(v66 + 4) = 1752392040;
      *(v66 + 12) = 2080;
      v68 = Dictionary.description.getter();
      v70 = v69;

      v71 = sub_100014D80(v68, v70, &v179);

      *(v66 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v62, v63, "PASVSPrimaryViewController No device to start setup: %{mask.hash}s", v66, 0x16u);
      sub_1000054E8(v67);
    }

    else
    {
    }

    result = (*(v65 + 8))(v27, v176);
    v61 = v174;
    if (v174)
    {
      return v61(result);
    }
  }

  else
  {
    static PASLogger.viewService.getter();
    v54 = a1;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 141558274;
      *(v57 + 4) = 1752392040;
      *(v57 + 12) = 2112;
      *(v57 + 14) = v54;
      *v58 = a1;
      v59 = v54;
      _os_log_impl(&_mh_execute_header, v55, v56, "PASVSPrimaryViewController No user info dictionary to start setup: %{mask.hash}@", v57, 0x16u);
      sub_100006FC8(v58, &qword_1000259F8, &qword_100017438);
    }

    result = (*(v175 + 8))(v24, v176);
    v61 = v174;
    if (v174)
    {
      return v61(result);
    }
  }

  return result;
}

uint64_t sub_1000112B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 472) = a6;
  *(v7 + 480) = a7;
  *(v7 + 696) = a5;
  *(v7 + 464) = a4;
  v8 = type metadata accessor for Logger();
  *(v7 + 488) = v8;
  v9 = *(v8 - 8);
  *(v7 + 496) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 504) = swift_task_alloc();
  v11 = type metadata accessor for PASLocatedExtension();
  *(v7 + 512) = v11;
  v12 = *(v11 - 8);
  *(v7 + 520) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 528) = swift_task_alloc();
  *(v7 + 536) = swift_task_alloc();
  v14 = *(*(sub_100001E28(&qword_100025B58, &qword_1000175B8) - 8) + 64) + 15;
  *(v7 + 544) = swift_task_alloc();
  *(v7 + 552) = swift_task_alloc();
  *(v7 + 560) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 568) = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 576) = v16;
  *(v7 + 584) = v15;

  return _swift_task_switch(sub_100011468, v16, v15);
}

uint64_t sub_100011468()
{
  v1 = *(v0[58] + OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__extensionCache);

  dispatch thunk of PASService.wrappedValue.getter();

  v2 = v0[29];
  v3 = v0[30];
  sub_100006DEC(v0 + 26, v2);
  v4 = async function pointer to dispatch thunk of PASExtensionCacheProtocol.designatedExtension()[1];
  v5 = swift_task_alloc();
  v0[74] = v5;
  *v5 = v0;
  v5[1] = sub_10001154C;
  v6 = v0[70];

  return dispatch thunk of PASExtensionCacheProtocol.designatedExtension()(v6, v2, v3);
}

uint64_t sub_10001154C()
{
  v1 = *v0;
  v2 = *(*v0 + 592);
  v6 = *v0;

  v3 = *(v1 + 584);
  v4 = *(v1 + 576);

  return _swift_task_switch(sub_10001166C, v4, v3);
}

uint64_t sub_10001166C()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 464);
  v3 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_designatedExtension;
  *(v0 + 600) = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_designatedExtension;
  swift_beginAccess();
  sub_1000159D0(v1, v2 + v3, &qword_100025B58, &qword_1000175B8);
  swift_endAccess();
  sub_1000054E8((v0 + 208));
  v4 = *(v2 + OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__deviceProvider);

  dispatch thunk of PASService.wrappedValue.getter();

  v5 = *(v0 + 456);
  PASDeviceProvider.sourceDevice.getter();

  v6 = *(v0 + 272);
  if (v6)
  {
    v7 = *(v0 + 280);
    v8 = sub_100006DEC((v0 + 248), *(v0 + 272));
    v9 = *(v6 - 8);
    v10 = *(v9 + 64) + 15;
    v11 = swift_task_alloc();
    (*(v9 + 16))(v11, v8, v6);
    sub_100006FC8(v0 + 248, &qword_100026130, &qword_100017ED0);
    dispatch thunk of PASDeviceProtocol.deviceBiometryType.getter();
    (*(v9 + 8))(v11, v6);
  }

  else
  {
    sub_100006FC8(v0 + 248, &qword_100026130, &qword_100017ED0);
  }

  v12 = *(v0 + 552);
  v13 = *(v0 + 520);
  v14 = *(v0 + 512);
  v15 = *(v0 + 696);
  v16 = objc_allocWithZone(type metadata accessor for PASExtensionDevicePair());
  v17 = PASExtensionDevicePair.init(targetDeviceType:sourceDeviceBiometryType:)();
  *(v0 + 608) = v17;
  sub_100006F60(v2 + v3, v12, &qword_100025B58, &qword_1000175B8);
  v18 = *(v13 + 48);
  *(v0 + 616) = v18;
  *(v0 + 624) = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v19 = v18(v12, 1, v14);
  v20 = *(v0 + 552);
  if (!v19)
  {
    v37 = *(v0 + 536);
    v38 = *(v0 + 520);
    v39 = *(v0 + 512);
    (*(v38 + 16))(v37, *(v0 + 552), v39);
    sub_100006FC8(v20, &qword_100025B58, &qword_1000175B8);
    *(v0 + 632) = PASLocatedExtension.handle.getter();
    (*(v38 + 8))(v37, v39);
    v40 = async function pointer to PASExtensionHandle.viewDetails(for:)[1];
    v41 = swift_task_alloc();
    *(v0 + 640) = v41;
    *v41 = v0;
    v41[1] = sub_100011D00;
    v23 = v17;

    return PASExtensionHandle.viewDetails(for:)(v23);
  }

  sub_100006FC8(*(v0 + 552), &qword_100025B58, &qword_1000175B8);
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  v21 = *(v0 + 464);
  v22 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_sourceViewDetails;
  swift_beginAccess();
  sub_1000159D0(v0 + 160, v21 + v22, &qword_100026110, &qword_100017E78);
  swift_endAccess();
  v23 = [objc_opt_self() defaultStore];
  if (!v23)
  {
    __break(1u);
    return PASExtensionHandle.viewDetails(for:)(v23);
  }

  v24 = v23;
  v25 = *(v0 + 624);
  v26 = *(v0 + 616);
  v27 = *(v0 + 600);
  v28 = *(v0 + 544);
  v29 = *(v0 + 512);
  v30 = *(v0 + 464);
  *(v0 + 312) = sub_10000DF2C(0, &qword_100026138, ACAccountStore_ptr);
  *(v0 + 320) = &protocol witness table for ACAccountStore;
  *(v0 + 288) = v24;
  v31 = [objc_opt_self() sharedInstance];
  v32 = type metadata accessor for AccountSecurityLevelCalculator();
  v33 = swift_allocObject();
  sub_100006F60(v30 + v27, v28, &qword_100025B58, &qword_1000175B8);
  v34 = v26(v28, 1, v29);
  v35 = *(v0 + 544);
  if (v34)
  {
    sub_100006FC8(*(v0 + 544), &qword_100025B58, &qword_1000175B8);
    v36 = 0;
  }

  else
  {
    v42 = *(v0 + 528);
    v43 = *(v0 + 520);
    v44 = *(v0 + 512);
    (*(v43 + 16))(v42, *(v0 + 544), v44);
    sub_100006FC8(v35, &qword_100025B58, &qword_1000175B8);
    v36 = PASLocatedExtension.manifest.getter();
    (*(v43 + 8))(v42, v44);
  }

  *(v0 + 352) = sub_10000DF2C(0, &qword_100026140, FMDFMIPManager_ptr);
  *(v0 + 360) = &off_1000213A8;
  *(v0 + 328) = v31;
  *(v0 + 392) = v32;
  *(v0 + 400) = &off_100020F70;
  *(v0 + 368) = v33;
  type metadata accessor for PASVSProxCardValidator();
  inited = swift_initStackObject();
  *(v0 + 664) = inited;
  v46 = *(v0 + 392);
  v47 = sub_100015744(v0 + 368, v46);
  v48 = *(v46 - 8);
  v49 = *(v48 + 64) + 15;
  v50 = swift_task_alloc();
  (*(v48 + 16))(v50, v47, v46);
  v51 = *v50;
  inited[15] = v32;
  inited[16] = &off_100020F70;
  inited[12] = v51;
  inited[17] = 0;
  sub_10000DF7C((v0 + 288), (inited + 2));
  sub_10000DF7C((v0 + 328), (inited + 7));
  inited[17] = v36;
  sub_1000054E8((v0 + 368));

  v52 = swift_task_alloc();
  *(v0 + 672) = v52;
  *v52 = v0;
  v52[1] = sub_1000121D0;

  return sub_1000073CC();
}

uint64_t sub_100011D00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 640);
  v6 = *v2;
  *(*v2 + 648) = v1;

  if (v1)
  {
    v7 = v4[73];
    v8 = v4[72];
    v9 = sub_100012508;
  }

  else
  {
    v10 = v4[79];

    v4[82] = a1;
    v7 = v4[73];
    v8 = v4[72];
    v9 = sub_100011E38;
  }

  return _swift_task_switch(v9, v8, v7);
}

id sub_100011E38()
{
  v1 = *(v0 + 656);
  v2 = type metadata accessor for PASExtensionProvidedViewDetails();
  *(v0 + 160) = v1;
  *(v0 + 184) = v2;
  *(v0 + 192) = &protocol witness table for PASExtensionProvidedViewDetails;
  *(v0 + 200) = &protocol witness table for PASExtensionProvidedViewDetails;
  v3 = *(v0 + 464);
  v4 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_sourceViewDetails;
  swift_beginAccess();
  sub_1000159D0(v0 + 160, v3 + v4, &qword_100026110, &qword_100017E78);
  swift_endAccess();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v6 = result;
    v7 = *(v0 + 624);
    v8 = *(v0 + 616);
    v9 = *(v0 + 600);
    v10 = *(v0 + 544);
    v11 = *(v0 + 512);
    v12 = *(v0 + 464);
    *(v0 + 312) = sub_10000DF2C(0, &qword_100026138, ACAccountStore_ptr);
    *(v0 + 320) = &protocol witness table for ACAccountStore;
    *(v0 + 288) = v6;
    v29 = [objc_opt_self() sharedInstance];
    v13 = type metadata accessor for AccountSecurityLevelCalculator();
    v14 = swift_allocObject();
    sub_100006F60(v12 + v9, v10, &qword_100025B58, &qword_1000175B8);
    v15 = v8(v10, 1, v11);
    v16 = *(v0 + 544);
    if (v15)
    {
      sub_100006FC8(*(v0 + 544), &qword_100025B58, &qword_1000175B8);
      v17 = 0;
    }

    else
    {
      v18 = *(v0 + 528);
      v19 = *(v0 + 520);
      v20 = *(v0 + 512);
      (*(v19 + 16))(v18, *(v0 + 544), v20);
      sub_100006FC8(v16, &qword_100025B58, &qword_1000175B8);
      v17 = PASLocatedExtension.manifest.getter();
      (*(v19 + 8))(v18, v20);
    }

    *(v0 + 352) = sub_10000DF2C(0, &qword_100026140, FMDFMIPManager_ptr);
    *(v0 + 360) = &off_1000213A8;
    *(v0 + 328) = v29;
    *(v0 + 392) = v13;
    *(v0 + 400) = &off_100020F70;
    *(v0 + 368) = v14;
    type metadata accessor for PASVSProxCardValidator();
    inited = swift_initStackObject();
    *(v0 + 664) = inited;
    v22 = *(v0 + 392);
    v23 = sub_100015744(v0 + 368, v22);
    v24 = *(v22 - 8);
    v25 = *(v24 + 64) + 15;
    v26 = swift_task_alloc();
    (*(v24 + 16))(v26, v23, v22);
    v27 = *v26;
    inited[15] = v13;
    inited[16] = &off_100020F70;
    inited[12] = v27;
    inited[17] = 0;
    sub_10000DF7C((v0 + 288), (inited + 2));
    sub_10000DF7C((v0 + 328), (inited + 7));
    inited[17] = v17;
    sub_1000054E8((v0 + 368));

    v28 = swift_task_alloc();
    *(v0 + 672) = v28;
    *v28 = v0;
    v28[1] = sub_1000121D0;

    return sub_1000073CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000121D0(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 672);
  v10 = *v3;
  *(v5 + 700) = a1;
  *(v5 + 680) = a2;
  *(v5 + 688) = a3;

  v7 = *(v4 + 584);
  v8 = *(v4 + 576);

  return _swift_task_switch(sub_100012300, v8, v7);
}

uint64_t sub_100012300()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 700);
  v4 = (*(v0 + 464) + OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v3 & 0x101010101010101;
  v4[1] = v2;
  v4[2] = v1;

  sub_100014D6C(v5, v6, v7);
  sub_100014D6C(v3 & 0x101010101010101, v2, v1);
  if ((v3 & 1) == 0)
  {
    v21 = *(v0 + 504);
    static PASLogger.viewService.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Validator says we should not show prox card, exiting PASViewService.", v24, 2u);
    }

    v26 = *(v0 + 496);
    v25 = *(v0 + 504);
    v27 = *(v0 + 488);

    (*(v26 + 8))(v25, v27);
    exit(-1);
  }

  v8 = *(v0 + 568);
  v9 = *(v0 + 472);

  if (v9)
  {
    v11 = *(v0 + 480);
    (*(v0 + 472))(v10);
  }

  v12 = *(v0 + 664);
  v13 = *(v0 + 560);
  v14 = *(v0 + 552);
  v15 = *(v0 + 544);
  v16 = *(v0 + 536);
  v17 = *(v0 + 528);
  v18 = *(v0 + 504);

  swift_setDeallocating();
  sub_1000054E8((v12 + 16));
  sub_1000054E8((v12 + 56));
  sub_1000054E8((v12 + 96));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100012508()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  v7 = *(v0 + 528);
  v8 = *(v0 + 504);

  v9 = *(v0 + 8);
  v10 = *(v0 + 648);

  return v9();
}

uint64_t sub_1000125E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100006F60(a3, v24 - v10, &unk_100025EC0, &qword_100017420);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006FC8(v11, &unk_100025EC0, &qword_100017420);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100006FC8(a3, &unk_100025EC0, &qword_100017420);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006FC8(a3, &unk_100025EC0, &qword_100017420);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_100012960()
{
  v1 = v0;
  v122 = type metadata accessor for Logger();
  v121 = *(v122 - 8);
  v2 = *(v121 + 64);
  v3 = __chkstk_darwin(v122);
  v5 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v112 - v6;
  v8 = sub_100001E28(&qword_1000259E8, &unk_100017410);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v123 = &v112 - v14;
  __chkstk_darwin(v13);
  v16 = &v112 - v15;
  v132 = type metadata accessor for PASDevice();
  v130 = *(v132 - 8);
  v17 = *(v130 + 64);
  v18 = __chkstk_darwin(v132);
  v20 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v117 = &v112 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v112 - v24;
  __chkstk_darwin(v23);
  v128 = &v112 - v26;
  v27 = sub_100001E28(&qword_100025E88, &unk_100017B80);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v31 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v112 - v32;
  v34 = *&v1[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_device];
  if (!v34)
  {
    static PASLogger.viewService.getter();
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&_mh_execute_header, v109, v110, "No CBDevice present, unable to show prox card, exiting PASViewService.", v111, 2u);
    }

    (*(v121 + 8))(v5, v122);
    exit(-1);
  }

  v35 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_sourceViewDetails;
  swift_beginAccess();
  v126 = v35;
  sub_100006F60(&v1[v35], &v134, &qword_100026110, &qword_100017E78);
  v36 = *(&v135 + 1);
  v127 = v12;
  v120 = v20;
  v118 = v25;
  if (*(&v135 + 1))
  {
    v37 = v136;
    v38 = sub_100006DEC(&v134, *(&v135 + 1));
    *(&v139 + 1) = v36;
    v140 = v37;
    v39 = sub_10000DEC8(&v138);
    (*(*(v36 - 8) + 16))(v39, v38, v36);
    v40 = v34;
    sub_1000054E8(&v134);
  }

  else
  {
    v41 = v34;
    sub_100006FC8(&v134, &qword_100026110, &qword_100017E78);
    v138 = 0u;
    v139 = 0u;
    v140 = 0;
  }

  v42 = objc_allocWithZone(type metadata accessor for PASVSSetupEventPresenter());
  v43 = sub_10000896C(&v138);
  v44 = *&v43[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_presentingViewController];
  *&v43[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_presentingViewController] = v1;
  v129 = v1;
  v45 = v1;

  v46 = *&v45[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__targetAccountOptionsProvider];

  dispatch thunk of PASService.wrappedValue.getter();

  swift_getObjectType();
  dispatch thunk of PASTargetAccountOptionsProviderProtocol.targetAccountOptions.getter();
  swift_unknownObjectRelease();
  v131 = v34;
  v119 = v7;
  if (*(&v135 + 1))
  {
    sub_100006DEC(&v134, *(&v135 + 1));
    dispatch thunk of PASTargetAccountOptionsProtocol.targetAccountOptionsType.getter();
    v47 = type metadata accessor for PASTargetAccountOptionsType();
    v48 = *(v47 - 8);
    (*(v48 + 56))(v31, 0, 1, v47);
    sub_1000054E8(&v134);
    if ((*(v48 + 48))(v31, 1, v47) != 1)
    {
      (*(v48 + 32))(v33, v31, v47);
      goto LABEL_11;
    }
  }

  else
  {
    sub_100006FC8(&v134, &qword_100026118, &qword_100017E80);
    v47 = type metadata accessor for PASTargetAccountOptionsType();
    (*(*(v47 - 8) + 56))(v31, 1, 1, v47);
  }

  v49 = enum case for PASTargetAccountOptionsType.family(_:);
  type metadata accessor for PASTargetAccountOptionsType();
  v50 = *(v47 - 8);
  (*(v50 + 104))(v33, v49, v47);
  if ((*(v50 + 48))(v31, 1, v47) != 1)
  {
    sub_100006FC8(v31, &qword_100025E88, &unk_100017B80);
  }

LABEL_11:
  type metadata accessor for PASTargetAccountOptionsType();
  (*(*(v47 - 8) + 56))(v33, 0, 1, v47);
  v51 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetAccountOptionsType;
  swift_beginAccess();
  sub_1000159D0(v33, &v43[v51], &qword_100025E88, &unk_100017B80);
  swift_endAccess();
  v52 = &v45[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult];
  v53 = v45[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult + 1];
  v54 = *&v45[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult + 8];
  v55 = *&v45[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult + 16];
  v56 = (v55 != 1) & v53;
  v57 = (*&v45[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult + 2] << 16) | (*&v45[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult + 6] << 48);
  v58 = v45[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult] | (v53 << 8);
  sub_100014D58(*&v45[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult], v54, v55);
  sub_100014D6C(v58 | v57, v54, v55);
  v43[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_hasEligibleAccountForProxSetup] = v56;
  v59 = v52[2];
  if (v59 == 1 || (v60 = *v52, v61 = v52[1], sub_100014D58(*v52, v61, v52[2]), , sub_100014D6C(v60, v61, v59), !v59))
  {

    v61 = 0;
    v59 = 0xE000000000000000;
  }

  v63 = v130;
  v62 = v131;
  v64 = v129;
  v65 = &v43[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_accountUserName];
  v66 = *&v43[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_accountUserName + 8];
  *v65 = v61;
  v65[1] = v59;

  *&v43[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_proxyDelegate + 8] = &off_1000213F0;
  swift_unknownObjectWeakAssign();
  v67 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_targetDevice;
  swift_beginAccess();
  sub_100006F60(&v45[v67], v16, &qword_1000259E8, &unk_100017410);
  v68 = *(v63 + 48);
  v69 = v132;
  v125 = v63 + 48;
  v124 = v68;
  if (v68(v16, 1, v132) == 1)
  {
    sub_100006FC8(v16, &qword_1000259E8, &unk_100017410);
  }

  else
  {
    v115 = v67;
    v116 = v45;
    v70 = v128;
    v114 = *(v63 + 32);
    v114(v128, v16, v69);
    v71 = v119;
    static PASLogger.common.getter();
    v72 = *(v63 + 16);
    v73 = v118;
    v72(v118, v70, v69);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *&v134 = v113;
      *v76 = 141558274;
      *(v76 + 4) = 1752392040;
      *(v76 + 12) = 2080;
      v72(v117, v73, v132);
      v77 = String.init<A>(describing:)();
      v79 = v78;
      (*(v130 + 8))(v73, v132);
      v80 = sub_100014D80(v77, v79, &v134);

      *(v76 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v74, v75, "Setting target Device to :%{mask.hash}s", v76, 0x16u);
      sub_1000054E8(v113);
      v63 = v130;

      v69 = v132;
    }

    else
    {

      (*(v63 + 8))(v73, v69);
    }

    (*(v121 + 8))(v71, v122);
    v64 = v129;
    v81 = v123;
    v114(v123, v128, v69);
    (*(v63 + 56))(v81, 0, 1, v69);
    v82 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetDevice;
    swift_beginAccess();
    sub_1000159D0(v81, &v43[v82], &qword_1000259E8, &unk_100017410);
    swift_endAccess();
    v62 = v131;
    v45 = v116;
    v67 = v115;
  }

  v83 = [objc_allocWithZone(SKDevice) init];
  v84 = [v62 identifier];
  [v83 setIdentifier:v84];

  v85 = [objc_allocWithZone(SKSetupAppleIDSignInClient) init];
  [v85 setPasswordType:2];
  [v85 setPeerDevice:v83];
  [v85 setPersistentPairing:0];

  sub_100006F60(v64 + v126, &v134, &qword_100026110, &qword_100017E78);
  v86 = *(&v135 + 1);
  if (*(&v135 + 1))
  {
    v87 = v137;
    v88 = sub_100006DEC(&v134, *(&v135 + 1));
    *(&v139 + 1) = v86;
    v140 = v87;
    v89 = sub_10000DEC8(&v138);
    (*(*(v86 - 8) + 16))(v89, v88, v86);
    sub_1000054E8(&v134);
  }

  else
  {
    sub_100006FC8(&v134, &qword_100026110, &qword_100017E78);
    v138 = 0u;
    v139 = 0u;
    v140 = 0;
  }

  v90 = v85;
  v91 = v43;
  v129 = v90;
  v92 = sub_1000155CC(v90, v91, &v138);
  v93 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_flowController;
  v94 = *&v45[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_flowController];
  *&v45[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_flowController] = v92;

  *&v92[OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_delegate + 8] = &off_1000213D8;
  swift_unknownObjectWeakAssign();

  v95 = v127;
  sub_100006F60(&v45[v67], v127, &qword_1000259E8, &unk_100017410);
  v96 = v132;
  if (v124(v95, 1, v132) == 1)
  {
    sub_100006FC8(v95, &qword_1000259E8, &unk_100017410);
  }

  else
  {
    v97 = v83;
    v98 = v130;
    v99 = *(v130 + 32);
    v100 = v120;
    v99(v120, v95, v96);
    v101 = *&v45[v93];
    if (v101)
    {
      v102 = v100;
      v103 = v123;
      v99(v123, v102, v96);
      (*(v98 + 56))(v103, 0, 1, v96);
      v104 = OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_targetDevice;
      swift_beginAccess();

      sub_1000159D0(v103, v101 + v104, &qword_1000259E8, &unk_100017410);
      swift_endAccess();
    }

    else
    {
      (*(v98 + 8))(v100, v96);
    }

    v83 = v97;
  }

  if ([v45 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v138 = 0u;
    v139 = 0u;
  }

  v134 = v138;
  v135 = v139;
  if (!*(&v139 + 1))
  {
    sub_100006FC8(&v134, &qword_1000260E8, &unk_100017E48);
    v107 = *&v45[v93];
    if (!v107)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  sub_100001E28(&qword_1000260F0, &qword_100017E58);
  if (swift_dynamicCast())
  {
    v105 = v133;
    v106 = String._bridgeToObjectiveC()();
    [v105 setIdleTimerDisabled:1 forReason:v106];
    swift_unknownObjectRelease();
  }

  v107 = *&v45[v93];
  if (v107)
  {
LABEL_36:
    v108 = *(v107 + 32);

    [v108 showProxCard];
  }

LABEL_37:
}

void sub_100013A2C(const char *a1)
{
  v3 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.common.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, a1, v11, 2u);
  }

  (*(v5 + 8))(v8, v4);
  if ([v3 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    sub_100001E28(&qword_1000260F0, &qword_100017E58);
    if (swift_dynamicCast())
    {
      v12 = v14[1];
      v13 = String._bridgeToObjectiveC()();
      [v12 setIdleTimerDisabled:0 forReason:v13];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100006FC8(v17, &qword_1000260E8, &unk_100017E48);
  }
}

id sub_100013C58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_device] = 0;
  v7 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_targetDevice;
  v8 = type metadata accessor for PASDevice();
  (*(*(v8 - 8) + 56))(&v4[v7], 1, 1, v8);
  *&v4[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_flowController] = 0;
  v9 = &v4[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 1;
  v10 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__targetAccountOptionsProvider;
  v11 = sub_100001E28(&qword_1000260F8, &qword_100017E60);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v4[v10] = PASService.init()();
  v14 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__extensionCache;
  v15 = sub_100001E28(&qword_100026100, &qword_100017E68);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v4[v14] = PASService.init()();
  v18 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__deviceProvider;
  v19 = sub_100001E28(&qword_100026108, &qword_100017E70);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *&v4[v18] = PASService.init()();
  v22 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_designatedExtension;
  v23 = type metadata accessor for PASLocatedExtension();
  (*(*(v23 - 8) + 56))(&v4[v22], 1, 1, v23);
  v24 = &v4[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_sourceViewDetails];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  if (a2)
  {
    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = 0;
  }

  v28.receiver = v4;
  v28.super_class = type metadata accessor for PASVSPrimaryViewController();
  v26 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", v25, a3);

  return v26;
}

id sub_100013EC8(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_device] = 0;
  v4 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_targetDevice;
  v5 = type metadata accessor for PASDevice();
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  *&v2[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_flowController] = 0;
  v6 = &v2[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 1;
  v7 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__targetAccountOptionsProvider;
  v8 = sub_100001E28(&qword_1000260F8, &qword_100017E60);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v2[v7] = PASService.init()();
  v11 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__extensionCache;
  v12 = sub_100001E28(&qword_100026100, &qword_100017E68);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *&v2[v11] = PASService.init()();
  v15 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__deviceProvider;
  v16 = sub_100001E28(&qword_100026108, &qword_100017E70);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *&v2[v15] = PASService.init()();
  v19 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_designatedExtension;
  v20 = type metadata accessor for PASLocatedExtension();
  (*(*(v20 - 8) + 56))(&v2[v19], 1, 1, v20);
  v21 = &v2[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_sourceViewDetails];
  v22 = type metadata accessor for PASVSPrimaryViewController();
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  v25.receiver = v2;
  v25.super_class = v22;
  v23 = objc_msgSendSuper2(&v25, "initWithCoder:", a1);

  if (v23)
  {
  }

  return v23;
}

id sub_1000140D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASVSPrimaryViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000141F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v9;
  v4[8] = v8;

  return _swift_task_switch(sub_1000142E8, v9, v8);
}

uint64_t sub_1000142E8()
{
  v1 = v0[2];
  v0[9] = PASLocatedExtension.handle.getter();
  v2 = async function pointer to PASExtensionHandle.didPerformLocalAuthentication()[1];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100014388;

  return PASExtensionHandle.didPerformLocalAuthentication()();
}

uint64_t sub_100014388()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_10001450C;
  }

  else
  {
    v7 = v2[9];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1000144A4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000144A4()
{
  v1 = v0[6];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001450C()
{
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  static PASLogger.common.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[11];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "PASVSPrimaryViewController setupFlowControllerDidPerformLocalAuthentication failed to notify extension: %{public}@", v9, 0xCu);
    sub_100006FC8(v10, &qword_1000259F8, &qword_100017438);
  }

  else
  {
    v12 = v0[11];
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v13 = v0[5];

  v14 = v0[1];

  return v14();
}

void sub_1000146CC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_10000E748;
    v4[3] = &unk_100021450;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setEventHandler:v3];
  _Block_release(v3);
}

id sub_100014774()
{
  v1 = [v0 messageSessionTemplate];

  return v1;
}

uint64_t type metadata accessor for PASVSPrimaryViewController()
{
  result = qword_1000260D0;
  if (!qword_1000260D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100014A30()
{
  sub_100014B60(319, &qword_100025DE0, &type metadata accessor for PASDevice);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100014B60(319, &qword_1000260E0, &type metadata accessor for PASLocatedExtension);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100014B60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_100014BB4()
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

uint64_t sub_100014C9C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_100014CFC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100014D80(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100014D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_100014D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_100014D80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014E4C(v11, 0, 0, 1, a1, a2);
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
    sub_100005470(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000054E8(v11);
  return v7;
}

unint64_t sub_100014E4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100014F58(a5, a6);
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

char *sub_100014F58(uint64_t a1, unint64_t a2)
{
  v4 = sub_100014FA4(a1, a2);
  sub_1000150D4(&off_100020CB8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100014FA4(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000151C0(v5, 0);
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
        v7 = sub_1000151C0(v10, 0);
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

uint64_t sub_1000150D4(uint64_t result)
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

  result = sub_100015234(result, v12, 1, v3);
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

void *sub_1000151C0(uint64_t a1, uint64_t a2)
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

  sub_100001E28(&qword_100026120, &qword_100017E88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100015234(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001E28(&qword_100026120, &qword_100017E88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

unint64_t sub_100015328(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100015400(a1, v4);
}

unint64_t sub_10001536C(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000154C8(a1, v4);
}

unint64_t sub_100015400(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100006F04(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100006EB0(v8);
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

unint64_t sub_1000154C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_1000155CC(uint64_t a1, void *a2, uint64_t a3)
{
  v14[3] = &type metadata for DTOStatusProvider;
  v14[4] = &off_100020ED8;
  v6 = type metadata accessor for PASVSSetupFlowController();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  sub_100015744(v14, &type metadata for DTOStatusProvider);
  v13[3] = &type metadata for DTOStatusProvider;
  v13[4] = &off_100020ED8;
  v10 = OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_targetDevice;
  v11 = type metadata accessor for PASDevice();
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  *&v9[OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 3) = &off_100021308;
  *(v9 + 4) = a2;
  *(v9 + 2) = a1;
  sub_10000DF94(v13, &v9[OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_dtoStatusProvider]);
  sub_100006F60(a3, &v9[OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_viewDetails], &qword_1000259F0, &unk_100017E90);
  [a2 setDelegate:v9];
  sub_100006FC8(a3, &qword_1000259F0, &unk_100017E90);
  sub_1000054E8(v13);
  sub_1000054E8(v14);
  return v9;
}

uint64_t sub_100015744(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100015794(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000157A4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000157EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000157FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
    v2 = *(v0 + 56);
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001584C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000536C;

  return sub_1000112B0(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_100015924()
{
  result = qword_100025E90;
  if (!qword_100025E90)
  {
    type metadata accessor for PASTargetAccountOptionsType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025E90);
  }

  return result;
}

uint64_t sub_10001597C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000159D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001E28(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100015A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015A50()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = *(*(sub_100001E28(&qword_100025B58, &qword_1000175B8) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = type metadata accessor for PASLocatedExtension();
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v10;
  v1[15] = v9;

  return _swift_task_switch(sub_100015BD8, v10, v9);
}

uint64_t sub_100015BD8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_designatedExtension;
  swift_beginAccess();
  sub_100006F60(v4 + v5, v3, &qword_100025B58, &qword_1000175B8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[13];
    v7 = v0[9];

    sub_100006FC8(v7, &qword_100025B58, &qword_1000175B8);
    v8 = v0[12];
    v9 = v0[8];
    v10 = v0[9];

    v11 = v0[1];

    return v11(1);
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    v0[16] = PASLocatedExtension.handle.getter();
    v13 = async function pointer to PASExtensionHandle.shouldPerformLocalAuthentication()[1];
    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_100015D84;

    return PASExtensionHandle.shouldPerformLocalAuthentication()();
  }
}

uint64_t sub_100015D84(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = *(v4 + 112);
    v8 = *(v4 + 120);
    v9 = sub_100015F60;
  }

  else
  {
    v10 = *(v4 + 128);

    *(v4 + 152) = a1 & 1;
    v7 = *(v4 + 112);
    v8 = *(v4 + 120);
    v9 = sub_100015EB8;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100015EB8()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 152);
  v6 = *(v0 + 96);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);

  v9 = *(v0 + 8);

  return v9(v5);
}

uint64_t sub_100015F60()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[8];

  static PASLogger.common.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "PASVSPrimaryViewController setupFlowControllerShouldPerformLocalAuthentication extension failed: %{public}@", v8, 0xCu);
    sub_100006FC8(v9, &qword_1000259F8, &qword_100017438);
  }

  v11 = v0[18];
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  v16 = v0[7];
  v15 = v0[8];
  v17 = v0[6];

  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v12, v14);
  v18 = v0[12];
  v19 = v0[8];
  v20 = v0[9];

  v21 = v0[1];

  return v21(1);
}