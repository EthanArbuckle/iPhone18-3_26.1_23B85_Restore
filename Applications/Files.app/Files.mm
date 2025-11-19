int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  qword_1000945C8 = CFAbsoluteTimeGetCurrent();
  v17 = static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  qword_1000945D0 = v17;
  if (DOCIsInternalBuild())
  {
    v18 = objc_autoreleasePoolPush();
    sub_100002688();
    objc_autoreleasePoolPop(v18);
  }

  sub_10000623C();
  (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.userInitiated(_:), v12);
  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v16, v12);
  aBlock[4] = j__StartFINode;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_100089920;
  v20 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v28 = &_swiftEmptyArrayStorage;
  sub_100002C6C(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v27);
  v21 = static CommandLine.argc.getter();
  v22 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v21, v22, 0, v24);

  return 0;
}

void sub_100002688()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100002924(v12);
    v4 = [v0 standardUserDefaults];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 BOOLForKey:v5];

    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    sub_100002924(v12);
  }

  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithSuiteName:v8];

  if (v9)
  {
    sub_10000DB4C(&qword_1000934A0, &qword_1000737B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000736D0;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x8000000100074C10;
    *(inited + 48) = 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD000000000000015;
    *(inited + 88) = 0x8000000100074C30;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    sub_10000298C(inited);
    swift_setDeallocating();
    sub_10000DB4C(&qword_1000934A8, &qword_1000737B8);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 registerDefaults:isa];
  }
}

uint64_t sub_100002924(uint64_t a1)
{
  v2 = sub_10000DB4C(&qword_100093498, &qword_100074430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000298C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000DB4C(&unk_100093CB0, qword_1000744B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100034850(v4, &v13, &qword_1000934A8, &qword_1000737B8);
      v5 = v13;
      v6 = v14;
      result = sub_100009C94(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100002B74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_100002ABC(uint64_t a1, uint64_t a2, uint64_t a3)
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

_OWORD *sub_100002B74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100002B84(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100002BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002CB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002CFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002D44(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000DB94(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002DB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100002FFC()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v39 = *(v0 - 8);
  v40 = v0;
  v1 = *(v39 + 64);
  __chkstk_darwin();
  v38 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin();
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  setiopolicy_np(3, 0, 1);
  static os_signpost_type_t.event.getter();
  updated = updatePointsOfInterestHandler.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  (*(v12 + 8))(v15, v11);
  v36 = sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v48 = sub_100009BC8;
  v49 = 0;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100002DB0;
  v47 = &unk_10008F5E8;
  v18 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  v34 = sub_100002CB4(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  v33 = sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  v35 = sub_1000035DC();
  v19 = v3;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  v20 = *(v42 + 8);
  v42 += 8;
  v32 = v20;
  v20(v6, v3);
  v21 = v7 + 8;
  v22 = *(v7 + 8);
  v31 = v21;
  v23 = v37;
  v22(v10, v37);
  v25 = v38;
  v24 = v39;
  v26 = v40;
  (*(v39 + 104))(v38, enum case for DispatchQoS.QoSClass.userInitiated(_:), v40);
  v27 = static OS_dispatch_queue.global(qos:)();
  (*(v24 + 8))(v25, v26);
  v48 = sub_100003644;
  v49 = 0;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100002DB0;
  v47 = &unk_10008F610;
  v28 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v43 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  v32(v6, v19);
  v22(v10, v23);
  v29 = [objc_opt_self() defaultCenter];
  [v29 addObserver:v41 selector:"observedApplicationDidEnterBackgroundWithSender:" name:UIApplicationDidEnterBackgroundNotification object:0];

  return 1;
}

unint64_t sub_1000035DC()
{
  result = qword_100093420;
  if (!qword_100093420)
  {
    sub_10000DB94(&unk_100093A80, &qword_1000736E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093420);
  }

  return result;
}

void sub_100003644()
{
  v0 = [objc_opt_self() sharedInstance];
}

id sub_100003738(void *a1, void *a2)
{
  v4 = type metadata accessor for DOCUserActivityIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 userActivities];
  sub_100002B84(0, &unk_100093C60, NSUserActivity_ptr);
  sub_100003A30(&qword_1000941C0, &unk_100093C60, NSUserActivity_ptr);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_100005198(v10);

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = [v11 activityType];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  (*(v5 + 104))(v8, enum case for DOCUserActivityIdentifier.quickLook(_:), v4);
  v16 = DOCUserActivityIdentifier.rawValue.getter();
  v18 = v17;
  (*(v5 + 8))(v8, v4);
  if (v13 == v16 && v15 == v18)
  {

    goto LABEL_10;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
LABEL_10:
    v21 = [a1 role];
    v25 = objc_allocWithZone(UISceneConfiguration);
    v23 = String._bridgeToObjectiveC()();
    v24 = [v25 initWithName:v23 sessionRole:v21];

    goto LABEL_11;
  }

LABEL_8:
  v21 = [a1 role];
  v22 = objc_allocWithZone(UISceneConfiguration);
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 initWithName:v23 sessionRole:v21];
LABEL_11:

  return v24;
}

uint64_t sub_100003A30(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002B84(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100003A80(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v200 = a3;
  v193 = a2;
  v6 = type metadata accessor for Logger();
  v203 = *(v6 - 8);
  v7 = *(v203 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v184[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v184[-v12];
  v14 = __chkstk_darwin(v11);
  v16 = &v184[-v15];
  v17 = __chkstk_darwin(v14);
  v194 = &v184[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v184[-v20];
  v22 = __chkstk_darwin(v19);
  v196 = &v184[-v23];
  v24 = __chkstk_darwin(v22);
  v197 = &v184[-v25];
  v26 = __chkstk_darwin(v24);
  v201 = &v184[-v27];
  v28 = __chkstk_darwin(v26);
  v199 = &v184[-v29];
  __chkstk_darwin(v28);
  v31 = &v184[-v30];
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = v32;
    v188 = v16;
    v189 = v21;
    v187 = v13;
    v34 = objc_allocWithZone(UIWindowSceneActivationRequestOptions);
    v35 = a1;

    type metadata accessor for DRIMainViewController();
    v36 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v37 = *&v4[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
    v195 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController;
    *&v4[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController] = v36;
    v192 = v36;
    v38 = v36;

    v39 = [objc_allocWithZone(UIWindow) initWithWindowScene:v33];
    v40 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window;
    v41 = *&v4[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window];
    *&v4[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window] = v39;
    v42 = v39;

    if (v42)
    {
      [v42 setRootViewController:v38];
    }

    static Logger.Application.getter();
    v43 = v35;
    v44 = v38;
    v45 = v4;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    v198 = v45;

    v202 = v43;
    if (os_log_type_enabled(v46, v47))
    {
      v185 = v47;
      v190 = v6;
      v191 = v44;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v204[0] = v186;
      *v48 = 136316162;
      *(v48 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v204);
      *(v48 + 12) = 2080;
      v50 = [v33 session];
      v51 = [v50 persistentIdentifier];

      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = sub_100005D28(v52, v54, v204);

      *(v48 + 14) = v55;
      *(v48 + 22) = 2112;
      *(v48 + 24) = v33;
      *v49 = v33;
      *(v48 + 32) = 2112;
      v56 = *&v4[v40];
      if (!v56)
      {

        __break(1u);
        return;
      }

      v57 = v202;
      v58 = v56;
      v44 = v191;

      *(v48 + 34) = v58;
      *(v48 + 42) = 2112;
      *(v48 + 44) = v44;
      v59 = v192;
      v49[1] = v56;
      v49[2] = v59;
      v60 = v44;
      _os_log_impl(&_mh_execute_header, v46, v185, "%s: sceneIdentifier: %s scene: %@, window: %@, doc vc: %@", v48, 0x34u);
      sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v61 = *(v203 + 8);
      v6 = v190;
      v61(v31, v190);
    }

    else
    {

      v61 = *(v203 + 8);
      v61(v31, v6);
    }

    [*&v4[v40] makeKeyAndVisible];
    v70 = *&v4[v40];
    if (v70)
    {
      v71 = objc_allocWithZone(DOCAppearance);
      v72 = v70;
      v73 = [v71 init];
      [v72 setAppearance:v73];
    }

    v74 = objc_opt_self();
    v75 = [v74 sharedApplication];
    type metadata accessor for DOCApplication();
    v76 = swift_dynamicCastClass();
    if (v76)
    {
      v77 = *&v4[v195];
      if (v77)
      {
        v78 = v76;
        v79 = v77;
        [v79 setTabbedBrowserViewControllerDelegate:v78];
      }
    }

    v80 = [v74 sharedApplication];
    v81 = [v80 launchedToTest];

    if (v81)
    {
      v82 = v199;
      static Logger.Application.getter();
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v83, v84, "Launched in PPT, disabling scene restoration", v85, 2u);
      }

      v61(v82, v6);
      goto LABEL_38;
    }

    v86 = v200;
    v87 = [v200 URLContexts];
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    v88 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v88 & 0xC000000000000001) != 0)
    {
      v89 = __CocoaSet.count.getter();
    }

    else
    {
      v89 = *(v88 + 16);
    }

    v90 = v201;

    if (v89)
    {
      static Logger.Application.getter();
      v91 = v86;
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v191 = v44;
        v199 = v95;
        v204[0] = v95;
        *v94 = 136315394;
        *(v94 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v204);
        *(v94 + 12) = 2080;
        v96 = [v91 URLContexts];
        v200 = v61;
        v97 = v96;
        static Set._unconditionallyBridgeFromObjectiveC(_:)();
        v190 = v6;

        v98 = Set.description.getter();
        v100 = v99;

        v101 = sub_100005D28(v98, v100, v204);

        *(v94 + 14) = v101;
        _os_log_impl(&_mh_execute_header, v92, v93, "%s: Restore from urlContexts: %s", v94, 0x16u);
        swift_arrayDestroy();
        v44 = v191;

        (v200)(v201, v190);
      }

      else
      {

        v61(v90, v6);
      }

      v113 = [v91 URLContexts];
      v114 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000373C0(v114);
    }

    else
    {
      sub_1000602D4();
      if (v102)
      {
        v103 = v102;
        v104 = v197;
        static Logger.Application.getter();
        swift_unknownObjectRetain();
        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          v204[0] = v201;
          *v107 = 136315394;
          *(v107 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v204);
          *(v107 + 12) = 2080;
          v108 = [v103 description];
          v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v200 = v61;
          v111 = v110;

          v112 = sub_100005D28(v109, v111, v204);

          *(v107 + 14) = v112;
          _os_log_impl(&_mh_execute_header, v105, v106, "%s: Restore from folderNode: %s", v107, 0x16u);
          swift_arrayDestroy();

          (v200)(v197, v6);
        }

        else
        {

          v61(v104, v6);
        }

        swift_getObjectType();
        sub_10004BD6C(v103);
        swift_unknownObjectRelease();
        goto LABEL_38;
      }

      sub_1000612C4();
      if (v115)
      {
        v116 = v115;
        v117 = sub_1000612D0();
        if (v117)
        {
          v118 = v117;
          sub_10000DB4C(&qword_100093F90, &qword_100074650);
          v119 = swift_allocObject();
          *(v119 + 16) = xmmword_1000742D0;
          *(v119 + 32) = v118;

          v120 = v196;
          static Logger.Application.getter();

          v121 = Logger.logObject.getter();
          v122 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v204[0] = swift_slowAlloc();
            *v123 = 136315394;
            *(v123 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v204);
            *(v123 + 12) = 2080;
            sub_10000DB4C(&unk_100093BB0, &qword_100074428);
            v124 = Array.description.getter();
            v126 = sub_100005D28(v124, v125, v204);
            v200 = v61;
            v127 = v126;

            *(v123 + 14) = v127;
            _os_log_impl(&_mh_execute_header, v121, v122, "%s: Restore from quick look node: %s", v123, 0x16u);
            swift_arrayDestroy();

            (v200)(v196, v6);
          }

          else
          {

            v61(v120, v6);
          }

          sub_10003E2C8(v119);
          goto LABEL_31;
        }
      }

      v191 = v44;
      sub_1000607C8();
      if (!v134)
      {
        v153 = [v86 shortcutItem];
        if (v153)
        {
          v154 = v153;
          v155 = v194;
          static Logger.Application.getter();
          v156 = v154;
          v157 = Logger.logObject.getter();
          v158 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            v204[0] = v161;
            *v159 = 136315394;
            *(v159 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v204);
            *(v159 + 12) = 2112;
            *(v159 + 14) = v156;
            *v160 = v154;
            v162 = v156;
            _os_log_impl(&_mh_execute_header, v157, v158, "%s: Restore from shortcutItem: %@", v159, 0x16u);
            sub_100005A04(v160, &qword_1000937D0, &unk_1000743F0);

            sub_100034948(v161);
          }

          v61(v155, v6);
          v44 = v191;
          sub_100039484(v156);
        }

        else
        {
          v163 = [v193 stateRestorationActivity];
          v44 = v191;
          if (v163)
          {
            v164 = v163;
            v165 = v188;
            static Logger.Application.getter();
            v166 = v164;
            v167 = Logger.logObject.getter();
            v168 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v167, v168))
            {
              v169 = swift_slowAlloc();
              v201 = v166;
              v170 = v169;
              v171 = swift_slowAlloc();
              v172 = swift_slowAlloc();
              v204[0] = v172;
              *v170 = 136315394;
              *(v170 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v204);
              *(v170 + 12) = 2112;
              *(v170 + 14) = v201;
              *v171 = v164;
              v173 = v201;
              _os_log_impl(&_mh_execute_header, v167, v168, "%s: Restore from stateRestorationActivity: %@", v170, 0x16u);
              sub_100005A04(v171, &qword_1000937D0, &unk_1000743F0);
              v44 = v191;

              sub_100034948(v172);

              v166 = v201;
            }

            v61(v165, v6);
            v174 = v166;
            sub_10003F198(v164);

            goto LABEL_38;
          }

          v175 = [v86 userActivities];
          sub_100002B84(0, &unk_100093C60, NSUserActivity_ptr);
          sub_100003A30(&qword_1000941C0, &unk_100093C60, NSUserActivity_ptr);
          v176 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v177 = sub_100005198(v176);

          if (!v177)
          {
LABEL_38:
            v128 = sub_1000062FC();
            if (v128)
            {
              v129 = v128;
              sub_10000DB4C(&qword_100093F90, &qword_100074650);
              v130 = swift_allocObject();
              *(v130 + 16) = xmmword_1000742D0;
              *(v130 + 32) = v129;
              sub_100002B84(0, &qword_100093C58, UIDocumentBrowserAction_ptr);
              v131 = v44;
              v132 = v129;
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v131 setCustomActions:isa];
            }

            sub_100006844();
            sub_100006A34();

            return;
          }

          v178 = v187;
          static Logger.Application.getter();
          v156 = v177;
          v179 = Logger.logObject.getter();
          v180 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            v182 = swift_slowAlloc();
            v201 = swift_slowAlloc();
            v204[0] = v201;
            *v181 = 136315394;
            *(v181 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v204);
            *(v181 + 12) = 2112;
            *(v181 + 14) = v156;
            *v182 = v177;
            v183 = v156;
            _os_log_impl(&_mh_execute_header, v179, v180, "%s: Restore from userActivity: %@", v181, 0x16u);
            sub_100005A04(v182, &qword_1000937D0, &unk_1000743F0);
            v44 = v191;

            sub_100034948(v201);
          }

          v61(v178, v6);
          sub_10004F004(v156);
        }

        goto LABEL_38;
      }

      v137 = v134;
      v138 = v135;
      v139 = v136;
      v140 = v189;
      static Logger.Application.getter();

      v141 = v137;
      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v201 = v138;
        v145 = v144;
        v146 = swift_slowAlloc();
        v190 = v6;
        v147 = v146;
        v148 = swift_slowAlloc();
        v200 = v61;
        v204[0] = v148;
        *v145 = 136315650;
        *(v145 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v204);
        *(v145 + 12) = 2112;
        *(v145 + 14) = v141;
        *v147 = v137;
        if (v139)
        {
          v149 = v201;
        }

        else
        {
          v149 = 0;
        }

        if (v139)
        {
          v150 = v139;
        }

        else
        {
          v150 = 0xE000000000000000;
        }

        *(v145 + 22) = 2080;
        v151 = v141;

        v152 = sub_100005D28(v149, v150, v204);

        *(v145 + 24) = v152;
        _os_log_impl(&_mh_execute_header, v142, v143, "%s: Restore from concrete location: %@ tag: %s", v145, 0x20u);
        sub_100005A04(v147, &qword_1000937D0, &unk_1000743F0);

        swift_arrayDestroy();

        v138 = v201;

        (v200)(v140, v190);
      }

      else
      {

        v61(v140, v6);
      }

      v44 = v191;
      sub_1000419F8(v141, v138, v139);
    }

LABEL_31:

    goto LABEL_38;
  }

  static Logger.Application.getter();
  v62 = a1;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v204[0] = v66;
    *v65 = 136315138;
    swift_getObjectType();
    v67 = _typeName(_:qualified:)();
    v69 = sub_100005D28(v67, v68, v204);

    *(v65 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v63, v64, "Denying creation of browser window / scene.  Unexpected scene type received: %s)", v65, 0xCu);
    sub_100034948(v66);
  }

  (*(v203 + 8))(v10, v6);
}

