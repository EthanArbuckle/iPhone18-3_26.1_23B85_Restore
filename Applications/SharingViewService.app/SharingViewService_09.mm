void sub_1000D5ACC()
{
  v1 = v0;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BE0E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "pairLocked", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairLockedVC;
  v7 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairLockedVC);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairLockedVC);
    v9 = v8;
  }

  else
  {
    v9 = [objc_allocWithZone(type metadata accessor for AirTagPairLockedViewController()) init];
    swift_unknownObjectWeakAssign();
    v8 = 0;
    v7 = *(v1 + v6);
  }

  *(v1 + v6) = v9;
  v10 = v9;
  v11 = v8;

  sub_1000707D4(&v19);
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  sub_1000B167C(&v19);
  v16 = [v10 dismissalConfirmationActionWithTitle:v12 message:v13 confirmButtonTitle:v14 cancelButtonTitle:v15];

  [v10 setDismissButtonAction:v16];
  v17 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav);
  if (v17)
  {
    v18 = *(v1 + v6);
    if (v18)
    {
      [v17 pushViewController:v18 animated:1];
      *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_shownError) = 1;
      sub_1000BE2C0(0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

BOOL sub_1000D5D10()
{
  v1 = [v0 viewControllers];
  sub_1000122EC(0, &qword_1001BCEA0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_1000122EC(0, &qword_1001BA740);
    v8 = static NSObject.== infix(_:_:)();

    v4 = v5 + 1;
  }

  while ((v8 & 1) == 0);

  return v3 != v5;
}

void sub_1000D5E68()
{
  v1 = [objc_allocWithZone(type metadata accessor for AirTagInstallFindMyViewController()) init];
  swift_unknownObjectWeakAssign();
  sub_1000707D4(&v8);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  sub_1000B167C(&v8);
  v6 = [v1 dismissalConfirmationActionWithTitle:v2 message:v3 confirmButtonTitle:v4 cancelButtonTitle:v5];

  [v1 setDismissButtonAction:v6];
  v7 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav);
  if (v7)
  {
    sub_1000BD9C0([v7 pushViewController:v1 animated:1]);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000D5F9C()
{
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BE0E0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Connection Timed Out", v3, 2u);
  }

  v4 = [objc_opt_self() mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_1001279D0(v4, v5, v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_1000D0A60(v8, v10, 0, 0, 0);
}

void sub_1000D6154(void *a1)
{
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BE0E0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = [v3 state];

    _os_log_impl(&_mh_execute_header, v4, v5, "centralManagerDidUpdateState: %ld", v6, 0xCu);
  }

  else
  {

    v4 = v3;
  }

  sub_1000BD9C0(v7);
}

void sub_1000D65C8(void *a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredMainService;
  if (*(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredMainService))
  {
    return;
  }

  v6 = [a1 services];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  sub_1000122EC(0, &unk_1001BE1F0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v3;
  v38 = v2;
  v39 = a1;
  v40 = a2;
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_31:

    return;
  }

LABEL_30:
  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_6:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    sub_1000122EC(0, &qword_1001BA740);
    v14 = [v12 UUID];
    if (qword_1001B9250 != -1)
    {
      swift_once();
    }

    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_31;
    }
  }

  v16 = qword_1001B9490;
  v17 = v12;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000D298(v18, qword_1001BE0E0);
  v19 = v39;
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = [v19 services];
    if (v23)
    {
      v24 = v23;
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_1000B9F5C(v25);
    v28 = v27;

    v29 = sub_10002065C(v26, v28, &v41);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2080;
    if (v40)
    {
      swift_getErrorValue();
      v30 = Error.localizedDescription.getter();
      v32 = v31;
    }

    else
    {
      v32 = 0x8000000100145470;
      v30 = 0xD000000000000015;
    }

    v33 = sub_10002065C(v30, v32, &v41);

    *(v22 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v20, v21, "didDiscoverServices: %s, error? %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v34 = *(v38 + v37);
  *(v38 + v37) = v17;
  v35 = v17;

  sub_1000BD9C0(v36);
}

void sub_1000D6B88(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v11, a5);
}

void sub_1000D6C20()
{
  v1 = v0;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BE0E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "B389 Setup was dismissed", v5, 2u);
  }

  if ((*(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_dismissed) & 1) == 0)
  {

    [v1 dismiss:0];
  }
}

unint64_t sub_1000D6DA8()
{
  result = qword_1001BE168;
  if (!qword_1001BE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE168);
  }

  return result;
}

void sub_1000D6DFC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v54 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = v51 - v6;
  v61 = sub_100005DCC(&unk_1001BBBC0);
  __chkstk_darwin(v61);
  v8 = v51 - v7;
  v60 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v60);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v11 - 8);
  v13 = v51 - v12;
  v14 = sub_100005DCC(&unk_1001BBAA0);
  v15 = __chkstk_darwin(v14 - 8);
  v58 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = v51 - v18;
  __chkstk_darwin(v17);
  v21 = v51 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = *(v3 + 16);
    v51[1] = v3 + 16;
    v52 = a1;
    v51[0] = v24;
    v24(v21, a1, v2);
    v59 = v3;
    v25 = *(v3 + 56);
    v56 = v2;
    v25(v21, 0, 1, v2);
    v26 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
    swift_beginAccess();
    v57 = v23;
    sub_100005EB8(v23 + v26, v13, &unk_1001BE180);
    v27 = type metadata accessor for B389PresentationConfig(0);
    if ((*(*(v27 - 8) + 48))(v13, 1, v27) == 1)
    {
      __break(1u);
      return;
    }

    v28 = *(v27 + 24);
    v55 = v13;
    sub_100025418(&v13[v28], v10, type metadata accessor for B389PresentationConfig.Mode);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = v59;
      v30 = v56;
      (*(v59 + 32))(v19, v10, v56);
      v25(v19, 0, 1, v30);
    }

    else
    {
      v30 = v56;
      v25(v19, 1, 1, v56);
      sub_10005F788(v10, type metadata accessor for B389PresentationConfig.Mode);
      v29 = v59;
    }

    v31 = *(v61 + 48);
    sub_100005EB8(v21, v8, &unk_1001BBAA0);
    sub_100005EB8(v19, &v8[v31], &unk_1001BBAA0);
    v32 = *(v29 + 48);
    if (v32(v8, 1, v30) == 1)
    {
      sub_10001259C(v19, &unk_1001BBAA0);
      sub_10001259C(v21, &unk_1001BBAA0);
      v33 = v32(&v8[v31], 1, v30);
      v34 = v57;
      if (v33 == 1)
      {
        sub_10001259C(v8, &unk_1001BBAA0);
        sub_10005F788(v55, type metadata accessor for B389PresentationConfig);
LABEL_13:
        if (qword_1001B9490 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_10000D298(v41, qword_1001BE0E0);
        v42 = v54;
        (v51[0])(v54, v52, v30);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v62 = v46;
          *v45 = 136315138;
          sub_10005F638(&qword_1001BBAB0, &type metadata accessor for UUID);
          v47 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = v48;
          (*(v59 + 8))(v42, v30);
          v50 = sub_10002065C(v47, v49, &v62);

          *(v45 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v43, v44, "Lost %s", v45, 0xCu);
          sub_1000083B0(v46);
        }

        else
        {

          (*(v59 + 8))(v42, v30);
        }

        [v34 dismiss:7];
        goto LABEL_19;
      }
    }

    else
    {
      v35 = v58;
      sub_100005EB8(v8, v58, &unk_1001BBAA0);
      if (v32(&v8[v31], 1, v30) != 1)
      {
        v36 = v53;
        (*(v29 + 32))(v53, &v8[v31], v30);
        sub_10005F638(&qword_1001BE220, &type metadata accessor for UUID);
        v37 = v29;
        v38 = v35;
        v39 = dispatch thunk of static Equatable.== infix(_:_:)();
        v40 = *(v37 + 8);
        v40(v36, v30);
        sub_10001259C(v19, &unk_1001BBAA0);
        sub_10001259C(v21, &unk_1001BBAA0);
        v40(v38, v30);
        sub_10001259C(v8, &unk_1001BBAA0);
        sub_10005F788(v55, type metadata accessor for B389PresentationConfig);
        v34 = v57;
        if (v39)
        {
          goto LABEL_13;
        }

LABEL_19:

        return;
      }

      sub_10001259C(v19, &unk_1001BBAA0);
      sub_10001259C(v21, &unk_1001BBAA0);
      (*(v29 + 8))(v35, v30);
      v34 = v57;
    }

    sub_10001259C(v8, &unk_1001BBBC0);
    sub_10005F788(v55, type metadata accessor for B389PresentationConfig);
    goto LABEL_19;
  }
}

void sub_1000D76A4(void *a1)
{
  sub_1000974B4(108);
  sub_1000974B4(109);
  v3 = String._bridgeToObjectiveC()();

  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  sub_1000974B4(110);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v7 = v1;
  v8 = String._bridgeToObjectiveC()();

  v11[4] = sub_1000E4AA8;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10001BE90;
  v11[3] = &unk_1001946A8;
  v9 = _Block_copy(v11);

  v10 = [objc_opt_self() actionWithTitle:v8 style:0 handler:v9];
  _Block_release(v9);

  [v5 addAction:v10];
  [v5 setPreferredAction:v10];
  [a1 presentViewController:v5 animated:1 completion:0];
}

uint64_t sub_1000D78A8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v21 = v7;
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  sub_1000122EC(0, &qword_1001BCE90);
  v19 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v8 + 8);
  v20(v11, v7);
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  aBlock[4] = sub_1000E4ABC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C544;
  aBlock[3] = &unk_1001946F8;
  v15 = _Block_copy(aBlock);
  v16 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005F638(&qword_1001BA7C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005DCC(&unk_1001BBA90);
  sub_100025698(&qword_1001BA7D0, &unk_1001BBA90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = v19;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v15);

  (*(v24 + 8))(v3, v1);
  (*(v22 + 8))(v6, v23);
  return (v20)(v13, v21);
}

void sub_1000D7C7C(uint64_t a1)
{
  v114 = type metadata accessor for B389PresentationConfig.Mode(0);
  v2 = __chkstk_darwin(v114);
  v4 = v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v112 = v102 - v5;
  v6 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v6 - 8);
  v8 = v102 - v7;
  v9 = sub_100005DCC(&unk_1001BBAA0);
  v10 = __chkstk_darwin(v9 - 8);
  v111 = v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v116 = v102 - v13;
  __chkstk_darwin(v12);
  v118 = (v102 - v14);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v113 = v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = v102 - v20;
  if (qword_1001B9490 != -1)
  {
    v98 = v19;
    swift_once();
    v19 = v98;
  }

  v115 = v8;
  v119 = v19;
  v22 = type metadata accessor for Logger();
  v23 = sub_10000D298(v22, qword_1001BE0E0);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Done waiting for multi scan", v26, 2u);
  }

  v27 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_bubbleMonitor;
  v28 = *(a1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_bubbleMonitor);
  if (v28)
  {
    v108 = v21;
    swift_beginAccess();
    v29 = *(v28 + 80);
    v30 = *(v29 + 16);
    v105 = v4;
    v117 = v23;
    if (v30)
    {
      v109 = v16;
      v107 = a1;
      v31 = sub_1000205D4(v30, 0);
      v106 = sub_100022BD4(v121, v31 + 4, v30, v29);
      v16 = v121[0];
      a1 = v121[2];
      swift_bridgeObjectRetain_n();
      v110 = v28;

      sub_100024148();
      if (v106 != v30)
      {
        __break(1u);
        goto LABEL_56;
      }

      a1 = v107;
      v28 = v110;
      v16 = v109;
    }

    else
    {

      v31 = _swiftEmptyArrayStorage;
    }

    v121[0] = v31;
    sub_1000218B4(v121);
    v35 = sub_10001B4CC(v121[0]);

    if (*(&v27->isa + a1))
    {

      sub_10001C248();
    }

    v27 = v119;
    if (v35 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_19:
        if ((v35 & 0xC000000000000001) == 0)
        {
          if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_58;
          }

          v36 = *(v35 + 32);
LABEL_22:
          v37 = v36;
          v38 = [v36 bleDevice];
          if (!v38)
          {

            v43 = v27;
            v44 = v118;
            (*(v16 + 56))(v118, 1, 1, v43);
LABEL_29:
            sub_10001259C(v44, &unk_1001BBAA0);
            v48 = v37;
            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              *v51 = 138412546;
              v53 = [v48 bleDevice];
              *(v51 + 4) = v53;
              *(v51 + 12) = 2112;
              *(v51 + 14) = v48;
              *v52 = v53;
              v52[1] = v48;
              v54 = v48;
              _os_log_impl(&_mh_execute_header, v49, v50, "No identifier for ble device %@ on %@", v51, 0x16u);
              sub_100005DCC(&unk_1001BBA60);
              swift_arrayDestroy();

              v48 = v49;
              v49 = v54;
            }

LABEL_53:
            *(a1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_needsMulti) = 0;
            sub_1000BD9C0(v101);
            goto LABEL_54;
          }

          v106 = v37;
          v39 = v38;
          v40 = [v38 identifier];

          if (v40)
          {
            v41 = v116;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v42 = 0;
          }

          else
          {
            v42 = 1;
            v41 = v116;
          }

          v116 = *(v16 + 56);
          (v116)(v41, v42, 1, v27);
          v45 = v41;
          v46 = v27;
          v44 = v118;
          sub_100066AC8(v45, v118, &unk_1001BBAA0);
          v47 = *(v16 + 48);
          if (v47(v44, 1, v46) == 1)
          {

            v37 = v106;
            goto LABEL_29;
          }

          v110 = v28;
          v109 = v16;
          v118 = *(v16 + 32);
          (v118)(v108, v44, v46);
          v55 = a1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
          swift_beginAccess();
          v104 = v55;
          v56 = v115;
          sub_100005EB8(v55, v115, &unk_1001BE180);
          v57 = type metadata accessor for B389PresentationConfig(0);
          v58 = *(v57 - 8);
          v103 = *(v58 + 48);
          v102[1] = v58 + 48;
          if (v103(v56, 1, v57) != 1)
          {
            v59 = v46;
            v60 = v56 + *(v57 + 24);
            v61 = v112;
            sub_100025418(v60, v112, type metadata accessor for B389PresentationConfig.Mode);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v102[0] = v57;
            v63 = v111;
            if (EnumCaseMultiPayload == 1)
            {
              (v118)(v111, v61, v46);
              (v116)(v63, 0, 1, v46);
            }

            else
            {
              (v116)(v111, 1, 1, v46);
              sub_10005F788(v61, type metadata accessor for B389PresentationConfig.Mode);
            }

            v64 = v47(v63, 1, v46);
            v65 = v108;
            if (v64 == 1)
            {

              sub_10001259C(v63, &unk_1001BBAA0);
              sub_10005F788(v115, type metadata accessor for B389PresentationConfig);
              v66 = Logger.logObject.getter();
              v67 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v66, v67))
              {
                v68 = swift_slowAlloc();
                *v68 = 0;
                _os_log_impl(&_mh_execute_header, v66, v67, "No btUUID", v68, 2u);

                v69 = v106;
              }

              else
              {
                v69 = v66;
                v66 = v106;
              }

              v84 = v109;

              v85 = (*(v84 + 8))(v65, v59);
              *(a1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_needsMulti) = 0;
              sub_1000BD9C0(v85);
              goto LABEL_54;
            }

            v107 = a1;
            (v118)(v113, v63, v59);
            sub_10005F788(v115, type metadata accessor for B389PresentationConfig);
            sub_10005F638(&qword_1001BE220, &type metadata accessor for UUID);
            v70 = dispatch thunk of static Equatable.== infix(_:_:)();
            v71 = v106;

            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v120[0] = v76;
              *v74 = 138412802;
              *(v74 + 4) = v71;
              *v75 = v71;
              *(v74 + 12) = 1024;
              *(v74 + 14) = (v70 & 1) == 0;
              *(v74 + 18) = 2080;
              sub_1000122EC(0, &qword_1001BBBB0);
              v77 = v71;
              v78 = Array.description.getter();
              v80 = sub_10002065C(v78, v79, v120);

              *(v74 + 20) = v80;
              v65 = v108;
              _os_log_impl(&_mh_execute_header, v72, v73, "Closest B389 is %@. isDifferent: %{BOOL}d.\nall: %s", v74, 0x1Cu);
              sub_10001259C(v75, &unk_1001BBA60);

              sub_1000083B0(v76);
              v59 = v119;
            }

            v81 = v107;
            if (v70)
            {

              v82 = *(v109 + 8);
              v82(v113, v59);
              v83 = (v82)(v65, v59);
LABEL_49:
              *(v81 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_needsMulti) = 0;
              sub_1000BD9C0(v83);
LABEL_54:

              return;
            }

            v86 = v71;
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              *v89 = 138412290;
              *(v89 + 4) = v86;
              *v90 = v86;
              v91 = v86;
              _os_log_impl(&_mh_execute_header, v87, v88, "Setting different tag for multi: %@", v89, 0xCu);
              sub_10001259C(v90, &unk_1001BBA60);
              v65 = v108;
            }

            v92 = *(sub_100005DCC(&unk_1001BA6E0) + 48);
            v93 = v109;
            v94 = v105;
            (*(v109 + 16))(v105, v65, v59);
            *(v94 + v92) = 1;
            swift_storeEnumTagMultiPayload();
            v95 = v104;
            swift_beginAccess();
            v96 = v102[0];
            if (v103(v95, 1, v102[0]) != 1)
            {
              sub_100066A5C(v94, v95 + *(v96 + 24));
              swift_endAccess();

              v97 = *(v93 + 8);
              v97(v113, v59);
              v83 = (v97)(v65, v59);
              goto LABEL_49;
            }

            goto LABEL_59;
          }

LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);

          __break(1u);
          return;
        }

LABEL_56:
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_22;
      }
    }

    else if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    v49 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&_mh_execute_header, v49, v99, "No more B389s in range...", v100, 2u);
    }

    goto LABEL_53;
  }

  v119 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v119, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v119, v32, "No bubble monitor found during multi setup", v33, 2u);
  }

  v34 = v119;
}

void sub_1000D8BDC()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000122EC(0, &qword_1001BCE90);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v7 = _dispatchPreconditionTest(_:)();
  v9 = *(v4 + 8);
  v8 = (v4 + 8);
  v9(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
LABEL_11:
    v20 = type metadata accessor for Logger();
    sub_10000D298(v20, qword_1001BE0E0);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v35[1] = v2;
      v24 = v23;
      v25 = swift_slowAlloc();
      v36 = v25;
      *v24 = 136315138;
      if (v6)
      {
        v26 = v6;
      }

      else
      {
        v1 = 0xD000000000000015;
        v26 = 0x8000000100145470;
      }

      v27 = sub_10002065C(v1, v26, &v36);

      *(v24 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "continuePressed, name = %s", v24, 0xCu);
      sub_1000083B0(v25);
    }

    if (v8[1])
    {
      __break(1u);
      return;
    }

    v28 = *v8;

    if ((v3 & 0xC000000000000001) != 0)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_21:
      v30 = v29;

      v31 = [v30 roleId];

      if (v31 == SPBeaconRoleIdOther)
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Showing name and emoji view", v34, 2u);
        }

        sub_1000BC340();
      }

      else
      {
        sub_1000BC07C();
      }

      return;
    }

    if ((v28 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v28 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(v3 + 8 * v28 + 32);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (*(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleCategories))
  {

    v3 = sub_1000BA33C(v10);

    v11 = *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleVC);
    if (v11)
    {
      v12 = [*(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleVC) contentView];
      v13 = [v12 pickerView];

      v14 = [v13 selectedRowInComponent:0];
    }

    else
    {
      v14 = 0;
    }

    v8 = (v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_selectedRoleIndex);
    *v8 = v14;
    *(v8 + 8) = v11 == 0;
    v1 = sub_1000BCF94();
    v6 = v19;
    if (qword_1001B9490 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

  if (qword_1001B9490 != -1)
  {
LABEL_31:
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000D298(v15, qword_1001BE0E0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Could not determine role categories", v18, 2u);
  }
}

uint64_t sub_1000D90EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1000D9184, v6, v5);
}

void sub_1000D9184()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav);
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1000D9254;

    (sub_1000DE9B8)(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000D9254()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1000D93D8;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1000D9370;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000D9370()
{

  sub_1000D8BDC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D93D8()
{
  v1 = *(v0 + 48);

  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BE0E0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error switching me Device %@", v5, 0xCu);
    sub_10001259C(v6, &unk_1001BBA60);
  }

  else
  {
  }

  sub_1000D8BDC();
  v8 = *(v0 + 8);

  return v8();
}

id sub_1000D9594(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1000D9698(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000D9790;

  return v6(a1);
}

uint64_t sub_1000D9790()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

_BYTE *sub_1000D9888@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1000DD8BC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1000DD974(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000DD9F0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1000D991C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1000DAF94(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000D99FC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000DB0B4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000D9B4C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_1000122EC(0, &qword_1001BA7A0);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1000DA208(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_1000DACE8();
    }

    v18 = v8;
    sub_1000DAF10(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1000122EC(0, &qword_1001BA7A0);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1000DB234(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_1000D9D84(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = *v2;
  Hasher.init(_seed:)();
  sub_100006CB4();
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = &off_100144560;
      switch(*(*(v5 + 48) + v8))
      {
        case 1:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 2:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 3:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 4:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 5:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 6:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 7:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 8:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 9:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 0xA:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 0xB:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 0xC:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 0xD:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 0xE:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 0xF:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 0x10:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 0x11:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        case 0x12:
          v10 = "51-86AA-8D9728F8D66C";
          break;
        default:
          break;
      }

      v11 = v10 | 0x8000000000000000;
      v12 = &off_100144560;
      switch(a2)
      {
        case 1:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 2:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 3:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 4:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 5:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 6:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 7:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 8:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 9:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 10:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 11:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 12:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 13:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 14:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 15:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 16:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 17:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        case 18:
          v12 = "51-86AA-8D9728F8D66C";
          break;
        default:
          break;
      }

      if (v11 == (v12 | 0x8000000000000000))
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_46;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

LABEL_46:
    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v8);
  }

  else
  {
LABEL_44:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1000DB3A4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_1000DA208(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100005DCC(&unk_1001BE290);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000122EC(0, &qword_1001BA7A0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1000DACE8();
        }

        v2 = v14;
        result = NSObject._rawHashValue(seed:)(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1000DA3F8()
{
  v1 = v0;
  v2 = *v0;
  sub_100005DCC(&qword_1001BE178);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1000DA61C()
{
  v1 = v0;
  v2 = *v0;
  sub_100005DCC(&qword_1001BA750);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1000DA87C()
{
  v1 = v0;
  v2 = *v0;
  sub_100005DCC(&unk_1001BE1E0);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v12 = Hasher._finalize()();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_31;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x1000DAC9CLL);
      }

      if (v5 >= v10)
      {
        break;
      }

      v19 = v6[v5];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1000DACE8()
{
  v1 = v0;
  v2 = *v0;
  sub_100005DCC(&unk_1001BE290);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1000DAF10(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_1000DAF94(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000DA3F8();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1000DB874();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000DBDA0();
  }

  v8 = *v3;
  result = static Hasher._hash(seed:_:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000DB0B4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000DA61C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000DB9B4();
      goto LABEL_16;
    }

    sub_1000DBF90();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000DB234(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000DACE8();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000DBC50();
      goto LABEL_12;
    }

    sub_1000DC604();
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000122EC(0, &qword_1001BA7A0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_1000DB3A4(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000DA87C();
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_1000DBB10();
        goto LABEL_51;
      }

      sub_1000DC1C8();
    }

    v9 = *v3;
    Hasher.init(_seed:)();
    sub_100006CB4();
    String.hash(into:)();

    result = Hasher._finalize()();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (1)
      {
        v12 = &off_100144560;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 2:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 3:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 4:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 5:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 6:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 7:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 8:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 9:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 0xA:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 0xB:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 0xC:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 0xD:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 0xE:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 0xF:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 0x10:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 0x11:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          case 0x12:
            v12 = "51-86AA-8D9728F8D66C";
            break;
          default:
            break;
        }

        v13 = v12 | 0x8000000000000000;
        v14 = &off_100144560;
        switch(v6)
        {
          case 1:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 2:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 3:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 4:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 5:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 6:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 7:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 8:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 9:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 10:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 11:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 12:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 13:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 14:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 15:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 16:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 17:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          case 18:
            v14 = "51-86AA-8D9728F8D66C";
            break;
          default:
            break;
        }

        if (v13 == (v14 | 0x8000000000000000))
        {
          break;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
          goto LABEL_55;
        }

        a2 = (a2 + 1) & v11;
        if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_51;
        }
      }

LABEL_54:

LABEL_55:
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      JUMPOUT(0x1000DB7DCLL);
    }
  }

LABEL_51:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + a2) = v6;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_54;
  }

  *(v16 + 16) = v19;
  return result;
}

void *sub_1000DB874()
{
  v1 = v0;
  sub_100005DCC(&qword_1001BE178);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1000DB9B4()
{
  v1 = v0;
  sub_100005DCC(&qword_1001BA750);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1000DBB10()
{
  v1 = v0;
  sub_100005DCC(&unk_1001BE1E0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_1000DBC50()
{
  v1 = v0;
  sub_100005DCC(&unk_1001BE290);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1000DBDA0()
{
  v1 = v0;
  v2 = *v0;
  sub_100005DCC(&qword_1001BE178);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000DBF90()
{
  v1 = v0;
  v2 = *v0;
  sub_100005DCC(&qword_1001BA750);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000DC1C8()
{
  v1 = v0;
  v2 = *v0;
  sub_100005DCC(&unk_1001BE1E0);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v12 = Hasher._finalize()();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_29;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v10 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x1000DC5B8);
      }

      if (v5 >= v9)
      {
        break;
      }

      v19 = *(v2 + 56 + 8 * v5);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v8 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1000DC604()
{
  v1 = v0;
  v2 = *v0;
  sub_100005DCC(&unk_1001BE290);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000DC818(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000DB9B4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1000DCDD8(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1000DC954(char a1)
{
  v2 = v1;
  v4 = *v1;
  Hasher.init(_seed:)();
  sub_100006CB4();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 19;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = &off_100144560;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 2:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 3:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 4:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 5:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 6:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 7:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 8:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 9:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 0xA:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 0xB:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 0xC:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 0xD:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 0xE:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 0xF:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 0x10:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 0x11:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      case 0x12:
        v9 = "51-86AA-8D9728F8D66C";
        break;
      default:
        break;
    }

    v10 = v9 | 0x8000000000000000;
    v11 = &off_100144560;
    switch(a1)
    {
      case 1:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 2:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 3:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 4:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 5:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 6:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 7:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 8:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 9:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 10:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 11:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 12:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 13:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 14:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 15:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 16:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 17:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      case 18:
        v11 = "51-86AA-8D9728F8D66C";
        break;
      default:
        break;
    }

    if (v10 == (v11 | 0x8000000000000000))
    {
      break;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_46;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 19;
    }
  }

LABEL_46:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  v17 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000DBB10();
    v15 = v17;
  }

  v13 = *(*(v15 + 48) + v7);
  sub_1000DCF9C(v7);
  *v2 = v17;
  return v13;
}

unint64_t sub_1000DCDD8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1000DCF9C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
    JUMPOUT(0x1000DD318);
  }

  *(v3 + 16) = v16;
  ++*(v3 + 36);
  return result;
}

uint64_t (*sub_1000DD364(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000E4B68;
  }

  __break(1u);
  return result;
}

void (*sub_1000DD3E4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000DD464;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DD46C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000DD5A4(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_1000DD5A4(v3, v4);
  }

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_1000DD5A4(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000DD638@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_1000DD6A4(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000122EC(0, a5);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000122EC(0, a5);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v5 = v16;
    v9 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v10 = -1 << *(a4 + 32);
    a1 = v9 & ~v10;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * a1);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v11;
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

  v14 = *(*(a4 + 48) + 8 * a1);

  v15 = v14;
}

uint64_t sub_1000DD8BC(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000DD974(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000DD9F0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000DDA74(uint64_t a1)
{
  v9 = sub_100005DCC(&qword_1001BE1C0);
  v10 = sub_100025698(&qword_1001BE1C8, &qword_1001BE1C0);
  v8[0] = a1;
  v2 = sub_10000836C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1000D9888(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1000083B0(v8);
  return v5;
}

void sub_1000DDB50(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100126B8C(v6);

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = sub_1001279D0(v8, v9, v7);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100127AD0(v11);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  v16 = String._bridgeToObjectiveC()();
  v17 = sub_100127AD0(v16);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;

  v19 = String._bridgeToObjectiveC()();

  v22[4] = sub_1000669E4;
  v22[5] = v18;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10001BE90;
  v22[3] = &unk_100194748;
  v20 = _Block_copy(v22);

  v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v15 addAction:v21];
  [v15 setPreferredAction:v21];
  [a1 presentViewController:v15 animated:1 completion:0];
}

void sub_1000DDEA4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100126B8C(v6);

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = sub_1001279D0(v8, v9, v7);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100127AD0(v11);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  v16 = String._bridgeToObjectiveC()();
  v17 = sub_100127AD0(v16);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;

  v19 = String._bridgeToObjectiveC()();

  v27[4] = sub_1000673D8;
  v27[5] = v18;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 1107296256;
  v27[2] = sub_10001BE90;
  v27[3] = &unk_1001942E8;
  v20 = _Block_copy(v27);

  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v15 addAction:v22];
  v23 = String._bridgeToObjectiveC()();
  v24 = sub_100127AD0(v23);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v21 actionWithTitle:v25 style:1 handler:0];

  [v15 addAction:v26];
  [v15 setPreferredAction:v22];
  [a1 presentViewController:v15 animated:1 completion:0];
}

uint64_t sub_1000DE28C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000122EC(0, &qword_1001BA7A0);
    sub_1000A1F20(&qword_1001BA7A8, &qword_1001BA7A0);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_1000D9B4C(&v9, v7);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1000DE3E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000E440C();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1000D9D84(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1000DE458()
{
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BE0E0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "takeBKSAssertion()", v3, 2u);
  }

  v4 = [objc_opt_self() processInfo];
  v5 = [v4 processIdentifier];

  v6 = objc_allocWithZone(BKSProcessAssertion);
  v7 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1000C1640;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000BA87C;
  aBlock[3] = &unk_100194388;
  v8 = _Block_copy(aBlock);

  v9 = [v6 initWithPID:v5 flags:15 reason:9 name:v7 withHandler:v8];
  _Block_release(v8);

  sub_100005DCC(&qword_1001BBC10);
  Optional.unwrap(_:file:line:)();

  return aBlock[0];
}

uint64_t sub_1000DE69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_1000DE73C, v5, v4);
}

uint64_t sub_1000DE73C()
{
  v1 = String._bridgeToObjectiveC()();
  MGGetBoolAnswer();

  v2 = v0[3];
  v16 = v0[2];
  v17 = v0[4];
  v3 = String._bridgeToObjectiveC()();

  v4 = sub_100126B8C(v3);

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v0[9] = v7;
  v8 = String._bridgeToObjectiveC()();

  v9 = sub_100126B8C(v8);

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v0[10] = v12;
  v0[11] = static MainActor.shared.getter();
  v13 = swift_task_alloc();
  v0[12] = v13;
  v13[2] = v5;
  v13[3] = v7;
  v13[4] = v2;
  v13[5] = v17;
  v13[6] = v10;
  v13[7] = v12;
  v13[8] = v16;
  v14 = swift_task_alloc();
  v0[13] = v14;
  *v14 = v0;
  v14[1] = sub_1000606A0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1000DE9B8(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for PreferenceError();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Device();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for ClientOrigin();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v1[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v6;
  v1[17] = v5;

  return _swift_task_switch(sub_1000DEB9C, v6, v5);
}

uint64_t sub_1000DEB9C()
{
  (*(v0[12] + 104))(v0[13], enum case for ClientOrigin.other(_:), v0[11]);
  RequestOrigin.init(_:)();
  type metadata accessor for Session();
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_1000DEC80;
  v2 = v0[14];

  return Session.init(_:)(v2);
}

uint64_t sub_1000DEC80(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[19] = a1;

  v4 = swift_task_alloc();
  v2[20] = v4;
  *v4 = v3;
  v4[1] = sub_1000DEDD4;
  v5 = v2[10];

  return Session.activeLocationSharingDevice(cached:)(v5, 1);
}

uint64_t sub_1000DEDD4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1000DF878;
  }

  else
  {
    v5 = sub_1000DEF10;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000DEF10()
{
  if (Device.isThisDevice.getter())
  {

    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000D298(v1, qword_1001BE0E0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Me device is this device.", v8, 2u);
    }

    (*(v7 + 8))(v5, v6);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = Device.deviceName.getter();
    v13 = v12;
    v0[22] = v12;
    v14 = swift_task_alloc();
    v0[23] = v14;
    *v14 = v0;
    v14[1] = sub_1000DF13C;
    v15 = v0[3];

    return sub_1000DE69C(v15, v11, v13);
  }
}

uint64_t sub_1000DF13C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1000DF294;
  }

  else
  {
    v5 = sub_1000611B4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000DF294()
{
  (*(v0[8] + 8))(v0[10], v0[7]);
  v1 = v0[24];
  v0[2] = v1;
  v0[25] = v1;
  swift_errorRetain();
  sub_100005DCC(&qword_1001BBA48);
  if (swift_dynamicCast())
  {
    if ((*(v0[5] + 88))(v0[6], v0[4]) == enum case for PreferenceError.missingMeDevice(_:))
    {

      v2 = swift_task_alloc();
      v0[26] = v2;
      *v2 = v0;
      v2[1] = sub_1000DF524;
      v3 = v0[9];

      return Session.activeLocationSharingDevice(cached:)(v3, 0);
    }

    (*(v0[5] + 8))(v0[6], v0[4]);
  }

  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BE0E0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "No active me device.", v7, 2u);
  }

  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_100061B60;
  v9 = v0[3];

  return sub_1000DE69C(v9, 0, 0);
}

uint64_t sub_1000DF524()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_100062084;
  }

  else
  {
    v5 = sub_1000DF660;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000DF660()
{
  if (Device.isThisDevice.getter())
  {

    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000D298(v1, qword_1001BE0E0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Me device is this device.", v4, 2u);
    }

    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];

    (*(v6 + 8))(v5, v7);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = Device.deviceName.getter();
    v12 = v11;
    v0[28] = v11;
    v13 = swift_task_alloc();
    v0[29] = v13;
    *v13 = v0;
    v13[1] = sub_100061860;
    v14 = v0[3];

    return sub_1000DE69C(v14, v10, v12);
  }
}

uint64_t sub_1000DF878()
{
  v1 = v0[21];
  v0[2] = v1;
  v0[25] = v1;
  swift_errorRetain();
  sub_100005DCC(&qword_1001BBA48);
  if (swift_dynamicCast())
  {
    if ((*(v0[5] + 88))(v0[6], v0[4]) == enum case for PreferenceError.missingMeDevice(_:))
    {

      v2 = swift_task_alloc();
      v0[26] = v2;
      *v2 = v0;
      v2[1] = sub_1000DF524;
      v3 = v0[9];

      return Session.activeLocationSharingDevice(cached:)(v3, 0);
    }

    (*(v0[5] + 8))(v0[6], v0[4]);
  }

  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BE0E0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "No active me device.", v7, 2u);
  }

  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_100061B60;
  v9 = v0[3];

  return sub_1000DE69C(v9, 0, 0);
}

void sub_1000DFAF0(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100005DCC(&unk_1001BBBC0);
  __chkstk_darwin(v46);
  v6 = &v43 - v5;
  v45 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v45);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v9 - 8);
  v49 = &v43 - v10;
  v11 = sub_100005DCC(&unk_1001BBAA0);
  v12 = __chkstk_darwin(v11 - 8);
  v44 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v48 = &v43 - v15;
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000D298(v18, qword_1001BE0E0);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "didConnect: %@", v22, 0xCu);
    sub_10001259C(v23, &unk_1001BBA60);
  }

  v25 = [v19 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v3;
  v27 = *(v3 + 56);
  v27(v17, 0, 1, v2);
  v28 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
  v29 = v47;
  swift_beginAccess();
  v30 = v29 + v28;
  v31 = v49;
  sub_100005EB8(v30, v49, &unk_1001BE180);
  v32 = type metadata accessor for B389PresentationConfig(0);
  if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
  {
    __break(1u);
    return;
  }

  sub_100025418(v49 + *(v32 + 24), v8, type metadata accessor for B389PresentationConfig.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v48;
    (*(v26 + 32))(v48, v8, v2);
    v27(v33, 0, 1, v2);
  }

  else
  {
    v33 = v48;
    v27(v48, 1, 1, v2);
    sub_10005F788(v8, type metadata accessor for B389PresentationConfig.Mode);
  }

  v34 = *(v46 + 48);
  sub_100005EB8(v17, v6, &unk_1001BBAA0);
  sub_100005EB8(v33, &v6[v34], &unk_1001BBAA0);
  v35 = *(v26 + 48);
  if (v35(v6, 1, v2) != 1)
  {
    v37 = v44;
    sub_100005EB8(v6, v44, &unk_1001BBAA0);
    if (v35(&v6[v34], 1, v2) != 1)
    {
      v38 = &v6[v34];
      v39 = v43;
      (*(v26 + 32))(v43, v38, v2);
      sub_10005F638(&qword_1001BE220, &type metadata accessor for UUID);
      v40 = v37;
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *(v26 + 8);
      v42(v39, v2);
      sub_10001259C(v48, &unk_1001BBAA0);
      sub_10001259C(v17, &unk_1001BBAA0);
      v42(v40, v2);
      sub_10001259C(v6, &unk_1001BBAA0);
      v36 = sub_10005F788(v49, type metadata accessor for B389PresentationConfig);
      if ((v41 & 1) == 0)
      {
        return;
      }

      goto LABEL_16;
    }

    sub_10001259C(v48, &unk_1001BBAA0);
    sub_10001259C(v17, &unk_1001BBAA0);
    (*(v26 + 8))(v37, v2);
LABEL_14:
    sub_10001259C(v6, &unk_1001BBBC0);
    sub_10005F788(v49, type metadata accessor for B389PresentationConfig);
    return;
  }

  sub_10001259C(v33, &unk_1001BBAA0);
  sub_10001259C(v17, &unk_1001BBAA0);
  if (v35(&v6[v34], 1, v2) != 1)
  {
    goto LABEL_14;
  }

  sub_10001259C(v6, &unk_1001BBAA0);
  v36 = sub_10005F788(v49, type metadata accessor for B389PresentationConfig);
LABEL_16:
  *(v47 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_connectionState) = 2;
  sub_1000BD9C0(v36);
}

