void sub_100001F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001FA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained dismissHandler];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 dismissHandler];
      v3[2]();

      [v4 setDismissHandler:0];
      WeakRetained = v4;
    }
  }
}

id sub_100002290(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Dismissing privacy presenter", buf, 2u);
  }

  v4.receiver = *(a1 + 32);
  v4.super_class = SESGDPRViewController;
  return objc_msgSendSuper2(&v4, "dismiss");
}

uint64_t sub_100002780(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002798(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained[2] setRootViewController:0];
  }

  v2 = objc_loadWeakRetained((a1 + 48));
  if (!v2)
  {
    v3 = +[UIApplication sharedApplication];
    [v3 requestSceneSessionDestruction:0 options:0 errorHandler:&stru_1000188F0];
  }

  [*(*(*(a1 + 32) + 8) + 40) deactivate];
}

void sub_100002854(id a1, NSError *a2)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Scene is being destroyed", v3, 2u);
  }
}

void sub_100002CCC()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SEStorageViewController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v1 = [v0 viewIfLoaded];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 layer];

    [v3 setHitTestsAsOpaque:v0[OBJC_IVAR____TtC15SESUIServiceApp23SEStorageViewController_blocksInput]];
  }

  if (qword_10001D7D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003F2C(v4, qword_10001DD20);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000E0EC(0x4C64694477656976, 0xED0000292864616FLL, &v9);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_100004190(v8);
  }
}

uint64_t sub_100002EC8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100004148(0, &qword_10001D878, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v0;
  aBlock[4] = sub_100003FF4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004604;
  aBlock[3] = &unk_100018B08;
  v13 = _Block_copy(aBlock);

  v14 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100003FFC();
  sub_100004054(&qword_10001D888, "@6");
  sub_10000409C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v17);
}

void sub_100003190(uint64_t a1, uint64_t a2)
{
  v3 = *(*(type metadata accessor for SEStorageView() - 8) + 64);
  __chkstk_darwin();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_25;
  }

  if (qword_10001D7E0 != -1)
  {
    v55 = Strong;
    swift_once();
    Strong = v55;
  }

  v5 = *(qword_10001DD50 + OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_currentClient);
  if (!v5 || (v6 = *(v5 + OBJC_IVAR____TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient_controller)) == 0)
  {

LABEL_25:
    if (qword_10001D7D0 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100003F2C(v52, qword_10001DD20);
    v51.super.isa = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51.super.isa, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v51.super.isa, v53, "SEStorageViewController or SEStorageManagementController is nil", v54, 2u);
    }

    goto LABEL_29;
  }

  v7 = Strong;
  v8 = qword_10001D7D0;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003F2C(v10, qword_10001DD20);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Presenting Space Management VC", v13, 2u);
  }

  v14 = v9;
  SEStorageView.init(controller:)();
  v15 = objc_allocWithZone(sub_100004054(&qword_10001D898, "B6"));
  v16 = UIHostingController.init(rootView:)();
  v17 = v7;
  v18 = v16;
  v19 = v17;
  v20 = v18;
  v21 = v19;
  v22 = v20;
  [v21 addChildViewController:v22];
  v23 = [v22 view];
  if (!v23)
  {
    __break(1u);
    goto LABEL_31;
  }

  v24 = v23;
  [v23 setAlpha:0.7];

  v25 = [v22 view];
  if (!v25)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v25 setBackgroundColor:0];

  v26 = [v22 view];
  if (!v26)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = [v21 view];
  if (!v27)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v28 = [v22 view];

  if (!v28)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v27 addSubview:v28];

  [v22 didMoveToParentViewController:a2];
  sub_100004054(&qword_10001D8A0, &qword_100011B18);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100011AD0;
  v30 = [v22 view];

  if (!v30)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v31 = [v30 widthAnchor];

  v32 = [v21 view];
  if (!v32)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v33 = [v32 widthAnchor];

  v34 = [v31 constraintEqualToAnchor:v33];
  *(v29 + 32) = v34;
  v35 = [v22 view];

  if (!v35)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v36 = [v35 heightAnchor];

  v37 = [v21 view];
  if (!v37)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v38 = [v37 heightAnchor];

  v39 = [v36 constraintEqualToAnchor:v38];
  *(v29 + 40) = v39;
  v40 = [v22 view];

  if (!v40)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v41 = [v40 centerXAnchor];

  v42 = [v21 view];
  if (!v42)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v43 = [v42 centerXAnchor];

  v44 = [v41 constraintEqualToAnchor:v43];
  *(v29 + 48) = v44;
  v45 = [v22 view];

  if (!v45)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v46 = [v45 centerYAnchor];

  v47 = [v21 view];
  if (v47)
  {
    v48 = objc_opt_self();
    v49 = [v47 centerYAnchor];

    v50 = [v46 constraintEqualToAnchor:v49];
    *(v29 + 56) = v50;
    sub_100004148(0, &qword_10001D8A8, NSLayoutConstraint_ptr);
    v51.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v48 activateConstraints:v51.super.isa];

LABEL_29:
    return;
  }

LABEL_42:
  __break(1u);
}

void sub_1000039D0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_10001D7D0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003F2C(v8, qword_10001DD20);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Dismissing Space Management VC", v11, 2u);
  }

  if (qword_10001D7E0 != -1)
  {
    swift_once();
  }

  v12 = qword_10001DD50;
  v13 = OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_currentClient;
  v14 = *(qword_10001DD50 + OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_currentClient);
  if (v14)
  {
    [*&v14[OBJC_IVAR____TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient_connection] invalidate];
    v14 = *(v12 + v13);
  }

  *(v12 + v13) = 0;

  if (a2)
  {
    v17[4] = a2;
    v17[5] = a3;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_100004604;
    v17[3] = &unk_100018A90;
    v15 = _Block_copy(v17);
  }

  else
  {
    v15 = 0;
  }

  v16 = type metadata accessor for SEStorageViewController();
  v18.receiver = v4;
  v18.super_class = v16;
  objc_msgSendSuper2(&v18, "dismissViewControllerAnimated:completion:", a1 & 1, v15);
  _Block_release(v15);
}

id sub_100003E7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEStorageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003ED4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100003EE4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003F2C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003F64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003F7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003FB4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100003FFC()
{
  result = qword_10001D880;
  if (!qword_10001D880)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D880);
  }

  return result;
}

uint64_t sub_100004054(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000409C()
{
  result = qword_10001D890;
  if (!qword_10001D890)
  {
    sub_100004100(&qword_10001D888, "@6");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D890);
  }

  return result;
}

