uint64_t sub_100001738()
{
  v0 = type metadata accessor for Logger();
  sub_100006358(v0, qword_100011498);
  sub_10000622C(v0, qword_100011498);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000017BC()
{

  return _swift_deallocClassInstance(v0, 33, 7);
}

uint64_t sub_1000017FC()
{
  v1 = OBJC_IVAR____TtCC18FeedbackRemoteView28FeedbackRemoteViewController31RemoteEvaluationControllerState_remoteEvaluationRequest;
  v2 = type metadata accessor for FBKSRemoteEvaluationRequest();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_1000018A8(char a1)
{
  v2 = v1;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for FeedbackRemoteViewController();
  objc_msgSendSuper2(&v25, "viewWillAppear:", a1 & 1);
  v4 = [objc_opt_self() processInfo];
  v5 = [v4 environment];

  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v6 + 16))
  {
  }

  v7 = sub_10000507C(0xD000000000000014, 0x8000000100008160);
  if ((v8 & 1) == 0)
  {
  }

  v9 = (*(v6 + 56) + 16 * v7);
  v11 = *v9;
  v10 = v9[1];

  if ((FBKSHasInternalDiagnostics() & 1) == 0)
  {
  }

  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000622C(v12, qword_100011498);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100004AD4(v11, v10, &v24);
    _os_log_impl(&_mh_execute_header, v13, v14, "Using form from scheme %s", v15, 0xCu);
    sub_1000062AC(v16);
  }

  v17 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());
  v18 = FBKFeedbackForm.init(identifier:)();
  objc_allocWithZone(type metadata accessor for FBKFeedbackDraftViewController());
  v19 = v18;
  v20 = FBKFeedbackDraftViewController.init(feedbackForm:)();
  swift_unknownObjectRetain();
  dispatch thunk of FBKFeedbackDraftViewController.delegate.setter();
  type metadata accessor for FeedbackRemoteViewController.FormRequestState();
  v21 = swift_allocObject();
  *(v21 + 32) = 0;
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  v22 = *&v2[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state];
  *&v2[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state] = v21;
  return sub_10000641C(v22);
}

void sub_100001BAC(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for FeedbackRemoteViewController();
  objc_msgSendSuper2(&v10, "viewDidAppear:", a1 & 1);
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000622C(v4, qword_100011498);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100004AD4(0xD000000000000011, 0x8000000100008140, &v9);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", v7, 0xCu);
    sub_1000062AC(v8);
  }

  sub_100001E2C();
}