void sub_1000050A4()
{
  sub_1000055A0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100005198(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000639B8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000639B8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_100063068(v3, v5, v2 != 0, a1, &unk_100093C60, NSUserActivity_ptr);
  v13 = v12;
  sub_1000639B8(v3, v5, v2 != 0);
  return v13;
}

id sub_1000052C8()
{
  *&v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController] = 0;
  *&v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController] = 0;
  *&v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_sourceOrderObserver] = 0;
  v1 = &v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_newWindowActivityIdentifier];
  *v1 = 0xD000000000000024;
  *(v1 + 1) = 0x8000000100075BF0;
  v2 = &v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_stateRestorationActivityIdentifier];
  *v2 = 0xD000000000000026;
  *(v2 + 1) = 0x8000000100075C20;
  v3 = &v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_stateRestorationURLKey];
  *v3 = 0xD00000000000002BLL;
  *(v3 + 1) = 0x8000000100075C50;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for BrowserSceneDelegate();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_100005458()
{
  v1 = OBJC_IVAR____TtC5Files21DRIMainViewController____lazy_storage___internalConfiguration;
  v2 = *(v0 + OBJC_IVAR____TtC5Files21DRIMainViewController____lazy_storage___internalConfiguration);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Files21DRIMainViewController____lazy_storage___internalConfiguration);
  }

  else
  {
    v4 = [objc_opt_self() configurationForImportingDocumentContentTypes:0 mode:1];
    [v4 setInProcess:1];
    [v4 setNeverCreateBookmarkForOpenInPlace:1];
    [v4 setUseSharedQuickLook:1];
    [v4 setPickingItemsShouldBumpLastOpenDate:0];
    [v4 setShouldOpenInApp:1];
    [v4 setSupportsRemovableFileProviders:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t type metadata accessor for DRIMainViewController()
{
  result = qword_100093E90;
  if (!qword_100093E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000055A0()
{
  if (!qword_100093EA0)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100093EA0);
    }
  }
}

id sub_1000055F8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentLocationTitleObserver] = 0;
  v3 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC5Files21DRIMainViewController_quicklookStateRestorationActivityIdentifier];
  *v5 = 0xD000000000000024;
  *(v5 + 1) = 0x8000000100076200;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController____lazy_storage___internalConfiguration] = 0;
  if (a1)
  {
    type metadata accessor for UTType();
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for DRIMainViewController();
  v7 = objc_msgSendSuper2(&v9, "initForOpeningContentTypes:", v6.super.isa);

  return v7;
}

void sub_1000057BC()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  updated = updatePointsOfInterestHandler.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  (*(v3 + 8))(v6, v2);
  v8 = type metadata accessor for DRIMainViewController();
  v12.receiver = v1;
  v12.super_class = v8;
  objc_msgSendSuper2(&v12, "viewDidLoad");
  [v1 setAllowsDocumentCreation:0];
  [v1 setDelegate:v1];
  v11[1] = v1;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v10 = *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentLocationTitleObserver];
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentLocationTitleObserver] = v9;
}

uint64_t sub_1000059C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005A04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000DB4C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005A70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100005BC0(v8);

    v2 = v9;
    if (v9)
    {
      v3 = v10;
      sub_100006C6C(v8, v9);
      (*(v3 + 32))(v2, v3);
      sub_100034948(v8);
    }

    else
    {
      sub_100005A04(v8, &unk_100093F30, &unk_1000745C8);
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_100005BC0(v8);

    v6 = v9;
    if (v9)
    {
      v7 = v10;
      sub_100006C6C(v8, v9);
      (*(v7 + 24))(v6, v7);
      return sub_100034948(v8);
    }

    else
    {
      return sub_100005A04(v8, &unk_100093F30, &unk_1000745C8);
    }
  }

  return result;
}

double sub_100005BC0@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 viewIfLoaded];
  v4 = [v3 window];

  v5 = [v4 windowScene];
  if (!v5 || (v6 = [v5 delegate], v5, !v6) || (sub_10000DB4C(&qword_100093F48, qword_1000745E8), sub_10000DB4C(&qword_100093F40, &unk_1000745D8), (swift_dynamicCast() & 1) == 0))
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100005CC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005D28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005DF4(v11, 0, 0, 1, a1, a2);
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
    sub_100005CC8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100034948(v11);
  return v7;
}

unint64_t sub_100005DF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006030(a5, a6);
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

char *sub_100005F00(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000607C(v5, 0);
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
        v7 = sub_10000607C(v10, 0);
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

char *sub_100006030(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005F00(a1, a2);
  sub_1000060F4(&off_1000898B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

void *sub_10000607C(uint64_t a1, uint64_t a2)
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

  sub_10000DB4C(&qword_100093A58, &unk_1000743D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1000060F4(uint64_t result)
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

  result = sub_100047E34(result, v12, 1, v3);
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

unint64_t sub_1000061E8()
{
  result = qword_100094500;
  if (!qword_100094500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094500);
  }

  return result;
}

unint64_t sub_10000623C()
{
  result = qword_100093A70;
  if (!qword_100093A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100093A70);
  }

  return result;
}

uint64_t sub_1000062A0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

id sub_1000062FC()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 supportsMultipleScenes];

  v7 = 0;
  if (!v6)
  {
    return v7;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v9 = result;
    v34._object = 0x8000000100075820;
    v10._countAndFlagsBits = 0x617A696C61636F4CLL;
    v11._object = 0x8000000100075800;
    v12._object = 0x8000000100075800;
    v34._countAndFlagsBits = 0xD000000000000043;
    v11._countAndFlagsBits = 0xD000000000000012;
    v10._object = 0xEB00000000656C62;
    v12._countAndFlagsBits = 0xD000000000000012;
    DOCLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v34);

    v13 = UIDocumentBrowserActionIdentifierNewWindow;
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = objc_allocWithZone(UIDocumentBrowserAction);
    v16 = v13;

    v17 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_100051D40;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047930;
    aBlock[3] = &unk_10008E8F8;
    v18 = _Block_copy(aBlock);
    v7 = [v15 initWithIdentifier:v16 localizedTitle:v17 resolvedHandler:v18];

    _Block_release(v18);

    if (v7)
    {
      [v7 setMenuSortOrder:9];
      [v7 setAvailability:1];
      [v7 setSupportsMultipleItems:0];
      v19 = String._bridgeToObjectiveC()();
      v20 = [objc_opt_self() systemImageNamed:v19];

      [v7 setImage:v20];
    }

    sub_100002B84(0, &qword_100093B08, NSPredicate_ptr);
    v21 = static NSPredicate.validateAction(_:)();
    if (v7)
    {
      sub_10000DB4C(&qword_100093A28, qword_100074AD0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100073FE0;
      static UTType.folder.getter();
      v23 = UTType.identifier.getter();
      v25 = v24;
      (*(v1 + 8))(v4, v0);
      *(v22 + 32) = v23;
      *(v22 + 40) = v25;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v7 setSupportedContentTypes:isa];

      v27 = static NSPredicate.validateAction(_:)();
      sub_10000DB4C(&qword_100093F90, &qword_100074650);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1000742E0;
      *(v28 + 32) = v21;
      *(v28 + 40) = v27;
      v29 = v21;
      v30 = v27;
      v31 = Array._bridgeToObjectiveC()().super.isa;

      v32 = [objc_opt_self() andPredicateWithSubpredicates:v31];

      [v7 setFilteringPredicate:v32];
    }

    else
    {
      v30 = static NSPredicate.validateAction(_:)();
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000680C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100006844()
{
  v1 = v0;
  v2 = type metadata accessor for DOCNavigationBar.Style();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  UITraitCollection.preferredNavigationBarStyle.getter();

  LOBYTE(v7) = DOCNavigationBar.Style.hasHistoryButtons.getter();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NavigateHistoryIntent();
    objc_allocWithZone(type metadata accessor for UIAppIntentInteraction());
    sub_10005D97C(&qword_100093FC0, &type metadata accessor for NavigateHistoryIntent);

    v8 = UIAppIntentInteraction.init<A>(intent:perform:)();
    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      [v9 addInteraction:v8];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100006A34()
{
  v1 = v0;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for SearchFileShortcutsIntent();
  v2 = type metadata accessor for UIAppIntentInteraction();
  objc_allocWithZone(v2);
  sub_10005D97C(&qword_100093F98, &type metadata accessor for SearchFileShortcutsIntent);

  v3 = UIAppIntentInteraction.init<A>(intent:perform:)();
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 addInteraction:v3];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for SearchInBrowserIntent();
  objc_allocWithZone(v2);
  sub_10005D97C(&qword_100093FA0, &type metadata accessor for SearchInBrowserIntent);

  v6 = UIAppIntentInteraction.init<A>(intent:perform:)();
  v7 = [v1 view];
  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 addInteraction:v6];
}

void *sub_100006C6C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *sub_100006CC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000DB4C(&qword_100093A28, qword_100074AD0);
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

void sub_100006DD0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (!v8)
  {
    return;
  }

  v40 = v5;
  v9 = v8;
  v10 = [v9 presentedViewController];
  if (v10)
  {
    v11 = v10;
    v12 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController;
    v13 = *&v9[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    if (v13)
    {
      sub_100002B84(0, &qword_1000937E0, UIViewController_ptr);
      v14 = v11;
      v15 = v13;
      v16 = static NSObject.== infix(_:_:)();

      if ((v16 & 1) != 0 && ([v14 doc_hasDisappearedOrIsDisappearing] & 1) == 0)
      {
        v22 = *&v9[v12];
        if (v22)
        {
          v23 = [v22 currentPreviewItem];
          if (v23)
          {
            v24 = v23;
            if ([v23 respondsToSelector:"previewItemTitle"])
            {
              v25 = [v24 previewItemTitle];
              swift_unknownObjectRelease();
              if (v25)
              {
                v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v21 = v26;

                goto LABEL_17;
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }
        }

LABEL_16:
        v19 = 0;
        v21 = 0;
        goto LABEL_17;
      }
    }
  }

  v17 = [v9 currentLocationTitle];
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

LABEL_17:

  static Logger.Application.getter();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39[1] = v1;
    v43 = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_100005D28(0xD000000000000013, 0x80000001000754B0, &v43);
    *(v29 + 12) = 2080;
    v41 = v19;
    v42 = v21;
    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v31 = String.init<A>(describing:)();
    v33 = sub_100005D28(v31, v32, &v43);
    v39[0] = v9;
    v34 = v33;

    *(v29 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "[Interaction] %s to: %s", v29, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v7, v40);
    v9 = v39[0];
  }

  else
  {

    (*(v3 + 8))(v7, v40);
  }

  v35 = [v9 viewIfLoaded];

  if (v35 && (v36 = [v35 window], v35, v36) && (v37 = objc_msgSend(v36, "windowScene"), v36, v37))
  {
    if (v21)
    {
      v38 = String._bridgeToObjectiveC()();
    }

    else
    {
      v38 = 0;
    }

    [v37 setTitle:v38];
  }

  else
  {
  }

  sub_100007284();
}

void sub_100007284()
{
  v1 = v0;
  v2 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v160[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v160[-v8];
  __chkstk_darwin(v7);
  v11 = &v160[-v10];
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v176 = &v160[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v177 = &v160[-v17];
  v18 = type metadata accessor for Logger();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v160[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v20);
  v24 = __chkstk_darwin(v23);
  v25 = __chkstk_darwin(v24);
  v27 = &v160[-v26];
  __chkstk_darwin(v25);
  v32 = &v160[-v31];
  v33 = *&v1[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
  if (!v33)
  {
    return;
  }

  v172 = v30;
  v173 = v29;
  v175 = v28;
  v178 = v33;
  v34 = [v178 viewIfLoaded];
  if (v34)
  {
    v171 = v13;
    v174 = v18;
    v35 = v34;
    v36 = [v34 window];

    if (v36)
    {
      v37 = [v36 windowScene];

      if (v37)
      {
        v169 = v37;
        static Logger.Application.getter();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        v40 = os_log_type_enabled(v38, v39);
        v170 = v6;
        v168 = v12;
        if (v40)
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          aBlock[0] = v42;
          *v41 = 136315138;
          *(v41 + 4) = sub_100005D28(0xD000000000000021, 0x80000001000754D0, aBlock);
          _os_log_impl(&_mh_execute_header, v38, v39, "[Interaction] %s", v41, 0xCu);
          sub_100034948(v42);
        }

        v43 = *(v175 + 8);
        v43(v32, v174);
        v44 = [v178 presentedViewController];

        if (!v44)
        {
          goto LABEL_12;
        }

        v166 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController;
        v45 = *&v178[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
        if (!v45 || (sub_100002B84(0, &qword_1000937E0, UIViewController_ptr), v46 = v44, v47 = v45, v48 = static NSObject.== infix(_:_:)(), v47, v46, (v48 & 1) == 0) || ([v46 doc_hasDisappearedOrIsDisappearing] & 1) != 0)
        {

LABEL_12:
          static Logger.Application.getter();
          v49 = v1;
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            aBlock[0] = v53;
            *v52 = 136315138;
            v54 = v49;
            v55 = [v54 description];
            v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v167 = v43;
            v58 = v57;

            v59 = sub_100005D28(v56, v58, aBlock);

            *(v52 + 4) = v59;
            _os_log_impl(&_mh_execute_header, v50, v51, "[Interaction] update scene activation conditions on: %s for no presented view controller", v52, 0xCu);
            sub_100034948(v53);

            v167(v22, v174);
          }

          else
          {

            v43(v22, v174);
          }

          v62 = v169;
          v61 = v170;
          (*(v171 + 56))(v170, 1, 1, v168);
          sub_100008480(v61, v49, v178, v62);

          v63 = v61;
          goto LABEL_19;
        }

        static Logger.Application.getter();
        v64 = v46;
        v65 = v1;
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();

        v68 = os_log_type_enabled(v66, v67);
        v167 = v43;
        v164 = v65;
        v165 = v64;
        if (v68)
        {
          v69 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          aBlock[0] = v163;
          *v69 = 136315906;
          *(v69 + 4) = sub_100005D28(0xD000000000000021, 0x80000001000754D0, aBlock);
          *(v69 + 12) = 2080;
          v70 = v65;
          v71 = [v70 description];
          LODWORD(v162) = v67;
          v72 = v64;
          v73 = v71;
          v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v75;

          v77 = sub_100005D28(v74, v76, aBlock);

          *(v69 + 14) = v77;
          *(v69 + 22) = 2080;
          v78 = v72;
          v79 = [v78 description];
          v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v82 = v81;

          v83 = sub_100005D28(v80, v82, aBlock);

          *(v69 + 24) = v83;
          *(v69 + 32) = 1024;
          LODWORD(v83) = [v78 isBeingDismissed];

          *(v69 + 34) = v83;
          _os_log_impl(&_mh_execute_header, v66, v162, "[Interaction] 1. %s on: %s for QLVC: %s isBeingDismissed: %{BOOL}d", v69, 0x26u);
          swift_arrayDestroy();

          v84 = v174;
          v167(v27, v174);
        }

        else
        {

          v84 = v174;
          v43(v27, v174);
        }

        v85 = v169;
        v86 = v170;
        v87 = v168;
        v88 = v166;
        v89 = *&v166[v178];
        if (v89 && (v90 = [v89 currentPreviewItem]) != 0)
        {
          v91 = [v90 previewItemURL];
          swift_unknownObjectRelease();
          if (v91)
          {
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v92 = 0;
          }

          else
          {
            v92 = 1;
          }

          v94 = v171;
          v93 = *(v171 + 56);
          (v93)(v9, v92, 1, v87);
          sub_10000B2A8(v9, v11);
          if ((*(v94 + 48))(v11, 1, v87) != 1)
          {
            v166 = v93;
            v124 = v177;
            (*(v94 + 32))(v177, v11, v87);
            static Logger.Application.getter();
            v125 = v94 + 16;
            v126 = v176;
            v163 = *(v94 + 16);
            v163(v176, v124, v87);
            v127 = v165;
            v128 = v164;
            v129 = Logger.logObject.getter();
            v130 = static os_log_type_t.default.getter();
            v172 = v127;

            if (os_log_type_enabled(v129, v130))
            {
              v131 = swift_slowAlloc();
              v165 = swift_slowAlloc();
              aBlock[0] = v165;
              *v131 = 136315906;
              *(v131 + 4) = sub_100005D28(0xD000000000000021, 0x80000001000754D0, aBlock);
              *(v131 + 12) = 2080;
              v132 = v128;
              v161 = v130;
              v133 = v132;
              v134 = [v132 description];
              v135 = v94;
              v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v164 = v128;
              v138 = v137;

              v139 = sub_100005D28(v136, v138, aBlock);

              *(v131 + 14) = v139;
              *(v131 + 22) = 2080;
              v140 = v172;
              v141 = [v140 description];
              v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v144 = v143;

              v145 = sub_100005D28(v142, v144, aBlock);

              *(v131 + 24) = v145;
              *(v131 + 32) = 2080;
              sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL);
              v146 = v176;
              v147 = v168;
              v148 = dispatch thunk of CustomStringConvertible.description.getter();
              v162 = v125;
              v149 = v129;
              v150 = v148;
              v152 = v151;
              v153 = *(v135 + 8);
              v153(v146, v147);
              v154 = sub_100005D28(v150, v152, aBlock);

              *(v131 + 34) = v154;
              _os_log_impl(&_mh_execute_header, v149, v161, "[Interaction] 2. %s on: %s for QLVC: %s with URL: %s", v131, 0x2Au);
              swift_arrayDestroy();

              v167(v173, v174);
              v87 = v147;
              v155 = v164;
            }

            else
            {

              v153 = *(v94 + 8);
              v155 = v128;
              v153(v126, v87);
              v167(v173, v84);
            }

            v156 = v170;
            v157 = v177;
            v163(v170, v177, v87);
            (v166)(v156, 0, 1, v87);
            v158 = v155;
            v159 = v169;
            sub_100008480(v156, v158, v178, v169);

            sub_100005A04(v156, &qword_100093F50, &qword_100074090);
            v153(v157, v87);
            return;
          }

          v88 = v166;
        }

        else
        {
          v93 = *(v171 + 56);
          (v93)(v11, 1, 1, v87);
        }

        sub_100005A04(v11, &qword_100093F50, &qword_100074090);
        v95 = *&v88[v178];
        v96 = v164;
        if (v95 && [v95 currentPreviewItem])
        {
          objc_opt_self();
          v97 = swift_dynamicCastObjCClass();
          if (v97)
          {
            v98 = v97;
            v99 = [v97 fpItem];
            if (v99)
            {
              v177 = v99;
              v166 = v93;
              v100 = v172;
              static Logger.Application.getter();
              v101 = v96;
              v102 = Logger.logObject.getter();
              v103 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v102, v103))
              {
                v104 = swift_slowAlloc();
                LODWORD(v173) = v103;
                v105 = v104;
                v176 = swift_slowAlloc();
                aBlock[0] = v176;
                *v105 = 136315394;
                *(v105 + 4) = sub_100005D28(0xD000000000000021, 0x80000001000754D0, aBlock);
                *(v105 + 12) = 2080;
                v106 = v101;
                v107 = [v106 description];
                v108 = v101;
                v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v111 = v110;

                v86 = v170;
                v87 = v168;
                v112 = sub_100005D28(v109, v111, aBlock);
                v85 = v169;

                *(v105 + 14) = v112;
                v101 = v108;
                _os_log_impl(&_mh_execute_header, v102, v173, "[Interaction] 2.1 %s on: %s setting predicate to nil before doing async fetch URL", v105, 0x16u);
                swift_arrayDestroy();
              }

              v167(v100, v174);
              (v166)(v86, 1, 1, v87);
              sub_100008480(v86, v101, v178, v85);
              sub_100005A04(v86, &qword_100093F50, &qword_100074090);
              v113 = [objc_opt_self() defaultManager];
              v114 = swift_allocObject();
              v115 = v178;
              v114[2] = v98;
              v114[3] = v115;
              v116 = v165;
              v114[4] = v101;
              v114[5] = v116;
              v114[6] = v85;
              aBlock[4] = sub_10004DB98;
              aBlock[5] = v114;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1000526E0;
              aBlock[3] = &unk_10008E538;
              v117 = v101;
              v118 = _Block_copy(aBlock);
              v119 = v178;
              v120 = v116;
              v121 = v117;
              swift_unknownObjectRetain();
              v122 = v85;

              v123 = v177;
              [v113 fetchURLForItem:v177 completionHandler:v118];

              _Block_release(v118);
              swift_unknownObjectRelease();

              return;
            }
          }

          swift_unknownObjectRelease();
        }

        (v93)(v86, 1, 1, v87);
        sub_100008480(v86, v96, v178, v85);

        v63 = v86;
LABEL_19:
        sub_100005A04(v63, &qword_100093F50, &qword_100074090);
        return;
      }
    }
  }

  v60 = v178;
}

uint64_t sub_100008428()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100008480(uint64_t a1, void *a2, void *a3, void *a4)
{
  v69 = a4;
  v7 = type metadata accessor for URL();
  v67 = *(v7 - 8);
  v8 = *(v67 + 64);
  __chkstk_darwin(v7);
  v64 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v10 = *(*(v62 - 8) + 64);
  v11 = __chkstk_darwin(v62);
  v66 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v57 - v14;
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  v18 = type metadata accessor for Logger();
  v65 = *(v18 - 8);
  v19 = *(v65 + 64);
  __chkstk_darwin(v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  sub_100034850(a1, v17, &qword_100093F50, &qword_100074090);
  v22 = a2;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v68 = v15;
  v63 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v58 = v18;
    v27 = v26;
    v57 = swift_slowAlloc();
    v70[0] = v57;
    *v27 = 136315650;
    *(v27 + 4) = sub_100005D28(0xD000000000000019, 0x8000000100075500, v70);
    *(v27 + 12) = 2080;
    v28 = v22;
    v61 = a3;
    v29 = v28;
    v30 = [v28 description];
    v60 = v7;
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = a1;
    v33 = v32;
    v35 = v34;

    v36 = sub_100005D28(v33, v35, v70);

    *(v27 + 14) = v36;
    *(v27 + 22) = 2080;
    sub_100034850(v17, v15, &qword_100093F50, &qword_100074090);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    sub_100005A04(v17, &qword_100093F50, &qword_100074090);
    v40 = v37;
    a3 = v61;
    v41 = sub_100005D28(v40, v39, v70);
    v7 = v60;

    *(v27 + 24) = v41;
    a1 = v59;
    _os_log_impl(&_mh_execute_header, v23, v24, "[Interaction] %s on: %s updatePredicateWith: %s", v27, 0x20u);
    swift_arrayDestroy();

    (*(v65 + 8))(v21, v58);
  }

  else
  {

    sub_100005A04(v17, &qword_100093F50, &qword_100074090);
    (*(v65 + 8))(v21, v18);
  }

  v42 = a1;
  v43 = v66;
  sub_100034850(v42, v66, &qword_100093F50, &qword_100074090);
  v44 = v67;
  if ((*(v67 + 48))(v43, 1, v7) == 1)
  {
    sub_100005A04(v43, &qword_100093F50, &qword_100074090);
    v45 = sub_100008AC8(a3, v63);
    if (!v45)
    {
      v45 = [objc_opt_self() predicateWithValue:0];
    }

    v46 = v45;
    v47 = v68;
    (*(v44 + 56))(v68, 1, 1, v7);
  }

  else
  {
    v48 = *(v44 + 32);
    v49 = v64;
    v48(v64, v43, v7);
    sub_100002B84(0, &qword_100093B08, NSPredicate_ptr);
    sub_10000DB4C(&unk_100093B10, qword_1000749B0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100073FE0;
    v51 = URL.absoluteString.getter();
    v53 = v52;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_1000061E8();
    *(v50 + 32) = v51;
    *(v50 + 40) = v53;
    v46 = NSPredicate.init(format:_:)();
    v47 = v68;
    v48(v68, v49, v7);
    (*(v44 + 56))(v47, 0, 1, v7);
  }

  v54 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookURL;
  swift_beginAccess();
  v55 = v46;
  sub_1000091C8(v47, a3 + v54);
  swift_endAccess();
  v56 = [v69 activationConditions];
  [v56 setPrefersToActivateForTargetContentIdentifierPredicate:v55];
}

id sub_100008AC8(void *a1, void *a2)
{
  v69 = a2;
  v3 = type metadata accessor for Logger();
  v70 = *(v3 - 8);
  v4 = *(v70 + 64);
  __chkstk_darwin(v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v62 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v62 - v20;
  v22 = [a1 effectiveFullBrowser];
  v23 = DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter();

  if (!v23)
  {
    return 0;
  }

  v68 = v3;
  result = DOCItemCollectionViewController.nodeCollection.getter();
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v25 = result;
  v26 = dispatch thunk of DOCNodeCollection.observedNode.getter();

  if (!v26)
  {

    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_10:
    sub_100005A04(v13, &qword_100093F50, &qword_100074090);
    return 0;
  }

  v27 = [v26 nodeURL];
  swift_unknownObjectRelease();
  if (v27)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v15 + 56))(v11, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v11, 1, 1, v14);
  }

  sub_10000B2A8(v11, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    goto LABEL_10;
  }

  (*(v15 + 32))(v21, v13, v14);
  v28 = objc_allocWithZone(NSURLComponents);
  URL._bridgeToObjectiveC()(v29);
  v31 = v30;
  v32 = [v28 initWithURL:v30 resolvingAgainstBaseURL:0];

  if (!v32)
  {
    (*(v15 + 8))(v21, v14);

    return 0;
  }

  v33 = String._bridgeToObjectiveC()();
  [v32 setScheme:v33];

  v67 = v32;
  result = [v32 URL];
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v34 = result;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v66 = URL.description.getter();
  v64 = v35;
  v65 = *(v15 + 8);
  v65(v19, v14);
  v63 = URL.description.getter();
  v37 = v36;
  sub_100002B84(0, &qword_100093B08, NSPredicate_ptr);
  sub_10000DB4C(&unk_100093B10, qword_1000749B0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1000736D0;
  *(v38 + 56) = &type metadata for String;
  v39 = sub_1000061E8();
  v40 = v63;
  v41 = v64;
  *(v38 + 32) = v66;
  *(v38 + 40) = v41;
  *(v38 + 96) = &type metadata for String;
  *(v38 + 104) = v39;
  *(v38 + 64) = v39;
  *(v38 + 72) = v40;
  *(v38 + 80) = v37;
  v42 = NSPredicate.init(format:_:)();
  static Logger.Application.getter();
  v43 = v69;
  v44 = v42;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v69 = v44;

  v66 = v45;
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v71 = v64;
    *v47 = 136315650;
    *(v47 + 4) = sub_100005D28(0xD00000000000001DLL, 0x8000000100075540, &v71);
    *(v47 + 12) = 2080;
    v48 = v43;
    v49 = [v48 description];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    LODWORD(v63) = v46;
    v51 = v50;
    v53 = v52;

    v54 = sub_100005D28(v51, v53, &v71);

    *(v47 + 14) = v54;
    *(v47 + 22) = 2080;
    v55 = v69;
    v56 = [v55 description];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60 = sub_100005D28(v57, v59, &v71);

    *(v47 + 24) = v60;
    v61 = v66;
    _os_log_impl(&_mh_execute_header, v66, v63, "[Interaction] 3 %s on: %s predicate: %s", v47, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v70 + 8))(v6, v68);
  v65(v21, v14);
  return v69;
}

