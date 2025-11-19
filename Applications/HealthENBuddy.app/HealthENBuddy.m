id sub_10000165C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000017B0()
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

id sub_100001938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100001A6C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v4 - 8);
  v71 = v4;
  v5 = *(v70 + 64);
  __chkstk_darwin(v4);
  v68 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  v7 = *(v67 + 64);
  __chkstk_darwin(v69);
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  v11 = __chkstk_darwin(v9);
  v62 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v63 = &v59 - v13;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v61 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v72 = &v59 - v20;
  __chkstk_darwin(v19);
  v22 = &v59 - v21;
  v23 = Logger.buddy.unsafeMutableAddressor();
  v24 = v15[2];
  v24(v22, v23, v14);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v60 = v15;
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "HealthENBuddyContainer viewDidAppear", v27, 2u);
    v15 = v60;
  }

  v28 = v15[1];
  v28(v22, v14);
  v29 = type metadata accessor for HealthENBuddyContainer();
  v74.receiver = v2;
  v74.super_class = v29;
  objc_msgSendSuper2(&v74, "viewDidAppear:", a1 & 1);
  v2[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_didPresent] = 0;
  v30 = [v2 view];
  if (!v30)
  {
    __break(1u);
    goto LABEL_16;
  }

  v31 = v30;
  v32 = [v30 window];

  if (!v32)
  {
    goto LABEL_7;
  }

  v33 = [v32 _rootSheetPresentationController];

  if (!v33)
  {
LABEL_16:
    __break(1u);
    return;
  }

  [v33 _setShouldScaleDownBehindDescendantSheets:0];

LABEL_7:
  v34 = *&v2[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_region];
  if (v34)
  {
    v24(v72, v23, v14);
    v35 = v34;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Fetch all entities", v38, 2u);
    }

    v28(v72, v14);
    v39 = ENManagerAdapter.defaultAdapter.unsafeMutableAddressor();
    swift_beginAccess();
    v40 = *v39;
    v41 = swift_allocObject();
    *(v41 + 16) = v2;
    *(v41 + 24) = v35;
    v42 = *((swift_isaMask & *v40) + 0x180);
    v72 = v35;
    v43 = v40;
    v44 = v2;
    v42(sub_10000552C, v41);

    sub_100005534(0, &qword_1000118C8, OS_dispatch_queue_ptr);
    v45 = static OS_dispatch_queue.main.getter();
    v46 = v62;
    static DispatchTime.now()();
    v47 = v63;
    + infix(_:_:)();
    v48 = v65;
    v64 = *(v64 + 8);
    (v64)(v46, v65);
    v49 = swift_allocObject();
    *(v49 + 16) = v44;
    aBlock[4] = sub_1000055B4;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003668;
    aBlock[3] = &unk_10000C5E0;
    v50 = _Block_copy(aBlock);
    v51 = v44;

    v52 = v66;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000055D4();
    sub_100005288(&qword_1000118D8, &qword_100006680);
    sub_10000562C();
    v53 = v68;
    v54 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v50);

    (*(v70 + 8))(v53, v54);
    (*(v67 + 8))(v52, v69);
    (v64)(v47, v48);
  }

  else
  {
    v55 = v61;
    v24(v61, v23, v14);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Cannot create onboarding stack without region.", v58, 2u);
    }

    v28(v55, v14);
  }
}