void sub_100001E2C()
{
  v1 = type metadata accessor for FBKSEvaluation.Subject();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(type metadata accessor for FBKSEvaluation.Action() - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin();
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state];
  if ((~v11 & 0xF000000000000007) == 0)
  {
    if (qword_100011490 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000622C(v12, qword_100011498);
    v46 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v46, v13, "Not configured yet. Will not present UI", v14, 2u);
    }

    v15 = v46;

    return;
  }

  v46 = v8;
  v16 = v11 & 0x7FFFFFFFFFFFFFFFLL;

  v17 = [v0 view];
  if (!v17)
  {
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = [v17 window];

  if (!v19)
  {
    if (qword_100011490 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000622C(v26, qword_100011498);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "No window. Will not present UI", v29, 2u);
    }

    sub_100004198();
    goto LABEL_34;
  }

  v20 = qword_100011490;
  if ((v11 & 0x8000000000000000) == 0)
  {
    v21 = *(v11 + 32);

    if (v21)
    {
      if (v20 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000622C(v22, qword_100011498);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Feedback UI already presented.", v25, 2u);
      }

      sub_10000641C(v11);
      goto LABEL_34;
    }

    v35 = v0;
    if (v20 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000622C(v36, qword_100011498);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Presenting Feedback UI", v39, 2u);
    }

    *(v11 + 32) = 1;
    v32 = *(v11 + 24);
    [v35 presentViewController:v32 animated:1 completion:0];
    sub_10000641C(v11);
LABEL_33:

LABEL_34:

    sub_10000641C(v11);
    return;
  }

  v30 = OBJC_IVAR____TtCC18FeedbackRemoteView28FeedbackRemoteViewController31RemoteEvaluationControllerState_isPresented;
  if (*(v16 + OBJC_IVAR____TtCC18FeedbackRemoteView28FeedbackRemoteViewController31RemoteEvaluationControllerState_isPresented))
  {
    if (qword_100011490 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000622C(v31, qword_100011498);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Evaluation Feedback UI already presented.", v34, 2u);
    }

    goto LABEL_33;
  }

  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_10000622C(v40, qword_100011498);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v45 = v30;
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Starting evaluation", v43, 2u);
    v30 = v45;
  }

  *(v16 + v30) = 1;
  v44 = *(v16 + OBJC_IVAR____TtCC18FeedbackRemoteView28FeedbackRemoteViewController31RemoteEvaluationControllerState_evaluationController);
  FBKSRemoteEvaluationRequest.action.getter();
  *v5 = FBKSRemoteEvaluationRequest.interaction.getter();
  (*(v2 + 104))(v5, enum case for FBKSEvaluation.Subject.interaction(_:), v1);
  FBKSRemoteEvaluationRequest.associateWithAppleAccount.getter();
  dispatch thunk of FBKEvaluationController.userDidPerformAction(action:subject:showFeedbackForm:associateWithAppleAccount:retryCount:)();

  sub_10000641C(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v10, v46);
}

uint64_t sub_10000259C()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_100006264(&qword_100011748, &qword_100007DA0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000063BC(v5, &qword_1000116E0, &unk_100007D90);
    return 0;
  }
}