uint64_t sub_1000091C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100009318(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v44 - v9;
  static Logger.StateStore.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = os_log_type_enabled(v11, v12);
  v48 = v4;
  v49 = v5;
  v45 = a2;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53[0] = v50;
    *v14 = 136315394;
    *(v14 + 4) = sub_100005D28(0xD000000000000027, 0x80000001000763C0, v53);
    *(v14 + 12) = 2080;
    sub_100002B84(0, &unk_1000941A0, UISceneSession_ptr);
    sub_100003A30(&qword_100093C50, &unk_1000941A0, UISceneSession_ptr);
    v15 = Set.description.getter();
    v17 = sub_100005D28(v15, v16, v53);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: %s", v14, 0x16u);
    swift_arrayDestroy();

    v47 = *(v49 + 8);
  }

  else
  {

    v47 = *(v5 + 8);
  }

  v47(v10, v4);
  v18 = [a1 connectedScenes];
  sub_100002B84(0, &qword_100093FF0, UIScene_ptr);
  sub_100003A30(&qword_100093FF8, &qword_100093FF0, UIScene_ptr);
  v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100009970(v19, v53);
  v21 = v53[0];
  v20 = v53[1];
  v22 = v55;
  v23 = v56;
  v50 = v54;
  v24 = (v54 + 64) >> 6;
  while (v21 < 0)
  {
    v31 = __CocoaSet.Iterator.next()();
    if (!v31 || (v51 = v31, swift_dynamicCast(), v30 = v52[0], v28 = v22, v29 = v23, !v52[0]))
    {
LABEL_21:
      sub_100052240();
      return;
    }

LABEL_18:
    if (![v30 delegate])
    {
      goto LABEL_7;
    }

    type metadata accessor for BrowserSceneDelegate();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v25 = *(v32 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
      if (v25)
      {
        v33 = v25;
        v34 = [v33 configuration];
        swift_unknownObjectRelease();

        sub_100052240();
        sub_100062A74(v45);
        v35 = v46;
        static Logger.StateStore.getter();

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v52[0] = swift_slowAlloc();
          *v38 = 136315394;
          *(v38 + 4) = sub_100005D28(0xD000000000000027, 0x80000001000763C0, v52);
          *(v38 + 12) = 2080;
          v39 = Array.description.getter();
          v41 = sub_100005D28(v39, v40, v52);

          *(v38 + 14) = v41;
          _os_log_impl(&_mh_execute_header, v36, v37, "%s: purging application state for sessionIdentifiers: %s", v38, 0x16u);
          swift_arrayDestroy();
        }

        v47(v35, v48);
        v42 = [objc_opt_self() sharedStore];
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v42 purgeApplicationStateForIdentifiers:isa configuration:v34];

        return;
      }

      swift_unknownObjectRelease();
LABEL_7:

      goto LABEL_8;
    }

    swift_unknownObjectRelease();
LABEL_8:
    v22 = v28;
    v23 = v29;
  }

  v26 = v22;
  v27 = v23;
  v28 = v22;
  if (v23)
  {
LABEL_14:
    v29 = (v27 - 1) & v27;
    v30 = *(*(v21 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v30)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v24)
    {
      goto LABEL_21;
    }

    v27 = *(v20 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_100009970@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100002B84(0, &qword_100093FF0, UIScene_ptr);
    sub_100003A30(&qword_100093FF8, &qword_100093FF0, UIScene_ptr);
    Set.Iterator.init(_cocoa:)();
    result = v10;
    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v3 = result + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

char *sub_100009A5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000DB4C(&qword_100093A28, qword_100074AD0);
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

char *sub_100009B68(char *a1, int64_t a2, char a3)
{
  result = sub_100009A5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100009BC8()
{
  v0 = static DOCLog.UI.getter();
  static os_log_type_t.debug.getter();
  sub_10000DB4C(&unk_100093B10, qword_1000749B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100073FE0;
  v2 = CFAbsoluteTimeGetCurrent() - *&qword_1000945C8;
  *(v1 + 56) = &type metadata for Double;
  *(v1 + 64) = &protocol witness table for Double;
  *(v1 + 32) = v2;
  os_log(_:dso:log:type:_:)();
}

unint64_t sub_100009C94(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100002ABC(a1, a2, v6);
}

void sub_100009D78(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (v8)
  {
    v26 = v8;
    if ([v26 isAppLaunchOptimizationsActive])
    {
      v9 = v26;
    }

    else
    {
      static Logger.StateStore.getter();
      v10 = a1;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v13 = 136315394;
        *(v13 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100075B10, &v27);
        *(v13 + 12) = 2080;
        v14 = [v10 session];
        v15 = [v14 persistentIdentifier];

        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = sub_100005D28(v16, v18, &v27);

        *(v13 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v11, v12, "%s: identifier: %s became foreground. Updating to most recent scene state.", v13, 0x16u);
        swift_arrayDestroy();
      }

      (*(v4 + 8))(v7, v3);
      v20 = objc_opt_self();
      v21 = [v20 sharedStore];
      v22 = [v26 configuration];
      v23 = [v21 interfaceStateForConfiguration:v22];

      if (v23)
      {
        v24 = [v20 sharedStore];
        v25 = [v26 configuration];
        [v24 updateInterfaceState:v23 forConfiguration:v25];
      }
    }
  }
}

uint64_t sub_10000A0F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000A14C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  return _swift_deallocObject(v0, 97, 7);
}

__n128 sub_10000A1C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_10000A1D0()
{
  result = qword_100093878;
  if (!qword_100093878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093878);
  }

  return result;
}

void sub_10000A2AC(int a1, uint64_t a2)
{
  LODWORD(v4) = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Tests.getter();
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v4;
    v4 = v13;
    v14 = swift_slowAlloc();
    v30 = v14;
    *v4 = 134218754;
    *(v4 + 4) = a2;
    *(v4 + 12) = 2080;
    v15 = *&v10[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8];
    aBlock = *&v10[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName];
    v32 = v15;

    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v16 = String.init<A>(describing:)();
    v18 = sub_100005D28(v16, v17, &v30);
    v28 = v5;
    v19 = a2;
    v20 = v18;

    *(v4 + 14) = v20;
    *(v4 + 22) = 2048;
    v21 = v10[OBJC_IVAR____TtC5Files14DOCApplication_finishedLaunchTest];

    *(v4 + 24) = v21;
    *(v4 + 32) = 1024;
    v22 = v29;
    *(v4 + 34) = v29 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "tabbedBrowserViewControllerDidFinishLoading %lu ; currentTestName %s ; finishedLaunchTest %ld ; initialLoad: %{BOOL}d", v4, 0x26u);
    sub_100034948(v14);

    (*(v6 + 8))(v9, v28);
    LOBYTE(v4) = v22;
  }

  else
  {

    (*(v6 + 8))(v9, v5);
    v19 = a2;
  }

  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = v4 & 1;
  *(v24 + 24) = v10;
  *(v24 + 32) = v19;
  v35 = sub_10000AC48;
  v36 = v24;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100002DB0;
  v34 = &unk_10008E260;
  v25 = _Block_copy(&aBlock);
  v26 = v10;

  [v23 performAfterCATransactionCommits:v25];
  _Block_release(v25);
}

uint64_t sub_10000A5D0()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10000A60C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000A650(a1, v4);
}