uint64_t sub_10000228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7)
{
  v64 = a7;
  v66 = a5;
  v67 = a6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v65 = (&v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v14 = &v63 - v13;
  __chkstk_darwin(v12);
  v16 = &v63 - v15;
  v17 = Logger.buddy.unsafeMutableAddressor();
  v18 = v8[2];
  v18(v16, v17, v7);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Got entities", v21, 2u);
  }

  v22 = v8[1];
  v22(v16, v7);
  v23 = v66;
  if (v66)
  {
    v18(v14, v17, v7);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v65 = v22;
      v27 = v26;
      v28 = swift_slowAlloc();
      v68 = v23;
      aBlock[0] = v28;
      *v27 = 136315138;
      swift_errorRetain();
      sub_100005288(&qword_1000118E8, &qword_100006688);
      v29 = String.init<A>(describing:)();
      v31 = sub_1000046B4(v29, v30, aBlock);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Could not fetch entities: %s", v27, 0xCu);
      sub_1000052D0(v28);

      v65(v14, v7);
    }

    else
    {

      v22(v14, v7);
    }

    v47 = swift_allocObject();
    v48 = v67;
    *(v47 + 16) = v67;
    aBlock[4] = sub_100005758;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003668;
    aBlock[3] = &unk_10000C6A8;
    v49 = _Block_copy(aBlock);
    v50 = v48;

    [v50 dismissViewControllerAnimated:1 completion:v49];
    _Block_release(v49);
  }

  else
  {
    v32 = v65;
    v18(v65, v17, v7);
    v33 = v64;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    v36 = &ViewController;
    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v37 = 136315138;
      v38 = [v33 regionCode];
      v66 = v7;
      v39 = v38;
      v40 = v32;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = sub_1000046B4(v41, v43, aBlock);

      *(v37 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v34, v35, "Fetch agency model for region %s", v37, 0xCu);
      sub_1000052D0(v64);

      v45 = v40;
      v36 = &ViewController;
      v46 = v66;
    }

    else
    {

      v45 = v32;
      v46 = v7;
    }

    v22(v45, v46);
    v52 = ENManagerAdapter.defaultAdapter.unsafeMutableAddressor();
    swift_beginAccess();
    v53 = *v52;
    v54 = [v33 v36[51].base_props];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = swift_allocObject();
    v59 = v67;
    *(v58 + 16) = v33;
    *(v58 + 24) = v59;
    v60 = *((swift_isaMask & *v53) + 0x178);
    v61 = v59;
    v62 = v33;
    v60(v55, v57, 0, sub_1000056E0, v58);
  }
}

void sub_100002898(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v55 - v14;
  if (a1)
  {
    v57 = a1;
    v58 = a3;
    v16 = a1;
    v17 = Logger.buddy.unsafeMutableAddressor();
    (*(v9 + 16))(v15, v17, v8);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v59 = a4;
      v23 = v22;
      aBlock[0] = v22;
      *v21 = 136315138;
      v24 = [*&v18[direct field offset for ENUIPublicHealthAgencyModel.region] regionCode];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v8;
      v26 = v25;
      v28 = v27;

      v29 = sub_1000046B4(v26, v28, aBlock);

      *(v21 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "Got agency model for region %s", v21, 0xCu);
      sub_1000052D0(v23);
      a4 = v59;

      (*(v9 + 8))(v15, v56);
    }

    else
    {

      (*(v9 + 8))(v15, v8);
    }

    v40 = *ViewControllerFactory.shared.unsafeMutableAddressor();
    v41 = v18;
    v42 = v40;
    v43 = ENManagerAdapter.defaultAdapter.unsafeMutableAddressor();
    swift_beginAccess();
    v44 = *v43;
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = *((swift_isaMask & *v42) + 0xB0);
    v47 = v44;

    v48 = v46(v57, v47, 1, 0, 0, sub_100005720, v45);

    [v48 setModalPresentationStyle:2];
    [a4 presentViewController:v48 animated:1 completion:0];
    *(a4 + OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_didPresent) = 1;
    swift_beginAccess();
    v49 = *((swift_isaMask & **v43) + 0x140);
    v50 = *v43;
    v49(v58, 2);
  }

  else
  {
    v59 = a4;
    v30 = Logger.buddy.unsafeMutableAddressor();
    (*(v9 + 16))(v13, v30, v8);
    v31 = a3;
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      aBlock[0] = v58;
      *v34 = 138412546;
      *(v34 + 4) = v31;
      *v35 = v31;
      *(v34 + 12) = 2080;
      v60 = a2;
      v36 = v31;
      swift_errorRetain();
      sub_100005288(&qword_1000118F0, qword_100006690);
      v37 = String.init<A>(describing:)();
      v39 = sub_1000046B4(v37, v38, aBlock);

      *(v34 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Did not get agency model for %@: %s", v34, 0x16u);
      sub_100005430(v35, &qword_1000118C0, &qword_100006678);

      sub_1000052D0(v58);
    }

    (*(v9 + 8))(v13, v8);
    v51 = swift_allocObject();
    v52 = v59;
    *(v51 + 16) = v59;
    aBlock[4] = sub_100005758;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003668;
    aBlock[3] = &unk_10000C6F8;
    v53 = _Block_copy(aBlock);
    v54 = v52;

    [v54 dismissViewControllerAnimated:1 completion:v53];
    _Block_release(v53);
  }
}