uint64_t sub_100004100(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004148(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100004190(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_100004224()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100004280()
{
  if (qword_10001D7D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003F2C(v0, qword_10001DD38);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Starting Storage Server", v3, 2u);
  }

  if (qword_10001D7E0 != -1)
  {
    swift_once();
  }

  v4 = qword_10001DD50;
  sub_100004678();
  return v4;
}

id sub_1000043F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = type metadata accessor for AppDelegate();
  v6 = NSStringFromClass(v5);
  UIApplicationMain(argc, argv, 0, v6);

  return 0;
}

uint64_t sub_1000044B4()
{
  v0 = type metadata accessor for Logger();
  sub_1000045A0(v0, qword_10001DD20);
  sub_100003F2C(v0, qword_10001DD20);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100004520()
{
  v0 = type metadata accessor for Logger();
  sub_1000045A0(v0, qword_10001DD38);
  sub_100003F2C(v0, qword_10001DD38);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_1000045A0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100004604(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_100004648()
{
  result = [objc_allocWithZone(type metadata accessor for SEStorageServer()) init];
  qword_10001DD50 = result;
  return result;
}

void sub_100004678()
{
  v1 = v0;
  if (qword_10001D7D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003F2C(v2, qword_10001DD38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "SEStorageServer starting listener", v5, 2u);
  }

  __chkstk_darwin();
  v12[2] = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10000F99C;
  *(v6 + 24) = v12;
  aBlock[4] = sub_10001040C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000103FC;
  aBlock[3] = &unk_100018FB8;
  v7 = _Block_copy(aBlock);
  v8 = objc_opt_self();

  v9 = [v8 listenerWithConfigurator:v7];
  _Block_release(v7);

  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v1 + OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_listener);
    *(v1 + OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_listener) = v9;
    v11 = v9;

    if (v11)
    {
      [v11 activate];

      return;
    }
  }

  __break(1u);
}

id sub_1000048D4(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

void sub_100004994(void *a1, char *a2, void *a3)
{
  [a1 setTargetQueue:*&a2[OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_connectionQueue]];
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v6];

  [a1 setInterface:*&a2[OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_interface]];
  [a1 setInterfaceTarget:a3];
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a2;
  v23 = sub_10001012C;
  v24 = v7;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100005148;
  v22 = &unk_100019080;
  v8 = _Block_copy(&v19);
  v9 = a3;
  v10 = a2;

  [a1 setActivationHandler:v8];
  _Block_release(v8);
  v11 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  v23 = sub_100010170;
  v24 = v12;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100005148;
  v22 = &unk_1000190F8;
  v13 = _Block_copy(&v19);
  v14 = v9;

  [a1 setInvalidationHandler:v13];
  _Block_release(v13);
  v15 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v23 = sub_1000101B0;
  v24 = v16;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100005148;
  v22 = &unk_100019148;
  v17 = _Block_copy(&v19);
  v18 = v14;

  [a1 setInterruptionHandler:v17];
  _Block_release(v17);
}

uint64_t sub_100004C98(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004148(0, &qword_10001D878, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_100010314;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004604;
  aBlock[3] = &unk_100019238;
  v15 = _Block_copy(aBlock);
  v16 = a2;
  v17 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100010214(&qword_10001D880, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004054(&qword_10001D888, "@6");
  sub_10001025C(&qword_10001D890, &qword_10001D888, "@6");
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v8, v5);
  return (*(v9 + 8))(v12, v19);
}

void sub_100004F84(void *a1, uint64_t a2)
{
  if (qword_10001D7D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003F2C(v4, qword_10001DD38);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10000E0EC(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Client %s activated", v8, 0xCu);
    sub_100004190(v9);
  }

  v17 = *(a2 + OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_currentClient);
  *(a2 + OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_currentClient) = v5;
  v16 = v5;
}

void sub_100005148(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000051B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004148(0, &qword_10001D878, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  aBlock[4] = a5;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004604;
  aBlock[3] = v23;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100010214(&qword_10001D880, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004054(&qword_10001D888, "@6");
  sub_10001025C(&qword_10001D890, &qword_10001D888, "@6");
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v24);
}

void sub_100005494(void *a1, uint64_t a2, const char *a3)
{
  if (qword_10001D7D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003F2C(v5, qword_10001DD38);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10000E0EC(v13, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, a3, v9, 0xCu);
    sub_100004190(v10);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v18 = *&Strong[OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_currentClient];
  *&Strong[OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_currentClient] = 0;
}

uint64_t sub_100005664(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10000574C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() interfaceWithIdentifier:v0];

  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol:&OBJC_PROTOCOL____TtP16SESUIServiceCore35SEStorageManagementUIServerProtocol_];
  [v1 setServer:v3];

  v4 = [v2 protocolForProtocol:&OBJC_PROTOCOL____TtP16SESUIServiceCore35SEStorageManagementUIClientProtocol_];
  [v1 setClient:v4];

  [v1 setClientMessagingExpectation:0];
  [v1 copy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_100004148(0, &qword_10001DC58, BSServiceInterface_ptr);
  swift_dynamicCast();
  return v6;
}

id sub_1000058C0()
{
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v13 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  *&v0[OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_currentClient] = 0;
  v7 = OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_interface;
  *&v0[v7] = sub_10000574C();
  v12 = OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_connectionQueue;
  v8 = sub_100004148(0, &qword_10001D878, OS_dispatch_queue_ptr);
  v11[1] = "erviceApp.session";
  v11[2] = v8;
  static DispatchQoS.userInitiated.getter();
  v15 = &_swiftEmptyArrayStorage;
  sub_100010214(&qword_10001DC40, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004054(&qword_10001DC48, &unk_100011E38);
  sub_10001025C(&qword_10001DC50, &qword_10001DC48, &unk_100011E38);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v13);
  *&v0[v12] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_listener] = 0;
  v9 = type metadata accessor for SEStorageServer();
  v14.receiver = v0;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_100005C1C(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for SEStorageManagementUIClientXPCParameters.DeletePass();
  v2[24] = v6;
  v7 = *(v6 - 8);
  v2[25] = v7;
  v8 = *(v7 + 64) + 15;
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_100005D44, 0, 0);
}

uint64_t sub_100005D44()
{
  v1 = *(v0[19] + OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_currentClient);
  v0[27] = v1;
  if (v1)
  {
    v2 = v0[26];
    v4 = v0[23];
    v3 = v0[24];
    v5 = v0[18];
    v6 = v1;

    SEStorageManagementUIClientXPCParameters.DeletePass.init(passesToDelete:)();
    sub_100010214(&qword_10001DB78, 255, &type metadata accessor for SEStorageManagementUIClientXPCParameters.DeletePass);
    v7 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
    v0[28] = v7;
    v0[2] = v0;
    v0[7] = v4;
    v0[3] = sub_1000060BC;
    v8 = swift_continuation_init();
    v0[17] = sub_100004054(&qword_10001DB48, &qword_100011CB8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000063A0;
    v0[13] = &unk_100018B80;
    v0[14] = v8;
    [v6 deletePassEntry:v7 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_10001D7D8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003F2C(v9, qword_10001DD38);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Current Client does not exist", v12, 2u);
    }

    v13 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_100010214(&qword_10001DB40, 255, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v14 = 0xD00000000000001CLL;
    v14[1] = 0x8000000100014C20;
    (*(*(v13 - 8) + 104))(v14, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v13);
    swift_willThrow();
    v15 = v0[26];
    v17 = v0[22];
    v16 = v0[23];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1000060BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1000062E0;
  }

  else
  {
    v3 = sub_1000061CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000061CC()
{
  v1 = v0[27];
  v11 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  (*(v6 + 32))(v5, v0[23], v7);
  v8 = SEStorageManagementUIClientReturnValues.DeleteResult.snapshot.getter();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1000062E0()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  swift_willThrow();

  (*(v6 + 8))(v3, v5);
  v7 = v0[29];
  v8 = v0[26];
  v10 = v0[22];
  v9 = v0[23];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000063A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *sub_10000D9FC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100004054(&qword_10001DB58, &qword_100011CC0);
    v11 = swift_allocError();
    *v12 = a3;
    v13 = a3;

    return _swift_continuation_throwingResumeWithError(v10, v11);
  }

  else
  {
    sub_100010214(&qword_10001DB50, 255, &type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult);
    static SESOpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v6 + 32))(*(*(v10 + 64) + 40), v9, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100006550(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials();
  v2[24] = v6;
  v7 = *(v6 - 8);
  v2[25] = v7;
  v8 = *(v7 + 64) + 15;
  v2[26] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[27] = v9;
  v10 = *(v9 - 8);
  v2[28] = v10;
  v11 = *(v10 + 64) + 15;
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000066D4, 0, 0);
}

uint64_t sub_1000066D4()
{
  v68 = v0;
  v1 = *(v0[19] + OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_currentClient);
  v0[30] = v1;
  if (v1)
  {
    v2 = qword_10001D7D8;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = v0[18];
    v5 = type metadata accessor for Logger();
    sub_100003F2C(v5, qword_10001DD38);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[18];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v66 = v10;
      *v9 = 136315138;
      if (v8 >> 62)
      {
        if (v0[18] < 0)
        {
          v57 = v0[18];
        }

        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v11)
      {
        v67 = &_swiftEmptyArrayStorage;
        v12 = sub_10000E694(0, v11 & ~(v11 >> 63), 0);
        if (v11 < 0)
        {
          __break(1u);
          return _swift_continuation_await(v12);
        }

        v58 = v10;
        v59 = v9;
        v60 = v7;
        v61 = v6;
        v62 = v3;
        v13 = v67;
        v14 = v0[28];
        v65 = v0;
        if ((v8 & 0xC000000000000001) != 0)
        {
          v15 = 0;
          v63 = (v14 + 8);
          do
          {
            v16 = v0[29];
            v17 = v0[27];
            v18 = v0[18];
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            CredentialInternal.identifier.getter();
            v19 = UUID.uuidString.getter();
            v21 = v20;
            swift_unknownObjectRelease();
            (*v63)(v16, v17);
            v67 = v13;
            v23 = v13[2];
            v22 = v13[3];
            if (v23 >= v22 >> 1)
            {
              sub_10000E694((v22 > 1), v23 + 1, 1);
              v13 = v67;
            }

            ++v15;
            v13[2] = v23 + 1;
            v24 = &v13[2 * v23];
            v24[4] = v19;
            v24[5] = v21;
            v0 = v65;
          }

          while (v11 != v15);
        }

        else
        {
          v37 = (v0[18] + 32);
          v64 = (v14 + 8);
          do
          {
            v38 = v0[29];
            v39 = v0[27];
            v40 = *v37;
            CredentialInternal.identifier.getter();
            v41 = UUID.uuidString.getter();
            v43 = v42;

            (*v64)(v38, v39);
            v67 = v13;
            v45 = v13[2];
            v44 = v13[3];
            if (v45 >= v44 >> 1)
            {
              sub_10000E694((v44 > 1), v45 + 1, 1);
              v13 = v67;
            }

            v13[2] = v45 + 1;
            v46 = &v13[2 * v45];
            v46[4] = v41;
            v46[5] = v43;
            ++v37;
            --v11;
            v0 = v65;
          }

          while (v11);
        }

        v6 = v61;
        v3 = v62;
        v7 = v60;
        v10 = v58;
        v9 = v59;
      }

      v47 = Array.description.getter();
      v49 = v48;

      v50 = sub_10000E0EC(v47, v49, &v66);

      *(v9 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v6, v7, "Deleting credentials %s", v9, 0xCu);
      sub_100004190(v10);
    }

    v51 = v0[26];
    v53 = v0[23];
    v52 = v0[24];
    v54 = v0[18];

    SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials.init(credentialsToDelete:)();
    sub_100010214(&qword_10001DB60, 255, &type metadata accessor for SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials);
    v55 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
    v0[31] = v55;
    v0[2] = v0;
    v0[7] = v53;
    v0[3] = sub_100006D90;
    v56 = swift_continuation_init();
    v0[17] = sub_100004054(&qword_10001DB48, &qword_100011CB8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000063A0;
    v0[13] = &unk_100018B58;
    v0[14] = v56;
    [v3 deleteSecureElementCredentials:v55 completionHandler:v0 + 10];
    v12 = (v0 + 2);

    return _swift_continuation_await(v12);
  }

  if (qword_10001D7D8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100003F2C(v25, qword_10001DD38);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Current Client does not exist", v28, 2u);
  }

  v29 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_100010214(&qword_10001DB40, 255, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  *v30 = 0xD00000000000001CLL;
  v30[1] = 0x8000000100014C20;
  (*(*(v29 - 8) + 104))(v30, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v29);
  swift_willThrow();
  v31 = v0[29];
  v32 = v0[26];
  v34 = v0[22];
  v33 = v0[23];

  v35 = v0[1];

  return v35();
}

uint64_t sub_100006D90()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_100006FBC;
  }

  else
  {
    v3 = sub_100006EA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100006EA0()
{
  v2 = v0[30];
  v1 = v0[31];
  v12 = v0[29];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  (*(v7 + 32))(v6, v0[23], v8);
  v11 = SEStorageManagementUIClientReturnValues.DeleteResult.snapshot.getter();

  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v4, v5);

  v9 = v0[1];

  return v9(v11);
}

uint64_t sub_100006FBC()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[26];
  v11 = v0[22];
  v10 = v0[23];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10000708C()
{
  v1[18] = v0;
  v2 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_100007158, 0, 0);
}

uint64_t sub_100007158()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_currentClient);
  v0[23] = v1;
  if (v1)
  {
    v2 = v0[22];
    v0[2] = v0;
    v0[7] = v2;
    v0[3] = sub_100007448;
    v3 = swift_continuation_init();
    v0[17] = sub_100004054(&qword_10001DB48, &qword_100011CB8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000063A0;
    v0[13] = &unk_100018B30;
    v0[14] = v3;
    [v1 offloadMuirfieldWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_10001D7D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003F2C(v4, qword_10001DD38);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Current Client does not exist", v7, 2u);
    }

    v8 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_100010214(&qword_10001DB40, 255, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v9 = 0xD00000000000001CLL;
    v9[1] = 0x8000000100014C20;
    (*(*(v8 - 8) + 104))(v9, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v8);
    swift_willThrow();
    v11 = v0[21];
    v10 = v0[22];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100007448()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_100007628;
  }

  else
  {
    v3 = sub_100007558;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100007558()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  (*(v3 + 32))(v2, v0[22], v4);
  v5 = SEStorageManagementUIClientReturnValues.DeleteResult.snapshot.getter();

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_100007628()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000076A8()
{
  v1[18] = v0;
  v2 = type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss();
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000077C4, 0, 0);
}

uint64_t sub_1000077C4()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_currentClient);
  v0[25] = v1;
  if (v1)
  {
    v2 = qword_10001D7D8;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003F2C(v4, qword_10001DD38);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "User cancelled", v7, 2u);
    }

    v8 = v0[24];
    v10 = v0[21];
    v9 = v0[22];
    v11 = v0[19];
    v12 = v0[20];

    (*(v12 + 104))(v10, enum case for SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.cancelled(_:), v11);
    SEStorageManagementUIClientXPCParameters.Dismiss.init(context:)();
    sub_100010214(&qword_10001DB80, 255, &type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss);
    v13 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
    v0[26] = v13;
    v0[2] = v0;
    v0[3] = sub_100007C14;
    v14 = swift_continuation_init();
    v0[17] = sub_100004054(&qword_10001DB88, &qword_100011CF0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100007E84;
    v0[13] = &unk_100018BD0;
    v0[14] = v14;
    [v3 dismiss:v13 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_10001D7D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003F2C(v15, qword_10001DD38);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Current Client does not exist", v18, 2u);
    }

    v19 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_100010214(&qword_10001DB40, 255, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v20 = 0xD00000000000001CLL;
    v20[1] = 0x8000000100014C20;
    (*(*(v19 - 8) + 104))(v20, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v19);
    swift_willThrow();
    v21 = v0[24];
    v22 = v0[21];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100007C14()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_100007DCC;
  }

  else
  {
    v3 = sub_100007D24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100007D24()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);

  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100007DCC()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  swift_willThrow();

  (*(v6 + 8))(v3, v5);
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[21];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100007E84(uint64_t a1, void *a2)
{
  v3 = sub_10000D9FC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100004054(&qword_10001DB58, &qword_100011CC0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100007F30(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 224) = a1;
  v3 = type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext();
  *(v2 + 152) = v3;
  v4 = *(v3 - 8);
  *(v2 + 160) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v6 = type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss();
  *(v2 + 176) = v6;
  v7 = *(v6 - 8);
  *(v2 + 184) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_100008050, 0, 0);
}

uint64_t sub_100008050()
{
  v1 = *(*(v0 + 144) + OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_currentClient);
  *(v0 + 200) = v1;
  if (v1)
  {
    v2 = qword_10001D7D8;
    v27 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003F2C(v3, qword_10001DD38);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 224);
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v4, v5, "User completed with space %{BOOL}d", v7, 8u);
    }

    v8 = *(v0 + 192);
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    v11 = *(v0 + 152);
    v12 = *(v0 + 160);
    v13 = *(v0 + 224);

    v14 = &enum case for SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.sufficientSpace(_:);
    if (!v13)
    {
      v14 = &enum case for SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.insufficientSpace(_:);
    }

    (*(v12 + 104))(v10, *v14, v11);
    SEStorageManagementUIClientXPCParameters.Dismiss.init(context:)();
    sub_100010214(&qword_10001DB80, 255, &type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss);
    v15 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
    *(v0 + 208) = v15;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1000084C4;
    v16 = swift_continuation_init();
    *(v0 + 136) = sub_100004054(&qword_10001DB88, &qword_100011CF0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100007E84;
    *(v0 + 104) = &unk_100018BA8;
    *(v0 + 112) = v16;
    [v27 dismiss:v15 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    if (qword_10001D7D8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100003F2C(v17, qword_10001DD38);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Current Client does not exist", v20, 2u);
    }

    v21 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_100010214(&qword_10001DB40, 255, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v22 = 0xD00000000000001CLL;
    v22[1] = 0x8000000100014C20;
    (*(*(v21 - 8) + 104))(v22, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v21);
    swift_willThrow();
    v23 = *(v0 + 192);
    v24 = *(v0 + 168);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1000084C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_1000103D0;
  }

  else
  {
    v3 = sub_10001037C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000085D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008664;

  return sub_1000076A8();
}

uint64_t sub_100008664()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100008758(char a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100010380;

  return sub_100007F30(a1);
}

uint64_t sub_1000087F0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008888;

  return sub_100005C1C(a1);
}

uint64_t sub_100008888(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100008988(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100010408;

  return sub_100006550(a1);
}

uint64_t sub_100008A20()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100010408;

  return sub_10000708C();
}

uint64_t sub_100008AB0()
{
  if ([*(v0 + OBJC_IVAR____TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient_connection) remoteTarget])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    sub_100004054(&qword_10001DBD0, &unk_100011E28);
    if (swift_dynamicCast())
    {
      return v11;
    }
  }

  else
  {
    sub_10000F93C(v10, &qword_10001DBC8, &unk_100011E18);
  }

  if (qword_10001D7D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003F2C(v2, qword_10001DD38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to retrieve client proxy", v5, 2u);
  }

  v6 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_100010214(&qword_10001DB40, 255, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  *v7 = 0xD00000000000001CLL;
  v7[1] = 0x8000000100014C20;
  (*(*(v6 - 8) + 104))(v7, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v6);
  return swift_willThrow();
}

id sub_100008D00(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient_controller] = 0;
  UUID.init()();
  v6 = 0;
  v5 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  *&v1[OBJC_IVAR____TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient_connection] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SESpaceManagementRemoteClient();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_100008E1C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100008F2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient_identifier;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100008FA8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for SESPassImage();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = sub_100004054(&qword_10001DBA0, &qword_100011DF8);
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();
  v15 = type metadata accessor for SEStorageManagementSheet.DisplayConfiguration();
  v2[19] = v15;
  v16 = *(v15 - 8);
  v2[20] = v16;
  v17 = *(v16 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v18 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  v2[24] = v18;
  v19 = *(v18 - 8);
  v2[25] = v19;
  v20 = *(v19 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v21 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present();
  v2[28] = v21;
  v22 = *(v21 - 8);
  v2[29] = v22;
  v23 = *(v22 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1000092D8, 0, 0);
}

uint64_t sub_1000092D8()
{
  v142 = v0;
  if (qword_10001D7D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = type metadata accessor for Logger();
  *(v0 + 256) = sub_100003F2C(v6, qword_10001DD38);
  v137 = *(v3 + 16);
  v137(v1, v5, v2);
  v7 = v4;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 248);
  v12 = *(v0 + 224);
  v13 = *(v0 + 232);
  if (v10)
  {
    v122 = *(v0 + 216);
    v127 = *(v0 + 200);
    v129 = *(v0 + 192);
    log = v8;
    v14 = *(v0 + 40);
    v15 = swift_slowAlloc();
    v141[0] = swift_slowAlloc();
    *v15 = 136315394;
    v16 = v14;
    v124 = v9;
    v17 = [v16 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10000E0EC(v18, v20, v141);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    SEStorageManagementUIServerXPCParameters.Present.deviceConfiguration.getter();
    v22 = SEStorageManagementSheet.ProvisioningDeviceConfiguration.debugDescription.getter();
    v24 = v23;
    (*(v127 + 8))(v122, v129);
    v25 = *(v13 + 8);
    v25(v11, v12);
    v26 = sub_10000E0EC(v22, v24, v141);

    *(v15 + 14) = v26;
    _os_log_impl(&_mh_execute_header, log, v124, "Client %s starting session with snapshot %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v25 = *(v13 + 8);
    v25(v11, v12);
  }

  v28 = *(v0 + 200);
  v27 = *(v0 + 208);
  v29 = *(v0 + 192);
  v30 = *(v0 + 32);
  SEStorageManagementUIServerXPCParameters.Present.deviceConfiguration.getter();
  v31 = (*(v28 + 88))(v27, v29);
  *(v0 + 328) = v31;
  v32 = enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.currentDevice(_:);
  *(v0 + 332) = enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.currentDevice(_:);
  if (v31 != v32 && v31 != enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.pairedWatch(_:))
  {
    v33 = *(v0 + 240);
    v34 = *(v0 + 248);
    v35 = *(v0 + 208);
    v36 = *(v0 + 216);
    v37 = *(v0 + 192);
    v38 = *(v0 + 200);
    v39 = *(v0 + 184);
    v123 = *(v0 + 176);
    v125 = *(v0 + 168);
    v128 = *(v0 + 144);
    v130 = *(v0 + 120);
    v131 = *(v0 + 96);
    loga = *(v0 + 88);
    v138 = *(v0 + 64);
    v40 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_100010214(&qword_10001DB40, 255, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v41 = 0xD00000000000001CLL;
    v41[1] = 0x8000000100014A50;
    (*(*(v40 - 8) + 104))(v41, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v40);
    swift_willThrow();
    (*(v38 + 8))(v35, v37);

    v42 = *(v0 + 8);
LABEL_30:

    return v42();
  }

  v43 = *(v0 + 240);
  v44 = *(v0 + 224);
  v45 = *(v0 + 208);
  v46 = *(v0 + 32);
  (*(*(v0 + 200) + 96))(v45, *(v0 + 192));
  v47 = *v45;
  *(v0 + 264) = v47;
  v137(v43, v46, v44);
  v48 = v47;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  v51 = os_log_type_enabled(v49, v50);
  v52 = *(v0 + 240);
  if (v51)
  {
    v54 = *(v0 + 176);
    v53 = *(v0 + 184);
    v56 = *(v0 + 152);
    v55 = *(v0 + 160);
    v57 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v141[0] = v139;
    *v57 = 136315138;
    SEStorageManagementUIServerXPCParameters.Present.displayConfiguration.getter();
    (*(v55 + 16))(v54, v53, v56);
    v58 = (*(v55 + 88))(v54, v56);
    if (v58 == enum case for SEStorageManagementSheet.DisplayConfiguration.darkModeOverride(_:))
    {
      v59 = *(v0 + 232);
      v60 = *(v0 + 240);
      v61 = *(v0 + 224);
      v62 = 0x8000000100014AB0;
      (*(*(v0 + 160) + 8))(*(v0 + 184), *(v0 + 152));
      v25(v60, v61);
      v63 = 0xD000000000000012;
    }

    else
    {
      v66 = v58;
      v68 = *(v0 + 232);
      v67 = *(v0 + 240);
      v69 = *(v0 + 224);
      v70 = *(v0 + 184);
      if (v66 == enum case for SEStorageManagementSheet.DisplayConfiguration.currentSystemConfiguration(_:))
      {
        v62 = 0x8000000100014AD0;
        (*(*(v0 + 160) + 8))(v70, *(v0 + 152));
        v25(v67, v69);
        v63 = 0xD00000000000001CLL;
      }

      else
      {
        v132 = *(v0 + 240);
        logb = *(v0 + 176);
        v71 = *(v0 + 152);
        v72 = *(*(v0 + 160) + 8);
        v72(v70, v71);
        v25(v132, v69);
        v72(logb, v71);
        v62 = 0xEF746C7561666544;
        v63 = 0x206E776F6E6B6E55;
      }
    }

    v73 = sub_10000E0EC(v63, v62, v141);

    *(v57 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v49, v50, "Displaying in %s", v57, 0xCu);
    sub_100004190(v139);
  }

  else
  {
    v64 = *(v0 + 224);
    v65 = *(v0 + 232);

    v25(v52, v64);
  }

  v75 = *(v0 + 136);
  v74 = *(v0 + 144);
  v76 = *(v0 + 128);
  (*(v75 + 16))(v74, *(v0 + 40) + OBJC_IVAR____TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient__useMockPass, v76);
  UserDefaultBacked.wrappedValue.getter();
  (*(v75 + 8))(v74, v76);
  if ((*(v0 + 340) & 1) != 0 || (v77 = [objc_opt_self() sharedInstance], (*(v0 + 272) = v77) == 0))
  {
LABEL_25:
    v95 = *(v0 + 256);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Presentation ready, constructing controller", v98, 2u);
    }

    v99 = *(v0 + 32);

    SEStorageManagementUIServerXPCParameters.Present.proposedCredentials.getter();
    SEStorageManagementUIServerXPCParameters.Present.passes.getter();
    SEStorageManagementUIServerXPCParameters.Present.secureElementCredentials.getter();
    SEStorageManagementUIServerXPCParameters.Present.credentialConfigs.getter();
    SEStorageManagementUIServerXPCParameters.Present.muirfieldApplications.getter();
    SEStorageManagementUIServerXPCParameters.Present.eSimProfiles.getter();
    if (qword_10001D7E0 != -1)
    {
      swift_once();
    }

    v100 = *(v0 + 264);
    v116 = *(v0 + 248);
    v117 = *(v0 + 240);
    v118 = *(v0 + 216);
    v119 = *(v0 + 208);
    v120 = *(v0 + 184);
    v121 = *(v0 + 176);
    v101 = *(v0 + 168);
    v126 = *(v0 + 144);
    v102 = *(v0 + 120);
    v133 = *(v0 + 96);
    v140 = *(v0 + 88);
    v104 = *(v0 + 56);
    v103 = *(v0 + 64);
    v106 = *(v0 + 40);
    v105 = *(v0 + 48);
    v107 = *(v0 + 32);
    v108 = *(v0 + 328) == *(v0 + 332);
    v109 = qword_10001DD50;
    v141[3] = type metadata accessor for SEStorageServer();
    v141[4] = sub_100010214(&qword_10001DBA8, v110, type metadata accessor for SEStorageServer);
    v141[0] = v109;
    (*(v104 + 16))(v103, v106 + OBJC_IVAR____TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient_identifier, v105);
    v111 = v109;
    SEStorageManagementUIServerXPCParameters.Present.displayConfiguration.getter();
    v112 = objc_allocWithZone(type metadata accessor for SEStorageManagementController());
    v113 = SEStorageManagementController.init(snapshot:proposedCredentials:passes:passArts:secureElementCredentials:credentialConfigs:muirfieldApplications:eSimProfiles:managementHandler:provisioningOnCurrentDevice:clientIdentifier:displayConfiguration:)();

    v114 = *(v106 + OBJC_IVAR____TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient_controller);
    *(v106 + OBJC_IVAR____TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient_controller) = v113;

    v42 = *(v0 + 8);
    goto LABEL_30;
  }

  v78 = *(v0 + 32);
  v79 = SEStorageManagementUIServerXPCParameters.Present.passes.getter();
  *(v0 + 280) = v79;
  v87 = *(v79 + 16);
  *(v0 + 288) = v87;
  if (!v87)
  {

    goto LABEL_25;
  }

  v88 = *(v0 + 112);
  v89 = *(v88 + 80);
  *(v0 + 336) = v89;
  *(v0 + 296) = &_swiftEmptyDictionarySingleton;
  *(v0 + 304) = 0;
  if (*(v79 + 16))
  {
    v90 = *(v0 + 272);
    v91 = *(v0 + 120);
    (*(v88 + 16))(v91, v79 + ((v89 + 32) & ~v89), *(v0 + 104));
    v92 = swift_task_alloc();
    *(v0 + 312) = v92;
    *(v92 + 16) = v90;
    *(v92 + 24) = v91;
    *(v92 + 32) = xmmword_100011B50;
    v93 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v94 = swift_task_alloc();
    *(v0 + 320) = v94;
    v86 = sub_100004054(&qword_10001DBB0, &qword_100011E00);
    *v94 = v0;
    v94[1] = sub_100009EC0;
    v84 = sub_10000F02C;
    v82 = 0x28746E6573657270;
    v83 = 0xEB00000000293A5FLL;
    v79 = v0 + 16;
    v80 = 0;
    v81 = 0;
    v85 = v92;
  }

  else
  {
    __break(1u);
  }

  return withCheckedContinuation<A>(isolation:function:_:)(v79, v80, v81, v82, v83, v84, v85, v86);
}

uint64_t sub_100009EC0()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v4 = *v0;

  return _swift_task_switch(sub_100009FD8, 0, 0);
}

uint64_t sub_100009FD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 296);
  v3 = *(v0 + 120);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
  v79 = v9;
  SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
  v77 = v1;
  SESPassImage.init(passIdentifier:size:image:)();
  v10 = *(v7 + 32);
  v10(v5, v4, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 24) = v2;
  v12 = (v0 + 24);
  v13 = sub_10000EFB4(v8, v79);
  v15 = *(v2 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_24:
    v67 = v13;
    sub_10000F470();
    v13 = v67;
    goto LABEL_8;
  }

  LOBYTE(v4) = v14;
  if (*(*(v0 + 296) + 24) >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  sub_10000F038(v18, isUniquelyReferenced_nonNull_native);
  v19 = *v12;
  v13 = sub_10000EFB4(v8, v79);
  if ((v4 & 1) != (v20 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
  }

LABEL_8:
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);
  v23 = *(v0 + 72);
  if (v4)
  {
    v24 = v13;

    v25 = *v12;
    (*(v22 + 40))(v25[7] + *(v22 + 72) * v24, v21, v23);
  }

  else
  {
    v25 = *v12;
    v25[(v13 >> 6) + 8] |= 1 << v13;
    v26 = (v25[6] + 16 * v13);
    *v26 = v8;
    v26[1] = v79;
    v10(v25[7] + *(v22 + 72) * v13, v21, v23);

    v27 = v25[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v17)
    {
      __break(1u);
LABEL_26:
      swift_once();
LABEL_16:
      v45 = *(v0 + 264);
      v70 = *(v0 + 248);
      v71 = *(v0 + 240);
      v72 = *(v0 + 216);
      v73 = *(v0 + 208);
      v74 = *(v0 + 184);
      v75 = *(v0 + 176);
      v46 = *(v0 + 168);
      v76 = *(v0 + 144);
      v47 = *(v0 + 120);
      v78 = *(v0 + 96);
      v80 = *(v0 + 88);
      v49 = *(v0 + 56);
      v48 = *(v0 + 64);
      v51 = *(v0 + 40);
      v50 = *(v0 + 48);
      v52 = *(v0 + 32);
      v69 = *(v0 + 328) == *(v0 + 332);
      v53 = qword_10001DD50;
      type metadata accessor for SEStorageServer();
      sub_100010214(&qword_10001DBA8, v54, type metadata accessor for SEStorageServer);
      (*(v49 + 16))(v48, v51 + OBJC_IVAR____TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient_identifier, v50);
      v55 = v53;
      SEStorageManagementUIServerXPCParameters.Present.displayConfiguration.getter();
      v56 = objc_allocWithZone(type metadata accessor for SEStorageManagementController());
      v57 = SEStorageManagementController.init(snapshot:proposedCredentials:passes:passArts:secureElementCredentials:credentialConfigs:muirfieldApplications:eSimProfiles:managementHandler:provisioningOnCurrentDevice:clientIdentifier:displayConfiguration:)();

      v58 = *(v51 + OBJC_IVAR____TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient_controller);
      *(v51 + OBJC_IVAR____TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient_controller) = v57;

      v59 = *(v0 + 8);

      return v59();
    }

    v25[2] = v28;
  }

  v29 = *(v0 + 288);
  v30 = *(v0 + 304) + 1;
  v31 = (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  if (v30 == v29)
  {
    v39 = *(v0 + 280);

    v40 = *(v0 + 256);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Presentation ready, constructing controller", v43, 2u);
    }

    v44 = *(v0 + 32);

    SEStorageManagementUIServerXPCParameters.Present.proposedCredentials.getter();
    SEStorageManagementUIServerXPCParameters.Present.passes.getter();
    SEStorageManagementUIServerXPCParameters.Present.secureElementCredentials.getter();
    SEStorageManagementUIServerXPCParameters.Present.credentialConfigs.getter();
    SEStorageManagementUIServerXPCParameters.Present.muirfieldApplications.getter();
    SEStorageManagementUIServerXPCParameters.Present.eSimProfiles.getter();
    if (qword_10001D7E0 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  v60 = *(v0 + 304) + 1;
  *(v0 + 296) = v25;
  *(v0 + 304) = v60;
  v61 = *(v0 + 280);
  if (v60 >= *(v61 + 16))
  {
    __break(1u);
  }

  else
  {
    v62 = *(v0 + 272);
    v63 = *(v0 + 120);
    (*(*(v0 + 112) + 16))(v63, v61 + ((*(v0 + 336) + 32) & ~*(v0 + 336)) + *(*(v0 + 112) + 72) * v60, *(v0 + 104));
    v64 = swift_task_alloc();
    *(v0 + 312) = v64;
    *(v64 + 16) = v62;
    *(v64 + 24) = v63;
    *(v64 + 32) = xmmword_100011B50;
    v65 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v66 = swift_task_alloc();
    *(v0 + 320) = v66;
    v38 = sub_100004054(&qword_10001DBB0, &qword_100011E00);
    *v66 = v0;
    v66[1] = sub_100009EC0;
    v36 = sub_10000F02C;
    v34 = 0x28746E6573657270;
    v35 = 0xEB00000000293A5FLL;
    v31 = v0 + 16;
    v32 = 0;
    v33 = 0;
    v37 = v64;
  }

  return withCheckedContinuation<A>(isolation:function:_:)(v31, v32, v33, v34, v35, v36, v37, v38);
}

unint64_t SEStorageManagementSheet.ProvisioningDeviceConfiguration.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.currentDevice(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v12 = 0;
    v13 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v9 = 0x8000000100014A90;
    v12 = 0xD00000000000001DLL;
LABEL_5:
    v13 = v9;
    v10._countAndFlagsBits = SESnapshot.debugDescription.getter();
    String.append(_:)(v10);

    return v12;
  }

  if (v7 == enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.pairedWatch(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v12 = 0;
    v13 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v9 = 0x8000000100014A70;
    v12 = 0xD00000000000001BLL;
    goto LABEL_5;
  }

  (*(v3 + 8))(v6, v2);
  return 0xD00000000000001CLL;
}

void sub_10000A87C(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v25 = a2;
  v23 = a1;
  v22 = sub_100004054(&qword_10001DBC0, &qword_100011E10);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v22);
  v11 = &v22 - v10;
  v12 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
  v24 = String._bridgeToObjectiveC()();

  (*(v13 + 16))(v15, a3, v12);
  v16 = v22;
  (*(v8 + 16))(v11, v23, v22);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v17, v15, v12);
  (*(v8 + 32))(v19 + v18, v11, v16);
  aBlock[4] = sub_10000F844;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AF4C;
  aBlock[3] = &unk_100018F68;
  v20 = _Block_copy(aBlock);

  v21 = v24;
  [v25 snapshotWithUniqueID:v24 size:v20 completion:{a4, a5}];
  _Block_release(v20);
}

uint64_t sub_10000AB3C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (__chkstk_darwin)();
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  if (a1)
  {
    v14 = qword_10001D7D8;
    v15 = a1;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003F2C(v16, qword_10001DD38);
    (*(v7 + 16))(v13, a2, v6);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136315138;
      v21 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
      v35 = a3;
      v23 = v22;
      (*(v7 + 8))(v13, v6);
      v24 = sub_10000E0EC(v21, v23, &v36);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Found image for pass %s", v19, 0xCu);
      sub_100004190(v20);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }

    v36 = a1;
  }

  else
  {
    if (qword_10001D7D8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100003F2C(v25, qword_10001DD38);
    (*(v7 + 16))(v11, a2, v6);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136315138;
      v30 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
      v32 = v31;
      (*(v7 + 8))(v11, v6);
      v33 = sub_10000E0EC(v30, v32, &v36);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Image for pass %s is nil", v28, 0xCu);
      sub_100004190(v29);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    v36 = 0;
  }

  sub_100004054(&qword_10001DBC0, &qword_100011E10);
  return CheckedContinuation.resume(returning:)();
}

void sub_10000AF4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10000B140(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a2);
  sub_100010214(&qword_10001DB98, 255, &type metadata accessor for SEStorageManagementUIServerXPCParameters.Present);
  static SESOpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_100010404;

  return sub_100008FA8(v9);
}

uint64_t sub_10000B2C4(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_10000B388, 0, 0);
}

uint64_t sub_10000B388()
{
  v1 = v0[20];
  v2 = sub_100008AB0();
  v0[24] = v2;
  v3 = v0[23];
  v4 = v0[19];
  v5 = v2;
  type metadata accessor for SEStorageManagementUIClientXPCParameters.DeletePass();
  sub_100010214(&qword_10001DB78, 255, &type metadata accessor for SEStorageManagementUIClientXPCParameters.DeletePass);
  v6 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
  v0[25] = v6;
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_10000B56C;
  v7 = swift_continuation_init();
  v0[17] = sub_100004054(&qword_10001DB48, &qword_100011CB8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000063A0;
  v0[13] = &unk_100018EA0;
  v0[14] = v7;
  [v5 deletePassEntry:v6 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000B56C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_10000B718;
  }

  else
  {
    v3 = sub_10000B67C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000B67C()
{
  v1 = v0[24];
  v2 = v0[25];
  (*(v0[22] + 32))(v0[18], v0[23], v0[21]);
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000B718()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[26];
  v5 = v0[23];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10000B924(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for SEStorageManagementUIClientXPCParameters.DeletePass();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v10 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v3[8] = v13;
  v3[9] = _Block_copy(a2);
  sub_100010214(&qword_10001DB78, 255, &type metadata accessor for SEStorageManagementUIClientXPCParameters.DeletePass);
  static SESOpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v14 = swift_task_alloc();
  v3[10] = v14;
  *v14 = v3;
  v14[1] = sub_10000BB10;

  return sub_10000B2C4(v13, v9);
}

uint64_t sub_10000BB10()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = v9;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v14 = v2[7];
    v13 = v2[8];
    v15 = v2[6];
    sub_100010214(&qword_10001DB50, 255, &type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult);
    v12 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
    (*(v14 + 8))(v13, v15);
    v11 = v12;
    v10 = 0;
  }

  v17 = v2[8];
  v16 = v2[9];
  v18 = v2[5];
  (v16)[2](v16, v11, v10);

  _Block_release(v16);

  v19 = *(v8 + 8);

  return v19();
}

uint64_t sub_10000BD58(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_10000BE1C, 0, 0);
}

uint64_t sub_10000BE1C()
{
  v1 = v0[20];
  v2 = sub_100008AB0();
  v0[24] = v2;
  v3 = v0[23];
  v4 = v0[19];
  v5 = v2;
  type metadata accessor for SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials();
  sub_100010214(&qword_10001DB60, 255, &type metadata accessor for SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials);
  v6 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
  v0[25] = v6;
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_10000C000;
  v7 = swift_continuation_init();
  v0[17] = sub_100004054(&qword_10001DB48, &qword_100011CB8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000063A0;
  v0[13] = &unk_100018E00;
  v0[14] = v7;
  [v5 deleteSecureElementCredentials:v6 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000C000()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_1000103CC;
  }

  else
  {
    v3 = sub_1000103C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000C298(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v10 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v3[8] = v13;
  v3[9] = _Block_copy(a2);
  sub_100010214(&qword_10001DB60, 255, &type metadata accessor for SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials);
  static SESOpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v14 = swift_task_alloc();
  v3[10] = v14;
  *v14 = v3;
  v14[1] = sub_100010400;

  return sub_10000BD58(v13, v9);
}

uint64_t sub_10000C484(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10000C544, 0, 0);
}

uint64_t sub_10000C544()
{
  v1 = v0[19];
  v2 = sub_100008AB0();
  v0[23] = v2;
  v3 = v0[22];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_10000C6BC;
  v4 = v2;
  v5 = swift_continuation_init();
  v0[17] = sub_100004054(&qword_10001DB48, &qword_100011CB8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000063A0;
  v0[13] = &unk_100018D60;
  v0[14] = v5;
  [v4 offloadMuirfieldWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000C6BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_10000C858;
  }

  else
  {
    v3 = sub_10000C7CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000C7CC()
{
  v1 = v0[23];
  (*(v0[21] + 32))(v0[18], v0[22], v0[20]);
  swift_unknownObjectRelease();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10000C858()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[24];
  v4 = v0[22];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10000CA48(const void *a1, void *a2)
{
  v2[2] = a2;
  v5 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v2[3] = v5;
  v6 = *(v5 - 8);
  v2[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v2[5] = v8;
  v2[6] = _Block_copy(a1);
  a2;
  v9 = swift_task_alloc();
  v2[7] = v9;
  *v9 = v2;
  v9[1] = sub_10000CB68;

  return sub_10000C484(v8);
}

uint64_t sub_10000CB68()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v0)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    v10 = v2[4];
    v9 = v2[5];
    v11 = v2[3];
    sub_100010214(&qword_10001DB50, 255, &type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult);
    v12 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
    (*(v10 + 8))(v9, v11);
    v8 = v12;
    v7 = 0;
    v6 = v12;
  }

  v13 = v2[6];
  (v13)[2](v13, v8, v7);

  _Block_release(v13);

  v14 = *(v5 + 8);

  return v14();
}

uint64_t sub_10000CD44(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_10000CD64, 0, 0);
}

uint64_t sub_10000CD64()
{
  v1 = v0[19];
  v2 = sub_100008AB0();
  v0[20] = v2;
  v3 = v0[18];
  v4 = v2;
  type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss();
  sub_100010214(&qword_10001DB80, 255, &type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss);
  v5 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
  v0[21] = v5;
  v0[2] = v0;
  v0[3] = sub_10000CF2C;
  v6 = swift_continuation_init();
  v0[17] = sub_100004054(&qword_10001DB88, &qword_100011CF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100007E84;
  v0[13] = &unk_100018CC0;
  v0[14] = v6;
  [v4 dismiss:v5 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000CF2C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_10000D0A4;
  }

  else
  {
    v3 = sub_10000D03C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000D03C()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000D0A4()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[22];
  v5 = v0[1];

  return v5();
}

uint64_t sub_10000D2A8(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a2);
  sub_100010214(&qword_10001DB80, 255, &type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss);
  static SESOpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_10000D42C;

  return sub_10000CD44(v9);
}

uint64_t sub_10000D42C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  (*(v7 + 8))(v6, v8);

  v11 = *(v3 + 48);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 48), 0);
  }

  v14 = v4 + 40;
  v13 = *(v4 + 40);
  _Block_release(*(v14 + 8));

  v15 = *(v10 + 8);

  return v15();
}

uint64_t SEStorageManagementSheet.DisplayConfiguration.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SEStorageManagementSheet.DisplayConfiguration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for SEStorageManagementSheet.DisplayConfiguration.darkModeOverride(_:))
  {
    return 0xD000000000000012;
  }

  if (v7 == enum case for SEStorageManagementSheet.DisplayConfiguration.currentSystemConfiguration(_:))
  {
    return 0xD00000000000001CLL;
  }

  (*(v3 + 8))(v6, v2);
  return 0x206E776F6E6B6E55;
}

uint64_t type metadata accessor for SESpaceManagementRemoteClient()
{
  result = qword_10001DB20;
  if (!qword_10001DB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D80C()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000D8EC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000D8EC()
{
  if (!qword_10001DB30)
  {
    v0 = type metadata accessor for UserDefaultBacked();
    if (!v1)
    {
      atomic_store(v0, &qword_10001DB30);
    }
  }
}

uint64_t sub_10000D998(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000D9FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000DA40(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100010380;

  return v7();
}

uint64_t sub_10000DB28(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100008664;

  return v8();
}

uint64_t sub_10000DC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100004054(&qword_10001DB90, &qword_100011D00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_10000EA08(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000F93C(v11, &qword_10001DB90, &qword_100011D00);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_10000F93C(a3, &qword_10001DB90, &qword_100011D00);

    return v22;
  }

LABEL_8:
  sub_10000F93C(a3, &qword_10001DB90, &qword_100011D00);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10000DEFC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000DFF4;

  return v7(a1);
}

uint64_t sub_10000DFF4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000E0EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000E1B8(v11, 0, 0, 1, a1, a2);
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
    sub_10000D998(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004190(v11);
  return v7;
}

unint64_t sub_10000E1B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000E2C4(a5, a6);
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

char *sub_10000E2C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000E310(a1, a2);
  sub_10000E440(&off_100018A40);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000E310(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000E52C(v5, 0);
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
        v7 = sub_10000E52C(v10, 0);
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

uint64_t sub_10000E440(uint64_t result)
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

  result = sub_10000E5A0(result, v12, 1, v3);
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

void *sub_10000E52C(uint64_t a1, uint64_t a2)
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

  sub_100004054(&qword_10001DB68, &qword_100011CD0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000E5A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004054(&qword_10001DB68, &qword_100011CD0);
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

char *sub_10000E694(char *a1, int64_t a2, char a3)
{
  result = sub_10000E6B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000E6B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004054(&qword_10001DB70, &qword_100011CD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000E7C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100010380;

  return sub_10000D2A8(v2, v3, v4);
}

uint64_t sub_10000E87C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100010380;

  return sub_10000DA40(v2, v3, v5);
}

uint64_t sub_10000E93C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100010380;

  return sub_10000DB28(a1, v4, v5, v7);
}

uint64_t sub_10000EA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004054(&qword_10001DB90, &qword_100011D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EA78()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EAB0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100010380;

  return sub_10000DEFC(a1, v5);
}

uint64_t sub_10000EB68(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008664;

  return sub_10000DEFC(a1, v5);
}

uint64_t sub_10000EC20()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EC60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100010380;

  return sub_10000CA48(v2, v3);
}

uint64_t sub_10000ED0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100010380;

  return sub_10000C298(v2, v3, v4);
}

uint64_t sub_10000EDC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008664;

  return sub_10000B924(v2, v3, v4);
}

uint64_t sub_10000EE78()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000EEC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100010380;

  return sub_10000B140(v2, v3, v4);
}

uint64_t sub_10000EF74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10000EFB4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000F3B8(a1, a2, v6);
}

uint64_t sub_10000F038(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for SESPassImage();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100004054(&qword_10001DBB8, &qword_100011E08);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_10000F3B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

char *sub_10000F470()
{
  v1 = v0;
  v36 = type metadata accessor for SESPassImage();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004054(&qword_10001DBB8, &qword_100011E08);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_10000F6F0()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100004054(&qword_10001DBC0, &qword_100011E10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10000F844(void *a1)
{
  v3 = *(type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_100004054(&qword_10001DBC0, &qword_100011E10) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10000AB3C(a1, v1 + v4, v7);
}

uint64_t sub_10000F924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F93C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004054(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_10000F9B4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v54 = *(v4 - 8);
  v5 = v54[8];
  __chkstk_darwin();
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10001D7D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003F2C(v8, qword_10001DD38);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10000E0EC(0xD000000000000023, 0x8000000100014E00, aBlock);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s", v11, 0xCu);
    sub_100004190(v12);
  }

  v13 = &SESUIServiceBaseViewController__metaData;
  v14 = [a1 remoteProcess];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 hasEntitlement:v15];

  if (!v16)
  {
    v54 = a1;
    v55 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v55, v34))
    {

      v38 = v54;
LABEL_19:

      return;
    }

    v35 = swift_slowAlloc();
    *v35 = 67109120;
    v36 = [v54 remoteProcess];
    v37 = [v36 pid];

    *(v35 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v55, v34, "Rejecting connection from non-entitled process %d", v35, 8u);

LABEL_18:
    v38 = v55;
    goto LABEL_19;
  }

  v17 = objc_allocWithZone(type metadata accessor for SESpaceManagementRemoteClient());
  v18 = a1;
  v19 = sub_100008D00(v18);
  v20 = OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_currentClient;
  v21 = *&v2[OBJC_IVAR____TtC15SESUIServiceApp15SEStorageServer_currentClient];
  v55 = v19;
  if (v21)
  {
    v13 = v2;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      v26 = *&v2[v20];
      if (v26)
      {
        v27 = v25;
        v28 = v26;

        v29 = v54;
        (v54[2])(v7, v28 + OBJC_IVAR____TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient_identifier, v4);

        v30 = UUID.uuidString.getter();
        v32 = v31;
        (v29[1])(v7, v4);
        v33 = sub_10000E0EC(v30, v32, aBlock);

        *(v24 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v22, v23, "Exists currentClient %s, reject connection", v24, 0xCu);
        sub_100004190(v27);

        return;
      }

      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v39 = swift_allocObject();
  *(v39 + 16) = v2;
  *(v39 + 24) = v55;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1000100FC;
  *(v40 + 24) = v39;
  aBlock[4] = sub_100010104;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000103FC;
  aBlock[3] = &unk_100019030;
  v41 = _Block_copy(aBlock);
  v42 = v2;
  v43 = v55;

  [v18 configureConnection:v41];
  _Block_release(v41);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
LABEL_23:

    __break(1u);
    return;
  }

  v44 = v43;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v47 = 136315138;
    v48 = v44;
    v49 = [v48 description];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = sub_10000E0EC(v50, v52, aBlock);

    *(v47 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v45, v46, "Activating server connection with client %s", v47, 0xCu);
    sub_100004190(v55);
  }

  [v18 activate];
}

uint64_t sub_1000100BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010104()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100010134()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010214(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10001025C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004100(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000102B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}