unint64_t sub_10000A650(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000A718(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000A774(v8);
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

void sub_10000A7C8(char a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = OBJC_IVAR____TtC5Files14DOCApplication_loadedTabs;
    swift_beginAccess();
    v12 = *&a2[v11];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&a2[v11] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_10000AC54(0, *(v12 + 2) + 1, 1, v12);
      *&a2[v11] = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_10000AC54((v14 > 1), v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    *&v12[8 * v15 + 32] = a3;
    *&a2[v11] = v12;
    swift_endAccess();
  }

  v16 = OBJC_IVAR____TtC5Files14DOCApplication_finishedLaunchTest;
  if ((a2[OBJC_IVAR____TtC5Files14DOCApplication_finishedLaunchTest] & 1) == 0)
  {
    v21 = [a2 _launchTestName];
    [a2 finishedTest:v21 waitForCommit:0 extraResults:0];

    a2[v16] = 1;
    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

  v17 = &a2[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName];
  v18 = *&a2[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8];
  if (!v18)
  {
    goto LABEL_28;
  }

  v19 = *v17;
  if (a3)
  {
    if (a3 == 1)
    {
      v20 = 0x646572616853;
    }

    else
    {
      if (a3 != 2)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v20 = 0x6573776F7242;
    }

    v23 = v20 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
  }

  else
  {
    v23 = 0xEF73746E65636552;
  }

  v24 = v19 == 0x6F54686374697753 && v18 == v23;
  if (v24 || (v25 = *v17, v26 = *&a2[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v37 = v7;

    static Logger.Tests.getter();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36[1] = v19;
      v31 = v30;
      v38[0] = v30;
      *v29 = 136315138;
      v32 = sub_100005D28(0x6F54686374697753, v23, v38);
      v36[0] = v27;
      v33 = v32;

      *(v29 + 4) = v33;
      v34 = v36[0];
      _os_log_impl(&_mh_execute_header, v36[0], v28, "finishing test %s after commit", v29, 0xCu);
      sub_100034948(v31);
    }

    else
    {
    }

    (*(v37 + 8))(v10, v6);
    v35 = String._bridgeToObjectiveC()();

    [a2 finishedTest:v35 waitForCommit:0 extraResults:0];

LABEL_28:
    if ((a1 & 1) == 0)
    {
      return;
    }

LABEL_13:
    NSLog(_:_:)();
    v22 = [objc_opt_self() shared];
    [v22 signal];

    return;
  }

  if (a1)
  {
    goto LABEL_13;
  }
}

char *sub_10000AC54(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000DB4C(&qword_100093CA8, &qword_1000744A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_10000AD5C()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000ADA8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10000AE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093498, &qword_100074430);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_10000AE7C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000AEE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000AF3C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10000AFE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000B1A0;

  return sub_10000B0A0(a1, v5);
}

uint64_t sub_10000B0A0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000B1A4;

  return v7(a1);
}

uint64_t sub_10000B1A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000B2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B364@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000B39C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000B3BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10000B3E8()
{
  if (*(v0 + 40))
  {
    sub_100034948((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B428()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000B510()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000B5F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B634()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B694()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000B75C()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B79C()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B7E4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000B844()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B87C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B8CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000B934()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B97C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B9D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BA30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000BA80()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10000C0D4()
{
  v1 = *(sub_10000DB4C(&qword_100093F50, &qword_100074090) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000C214()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000C2D8()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10000C318()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10000C368()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10000C3B0()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C3F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C438()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10000C488()
{
  sub_10000A0F8(v0[2], v0[3]);
  v1 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C4CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C514()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C554()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000C5DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C614()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000C6F0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000C7BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C804()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C83C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C87C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000C954()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C99C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C9DC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000CA78()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CAB0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000CAF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CB30()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

uint64_t sub_10000CC08()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v6);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_10000CD00()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000CDC4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000CE60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CEBC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000CF38()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CF70()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CFA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CFE0()
{
  v1 = *(sub_10000DB4C(&qword_100093F50, &qword_100074090) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_10000D100@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentPreviewItemIndex];
  *a2 = result;
  return result;
}

uint64_t sub_10000D148()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D194()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D1CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D214()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D24C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000D2A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D2DC()
{
  v1 = type metadata accessor for URLQueryItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_10000D44C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D48C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000D550()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  v10 = *(v0 + v6);

  v11 = *(v0 + v7);

  v12 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 16, v3 | 7);
}

uint64_t sub_10000D66C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  v10 = *(v0 + v6);

  v11 = *(v0 + v7);

  v12 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 16, v3 | 7);
}

uint64_t sub_10000D788()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D7C0()
{
  v1 = sub_10000DB4C(&qword_100094438, &unk_100074AB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10000D91C()
{
  v1 = sub_10000DB4C(&qword_100094438, &unk_100074AB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v12 = *(v0 + v11);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_10000DA90()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DAC8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DB08()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000DB4C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000DB94(uint64_t *a1, uint64_t *a2)
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

__n128 sub_10000DBDC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000DBE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000DC08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *sub_10000DC34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000DC44(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000DCBC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000DD3C@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000DD80(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000DE08(uint64_t a1)
{
  v2 = sub_100002C6C(&qword_100093578, type metadata accessor for DOCDocumentSourceIdentifier);
  v3 = sub_100002C6C(&qword_100093580, type metadata accessor for DOCDocumentSourceIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000DEC4(uint64_t a1)
{
  v2 = sub_100002C6C(&unk_1000937A0, type metadata accessor for FPProviderDomainID);
  v3 = sub_100002C6C(&qword_100093570, type metadata accessor for FPProviderDomainID);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000DF80(uint64_t a1)
{
  v2 = sub_100002C6C(&qword_100093588, type metadata accessor for DOCIntentLocationType);
  v3 = sub_100002C6C(&unk_100093590, type metadata accessor for DOCIntentLocationType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000E03C(uint64_t a1)
{
  v2 = sub_100002C6C(&qword_1000935A8, type metadata accessor for URLResourceKey);
  v3 = sub_100002C6C(&unk_1000935B0, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000E0F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10000E140(uint64_t a1)
{
  v2 = sub_100002C6C(&unk_1000941D0, type metadata accessor for LaunchOptionsKey);
  v3 = sub_100002C6C(&qword_1000935A0, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000E1FC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10000E238()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000E28C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

void sub_10000E378(uint64_t a1, unint64_t *a2)
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

id sub_10000E834(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSuiteName:v2];

  return v3;
}

uint64_t sub_10000E8A0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC5Files14DOCApplication_currentTestName);
  v4 = *(v2 + OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8);
  *v3 = a1;
  v3[1] = a2;
}

void sub_10000E8BC(uint64_t a1, unint64_t a2, id a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v7 = v6;
  v122 = a4;
  v124 = a1;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v120 = *(v12 - 8);
  v121 = v12;
  v13 = *(v120 + 64);
  __chkstk_darwin(v12);
  v118 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for DispatchQoS();
  v117 = *(v119 - 8);
  v15 = *(v117 + 64);
  __chkstk_darwin(v119);
  v116 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for DispatchTimeInterval();
  v111 = *(v112 - 8);
  v17 = *(v111 + 64);
  __chkstk_darwin(v112);
  v19 = (&v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = type metadata accessor for DispatchTime();
  v114 = *(v115 - 8);
  v20 = *(v114 + 64);
  v21 = __chkstk_darwin(v115);
  v110 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v113 = &v104 - v23;
  v125 = type metadata accessor for Logger();
  v24 = *(v125 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v125);
  v27 = __chkstk_darwin(v26);
  v29 = &v104 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v104 - v31;
  __chkstk_darwin(v30);
  v35 = &v104 - v34;
  v123 = a6;
  if (a6 >= 31)
  {
    static Logger.Tests.getter();

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = a2;
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v38 = 136315138;
      *(v38 + 4) = sub_100005D28(v124, v39, &aBlock);
      _os_log_impl(&_mh_execute_header, v36, v37, "Waited for more than 30 seconds for the collection view to populate. Failing test %s", v38, 0xCu);
      sub_100034948(v40);
    }

    (*(v24 + 8))(v35, v125);
    v51 = String._bridgeToObjectiveC()();
    [v7 failedTest:v51];
    goto LABEL_11;
  }

  v105 = v33;
  static Logger.Tests.getter();
  v41 = v7;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  v44 = os_log_type_enabled(v42, v43);
  v109 = a5;
  if (v44)
  {
    v106 = a2;
    v45 = swift_slowAlloc();
    *v45 = 67109120;
    v46 = OBJC_IVAR____TtC5Files14DOCApplication_loadedTabs;
    swift_beginAccess();
    v47 = *(&v41->isa + v46);
    v48 = *(v47 + 16);
    v49 = (v47 + 32);
    while (v48)
    {
      v50 = *v49++;
      --v48;
      if (!v50)
      {
        LODWORD(v48) = 1;
        break;
      }
    }

    *(v45 + 4) = v48;

    _os_log_impl(&_mh_execute_header, v42, v43, "recents loaded: %{BOOL}d", v45, 8u);

    a2 = v106;
  }

  else
  {

    v42 = v41;
  }

  v108 = *(v24 + 8);
  v108(v32, v125);
  v52 = dispatch thunk of DOCItemCollectionViewController.collectionView.getter();
  [v52 contentSize];
  v54 = v53;
  v56 = v55;
  v57 = DOCItemCollectionViewController.nodeCollection.getter();
  if (!v57)
  {
    __break(1u);
LABEL_40:

    __break(1u);
    return;
  }

  v58 = v57;
  v59 = [v57 isGathering];

  v107 = v52;
  if (v59)
  {
LABEL_15:
    v105 = v41;
    static Logger.Tests.getter();
    v60 = a3;

    a3 = v60;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v61, v62))
    {

LABEL_29:
      v108(v29, v125);
      v79 = v112;
      v80 = v111;
      sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
      v125 = static OS_dispatch_queue.main.getter();
      v81 = v110;
      static DispatchTime.now()();
      *v19 = 1;
      (*(v80 + 104))(v19, enum case for DispatchTimeInterval.seconds(_:), v79);
      v82 = v113;
      + infix(_:_:)();
      (*(v80 + 8))(v19, v79);
      v83 = *(v114 + 8);
      v84 = v115;
      v83(v81, v115);
      v85 = swift_allocObject();
      v86 = v105;
      v87 = v124;
      *(v85 + 16) = v105;
      *(v85 + 24) = v87;
      *(v85 + 32) = a2;
      *(v85 + 40) = a3;
      LODWORD(v87) = v109;
      *(v85 + 48) = v122;
      *(v85 + 52) = v87;
      *(v85 + 56) = v123;
      v130 = sub_100034BE8;
      v131 = v85;
      aBlock = _NSConcreteStackBlock;
      v127 = 1107296256;
      v128 = sub_100002DB0;
      v129 = &unk_10008ADB8;
      v88 = _Block_copy(&aBlock);

      v89 = v86;
      v90 = a3;

      v91 = v116;
      static DispatchQoS.unspecified.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v92 = v118;
      v93 = v121;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v94 = v125;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v88);

      (*(v120 + 8))(v92, v93);
      (*(v117 + 8))(v91, v119);
      v83(v82, v84);
      return;
    }

    v63 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    aBlock = v104;
    *v63 = 136316162;
    v106 = a2;
    *(v63 + 4) = sub_100005D28(v124, a2, &aBlock);
    *(v63 + 12) = 2048;
    *(v63 + 14) = v123;
    *(v63 + 22) = 1024;
    v64 = DOCItemCollectionViewController.nodeCollection.getter();
    if (v64)
    {
      v65 = v64;
      v66 = [v64 isGathering];

      *(v63 + 24) = v66;
      *(v63 + 28) = 2048;
      *(v63 + 30) = v56;
      *(v63 + 38) = 2048;
      v67 = dispatch thunk of DOCItemCollectionViewController.items.getter();
      if (v67 >> 62)
      {
        v68 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a2 = v106;

      *(v63 + 40) = v68;

      _os_log_impl(&_mh_execute_header, v61, v62, "waiting before starting test %s (attempt %ld). collection view is gathering: %{BOOL}d, content size: %f, items count : %ld", v63, 0x30u);
      sub_100034948(v104);

      goto LABEL_29;
    }

    goto LABEL_40;
  }

  v69 = dispatch thunk of DOCItemCollectionViewController.items.getter();
  if (v69 >> 62)
  {
    v103 = _CocoaArrayWrapper.endIndex.getter();

    if (!v103)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v70)
    {
      goto LABEL_15;
    }
  }

  if (v54 == 0.0 || v56 == 0.0)
  {
    goto LABEL_15;
  }

  [v52 layoutIfNeeded];
  static Logger.Tests.getter();
  v71 = a3;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 67109888;
    *(v74 + 4) = v122;
    *(v74 + 8) = 1024;
    v75 = v109;
    *(v74 + 10) = v109;
    *(v74 + 14) = 2048;
    *(v74 + 16) = v56;
    *(v74 + 24) = 2048;
    v76 = dispatch thunk of DOCItemCollectionViewController.items.getter();
    v77 = v124;
    if (v76 >> 62)
    {
      v78 = _CocoaArrayWrapper.endIndex.getter();
      v75 = v109;
    }

    else
    {
      v78 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v74 + 26) = v78;

    _os_log_impl(&_mh_execute_header, v72, v73, "performing scroll test. %d iterations, %d delta, content size is %f, item count : %ld", v74, 0x22u);
  }

  else
  {

    v72 = v71;
    v77 = v124;
    v75 = v109;
  }

  v108(v105, v125);
  aBlock = v77;
  v127 = a2;
  v132 = 0x6C61727574614ELL;
  v133 = 0xE700000000000000;
  sub_10000A1D0();
  v95 = StringProtocol.contains<A>(_:)();
  v96 = v107;
  if ((v95 & 1) == 0 || (v97 = objc_opt_self(), ![v97 isRecapAvailable]))
  {
    [v96 _effectiveContentInset];
    [v96 setContentOffset:{0.0, -v102}];
    v51 = String._bridgeToObjectiveC()();
    [v96 _performScrollTest:v51 iterations:v122 delta:v75];

LABEL_11:
    return;
  }

  v98 = objc_allocWithZone(RPTScrollViewTestParameters);

  v99 = v96;
  v100 = String._bridgeToObjectiveC()();

  v101 = [v98 initWithTestName:v100 scrollView:v99 completionHandler:0];

  [v97 runTestWithParameters:v101];
}

uint64_t sub_10000F644(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_10002CC10(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if (v15 != v15)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__OFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if (v20 != v20)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if (v9 != v9)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (__OFSUB__(v9, v8))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if (v23 != v23)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if (v12 != v12)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (__OFSUB__(v12, v11))
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if (v18 != v18)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

void sub_10000F920(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Tests.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v22 = a4;
    v23 = v17;
    v18 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100005D28(a1, a2, &v23);
    _os_log_impl(&_mh_execute_header, v13, v14, "performing scrolling test %s", v16, 0xCu);
    sub_100034948(v18);
    a4 = v22;

    a3 = v21;
  }

  (*(v9 + 8))(v12, v8);
  v19 = sub_10002EB80(a3);
  sub_10000E8BC(a1, a2, a4, v19, HIDWORD(v19), 0);
}

void sub_10000FB10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v46 = a2;
  v39 = a3;
  v45 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin(v42);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for DispatchTime();
  v16 = *(v48 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v48);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  v23 = [a4 effectiveFullBrowser];
  v24 = DOCFullDocumentManagerViewController.tabbedBrowserController.getter();

  if (v24)
  {
    [v24 switchToTab:2];
    v25 = [v24 splitBrowserViewController];
    [v25 showSidebar];

    sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
    v38 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v15 = 1;
    (*(v12 + 104))(v15, enum case for DispatchTimeInterval.seconds(_:), v11);
    + infix(_:_:)();
    (*(v12 + 8))(v15, v11);
    v37 = *(v16 + 8);
    v37(v20, v48);
    v26 = swift_allocObject();
    v27 = v47;
    v26[2] = a4;
    v26[3] = v27;
    v28 = a4;
    v29 = v46;
    v26[4] = v45;
    v26[5] = v29;
    v26[6] = v39;
    aBlock[4] = sub_100034BD0;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008AD68;
    v30 = _Block_copy(aBlock);
    v31 = v28;
    v32 = v27;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
    sub_1000035DC();
    v33 = v41;
    v34 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v35 = v38;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v30);

    (*(v43 + 8))(v33, v34);
    (*(v40 + 8))(v10, v42);
    v37(v22, v48);
  }

  else
  {
    v48 = String._bridgeToObjectiveC()();
    [v47 failedTest:v48];
    v36 = v48;
  }
}

void sub_100010088(void *a1, void *a2, void **a3, void *a4, uint64_t a5)
{
  v9 = [a1 effectiveFullBrowser];
  v11 = DOCFullDocumentManagerViewController.sidebarViewController.getter();

  if (v11)
  {
    v10 = sub_10002EB80(a5);
    sub_100010158(a3, a4, v11, v10, HIDWORD(v10));
  }

  else
  {
    v11 = String._bridgeToObjectiveC()();
    [a2 failedTest:?];
  }
}

void sub_100010158(void **a1, NSString a2, void *a3, unsigned int a4, unsigned int a5)
{
  v6 = v5;
  v87 = a4;
  v88 = a5;
  v89 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v9 - 8);
  v86 = v9;
  v10 = *(v85 + 64);
  __chkstk_darwin(v9);
  v83 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v82 = *(v84 - 8);
  v12 = *(v82 + 64);
  __chkstk_darwin(v84);
  v81 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTimeInterval();
  v76 = *(v14 - 8);
  v15 = *(v76 + 64);
  __chkstk_darwin(v14);
  v17 = (&v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for DispatchTime();
  v79 = *(v18 - 8);
  v80 = v18;
  v19 = *(v79 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v77 = &v72 - v23;
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v72 - v30;
  v78 = a3;
  v32 = [a3 collectionView];
  if (v32)
  {
    v74 = v6;
    v75 = v32;
    [v32 contentSize];
    v35 = v34;
    v36 = v33;
    if (v34 == 0.0 || v33 == 0.0)
    {
      v73 = a1;
      static Logger.Tests.getter();

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        aBlock = v52;
        *v51 = 136315650;
        *(v51 + 4) = sub_100005D28(v73, v89, &aBlock);
        *(v51 + 12) = 2048;
        *(v51 + 14) = v35;
        *(v51 + 22) = 2048;
        *(v51 + 24) = v36;
        _os_log_impl(&_mh_execute_header, v49, v50, "waiting before starting test %s. content size: {%f, %f}", v51, 0x20u);
        sub_100034948(v52);
      }

      (*(v25 + 8))(v31, v24);
      v53 = v73;
      sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
      v73 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v17 = 1;
      v54 = v76;
      (*(v76 + 104))(v17, enum case for DispatchTimeInterval.seconds(_:), v14);
      v55 = v77;
      + infix(_:_:)();
      (*(v54 + 8))(v17, v14);
      v56 = v80;
      v57 = *(v79 + 8);
      v57(v22, v80);
      v58 = swift_allocObject();
      v59 = v74;
      *(v58 + 16) = v74;
      *(v58 + 24) = v53;
      v60 = v78;
      *(v58 + 32) = v89;
      *(v58 + 40) = v60;
      v61 = v88;
      *(v58 + 48) = v87;
      *(v58 + 52) = v61;
      v94 = sub_100034BA0;
      v95 = v58;
      aBlock = _NSConcreteStackBlock;
      v91 = 1107296256;
      v92 = sub_100002DB0;
      v93 = &unk_10008AD18;
      v62 = _Block_copy(&aBlock);

      v63 = v59;
      v64 = v60;

      v65 = v81;
      static DispatchQoS.unspecified.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v66 = v83;
      v67 = v86;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v68 = v73;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v62);

      (*(v85 + 8))(v66, v67);
      (*(v82 + 8))(v65, v84);
      v57(v55, v56);
    }

    else
    {
      v37 = v88;
      static Logger.Tests.getter();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v87;
      if (v40)
      {
        v42 = swift_slowAlloc();
        *v42 = 67109632;
        *(v42 + 4) = v41;
        *(v42 + 8) = 1024;
        *(v42 + 10) = v37;
        *(v42 + 14) = 2048;
        *(v42 + 16) = v36;
        _os_log_impl(&_mh_execute_header, v38, v39, "performing scroll test. %d iterations, %d delta, content size is %f", v42, 0x18u);
      }

      (*(v25 + 8))(v29, v24);
      aBlock = a1;
      v91 = v89;
      v96 = 0x6C61727574614ELL;
      v97 = 0xE700000000000000;
      sub_10000A1D0();
      if ((StringProtocol.contains<A>(_:)() & 1) != 0 && (v43 = objc_opt_self(), [v43 isRecapAvailable]))
      {
        v44 = objc_allocWithZone(RPTScrollViewTestParameters);

        v45 = v75;
        v46 = String._bridgeToObjectiveC()();

        v47 = [v44 initWithTestName:v46 scrollView:v45 completionHandler:0];

        [v43 runTestWithParameters:v47];
      }

      else
      {
        v69 = v75;
        [v75 _effectiveContentInset];
        [v69 setContentOffset:{0.0, -v70}];
        v71 = String._bridgeToObjectiveC()();
        [v69 _performScrollTest:v71 iterations:v41 delta:v37];
      }
    }
  }

  else
  {
    v89 = String._bridgeToObjectiveC()();
    [v6 failedTest:v89];
    v48 = v89;
  }
}

void sub_100010AB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v40 = String._bridgeToObjectiveC()();
    [a3 failedTest:v40];
LABEL_3:
    v20 = v40;

    return;
  }

  v39 = v17;
  v21 = [a6 effectiveBrowserViewController];
  if (v21)
  {
    v22 = v21;
    v40 = DOCBrowserContainerController.containedItemCollectionViewController.getter();

    if (v40)
    {
      dispatch thunk of DOCItemCollectionViewController.displayMode.setter();
      sub_10000F920(a4, a5, a8, v40);
      goto LABEL_3;
    }
  }

  static Logger.Tests.getter();
  v23 = a6;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    LODWORD(v40) = v25;
    v26 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v26 = 136315394;
    v41 = [v23 effectiveBrowserViewController];
    sub_10000DB4C(&unk_1000938A0, &qword_1000740B8);
    v27 = String.init<A>(describing:)();
    v29 = sub_100005D28(v27, v28, &v42);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    v30 = [v23 effectiveBrowserViewController];
    if (v30)
    {
      v31 = v30;
      v32 = DOCBrowserContainerController.containedItemCollectionViewController.getter();
    }

    else
    {
      v32 = 0;
    }

    v41 = v32;
    sub_10000DB4C(&qword_100093898, &qword_1000740B0);
    v33 = String.init<A>(describing:)();
    v35 = sub_100005D28(v33, v34, &v42);

    *(v26 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v24, v40, "%s's content VC is %s, not a DOCItemCollectionViewController", v26, 0x16u);
    swift_arrayDestroy();
  }

  (*(v15 + 8))(v19, v39);
  v36 = String._bridgeToObjectiveC()();
  [a3 failedTest:v36];
}

uint64_t sub_100010E38(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v37 = a6;
  v38 = a3;
  v34 = a5;
  v9 = type metadata accessor for Logger();
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() recentDocumentsLocation];
  static Logger.Tests.getter();
  v14 = v13;
  v15 = a1;
  v35 = v12;
  v16 = Logger.logObject.getter();
  LODWORD(a1) = static os_log_type_t.info.getter();

  v33 = a1;
  v17 = &off_100091000;
  if (os_log_type_enabled(v16, a1))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v18 = 138412546;
    *(v18 + 4) = v14;
    *v19 = v14;
    *(v18 + 12) = 2112;
    v20 = v14;
    v21 = [v15 fullRecentsViewController];
    v22 = a2;
    v23 = a4;
    v24 = [v21 hierarchyController];

    *(v18 + 14) = v24;
    v32[1] = v24;
    a4 = v23;
    a2 = v22;
    _os_log_impl(&_mh_execute_header, v16, v33, "resetting location %@ to %@", v18, 0x16u);
    sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
    swift_arrayDestroy();

    v17 = &off_100091000;
  }

  (*(v36 + 8))(v35, v9);
  v25 = [v15 fullRecentsViewController];
  v26 = [v25 v17[293]];

  v27 = swift_allocObject();
  *(v27 + 16) = v15;
  *(v27 + 24) = a2;
  v28 = v37;
  *(v27 + 32) = v38;
  *(v27 + 40) = a4;
  *(v27 + 48) = v34 & 1;
  *(v27 + 56) = v28;
  v29 = v15;
  v30 = a2;

  DOCHierarchyController.reset(with:animated:completionHandler:)();
}

void sub_100011148(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  static Logger.Tests.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "location reset completion block", v18, 2u);
  }

  v19 = *(v9 + 8);
  v19(v15, v8);
  v20 = [a1 effectiveBrowserViewController];
  if (v20 && (v21 = v20, v22 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v21, v22))
  {
    v23 = [a1 fullRecentsViewController];
    DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:)();

    sub_10000F920(v36, v37, a6, v22);
  }

  else
  {
    static Logger.Tests.getter();
    v24 = a1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = v28;
      *v27 = 136315138;
      v29 = [v24 effectiveBrowserViewController];
      if (v29)
      {
        v30 = v29;
        v31 = DOCBrowserContainerController.containedItemCollectionViewController.getter();
      }

      else
      {
        v31 = 0;
      }

      v39 = v31;
      sub_10000DB4C(&qword_100093898, &qword_1000740B0);
      v32 = String.init<A>(describing:)();
      v34 = sub_100005D28(v32, v33, &v40);

      *(v27 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "itemCollectionVC %s is not a DOCItemCollectionViewController", v27, 0xCu);
      sub_100034948(v28);
    }

    v19(v13, v8);
    v22 = String._bridgeToObjectiveC()();
    [v38 failedTest:v22];
  }
}

void sub_1000114A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v65 = a7;
  v66 = a8;
  v13 = type metadata accessor for IndexPath();
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = *(v63 + 64);
  __chkstk_darwin(v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Logger();
  v17 = *(v68 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v68);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v62 - v22;
  if (a2)
  {
    v24 = String._bridgeToObjectiveC()();
    [a3 failedTest:v24];
  }

  v69 = a4;
  v25 = [a6 effectiveBrowserViewController];
  if (v25 && (v26 = v25, v27 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v26, v27))
  {
    static Logger.Tests.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    v30 = os_log_type_enabled(v28, v29);
    v67 = a5;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v62 = a3;
      v33 = v32;
      *&v70[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100005D28(v69, a5, v70);
      _os_log_impl(&_mh_execute_header, v28, v29, "Navigating to 100item folder for test %s", v31, 0xCu);
      sub_100034948(v33);
      a3 = v62;
    }

    (*(v17 + 8))(v23, v68);
    v34 = [a6 effectiveFullBrowser];
    DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:)();

    v35 = dispatch thunk of DOCItemCollectionViewController.collectionView.getter();
    sub_100011B8C(v35, 2, v16);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v63 + 8))(v16, v64);
    [v27 collectionView:v35 performPrimaryActionForItemAtIndexPath:isa];

    v47 = v67;
    v48 = v69;
    v49 = DOCFullDocumentManagerViewControllerDidFinishLoadingNotificationName;
    v50 = swift_allocObject();
    v50[2] = a6;
    v50[3] = a3;
    v50[4] = v48;
    v50[5] = v47;
    v50[6] = v66;
    v51 = objc_opt_self();

    v52 = v49;
    v53 = a6;
    v54 = a3;

    v55 = [v51 defaultCenter];
    memset(v70, 0, sizeof(v70));
    v56 = [objc_opt_self() mainQueue];
    v57 = swift_allocObject();
    *(v57 + 16) = sub_100034EA8;
    *(v57 + 24) = v50;

    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(v70, &qword_100093498, &qword_100074430);
  }

  else
  {
    static Logger.Tests.getter();
    v36 = a6;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v67 = a5;
      v62 = a3;
      v39 = swift_slowAlloc();
      *&v70[0] = swift_slowAlloc();
      *v39 = 136315394;
      v71 = [v36 effectiveBrowserViewController];
      sub_10000DB4C(&unk_1000938A0, &qword_1000740B8);
      v40 = String.init<A>(describing:)();
      v42 = sub_100005D28(v40, v41, v70);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2080;
      v43 = [v36 effectiveBrowserViewController];
      if (v43)
      {
        v44 = v43;
        v45 = DOCBrowserContainerController.containedItemCollectionViewController.getter();
      }

      else
      {
        v45 = 0;
      }

      v71 = v45;
      sub_10000DB4C(&qword_100093898, &qword_1000740B0);
      v58 = String.init<A>(describing:)();
      v60 = sub_100005D28(v58, v59, v70);

      *(v39 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s's content VC is %s), not a DOCItemCollectionViewController", v39, 0x16u);
      swift_arrayDestroy();

      (*(v17 + 8))(v21, v68);
      a3 = v62;
    }

    else
    {

      (*(v17 + 8))(v21, v68);
    }

    v61 = String._bridgeToObjectiveC()();
    [a3 failedTest:v61];
  }
}