void sub_100002674(void *a1, void (*a2)(void), void (*a3)(void))
{
  v4 = v3;
  v101 = a3;
  v97 = type metadata accessor for DispatchWorkItemFlags();
  v96 = *(v97 - 8);
  v7 = *(v96 + 64);
  __chkstk_darwin(v97);
  v94 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for DispatchQoS();
  v93 = *(v95 - 8);
  v9 = *(v93 + 64);
  __chkstk_darwin(v95);
  v92 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FBKSRemoteAlertRequest();
  v99 = *(v11 - 8);
  v12 = *(v99 + 64);
  v13 = __chkstk_darwin(v11);
  v91 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v84 - v15;
  __chkstk_darwin(v14);
  v98 = &v84 - v17;
  v18 = sub_10000259C();
  if (v18)
  {
    [v18 setAllowsAlertStacking:1];
    swift_unknownObjectRelease();
  }

  v100 = v11;
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000622C(v19, qword_100011498);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_100004AD4(0xD00000000000001BLL, 0x80000001000080A0, &aBlock);
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s", v22, 0xCu);
    sub_1000062AC(v23);
  }

  if (!a1)
  {
    __break(1u);
  }

  v24 = [a1 userInfo];
  if (!v24)
  {
    goto LABEL_28;
  }

  v25 = v24;
  v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v103 = 0x74736575716572;
  v104 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v26 + 16) || (v27 = sub_1000050F4(&aBlock), (v28 & 1) == 0))
  {

    sub_10000648C(&aBlock);
LABEL_28:
    v111 = 0u;
    v112 = 0u;
    goto LABEL_29;
  }

  sub_1000062F8(*(v26 + 56) + 32 * v27, &v111);
  sub_10000648C(&aBlock);

  if (!*(&v112 + 1))
  {
LABEL_29:
    sub_1000063BC(&v111, &qword_1000116E0, &unk_100007D90);
    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock = v65;
      *v64 = 136315138;
      *(v64 + 4) = sub_100004AD4(0xD00000000000001BLL, 0x80000001000080A0, &aBlock);
      _os_log_impl(&_mh_execute_header, v62, v63, "%s Failed to get request data.", v64, 0xCu);
      sub_1000062AC(v65);
    }

    if (a2)
    {
      a2();
      sub_100004198();
      return;
    }

    __break(1u);
    goto LABEL_38;
  }

  v89 = aBlock;
  v88 = v106;
  v29 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
  v30 = [a1 xpcEndpoint];
  if (!v30)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v29 _setEndpoint:v30];
  swift_unknownObjectRelease();
  v31 = objc_allocWithZone(NSXPCConnection);
  v87 = v29;
  v32 = [v31 initWithListenerEndpoint:v29];
  v33 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP15FeedbackService33RemoteViewControllerReplyProtocol_];
  [v32 setRemoteObjectInterface:v33];

  v109 = sub_1000035D4;
  v110 = 0;
  aBlock = _NSConcreteStackBlock;
  v106 = 1107296256;
  v107 = sub_1000035F4;
  v108 = &unk_10000C6F8;
  v34 = _Block_copy(&aBlock);
  [v32 setInvalidationHandler:v34];
  _Block_release(v34);
  v109 = sub_100003638;
  v110 = 0;
  aBlock = _NSConcreteStackBlock;
  v106 = 1107296256;
  v107 = sub_1000035F4;
  v108 = &unk_10000C720;
  v35 = _Block_copy(&aBlock);
  [v32 setInterruptionHandler:v35];
  _Block_release(v35);
  v90 = v32;
  [v32 resume];
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Anonymous xpc connection created", v38, 2u);
  }

  v109 = sub_100003658;
  v110 = 0;
  aBlock = _NSConcreteStackBlock;
  v106 = 1107296256;
  v107 = sub_1000037FC;
  v108 = &unk_10000C748;
  v39 = _Block_copy(&aBlock);
  v40 = [v90 remoteObjectProxyWithErrorHandler:v39];
  _Block_release(v39);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000062F8(&v111, &aBlock);
  sub_100006264(&qword_100011750, &qword_100007DA8);
  v41 = swift_dynamicCast();
  v42 = v103;
  if (!v41)
  {
    v42 = 0;
  }

  v43 = OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_feedbackd;
  v44 = *&v4[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_feedbackd];
  *&v4[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_feedbackd] = v42;
  swift_unknownObjectRelease();
  v102 = 0;
  v45 = SBSGetScreenLockStatus();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    LODWORD(v86) = v47;
    v48 = v45 != 0;
    v49 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    v85 = v43;
    v50 = aBlock;
    *v49 = 67240450;
    *(v49 + 4) = v48;
    *(v49 + 8) = 2082;
    swift_beginAccess();
    v51 = DarwinBoolean.description.getter();
    v53 = sub_100004AD4(v51, v52, &aBlock);

    *(v49 + 10) = v53;
    _os_log_impl(&_mh_execute_header, v46, v86, "Is device locked? [%{BOOL,public}d] passcodeRequired [%{public}s]", v49, 0x12u);
    sub_1000062AC(v50);
    v43 = v85;
  }

  v54 = v88;
  swift_beginAccess();
  if (!v102)
  {
    sub_1000067A8(&qword_100011758, 255, &type metadata accessor for FBKSRemoteAlertRequest);
    v66 = v100;
    static JSONCodable.decode(from:)();
    v67 = v99;
    v68 = *(v99 + 32);
    v69 = v98;
    v68(v98, v16, v66);
    sub_10000654C();
    v86 = static OS_dispatch_queue.main.getter();
    v70 = v67;
    v71 = *(v67 + 16);
    v72 = v91;
    v71(v91, v69, v66);
    v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v74 = (v12 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    v68((v75 + v73), v72, v66);
    *(v75 + v74) = v4;
    v76 = (v75 + ((v74 + 15) & 0xFFFFFFFFFFFFFFF8));
    v77 = v101;
    *v76 = a2;
    v76[1] = v77;
    v109 = sub_100006650;
    v110 = v75;
    aBlock = _NSConcreteStackBlock;
    v106 = 1107296256;
    v107 = sub_1000035F4;
    v108 = &unk_10000C7C0;
    v78 = _Block_copy(&aBlock);
    v79 = v4;
    sub_1000066EC(a2);

    v80 = v92;
    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_1000067A8(&qword_100011768, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_100006264(&qword_100011770, &qword_100007DB0);
    sub_1000066FC();
    v81 = v94;
    v82 = v97;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v83 = v86;
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    sub_1000064F8(v89, v88);
    _Block_release(v78);

    (*(v96 + 8))(v81, v82);
    (*(v93 + 8))(v80, v95);
    (*(v99 + 8))(v98, v66);
    goto LABEL_35;
  }

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Detected race condition with remote alert launching while device is locked from remote view", v57, 2u);
  }

  v58 = *&v4[v43];
  v59 = v89;
  if (v58)
  {
    v109 = sub_100003864;
    v110 = 0;
    aBlock = _NSConcreteStackBlock;
    v106 = 1107296256;
    v107 = sub_1000035F4;
    v108 = &unk_10000C770;
    v60 = _Block_copy(&aBlock);
    [v58 remoteViewControllerDidLaunchWhileLockedWithCompletion:v60];
    _Block_release(v60);
  }

  v61 = v87;
  if (a2)
  {
    a2();
    sub_100004198();

    sub_1000064F8(v59, v54);
LABEL_35:
    sub_1000062AC(&v111);
    return;
  }

LABEL_39:
  __break(1u);
  __break(1u);
}