void sub_100002EF4(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &aBlock[-1] - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &aBlock[-1] - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &aBlock[-1] - v15;
  __chkstk_darwin(v14);
  v18 = &aBlock[-1] - v17;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v23 = Logger.buddy.unsafeMutableAddressor();
      (*(v3 + 16))(v18, v23, v2);
      v20 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v20, v24))
      {
LABEL_18:
        v7 = v18;
        goto LABEL_19;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v20, v24, "User cancelled", v25, 2u);
LABEL_17:

      goto LABEL_18;
    }

    if (a1 == 1)
    {
      v32 = Logger.buddy.unsafeMutableAddressor();
      (*(v3 + 16))(v16, v32, v2);
      v20 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v20, v33, "User completed", v34, 2u);
        v18 = v16;
        goto LABEL_17;
      }

      v7 = v16;
      goto LABEL_19;
    }

LABEL_25:
    aBlock[0] = a1;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  if (a1 == 2)
  {
    v26 = Logger.buddy.unsafeMutableAddressor();
    (*(v3 + 16))(v13, v26, v2);
    v20 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v20, v27, "User opted out", v28, 2u);
      v18 = v13;
      goto LABEL_17;
    }

    v7 = v13;
    goto LABEL_19;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      v29 = Logger.buddy.unsafeMutableAddressor();
      (*(v3 + 16))(v7, v29, v2);
      v20 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v20, v30))
      {
        goto LABEL_19;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v20, v30, "System Error", v31, 2u);
      v18 = v7;
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  v19 = Logger.buddy.unsafeMutableAddressor();
  (*(v3 + 16))(v10, v19, v2);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Region unavailable", v22, 2u);
    v18 = v10;
    goto LABEL_17;
  }

  v7 = v10;
LABEL_19:

  (*(v3 + 8))(v7, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    aBlock[4] = sub_100005758;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003668;
    aBlock[3] = &unk_10000C770;
    v38 = _Block_copy(aBlock);
    v39 = v36;

    [v39 dismissViewControllerAnimated:1 completion:v38];
    _Block_release(v38);
  }
}

void sub_100003448(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_didPresent) & 1) == 0)
  {
    v7 = Logger.buddy.unsafeMutableAddressor();
    (*(v3 + 16))(v6, v7, v2);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Did not hear back from EN within 5 seconds, so dismissing.", v10, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    aBlock[4] = sub_1000056D8;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003668;
    aBlock[3] = &unk_10000C630;
    v12 = _Block_copy(aBlock);
    v13 = a1;

    [v13 dismissViewControllerAnimated:0 completion:v12];
    _Block_release(v12);
  }
}