void sub_100011B8C(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v51[1] = a3;
  v60 = a2;
  v4 = type metadata accessor for Logger();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  __chkstk_darwin(v4);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 preparedCells];
  if (v8)
  {
    v9 = v8;
    sub_100002B84(0, &qword_1000937E8, UICollectionViewCell_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = a1;
    if (v10 >> 62)
    {
      goto LABEL_54;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = 0;
      v61 = v10 & 0xC000000000000001;
      v55 = 0x8000000100074D90;
      v56 = v10 & 0xFFFFFFFFFFFFFF8;
      v58 = v7;
      v59 = v10;
      v57 = i;
      while (1)
      {
        if (v61)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v56 + 16))
          {
            goto LABEL_53;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        type metadata accessor for DOCItemCollectionCell();
        if (swift_dynamicCastClass())
        {
          v16 = v14;
          v17 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();

          if (!v17)
          {
            goto LABEL_47;
          }

          v18 = dispatch thunk of DOCItemCollectionCellContent.node.getter();
          if (!v18)
          {

LABEL_47:

            sub_100034538();
            swift_allocError();
            swift_willThrow();

            return;
          }

          v62 = v16;
          if (v60 <= 3u)
          {
            v19 = 0x6574493030312D33;
            if (v60 != 2)
            {
              v19 = 3158067;
            }

            v20 = 0xEF7265646C6F466DLL;
            if (v60 != 2)
            {
              v20 = 0xE300000000000000;
            }

            v21 = 0x467974706D452D32;
            if (v60)
            {
              v21 = 0x6D65744936312D31;
            }

            v22 = 0xED00007265646C6FLL;
            if (v60)
            {
              v22 = 0xEE007265646C6F46;
            }

            v23 = v60 <= 1u;
          }

          else
          {
            v19 = 0x6E6F736874696D53;
            if (v60 != 7)
            {
              v19 = 0x6F46747365544C51;
            }

            v20 = 0xEF6664702E6E6169;
            if (v60 != 7)
            {
              v20 = 0xEC0000007265646CLL;
            }

            if (v60 == 6)
            {
              v19 = 0x462072656D6D7553;
              v20 = 0xEE0067706A2E6E75;
            }

            v21 = 0xD000000000000010;
            if (v60 != 4)
            {
              v21 = 0x2073776F646E6957;
            }

            v22 = v55;
            if (v60 != 4)
            {
              v22 = 0xEE00667265502038;
            }

            v23 = v60 <= 5u;
          }

          if (v23)
          {
            v24 = v21;
          }

          else
          {
            v24 = v19;
          }

          if (v23)
          {
            v25 = v22;
          }

          else
          {
            v25 = v20;
          }

          v26 = [v18 filename];
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          if (v24 == v27 && v25 == v29)
          {

            v31 = v62;
LABEL_49:

            v32 = [v52 indexPathForCell:v31];
            if (v32)
            {
              v33 = v32;
              static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

              swift_unknownObjectRelease();
            }

            else
            {
              sub_100034538();
              swift_allocError();
              swift_willThrow();

              swift_unknownObjectRelease();
            }

            return;
          }

          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v10 = v59;
          v31 = v62;
          if (v30)
          {
            goto LABEL_49;
          }

          swift_unknownObjectRelease();
          i = v57;
          v7 = v58;
        }

        else
        {
        }

        ++v12;
        if (v15 == i)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      ;
    }

LABEL_55:

    static Logger.Tests.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v63 = v37;
      *v36 = 136315138;
      if (v60 <= 3u)
      {
        v46 = 0x467974706D452D32;
        v47 = 0xED00007265646C6FLL;
        v48 = 0x6574493030312D33;
        v49 = 0xEF7265646C6F466DLL;
        if (v60 != 2)
        {
          v48 = 3158067;
          v49 = 0xE300000000000000;
        }

        if (v60)
        {
          v46 = 0x6D65744936312D31;
          v47 = 0xEE007265646C6F46;
        }

        if (v60 <= 1u)
        {
          v44 = v46;
        }

        else
        {
          v44 = v48;
        }

        if (v60 <= 1u)
        {
          v45 = v47;
        }

        else
        {
          v45 = v49;
        }
      }

      else
      {
        v38 = 0x462072656D6D7553;
        v39 = 0xEE0067706A2E6E75;
        v40 = 0x6E6F736874696D53;
        v41 = 0xEF6664702E6E6169;
        if (v60 != 7)
        {
          v40 = 0x6F46747365544C51;
          v41 = 0xEC0000007265646CLL;
        }

        if (v60 != 6)
        {
          v38 = v40;
          v39 = v41;
        }

        v42 = 0xD000000000000010;
        v43 = 0x8000000100074D90;
        if (v60 != 4)
        {
          v42 = 0x2073776F646E6957;
          v43 = 0xEE00667265502038;
        }

        if (v60 <= 5u)
        {
          v44 = v42;
        }

        else
        {
          v44 = v38;
        }

        if (v60 <= 5u)
        {
          v45 = v43;
        }

        else
        {
          v45 = v39;
        }
      }

      v50 = sub_100005D28(v44, v45, &v63);

      *(v36 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v34, v35, "index path not found for folder name %s", v36, 0xCu);
      sub_100034948(v37);
    }

    (*(v53 + 8))(v7, v54);
    sub_100034538();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000122D8(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = [a1 effectiveBrowserViewController];
  if (v9 && (v10 = v9, v11 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v10, v11))
  {
    sub_10000F920(a3, a4, a5, v11);
  }

  else
  {
    v11 = String._bridgeToObjectiveC()();
    [a2 failedTest:?];
  }
}

void sub_1000123A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v47 = a5;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v17 = String._bridgeToObjectiveC()();
    [a3 failedTest:v17];
  }

  v18 = [a6 effectiveBrowserViewController];
  if (v18 && (v19 = a4, v20 = v18, v21 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v20, a4 = v19, v21))
  {
    v22 = [a6 effectiveFullBrowser];
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    v24[2] = a3;
    v24[3] = v21;
    v25 = v47;
    v24[4] = v19;
    v24[5] = v25;
    v24[6] = v22;
    v24[7] = a7;
    aBlock[4] = sub_100034F1C;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008DE78;
    v26 = _Block_copy(aBlock);
    v27 = a3;
    v28 = v21;

    v29 = v22;

    [v23 performAfterCATransactionCommits:v26];
    _Block_release(v26);
  }

  else
  {
    v46 = a3;
    static Logger.Tests.getter();
    v30 = a6;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v45 = a4;
      v33 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v33 = 136315394;
      v49 = [v30 effectiveBrowserViewController];
      sub_10000DB4C(&unk_1000938A0, &qword_1000740B8);
      v34 = String.init<A>(describing:)();
      v36 = sub_100005D28(v34, v35, aBlock);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      v37 = [v30 effectiveBrowserViewController];
      if (v37)
      {
        v38 = v37;
        v39 = DOCBrowserContainerController.containedItemCollectionViewController.getter();
      }

      else
      {
        v39 = 0;
      }

      v49 = v39;
      sub_10000DB4C(&qword_100093898, &qword_1000740B0);
      v40 = String.init<A>(describing:)();
      v42 = sub_100005D28(v40, v41, aBlock);

      *(v33 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s's content VC is %s, not a DOCItemCollectionViewController", v33, 0x16u);
      swift_arrayDestroy();

      (*(v13 + 8))(v16, v12);
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    v29 = String._bridgeToObjectiveC()();
    [v46 failedTest:v29];
  }
}

uint64_t sub_1000127EC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a2;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = sub_100034F84;
  v13[4] = v12;
  v14 = a2;
  v15 = a1;

  v16 = a5;

  if (sub_10002F5B8())
  {
    sub_100014F3C(v14, sub_100034F84, v12);
  }

  else
  {
    v18 = static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews.getter();
    v19 = swift_allocObject();
    v19[2] = v15;
    v19[3] = v14;
    v19[4] = sub_1000355EC;
    v19[5] = v13;
    v20 = objc_opt_self();
    v21 = v14;
    v22 = v15;

    v23 = [v20 defaultCenter];
    v28[3] = sub_100002B84(0, &qword_1000937E0, UIViewController_ptr);
    v24 = objc_opt_self();
    v25 = v21;
    v26 = [v24 mainQueue];
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1000355DC;
    *(v27 + 24) = v19;

    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(v28, &qword_100093498, &qword_100074430);
  }
}