void sub_1000E02A0(void *a1, uint64_t a2)
{
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BE0E0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "didFailToConnect: %@", v8, 0xCu);
    sub_10001259C(v9, &unk_1001BBA60);
  }

  v11 = objc_opt_self();
  v12 = [v11 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = sub_1001279D0(v12, v13, v14);

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [v11 mainBundle];
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = sub_1001279D0(v19, v20, v21);

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  sub_1000D0A60(v16, v18, a2, v23, v25);

  sub_1000BD9C0(v26);
}

void sub_1000E0560(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v6 = static os_log_type_t.error.getter();
  }

  else
  {
    v6 = static os_log_type_t.default.getter();
  }

  v7 = v6;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000D298(v8, qword_1001BE0E0);
  v9 = a1;
  swift_errorRetain();
  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v7))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v9;
    *v12 = v9;
    *(v11 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v14 = v9;
      v15 = Error.localizedDescription.getter();
      v17 = v16;
    }

    else
    {
      v17 = 0x8000000100145470;
      v18 = v9;
      v15 = 0xD000000000000015;
    }

    v19 = sub_10002065C(v15, v17, &v36);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v7, "didDisconnectPeripheral: %@, error: %s", v11, 0x16u);
    sub_10001259C(v12, &unk_1001BBA60);

    sub_1000083B0(v13);
  }

  if (*(v3 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_findMyFinalizeState) != 2)
  {
    v21 = objc_opt_self();
    v22 = [v21 mainBundle];
    v23 = String._bridgeToObjectiveC()();
    v24 = String._bridgeToObjectiveC()();
    v25 = sub_1001279D0(v22, v23, v24);

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = [v21 mainBundle];
    v30 = String._bridgeToObjectiveC()();
    v31 = String._bridgeToObjectiveC()();
    v32 = sub_1001279D0(v29, v30, v31);

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    sub_1000D0A60(v26, v28, a2, v33, v35);
  }

  sub_1000BD9C0(v20);
}

void sub_1000E0924(void *a1, void *a2)
{
  v3 = v2;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000D298(v6, qword_1001BE0E0);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v7;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v7;
    v12[1] = v8;
    v13 = v7;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "didLosePeripheral: %@, forType: %@", v11, 0x16u);
    sub_100005DCC(&unk_1001BBA60);
    swift_arrayDestroy();
  }

  if (v3[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_didTapStart] == 1)
  {
    if (v3[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_findMyFinalizeState] != 2)
    {
      v15 = objc_opt_self();
      v16 = [v15 mainBundle];
      v17 = String._bridgeToObjectiveC()();
      v18 = String._bridgeToObjectiveC()();
      v19 = sub_1001279D0(v16, v17, v18);

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = [v15 mainBundle];
      v24 = String._bridgeToObjectiveC()();
      v25 = String._bridgeToObjectiveC()();
      v26 = sub_1001279D0(v23, v24, v25);

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      sub_1000D0A60(v20, v22, 0, v27, v29);
    }
  }

  else
  {
    [v3 dismiss:7];
  }

  sub_1000BE2C0(0);
}

void sub_1000E0C50(void *a1, uint64_t a2)
{
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BE0E0);
  v5 = a1;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = a1;
    *(v8 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v11 = v5;
      v12 = Error.localizedDescription.getter();
      v14 = v13;
    }

    else
    {
      v14 = 0x8000000100145470;
      v15 = v5;
      v12 = 0xD000000000000015;
    }

    v16 = sub_10002065C(v12, v14, &v33);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "peerDidFailToCompletePairing: %@, error: %s", v8, 0x16u);
    sub_10001259C(v9, &unk_1001BBA60);

    sub_1000083B0(v10);
  }

  v17 = objc_opt_self();
  v18 = [v17 mainBundle];
  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  v21 = sub_1001279D0(v18, v19, v20);

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = [v17 mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  v28 = sub_1001279D0(v25, v26, v27);

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  sub_1000D0A60(v22, v24, a2, v29, v31);

  sub_1000BD9C0(v32);
}

void sub_1000E0FB8(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100005DCC(&unk_1001BBBC0);
  __chkstk_darwin(v59);
  v6 = &v55 - v5;
  v58 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v58);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - v10;
  v12 = sub_100005DCC(&unk_1001BBAA0);
  v13 = __chkstk_darwin(v12 - 8);
  v60 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v62 = &v55 - v16;
  __chkstk_darwin(v15);
  v18 = &v55 - v17;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000D298(v19, qword_1001BE0E0);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v63 = v3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v57 = v8;
    v26 = v2;
    v27 = v6;
    v28 = v18;
    v29 = a1;
    v30 = v25;
    *v24 = 138412290;
    *(v24 + 4) = v20;
    *v25 = v29;
    v31 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "peerDidCompletePairing: %@", v24, 0xCu);
    sub_10001259C(v30, &unk_1001BBA60);
    a1 = v29;
    v18 = v28;
    v6 = v27;
    v2 = v26;
    v8 = v57;

    v3 = v63;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v32 = [v20 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = *(v3 + 56);
  v33(v18, 0, 1, v2);
  v34 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
  v35 = v61;
  swift_beginAccess();
  sub_100005EB8(v35 + v34, v11, &unk_1001BE180);
  v36 = type metadata accessor for B389PresentationConfig(0);
  if ((*(*(v36 - 8) + 48))(v11, 1, v36) == 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v37 = *(v36 + 24);
  v57 = v11;
  sub_100025418(&v11[v37], v8, type metadata accessor for B389PresentationConfig.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v63;
    v39 = v62;
    (*(v63 + 32))();
    v33(v39, 0, 1, v2);
  }

  else
  {
    v40 = v62;
    v33(v62, 1, 1, v2);
    v41 = v8;
    v39 = v40;
    sub_10005F788(v41, type metadata accessor for B389PresentationConfig.Mode);
    v38 = v63;
  }

  v42 = *(v59 + 48);
  sub_100005EB8(v18, v6, &unk_1001BBAA0);
  sub_100005EB8(v39, &v6[v42], &unk_1001BBAA0);
  v43 = *(v38 + 48);
  v44 = v43(v6, 1, v2) == 1;
  v45 = v39;
  v46 = v60;
  if (v44)
  {
    sub_10001259C(v45, &unk_1001BBAA0);
    sub_10001259C(v18, &unk_1001BBAA0);
    if (v43(&v6[v42], 1, v2) != 1)
    {
LABEL_16:
      sub_10001259C(v6, &unk_1001BBBC0);
      sub_10005F788(v57, type metadata accessor for B389PresentationConfig);
      return;
    }

    sub_10001259C(v6, &unk_1001BBAA0);
    v47 = sub_10005F788(v57, type metadata accessor for B389PresentationConfig);
    goto LABEL_18;
  }

  sub_100005EB8(v6, v60, &unk_1001BBAA0);
  v48 = v43(&v6[v42], 1, v2);
  if (v48 == 1)
  {
    sub_10001259C(v62, &unk_1001BBAA0);
    sub_10001259C(v18, &unk_1001BBAA0);
    (*(v63 + 8))(v46, v2);
    goto LABEL_16;
  }

  v49 = v63;
  v50 = &v6[v42];
  v51 = v56;
  (*(v63 + 32))(v56, v50, v2);
  sub_10005F638(&qword_1001BE220, &type metadata accessor for UUID);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = *(v49 + 8);
  v53(v51, v2);
  sub_10001259C(v62, &unk_1001BBAA0);
  sub_10001259C(v18, &unk_1001BBAA0);
  v53(v46, v2);
  sub_10001259C(v6, &unk_1001BBAA0);
  v47 = sub_10005F788(v57, type metadata accessor for B389PresentationConfig);
  if (v52)
  {
LABEL_18:
    v54 = v35 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairState;
    *v54 = 3;
    *(v54 + 8) = 1;
    sub_1000BD9C0(v47);
  }
}

void sub_1000E1794(void *a1, uint64_t a2)
{
  v80 = a2;
  v89 = sub_100005DCC(&unk_1001BBBC0);
  __chkstk_darwin(v89);
  v88 = &v79 - v3;
  v86 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v86);
  v87 = (&v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v5 - 8);
  v7 = &v79 - v6;
  v8 = sub_100005DCC(&unk_1001BBAA0);
  v9 = __chkstk_darwin(v8 - 8);
  v79 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v85 = &v79 - v12;
  v13 = __chkstk_darwin(v11);
  v82 = &v79 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v79 - v16;
  __chkstk_darwin(v15);
  v19 = &v79 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v84 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v81 = &v79 - v25;
  __chkstk_darwin(v24);
  v27 = &v79 - v26;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_10000D298(v28, qword_1001BE0E0);
  v30 = a1;
  v83 = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v33 = os_log_type_enabled(v31, v32);
  v91 = v27;
  v92 = v21;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = v19;
    v36 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v30;
    *v36 = a1;
    v37 = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "peerDidRequestPairing: %@", v34, 0xCu);
    sub_10001259C(v36, &unk_1001BBA60);
    v19 = v35;
    v27 = v91;

    v21 = v92;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v38 = [v30 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
  v40 = v90;
  swift_beginAccess();
  sub_100005EB8(v40 + v39, v7, &unk_1001BE180);
  v41 = type metadata accessor for B389PresentationConfig(0);
  if ((*(*(v41 - 8) + 48))(v7, 1, v41) == 1)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v42 = v87;
  sub_100025418(&v7[*(v41 + 24)], v87, type metadata accessor for B389PresentationConfig.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v21 + 32))(v19, v42, v20);
    v43 = *(v21 + 56);
    v43(v19, 0, 1, v20);
  }

  else
  {
    v43 = *(v21 + 56);
    v43(v19, 1, 1, v20);
    sub_10005F788(v42, type metadata accessor for B389PresentationConfig.Mode);
  }

  v44 = v19;
  sub_10005F788(v7, type metadata accessor for B389PresentationConfig);
  v45 = *(v21 + 16);
  v45(v17, v27, v20);
  v43(v17, 0, 1, v20);
  v46 = v88;
  v47 = *(v89 + 48);
  sub_100005EB8(v17, v88, &unk_1001BBAA0);
  v89 = v44;
  sub_100005EB8(v44, v46 + v47, &unk_1001BBAA0);
  v48 = *(v21 + 48);
  if (v48(v46, 1, v20) == 1)
  {
    sub_10001259C(v17, &unk_1001BBAA0);
    v49 = v48(v46 + v47, 1, v20);
    v50 = v91;
    if (v49 == 1)
    {
      v51 = sub_10001259C(v46, &unk_1001BBAA0);
LABEL_21:
      v74 = v90 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairState;
      *v74 = v80;
      *(v74 + 8) = 0;
      sub_1000BD9C0(v51);
      sub_10001259C(v89, &unk_1001BBAA0);
      (*(v92 + 8))(v50, v20);
      return;
    }
  }

  else
  {
    v52 = v82;
    sub_100005EB8(v46, v82, &unk_1001BBAA0);
    if (v48(v46 + v47, 1, v20) != 1)
    {
      v70 = v92;
      v71 = v46 + v47;
      v72 = v81;
      (*(v92 + 32))(v81, v71, v20);
      sub_10005F638(&qword_1001BE220, &type metadata accessor for UUID);
      LODWORD(v87) = dispatch thunk of static Equatable.== infix(_:_:)();
      v73 = *(v70 + 8);
      v73(v72, v20);
      sub_10001259C(v17, &unk_1001BBAA0);
      v73(v52, v20);
      v51 = sub_10001259C(v88, &unk_1001BBAA0);
      v50 = v91;
      if (v87)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    sub_10001259C(v17, &unk_1001BBAA0);
    (*(v92 + 8))(v52, v20);
    v50 = v91;
  }

  sub_10001259C(v46, &unk_1001BBBC0);
LABEL_16:
  v53 = v84;
  v45(v84, v50, v20);
  v54 = v89;
  v55 = v85;
  sub_100005EB8(v89, v85, &unk_1001BBAA0);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v87 = v56;
    LODWORD(v90) = v57;
    v58 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v93 = v88;
    *v58 = 136315394;
    v86 = sub_10005F638(&qword_1001BBAB0, &type metadata accessor for UUID);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    v62 = v92;
    v63 = *(v92 + 8);
    v63(v53, v20);
    v64 = sub_10002065C(v59, v61, &v93);

    *(v58 + 4) = v64;
    *(v58 + 12) = 2080;
    v65 = v79;
    sub_100005EB8(v55, v79, &unk_1001BBAA0);
    if (v48(v65, 1, v20) == 1)
    {
      v66 = 0x8000000100146530;
      v67 = 0xD000000000000013;
    }

    else
    {
      v75 = v81;
      (*(v62 + 32))(v81, v65, v20);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v76;
      v63(v75, v20);
    }

    sub_10001259C(v85, &unk_1001BBAA0);
    v77 = sub_10002065C(v67, v66, &v93);

    *(v58 + 14) = v77;
    v78 = v87;
    _os_log_impl(&_mh_execute_header, v87, v90, "Identifier mismatch, skip pairing request: %s != %s", v58, 0x16u);
    swift_arrayDestroy();

    sub_10001259C(v89, &unk_1001BBAA0);
    v63(v91, v20);
  }

  else
  {

    sub_10001259C(v55, &unk_1001BBAA0);
    v68 = v53;
    v69 = *(v92 + 8);
    v69(v68, v20);
    sub_10001259C(v54, &unk_1001BBAA0);
    v69(v50, v20);
  }
}