uint64_t sub_1000035F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100003658()
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000622C(v0, qword_100011498);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    swift_errorRetain();
    sub_100006264(&qword_100011788, qword_100007DB8);
    v4 = String.init<A>(describing:)();
    v6 = sub_100004AD4(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Failed to connect to feedbackd from remote alert view controller: [%{public}s]", v2, 0xCu);
    sub_1000062AC(v3);
  }

  else
  {
  }
}

void sub_1000037FC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100003884(uint64_t a1, char *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v77 = a4;
  v78 = a2;
  v79 = a3;
  v5 = type metadata accessor for FBKSRemoteEvaluationRequest();
  v75 = *(v5 - 1);
  v76 = v5;
  v6 = *(v75 + 64);
  v7 = (__chkstk_darwin)();
  v74 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v73 - v9;
  v11 = type metadata accessor for FBKSRemoteAlertRequest();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v73 - v18;
  __chkstk_darwin(v17);
  v21 = (&v73 - v20);
  v22 = *(v12 + 16);
  v22(&v73 - v20, a1, v11);
  v23 = (*(v12 + 88))(v21, v11);
  if (v23 != enum case for FBKSRemoteAlertRequest.form(_:))
  {
    if (v23 != enum case for FBKSRemoteAlertRequest.evaluation(_:))
    {
      if (qword_100011490 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_10000622C(v59, qword_100011498);
      v22(v19, a1, v11);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v80 = v76;
        *v62 = 136315138;
        v22(v16, v19, v11);
        v63 = String.init<A>(describing:)();
        v65 = v64;
        v66 = *(v12 + 8);
        v66(v19, v11);
        v67 = sub_100004AD4(v63, v65, &v80);

        *(v62 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v60, v61, "Unknown request type %s. Closing the connection.", v62, 0xCu);
        sub_1000062AC(v76);
      }

      else
      {

        v66 = *(v12 + 8);
        v68 = (v66)(v19, v11);
      }

      if (v79)
      {
        v79(v68);
        sub_100004198();
        v66(v21, v11);
        goto LABEL_22;
      }

LABEL_29:
      __break(1u);
      return;
    }

    (*(v12 + 96))(v21, v11);
    v41 = v75;
    v40 = v76;
    v42 = v21;
    v43 = *(v75 + 32);
    v43(v10, v42, v76);
    if (qword_100011490 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000622C(v44, qword_100011498);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Configuring with Interaction", v47, 2u);
    }

    type metadata accessor for FBKEvaluationController();
    sub_1000067A8(&qword_100011780, v48, type metadata accessor for FeedbackRemoteViewController);
    v49 = v78;
    v50 = FBKEvaluationController.__allocating_init(delegate:)();
    dispatch thunk of FBKEvaluationController.blockPresentationDetentUsage.setter();
    v51 = v74;
    (*(v41 + 16))(v74, v10, v40);
    v52 = type metadata accessor for FeedbackRemoteViewController.RemoteEvaluationControllerState();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    v55 = swift_allocObject();
    *(v55 + OBJC_IVAR____TtCC18FeedbackRemoteView28FeedbackRemoteViewController31RemoteEvaluationControllerState_isPresented) = 0;
    v43((v55 + OBJC_IVAR____TtCC18FeedbackRemoteView28FeedbackRemoteViewController31RemoteEvaluationControllerState_remoteEvaluationRequest), v51, v40);
    *(v55 + OBJC_IVAR____TtCC18FeedbackRemoteView28FeedbackRemoteViewController31RemoteEvaluationControllerState_evaluationController) = v50;
    v56 = *&v49[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state];
    *&v49[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state] = v55 | 0x8000000000000000;
    v57 = v50;

    v58 = sub_10000641C(v56);
    if (v79)
    {
      v79(v58);

      (*(v41 + 8))(v10, v40);
      goto LABEL_22;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  (*(v12 + 96))(v21, v11);
  v24 = *v21;
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000622C(v25, qword_100011498);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Configuring with Form", v28, 2u);
  }

  type metadata accessor for FBKFeedbackForm();
  v29 = v24;
  v30 = FBKFeedbackForm.__allocating_init(serviceForm:)();
  v31 = objc_allocWithZone(type metadata accessor for FBKFeedbackDraftViewController());
  v32 = v30;
  v33 = FBKFeedbackDraftViewController.init(feedbackForm:)();
  v34 = v78;
  swift_unknownObjectRetain();
  dispatch thunk of FBKFeedbackDraftViewController.delegate.setter();
  type metadata accessor for FeedbackRemoteViewController.FormRequestState();
  v35 = swift_allocObject();
  *(v35 + 32) = 0;
  *(v35 + 16) = v32;
  *(v35 + 24) = v33;
  v36 = *&v34[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state];
  *&v34[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state] = v35;
  v37 = v32;
  v38 = v33;
  v39 = sub_10000641C(v36);
  if (!v79)
  {
    __break(1u);
    goto LABEL_28;
  }

  v79(v39);

LABEL_22:
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  sub_10000622C(v69, qword_100011498);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v70, v71, "Did configure remote alert controller", v72, 2u);
  }
}