id sub_100012A88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = String._bridgeToObjectiveC()();
  [a1 startedTest:v8];

  DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:)();
  result = [a6 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  [result setNeedsLayout];

  result = [a6 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v11 = result;
  [result layoutIfNeeded];

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = sub_100034FB4;
  v13[4] = v12;
  v14 = a1;

  v15 = a6;
  if (sub_10002F5B8())
  {
    sub_100014F3C(v15, sub_100034FB4, v12);
  }

  else
  {
    v16 = static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews.getter();
    v17 = swift_allocObject();
    v17[2] = v14;
    v17[3] = v15;
    v17[4] = sub_1000355EC;
    v17[5] = v13;
    v18 = objc_opt_self();
    v19 = v14;
    v20 = v15;

    v21 = [v18 defaultCenter];
    v26[3] = sub_100002B84(0, &qword_1000937E0, UIViewController_ptr);
    v22 = objc_opt_self();
    v23 = v20;
    v24 = [v22 mainQueue];
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1000355DC;
    *(v25 + 24) = v17;

    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(v26, &qword_100093498, &qword_100074430);
  }
}

uint64_t sub_100012D9C(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = *(v24 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v11 + 8);
  v23(v15, v10);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  aBlock[4] = sub_100034FBC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008E008;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v26 + 8))(v5, v2);
  (*(v24 + 8))(v9, v25);
  return (v23)(v17, v10);
}

void sub_100013148(char *a1)
{
  if (*&a1[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8])
  {
    v1 = *&a1[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName];
    v2 = a1;
    v3 = *&a1[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8];

    v4 = String._bridgeToObjectiveC()();

    a1 = v2;
  }

  else
  {
    v4 = 0;
  }

  [a1 finishedTest:v4 waitForCommit:0 extraResults:0];
}

Swift::Int sub_1000131FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100013270()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000132C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v28 - 8);
  v14 = *(v32 + 64);
  __chkstk_darwin(v28);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v30 = *(v17 - 8);
  v31 = v17;
  v18 = *(v30 + 64);
  __chkstk_darwin(v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v29 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a2;
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = a6;
  v21[7] = a7;
  v21[8] = a1;
  aBlock[4] = sub_100034B18;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008AC28;
  v22 = _Block_copy(aBlock);

  swift_errorRetain();

  v23 = a7;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  v24 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v29;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v32 + 8))(v16, v24);
  return (*(v30 + 8))(v20, v31);
}

void sub_1000135E0(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4, uint64_t a5, void *a6, unint64_t a7)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    if (a2)
    {
      a3(0, a2);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v18 = Strong, v19 = sub_10002F6EC(a6, a7), v18, v19))
      {
        swift_beginAccess();
        *(a1 + 16) = 1;
        v20 = v19;
        a3(v19, 0);
      }

      else
      {
        static Logger.Tests.getter();
        v21 = a6;

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v32[0] = swift_slowAlloc();
          *v24 = 136315394;
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = sub_100005D28(v25, v26, v32);

          *(v24 + 4) = v27;
          *(v24 + 12) = 2080;
          sub_100002B84(0, &qword_100093880, DOCDocumentSource_ptr);
          v28 = Array.description.getter();
          v30 = sub_100005D28(v28, v29, v32);

          *(v24 + 14) = v30;
          _os_log_impl(&_mh_execute_header, v22, v23, "Sources updated. Did not find: %s in list of sources: %s", v24, 0x16u);
          swift_arrayDestroy();
        }

        (*(v13 + 8))(v16, v12);
      }
    }
  }
}

void sub_1000138C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_100002B84(0, &qword_100093880, DOCDocumentSource_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_100013978(void **a1, void *a2, int a3)
{
  v56 = a3;
  v5 = type metadata accessor for Logger();
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  v7 = __chkstk_darwin(v5);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v51 - v10;
  __chkstk_darwin(v9);
  v13 = &v51 - v12;
  v14 = *a1;
  static Logger.Tests.getter();
  v15 = a2;
  v16 = v14;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v19 = os_log_type_enabled(v17, v18);
  v55 = v15;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v58 = v52;
    *v20 = 136315394;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v5;
    v23 = sub_100005D28(v21, v22, &v58);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    v24 = v16;
    v25 = [v16 identifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_100005D28(v26, v28, &v58);
    v30 = v57;

    *(v20 + 14) = v29;
    v5 = v54;
    _os_log_impl(&_mh_execute_header, v17, v18, "Specified source: %s / Available source: %s", v20, 0x16u);
    swift_arrayDestroy();

    v31 = v30;
  }

  else
  {
    v24 = v16;

    v31 = v57;
  }

  v32 = *(v31 + 8);
  v32(v13, v5);
  if ((v56 & 1) == 0 || ![v24 isiCloudBased])
  {
    v37 = [v24 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v38._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = String.hasPrefix(_:)(v38);

    if (!v39)
    {
      return 0;
    }

    v33 = v53;
    static Logger.Tests.getter();
    v34 = v24;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      goto LABEL_10;
    }

LABEL_12:

    v48 = v33;
    v49 = v5;
    goto LABEL_13;
  }

  static Logger.Tests.getter();
  v33 = v11;
  v34 = v24;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v35, v36))
  {
    goto LABEL_12;
  }

LABEL_10:
  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v58 = v41;
  *v40 = 136315138;
  v42 = [v34 identifier];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v5;
  v44 = v43;
  v46 = v45;

  v47 = sub_100005D28(v44, v46, &v58);

  *(v40 + 4) = v47;
  _os_log_impl(&_mh_execute_header, v35, v36, "Source %s is a match", v40, 0xCu);
  sub_100034948(v41);

  v48 = v33;
  v49 = v54;
LABEL_13:
  v32(v48, v49);
  return 1;
}

uint64_t sub_100013E60(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v13 = *(v26 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v26);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a2;
  v17[4] = a1;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_100034B7C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008AC78;
  v18 = _Block_copy(aBlock);
  v19 = v4;
  v20 = a2;
  v21 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v25;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v27 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v26);
}

void sub_100014150(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [a2 tabBarController];
  if (v14)
  {
    v15 = v14;
    sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
    *v13 = static OS_dispatch_queue.main.getter();
    (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
    v16 = _dispatchPreconditionTest(_:)();
    (*(v10 + 8))(v13, v9);
    if (v16)
    {
      [v15 setSelectedIndex:2];

      v17 = [a2 effectiveFullBrowser];
      v18 = swift_allocObject();
      v18[2] = a2;
      v18[3] = a4;
      v18[4] = a5;
      aBlock[4] = sub_100034B94;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002DB0;
      aBlock[3] = &unk_10008ACC8;
      v19 = _Block_copy(aBlock);
      v20 = a2;

      [v17 showLocation:a3 animated:0 withCompletionBlock:v19];
      _Block_release(v19);

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1000143AC(void *a1, void (*a2)(void *, uint64_t))
{
  v3 = [a1 effectiveBrowserViewController];
  if (v3 && (v4 = v3, v5 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v4, v5))
  {
    v8 = v5;
    a2(v5, 0);
  }

  else
  {
    sub_100030284();
    v6 = swift_allocError();
    *v7 = 1;
    a2(0, v6);
  }
}

uint64_t sub_1000144AC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  v13 = *(v28 + 64);
  __chkstk_darwin(v30);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchTime();
  v27 = *(v29 - 8);
  v16 = *(v27 + 64);
  __chkstk_darwin(v29);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v26 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = v4;
  v19[4] = a1;
  v19[5] = a3;
  v19[6] = a4;
  aBlock[4] = sub_100034ADC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008AB10;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  v22 = v4;
  v23 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v26;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v31 + 8))(v12, v9);
  (*(v28 + 8))(v15, v30);
  return (*(v27 + 8))(v18, v29);
}

void sub_10001483C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 effectiveFullBrowser];
  v10 = [v9 hierarchyController];
  v11 = DOCHierarchyController.sourceObserver.getter();

  v12 = [a1 configuration];
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = sub_100034AF4;
  v16[4] = v13;
  v16[5] = v15;
  v16[6] = a3;
  v20[4] = sub_100034B00;
  v20[5] = v16;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1000138C8;
  v20[3] = &unk_10008ABD8;
  v17 = _Block_copy(v20);
  v18 = a3;

  v19 = [v11 addSubscriberForConfiguration:v12 usingBlock:v17];
  _Block_release(v17);
}

void sub_100014A5C(void *a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static Logger.Tests.getter();
    swift_errorRetain();
    v15 = a3;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = a4;
      v19 = v18;
      v20 = swift_slowAlloc();
      v30 = a5;
      v33 = v20;
      *v19 = 136315394;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = sub_100005D28(v21, v22, &v33);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v32 = a2;
      swift_errorRetain();
      sub_10000DB4C(&qword_1000937C0, &unk_100074070);
      v24 = String.init<A>(describing:)();
      v26 = sub_100005D28(v24, v25, &v33);

      *(v19 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "error getting location for source identifier %s: %s", v19, 0x16u);
      swift_arrayDestroy();

      a4 = v31;
    }

    (*(v11 + 8))(v14, v10);
    swift_errorRetain();
    a4(0, a2);
  }

  else if (a1)
  {
    v31 = a1;
    a4(a1, 0);
    v27 = v31;
  }

  else
  {
    sub_100030284();
    v28 = swift_allocError();
    *v29 = 2;
    a4(0, v28);
  }
}

uint64_t sub_100014D98(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (sub_10002F5B8())
  {
    return a3();
  }

  v9 = static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews.getter();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v11 = objc_opt_self();
  v12 = a1;
  v13 = a2;

  v14 = [v11 defaultCenter];
  v19[3] = sub_100002B84(0, &qword_1000937E0, UIViewController_ptr);
  v15 = objc_opt_self();
  v16 = v13;
  v17 = [v15 mainQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1000355DC;
  *(v18 + 24) = v10;

  NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

  sub_100005A04(v19, &qword_100093498, &qword_100074430);
}

uint64_t sub_100014F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v75 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Logger();
  v93 = *(v95 - 8);
  isa = v93[8].isa;
  v14 = __chkstk_darwin(v95);
  v86 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v75 - v17;
  __chkstk_darwin(v16);
  v94 = (&v75 - v19);
  v92 = dispatch_group_create();
  v20 = dispatch thunk of DOCItemCollectionViewController.collectionViewIfLoaded.getter();
  v82 = v3;
  v81 = v4;
  v80 = v8;
  v79 = v7;
  v78 = v9;
  v77 = v12;
  if (v20)
  {
    v21 = v20;
    v22 = [v20 visibleCells];

    sub_100002B84(0, &qword_1000937E8, UICollectionViewCell_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = &_swiftEmptyArrayStorage;
    if (v7 >> 62)
    {
LABEL_24:
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (v23)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v23 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
LABEL_4:
        v24 = 0;
        v88 = &_swiftEmptyArrayStorage;
        while (1)
        {
          v25 = v24;
          while (1)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v25 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v26 = *(v7 + 8 * v25 + 32);
            }

            v27 = v26;
            v24 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            type metadata accessor for DOCItemCollectionCell();
            if (swift_dynamicCastClass())
            {
              v28 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
              if (v28)
              {
                break;
              }
            }

LABEL_7:
            ++v25;
            if (v24 == v23)
            {
              goto LABEL_26;
            }
          }

          v29 = v28;
          v30 = dispatch thunk of DOCItemCollectionCellContent.thumbnail.getter();

          if (!v30)
          {
            goto LABEL_7;
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v31 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v88 = aBlock;
          if (v24 == v23)
          {
LABEL_26:

            v32 = v88;
            goto LABEL_27;
          }
        }
      }
    }

    v88 = &_swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v32 = &_swiftEmptyArrayStorage;
LABEL_27:
  v33 = v94;
  static Logger.Tests.getter();

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  v36 = v32 >> 62;
  if (!os_log_type_enabled(v34, v35))
  {

    v34 = v93;
    v94 = v93[1].isa;
    v94(v33, v95);
    goto LABEL_32;
  }

  v33 = v32;
  v7 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  aBlock = v32;
  *v7 = 136315394;
  *(v7 + 4) = sub_100005D28(0xD00000000000004DLL, 0x8000000100074DD0, &aBlock);
  *(v7 + 12) = 2048;
  if (v36)
  {
    goto LABEL_55;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v7 + 14) = i;

    _os_log_impl(&_mh_execute_header, v34, v35, "%s START waiting for %ld to load before continuing", v7, 0x16u);
    sub_100034948(v32);

    v34 = v93;
    v38 = v94;
    v94 = v93[1].isa;
    v94(v38, v95);
    v32 = v33;
LABEL_32:
    if (v36)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
      if (!v40)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v40 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        goto LABEL_53;
      }
    }

    if (v40 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_55:
    ;
  }

  v41 = 0;
  v93 = v34 + 1;
  v87 = "v24@?0@FPItem8@NSError16";
  v89 = v32 & 0xC000000000000001;
  v90 = &v99;
  *&v39 = 136315650;
  v84 = v39;
  *&v39 = 136315394;
  v83 = v39;
  v88 = v32;
  v85 = v18;
  v91 = v40;
  do
  {
    if (v89)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v42 = *(v32 + 8 * v41 + 32);
      swift_unknownObjectRetain();
    }

    static Logger.Tests.getter();
    swift_unknownObjectRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v45 = v84;
      *(v45 + 4) = sub_100005D28(0xD00000000000004DLL, v87 | 0x8000000000000000, &aBlock);
      *(v45 + 12) = 2080;
      v96 = v42;
      swift_unknownObjectRetain();
      sub_10000DB4C(&qword_100093850, &qword_100074080);
      v46 = String.init<A>(describing:)();
      v48 = sub_100005D28(v46, v47, &aBlock);

      *(v45 + 14) = v48;
      *(v45 + 22) = 2080;
      v49 = [v42 hasFinishedTryingToFetchCorrectThumbnail];
      v50 = v49 == 0;
      if (v49)
      {
        v51 = 1702195828;
      }

      else
      {
        v51 = 0x65736C6166;
      }

      if (v50)
      {
        v52 = 0xE500000000000000;
      }

      else
      {
        v52 = 0xE400000000000000;
      }

      v53 = sub_100005D28(v51, v52, &aBlock);
      v32 = v88;

      *(v45 + 24) = v53;
      _os_log_impl(&_mh_execute_header, v43, v44, "%s Checking thumbnail: %s. hasFinishedTryingToFetchCorrectThumbnail: %s", v45, 0x20u);
      swift_arrayDestroy();
    }

    v94(v18, v95);
    v54 = v92;
    dispatch_group_enter(v92);
    v55 = swift_allocObject();
    *(v55 + 16) = v42;
    *(v55 + 24) = v54;
    v101 = sub_100030348;
    v102 = v55;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = sub_100002DB0;
    v100 = &unk_100089FD0;
    v56 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v57 = v54;

    v58 = [v42 registerGenerationCompletionHandler:v56];
    _Block_release(v56);
    if ((v58 & 1) == 0)
    {
      v59 = v86;
      static Logger.Tests.getter();
      swift_unknownObjectRetain();
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v62 = v83;
        *(v62 + 4) = sub_100005D28(0xD00000000000004DLL, v87 | 0x8000000000000000, &aBlock);
        *(v62 + 12) = 2080;
        v96 = v42;
        swift_unknownObjectRetain();
        sub_10000DB4C(&qword_100093850, &qword_100074080);
        v63 = String.init<A>(describing:)();
        v65 = sub_100005D28(v63, v64, &aBlock);
        v32 = v88;

        *(v62 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v60, v61, "%s Thumbnail generation already completed for thumbnail: %s", v62, 0x16u);
        swift_arrayDestroy();
      }

      v94(v59, v95);
      dispatch_group_leave(v57);
      v18 = v85;
    }

    ++v41;
    swift_unknownObjectRelease();
  }

  while (v91 != v41);
LABEL_53:
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v66 = static OS_dispatch_queue.main.getter();
  v67 = swift_allocObject();
  v68 = v75;
  v67[2] = v32;
  v67[3] = v68;
  v67[4] = v76;
  v101 = sub_100030350;
  v102 = v67;
  aBlock = _NSConcreteStackBlock;
  v98 = 1107296256;
  v99 = sub_100002DB0;
  v100 = &unk_10008A020;
  v69 = _Block_copy(&aBlock);

  v70 = v77;
  static DispatchQoS.unspecified.getter();
  v96 = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  v71 = v79;
  v72 = v82;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v73 = v92;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v69);

  (*(v81 + 8))(v71, v72);
  (*(v78 + 8))(v70, v80);
}

void sub_100015B10(uint64_t a1, NSObject *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Tests.getter();
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100005D28(0xD00000000000004DLL, 0x8000000100074DD0, &v16);
    *(v11 + 12) = 2080;
    v15 = a1;
    swift_unknownObjectRetain();
    sub_10000DB4C(&qword_100093850, &qword_100074080);
    v12 = String.init<A>(describing:)();
    v14 = sub_100005D28(v12, v13, &v16);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s Thumbnail generation request completed for thumbnail: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  (*(v5 + 8))(v8, v4);
  dispatch_group_leave(a2);
}

uint64_t sub_100015D30(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Tests.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100005D28(0xD00000000000004DLL, 0x8000000100074DD0, &v17);
    *(v11 + 12) = 2048;
    if (a1 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 14) = v13;

    _os_log_impl(&_mh_execute_header, v9, v10, "%s END waiting for %ld. All items loaded, continuing", v11, 0x16u);
    sub_100034948(v12);
  }

  else
  {
  }

  v14 = (*(v5 + 8))(v8, v4);
  return a2(v14);
}

uint64_t sub_100015F38(void *a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = sub_100035524;
    v14[4] = v13;
    v15 = a1;

    if (sub_10002F5B8())
    {
      sub_100014F3C(v15, sub_100035524, v13);
    }

    else
    {
      v21 = static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews.getter();
      v22 = swift_allocObject();
      v22[2] = a4;
      v22[3] = v15;
      v22[4] = sub_1000355EC;
      v22[5] = v14;
      v23 = objc_opt_self();
      v24 = v15;
      v25 = a4;

      v26 = [v23 defaultCenter];
      v31[3] = sub_100002B84(0, &qword_1000937E0, UIViewController_ptr);
      v31[0] = v24;
      v27 = objc_opt_self();
      v28 = v24;
      v29 = [v27 mainQueue];
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1000355DC;
      *(v30 + 24) = v22;

      NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

      sub_100005A04(v31, &qword_100093498, &qword_100074430);
    }
  }

  else
  {
    static Logger.Tests.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "content view controller is nil", v19, 2u);
    }

    (*(v9 + 8))(v12, v8);
    sub_100030284();
    swift_allocError();
    *v20 = 1;
    a2();
  }
}