void sub_1000E2314(unint64_t a1)
{
  v2 = v1;
  if (qword_1001B9490 != -1)
  {
LABEL_26:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BE0E0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "didDiscoverCharacteristicsFor: %@\n\n", v8, 0xCu);
    sub_10001259C(v9, &unk_1001BBA60);
  }

  v11 = [v5 services];
  v50 = v2;
  if (!v11)
  {
    v25 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v13 = v11;
  sub_1000122EC(0, &unk_1001BE1F0);
  a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (a1 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
LABEL_7:
      v15 = 0;
      v16 = _swiftEmptyArrayStorage;
      v2 = a1 & 0xC000000000000001;
      do
      {
        v17 = v15;
        while (1)
        {
          if (v2)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v18 = *(a1 + 8 * v17 + 32);
          }

          v19 = v18;
          v15 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v20 = [v18 characteristics];
          if (v20)
          {
            break;
          }

          ++v17;
          if (v15 == v14)
          {
            goto LABEL_29;
          }
        }

        v21 = v20;
        sub_1000122EC(0, &qword_1001BBBD0);
        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100032B48(0, v16[2] + 1, 1, v16);
        }

        v24 = v16[2];
        v23 = v16[3];
        if (v24 >= v23 >> 1)
        {
          v16 = sub_100032B48((v23 > 1), v24 + 1, 1, v16);
        }

        v16[2] = v24 + 1;
        v16[v24 + 4] = v22;
      }

      while (v15 != v14);
      goto LABEL_29;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_7;
    }
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_29:

  v25 = sub_100037178(v16);

  v2 = v50;
LABEL_30:
  if (v25 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (!v26)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_44;
    }
  }

  if (v26 < 1)
  {
    __break(1u);
    return;
  }

  v27 = 0;
  v52 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredChars;
  v53 = v25 & 0xC000000000000001;
  *&v12 = 136315138;
  v49 = v12;
  do
  {
    if (v53)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v30 = *(v25 + 8 * v27 + 32);
    }

    v31 = v30;
    v32 = [v30 UUID];
    v33 = [v32 UUIDString];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = sub_10000764C();
    if (v34 != 19)
    {
      v35 = v34;
      swift_beginAccess();
      v36 = sub_1000DC954(v35);
      swift_endAccess();
      if (v36 != 19)
      {
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v55[0] = v51;
          *v39 = v49;
          v40 = sub_100006E18(v35);
          v42 = v26;
          v43 = v25;
          v44 = sub_10002065C(v40, v41, v55);

          *(v39 + 4) = v44;
          v25 = v43;
          v26 = v42;
          _os_log_impl(&_mh_execute_header, v37, v38, "Discovered %s", v39, 0xCu);
          sub_1000083B0(v51);
          v2 = v50;
        }

        swift_beginAccess();
        v28 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = *(v2 + v52);
        *(v2 + v52) = 0x8000000000000000;
        sub_100035718(v28, v35, isUniquelyReferenced_nonNull_native);
        *(v2 + v52) = v54;
        swift_endAccess();
      }
    }

    ++v27;
  }

  while (v26 != v27);
LABEL_44:

  sub_1000BD9C0(v45);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "done iterating chars", v48, 2u);
  }
}

void sub_1000E2948(void *a1, void *a2)
{
  v5 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v5 - 8);
  v7 = (&v134 - v6);
  v8 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 value];
  if (v12)
  {
    v134 = v9;
    v136 = v2;
    v13 = v12;
    v137 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v138 = v14;

    v15 = [a2 UUID];
    v16 = String._bridgeToObjectiveC()();
    v17 = objc_opt_self();
    v18 = [v17 UUIDWithString:v16];

    sub_1000122EC(0, &qword_1001BBAF8);
    v19 = static NSObject.== infix(_:_:)();

    v135 = v15;
    if (v19)
    {
      if (qword_1001B9490 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000D298(v20, qword_1001BE0E0);
      v21 = v137;
      v22 = v138;
      sub_100005E64(v137, v138);
      sub_100005E64(v21, v22);
      sub_100005E64(v21, v22);
      v23 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      sub_1000083FC(v21, v22);
      v24 = os_log_type_enabled(v23, v7);
      v25 = v136;
      if (v24)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v142[0] = v27;
        *v26 = 136315394;
        sub_100005E64(v21, v22);
        v28 = Data.description.getter();
        v30 = v29;
        sub_1000083FC(v137, v22);
        v31 = sub_10002065C(v28, v30, v142);
        v21 = v137;

        *(v26 + 4) = v31;
        *(v26 + 12) = 2048;
        v32 = Data.hashValue.getter();
        sub_1000083FC(v21, v22);
        *(v26 + 14) = v32;
        sub_1000083FC(v21, v22);
        _os_log_impl(&_mh_execute_header, v23, v7, "didUpdateValueFor s1UUID: %s, hash: %ld", v26, 0x16u);
        sub_1000083B0(v27);
      }

      else
      {
        sub_1000083FC(v21, v22);
        sub_1000083FC(v21, v22);
      }

      v66 = &v25[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_storeS1];
      swift_beginAccess();
      if (*(v66 + 1) >> 60 != 15)
      {
        swift_beginAccess();
        if (*(v66 + 1) >> 60 == 15)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        Data.append(_:)();
        swift_endAccess();
LABEL_49:
        v7 = v25;
        v87 = Logger.logObject.getter();
        LOBYTE(v92) = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v87, v92))
        {

          v87 = v7;
          goto LABEL_64;
        }

        v90 = swift_slowAlloc();
        *v90 = 134217984;
        v99 = *(v66 + 1);
        if (v99 >> 60 == 15)
        {
LABEL_119:

          __break(1u);
          goto LABEL_120;
        }

        v91 = *v66;
        v100 = v99 >> 62;
        if ((v99 >> 62) > 1)
        {
          if (v100 == 2)
          {
            v103 = v91 + 16;
            v101 = *(v91 + 16);
            v102 = *(v103 + 8);
            v82 = __OFSUB__(v102, v101);
            v91 = v102 - v101;
            if (v82)
            {
LABEL_109:
              __break(1u);
              goto LABEL_110;
            }
          }

          else
          {
            v91 = 0;
          }

          goto LABEL_63;
        }

        if (!v100)
        {
          v91 = BYTE6(v99);
LABEL_63:
          *(v90 + 4) = v91;
          v104 = v90;

          _os_log_impl(&_mh_execute_header, v87, v92, "Current s1 length: %ld", v104, 0xCu);

LABEL_64:

          v105 = *(v66 + 1);
          if (v105 >> 60 == 15)
          {
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          v106 = *v66;
          v107 = v105 >> 62;
          if ((v105 >> 62) > 1)
          {
            if (v107 != 2)
            {
              v106 = 0;
              goto LABEL_75;
            }

            v110 = v106 + 16;
            v108 = *(v106 + 16);
            v109 = *(v110 + 8);
            v82 = __OFSUB__(v109, v108);
            v106 = v109 - v108;
            if (!v82)
            {
LABEL_75:
              v111 = v7 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_targetS1Length;
              if (*(&v7[1].isa + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_targetS1Length))
              {
LABEL_112:
                __break(1u);
LABEL_113:
                __break(1u);
                goto LABEL_114;
              }

              if (*v111 < v106)
              {
                v112 = Logger.logObject.getter();
                v113 = static os_log_type_t.fault.getter();
                if (os_log_type_enabled(v112, v113))
                {
                  v114 = swift_slowAlloc();
                  *v114 = 0;
                  _os_log_impl(&_mh_execute_header, v112, v113, "length went over", v114, 2u);
                }
              }

              v115 = *(v66 + 1);
              if (v115 >> 60 == 15)
              {
                goto LABEL_113;
              }

              if (v111[8])
              {
LABEL_114:
                __break(1u);
                goto LABEL_115;
              }

              v116 = *v66;
              v117 = *v111;
              sub_100005E64(*v66, *(v66 + 1));
              sub_100019A38(v117, v116, v115, v140);
              v118 = *v66;
              v119 = *(v66 + 1);
              *v66 = v140[0];
              v65 = sub_100025404(v118, v119);
              v120 = *(v66 + 1);
              if (v120 >> 60 == 15)
              {
LABEL_115:
                __break(1u);
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
                goto LABEL_118;
              }

              v121 = *v66;
              v122 = v120 >> 62;
              if ((v120 >> 62) <= 1)
              {
                if (!v122)
                {
                  v121 = BYTE6(v120);
                  goto LABEL_93;
                }

LABEL_90:
                v82 = __OFSUB__(HIDWORD(v121), v121);
                LODWORD(v121) = HIDWORD(v121) - v121;
                if (!v82)
                {
                  v121 = v121;
                  goto LABEL_93;
                }

                goto LABEL_107;
              }

              if (v122 == 2)
              {
                v125 = v121 + 16;
                v123 = *(v121 + 16);
                v124 = *(v125 + 8);
                v82 = __OFSUB__(v124, v123);
                v121 = v124 - v123;
                if (v82)
                {
                  __break(1u);
                  goto LABEL_90;
                }
              }

              else
              {
                v121 = 0;
              }

LABEL_93:
              if ((v111[8] & 1) == 0)
              {
                v126 = v121 < *v111;
                v59 = v138;
                if (v126)
                {
                  v127 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredChars;
                  swift_beginAccess();
                  v128 = *(&v7->isa + v127);
                  if (*(v128 + 16))
                  {

                    v129 = sub_100032E10(1);
                    if (v130)
                    {
                      v131 = *(*(v128 + 56) + 8 * v129);
                      v132 = v131;
                    }

                    else
                    {
                      v131 = 0;
                    }
                  }

                  else
                  {
                    v131 = 0;
                  }

                  v139 = v131;
                  sub_100005DCC(&unk_1001BE1B0);
                  Optional.unwrap(_:file:line:)();

                  v133 = v141;
                  [a1 readValueForCharacteristic:v141];
                }

                goto LABEL_103;
              }

              goto LABEL_116;
            }

            __break(1u);
          }

          else if (!v107)
          {
            v106 = BYTE6(v105);
            goto LABEL_75;
          }

          v82 = __OFSUB__(HIDWORD(v106), v106);
          LODWORD(v106) = HIDWORD(v106) - v106;
          if (v82)
          {
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v106 = v106;
          goto LABEL_75;
        }

LABEL_60:
        v82 = __OFSUB__(HIDWORD(v91), v91);
        LODWORD(v91) = HIDWORD(v91) - v91;
        if (v82)
        {
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        v91 = v91;
        goto LABEL_63;
      }

      v59 = &v25[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_targetS1Length];
      if (v25[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_targetS1Length + 8] == 1)
      {
        v67 = v138 >> 62;
        if ((v138 >> 62) > 1)
        {
          if (v67 != 2)
          {
            goto LABEL_120;
          }

          v81 = *(v137 + 16);
          v80 = *(v137 + 24);
          v82 = __OFSUB__(v80, v81);
          v68 = v80 - v81;
          if (!v82)
          {
LABEL_40:
            if (v68 >= 2)
            {
              v83 = Data._Representation.subscript.getter();
              v84 = Data._Representation.subscript.getter();
              sub_100005DCC(&qword_1001BA7E8);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_10016CCD0;
              *(inited + 32) = v83;
              *(inited + 33) = v84;
              v86 = sub_100024150(inited);
              swift_setDeallocating();
              v87 = Logger.logObject.getter();
              v88 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v87, v88))
              {
                v89 = swift_slowAlloc();
                *v89 = 33554688;
                *(v89 + 4) = v86;
                _os_log_impl(&_mh_execute_header, v87, v88, "s1 target length: %hu", v89, 6u);
              }

              v59->isa = v86;
              LOBYTE(v59[1].isa) = 0;
              if (v67 == 2)
              {
                v21 = v137;
                v92 = *(v137 + 24);
                v93 = v137;
                v7 = v138;
              }

              else
              {
                v7 = v138;
                v91 = &v143 + 8;
                if (v67 != 1)
                {
                  v21 = v137;
                  LOBYTE(v92) = BYTE6(v138);
                  if (BYTE6(v138) >= 2uLL)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_59;
                }

                v21 = v137;
                v92 = v137 >> 32;
                v93 = v137;
              }

              v90 = sub_100005E64(v93, v7);
              if (v92 >= 2)
              {
LABEL_48:
                v94 = Data._Representation.subscript.getter();
                v96 = v95;
                sub_1000083FC(v21, v7);
                v97 = *v66;
                v98 = *(v66 + 1);
                *v66 = v94;
                *(v66 + 1) = v96;
                sub_100025404(v97, v98);
                goto LABEL_49;
              }

LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

LABEL_120:
            __break(1u);
            swift_unexpectedError();
            __break(1u);
            return;
          }

          __break(1u);
        }

        else if (!v67)
        {
          v68 = BYTE6(v138);
          goto LABEL_40;
        }

        LODWORD(v68) = HIDWORD(v137) - v137;
        if (__OFSUB__(HIDWORD(v137), v137))
        {
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        v68 = v68;
        goto LABEL_40;
      }

      __break(1u);
      goto LABEL_105;
    }

    v40 = v15;
    v41 = String._bridgeToObjectiveC()();
    v42 = [v17 UUIDWithString:v41];

    v43 = static NSObject.== infix(_:_:)();
    if (v43)
    {
      v44 = v137;
      if (qword_1001B9490 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_10000D298(v45, qword_1001BE0E0);
      v46 = v138;
      sub_100005E64(v44, v138);
      v47 = Logger.logObject.getter();
      v48 = v44;
      v49 = static os_log_type_t.default.getter();
      sub_1000083FC(v44, v46);
      v50 = os_log_type_enabled(v47, v49);
      v51 = v136;
      if (v50)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v141 = v53;
        *v52 = 136315138;
        *&v142[0] = 0;
        *(&v142[0] + 1) = 0xE000000000000000;
        *&v140[0] = v48;
        *(&v140[0] + 1) = v46;
        v54 = v134;
        (*(v134 + 104))(v11, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v8);
        sub_10005F5D4();
        DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
        (*(v54 + 8))(v11, v8);
        v55 = sub_10002065C(*&v142[0], *(&v142[0] + 1), &v141);

        *(v52 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v47, v49, "didUpdateValueFor payload: %s", v52, 0xCu);
        sub_1000083B0(v53);
      }

      v56 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
      v57 = v51;
      swift_beginAccess();
      sub_100005EB8(&v51[v56], v7, &unk_1001BE180);
      v58 = type metadata accessor for B389PresentationConfig(0);
      if ((*(*(v58 - 8) + 48))(v7, 1, v58) == 1)
      {
        goto LABEL_117;
      }

      sub_10001259C(v7, &unk_1001BE180);
      v21 = v137;
      v59 = v138;
      sub_100005E64(v137, v138);
      sub_1000076A0(v21, v59, v142);
      v60 = &v57[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue];
      v61 = *&v57[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue + 48];
      v140[2] = *&v57[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue + 32];
      v140[3] = v61;
      v140[4] = *&v57[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue + 64];
      v62 = *&v57[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue];
      v140[1] = *&v57[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue + 16];
      v140[0] = v62;
      v63 = v142[1];
      *v60 = v142[0];
      *(v60 + 1) = v63;
      v64 = v142[3];
      *(v60 + 2) = v142[2];
      *(v60 + 3) = v64;
      *(v60 + 4) = v143;
      v65 = sub_10001259C(v140, &qword_1001BBAF0);
    }

    else
    {
      v69 = [v40 UUIDString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v65 = sub_10000764C();
      v25 = v136;
      v21 = v137;
      v59 = v138;
      if (v65 != 19)
      {
        LOBYTE(v7) = v65;
        if (qword_1001B9490 == -1)
        {
LABEL_29:
          v70 = type metadata accessor for Logger();
          sub_10000D298(v70, qword_1001BE0E0);
          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            *&v142[0] = v74;
            *v73 = 136315138;
            v75 = sub_100006E18(v7);
            v77 = sub_10002065C(v75, v76, v142);

            *(v73 + 4) = v77;
            _os_log_impl(&_mh_execute_header, v71, v72, "didUpdateValueFor %s", v73, 0xCu);
            sub_1000083B0(v74);
          }

          v78 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_readValues;
          swift_beginAccess();
          sub_100005E64(v21, v59);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v140[0] = *&v25[v78];
          *&v25[v78] = 0x8000000000000000;
          sub_100035860(v21, v59, v7, isUniquelyReferenced_nonNull_native);
          *&v25[v78] = *&v140[0];
          v65 = swift_endAccess();
          goto LABEL_103;
        }

LABEL_105:
        swift_once();
        goto LABEL_29;
      }
    }

LABEL_103:
    sub_1000BD9C0(v65);

    sub_1000083FC(v21, v59);
    return;
  }

  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000D298(v33, qword_1001BE0E0);
  v34 = a2;
  v138 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v138, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v34;
    *v37 = v34;
    v38 = v34;
    _os_log_impl(&_mh_execute_header, v138, v35, "didUpdateValueFor %@ value = nil", v36, 0xCu);
    sub_10001259C(v37, &unk_1001BBA60);
  }

  v39 = v138;
}