uint64_t sub_100003668(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100003700(void *a1)
{
  if ([a1 _remoteViewControllerProxy])
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
  if (!*(&v4 + 1))
  {
    return sub_100005430(v5, &qword_1000118A8, &unk_100006658);
  }

  sub_100005288(&qword_1000118B0, &qword_100006668);
  result = swift_dynamicCast();
  if (result)
  {
    [v2 dismiss];
    [v2 invalidate];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000037EC(void *a1, void (*a2)(void), uint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v93 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v13 = __chkstk_darwin(v12);
  v14 = __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v19 = &v80 - v18;
  if (a1)
  {
    v85 = v17;
    v86 = v16;
    v92 = v3;
    v83 = v15;
    v20 = a1;
    v21 = Logger.buddy.unsafeMutableAddressor();
    v22 = *(v8 + 16);
    v88 = v21;
    v89 = v22;
    v90 = v8 + 16;
    (v22)(v19);
    v23 = v20;
    v24 = v8;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    v27 = os_log_type_enabled(v25, v26);
    v91 = v23;
    if (v27)
    {
      v87 = v24;
      v84 = v7;
      v81 = a3;
      v82 = a2;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v96[0] = v30;
      *v28 = 138412546;
      *(v28 + 4) = v23;
      *v29 = a1;
      *(v28 + 12) = 2080;
      v31 = [v23 userInfo];
      if (v31)
      {
        v32 = v31;
        v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v33 = 0;
      }

      v35 = v84;
      *&v97 = v33;
      sub_100005288(&qword_1000118B8, &qword_100006670);
      v37 = String.init<A>(describing:)();
      v39 = sub_1000046B4(v37, v38, v96);

      *(v28 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v25, v26, "Configure with context %@ userinfo %s", v28, 0x16u);
      sub_100005430(v29, &qword_1000118C0, &qword_100006678);

      sub_1000052D0(v30);

      v36 = v87;
      v34 = *(v87 + 8);
      v34(v19, v35);
      a2 = v82;
      a3 = v81;
    }

    else
    {

      v34 = *(v24 + 8);
      v34(v19, v7);
      v35 = v7;
      v36 = v24;
    }

    v40 = [v92 _remoteViewControllerProxy];
    v41 = v91;
    v42 = v93;
    if (v40)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v97 = 0u;
      v98 = 0u;
    }

    v96[0] = v97;
    v96[1] = v98;
    if (*(&v98 + 1))
    {
      sub_100005288(&qword_1000118B0, &qword_100006668);
      if (swift_dynamicCast())
      {
        v43 = v94;
        [v94 setDesiredHardwareButtonEvents:16];
        [v43 setAllowsMenuButtonDismissal:0];
        [v43 setAllowsAlertItems:0];
        v44 = [v41 userInfo];
        if (v44)
        {
          v87 = v36;
          v45 = v44;
          v46 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v94 = 0xD000000000000011;
          v95 = 0x80000001000068D0;
          AnyHashable.init<A>(_:)();
          if (*(v46 + 16) && (v47 = sub_100004C5C(v96), (v48 & 1) != 0))
          {
            sub_100005344(*(v46 + 56) + 32 * v47, &v97);
            sub_1000053A4(v96);
            if (swift_dynamicCast())
            {
              v93 = v43;
              v84 = v35;
              *&v97 = 0xD000000000000015;
              *(&v97 + 1) = 0x80000001000068F0;
              AnyHashable.init<A>(_:)();
              if (*(v46 + 16) && (v49 = sub_100004C5C(v96), (v50 & 1) != 0))
              {
                v51 = v41;
                sub_100005344(*(v46 + 56) + 32 * v49, &v97);
                sub_1000053A4(v96);

                if (swift_dynamicCast())
                {
                  v52 = v95;
                }

                else
                {
                  v52 = 0;
                }
              }

              else
              {
                v51 = v41;

                sub_1000053A4(v96);
                v52 = 0;
              }

              v64 = String._bridgeToObjectiveC()();

              if (v52)
              {
                v65 = String._bridgeToObjectiveC()();
              }

              else
              {
                v65 = 0;
              }

              v41 = v51;
              v66 = [objc_allocWithZone(ENRegion) initWithCountryCode:v64 subdivisionCode:v65];

              v67 = *&v92[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_region];
              *&v92[OBJC_IVAR____TtC13HealthENBuddy22HealthENBuddyContainer_region] = v66;

              v68 = v83;
              v69 = v84;
              v89(v83, v88, v84);
              sub_100005278(a2);
              v70 = Logger.logObject.getter();
              v71 = static os_log_type_t.error.getter();
              sub_100005220(a2);
              if (os_log_type_enabled(v70, v71))
              {
                v72 = swift_slowAlloc();
                v73 = swift_slowAlloc();
                *&v97 = v73;
                *v72 = 136315138;
                if (a2)
                {
                  v74 = swift_allocObject();
                  *(v74 + 16) = a2;
                  *(v74 + 24) = a3;
                  v75 = sub_10000576C;
                }

                else
                {
                  v75 = 0;
                  v74 = 0;
                }

                *&v96[0] = v75;
                *(&v96[0] + 1) = v74;
                sub_100005278(a2);
                sub_100005288(&qword_100011898, &qword_100006648);
                v77 = String.init<A>(describing:)();
                v79 = sub_1000046B4(v77, v78, &v97);

                *(v72 + 4) = v79;
                _os_log_impl(&_mh_execute_header, v70, v71, "Calling completion: %s", v72, 0xCu);
                sub_1000052D0(v73);

                v76 = (v34)(v83, v84);
                v41 = v51;
              }

              else
              {

                v76 = (v34)(v68, v69);
              }

              if (a2)
              {
                a2(v76);
              }

              goto LABEL_35;
            }
          }

          else
          {

            sub_1000053A4(v96);
          }

          v89(v86, v88, v35);
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            *v59 = 0;
            _os_log_impl(&_mh_execute_header, v57, v58, "Did not get region country code, but we need it for the region.", v59, 2u);
          }

          v60 = (v34)(v86, v35);
          if (!a2)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v89(v85, v88, v35);
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 0;
            _os_log_impl(&_mh_execute_header, v61, v62, "Did not get user info, but we need it for the region.", v63, 2u);
          }

          v60 = (v34)(v85, v35);
          if (!a2)
          {
            goto LABEL_35;
          }
        }

        a2(v60);
LABEL_35:
        swift_unknownObjectRelease();
LABEL_36:

        return;
      }
    }

    else
    {
      sub_100005430(v96, &qword_1000118A8, &unk_100006658);
    }

    v89(v42, v88, v35);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Could not get a SBUIRemoteAlertHostInterface", v55, 2u);
    }

    v56 = (v34)(v42, v35);
    if (a2)
    {
      a2(v56);
    }

    goto LABEL_36;
  }
}