uint64_t sub_100016310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = sub_10003035C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008A070;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000165DC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if (a2)
  {
    (a3)(a2);
  }

  v9 = 0;
  if (a1)
  {
    type metadata accessor for DOCItemCollectionViewController();
    v9 = swift_dynamicCastClass();
  }

  return sub_100015F38(v9, a3, a4, a5);
}

uint64_t sub_100016654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = sub_10000B2A4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_100089F30;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19[1] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

void sub_10001691C(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, void *a6)
{
  if (a2)
  {
    a3(0);
  }

  else if (a1)
  {

    v11 = a1;
    sub_10002FD1C(v11, a6, a5, a3, a4, a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000169D8(void *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v17 = String._bridgeToObjectiveC()();
    [a3 failedTest:v17];
  }

  static Logger.Tests.getter();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v27 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v28 = a6;
    v29 = v22;
    v23 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100005D28(a4, a5, &v29);
    _os_log_impl(&_mh_execute_header, v18, v19, "Starting test %s", v21, 0xCu);
    sub_100034948(v23);
    a6 = v28;

    a1 = v27;
  }

  (*(v13 + 8))(v16, v12);
  v24 = String._bridgeToObjectiveC()();
  [a3 startedTest:v24];

  if (a1)
  {

    v25 = a3;
    sub_1000307FC(a1, a6, v25, v25, a4, a5);
  }

  else
  {
    __break(1u);
  }
}

void sub_100016C30(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = String._bridgeToObjectiveC()();
    [a2 failedTest:v13];
  }

  static Logger.Tests.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100005D28(a3, a4, &v20);
    _os_log_impl(&_mh_execute_header, v14, v15, "Starting test %s", v16, 0xCu);
    sub_100034948(v17);
  }

  (*(v9 + 8))(v12, v8);
  v18 = String._bridgeToObjectiveC()();
  [a2 finishedTest:v18];
}

void sub_100016E34(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    static Logger.Tests.getter();

    v15 = a4;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = a5;
      v19 = v18;
      v24 = swift_slowAlloc();
      v26 = v24;
      *v19 = 136315394;
      *(v19 + 4) = sub_100005D28(a2, a3, &v26);
      *(v19 + 12) = 2080;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = sub_100005D28(v20, v21, &v26);

      *(v19 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed test %s. Timed-out waiting for source identifier: %s. Note that performHandlerAfterLocationForSourceIsLoaded doesn't error out if the source is not found", v19, 0x16u);
      swift_arrayDestroy();

      a5 = v25;
    }

    (*(v11 + 8))(v14, v10);
    v23 = String._bridgeToObjectiveC()();
    [a5 failedTest:v23];
  }
}

void sub_100017080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, id a7, void *a8, uint64_t a9, unsigned __int8 a10)
{
  v87 = a8;
  v83 = a9;
  v16 = type metadata accessor for IndexPath();
  v76 = *(v16 - 8);
  v77 = v16;
  v17 = *(v76 + 64);
  __chkstk_darwin(v16);
  v80 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v79 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v81 = &v73 - v25;
  v26 = __chkstk_darwin(v24);
  v84 = &v73 - v27;
  __chkstk_darwin(v26);
  v29 = &v73 - v28;
  swift_beginAccess();
  *(a3 + 16) = 1;
  v85 = v20;
  v86 = a7;
  v82 = v19;
  if (a2)
  {
    static Logger.Tests.getter();

    v78 = a6;
    v30 = a6;
    v31 = a5;
    v32 = a7;
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v88[0] = v75;
      *v35 = 136315906;
      *(v35 + 4) = sub_100005D28(a4, v31, v88);
      *(v35 + 12) = 2080;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = sub_100005D28(v37, v38, v88);
      v74 = v33;
      v40 = v34;
      v41 = v39;

      *(v35 + 14) = v41;
      *(v35 + 22) = 2112;
      *(v35 + 24) = v32;
      *v36 = v32;
      *(v35 + 32) = 2112;
      v42 = v32;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 34) = v43;
      v36[1] = v43;
      v44 = v74;
      _os_log_impl(&_mh_execute_header, v74, v40, "Failed test %s. performHandlerAfterLocationForSourceIsLoaded: %s. mainViewController: %@ returned error: %@", v35, 0x2Au);
      sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
      swift_arrayDestroy();
      a7 = v86;

      swift_arrayDestroy();

      v20 = v85;
    }

    else
    {
    }

    v19 = v82;
    (*(v20 + 8))(v29, v82);
    v45 = String._bridgeToObjectiveC()();
    [v87 failedTest:v45];

    a5 = v31;
  }

  v46 = [a7 effectiveFullBrowser];
  DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:)();

  v47 = v84;
  static Logger.Tests.getter();

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v88[0] = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_100005D28(a4, a5, v88);
    _os_log_impl(&_mh_execute_header, v48, v49, "Starting test %s", v50, 0xCu);
    sub_100034948(v51);
  }

  v52 = *(v20 + 8);
  v52(v47, v19);
  v53 = String._bridgeToObjectiveC()();
  [v87 startedTest:v53];

  v54 = [v86 effectiveBrowserViewController];
  if (v54 && (v55 = v54, v56 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v55, v56))
  {
    v57 = static NSNotificationName.DOCItemCollectionViewDidFinishGathering.getter();
    v58 = swift_allocObject();
    v59 = v87;
    *(v58 + 16) = v87;
    v60 = objc_opt_self();
    v87 = v59;
    v61 = [v60 defaultCenter];
    memset(v88, 0, sizeof(v88));
    v62 = [objc_opt_self() mainQueue];
    v63 = swift_allocObject();
    *(v63 + 16) = sub_10003508C;
    *(v63 + 24) = v58;

    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(v88, &qword_100093498, &qword_100074430);

    v64 = dispatch thunk of DOCItemCollectionViewController.collectionView.getter();
    v65 = v80;
    sub_100011B8C(v64, a10, v80);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v76 + 8))(v65, v77);
    [v56 collectionView:v64 performPrimaryActionForItemAtIndexPath:isa];
  }

  else
  {
    v66 = v81;
    static Logger.Tests.getter();

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v88[0] = v70;
      *v69 = 136315138;
      *(v69 + 4) = sub_100005D28(a4, a5, v88);
      _os_log_impl(&_mh_execute_header, v67, v68, "Failed test %s. mainViewController.effectiveBrowserViewController?.containedItemCollectionViewController was nil", v69, 0xCu);
      sub_100034948(v70);
    }

    v52(v66, v19);
    v71 = String._bridgeToObjectiveC()();
    [v87 failedTest:v71];
  }
}

void sub_1000179E8(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Tests.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v12 = *&v7[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8];
    v20[1] = *&v7[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName];
    v20[2] = v12;

    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v13 = String.init<A>(describing:)();
    v15 = sub_100005D28(v13, v14, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received finish gathering notification for %s (should be Browse*Folder). Finishing test", v10, 0xCu);
    sub_100034948(v11);
  }

  (*(v3 + 8))(v6, v2);
  v16 = &v7[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName];
  if (*&v7[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8])
  {
    v17 = *v16;
    v18 = *(v16 + 1);

    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  [v7 finishedTest:v19 waitForCommit:1 extraResults:0];
}

id sub_100017C28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [a4 tabBarController];
  if (result)
  {
    v16 = result;
    sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
    *v14 = static OS_dispatch_queue.main.getter();
    (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
    v17 = _dispatchPreconditionTest(_:)();
    result = (*(v11 + 8))(v14, v10);
    if (v17)
    {
      [v16 setSelectedIndex:0];

      v18 = [objc_opt_self() recentDocumentsLocation];
      v19 = [a4 fullRecentsViewController];
      v20 = [v19 hierarchyController];

      v21 = swift_allocObject();
      v21[2] = v18;
      v21[3] = a4;
      v21[4] = v5;
      v21[5] = a3;
      v21[6] = a1;
      v21[7] = a2;
      v22 = v18;
      v23 = a4;
      v24 = v5;

      DOCHierarchyController.reset(with:animated:completionHandler:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100017E7C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v68 = a6;
  v69 = a5;
  v64 = a4;
  v67 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v65 = &v62 - v15;
  __chkstk_darwin(v14);
  v17 = &v62 - v16;
  static Logger.Tests.getter();
  v18 = a1;
  v19 = a2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412546;
    *(v22 + 4) = v18;
    *v23 = v18;
    *(v22 + 12) = 2112;
    v24 = v18;
    v25 = [v19 fullRecentsViewController];
    *(v22 + 14) = v25;
    v23[1] = v25;
    _os_log_impl(&_mh_execute_header, v20, v21, "did show %@ on %@", v22, 0x16u);
    sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
    swift_arrayDestroy();
  }

  v26 = *(v9 + 8);
  v26(v17, v8);
  v27 = [v19 effectiveBrowserViewController];
  v28 = v68;
  if (v27)
  {
    v29 = v27;
    v30 = dispatch thunk of DOCBrowserContainerController.contentViewController.getter();

    if (v30)
    {
      v66 = v26;
      type metadata accessor for DOCItemCollectionViewController();
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        v32 = v31;
        v33 = dispatch thunk of DOCItemCollectionViewController.source.getter();
        v34 = [v33 identifier];

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
        if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
        {

          v28 = v68;
LABEL_10:
          v40 = v65;
          static Logger.Tests.getter();
          v41 = v30;
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v71 = v63;
            *v44 = 136315138;
            v62 = v41;
            v45 = [v32 description];
            v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v48 = v47;

            v49 = sub_100005D28(v46, v48, &v71);
            v28 = v68;

            *(v44 + 4) = v49;
            _os_log_impl(&_mh_execute_header, v42, v43, "trying to run scroll test on %s", v44, 0xCu);
            sub_100034948(v63);

            v50 = v65;
          }

          else
          {

            v50 = v40;
          }

          v66(v50, v8);
          v61 = sub_10002EB80(v64);
          sub_10002D600(v69, v28, v32, v61, HIDWORD(v61), v67);
          goto LABEL_20;
        }

        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v28 = v68;
        if (v39)
        {
          goto LABEL_10;
        }
      }

      v26 = v66;
    }
  }

  static Logger.Tests.getter();
  v51 = v19;

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v66 = v26;
    v54 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v54 = 136315394;
    *(v54 + 4) = sub_100005D28(v69, v28, &v71);
    *(v54 + 12) = 2080;
    v55 = [v51 effectiveBrowserViewController];
    if (v55)
    {
      v56 = v55;
      v57 = dispatch thunk of DOCBrowserContainerController.contentViewController.getter();
    }

    else
    {
      v57 = 0;
    }

    v70 = v57;
    sub_10000DB4C(&qword_100093870, &qword_100074098);
    v58 = String.init<A>(describing:)();
    v60 = sub_100005D28(v58, v59, &v71);

    *(v54 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v52, v53, "Failed test %s: %s could not switch to Recents", v54, 0x16u);
    swift_arrayDestroy();

    v66(v13, v8);
  }

  else
  {

    v26(v13, v8);
  }

  v41 = String._bridgeToObjectiveC()();
  [v67 failedTest:v41];
LABEL_20:
}

Swift::Int sub_100018500()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10001856C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000185AC(void *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, int a4)
{
  v81 = a2;
  v82 = a3;
  v6 = type metadata accessor for Logger();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  __chkstk_darwin(v8);
  v73 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = type metadata accessor for DispatchQoS();
  v72 = *(v74 - 8);
  v11 = *(v72 + 64);
  __chkstk_darwin(v74);
  v71 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = type metadata accessor for DispatchTimeInterval();
  v66 = *(v67 - 8);
  v13 = *(v66 + 64);
  __chkstk_darwin(v67);
  v65 = &v61[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = type metadata accessor for DispatchTime();
  v69 = *(v70 - 8);
  v15 = *(v69 + 64);
  v16 = __chkstk_darwin(v70);
  v64 = &v61[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v68 = &v61[-v18];
  v19 = sub_10000DB4C(&qword_100093858, &qword_100074088);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v63 = &v61[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v25 = &v61[-v24];
  v26 = __chkstk_darwin(v23);
  v28 = &v61[-v27];
  __chkstk_darwin(v26);
  v30 = &v61[-v29];
  v31 = type metadata accessor for IndexPath();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v33(v30, 1, 1, v31);
  v77 = a1;
  v78 = a4;
  sub_100011B8C(a1, a4, v28);
  sub_100005A04(v30, &qword_100093858, &qword_100074088);
  v33(v28, 0, 1, v31);
  sub_100033034(v28, v30);
  v34 = v82;
  sub_100034850(v30, v25, &qword_100093858, &qword_100074088);
  v35 = (*(v32 + 48))(v25, 1, v31);
  sub_100005A04(v25, &qword_100093858, &qword_100074088);
  if (v35 == 1)
  {
    v36 = v77;
    [v77 bounds];
    v37 = CGRectGetHeight(v84) * 0.75;
    [v36 contentOffset];
    v39 = v38;
    v40 = v37 + v38;
    [v36 contentSize];
    if (v40 >= v41)
    {
      v58 = v63;
      v33(v63, 1, 1, v31);
      sub_100034538();
      v59 = swift_allocError();
      v81(v58, v59);

      sub_100005A04(v58, &qword_100093858, &qword_100074088);
    }

    else
    {
      [v36 bounds];
      [v36 setContentOffset:{0.0, v39 + CGRectGetHeight(v85) * 0.75}];
      [v36 reloadData];
      sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
      v82 = static OS_dispatch_queue.main.getter();
      v42 = v64;
      static DispatchTime.now()();
      v43 = v65;
      *v65 = 1;
      v44 = v66;
      v45 = v67;
      (*(v66 + 104))(v43, enum case for DispatchTimeInterval.seconds(_:), v67);
      v46 = v68;
      + infix(_:_:)();
      (*(v44 + 8))(v43, v45);
      v62 = v30;
      v47 = *(v69 + 8);
      v48 = v42;
      v49 = v70;
      v47(v48, v70);
      v50 = swift_allocObject();
      *(v50 + 16) = v78;
      v51 = v81;
      *(v50 + 24) = v36;
      *(v50 + 32) = v51;
      *(v50 + 40) = v34;
      aBlock[4] = sub_1000355E0;
      aBlock[5] = v50;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002DB0;
      aBlock[3] = &unk_10008A390;
      v52 = _Block_copy(aBlock);
      v53 = v36;

      v54 = v71;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v55 = v73;
      v56 = v76;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v57 = v82;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v52);

      (*(v75 + 8))(v55, v56);
      (*(v72 + 8))(v54, v74);
      v47(v46, v49);
      v30 = v62;
    }
  }

  else
  {
    v81(v30, 0);
  }

  return sub_100005A04(v30, &qword_100093858, &qword_100074088);
}

uint64_t sub_100019110(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = type metadata accessor for Logger();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v16;
  if (a1)
  {
    if (a1 != 2)
    {
      type metadata accessor for DOCTab(0);
      v53[3] = v42;
      v53[0] = a1;
      result = doc_fatalErrorUnrecognizedEnumValueEncountered(_:)();
      __break(1u);
      return result;
    }

    v51 = 0;
  }

  else
  {
    v51 = 2;
  }

  static Logger.Tests.getter();

  v17 = a4;
  v18 = a5;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v50 = v20;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v49 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v44 = v23;
    v47 = swift_slowAlloc();
    v53[0] = v47;
    *v22 = 136315650;
    *(v22 + 4) = sub_100005D28(a2, a3, v53);
    *(v22 + 12) = 2112;
    *(v22 + 14) = v17;
    *v23 = v17;
    *(v22 + 22) = 2080;
    v24 = v17;
    v25 = v18;
    v46 = v12;
    v48 = v6;
    v26 = v25;
    v27 = [v25 description];
    v45 = v15;
    v43 = v19;
    v28 = v27;
    v29 = a2;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v18;
    v33 = v32;

    v6 = v48;
    v34 = v30;
    a2 = v29;
    v35 = sub_100005D28(v34, v33, v53);
    v18 = v31;

    *(v22 + 24) = v35;
    v36 = v43;
    _os_log_impl(&_mh_execute_header, v43, v50, "%s %@ %s", v22, 0x20u);
    sub_100005A04(v44, &qword_1000937D0, &unk_1000743F0);

    swift_arrayDestroy();

    a1 = v49;

    (*(v52 + 8))(v45, v46);
  }

  else
  {

    (*(v52 + 8))(v15, v12);
  }

  v37 = swift_allocObject();
  v37[2] = v6;
  v37[3] = a2;
  v37[4] = a3;
  v37[5] = v18;
  v37[6] = a1;
  v37[7] = v17;

  v38 = v17;
  v39 = v18;
  v40 = v6;
  sub_10001A204(v51, 2, sub_1000348E8, v37);
}

uint64_t sub_100019498(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v26 = a5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v15 = *(v28 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v28);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v27 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = v26;
  v19[7] = a6;
  aBlock[4] = sub_100034900;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008A9A8;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  v22 = a4;
  v23 = a6;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v27;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v29 + 8))(v14, v11);
  return (*(v15 + 8))(v18, v28);
}