void sub_1000E3A60(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = static os_log_type_t.error.getter();
  }

  else
  {
    v4 = static os_log_type_t.default.getter();
  }

  v5 = v4;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000D298(v6, qword_1001BE0E0);
  v7 = a1;
  swift_errorRetain();
  v8 = Logger.logObject.getter();

  if (os_log_type_enabled(v8, v5))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v9 = 138412546;
    *(v9 + 4) = v7;
    *v10 = v7;
    *(v9 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v12 = v7;
      v13 = Error.localizedDescription.getter();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000100145470;
      v16 = v7;
      v13 = 0xD000000000000015;
    }

    v17 = sub_10002065C(v13, v15, v19);

    *(v9 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v5, "didWriteValueFor characteristic: %@, error? %s", v9, 0x16u);
    sub_10001259C(v10, &unk_1001BBA60);

    sub_1000083B0(v11);
  }

  if (!a2)
  {
    swift_beginAccess();
    sub_10001ACB0(v7);
    v18 = swift_endAccess();
    sub_1000BD9C0(v18);
  }
}

void *sub_1000E3CDC@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1000E3D20()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E3D78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000E3DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E3DC8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000E3E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&qword_1001BA7B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E3F14()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E3F7C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E3FD0()
{
  v1 = *(sub_100005DCC(&qword_1001BA7B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  if (*(v0 + 32))
  {
  }

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1000E4118()
{
  v1 = *(sub_100005DCC(&qword_1001BA7B0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_1000C1CD0(v2, v3, v4, v5, v6);
}

uint64_t sub_1000E4190()
{
  v1 = *(sub_100005DCC(&qword_1001BA7B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

uint64_t sub_1000E42E4()
{
  v1 = *(sub_100005DCC(&qword_1001BA7B0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000C1FB0(v3, v4, v0 + v2, v5);
}

uint64_t sub_1000E4380()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000E440C()
{
  result = qword_1001BE260;
  if (!qword_1001BE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE260);
  }

  return result;
}

uint64_t sub_1000E4460()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E44A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&unk_1001BE180);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E4518()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000E4568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000E4B60;

  return sub_1000C094C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000E4638(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000E4B60;

  return sub_1000D9698(a1, v4);
}

uint64_t sub_1000E46F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006242C;

  return sub_1000D9698(a1, v4);
}

uint64_t sub_1000E47C4()
{
  v1 = sub_100005DCC(&qword_1001BBB68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000E4858(uint64_t a1)
{
  v3 = *(sub_100005DCC(&qword_1001BBB68) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000C2A28(a1, v4);
}

uint64_t sub_1000E48D4()
{
  v1 = sub_100005DCC(&qword_1001BBB68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000E49A4(uint64_t a1)
{
  v4 = *(sub_100005DCC(&qword_1001BBB68) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10006242C;

  return sub_1000C2C20(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000E4C04()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BE2A0);
  v1 = sub_10000D298(v0, qword_1001BE2A0);
  if (qword_1001B92D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3930);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000E4CCC()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = String._bridgeToObjectiveC()();
  [v1 removeObserver:v0 name:v2 object:0];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for AuthenticateAccountsPresenter();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1000E4ED8(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 6u)
    {
      if (a1 == 7)
      {

        return sub_1000E7168();
      }

      else
      {

        return sub_1000E786C();
      }
    }

    else if (a1 == 5)
    {

      return sub_1000E67B0();
    }

    else if (a1 == 6)
    {

      return sub_1000E6C80();
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = objc_opt_self();
      v5 = [v4 mainBundle];
      v25._object = 0xE000000000000000;
      v6._countAndFlagsBits = 0x49544E4548545541;
      v6._object = 0xEE004E4F49544143;
      v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v7.value._object = 0xEB00000000656C62;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      v25._countAndFlagsBits = 0;
      v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v25);

      v10 = [v4 mainBundle];
      v26._object = 0xE000000000000000;
      v11._object = 0x800000010014CA60;
      v11._countAndFlagsBits = 0xD000000000000019;
      v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v12.value._object = 0xEB00000000656C62;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v26._countAndFlagsBits = 0;
      v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v26);

      v15 = &v1[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModel];
      *v15 = v9;
      *(v15 + 1) = v14;
      v15[32] = 0;
      *(v15 + 40) = xmmword_100170AE0;

      v16 = *&v1[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModelDidUpdate];
      v17 = *(v15 + 1);
      v22[0] = *v15;
      v22[1] = v17;
      v22[2] = *(v15 + 2);
      v23 = *(v15 + 6);

      sub_1000E8AB8(v22, v21);
      v16(v22);
      sub_1000E8B14(v22);

      v18 = objc_allocWithZone(type metadata accessor for AuthenticateAccountsAuthViewController());
      v19 = v1;
      v20 = sub_1000E8B68(v19, v18);
    }

    else
    {
      v20 = sub_1000E63E4();
      swift_unknownObjectWeakAssign();
    }

    return v20;
  }

  else if (a1)
  {

    return sub_1000E574C();
  }

  else
  {
    sub_1000E52A0(v22);
    v2 = objc_allocWithZone(type metadata accessor for AuthenticateAccountsStartViewController());
    return sub_1000E87AC(v22, v1, v2);
  }

  return result;
}

__n128 sub_1000E52A0@<Q0>(uint64_t a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v76._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x800000010014C8B0;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v76._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v76);

  v9 = [v3 mainBundle];
  v77._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000027;
  v10._object = 0x800000010014C8E0;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v77._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v77);

  v52 = [objc_opt_self() labelColor];
  v14 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_interactor) + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_model;
  v15 = type metadata accessor for AuthenticateAccountsModel();
  v51 = *(v14 + *(v15 + 20));
  v16 = [v3 mainBundle];
  v78._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0x5443454E4E4F43;
  v17._object = 0xE700000000000000;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v78._countAndFlagsBits = 0;
  *v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v78);

  v20 = [v3 mainBundle];
  v79._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0x495443454E4E4F43;
  v21._object = 0xEA0000000000474ELL;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v23 = 0xD000000000000012;
  v22.value._object = 0xEB00000000656C62;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v79._countAndFlagsBits = 0;
  *&v29[16] = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v24, v79);

  v25 = [v3 mainBundle];
  v80._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0xD000000000000031;
  v26._object = 0x800000010014C910;
  v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v27.value._object = 0xEB00000000656C62;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v80._countAndFlagsBits = 0;
  *&v29[32] = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v80);

  v75 = 1;
  if (*(v14 + *(v15 + 32)) == 1)
  {
    v30 = [v3 mainBundle];
    v81._object = 0xE000000000000000;
    v31._countAndFlagsBits = 0xD000000000000024;
    v31._object = 0x800000010014C950;
    v32.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v32.value._object = 0xEB00000000656C62;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v81._countAndFlagsBits = 0;
    v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v81);
    countAndFlagsBits = v34._countAndFlagsBits;

    v36 = [v3 mainBundle];
    v82._object = 0xE000000000000000;
    v37._countAndFlagsBits = 0xD00000000000002ALL;
    v37._object = 0x800000010014C980;
    v38.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v38.value._object = 0xEB00000000656C62;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v82._countAndFlagsBits = 0;
    v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v36, v39, v82);
    v41 = v40._countAndFlagsBits;
    object = v40._object;

    v43 = 0x800000010014C9B0;
    v74 = 0;
    v44 = &v74;
    v45 = v34._object;
  }

  else
  {
    v43 = 0xED0000726573755FLL;
    v23 = 0x6464615F786F7270;
    v44 = &v75;
    v41 = v13._countAndFlagsBits;
    countAndFlagsBits = v8._countAndFlagsBits;
    v45 = v8._object;
    object = v13._object;
  }

  v46 = *v44;
  *&v54 = countAndFlagsBits;
  *(&v54 + 1) = v45;
  v55.n128_u64[0] = v41;
  v55.n128_u64[1] = object;
  *&v56 = v23;
  *(&v56 + 1) = v43;
  LOBYTE(v57) = v46;
  *(&v57 + 1) = v52;
  v58 = xmmword_100170AF0;
  LOBYTE(v59) = v51;
  *(&v59 + 1) = *v29;
  v60 = *&v29[8];
  v61 = *&v29[24];
  v62 = *&v29[40];
  v63[0] = countAndFlagsBits;
  v63[1] = v45;
  v63[2] = v41;
  v63[3] = object;
  v63[4] = v23;
  v63[5] = v43;
  v64 = v46;
  v65 = v52;
  v66 = xmmword_100170AF0;
  v67 = v51;
  v68 = *v29;
  v69 = *&v29[8];
  v70 = *&v29[16];
  v71 = *&v29[24];
  v72 = *&v29[32];
  v73 = *&v29[40];
  sub_1000E8A5C(&v54, v53);
  sub_10009E318(v63);
  v47 = v61;
  *(a1 + 96) = v60;
  *(a1 + 112) = v47;
  *(a1 + 128) = v62;
  v48 = v57;
  *(a1 + 32) = v56;
  *(a1 + 48) = v48;
  v49 = v59;
  *(a1 + 64) = v58;
  *(a1 + 80) = v49;
  result = v55;
  *a1 = v54;
  *(a1 + 16) = result;
  return result;
}

id sub_1000E574C()
{
  sub_1000E52A0(v77);
  v1 = v77[0];
  v2 = v77[1];
  v3 = v77[3];
  v74 = v77[8];
  v75 = v77[2];
  v4 = v77[12];
  v70 = v77[11];
  v5 = v77[14];
  v65 = v77[13];
  v66 = v77[9];
  v6 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_interactor) + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_model;
  v7 = type metadata accessor for AuthenticateAccountsModel();
  v8 = (v6 + v7[11]);
  v9 = *v8;
  v10 = v8[1];
  v11 = (v6 + v7[12]);
  v12 = v11[1];
  v72 = v9;
  v73 = *v11;
  v13 = (v6 + v7[13]);
  v14 = v13[1];
  v63 = *v13;
  v15 = objc_allocWithZone(PRXFeatureListViewController);
  v64 = v14;
  swift_bridgeObjectRetain_n();

  v67 = v5;

  v71 = v4;

  v16 = [v15 init];
  v69 = v1;
  v17 = String._bridgeToObjectiveC()();
  v68 = v2;

  [v16 setTitle:v17];

  v18 = v16;
  v19 = String._bridgeToObjectiveC()();

  [v18 setSubtitle:v19];

  [v18 setDismissalType:v74];
  if (v10)
  {
    v20 = [objc_opt_self() mainBundle];
    v78._object = 0xE000000000000000;
    v21._object = 0x800000010014C870;
    v21._countAndFlagsBits = 0xD000000000000031;
    v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v22.value._object = 0xEB00000000656C62;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v78._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v78);

    v24 = String._bridgeToObjectiveC()();
    v25 = [objc_opt_self() systemImageNamed:v24];

    v26 = [objc_opt_self() systemBlueColor];
    v27 = objc_allocWithZone(PRXFeature);
    v28 = String._bridgeToObjectiveC()();

    v29 = String._bridgeToObjectiveC()();

    v30 = [v27 initWithTitle:v28 detailText:v29 icon:v25 tintColor:v26 valueChangedBlock:0];
  }

  if (v12)
  {
    v31 = [objc_opt_self() mainBundle];
    v79._object = 0xE000000000000000;
    v32._object = 0x800000010014C810;
    v32._countAndFlagsBits = 0xD000000000000031;
    v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v33.value._object = 0xEB00000000656C62;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v79._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v79);

    v35 = String._bridgeToObjectiveC()();
    v36 = [objc_opt_self() _systemImageNamed:v35];

    v37 = [objc_opt_self() systemBlueColor];
    v38 = objc_allocWithZone(PRXFeature);
    v39 = String._bridgeToObjectiveC()();

    v40 = String._bridgeToObjectiveC()();

    v41 = [v38 initWithTitle:v39 detailText:v40 icon:v36 tintColor:v37 valueChangedBlock:0];
  }

  if (v64)
  {
    v42 = [objc_opt_self() mainBundle];
    v80._object = 0xE000000000000000;
    v43._countAndFlagsBits = 0xD000000000000036;
    v43._object = 0x800000010014C7D0;
    v44.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v44.value._object = 0xEB00000000656C62;
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    v80._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v80);

    v46 = String._bridgeToObjectiveC()();
    v47 = [objc_opt_self() _systemImageNamed:v46];

    v48 = [objc_opt_self() systemBlueColor];
    v49 = objc_allocWithZone(PRXFeature);
    v50 = String._bridgeToObjectiveC()();

    v51 = String._bridgeToObjectiveC()();

    v52 = [v49 initWithTitle:v50 detailText:v51 icon:v47 tintColor:v48 valueChangedBlock:0];
  }

  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  *(v55 + 24) = v54;
  *(v55 + 32) = v69;
  *(v55 + 40) = v68;
  *(v55 + 48) = v75;
  *(v55 + 56) = v3;
  *(v55 + 64) = v74;
  *(v55 + 72) = v66;
  *(v55 + 80) = v70;
  *(v55 + 88) = v71;
  *(v55 + 96) = v65;
  *(v55 + 104) = v67;
  *&v56 = v72;
  *&v57 = v73;
  *(&v56 + 1) = v10;
  *(&v57 + 1) = v12;
  *(v55 + 112) = v56;
  *(v55 + 128) = v57;
  *(v55 + 144) = v63;
  *(v55 + 152) = v64;

  v58 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1000E8A50;
  aBlock[5] = v55;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001BE90;
  aBlock[3] = &unk_100194A50;
  v59 = _Block_copy(aBlock);
  v60 = [objc_opt_self() actionWithTitle:v58 style:0 handler:v59];

  _Block_release(v59);

  v61 = [v18 addAction:v60];
  sub_10009E318(v77);

  return v18;
}

void sub_1000E5FE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      [a1 setEnabled:0];
      [v9 setDismissalType:*(a4 + 40)];
      v10 = String._bridgeToObjectiveC()();
      [v9 showActivityIndicatorWithStatus:v10];

      sub_1000E60C4();
      v7 = v9;
    }
  }
}