id sub_10000464C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthENBuddyContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000046B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004780(v11, 0, 0, 1, a1, a2);
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
    sub_100005344(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000052D0(v11);
  return v7;
}

unint64_t sub_100004780(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000488C(a5, a6);
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

char *sub_10000488C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000048D8(a1, a2);
  sub_100004A08(&off_10000C4C8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000048D8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004AF4(v5, 0);
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
        v7 = sub_100004AF4(v10, 0);
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

uint64_t sub_100004A08(uint64_t result)
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

  result = sub_100004B68(result, v12, 1, v3);
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

void *sub_100004AF4(uint64_t a1, uint64_t a2)
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

  sub_100005288(&qword_1000118A0, &qword_100006650);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004B68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005288(&qword_1000118A0, &qword_100006650);
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

unint64_t sub_100004C5C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100004CA0(a1, v4);
}

unint64_t sub_100004CA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100005490(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000053A4(v8);
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

uint64_t sub_100004D68(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Logger.buddy.unsafeMutableAddressor();
  (*(v5 + 16))(v8, v9, v4);
  sub_100005278(a1);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  sub_100005220(a1);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    v20 = v19[0];
    *v12 = 136315138;
    if (a1)
    {
      v13 = swift_allocObject();
      v13[2] = a1;
      v13[3] = a2;
      v14 = sub_10000531C;
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v19[1] = v14;
    v19[2] = v13;
    sub_100005278(a1);
    sub_100005288(&qword_100011898, &qword_100006648);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000046B4(v15, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "prepareForActivation with completion: %s", v12, 0xCu);
    sub_1000052D0(v19[0]);
  }

  result = (*(v5 + 8))(v8, v4);
  if (a1)
  {
    return a1(result);
  }

  return result;
}

void sub_100004FB8(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_100005534(0, &qword_100011888, SBUIRemoteAlertButtonAction_ptr);
      sub_1000051B0();
      Set.Iterator.init(_cocoa:)();
      v1 = v15;
      v2 = v16;
      v3 = v17;
      v4 = v18;
      v5 = v19;
    }

    else
    {
      v6 = -1 << *(a1 + 32);
      v2 = a1 + 56;
      v3 = ~v6;
      v7 = -v6;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v5 = v8 & *(a1 + 56);

      v4 = 0;
    }

    if (v1 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v9 = v4;
      v10 = v5;
      v11 = v4;
      if (!v5)
      {
        break;
      }

LABEL_13:
      v12 = (v10 - 1) & v10;
      v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
      if (!v13)
      {
LABEL_19:
        sub_100005218();
        return;
      }

      while (1)
      {
        [v13 events];

        v4 = v11;
        v5 = v12;
        if ((v1 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          sub_100005534(0, &qword_100011888, SBUIRemoteAlertButtonAction_ptr);
          swift_dynamicCast();
          v13 = v14;
          v11 = v4;
          v12 = v5;
          if (v14)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= ((v3 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v10 = *(v2 + 8 * v11);
      ++v9;
      if (v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1000051B0()
{
  result = qword_100011890;
  if (!qword_100011890)
  {
    sub_100005534(255, &qword_100011888, SBUIRemoteAlertButtonAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011890);
  }

  return result;
}

uint64_t sub_100005220(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100005230()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005278(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100005288(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000052D0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000531C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100005344(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000053F8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005430(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005288(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000054EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005534(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000557C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000055BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000055D4()
{
  result = qword_1000118D0;
  if (!qword_1000118D0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000118D0);
  }

  return result;
}

unint64_t sub_10000562C()
{
  result = qword_1000118E0;
  if (!qword_1000118E0)
  {
    sub_100005690(&qword_1000118D8, &qword_100006680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000118E0);
  }

  return result;
}

uint64_t sub_100005690(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000056E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}