void *sub_100004198()
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000622C(v0, qword_100011498);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_100004AD4(0x292865736F6C63, 0xE700000000000000, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_1000062AC(v4);
  }

  result = sub_10000259C();
  if (result)
  {
    [result invalidate];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10000448C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedbackRemoteViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FeedbackRemoteViewController.RemoteEvaluationControllerState()
{
  result = qword_1000115F0;
  if (!qword_1000115F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000045A8()
{
  result = type metadata accessor for FBKSRemoteEvaluationRequest();
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

uint64_t sub_100004934(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100004990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_100004A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FBKEvaluationControllerDelegate.evaluationDidComplete(controller:response:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100004AD4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004BA0(v11, 0, 0, 1, a1, a2);
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
    sub_1000062F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000062AC(v11);
  return v7;
}

unint64_t sub_100004BA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004CAC(a5, a6);
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

char *sub_100004CAC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004CF8(a1, a2);
  sub_100004E28(&off_10000C618);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004CF8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004F14(v5, 0);
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
        v7 = sub_100004F14(v10, 0);
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

uint64_t sub_100004E28(uint64_t result)
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

  result = sub_100004F88(result, v12, 1, v3);
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

void *sub_100004F14(uint64_t a1, uint64_t a2)
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

  sub_100006264(&qword_1000116C8, &qword_100007D88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004F88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006264(&qword_1000116C8, &qword_100007D88);
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

unint64_t sub_10000507C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100005138(a1, a2, v6);
}

unint64_t sub_1000050F4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000051F0(a1, v4);
}

unint64_t sub_100005138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000051F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000067F0(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000648C(v8);
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

void sub_1000054A8(void (*a1)(void))
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000622C(v2, qword_100011498);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_100004AD4(0xD000000000000026, 0x80000001000080F0, &v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
    sub_1000062AC(v6);
  }

  if (a1)
  {
    a1();
  }
}

void *sub_100005600(uint64_t a1, unint64_t a2)
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000622C(v4, qword_100011498);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100004AD4(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "Controller complete with ID: %{public}s", v7, 0xCu);
    sub_1000062AC(v8);
  }

  return sub_100004198();
}

void *sub_100005764()
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000622C(v0, qword_100011498);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    v5 = FBKDraftError.description.getter();
    v7 = sub_100004AD4(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Controller failed to start, error: %{public}s", v3, 0xCu);
    sub_1000062AC(v4);
  }

  return sub_100004198();
}

void sub_1000058C4(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000622C(v7, qword_100011498);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v10 = 136380931;
    sub_1000067A8(&qword_1000116D8, 255, &type metadata accessor for URL);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v3 + 8))(v6, v2);
    v14 = sub_100004AD4(v11, v13, &v19);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v15 = FBKAttachmentError.description.getter();
    v17 = sub_100004AD4(v15, v16, &v19);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Controller failed to attach, url: %{private}s error  %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