void sub_1000E60C4()
{
  if (v0[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_currentState] <= 1u && (v1 = *&v0[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_router], (v2 = *(v1 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_currentCardViewController)) != 0) && (v3 = *(v1 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_remoteViewControllerProxy)) != 0)
  {
    v4 = v2;
    swift_unknownObjectRetain();
    sub_10007B4F8(v4, v3);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1001B9498 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000D298(v5, qword_1001BE2A0);
    v6 = v0;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v8 = 136315650;
      sub_100005DCC(&qword_1001BE328);
      v9 = String.init<A>(reflecting:)();
      v11 = sub_10002065C(v9, v10, &v20);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = *(*&v6[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_router] + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_currentCardViewController);
      sub_100005DCC(&qword_1001BE330);
      v13 = String.init<A>(reflecting:)();
      v15 = sub_10002065C(v13, v14, &v20);

      *(v8 + 14) = v15;
      *(v8 + 22) = 2080;
      swift_unknownObjectRetain();
      sub_100005DCC(&qword_1001BE338);
      v16 = String.init<A>(reflecting:)();
      v18 = sub_10002065C(v16, v17, &v20);

      *(v8 + 24) = v18;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Failed to start authentication -- invalid state. {currentState: %s, cardViewController: %s, remoteViewControllerProxy: %s}", v8, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

id sub_1000E63E4()
{
  v1 = 0xD000000000000022;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v53._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000027;
  v4._object = 0x800000010014C6D0;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v53);

  v8 = [v2 mainBundle];
  v54._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD00000000000002DLL;
  v9._object = 0x800000010014C700;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v54);
  countAndFlagsBits = v12._countAndFlagsBits;
  object = v12._object;

  v40 = [objc_opt_self() labelColor];
  v52 = 0;
  v47 = 0;
  v15 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_interactor) + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_model;
  v39 = v2;
  if (*(v15 + *(type metadata accessor for AuthenticateAccountsModel() + 32)) == 1)
  {
    v16 = [v2 mainBundle];
    v55._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0xD00000000000002ALL;
    v17._object = 0x800000010014C760;
    v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v18.value._object = 0xEB00000000656C62;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v55._countAndFlagsBits = 0;
    v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v55);
    v21 = v2;
    v22 = v20._countAndFlagsBits;

    v23 = [v21 mainBundle];
    v56._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD000000000000030;
    v24._object = 0x800000010014C790;
    v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v25.value._object = 0xEB00000000656C62;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v56._countAndFlagsBits = 0;
    v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v56);
    countAndFlagsBits = v27._countAndFlagsBits;

    v47 = 0;
    v28 = 0xE400000000000000;
    v1 = 1918985575;
    v29 = v20._object;
    object = v27._object;
  }

  else
  {
    v28 = 0x800000010014C730;
    v22 = v7._countAndFlagsBits;
    v29 = v7._object;
  }

  v30 = v22;
  v48[0] = v22;
  v48[1] = v29;
  v48[2] = countAndFlagsBits;
  v48[3] = object;
  v48[4] = v1;
  v48[5] = v28;
  v49 = 0;
  v50 = v40;
  v51 = 1;
  v31 = objc_allocWithZone(type metadata accessor for AuthenticateAccountsImageCardViewController());
  sub_10009E96C(v48, v41);
  v32 = sub_10009E6CC(v48);
  v33 = [v39 mainBundle];
  v57._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0x5F474E4954544553;
  v34._object = 0xEA00000000005055;
  v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v35.value._object = 0xEB00000000656C62;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v57);

  v37 = String._bridgeToObjectiveC()();

  [v32 showActivityIndicatorWithStatus:v37];

  v41[0] = v30;
  v41[1] = v29;
  v41[2] = countAndFlagsBits;
  v41[3] = object;
  v41[4] = v1;
  v41[5] = v28;
  v42 = v47;
  *v43 = v46[0];
  *&v43[3] = *(v46 + 3);
  v44 = v40;
  v45 = 1;
  sub_10009E9D0(v41);
  return v32;
}

id sub_1000E67B0()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v64._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000026;
  v4._object = 0x800000010014C5C0;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v64);
  countAndFlagsBits = v7._countAndFlagsBits;
  object = v7._object;

  v10 = [v2 mainBundle];
  v65._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD00000000000002CLL;
  v11._object = 0x800000010014C5F0;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v65._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v65);
  v15 = v14._countAndFlagsBits;
  v16 = v14._object;

  v46 = [objc_opt_self() systemBlueColor];
  v63 = 0;
  v58 = 0;
  v17 = *&v1[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_interactor] + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_model;
  if (*(v17 + *(type metadata accessor for AuthenticateAccountsModel() + 32)) == 1)
  {
    v18 = [v2 mainBundle];
    v66._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0xD000000000000023;
    v19._object = 0x800000010014C650;
    v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v20.value._object = 0xEB00000000656C62;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v66._countAndFlagsBits = 0;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v66);
    countAndFlagsBits = v22._countAndFlagsBits;

    v23 = [v2 mainBundle];
    v67._object = 0xE000000000000000;
    v24 = 0xD000000000000014;
    v25._countAndFlagsBits = 0xD000000000000029;
    v25._object = 0x800000010014C680;
    v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v26.value._object = 0xEB00000000656C62;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v67._countAndFlagsBits = 0;
    v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v23, v27, v67);
    v15 = v28._countAndFlagsBits;
    v16 = v28._object;

    v58 = 0;
    v29 = "OUNTS_V2_DONE_DESCRIPTION";
    object = v22._object;
  }

  else
  {
    v29 = "OUNTS_USER_ADDED_DESCRIPTION";
    v24 = 0xD000000000000027;
  }

  v45 = v15;
  v30 = v29 | 0x8000000000000000;
  v59[0] = countAndFlagsBits;
  v59[1] = object;
  v59[2] = v15;
  v59[3] = v16;
  v59[4] = v24;
  v59[5] = v29 | 0x8000000000000000;
  v60 = 0;
  v61 = v46;
  v62 = 3;
  v31 = objc_allocWithZone(type metadata accessor for AuthenticateAccountsImageCardViewController());
  sub_10009E96C(v59, &aBlock);
  v32 = sub_10009E6CC(v59);
  v33 = v16;
  v34 = [v2 mainBundle];
  v68._object = 0xE000000000000000;
  v35._countAndFlagsBits = 1162760004;
  v35._object = 0xE400000000000000;
  v36.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v36.value._object = 0xEB00000000656C62;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v68._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v36, v34, v37, v68);

  v38 = swift_allocObject();
  *(v38 + 16) = v1;
  v39 = v1;
  v40 = String._bridgeToObjectiveC()();

  v51 = sub_1000E9080;
  v52 = v38;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_10001BE90;
  v50 = &unk_1001949B0;
  v41 = _Block_copy(&aBlock);
  v42 = [objc_opt_self() actionWithTitle:v40 style:0 handler:v41];

  _Block_release(v41);

  v43 = [v32 addAction:v42];

  aBlock = countAndFlagsBits;
  v48 = object;
  v49 = v45;
  v50 = v33;
  v51 = v24;
  v52 = v30;
  v53 = v58;
  *v54 = v57[0];
  *&v54[3] = *(v57 + 3);
  v55 = v46;
  v56 = 3;
  sub_10009E9D0(&aBlock);
  return v32;
}

id sub_1000E6C80()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v64._object = 0xE000000000000000;
  v3._object = 0x800000010014C4D0;
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v64);
  countAndFlagsBits = v6._countAndFlagsBits;
  object = v6._object;

  v8 = [v1 mainBundle];
  v65._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000031;
  v9._object = 0x800000010014C500;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v65._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v65);
  v13 = v12._countAndFlagsBits;
  v14 = v12._object;

  v44 = [objc_opt_self() systemRedColor];
  v45 = v0;
  v63 = 0;
  v58 = 0;
  v15 = *&v0[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_interactor] + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_model;
  if (*(v15 + *(type metadata accessor for AuthenticateAccountsModel() + 32)) == 1)
  {
    v16 = [v1 mainBundle];
    v17._countAndFlagsBits = 0xD000000000000025;
    v66._object = 0xE000000000000000;
    v17._object = 0x800000010014C540;
    v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v18.value._object = 0xEB00000000656C62;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v66._countAndFlagsBits = 0;
    v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v66);
    countAndFlagsBits = v20._countAndFlagsBits;

    v21 = [v1 mainBundle];
    v67._object = 0xE000000000000000;
    v22._object = 0x800000010014C570;
    v22._countAndFlagsBits = 0xD00000000000002BLL;
    v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v23.value._object = 0xEB00000000656C62;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v67._countAndFlagsBits = 0;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v67);
    v13 = v25._countAndFlagsBits;
    v14 = v25._object;

    v58 = 0;
    v26 = "OUNTS_V2_FAILED_DESCRIPTION";
    v27 = 0xD000000000000010;
    object = v20._object;
  }

  else
  {
    v26 = "AILED_NO_ACCOUNTS_DESCRIPTION";
    v27 = 0xD00000000000002DLL;
  }

  v42 = v14;
  v43 = v27;
  v28 = v26 | 0x8000000000000000;
  v59[0] = countAndFlagsBits;
  v59[1] = object;
  v59[2] = v13;
  v59[3] = v14;
  v59[4] = v27;
  v59[5] = v26 | 0x8000000000000000;
  v60 = 0;
  v61 = v44;
  v62 = 3;
  v29 = objc_allocWithZone(type metadata accessor for AuthenticateAccountsImageCardViewController());
  sub_10009E96C(v59, &aBlock);
  v30 = sub_10009E6CC(v59);
  v31 = [v1 mainBundle];
  v68._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v32._object = 0xEF454C5449545F4ELL;
  v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v33.value._object = 0xEB00000000656C62;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v68._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v68);

  v35 = swift_allocObject();
  *(v35 + 16) = v45;
  v36 = v45;
  v37 = String._bridgeToObjectiveC()();

  v51 = sub_1000E9080;
  v52 = v35;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_10001BE90;
  v50 = &unk_100194960;
  v38 = _Block_copy(&aBlock);
  v39 = [objc_opt_self() actionWithTitle:v37 style:0 handler:v38];

  _Block_release(v38);

  v40 = [v30 addAction:v39];

  aBlock = countAndFlagsBits;
  v48 = object;
  v49 = v13;
  v50 = v42;
  v51 = v43;
  v52 = v28;
  v53 = v58;
  *v54 = v57[0];
  *&v54[3] = *(v57 + 3);
  v55 = v44;
  v56 = 3;
  sub_10009E9D0(&aBlock);
  return v30;
}

id sub_1000E7168()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v33._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0xD000000000000037;
  v2._object = 0x800000010014C3D0;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v33);

  v6 = [v0 mainBundle];
  v34._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD00000000000003DLL;
  v7._object = 0x800000010014C410;
  v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v8.value._object = 0xEB00000000656C62;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v34);

  v29[0] = v5;
  v29[1] = v10;
  *&v30 = 0xD00000000000002DLL;
  *(&v30 + 1) = 0x800000010014C450;
  LOBYTE(v31) = 0;
  *(&v31 + 1) = [objc_opt_self() systemRedColor];
  v32 = 3;
  v28 = 3;
  v27[2] = v30;
  v27[3] = v31;
  v27[0] = v5;
  v27[1] = v10;
  v11 = objc_allocWithZone(type metadata accessor for AuthenticateAccountsImageCardViewController());
  sub_10009E96C(v29, aBlock);
  v12 = sub_10009E6CC(v27);
  v13 = [v0 mainBundle];
  v35._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000040;
  v14._object = 0x800000010014C480;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v35);

  v17 = swift_allocObject();
  *(v17 + 16) = v25;
  v18 = v12;
  v19 = v25;
  v20 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1000E87A4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001BE90;
  aBlock[3] = &unk_100194910;
  v21 = _Block_copy(aBlock);
  v22 = [objc_opt_self() actionWithTitle:v20 style:0 handler:v21];

  _Block_release(v21);

  v23 = [v18 addAction:v22];
  sub_10009E9D0(v29);

  return v18;
}

void sub_1000E74A4()
{
  v0 = sub_100005DCC(&qword_1001BA7B0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v25[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v1);
  v5 = &v25[-v4];
  sub_1000ACD58();
  URL.init(string:)();
  v6 = [objc_opt_self() defaultWorkspace];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  sub_10006B004(v5, v3);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v3, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(v9 + 8))(v3, v8);
  }

  sub_100004F48(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = 0;
  v14 = [v7 openSensitiveURL:v11 withOptions:isa error:&v26];

  if (v14)
  {
    v15 = v26;
LABEL_6:
    sub_10001259C(v5, &qword_1001BA7B0);
    return;
  }

  v16 = v26;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10001259C(v5, &qword_1001BA7B0);
  v17 = _convertErrorToNSError(_:)();
  if (qword_1001B9498 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000D298(v18, qword_1001BE2A0);
  v19 = v17;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "Open Settings failed {error: %@}", v22, 0xCu);
    sub_10001259C(v23, &unk_1001BBA60);
  }

  else
  {
  }
}

id sub_1000E786C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v32._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  v2._object = 0x800000010014C340;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v32);

  v6 = [v0 mainBundle];
  v33._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000031;
  v7._object = 0x800000010014C370;
  v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v8.value._object = 0xEB00000000656C62;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v33);

  v28[0] = v5;
  v28[1] = v10;
  *&v29 = 0xD000000000000011;
  *(&v29 + 1) = 0x800000010014C3B0;
  LOBYTE(v30) = 0;
  *(&v30 + 1) = [objc_opt_self() systemRedColor];
  v31 = 3;
  v27 = 3;
  v26[2] = v29;
  v26[3] = v30;
  v26[0] = v5;
  v26[1] = v10;
  v11 = objc_allocWithZone(type metadata accessor for AuthenticateAccountsImageCardViewController());
  sub_10009E96C(v28, aBlock);
  v12 = sub_10009E6CC(v26);
  v13 = [v0 mainBundle];
  v34._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v14._object = 0xEF454C5449545F4ELL;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v34);

  v17 = swift_allocObject();
  *(v17 + 16) = v24;
  v18 = v24;
  v19 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1000E8758;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001BE90;
  aBlock[3] = &unk_1001948C0;
  v20 = _Block_copy(aBlock);
  v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];

  _Block_release(v20);

  v22 = [v12 addAction:v21];
  sub_10009E9D0(v28);

  return v12;
}