uint64_t sub_100019790(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v46 = a6;
  v43 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  __chkstk_darwin(v10);
  v50 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  v13 = *(v49 + 64);
  __chkstk_darwin(v51);
  v48 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchTime();
  v15 = *(v45 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v45);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v42 - v20;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = (&v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = a2;
  v47 = a3;
  v27 = String._bridgeToObjectiveC()();
  v28 = a1;
  [a1 startedTest:v27];

  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  *v26 = static OS_dispatch_queue.main.getter();
  (*(v23 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v22);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  result = (*(v23 + 8))(v26, v22);
  if (a1)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      [v43 setSelectedIndex:a5];
      v30 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v31 = v21;
      + infix(_:_:)();
      v43 = *(v15 + 8);
      v32 = v45;
      (v43)(v19, v45);
      v33 = swift_allocObject();
      v34 = v46;
      v33[2] = v46;
      v33[3] = v28;
      v35 = v44;
      v33[4] = a5;
      v33[5] = v35;
      v33[6] = v47;
      aBlock[4] = sub_100034918;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002DB0;
      aBlock[3] = &unk_10008A9F8;
      v36 = _Block_copy(aBlock);
      v37 = v34;
      v38 = v28;

      v39 = v48;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v40 = v50;
      v41 = v53;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v36);

      (*(v52 + 8))(v40, v41);
      (*(v49 + 8))(v39, v51);
      return (v43)(v31, v32);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100019CBC(void *a1, char *a2, id a3, uint64_t a4, unint64_t a5)
{
  v53 = a4;
  v54 = a5;
  v55 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v48 - v13;
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v17 = [a1 effectiveTabSwitcherTab];
  static Logger.Tests.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v57 = v21;
    *v20 = 136315138;
    v22 = DOCTab.description.getter();
    v49 = v17;
    v50 = v8;
    v52 = v7;
    v24 = v14;
    v25 = sub_100005D28(v22, v23, &v57);
    v7 = v52;
    v26 = v50;

    *(v20 + 4) = v25;
    v14 = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Tab after commit effectiveTabSwitcherTab: %s", v20, 0xCu);
    sub_100034948(v21);

    v27 = v26;
    v17 = v49;
  }

  else
  {

    v27 = v8;
  }

  v28 = *(v27 + 8);
  v28(v16, v7);
  v29 = OBJC_IVAR____TtC5Files14DOCApplication_loadedTabs;
  v30 = v55;
  swift_beginAccess();
  v31 = *&v30[v29];
  v32 = *(v31 + 16);
  v33 = (v31 + 32);
  while (v32)
  {
    v34 = *v33++;
    --v32;
    if (v34 == a3)
    {
      static Logger.Tests.getter();
      v35 = v54;

      v36 = Logger.logObject.getter();
      v37 = v14;
      v38 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v36, v38))
      {
        v39 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v39 = 136315394;
        *(v39 + 4) = sub_100005D28(0xD000000000000047, 0x8000000100074E40, &v56);
        *(v39 + 12) = 2080;
        *(v39 + 14) = sub_100005D28(v53, v35, &v56);
        _os_log_impl(&_mh_execute_header, v36, v38, "%s: %s; tab already in loadedTabs, finishing test after commit", v39, 0x16u);
        swift_arrayDestroy();

        v28(v37, v7);
        goto LABEL_15;
      }

      v45 = v37;
      v46 = v7;
      goto LABEL_14;
    }
  }

  if (v17 != a3)
  {
    return;
  }

  v52 = v7;
  v40 = v51;
  static Logger.Tests.getter();
  v41 = v54;

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v44 = 136315394;
    *(v44 + 4) = sub_100005D28(0xD000000000000047, 0x8000000100074E40, &v56);
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_100005D28(v53, v41, &v56);
    _os_log_impl(&_mh_execute_header, v42, v43, "%s: %s; effectiveTabSwitcherTab matches tab, finishing test after commit", v44, 0x16u);
    swift_arrayDestroy();

    v28(v40, v52);
    goto LABEL_15;
  }

  v45 = v40;
  v46 = v52;
LABEL_14:
  v28(v45, v46);
LABEL_15:
  v47 = String._bridgeToObjectiveC()();
  [v55 finishedTest:v47];
}

uint64_t sub_10001A204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v54 = a3;
  v55 = a4;
  v53 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  __chkstk_darwin(v7);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  __chkstk_darwin(v10);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTimeInterval();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for DispatchTime();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v50 - v24;
  v26 = OBJC_IVAR____TtC5Files14DOCApplication_loadedTabs;
  swift_beginAccess();
  v27 = *&v5[v26];
  v28 = *(v27 + 16);
  v29 = (v27 + 32);
  while (v28)
  {
    v30 = *v29++;
    --v28;
    if (v30 == a1)
    {
      sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
      v52 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v17 = v53;
      (*(v14 + 104))(v17, enum case for DispatchTimeInterval.seconds(_:), v13);
      + infix(_:_:)();
      (*(v14 + 8))(v17, v13);
      v31 = *(v19 + 8);
      v32 = v18;
      v31(v23, v18);
      v33 = swift_allocObject();
      v34 = v55;
      *(v33 + 16) = v54;
      *(v33 + 24) = v34;
      v66 = sub_10000B2A4;
      v67 = v33;
      aBlock = _NSConcreteStackBlock;
      v63 = 1107296256;
      v64 = sub_100002DB0;
      v65 = &unk_10008A8E0;
      v35 = _Block_copy(&aBlock);

      v36 = v56;
      static DispatchQoS.unspecified.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v37 = v57;
      v38 = v61;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v39 = v52;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v35);

      (*(v60 + 8))(v37, v38);
      (*(v58 + 8))(v36, v59);
      return (v31)(v25, v32);
    }
  }

  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v41 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v42 = *(v19 + 8);
  v51 = v18;
  v52 = v42;
  v42(v23, v18);
  v43 = swift_allocObject();
  v43[2] = v5;
  v43[3] = a1;
  v44 = v54;
  v43[4] = v53;
  v43[5] = v44;
  v43[6] = v55;
  v66 = sub_1000348B8;
  v67 = v43;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100002DB0;
  v65 = &unk_10008A930;
  v45 = _Block_copy(&aBlock);

  v46 = v5;

  v47 = v56;
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  v48 = v57;
  v49 = v61;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v45);

  (*(v60 + 8))(v48, v49);
  (*(v58 + 8))(v47, v59);
  return v52(v25, v51);
}

void sub_10001A8C8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, int a7, uint64_t a8, uint64_t a9)
{
  v84 = a8;
  v83 = a7;
  v14 = type metadata accessor for Logger();
  v89 = *(v14 - 8);
  v90 = v14;
  v15 = v89[8];
  v16 = __chkstk_darwin(v14);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v88 = (&v79 - v19);
  v87 = type metadata accessor for URL();
  v85 = *(v87 - 8);
  v20 = *(v85 + 64);
  v21 = __chkstk_darwin(v87);
  v82 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v22;
  __chkstk_darwin(v21);
  v86 = &v79 - v23;
  swift_beginAccess();
  v24 = &qword_100074430;
  sub_100034850(a3 + 16, &aBlock, &qword_100093498, &qword_100074430);
  v25 = *(&v96 + 1);
  sub_100005A04(&aBlock, &qword_100093498, &qword_100074430);
  v92 = a5;
  v93 = a6;
  if (v25)
  {
    v26 = a1;
    v27 = a4;
    swift_beginAccess();
    sub_100034850(a3 + 16, &aBlock, &qword_100093498, &qword_100074430);
    if (!*(&v96 + 1))
    {
      goto LABEL_39;
    }

    v28 = objc_opt_self();
    v24 = *(&v96 + 1);
    v29 = sub_100006C6C(&aBlock, *(&v96 + 1));
    v30 = *(v24 - 1);
    v31 = *(v30 + 64);
    __chkstk_darwin(v29);
    v33 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v33);
    v34 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v30 + 8))(v33, v24);
    sub_100034948(&aBlock);
    [v28 endMonitoringProviderDomainChanges:v34];
    swift_unknownObjectRelease();
    aBlock = 0u;
    v96 = 0u;
    swift_beginAccess();
    sub_10000AE08(&aBlock, a3 + 16);
    a4 = v27;
    a1 = v26;
    a5 = v92;
    a6 = v93;
  }

  v91 = a4;
  if (!a1)
  {
    static Logger.Tests.getter();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&aBlock = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_100005D28(v91, a5, &aBlock);
      _os_log_impl(&_mh_execute_header, v48, v49, "Failed test %s. domainDictionary was nil", v50, 0xCu);
      sub_100034948(v51);
    }

    (v89[1])(v18, v90);
    v52 = String._bridgeToObjectiveC()();
    [a6 failedTest:v52];
    goto LABEL_24;
  }

  v80 = a9;
  v35 = 1 << a1[32];
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(a1 + 8);
  v38 = (v35 + 63) >> 6;

  v39 = 0;
  if (!v37)
  {
LABEL_9:
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= v38)
      {

        a1 = DOCDocumentSourceIdentifierLocal;
        v18 = 0;
        goto LABEL_16;
      }

      v37 = *&a1[8 * v40 + 64];
      ++v39;
      if (v37)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  while (1)
  {
    v40 = v39;
LABEL_12:
    v41 = a1;
    v42 = *(*(a1 + 6) + ((v40 << 9) | (8 * __clz(__rbit64(v37)))));
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v42;
    v43 = static DOCDocumentSourceIdentifier.iCloudCurrent.getter();
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    a3 = sub_10001B300();

    if (a3)
    {
      break;
    }

    v37 &= v37 - 1;

    v39 = v40;
    if (!v37)
    {
      goto LABEL_9;
    }
  }

  v53 = DOCDocumentSourceIdentifierLocal;
  if (!*(a1 + 2))
  {
    a1 = DOCDocumentSourceIdentifierLocal;
LABEL_16:
    v38 = v92;
    v40 = v93;
    goto LABEL_17;
  }

  v18 = v18;
  a1 = v53;
  v54 = sub_100047FC4(v18);
  v38 = v92;
  v40 = v93;
  if ((v55 & 1) == 0)
  {

LABEL_17:
    v24 = v88;
LABEL_18:
    static Logger.Tests.getter();

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&aBlock = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_100005D28(v91, v38, &aBlock);
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed test %s. could not get cloudURL", v46, 0xCu);
      sub_100034948(v47);
    }

    (v89[1])(v24, v90);
    v52 = String._bridgeToObjectiveC()();
    [v40 failedTest:v52];

LABEL_24:
    return;
  }

  v24 = v88;
  if (!*(v41 + 2))
  {
LABEL_36:

    goto LABEL_18;
  }

  a3 = *(*(v41 + 7) + 8 * v54);
  v56 = sub_100047FC4(a1);
  if ((v57 & 1) == 0)
  {
LABEL_35:

    goto LABEL_36;
  }

  v58 = *(*(v41 + 7) + 8 * v56);
  v59 = [a3 storageURLs];
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = *(v60 + 16);
  if (!v61)
  {

    goto LABEL_17;
  }

  v90 = v58;
  v94 = a1;
  if (*(v60 + 16))
  {
    v62 = v85;
    v63 = *(v85 + 80);
    v64 = *(v85 + 16);
    v65 = v86;
    v66 = v87;
    v64(v86, v60 + ((v63 + 32) & ~v63), v87);

    v89 = [objc_opt_self() defaultManager];
    v67 = v82;
    v64(v82, v65, v66);
    v68 = (v63 + 41) & ~v63;
    v69 = (v81 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    v71 = v92;
    *(v70 + 16) = v91;
    *(v70 + 24) = v71;
    v72 = v93;
    *(v70 + 32) = v93;
    *(v70 + 40) = v83;
    (*(v62 + 32))(v70 + v68, v67, v66);
    v73 = (v70 + v69);
    v74 = v80;
    *v73 = v84;
    v73[1] = v74;
    v97 = sub_10002C9E4;
    v98 = v70;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v96 = sub_10001C4C4;
    *(&v96 + 1) = &unk_100089CB0;
    v75 = _Block_copy(&aBlock);

    v76 = v72;

    v78 = v89;
    v77 = v90;
    [v89 doc_fetchRootNodeForProviderDomain:v90 completionHandler:v75];

    _Block_release(v75);
    (*(v62 + 8))(v86, v66);
    return;
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_10001B300()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void sub_10001B45C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v90 = a8;
  v91 = a7;
  v96 = a3;
  v92 = type metadata accessor for URL();
  v13 = *(v92 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v92);
  v16 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v87 = &v82 - v17;
  v18 = type metadata accessor for Logger();
  v93 = *(v18 - 8);
  v94 = v18;
  v19 = *(v93 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  __chkstk_darwin(v23);
  if (a1)
  {
    v83 = v25;
    v84 = &v82 - v24;
    v88 = a4;
    v89 = a5;
    v85 = a9;
    v26 = *&a5[OBJC_IVAR____TtC5Files14DOCApplication_localDomainRootNodeForQLTests];
    *&a5[OBJC_IVAR____TtC5Files14DOCApplication_localDomainRootNodeForQLTests] = a1;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    v86 = a6;
    v95 = a1;
    if (a6 <= 3u)
    {
      v27 = v13;
    }

    else
    {
      v27 = v13;
      if (a6 >= 8u)
      {

LABEL_10:
        swift_getObjectType();
        v35 = DOCNode.fpfs_syncFetchFPItem()();
        if (v35)
        {
          v36 = v35;
          v37 = [objc_opt_self() shared];
          v38 = objc_allocWithZone(type metadata accessor for DOC_FPCreateFolderOperation());
          v39 = v36;
          v40 = DOC_FPCreateFolderOperation.init(parentItem:folderName:undoManager:shouldRegisterUndo:)();
          v41 = v87;
          v42 = v92;
          (*(v27 + 16))(v87, v91, v92);
          v43 = (*(v27 + 80) + 40) & ~*(v27 + 80);
          v44 = (v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
          v45 = swift_allocObject();
          v47 = v88;
          v46 = v89;
          *(v45 + 2) = v96;
          *(v45 + 3) = v47;
          *(v45 + 4) = v46;
          (*(v27 + 32))(&v45[v43], v41, v42);
          v48 = &v45[v44];
          v49 = v85;
          *v48 = v90;
          *(v48 + 1) = v49;
          aBlock[4] = sub_10002CAB8;
          aBlock[5] = v45;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10001D16C;
          aBlock[3] = &unk_100089D28;
          v50 = _Block_copy(aBlock);

          v51 = v40;
          v52 = v46;

          [v51 setCreateFolderCompletionBlock:v50];
          _Block_release(v50);

          v53 = [objc_opt_self() defaultManager];
          [v53 scheduleAction:v51];
        }

        else
        {
          v67 = v84;
          static Logger.Tests.getter();
          v68 = v88;

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            aBlock[0] = v72;
            *v71 = 136315138;
            *(v71 + 4) = sub_100005D28(v96, v68, aBlock);
            _os_log_impl(&_mh_execute_header, v69, v70, "Failed test %s. FPItem was nil", v71, 0xCu);
            sub_100034948(v72);
          }

          (*(v93 + 8))(v67, v94);
          v73 = v89;
          v81 = String._bridgeToObjectiveC()();
          [v73 failedTest:v81];
        }

        goto LABEL_21;
      }
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v34)
    {
      goto LABEL_10;
    }

    sub_10000DB4C(&unk_100093C40, "&+");
    v54 = *(v27 + 72);
    v55 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    *(swift_allocObject() + 16) = xmmword_100073FE0;
    URL.appendingPathComponent(_:)();
    v56 = v96;
    URL.appendingPathComponent(_:)();

    (*(v27 + 8))(v16, v92);
    v57 = [objc_opt_self() shared];
    v58 = makeDOCCopyOperation(urls:destinationFolder:undoManager:)();
    v60 = v59;

    if (v58)
    {
      swift_getObjectType();
      v61 = swift_allocObject();
      v61[2] = v56;
      v62 = v89;
      v61[3] = v88;
      v61[4] = v62;
      v63 = v85;
      v61[5] = v90;
      v61[6] = v63;
      v64 = *(v60 + 8);

      v65 = v62;

      dispatch thunk of SomeOperation.actionCompletionBlock.setter();
      v66 = [objc_opt_self() defaultManager];
      swift_unknownObjectRetain();
      FPItemManager.scheduleOperation(_:)();

      swift_unknownObjectRelease_n();
LABEL_21:
      swift_unknownObjectRelease();
      return;
    }

    v74 = v83;
    static Logger.Tests.getter();
    v75 = v88;

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      aBlock[0] = v79;
      *v78 = 136315138;
      *(v78 + 4) = sub_100005D28(v56, v75, aBlock);
      _os_log_impl(&_mh_execute_header, v76, v77, "Failed test %s. could not create copy operation", v78, 0xCu);
      sub_100034948(v79);
    }

    (*(v93 + 8))(v74, v94);
    v80 = String._bridgeToObjectiveC()();
    [v89 failedTest:v80];
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = a5;
    static Logger.Tests.getter();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100005D28(v96, a4, aBlock);
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed test %s. could not get root node", v31, 0xCu);
      sub_100034948(v32);
    }

    (*(v93 + 8))(v22, v94);
    v33 = String._bridgeToObjectiveC()();
    [v28 failedTest:v33];
  }
}

void sub_10001C198(void *a1, uint64_t a2, unint64_t a3, char *a4, void (*a5)(void))
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_5;
  }

  v37 = a1;
  swift_errorRetain();
  sub_10000DB4C(&qword_1000937C0, &unk_100074070);
  sub_100002B84(0, &qword_1000937C8, NSError_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v16 = v36;
  v17 = [v36 code];
  v35 = v15;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = v10;
  v22 = v11;
  v23 = a2;
  v24 = v17;

  v25 = v24 + 1001 == 0;
  a2 = v23;
  v11 = v22;
  v10 = v21;
  a3 = v20;
  a4 = v19;
  a5 = v18;
  v15 = v35;
  if (v25)
  {
LABEL_5:
    a5(v13);
  }

  else
  {
LABEL_6:
    v35 = a4;
    static Logger.Tests.getter();
    swift_errorRetain();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = a2;
      v37 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_100005D28(v34, a3, &v37);
      *(v28 + 12) = 2080;
      v36 = a1;
      swift_errorRetain();
      sub_10000DB4C(&unk_100093B40, qword_100074410);
      v30 = String.init<A>(describing:)();
      v32 = sub_100005D28(v30, v31, &v37);

      *(v28 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed test %s. Copy operation error: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    (*(v11 + 8))(v15, v10);
    v33 = String._bridgeToObjectiveC()();
    [v35 failedTest:v33];
  }
}

uint64_t sub_10001C4C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10001C544(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for FPProviderDomainID(0);
    sub_100002B84(0, &qword_100093798, FPProviderDomain_ptr);
    sub_100030300(&unk_1000937A0, type metadata accessor for FPProviderDomainID);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}