void *sub_100005B78()
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000622C(v0, qword_100011498);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Controller cancelled.", v3, 2u);
  }

  return sub_100004198();
}

void *sub_100005C64(void *a1)
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000622C(v2, qword_100011498);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    type metadata accessor for FBKSubmissionError();
    sub_1000067A8(&qword_1000116D0, 255, &type metadata accessor for FBKSubmissionError);
    v8 = Error.localizedDescription.getter();
    v10 = sub_100004AD4(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to submit feedback.%s", v6, 0xCu);
    sub_1000062AC(v7);
  }

  return sub_100004198();
}

void sub_100005E18(uint64_t (*a1)(void), const char *a2)
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000622C(v4, qword_100011498);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

void *sub_100005F10()
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000622C(v0, qword_100011498);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_100004AD4(0xD00000000000002DLL, 0x8000000100008070, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_1000062AC(v4);
  }

  return sub_100004198();
}

void *sub_100006064()
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000622C(v0, qword_100011498);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_100004AD4(0xD000000000000024, 0x8000000100008020, &v8);
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s %@", v3, 0x16u);
    sub_1000063BC(v4, &qword_1000116C0, &qword_100007D80);

    sub_1000062AC(v5);
  }

  return sub_100004198();
}

uint64_t sub_10000622C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006264(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000062AC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000062F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100006358(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000063BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006264(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000641C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_100006434(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006444()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000064E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000064F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10000654C()
{
  result = qword_100011760;
  if (!qword_100011760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100011760);
  }

  return result;
}

uint64_t sub_100006598()
{
  v1 = type metadata accessor for FBKSRemoteAlertRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v6))
  {
    v7 = *(v0 + v6 + 8);
  }

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

void sub_100006650()
{
  v1 = *(type metadata accessor for FBKSRemoteAlertRequest() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_100003884(v0 + v2, v4, v6, v7);
}

uint64_t sub_1000066EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000066FC()
{
  result = qword_100011778;
  if (!qword_100011778)
  {
    sub_100006760(&qword_100011770, &qword_100007DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011778);
  }

  return result;
}

uint64_t sub_100006760(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000067A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_100006970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

id sub_100006B10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}