uint64_t sub_1000E7C0C()
{
  v1 = v0;
  if ((*(*(v0 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_router) + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_dismissed) & 1) == 0)
  {
    if (qword_1001B9498 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000D298(v2, qword_1001BE2A0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Main disappeared without dismiss (device locked?)...dismissing UI", v5, 2u);
    }

    sub_1000ACD58();
  }

  sub_10007BAF4();
  *(v1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_remoteViewControllerProxy) = 0;
  result = swift_unknownObjectRelease();
  *(v1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_currentState) = 9;
  return result;
}

void sub_1000E7D50(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100075104();
    sub_1000670A4();
    Set.Iterator.init(_cocoa:)();
    v1 = v24;
    v2 = v25;
    v4 = v26;
    v3 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v6;
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

    v3 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v9 = v3;
  v10 = v5;
  v11 = v3;
  if (!v5)
  {
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= ((v4 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v10 = *(v2 + 8 * v11);
      ++v9;
      if (v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_21;
  }

LABEL_12:
  v12 = (v10 - 1) & v10;
  v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
  if (!v13)
  {
LABEL_19:
    sub_100024148();
    return;
  }

  while ([v13 events] != 16)
  {

    v3 = v11;
    v5 = v12;
    if ((v1 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    if (__CocoaSet.Iterator.next()())
    {
      sub_100075104();
      swift_dynamicCast();
      v13 = v23;
      v11 = v3;
      v12 = v5;
      if (v23)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  sub_100024148();

  if (qword_1001B9498 != -1)
  {
    goto LABEL_30;
  }

LABEL_21:
  v14 = type metadata accessor for Logger();
  sub_10000D298(v14, qword_1001BE2A0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Home button", v17, 2u);
  }

  v18 = OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_homeButtonPressedWhileLocked;
  if ((*(v22 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_homeButtonPressedWhileLocked) & 1) != 0 || !sub_10006D1F8())
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Ignoring first home button press to unlock", v21, 2u);
    }

    *(v22 + v18) = 1;
  }

  else
  {
    sub_1000ACD58();
  }
}

void sub_1000E80A0()
{
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_currentState))
  {
    if (qword_1001B9498 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000D298(v1, qword_1001BE2A0);
    v2 = v0;
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      sub_100005DCC(&qword_1001BE328);
      v6 = String.init<A>(reflecting:)();
      v8 = sub_10002065C(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Invalid state to show details. {currentState: %s}", v4, 0xCu);
      sub_1000083B0(v5);
    }

    else
    {
    }
  }

  else
  {
    sub_10007B2C0();
  }
}

void sub_1000E82C8()
{
  v1 = v0 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModel;
  *(v1 + 32) = 1;
  v2 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModelDidUpdate);
  v3 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v3;
  v9 = *(v1 + 48);
  v8[2] = *(v1 + 32);

  sub_1000E8AB8(v8, v7);
  v2(v8);
  sub_1000E8B14(v8);

  v4 = *(*(v0 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_interactor) + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_setupSession);
  if (v4)
  {
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 pairSetupTryPIN:v6];
  }
}

void sub_1000E83C4(unsigned __int8 a1)
{
  if (a1 == 4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = Strong;
    v4 = [objc_opt_self() mainBundle];
    v12._object = 0xE000000000000000;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v6._object = 0x800000010014CAC0;
    v6._countAndFlagsBits = 0xD000000000000012;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v12);

    v10 = String._bridgeToObjectiveC()();

    [v3 showActivityIndicatorWithStatus:v10];
  }

  else
  {
    v9 = sub_1000E4ED8(a1);
    *(v1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_currentState) = a1;
    v10 = v9;
    sub_1000ACC14(v9);
  }
}

uint64_t getEnumTagSinglePayload for AuthenticateAccountsState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthenticateAccountsState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000E86CC()
{
  result = qword_1001BE320;
  if (!qword_1001BE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE320);
  }

  return result;
}

uint64_t sub_1000E8720()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E878C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000E87AC(uint64_t a1, void *a2, _BYTE *a3)
{
  *&a3[OBJC_IVAR____TtC18SharingViewService39AuthenticateAccountsStartViewController_presenter + 8] = 0;
  v6 = swift_unknownObjectWeakInit();
  a3[OBJC_IVAR____TtC18SharingViewService39AuthenticateAccountsStartViewController_started] = 0;
  v7 = &a3[OBJC_IVAR____TtC18SharingViewService39AuthenticateAccountsStartViewController_viewModel];
  v8 = *(a1 + 112);
  *(v7 + 6) = *(a1 + 96);
  *(v7 + 7) = v8;
  *(v7 + 16) = *(a1 + 128);
  v9 = *(a1 + 48);
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 3) = v9;
  v10 = *(a1 + 80);
  *(v7 + 4) = *(a1 + 64);
  *(v7 + 5) = v10;
  v11 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v11;
  *(v6 + 8) = &off_100194850;
  swift_unknownObjectWeakAssign();
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  objc_allocWithZone(type metadata accessor for AuthenticateAccountsImageCardContentView());
  sub_1000E8A5C(a1, v26);
  sub_10009E9C8();
  v15 = sub_1000A42A4(v12, v13, v14);
  v25.receiver = a3;
  v25.super_class = type metadata accessor for AuthenticateAccountsStartViewController();
  v16 = objc_msgSendSuper2(&v25, "initWithContentView:", v15);
  v17 = *(a1 + 64);
  v18 = v16;
  [v18 setDismissalType:v17];
  v19 = String._bridgeToObjectiveC()();
  [v18 setTitle:v19];

  v20 = String._bridgeToObjectiveC()();
  [v18 setSubtitle:v20];

  v21 = *(a1 + 56);
  v22 = *&v15[OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageTintColor];
  *&v15[OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageTintColor] = v21;
  v23 = v21;

  [*&v15[OBJC_IVAR____TtC18SharingViewService40AuthenticateAccountsImageCardContentView_imageView] setTintColor:v23];
  sub_10009E318(a1);

  return v18;
}

uint64_t sub_1000E89A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E89D8()
{

  return _swift_deallocObject(v0, 160, 7);
}

id sub_1000E8B68(uint64_t a1, char *a2)
{
  *&a2[OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsAuthViewController_presenter + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_100194820;
  swift_unknownObjectWeakAssign();
  v4 = *(a1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModel + 8);
  v5 = *(a1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModel + 16);
  v6 = *(a1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModel + 24);
  v7 = *(a1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModel + 32);
  v8 = &a2[OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsAuthViewController_viewModel];
  v9 = *(a1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModel + 40);
  *v8 = *(a1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModel);
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  *(v8 + 3) = v6;
  v8[32] = v7;
  *(v8 + 40) = v9;
  v14.receiver = a2;
  v14.super_class = type metadata accessor for AuthenticateAccountsAuthViewController();

  v10 = objc_msgSendSuper2(&v14, "initWithContentView:", 0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = (a1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModelDidUpdate);
  *v12 = sub_1000E8C88;
  v12[1] = v11;

  return v10;
}

void sub_1000E8C90(int a1)
{
  v2 = OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_currentState;
  if (v1[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_currentState] == 2)
  {
    if ((a1 & 0x10000) != 0)
    {
      v3 = *&v1[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_interactor] + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_model;
      v4 = *(type metadata accessor for AuthenticateAccountsModel() + 36);
      v5 = *(v3 + v4);
      v6 = __CFADD__(v5, 1);
      v7 = v5 + 1;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        *(v3 + v4) = v7;
        v8 = &v1[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModel];
        v8[32] = 0;
        v9 = &v1[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModelDidUpdate];
        v10 = *&v1[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModelDidUpdate];
        v11 = *(v8 + 1);
        v42 = *v8;
        v45 = *(v8 + 6);
        v12 = *(v8 + 2);
        v43 = v11;
        v44 = v12;

        sub_1000E8AB8(&v42, v40);
        v10(&v42);
        sub_1000E8B14(&v42);

        v13 = [objc_opt_self() mainBundle];
        v46._object = 0xE000000000000000;
        v14._countAndFlagsBits = 0x434E495F48545541;
        v14._object = 0xEE0054434552524FLL;
        v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v15.value._object = 0xEB00000000656C62;
        v16._countAndFlagsBits = 0;
        v16._object = 0xE000000000000000;
        v46._countAndFlagsBits = 0;
        v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v46);

        *(v8 + 1) = v17;

        v18 = *v9;
        v19 = *(v8 + 1);
        v40[0] = *v8;
        v40[1] = v19;
        v40[2] = *(v8 + 2);
        v41 = *(v8 + 6);

        sub_1000E8AB8(v40, v39);
        v18(v40);
        sub_1000E8B14(v40);
      }
    }
  }

  else
  {
    v20 = objc_opt_self();
    v21 = [v20 mainBundle];
    v47._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0x49544E4548545541;
    v22._object = 0xEE004E4F49544143;
    v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v23.value._object = 0xEB00000000656C62;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v47);

    v26 = [v20 mainBundle];
    v48._object = 0xE000000000000000;
    v27._object = 0x800000010014CA60;
    v27._countAndFlagsBits = 0xD000000000000019;
    v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v28.value._object = 0xEB00000000656C62;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v48._countAndFlagsBits = 0;
    v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v48);

    v31 = &v1[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModel];
    *v31 = v25;
    *(v31 + 1) = v30;
    v31[32] = 0;
    *(v31 + 40) = xmmword_100170AE0;

    v32 = *&v1[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModelDidUpdate];
    v33 = *(v31 + 1);
    v42 = *v31;
    v34 = *(v31 + 2);
    v43 = v33;
    v44 = v34;
    v45 = *(v31 + 6);

    sub_1000E8AB8(&v42, v40);
    v35 = v1;
    v32(&v42);
    sub_1000E8B14(&v42);

    v36 = objc_allocWithZone(type metadata accessor for AuthenticateAccountsAuthViewController());
    v37 = v1;
    v38 = sub_1000E8B68(v37, v36);

    v35[v2] = 2;
    sub_1000ACC14(v38);
  }
}

void sub_1000E9084(double a1, double a2, double a3, double a4)
{
  v8 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_1000169FC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v8 drawInRect:isa withAttributes:{a1, a2, a3, a4}];
}

void sub_1000E9150(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

int64_t sub_1000E919C()
{
  v1 = v0;
  result = [v0 CGImage];
  if (result)
  {
    v3 = result;
    v4 = [v0 CGImage];
    if (!v4)
    {
      goto LABEL_36;
    }

    v5 = v4;
    Height = CGImageGetHeight(v4);
    Width = CGImageGetWidth(v5);
    result = CGImageGetBytesPerRow(v5);
    if ((result * Height) >> 64 != (result * Height) >> 63)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v8 = result;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v10 = swift_slowAlloc();
    BitsPerComponent = CGImageGetBitsPerComponent(v5);
    v12 = sub_1000E9A9C(v10, Width, Height, BitsPerComponent, v8, DeviceRGB);

    if (!v12)
    {
      goto LABEL_36;
    }

    v13 = CGImageGetHeight(v3);
    v14 = CGImageGetWidth(v3);
    v15 = v14;
    CGContextRef.draw(_:in:byTiling:)();
    v16 = CGImageGetDataProvider(v3);
    if (v16)
    {
      v17 = v16;
      v18 = CGDataProviderCopyData(v16);
      if (v18)
      {
        v19 = v18;
        result = CFDataGetBytePtr(v18);
        if (!result)
        {
LABEL_53:
          __break(1u);
          return result;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        if (v13)
        {
          if (v14 < 0)
          {
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = v13;
          v24 = v14;
          while (!v14)
          {
LABEL_12:
            if (++v22 == v13)
            {
              v15 = v24;
              v14 = v24;
              goto LABEL_40;
            }
          }

          v25 = v14 * v22;
          if ((v14 * v22) >> 64 == (v14 * v22) >> 63)
          {
            v26 = 0;
            while (1)
            {
              v27 = v25 + v26;
              if (__OFADD__(v25, v26))
              {
                break;
              }

              if ((v27 - 0x2000000000000000) >> 62 != 3)
              {
                goto LABEL_46;
              }

              v28 = *(result + 4 * v27);
              if (v26 >= v24)
              {
                v29 = v24;
              }

              else
              {
                v29 = v26;
              }

              if (v21 <= v26)
              {
                v30 = v26;
              }

              else
              {
                v30 = v21;
              }

              v31 = v26 + 1;
              if (v22 >= v23)
              {
                v32 = v23;
              }

              else
              {
                v32 = v22;
              }

              if (v20 <= v22)
              {
                v33 = v22;
              }

              else
              {
                v33 = v20;
              }

              if (v28)
              {
                v20 = v33;
                v21 = v30;
                v23 = v32;
                v24 = v29;
              }

              v26 = v31;
              if (v14 == v31)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
LABEL_46:
            __break(1u);
          }

          __break(1u);
          goto LABEL_48;
        }

        v20 = 0;
        v21 = 0;
        v23 = 0;
LABEL_40:
        v34 = __OFSUB__(v21, v14);
        v35 = v21 - v14;
        if (v34)
        {
          goto LABEL_50;
        }

        v34 = __OFSUB__(v20, v23);
        v36 = v20 - v23;
        if (v34)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v41.origin.y = v23;
        v41.size.width = v35;
        v41.size.height = v36;
        v41.origin.x = v15;
        v37 = CGImageCreateWithImageInRect(v3, v41);
        if (v37)
        {
          v38 = v37;
          [v1 scale];
          v40 = [objc_allocWithZone(UIImage) initWithCGImage:v38 scale:objc_msgSend(v1 orientation:{"imageOrientation"), v39}];

          return v40;
        }

        goto LABEL_36;
      }
    }

LABEL_36:
    return 0;
  }

  return result;
}

uint64_t sub_1000E94A4(uint64_t a1, uint64_t a2, double a3)
{
  v6 = a3 * 0.6;
  v7 = [objc_opt_self() systemFontOfSize:a3 * 0.6];
  v8 = a3 - v6;
  v9 = (a3 - v6) * 0.5;
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 userInterfaceLayoutDirection];

  if (v11 == 1)
  {
    v12 = -(v8 * 0.5);
  }

  else
  {
    v12 = v9;
  }

  sub_100005DCC(&qword_1001B9F48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016CCE0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_1000B6A3C();
  *(inited + 40) = v7;
  v14 = NSFontAttributeName;
  v15 = v7;
  v16 = sub_100004E20(inited);
  swift_setDeallocating();
  sub_1000E98E4(inited + 32);
  v17 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a3, a3}];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = v12;
  *(v18 + 40) = v9;
  *(v18 + 48) = a3;
  *(v18 + 56) = a3;
  *(v18 + 64) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1000E998C;
  *(v19 + 24) = v18;
  v34 = sub_1000E99B0;
  v35 = v19;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000E9150;
  v33 = &unk_100194AF0;
  v20 = _Block_copy(&aBlock);

  v21 = [v17 imageWithActions:v20];
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if ((v20 & 1) == 0)
  {
    v23 = sub_1000E919C();
    if (v23)
    {
      v29 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a3, a3}];
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = a3;
      *(v24 + 32) = a3;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_1000E9A28;
      *(v25 + 24) = v24;
      v34 = sub_1000E9AB0;
      v35 = v25;
      aBlock = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_1000E9150;
      v33 = &unk_100194B68;
      v26 = _Block_copy(&aBlock);
      v27 = v15;
      v28 = v23;

      v15 = v29;
      v23 = [v29 imageWithActions:v26];

      _Block_release(v26);
      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if ((v28 & 1) == 0)
      {
        return v23;
      }

      __break(1u);
    }

    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E98E4(uint64_t a1)
{
  v2 = sub_100005DCC(&qword_1001B9618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E994C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000E99D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E99F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1000E9A28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  [v1 size];
  v5 = v4;
  v6 = (v2 - v4) * 0.5;
  v8 = (v3 - v7) * 0.5;

  return [v1 drawInRect:{v6, v8, v5}];
}

id sub_1000E9C2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScannerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScannerViewController()
{
  result = qword_1001BE370;
  if (!qword_1001BE370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E9D54()
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

uint64_t sub_1000E9DEC()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BE380);
  v1 = sub_10000D298(v0, qword_1001BE380);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000E9EB4()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000BCF94();
    if (v4)
    {
      v5 = String._bridgeToObjectiveC()();
    }

    else
    {
      v5 = 0;
    }

    [v1 setTitle:v5];

    [v1 setDismissalType:1];
    *(v1 + OBJC_IVAR____TtC18SharingViewService25AirTagMovieViewController_shouldSkipEngageMovie) = 1;
    sub_1000974B4(39);
    v7 = String._bridgeToObjectiveC()();

    [v1 showActivityIndicatorWithStatus:v7];
  }

  else
  {
    if (qword_1001B94A0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000D298(v6, qword_1001BE380);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "mainController is nil during viewDidLoad", v9, 2u);
    }
  }
}

uint64_t sub_1000EA120()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BE3C0);
  v1 = sub_10000D298(v0, qword_1001BE3C0);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000EA1E8(char a1)
{
  v2 = v1;
  v54.receiver = v1;
  v54.super_class = type metadata accessor for AirTagErrorViewController();
  objc_msgSendSuper2(&v54, "viewWillAppear:", a1 & 1);
  if (!*&v1[OBJC_IVAR____TtC18SharingViewService25AirTagErrorViewController_errorTitle + 8])
  {
    sub_1000974B4(121);
  }

  v4 = String._bridgeToObjectiveC()();

  [v1 setTitle:v4];

  v5 = *&v1[OBJC_IVAR____TtC18SharingViewService25AirTagErrorViewController_message + 8];
  if (v5)
  {
    aBlock = *&v1[OBJC_IVAR____TtC18SharingViewService25AirTagErrorViewController_message];
    v49 = v5;

    if (IsAppleInternalBuild())
    {
      v6 = OBJC_IVAR____TtC18SharingViewService25AirTagErrorViewController_error;
      if (*&v1[OBJC_IVAR____TtC18SharingViewService25AirTagErrorViewController_error])
      {
        _StringGuts.grow(_:)(26);

        if (*&v1[v6])
        {
          swift_errorRetain();
          v7 = _convertErrorToNSError(_:)();
        }

        else
        {
          v7 = 0;
        }

        NSErrorToOSStatus();

        v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v8);

        v9._countAndFlagsBits = 41;
        v9._object = 0xE100000000000000;
        String.append(_:)(v9);
        v10._countAndFlagsBits = 0xD000000000000017;
        v10._object = 0x800000010014CC70;
        String.append(_:)(v10);
      }
    }

    v11 = String._bridgeToObjectiveC()();

    [v2 setSubtitle:v11];
  }

  [v2 setDismissalType:1];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v13 = String._bridgeToObjectiveC()();
  v52 = sub_1000EAED4;
  v53 = v12;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10001BE90;
  v51 = &unk_100194BD0;
  v14 = _Block_copy(&aBlock);
  v15 = [objc_opt_self() actionWithTitle:v13 style:0 handler:v14];

  _Block_release(v14);

  v16 = [objc_opt_self() configurationWithPointSize:4 weight:50.0];
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

  v19 = [objc_allocWithZone(UIImageView) initWithImage:v18];
  v20 = [objc_opt_self() systemRedColor];
  [v19 setTintColor:v20];

  v21 = v19;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setContentMode:1];
  v22 = [v2 contentView];
  [v22 addSubview:v21];

  if (v18)
  {
    [v18 size];
    v24 = v23;
    v26 = v25;
  }

  else
  {
    v24 = 0.0;
    v26 = 0.0;
  }

  v27 = [v2 contentView];
  v28 = [v27 mainContentGuide];

  v29 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10016CED0;
  v31 = [v21 centerXAnchor];
  v32 = [v28 centerXAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v30 + 32) = v33;
  v34 = [v21 centerYAnchor];
  v35 = [v28 centerYAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v30 + 40) = v36;
  v37 = [v21 heightAnchor];
  v38 = [v37 constraintEqualToConstant:v26];

  *(v30 + 48) = v38;
  v39 = [v21 widthAnchor];
  v40 = [v39 constraintEqualToConstant:v24];

  *(v30 + 56) = v40;
  v41 = [v21 topAnchor];
  v42 = [v28 topAnchor];
  v43 = [v41 constraintGreaterThanOrEqualToAnchor:v42];

  *(v30 + 64) = v43;
  v44 = [v21 bottomAnchor];

  v45 = [v28 bottomAnchor];
  v46 = [v44 constraintLessThanOrEqualToAnchor:v45];

  *(v30 + 72) = v46;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:isa];
}

void sub_1000EA950()
{
  v0 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  if (qword_1001B94A8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000D298(v3, qword_1001BE3C0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = 46;
    _os_log_impl(&_mh_execute_header, v4, v5, "errorVC Ok pressed in %ld", v6, 0xCu);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
      v12 = swift_allocObject();
      *(v12 + 16) = v8;
      v13 = v8;
      sub_1000C1744(5, v2, sub_1000EAF2C, v12, 53);

      sub_10000D310(v2);
      return;
    }
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "mainController nil while initializing primaryAction", v16, 2u);
  }
}

uint64_t sub_1000EABF0(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC18SharingViewService25AirTagErrorViewController_onDoneAction);
  if (v1)
  {
    v2 = *(result + OBJC_IVAR____TtC18SharingViewService25AirTagErrorViewController_onDoneAction + 8);

    v1(v3);

    return sub_100025EF4(v1, v2);
  }

  return result;
}

id sub_1000EACF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirTagErrorViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000EADE8(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC18SharingViewService25AirTagErrorViewController_onDoneAction];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC18SharingViewService25AirTagErrorViewController_message];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService25AirTagErrorViewController_error] = 0;
  v5 = &v1[OBJC_IVAR____TtC18SharingViewService25AirTagErrorViewController_errorTitle];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR____TtC18SharingViewService25AirTagErrorViewController_defaultBtnTitle];
  *v6 = sub_1000974B4(120);
  v6[1] = v7;
  swift_unknownObjectWeakInit();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AirTagErrorViewController();
  return objc_msgSendSuper2(&v9, "initWithContentView:", a1);
}

uint64_t sub_1000EAE9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000EAEDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000EAEF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000EAF34()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BE430);
  v1 = sub_10000D298(v0, qword_1001BE430);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000EAFFC()
{
  v59.receiver = v0;
  v59.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v59, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
    [v2 _setLocalOverrideTraitCollection:v3];

    v4 = objc_opt_self();
    v5 = [v4 mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    v8 = sub_1001279D0(v5, v6, v7);

    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    [v0 setTitle:v8];

    v9 = String._bridgeToObjectiveC()();
    v10 = sub_100126B8C(v9);

    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();
    }

    v11 = [v4 mainBundle];
    v12 = String._bridgeToObjectiveC()();
    v13 = sub_1001279D0(v11, v12, v10);

    if (!v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = String._bridgeToObjectiveC()();
    }

    [v0 setSubtitle:v13];

    [v0 setDismissalType:1];
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v15 = String._bridgeToObjectiveC()();
    v57 = sub_1000EBD6C;
    v58 = v14;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_10001BE90;
    v56 = &unk_100194C48;
    v16 = _Block_copy(&aBlock);
    v17 = objc_opt_self();
    v18 = [v17 actionWithTitle:v15 style:0 handler:v16];

    _Block_release(v16);

    [v0 setDismissButtonAction:v18];

    sub_1000974B4(120);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v20 = String._bridgeToObjectiveC()();

    v57 = sub_1000EBD8C;
    v58 = v19;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_10001BE90;
    v56 = &unk_100194C70;
    v21 = _Block_copy(&aBlock);
    v52 = [v17 actionWithTitle:v20 style:0 handler:v21];

    _Block_release(v21);

    v22 = [objc_opt_self() configurationWithPointSize:4 weight:50.0];
    v23 = String._bridgeToObjectiveC()();
    v51 = [objc_opt_self() systemImageNamed:v23 withConfiguration:v22];

    v24 = [objc_allocWithZone(UIImageView) initWithImage:v51];
    v25 = [objc_opt_self() systemRedColor];
    [v24 setTintColor:v25];

    v26 = v24;
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v0 contentView];
    [v27 addSubview:v26];

    v50 = objc_opt_self();
    sub_100005DCC(&qword_1001BBB00);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10016D4A0;
    v29 = [v26 topAnchor];
    v30 = [v0 contentView];
    v31 = [v30 mainContentGuide];

    v32 = [v31 topAnchor];
    v33 = [v29 constraintGreaterThanOrEqualToAnchor:v32];

    *(v28 + 32) = v33;
    v34 = [v26 centerXAnchor];
    v35 = [v0 contentView];
    v36 = [v35 mainContentGuide];

    v37 = [v36 centerXAnchor];
    v38 = [v34 constraintEqualToAnchor:v37];

    *(v28 + 40) = v38;
    v39 = [v26 centerYAnchor];
    v40 = [v0 contentView];
    v41 = [v40 mainContentGuide];

    v42 = [v41 centerYAnchor];
    v43 = [v39 constraintEqualToAnchor:v42];

    *(v28 + 48) = v43;
    v44 = [v26 bottomAnchor];

    v45 = [v0 contentView];
    v46 = [v45 mainContentGuide];

    v47 = [v46 bottomAnchor];
    v48 = [v44 constraintLessThanOrEqualToAnchor:v47];

    *(v28 + 56) = v48;
    sub_10000D1F4();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v50 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000EB8C4()
{
  if (qword_1001B94B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BE430);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12[0] = v4;
    *v3 = 136315138;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      __break(1u);
      return;
    }

    swift_getObjectType();

    v6 = _typeName(_:qualified:)();
    v8 = sub_10002065C(v6, v7, v12);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "dismissPressed in %s", v3, 0xCu);
    sub_1000083B0(v4);
  }

  else
  {
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = swift_unknownObjectWeakLoadStrong();

    if (v11)
    {
      [v11 dismiss:0];
    }
  }
}

void sub_1000EBAC0()
{
  if (qword_1001B94B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BE430);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = 40;
    _os_log_impl(&_mh_execute_header, v1, v2, "Ok button (RestrictedView) pressed in %ld", v3, 0xCu);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      [v6 dismiss:0];

      goto LABEL_11;
    }
  }

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "mainController nil while initializing primaryAction", v9, 2u);
  }

LABEL_11:
}

uint64_t sub_1000EBD34()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000EBD74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  LogControl();
  v5 = UIApplicationMain(a1, a2, 0, @"AppDelegate");
  objc_autoreleasePoolPop(v4);
  return v5;
}

void sub_1000EC848(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1001BE5E0 <= 90 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EC97C;
    block[3] = &unk_100195AC0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }

  else if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

id sub_1000EC97C(uint64_t a1)
{
  *(*(a1 + 32) + 49) = 0;
  [*(*(a1 + 32) + 41) setEnabled:1];
  v2 = *(*(a1 + 32) + 57);

  return [v2 setHidden:1];
}

Class sub_1000EC9E8()
{
  if (qword_1001C3798 != -1)
  {
    dispatch_once(&qword_1001C3798, &stru_100194C98);
  }

  result = objc_getClass("ASDSystemAppRequest");
  qword_1001C3790 = result;
  off_1001BE650 = sub_1000ECA4C;
  return result;
}

void sub_1000EE0C8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = v4;
  v9 = v4;
  if (dword_1001BE658 <= 30)
  {
    if (dword_1001BE658 != -1 || (v4 = _LogCategory_Initialize(), v5 = v9, v4))
    {
      v4 = LogPrintF();
      v5 = v9;
    }
  }

  if (v3)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 setObject:@"com.apple.siri.spoken-messages.opt-in.dismissed" forKeyedSubscript:@"signalIdentifier"];
    [v6 setObject:@"com.apple.Sharing" forKeyedSubscript:@"sourceBundleIdentifier"];
    v7 = [_CDContextualKeyPath keyPathWithKey:@"/discoverability/signals/dataDictionary"];
    v8 = +[_CDClientContext userContext];
    [v8 setObject:v6 forKeyedSubscript:v7];

    v5 = v9;
  }

  _objc_release_x1(v4, v5);
}

void sub_1000EE514(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1000EE570(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleContinueButton];
}

void sub_1000EE5B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDoNotAnnounceButton];
}

void sub_1000EE5F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDismissButton];
}

void sub_1000F0800(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 120) view];
  [v1 setHidden:1];
}

const char *sub_1000F0C00(int a1)
{
  if (a1 > 279)
  {
    if (a1 <= 709)
    {
      if (a1 <= 499)
      {
        if (a1 > 400)
        {
          if (a1 > 419)
          {
            switch(a1)
            {
              case 420:
                return "FileTransferReady";
              case 430:
                return "eSimExternal2FAStart";
              case 431:
                return "eSimExternal2FAStop";
            }
          }

          else
          {
            switch(a1)
            {
              case 401:
                return "PINPair";
              case 410:
                return "MigrateStart";
              case 411:
                return "MigrateStop";
            }
          }
        }

        else if (a1 > 299)
        {
          switch(a1)
          {
            case 300:
              return "BackupProgress";
            case 310:
              return "SyncProgress";
            case 400:
              return "StopSetup";
          }
        }

        else
        {
          switch(a1)
          {
            case 280:
              return "TVLCalFailed";
            case 281:
              return "TVLCalTryAgain";
            case 282:
              return "TVLCalFinal";
          }
        }
      }

      else if (a1 <= 554)
      {
        if (a1 > 529)
        {
          switch(a1)
          {
            case 530:
              return "SiriDialogBHome";
            case 540:
              return "SiriDialogBNews";
            case 550:
              return "SiriDialogBWeather";
          }
        }

        else
        {
          switch(a1)
          {
            case 500:
              return "SiriWelcome";
            case 510:
              return "SiriDialogA";
            case 520:
              return "SiriDialogBStart";
          }
        }
      }

      else if (a1 <= 569)
      {
        switch(a1)
        {
          case 555:
            return "SiriDialogBClock";
          case 558:
            return "SiriDialogBMusic";
          case 560:
            return "SiriDialogCMusic";
        }
      }

      else if (a1 > 599)
      {
        if (a1 == 600)
        {
          return "SiriSkipDemo";
        }

        if (a1 == 700)
        {
          return "StopSetupLEDs";
        }
      }

      else
      {
        if (a1 == 570)
        {
          return "SiriDialogCNews";
        }

        if (a1 == 580)
        {
          return "SiriDialogCWeather";
        }
      }

      return "?";
    }

    if (a1 <= 899)
    {
      if (a1 <= 802)
      {
        if (a1 == 710)
        {
          return "AudioPasscodeEnded";
        }

        if (a1 == 800)
        {
          return "AuthAccountsStart";
        }
      }

      else
      {
        switch(a1)
        {
          case 803:
            return "AuthAccountsiCloudProgress";
          case 804:
            return "AuthAccountsStoreProgress";
          case 805:
            return "AuthAccountsGameCenterProgress";
        }
      }

      return "?";
    }

    if (a1 > 999)
    {
      if (a1 <= 1099)
      {
        if (a1 == 1000)
        {
          return "SecureIntentStart";
        }

        if (a1 == 1001)
        {
          return "SecureIntentFinish";
        }
      }

      else
      {
        switch(a1)
        {
          case 1100:
            return "OneTimeCodeDetected";
          case 2000:
            return "DependentStart";
          case 2001:
            return "DependentEnd";
        }
      }

      return "?";
    }

    switch(a1)
    {
      case 900:
        result = "SU-No-SetupScanAttempt";
        break;
      case 901:
        result = "SU-No-SetupStatusUpdate";
        break;
      case 902:
        result = "SU-No-SetupWipeWifi";
        break;
      case 903:
        result = "SU-No-SetupCancelled";
        break;
      case 904:
        result = "SU-No-SetupObliterate";
        break;
      case 905:
        result = "SU-No-SetupCannotCancel";
        break;
      case 906:
        result = "SysDrop AirDrop Event";
        break;
      case 907:
        result = "SysDrop Sysdiagnose Event";
        break;
      case 908:
        result = "SysDrop Cancel Event";
        break;
      case 909:
        result = "File Transfer Progress Event";
        break;
      case 910:
        result = "File Transfer Completed Event";
        break;
      case 911:
        result = "iOSWiFiSetup";
        break;
      case 912:
        result = "HKPrimaryResidentSSIDFetchStart";
        break;
      case 913:
        result = "LoggingProfileTransfer";
        break;
      default:
        return "?";
    }
  }

  else
  {
    if (a1 > 121)
    {
      if (a1 <= 239)
      {
        if (a1 > 209)
        {
          if (a1 > 229)
          {
            switch(a1)
            {
              case 230:
                return "HomeKitStart";
              case 234:
                return "HomeKitSetupStart";
              case 236:
                return "CDPSetupStart";
            }
          }

          else
          {
            switch(a1)
            {
              case 210:
                return "ActivationStart";
              case 220:
                return "iCloudStart";
              case 224:
                return "AppleIDSetupStart";
            }
          }
        }

        else if (a1 > 139)
        {
          switch(a1)
          {
            case 140:
              return "RecognizeVoice";
            case 150:
              return "SiriForEveryone";
            case 200:
              return "WiFiStart";
          }
        }

        else
        {
          switch(a1)
          {
            case 122:
              return "CheckingAppleMusic";
            case 124:
              return "CheckingAccount";
            case 130:
              return "WiFiPoweredOff";
          }
        }
      }

      else if (a1 <= 269)
      {
        if (a1 > 249)
        {
          switch(a1)
          {
            case 250:
              return "ReportSuccess";
            case 260:
              return "TVLSStart";
            case 264:
              return "TVLSFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 240:
              return "BuddyStarting";
            case 241:
              return "BuddyProgress";
            case 242:
              return "BuddyFinished";
          }
        }
      }

      else
      {
        if (a1 > 275)
        {
          if (a1 > 277)
          {
            if (a1 == 278)
            {
              return "TVLCalStart";
            }

            else
            {
              return "TVLCalStep";
            }
          }

          else if (a1 == 276)
          {
            return "TVLSTryAgain";
          }

          else
          {
            return "TVLSToneBegan";
          }
        }

        switch(a1)
        {
          case 270:
            return "TVLSEstimateStart";
          case 272:
            return "TVLSEstimateFinal";
          case 274:
            return "TVLSEstimateFailed";
        }
      }

      return "?";
    }

    if (a1 > 69)
    {
      if (a1 <= 95)
      {
        if (a1 > 91)
        {
          switch(a1)
          {
            case '\\':
              return "StepStart";
            case '^':
              return "StepFinish";
            case '_':
              return "PreFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 'F':
              return "SecurityFinish";
            case 'P':
              return "BasicConfigStart";
            case 'Z':
              return "BasicConfigFinish";
          }
        }

        return "?";
      }

      if (a1 > 98)
      {
        switch(a1)
        {
          case 'c':
            return "SetupPeerSWUpdate";
          case 'd':
            return "Finished";
          case 'x':
            return "CheckingiCloud";
        }

        return "?";
      }

      if (a1 == 96)
      {
        return "SetupFinished";
      }

      else if (a1 == 97)
      {
        return "SetupResumed";
      }

      else
      {
        return "SetupSuspend";
      }
    }

    else
    {
      if (a1 > 32)
      {
        if (a1 > 49)
        {
          switch(a1)
          {
            case '2':
              return "PreAuthFinish";
            case '<':
              return "SecurityStart";
            case 'A':
              return "SecurityAPCLoopStart";
          }
        }

        else
        {
          switch(a1)
          {
            case '!':
              return "SessionSecured";
            case '#':
              return "ConnectStart";
            case '(':
              return "PreAuthStart";
          }
        }

        return "?";
      }

      if (a1 <= 29)
      {
        switch(a1)
        {
          case 0:
            return "Invalid";
          case 10:
            return "Start";
          case 20:
            return "Final";
        }

        return "?";
      }

      if (a1 == 30)
      {
        return "Error";
      }

      else if (a1 == 31)
      {
        return "SessionStarted";
      }

      else
      {
        return "SessionEnded";
      }
    }
  }

  return result;
}