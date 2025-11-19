id sub_100037E68(id *a1)
{
  v1 = [*a1 options];
  v2 = [v1 _openAsDownload];

  return v2;
}

void *sub_100037EC8(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_100049DBC(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_10004858C(v5, v6);
LABEL_10:

  return sub_100049FF4(a1, v2);
}

uint64_t sub_100037FBC(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43 = type metadata accessor for URL();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v43);
  v42 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v47[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_100005D28(0xD00000000000001CLL, 0x8000000100075A60, v47);
    *(v13 + 12) = 2048;
    v15 = a1 & 0xC000000000000001;
    v40 = v3;
    v41 = v7;
    v39[1] = v14;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *(a1 + 16);
    }

    *(v13 + 14) = v16;

    *(v13 + 22) = 2080;
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    v21 = Set.description.getter();
    v23 = sub_100005D28(v21, v22, v47);

    *(v13 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: Calling openInputURL: for %ld urlContexts: %s", v13, 0x20u);
    swift_arrayDestroy();

    (*(v41 + 8))(v10, v6);
    v3 = v40;
    if (!v15)
    {
      goto LABEL_8;
    }

LABEL_5:
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v47[0];
    v18 = v47[1];
    v19 = v47[2];
    v15 = v47[3];
    v20 = v47[4];
    goto LABEL_12;
  }

  (*(v7 + 8))(v10, v6);
  v15 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_5;
  }

LABEL_8:
  v24 = -1 << *(a1 + 32);
  v18 = a1 + 56;
  v19 = ~v24;
  v25 = -v24;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v20 = v26 & *(a1 + 56);

LABEL_12:
  v41 = v19;
  v27 = (v19 + 64) >> 6;
  v28 = (v3 + 8);
  if (a1 < 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v29 = v15;
    v30 = v20;
    v31 = v15;
    if (!v20)
    {
      break;
    }

LABEL_17:
    v32 = (v30 - 1) & v30;
    v33 = *(*(a1 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
    if (!v33)
    {
      return sub_100052240();
    }

    while (1)
    {
      v35 = [v33 URL];
      v36 = v42;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for DeepLinkNavigator();
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v37 + 32) = 0;
      swift_unknownObjectWeakInit();
      v38 = *(v44 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
      swift_unknownObjectWeakAssign();
      *(v37 + 32) = &off_10008E4D8;
      swift_unknownObjectWeakAssign();
      sub_100069794(v36, v33);

      result = (*v28)(v36, v43);
      v15 = v31;
      v20 = v32;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      v34 = __CocoaSet.Iterator.next()();
      if (v34)
      {
        v45 = v34;
        sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
        swift_dynamicCast();
        v33 = v46;
        v31 = v15;
        v32 = v20;
        if (v46)
        {
          continue;
        }
      }

      return sub_100052240();
    }
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v27)
    {
      return sub_100052240();
    }

    v30 = *(v18 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003853C(uint64_t a1, void *a2)
{
  v71 = a2;
  v63 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v63 - 8);
  v3 = *(v62 + 64);
  __chkstk_darwin(v63);
  v60 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  v5 = *(v59 + 64);
  __chkstk_darwin(v61);
  v58 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for URL();
  v7 = *(v68 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v68);
  v67 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v72 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075A80, aBlock);
    *(v18 + 12) = 2048;
    v20 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *(a1 + 16);
    }

    *(v18 + 14) = v21;

    _os_log_impl(&_mh_execute_header, v15, v16, "%s: starting to import (%ld) items directly to Downloads folder.", v18, 0x16u);
    sub_100034948(v19);

    (*(v11 + 8))(v14, v10);
    if (!v20)
    {
      goto LABEL_8;
    }

LABEL_5:
    v66 = __CocoaSet.count.getter();
    goto LABEL_9;
  }

  (*(v11 + 8))(v14, v10);
  v20 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_5;
  }

LABEL_8:
  v66 = *(v72 + 16);
LABEL_9:
  v69 = dispatch_group_create();
  v70 = swift_allocObject();
  *(v70 + 16) = &_swiftEmptyArrayStorage;
  if (v20)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    result = Set.Iterator.init(_cocoa:)();
    v24 = aBlock[6];
    v23 = aBlock[7];
    v25 = aBlock[8];
    v26 = aBlock[9];
    v27 = aBlock[10];
  }

  else
  {
    v24 = v72;
    v28 = -1 << *(v72 + 32);
    v23 = v72 + 56;
    v25 = ~v28;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v27 = v30 & *(v72 + 56);

    v26 = 0;
  }

  v57[1] = v25;
  v31 = (v25 + 64) >> 6;
  v64 = (v7 + 8);
  v65 = v31;
  if (v24 < 0)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v32 = v26;
    v33 = v27;
    v34 = v26;
    if (!v27)
    {
      break;
    }

LABEL_20:
    v35 = (v33 - 1) & v33;
    v36 = *(*(v24 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));
    if (!v36)
    {
LABEL_26:
      sub_100052240();
      sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
      v48 = static OS_dispatch_queue.main.getter();
      v49 = swift_allocObject();
      v50 = v71;
      *(v49 + 16) = v70;
      *(v49 + 24) = v50;
      aBlock[4] = sub_100052288;
      aBlock[5] = v49;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002DB0;
      aBlock[3] = &unk_10008EC68;
      v51 = _Block_copy(aBlock);
      v52 = v50;

      v53 = v58;
      static DispatchQoS.unspecified.getter();
      v73 = &_swiftEmptyArrayStorage;
      sub_10004DC20(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_100002D44(&qword_100093420, &unk_100093A80, &qword_1000736E0);
      v54 = v60;
      v55 = v63;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v56 = v69;
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v51);

      (*(v62 + 8))(v54, v55);
      (*(v59 + 8))(v53, v61);
    }

    while (1)
    {
      LODWORD(v72) = v66 == 1;
      v38 = v69;
      dispatch_group_enter(v69);
      v39 = [v36 URL];
      v40 = v23;
      v41 = v67;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = v24;
      v43 = v71;
      v44 = v36;
      v27 = v35;
      v45 = v70;

      v46 = v38;
      sub_10004DC68(v41, v43, v72, v43, v44, v45, v46);

      v24 = v42;

      v47 = v41;
      v23 = v40;
      v31 = v65;
      result = (*v64)(v47, v68);
      v26 = v34;
      if ((v42 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_22:
      v37 = __CocoaSet.Iterator.next()();
      if (v37)
      {
        v73 = v37;
        sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
        swift_dynamicCast();
        v36 = aBlock[0];
        v34 = v26;
        v35 = v27;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
      goto LABEL_26;
    }

    v33 = *(v23 + 8 * v34);
    ++v32;
    if (v33)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100038DC4(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    static Logger.Application.getter();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075A80, &v26);
      *(v14 + 12) = 2048;
      swift_beginAccess();
      *(v14 + 14) = *(*(a1 + 16) + 16);

      _os_log_impl(&_mh_execute_header, v12, v13, "%s: imported %ld urls. Revealing with selection.", v14, 0x16u);
      sub_100034948(v15);
    }

    else
    {
    }

    result = (*(v5 + 8))(v11, v4);
    v21 = *&a2[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
    if (v21)
    {

      v22 = a2;
      v23 = v21;
      sub_10005ED10(1, v23, v22, 2, a1);
    }
  }

  else
  {
    static Logger.Application.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075A80, &v25);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: imported 0 urls. Nothing to do.", v18, 0xCu);
      sub_100034948(v19);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_100039130(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (v3)
  {
    v6 = result;
    v7 = swift_allocObject();
    v7[2] = a2;
    v7[3] = a3;
    v7[4] = v6;
    v8 = v3;

    v9 = v6;
    DOCTabbedBrowserViewController.performGoToNamedLocation(_:completion:)();
  }

  return result;
}

uint64_t sub_1000391FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  swift_retain_n();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23[1] = a4;
    v15 = v14;
    v24[0] = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075A80, v24);
    *(v15 + 12) = 2080;
    v23[2] = a2;
    type metadata accessor for DOCNamedLocation(0);
    v16 = String.init<A>(describing:)();
    v18 = sub_100005D28(v16, v17, v24);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2048;
    swift_beginAccess();
    v19 = *(*(a3 + 16) + 16);

    *(v15 + 24) = v19;

    _os_log_impl(&_mh_execute_header, v12, v13, "%s: revealed %s. Selecting %ld items.", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v8 + 8))(v11, v7);
  swift_beginAccess();
  v20 = *(a3 + 16);

  sub_10003BDC8(v21);
}

void sub_100039484(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = os_log_type_enabled(v10, v11);
  v28 = v9;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v27 = v2;
    v14 = v13;
    v29 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100005D28(0xD000000000000015, 0x8000000100075950, &v29);
    *(v14 + 12) = 2080;
    v15 = v9;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v4;
    v18 = v17;
    v20 = v19;

    v21 = sub_100005D28(v18, v20, &v29);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s shortcutItem: %s", v14, 0x16u);
    swift_arrayDestroy();

    v2 = v27;

    (*(v5 + 8))(v8, v26);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v22 = *&v2[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
  if (v22)
  {
    v23 = v28;
    v24 = v2;
    v25 = v22;
    sub_10005E6EC(1, 0, 0, v25, v24, v23);
  }
}

void sub_10003971C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController;
  v5 = *(a1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (v5)
  {
    v6 = [v5 effectiveFullBrowser];
    [v6 dismissSearch];

    v7 = *(a1 + v4);
    if (v7)
    {
      v8 = [v7 effectiveFullBrowser];
      [v8 setEditing:0 animated:0];
    }
  }

  sub_1000397D4(a2, a1);
}

void sub_1000397D4(void *a1, uint64_t a2)
{
  v58 = a2;
  v59 = type metadata accessor for Logger();
  v3 = *(v59 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v59);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v57 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v57 - v12;
  __chkstk_darwin(v11);
  v15 = &v57 - v14;
  v16 = [a1 type];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = v17 == 0xD000000000000026 && 0x8000000100075970 == v19;
  if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static Logger.Application.getter();
    v21 = a1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v60 = v26;
      *v24 = 136315394;
      *(v24 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075A00, &v60);
      *(v24 + 12) = 2112;
      *(v24 + 14) = v21;
      *v25 = v21;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s scan document %@", v24, 0x16u);
      sub_100005A04(v25, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v26);
    }

    (*(v3 + 8))(v15, v59);
    v28 = *(v58 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    if (v28)
    {
      v29 = v28;
      sub_10005D364(1, 0, 0, v29, v29);
LABEL_10:
    }
  }

  else
  {
    if (v17 == 0xD000000000000020 && 0x80000001000759A0 == v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      static Logger.Application.getter();
      v30 = a1;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v60 = v35;
        *v33 = 136315394;
        *(v33 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075A00, &v60);
        *(v33 + 12) = 2112;
        *(v33 + 14) = v30;
        *v34 = v30;
        v36 = v30;
        _os_log_impl(&_mh_execute_header, v31, v32, "%s search %@", v33, 0x16u);
        sub_100005A04(v34, &qword_1000937D0, &unk_1000743F0);

        sub_100034948(v35);
      }

      (*(v3 + 8))(v13, v59);
      v37 = *(v58 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
      if (v37)
      {
        v38 = [v37 effectiveFullBrowser];
        DOCFullDocumentManagerViewController.search(forQuery:completion:)();
      }

      return;
    }

    if (v17 == 0xD000000000000020 && 0x80000001000759D0 == v19)
    {
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v39 & 1) == 0)
      {
        static Logger.Application.getter();
        v50 = a1;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v60 = v55;
          *v53 = 136315394;
          *(v53 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075A00, &v60);
          *(v53 + 12) = 2112;
          *(v53 + 14) = v50;
          *v54 = v50;
          v56 = v50;
          _os_log_impl(&_mh_execute_header, v51, v52, "%s Encountered unknown shortcut item type: %@", v53, 0x16u);
          sub_100005A04(v54, &qword_1000937D0, &unk_1000743F0);

          sub_100034948(v55);
        }

        (*(v3 + 8))(v7, v59);
        return;
      }
    }

    static Logger.Application.getter();
    v40 = a1;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v60 = v45;
      *v43 = 136315394;
      *(v43 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075A00, &v60);
      *(v43 + 12) = 2112;
      *(v43 + 14) = v40;
      *v44 = v40;
      v46 = v40;
      _os_log_impl(&_mh_execute_header, v41, v42, "%s domain %@", v43, 0x16u);
      sub_100005A04(v44, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v45);
    }

    (*(v3 + 8))(v10, v59);
    v47 = [v40 userInfo];
    if (v47)
    {
      v48 = v47;
      sub_10000DB4C(&qword_100093C08, &qword_100074460);
      v49 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = sub_10003A004(v49);

      if (v29)
      {
        sub_1000419F8(v29, 0, 0);
        goto LABEL_10;
      }
    }
  }
}

void *sub_10003A004(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - v10;
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = DOCUserActivityLocationKey.getter();
  if (!*(a1 + 16))
  {

LABEL_6:
    static Logger.Application.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100005D28(0xD000000000000014, 0x8000000100075A20, v42);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s Location data not found in user info", v24, 0xCu);
      sub_100034948(v25);
    }

    (*(v3 + 8))(v8, v2);
    return 0;
  }

  v16 = sub_100009C94(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_6;
  }

  v43 = *(*(a1 + 56) + 8 * v16);
  swift_unknownObjectRetain();
  sub_10000DB4C(&qword_100093C08, &qword_100074460);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v41 = v2;
  v20 = v42[0];
  v19 = v42[1];
  sub_100002B84(0, &qword_100093C10, NSKeyedUnarchiver_ptr);
  sub_10000DB4C(&qword_100093C18, &qword_100074468);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100073FE0;
  *(v21 + 32) = sub_100002B84(0, &qword_100093BD8, DOCConcreteLocation_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (!v42[3])
  {
    sub_100005A04(v42, &qword_100093498, &qword_100074430);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v35 = v41;
    static Logger.Application.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_100005D28(0xD000000000000014, 0x8000000100075A20, v42);
      _os_log_impl(&_mh_execute_header, v36, v37, "%s Could not unarchive location", v38, 0xCu);
      sub_100034948(v39);
    }

    sub_10000A0F8(v20, v19);

    (*(v3 + 8))(v11, v35);
    return 0;
  }

  v27 = v43;
  static Logger.Application.getter();
  v40 = v27;
  v28 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v42[0] = v33;
    *v31 = 136315394;
    *(v31 + 4) = sub_100005D28(0xD000000000000014, 0x8000000100075A20, v42);
    *(v31 + 12) = 2112;
    *(v31 + 14) = v28;
    *v32 = v40;
    v34 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s Success! Unarchived location: %@. Restoring to it now.", v31, 0x16u);
    sub_100005A04(v32, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v33);
  }

  sub_10000A0F8(v20, v19);

  (*(v3 + 8))(v13, v41);
  return v40;
}

uint64_t sub_10003A72C(uint64_t a1, void *a2, int a3, int a4, unsigned int a5)
{
  v84 = a5;
  v89 = a4;
  v90 = a3;
  v87 = a2;
  v6 = type metadata accessor for Logger();
  v92 = *(v6 - 8);
  v93 = v6;
  v7 = *(v92 + 64);
  v8 = __chkstk_darwin(v6);
  v91 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v83 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v83 - v17;
  __chkstk_darwin(v16);
  v88 = &v83 - v19;
  v20 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v83 = &v83 - v22;
  v23 = sub_10000DB4C(&qword_100093BF0, &qword_100074440);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v83 - v25;
  v27 = type metadata accessor for UTType();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    v38 = v91;
    static Logger.Application.getter();
    (*(v12 + 16))(v15, a1, v11);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v41 = 136315394;
      *(v41 + 4) = sub_100005D28(0xD000000000000056, 0x80000001000758F0, &aBlock);
      *(v41 + 12) = 2080;
      sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v12 + 8))(v15, v11);
      v45 = sub_100005D28(v42, v44, &aBlock);

      *(v41 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s: aborting attempt to open a non-file URL: %s", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    (*(v92 + 8))(v38, v93);
    return 0;
  }

  v86 = a1;
  v91 = v11;
  v32 = *&v94[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
  if (!v32)
  {
    v47 = v85;
    static Logger.Application.getter();
    v48 = v12;
    v49 = v91;
    (*(v12 + 16))(v18, v86, v91);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v52 = 136315394;
      *(v52 + 4) = sub_100005D28(0xD000000000000056, 0x80000001000758F0, &aBlock);
      *(v52 + 12) = 2080;
      sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL);
      v53 = v47;
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (*(v48 + 8))(v18, v49);
      v57 = sub_100005D28(v54, v56, &aBlock);

      *(v52 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "%s: could not reveal, invalid scene. URL: %s", v52, 0x16u);
      swift_arrayDestroy();

      (*(v92 + 8))(v53, v93);
    }

    else
    {

      (*(v12 + 8))(v18, v49);
      (*(v92 + 8))(v47, v93);
    }

    return 0;
  }

  v33 = v32;
  v34 = v86;
  LODWORD(v93) = URL.startAccessingSecurityScopedResource()();
  URL.promisedContentType.getter();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_100005A04(v26, &qword_100093BF0, &qword_100074440);
    LODWORD(v92) = 0;
    v36 = 1;
    v37 = v87;
    if (!v87)
    {
      goto LABEL_19;
    }

LABEL_14:
    v59 = [v37 sourceApplication];
    if (v59)
    {
      v60 = v59;
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      aBlock = v61;
      v96 = v63;
      __chkstk_darwin(v64);
      *(&v83 - 2) = &aBlock;
      v65 = sub_10000AF3C(sub_1000062A0, (&v83 - 4), &off_1000898E0);
      swift_arrayDestroy();

      if (v36 & v65)
      {
        v66 = [objc_opt_self() quickLookInSeparateProcess];
        v67 = v83;
        v34 = v86;
        v68 = v91;
        (*(v12 + 16))(v83, v86, v91);
        (*(v12 + 56))(v67, 0, 1, v68);
        sub_100056B0C(v67, 0, v66, 0, 0);
        sub_100005A04(v67, &qword_100093F50, &qword_100074090);
        LOBYTE(v36) = 0;
      }

      else
      {
        v35 = v65 ^ 1u;
        LOBYTE(v36) = v36 & (v65 ^ 1);
        v34 = v86;
      }
    }

    goto LABEL_19;
  }

  (*(v28 + 32))(v31, v26, v27);
  v58 = UTType.isFolderUTI.getter();
  (*(v28 + 8))(v31, v27);
  v36 = v58 ^ 1;
  v35 = v58 & v84;
  LODWORD(v92) = v58 & v84;
  v37 = v87;
  if (v87)
  {
    goto LABEL_14;
  }

LABEL_19:
  URL._bridgeToObjectiveC()(v35);
  v70 = v69;
  v71 = v12;
  v72 = *(v12 + 16);
  v73 = v88;
  v74 = v34;
  v75 = v91;
  v72(v88, v74, v91);
  v76 = (*(v71 + 80) + 40) & ~*(v71 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = v33;
  v78 = v89 & 1;
  *(v77 + 24) = v78 & v36;
  *(v77 + 25) = v90 & 1;
  v79 = v94;
  *(v77 + 32) = v94;
  (*(v71 + 32))(v77 + v76, v73, v75);
  v99 = sub_1000521B0;
  v100 = v77;
  aBlock = _NSConcreteStackBlock;
  v96 = 1107296256;
  v97 = sub_1000526E0;
  v98 = &unk_10008EBF0;
  v80 = _Block_copy(&aBlock);
  v81 = v33;
  v82 = v79;

  [v81 revealDocumentAtURL:v70 importIfNeeded:0 openDocument:v78 revealContents:v92 & 1 updateLastUsedDate:1 completion:v80];
  _Block_release(v80);

  if (v93)
  {
    URL.stopAccessingSecurityScopedResource()();
  }

  return 1;
}

void sub_10003B160(uint64_t a1, uint64_t a2, void *a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v74 = a7;
  v77 = a6;
  v70 = a4;
  v71 = a3;
  v82 = a1;
  v73 = type metadata accessor for URLResourceValues();
  v72 = *(v73 - 8);
  v9 = *(v72 + 64);
  __chkstk_darwin(v73);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v68 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v66 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v79 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v66 - v23;
  v25 = type metadata accessor for Logger();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v69 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v81 = &v66 - v31;
  __chkstk_darwin(v30);
  v33 = &v66 - v32;
  if (a2)
  {
    v75 = a5;
    v76 = v11;
    v78 = v24;
    swift_errorRetain();
    static Logger.Application.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v67 = v19;
      v37 = v36;
      v38 = swift_slowAlloc();
      v80 = v25;
      v66 = v38;
      v83 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_100005D28(0xD000000000000056, 0x80000001000758F0, &v83);
      *(v37 + 12) = 2080;
      swift_getErrorValue();
      v39 = Error.localizedDescription.getter();
      v41 = v18;
      v42 = v26;
      v43 = sub_100005D28(v39, v40, &v83);

      *(v37 + 14) = v43;
      v26 = v42;
      v18 = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s: failed to reveal the item. Error: %s", v37, 0x16u);
      swift_arrayDestroy();
      v25 = v80;

      v19 = v67;
    }

    else
    {
    }

    (*(v26 + 8))(v33, v25);
    v24 = v78;
    v11 = v76;
    LOBYTE(a5) = v75;
  }

  sub_100034850(v82, v17, &qword_100093F50, &qword_100074090);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100005A04(v17, &qword_100093F50, &qword_100074090);
    if (a5)
    {
      v44 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController;
      v45 = v77;
      v46 = *(v77 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController);
      if (v46)
      {
        goto LABEL_26;
      }

      v47 = v69;
      static Logger.Application.getter();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = v25;
        v51 = swift_slowAlloc();
        v52 = v26;
        v53 = swift_slowAlloc();
        v83 = v53;
        *v51 = 136315138;
        *(v51 + 4) = sub_100005D28(0xD000000000000056, 0x80000001000758F0, &v83);
        _os_log_impl(&_mh_execute_header, v48, v49, "%s: fileImportController was nil, creating a new one.", v51, 0xCu);
        sub_100034948(v53);

        (*(v52 + 8))(v47, v50);
      }

      else
      {

        (*(v26 + 8))(v47, v25);
      }

      v62 = [objc_allocWithZone(type metadata accessor for DOCImportFileController()) init];
      v63 = *(v45 + v44);
      *(v45 + v44) = v62;
      v64 = v62;

      if (v64)
      {
        *&v64[OBJC_IVAR____TtC5Files23DOCImportFileController_delegate + 8] = &off_10008E4F8;
        swift_unknownObjectWeakAssign();
      }

      v46 = *(v45 + v44);
      if (v46)
      {
LABEL_26:
        v65 = v46;
        sub_10006E500(v74);
      }

      else
      {
        __break(1u);
      }
    }

    return;
  }

  v82 = v26;
  v80 = v25;
  (*(v19 + 32))(v24, v17, v18);
  v54 = URL.startAccessingSecurityScopedResource()();
  sub_10000DB4C(&qword_100093BF8, &qword_100074448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000736D0;
  *(inited + 32) = NSURLIsDirectoryKey;
  *(inited + 40) = NSURLIsPackageKey;
  v56 = NSURLIsDirectoryKey;
  v57 = NSURLIsPackageKey;
  sub_1000503F4(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  URL.promisedItemResourceValues(forKeys:)();

  v58 = URLResourceValues.isDirectory.getter();
  v59 = URLResourceValues.isPackage.getter();
  if (v59 == 2)
  {
    if ((v58 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v58 & 1) == 0 || (v59)
  {
LABEL_18:
    if (v70)
    {
      v60 = [objc_opt_self() quickLookInSeparateProcess];
      v61 = v68;
      (*(v19 + 16))(v68, v24, v18);
      (*(v19 + 56))(v61, 0, 1, v18);
      sub_100056B0C(v61, 0, v60, 0, 0);
      sub_100005A04(v61, &qword_100093F50, &qword_100074090);
    }

    goto LABEL_20;
  }

  sub_100052AB0(1, v71);
LABEL_20:
  (*(v72 + 8))(v11, v73);
  if (v54)
  {
    URL.stopAccessingSecurityScopedResource()();
  }

  (*(v19 + 8))(v24, v18);
}

uint64_t sub_10003BC74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_100005A04(v9, &qword_100093F50, &qword_100074090);
}

uint64_t sub_10003BDC8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  __chkstk_darwin(v2);
  v59 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v40 = *(v57 - 8);
  v5 = *(v40 + 64);
  __chkstk_darwin(v57);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v56 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = &_swiftEmptyArrayStorage;
  v58 = dispatch_group_create();
  v62 = *(a1 + 16);
  if (v62)
  {
    v54 = sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
    v17 = *(v9 + 80);
    v18 = v13;
    v19 = a1 + ((v17 + 32) & ~v17);
    v52 = (v18 + 104);
    v51 = *(v9 + 72);
    v50 = (v18 + 8);
    v49 = (v9 + 16);
    v48 = enum case for DispatchQoS.QoSClass.userInitiated(_:);
    v53 = v17;
    v47 = (v17 + 24) & ~v17;
    v46 = (v10 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v9 + 32);
    v44 = &v66;
    v43 = (v41 + 8);
    v42 = (v40 + 8);
    v55 = v12;
    do
    {
      v20 = v58;
      dispatch_group_enter(v58);
      v21 = v56;
      (*v52)(v56, v48, v12);
      v60 = static OS_dispatch_queue.global(qos:)();
      (*v50)(v21, v12);
      v22 = *v49;
      v61 = v19;
      v22(v11, v19, v8);
      v23 = v46;
      v24 = swift_allocObject();
      *(v24 + 16) = v20;
      (*v45)(v24 + v47, v11, v8);
      *(v24 + v23) = v16;
      v68 = sub_100052190;
      v69 = v24;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_100002DB0;
      v67 = &unk_10008EB28;
      v25 = _Block_copy(&aBlock);
      v26 = v20;

      static DispatchQoS.unspecified.getter();
      v63 = &_swiftEmptyArrayStorage;
      sub_10004DC20(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_100002D44(&qword_100093420, &unk_100093A80, &qword_1000736E0);
      v27 = v59;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v28 = v60;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v29 = v25;
      v12 = v55;
      _Block_release(v29);

      v30 = v57;
      (*v43)(v27, v2);
      (*v42)(v7, v30);

      v19 = v61 + v51;
      --v62;
    }

    while (v62);
  }

  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v31 = static OS_dispatch_queue.main.getter();
  v32 = swift_allocObject();
  v33 = v39;
  *(v32 + 16) = v16;
  *(v32 + 24) = v33;
  v68 = sub_1000521A8;
  v69 = v32;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_100002DB0;
  v67 = &unk_10008EB78;
  v34 = _Block_copy(&aBlock);

  v35 = v33;
  static DispatchQoS.unspecified.getter();
  v63 = &_swiftEmptyArrayStorage;
  sub_10004DC20(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_100002D44(&qword_100093420, &unk_100093A80, &qword_1000736E0);
  v36 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v37 = v58;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v34);

  (*(v41 + 8))(v36, v2);
  (*(v40 + 8))(v7, v57);
}

void sub_10003C5B8(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  __chkstk_darwin(v9);
  v34 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v31 - v14;
  sub_100002B84(0, &qword_100093BE8, FINode_ptr);
  v16 = *(v6 + 16);
  v16(v15, a2, v5);
  (*(v6 + 56))(v15, 0, 1, v5);
  v17 = static FINode.docNode(from:)();
  sub_100005A04(v15, &qword_100093F50, &qword_100074090);
  if (v17)
  {
    swift_beginAccess();
    v18 = v17;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v30 = *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    v31 = v9;
    static Logger.UI.getter();
    v19 = v32;
    v16(v32, a2, v5);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136315138;
      sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v19;
      v26 = v24;
      v28 = v27;
      (*(v6 + 8))(v25, v5);
      v29 = sub_100005D28(v26, v28, &v36);

      *(v22 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to fetch FINode to reveal from URL: %s", v22, 0xCu);
      sub_100034948(v23);
    }

    else
    {

      (*(v6 + 8))(v19, v5);
    }

    (*(v33 + 8))(v34, v31);
  }

  dispatch_group_leave(v35);
}

void sub_10003C9E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (!(v4 >> 62))
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    goto LABEL_3;
  }

  if (v4 < 0)
  {
    v12 = *(a1 + 16);
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_3:
    v5 = *(a2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    if (v5)
    {
      v6 = [v5 splitBrowserViewController];
      v7 = [v6 fullDocumentManagerViewController];

      v8 = [v7 effectiveBrowserViewController];
      if (v8)
      {
        swift_beginAccess();
        v9 = *(a1 + 16);

        sub_10000DB4C(&unk_100093BB0, &qword_100074428);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v13[4] = nullsub_1;
        v13[5] = 0;
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1107296256;
        v13[2] = sub_10003CBA4;
        v13[3] = &unk_10008EBA0;
        v11 = _Block_copy(v13);
        [v8 revealWithNodes:isa selectEvenIfVisible:1 completionBlock:v11];
        _Block_release(v11);
      }
    }
  }
}

uint64_t sub_10003CBA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_10003CBF8(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v46 - v10;
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_10:
    sub_100034850(a2, aBlock, &qword_100093498, &qword_100074430);
    if (!v52)
    {

      sub_100005A04(aBlock, &qword_100093498, &qword_100074430);
      return;
    }

    type metadata accessor for DOCActionContext();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v29 = v49;
    v30 = DOCActionContext.userInfo.getter();
    v31 = UIDocumentBrowserActionUserInfoLocationKey.getter();
    if (*(v30 + 16))
    {
      v33 = sub_100009C94(v31, v32);
      v35 = v34;

      if (v35)
      {
        sub_100005CC8(*(v30 + 56) + 32 * v33, aBlock);

        sub_100002B84(0, &qword_100093BD8, DOCConcreteLocation_ptr);
        if ((swift_dynamicCast() & 1) == 0)
        {

          return;
        }

        v36 = v49;
        v37 = DOCActionContext.userInfo.getter();
        v38 = UIDocumentBrowserActionUserInfoTagNameKey.getter();
        if (*(v37 + 16))
        {
          v40 = sub_100009C94(v38, v39);
          v42 = v41;

          if (v42)
          {
            sub_100005CC8(*(v37 + 56) + 32 * v40, aBlock);

            v43 = swift_dynamicCast();
            if (v43)
            {
              v44 = v49;
            }

            else
            {
              v44 = 0;
            }

            if (v43)
            {
              v45 = v50;
            }

            else
            {
              v45 = 0;
            }

            goto LABEL_30;
          }
        }

        else
        {
        }

        v44 = 0;
        v45 = 0;
LABEL_30:
        sub_10003DB38(v36, v44, v45);

        return;
      }
    }

    else
    {
    }

    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  v48 = v15;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v16 = *(a1 + 32);
  }

  v17 = v16;
  v18 = [v16 fileURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = *(v5 + 32);
  v19(v13, v11, v4);
  v47 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v20);
  v46 = v21;
  v22 = swift_allocObject();
  v23 = v48;
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v8, v13, v4);
  v24 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  v19((v25 + v24), v8, v4);
  v53 = sub_100051E0C;
  v54 = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001D16C;
  v52 = &unk_10008E948;
  v26 = _Block_copy(aBlock);

  v28 = v46;
  v27 = v47;
  [v47 fetchItemForURL:v46 completionHandler:v26];
  _Block_release(v26);

  (*(v5 + 8))(v13, v4);
}

void sub_10003D134(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v6 = type metadata accessor for Logger();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  __chkstk_darwin(v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v36[-v15];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v40 = v6;
    if (a1)
    {
      (*(v11 + 16))(v16, a4, v10);
      v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = a1;
      *(v20 + 24) = v18;
      (*(v11 + 32))(v20 + v19, v16, v10);
      v21 = a1;
      v22 = v18;
      DOCRunInMainThread(_:)();
    }

    else
    {
      v23 = v9;
      static Logger.Application.getter();
      (*(v11 + 16))(v14, a4, v10);
      v24 = v41;
      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v39 = v23;
        v28 = v27;
        v38 = swift_slowAlloc();
        v44 = v38;
        *v28 = 136315650;
        *(v28 + 4) = sub_100005D28(0xD000000000000017, 0x80000001000758B0, &v44);
        v37 = v26;
        *(v28 + 12) = 2080;
        sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v30;
        (*(v11 + 8))(v14, v10);
        v32 = sub_100005D28(v29, v31, &v44);

        *(v28 + 14) = v32;
        *(v28 + 22) = 2080;
        v43 = v24;
        swift_errorRetain();
        sub_10000DB4C(&unk_100093B40, qword_100074410);
        v33 = String.init<A>(describing:)();
        v35 = sub_100005D28(v33, v34, &v44);

        *(v28 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v25, v37, "%s item was nil for URL: %s error: %s", v28, 0x20u);
        swift_arrayDestroy();

        (*(v42 + 8))(v39, v40);
      }

      else
      {

        (*(v11 + 8))(v14, v10);
        (*(v42 + 8))(v23, v40);
      }
    }
  }
}

void sub_10003D5AC(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 isFolder])
  {
    sub_10003D6B8(a3);
    return;
  }

  sub_10005A36C(a3);
  if (!v6)
  {
    sub_10005B100(a1);
    if (!v9)
    {
      sub_10003D920(a3, 0);
      return;
    }

    v7 = v9;
    v8 = *(a2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window);
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v7 = v6;
  v8 = *(a2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window);
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_8:
  v10 = [v8 windowScene];
LABEL_10:
  v11 = v10;
  sub_1000620FC(v7, v10);
}

void sub_10003D6B8(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = [objc_allocWithZone(UIWindowSceneActivationRequestOptions) init];
  v7 = *(v1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window);
  v8 = v6;
  if (v7)
  {
    v7 = [v7 windowScene];
  }

  [v6 setRequestingScene:v7];

  v9 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v13 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  (*(v4 + 32))(v14 + v13, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_100051F14;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001D16C;
  aBlock[3] = &unk_10008EA38;
  v15 = _Block_copy(aBlock);
  v16 = v6;

  [v9 fetchItemForURL:v12 completionHandler:v15];
  _Block_release(v15);
}

void sub_10003D920(uint64_t a1, char a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v12 = (*(v5 + 80) + 25) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = a2;
  (*(v5 + 32))(v13 + v12, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_1000509F8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001D16C;
  aBlock[3] = &unk_10008E628;
  v14 = _Block_copy(aBlock);

  [v7 fetchItemForURL:v10 completionHandler:v14];
  _Block_release(v14);
}

uint64_t sub_10003DB38(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  __chkstk_darwin();
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DOCUserActivityIdentifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(UIWindowSceneActivationRequestOptions) init];
  v17 = *(v3 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window);
  v18 = v16;
  if (v17)
  {
    v17 = [v17 windowScene];
  }

  [v16 setRequestingScene:v17];

  v19 = objc_opt_self();
  v55 = 0;
  v20 = [v19 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v55];
  v21 = v55;
  if (v20)
  {
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = a2;
    v23 = v22;
    v25 = v24;

    (*(v12 + 104))(v15, enum case for DOCUserActivityIdentifier.location(_:), v11);
    DOCUserActivityIdentifier.rawValue.getter();
    v54 = a1;
    (*(v12 + 8))(v15, v11);
    v26 = objc_allocWithZone(NSUserActivity);
    v27 = String._bridgeToObjectiveC()();

    v28 = [v26 initWithActivityType:v27];

    sub_10000DB4C(&qword_100093A28, qword_100074AD0);
    inited = swift_initStackObject();
    v52 = xmmword_1000736D0;
    *(inited + 16) = xmmword_1000736D0;
    *(inited + 32) = DOCUserActivityLocationKey.getter();
    *(inited + 40) = v30;
    *(inited + 48) = DOCUserActivityTagNameKey.getter();
    *(inited + 56) = v31;
    sub_10004CDFC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v28 setRequiredUserInfoKeys:isa];

    sub_10000DB4C(&qword_100093A30, &qword_1000743B0);
    v33 = swift_initStackObject();
    *(v33 + 16) = v52;
    v55 = DOCUserActivityLocationKey.getter();
    v56 = v34;
    AnyHashable.init<A>(_:)();
    *(v33 + 96) = &type metadata for Data;
    *(v33 + 72) = v23;
    *(v33 + 80) = v25;
    sub_10000AEE8(v23, v25);
    v55 = DOCUserActivityTagNameKey.getter();
    v56 = v35;
    AnyHashable.init<A>(_:)();
    *(v33 + 168) = &type metadata for String;
    v36 = v53;
    if (!a3)
    {
      v36 = 0;
    }

    v37 = 0xE000000000000000;
    if (a3)
    {
      v37 = a3;
    }

    *(v33 + 144) = v36;
    *(v33 + 152) = v37;

    sub_10004CBBC(v33);
    swift_setDeallocating();
    sub_10000DB4C(&qword_100093A38, &qword_1000743B8);
    swift_arrayDestroy();
    v38 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v28 addUserInfoEntriesFromDictionary:v38];

    v39 = swift_allocObject();
    v39[2] = v28;
    v39[3] = v16;
    v40 = v54;
    v39[4] = v54;
    v41 = v16;
    v42 = v28;
    v43 = v40;
    DOCRunInMainThread(_:)();

    return sub_10000A0F8(v23, v25);
  }

  else
  {
    v45 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.Application.getter();
    swift_errorRetain();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v48 = 136315394;
      *(v48 + 4) = sub_100005D28(0xD00000000000001BLL, 0x8000000100075890, &v55);
      *(v48 + 12) = 2080;
      swift_getErrorValue();
      v49 = Error.localizedDescription.getter();
      v51 = sub_100005D28(v49, v50, &v55);

      *(v48 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v46, v47, "%s: Failed to encode DOCConcrete Location in to data. Error: %s", v48, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v53 + 8))(v10, v54);
  }
}

BOOL sub_10003E1E0(unint64_t a1, SEL *a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v7, 1))
      {
LABEL_12:
        __break(1u);
        return v5 != v7;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v8 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v7, 1))
      {
        goto LABEL_12;
      }
    }

    v9 = [v8 *a2];
    swift_unknownObjectRelease();
    v6 = v7 + 1;
  }

  while ((v9 & 1) != 0);
  return v5 != v7;
}

uint64_t sub_10003E2C8(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = aBlock - v9;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_13:
    static Logger.Application.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_100005D28(0xD000000000000017, 0x8000000100075770, aBlock);
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s: nodes was empty.", v27, 0xCu);
      sub_100034948(v28);
    }

    return (*(v3 + 8))(v6, v2);
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    swift_unknownObjectRetain();
    v16 = [v15 fileURL];
    if (v16)
    {
      v17 = v16;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
    }

    else
    {
      v24 = type metadata accessor for URL();
      (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    }

    sub_10003E790(v10, 0, v12, v13);
    swift_unknownObjectRelease_n();
    sub_100005A04(v10, &qword_100093F50, &qword_100074090);
  }

  else
  {
    v19 = [objc_opt_self() defaultManager];
    objc_opt_self();
    v20 = swift_dynamicCastObjCClassUnconditional();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = v12;
    v22[4] = v13;
    aBlock[4] = sub_100051CD0;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000526E0;
    aBlock[3] = &unk_10008E8A8;
    v23 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();

    [v19 fetchURLForItem:v20 completionHandler:v23];
    swift_unknownObjectRelease();
    _Block_release(v23);

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_10003E790(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v39 = a4;
  v40 = a3;
  v41 = a2;
  v5 = type metadata accessor for Logger();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v38 - v18;
  sub_100034850(a1, v12, &qword_100093F50, &qword_100074090);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100005A04(v12, &qword_100093F50, &qword_100074090);
    v20 = v8;
    static Logger.Application.getter();
    v21 = v40;
    swift_unknownObjectRetain();
    v22 = v41;
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v25 = 136446722;
      *(v25 + 4) = sub_100005D28(0xD000000000000013, 0x80000001000757E0, &v45);
      *(v25 + 12) = 2082;
      v26 = [v21 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_100005D28(v27, v29, &v45);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2080;
      v44 = v22;
      swift_errorRetain();
      sub_10000DB4C(&unk_100093B40, qword_100074410);
      v31 = String.init<A>(describing:)();
      v33 = sub_100005D28(v31, v32, &v45);

      *(v25 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s: got nil URL for node: %{public}s. Error: %s", v25, 0x20u);
      swift_arrayDestroy();
    }

    return (*(v42 + 8))(v20, v43);
  }

  else
  {
    v35 = *(v14 + 32);
    v35(v19, v12, v13);
    (*(v14 + 16))(v17, v19, v13);
    v36 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v39;
    v35((v37 + v36), v17, v13);

    DOCRunInMainThread(_:)();

    return (*(v14 + 8))(v19, v13);
  }
}

void sub_10003EC28(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v38 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v40 = v4;
    v24 = *&Strong[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
    if (v24)
    {
      v39 = v3;
      (*(v11 + 16))(v21, a2, v10);
      (*(v11 + 56))(v21, 0, 1, v10);
      v25 = objc_opt_self();
      v26 = v24;
      [v25 supportsQuickLookInSharedWindow];
      sub_100034850(v21, v19, &qword_100093F50, &qword_100074090);
      if ((*(v11 + 48))(v19, 1, v10) == 1)
      {
        sub_100005A04(v19, &qword_100093F50, &qword_100074090);
        static Logger.Application.getter();
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();
        v29 = os_log_type_enabled(v27, v28);
        v30 = v39;
        if (v29)
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "[Interaction] Attempted to quick look a nil url. Ignoring", v31, 2u);
        }

        (*(v40 + 8))(v9, v30);
      }

      else
      {
        (*(v11 + 32))(v14, v19, v10);
        v32 = v41;
        static Logger.Application.getter();
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = v26;
          v37 = swift_slowAlloc();
          v42 = v37;
          *v35 = 136315138;
          *(v35 + 4) = sub_100005D28(0xD000000000000041, 0x8000000100075790, &v42);
          _os_log_impl(&_mh_execute_header, v33, v34, "[Interaction] %s preview", v35, 0xCu);
          sub_100034948(v37);
          v26 = v36;

          (*(v40 + 8))(v41, v39);
        }

        else
        {

          (*(v40 + 8))(v32, v39);
        }

        sub_100054CE4(v14, 0, 0);
        (*(v11 + 8))(v14, v10);
      }

      sub_100005A04(v21, &qword_100093F50, &qword_100074090);
    }

    else
    {
    }
  }
}

void *sub_10003F118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return sub_10003E790(a1, a2, a4, a5);
  }

  return result;
}

void sub_10003F198(void *a1)
{
  v2 = type metadata accessor for Logger();
  v130 = *(v2 - 8);
  v3 = *(v130 + 64);
  v4 = __chkstk_darwin(v2);
  v131 = v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v123 = v112 - v7;
  __chkstk_darwin(v6);
  v122 = v112 - v8;
  v9 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v124 = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v126 = v112 - v14;
  __chkstk_darwin(v13);
  v128 = v112 - v15;
  v134 = type metadata accessor for URL();
  v137 = *(v134 - 8);
  v16 = *(v137 + 64);
  v17 = __chkstk_darwin(v134);
  v121 = v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v129 = v112 - v19;
  v20 = type metadata accessor for DispatchTime();
  v133 = *(v20 - 8);
  v21 = *(v133 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v112 - v25;
  v138 = type metadata accessor for DispatchTimeInterval();
  v135 = *(v138 - 8);
  v27 = *(v135 + 64);
  v28 = __chkstk_darwin(v138);
  v125 = v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v127 = v112 - v31;
  __chkstk_darwin(v30);
  v136 = v112 - v32;
  v33 = type metadata accessor for DispatchQoS.QoSClass();
  v132 = *(v33 - 8);
  v34 = *(v132 + 64);
  __chkstk_darwin(v33);
  v36 = v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  if (a1)
  {
    v119 = v2;
    v39 = a1;
    v40 = [v39 userInfo];
    if (v40)
    {
      v41 = v40;
      v120 = v39;
      v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = *(v139 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_stateRestorationURLKey + 8);
      v140 = *(v139 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_stateRestorationURLKey);
      v141 = v43;

      AnyHashable.init<A>(_:)();
      if (*(v42 + 16) && (v44 = sub_10000A60C(&aBlock), (v45 & 1) != 0))
      {
        sub_100005CC8(*(v42 + 56) + 32 * v44, &v148);
        sub_10000A774(&aBlock);

        if (*(&v149 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }

          v46 = aBlock;
          v47 = v143;
          v48 = swift_allocBox();
          v49 = *(v137 + 56);
          v113 = v50;
          v112[1] = v137 + 56;
          v112[0] = v49;
          v49(v50, 1, 1, v134);
          v51 = swift_allocObject();
          v51[2] = v46;
          v51[3] = v47;
          v51[4] = v48;
          v146 = sub_100051CC4;
          v147 = v51;
          aBlock = _NSConcreteStackBlock;
          v143 = 1107296256;
          v144 = sub_100002DB0;
          v145 = &unk_10008E858;
          v115 = _Block_copy(&aBlock);
          *&v148 = &_swiftEmptyArrayStorage;
          v116 = v46;
          v117 = v47;
          sub_10000AEE8(v46, v47);
          v114 = sub_10004DC20(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
          v118 = v48;

          sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
          sub_100002D44(&qword_100093420, &unk_100093A80, &qword_1000736E0);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v52 = type metadata accessor for DispatchWorkItem();
          v53 = *(v52 + 48);
          v54 = *(v52 + 52);
          swift_allocObject();
          v55 = DispatchWorkItem.init(flags:block:)();

          sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
          v56 = v132;
          (*(v132 + 104))(v36, enum case for DispatchQoS.QoSClass.userInitiated(_:), v33);
          v57 = static OS_dispatch_queue.global(qos:)();
          (*(v56 + 8))(v36, v33);
          OS_dispatch_queue.async(execute:)();

          v58 = v135;
          v59 = v136;
          *v136 = 2;
          (*(v58 + 104))(v59, enum case for DispatchTimeInterval.seconds(_:), v138);
          static DispatchTime.now()();
          + infix(_:_:)();
          v60 = *(v133 + 8);
          v60(v24, v20);
          v133 = v55;
          dispatch thunk of DispatchWorkItem.wait(timeout:)();
          v60(v26, v20);
          if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
          {
            v69 = v131;
            static Logger.Application.getter();
            v70 = *(v58 + 16);
            v71 = v127;
            v70(v127, v59, v138);
            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.error.getter();
            v74 = os_log_type_enabled(v72, v73);
            v75 = v119;
            if (v74)
            {
              v76 = swift_slowAlloc();
              aBlock = swift_slowAlloc();
              *v76 = 136315394;
              *(v76 + 4) = sub_100005D28(0xD000000000000017, 0x8000000100075770, &aBlock);
              *(v76 + 12) = 2080;
              v77 = v138;
              v70(v125, v71, v138);
              v78 = String.init<A>(describing:)();
              v80 = v79;
              v81 = *(v135 + 8);
              v81(v71, v77);
              v82 = sub_100005D28(v78, v80, &aBlock);

              *(v76 + 14) = v82;
              _os_log_impl(&_mh_execute_header, v72, v73, "%s: Bookmark data resolution has timed out (max %s", v76, 0x16u);
              swift_arrayDestroy();

              sub_10000A0F8(v116, v117);
              (*(v130 + 8))(v131, v119);
              v81(v136, v77);
            }

            else
            {

              sub_10000A0F8(v116, v117);
              v92 = *(v58 + 8);
              v93 = v138;
              v92(v71, v138);
              (*(v130 + 8))(v69, v75);
              v92(v59, v93);
            }

            goto LABEL_39;
          }

          v61 = v113;
          swift_beginAccess();
          v62 = v61;
          v63 = v128;
          sub_100034850(v62, v128, &qword_100093F50, &qword_100074090);
          v64 = v137;
          v65 = *(v137 + 48);
          v66 = v134;
          v67 = v65(v63, 1, v134);
          v68 = v119;
          if (v67 == 1)
          {
            (*(v58 + 8))(v136, v138);

            sub_10000A0F8(v116, v117);

            sub_100005A04(v63, &qword_100093F50, &qword_100074090);
LABEL_39:

            return;
          }

          v83 = *(v64 + 32);
          v83(v129, v63, v66);
          v84 = v120;
          v85 = [v120 userInfo];
          if (v85)
          {
            v86 = v85;
            v87 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *&v148 = DOCUserActivityQuickLookStateRestorationUserInfoKey.getter();
            *(&v148 + 1) = v88;
            AnyHashable.init<A>(_:)();
            if (*(v87 + 16) && (v89 = sub_10000A60C(&aBlock), (v90 & 1) != 0))
            {
              sub_100005CC8(*(v87 + 56) + 32 * v89, &v148);
              sub_10000A774(&aBlock);

              v84 = v120;
              if (*(&v149 + 1))
              {
                sub_10000DB4C(&qword_100093A40, &qword_1000743C0);
                if (swift_dynamicCast())
                {
                  v91 = aBlock;
                }

                else
                {
                  v91 = 0;
                }

LABEL_29:
                v94 = *(v139 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
                if (v94)
                {
                  v95 = v126;
                  (*(v137 + 16))(v126, v129, v66);
                  (v112[0])(v95, 0, 1, v66);
                  v96 = objc_opt_self();
                  v97 = v94;
                  [v96 supportsQuickLookInSharedWindow];
                  v98 = v124;
                  sub_100034850(v95, v124, &qword_100093F50, &qword_100074090);
                  if (v65(v98, 1, v66) == 1)
                  {
                    sub_100005A04(v98, &qword_100093F50, &qword_100074090);
                    v99 = v122;
                    static Logger.Application.getter();
                    v100 = Logger.logObject.getter();
                    v101 = static os_log_type_t.debug.getter();
                    if (os_log_type_enabled(v100, v101))
                    {
                      v102 = swift_slowAlloc();
                      *v102 = 0;
                      _os_log_impl(&_mh_execute_header, v100, v101, "[Interaction] Attempted to quick look a nil url. Ignoring", v102, 2u);
                    }

                    (*(v130 + 8))(v99, v68);
                    v103 = v135;
                    v104 = v136;
                    v105 = v137;
                  }

                  else
                  {
                    v106 = v121;
                    v83(v121, v98, v66);
                    v107 = v123;
                    static Logger.Application.getter();
                    v108 = Logger.logObject.getter();
                    v109 = static os_log_type_t.debug.getter();
                    if (os_log_type_enabled(v108, v109))
                    {
                      v110 = swift_slowAlloc();
                      v111 = swift_slowAlloc();
                      aBlock = v111;
                      *v110 = 136315138;
                      *(v110 + 4) = sub_100005D28(0xD000000000000041, 0x8000000100075790, &aBlock);
                      _os_log_impl(&_mh_execute_header, v108, v109, "[Interaction] %s preview", v110, 0xCu);
                      sub_100034948(v111);
                    }

                    (*(v130 + 8))(v107, v68);
                    v103 = v135;
                    v104 = v136;
                    sub_100054CE4(v106, 0, v91);
                    v105 = v137;
                    (*(v137 + 8))(v106, v66);
                  }

                  sub_10000A0F8(v116, v117);
                  sub_100005A04(v126, &qword_100093F50, &qword_100074090);
                  (*(v105 + 8))(v129, v66);
                  (*(v103 + 8))(v104, v138);
                }

                else
                {

                  sub_10000A0F8(v116, v117);
                  (*(v137 + 8))(v129, v66);
                  (*(v135 + 8))(v136, v138);
                }

                goto LABEL_39;
              }
            }

            else
            {

              sub_10000A774(&aBlock);
              v148 = 0u;
              v149 = 0u;
              v84 = v120;
            }
          }

          else
          {
            v148 = 0u;
            v149 = 0u;
          }

          sub_100005A04(&v148, &qword_100093498, &qword_100074430);
          v91 = 0;
          goto LABEL_29;
        }
      }

      else
      {

        sub_10000A774(&aBlock);
        v148 = 0u;
        v149 = 0u;
      }
    }

    else
    {

      v148 = 0u;
      v149 = 0u;
    }

    sub_100005A04(&v148, &qword_100093498, &qword_100074430);
  }
}

uint64_t sub_100040334(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_projectBox();
  v42 = 0;
  v20 = *(v15 + 56);
  v20(v13, 1, 1, v14);
  v37 = a1;
  v21 = a2;
  URL.init(resolvingBookmarkData:options:relativeTo:bookmarkDataIsStale:)();
  sub_100005A04(v13, &qword_100093F50, &qword_100074090);
  URL.checkResourceIsReachable()();
  if (v22)
  {
    (*(v15 + 8))(v18, v14);
    v23 = v38;
    static Logger.Application.getter();
    v24 = v37;
    v25 = v21;
    sub_10000AEE8(v37, v21);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    sub_10000A0F8(v24, v25);

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v28 = 136315650;
      *(v28 + 4) = sub_100005D28(0xD000000000000017, 0x8000000100075770, v41);
      *(v28 + 12) = 2080;
      v29 = Data.description.getter();
      v31 = sub_100005D28(v29, v30, v41);

      *(v28 + 14) = v31;
      *(v28 + 22) = 2080;
      swift_getErrorValue();
      v32 = Error.localizedDescription.getter();
      v34 = sub_100005D28(v32, v33, v41);

      *(v28 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s: Failed to create document URL from bookmark data or document is unreachable: %s, error: %s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v39 + 8))(v23, v40);
  }

  else
  {
    (*(v15 + 32))(v11, v18, v14);
    v20(v11, 0, 1, v14);
    swift_beginAccess();
    return sub_1000091C8(v11, v19);
  }
}

id sub_100040790(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = os_log_type_enabled(v10, v11);
  v24 = v9;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v23 = v4;
    v14 = v13;
    v25 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100005D28(0xD000000000000022, 0x8000000100075740, &v25);
    *(v14 + 12) = 2080;
    v15 = [v9 shortDescription];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v2;
    v19 = v18;

    v20 = sub_100005D28(v16, v19, &v25);
    v2 = v17;

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: Restore concrete location: %s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v8, v23);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  result = *(v2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (result)
  {
    return [result switchToLocation:v24];
  }

  return result;
}

void sub_1000409EC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v57 - v13;
  static Logger.Application.getter();
  v15 = a1;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v59 = v12;
    v19 = v18;
    v20 = swift_slowAlloc();
    v57 = v4;
    v62 = v20;
    *v19 = 136315650;
    *(v19 + 4) = sub_100005D28(0xD000000000000031, 0x8000000100075700, &v62);
    v58 = v8;
    *(v19 + 12) = 2080;
    v61 = v15;
    type metadata accessor for DOCIntentLocationType(0);
    v21 = v15;
    v22 = String.init<A>(describing:)();
    v24 = a3;
    v25 = sub_100005D28(v22, v23, &v62);

    *(v19 + 14) = v25;
    a3 = v24;
    *(v19 + 22) = 2080;
    v26 = v60;
    v8 = v58;
    *(v19 + 24) = sub_100005D28(a2, a3, &v62);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: Restore semantic location type: %s ID: %s", v19, 0x20u);
    swift_arrayDestroy();
    v4 = v57;

    v12 = v59;

    v27 = v26;
  }

  else
  {

    v27 = v60;
  }

  v28 = *(v27 + 8);
  v28(v14, v8);
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {

LABEL_13:
    v40 = *(v4 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    if (v40)
    {
      [v40 switchToTab:0];
    }

    return;
  }

  v34 = v15;
  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
    goto LABEL_13;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {

    goto LABEL_17;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
LABEL_17:
    v42 = *(v4 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    if (v42)
    {
      v43 = objc_opt_self();
      v44 = v42;
      v45 = [v43 sharedItemsLocation];
      [v44 switchToLocation:v45];
    }

    return;
  }

  v57 = a2;
  static Logger.Application.getter();
  v46 = v34;

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v59 = v12;
    v50 = v49;
    v62 = swift_slowAlloc();
    *v50 = 136315650;
    *(v50 + 4) = sub_100005D28(0xD000000000000031, 0x8000000100075700, &v62);
    v58 = v8;
    *(v50 + 12) = 2080;
    v61 = v46;
    type metadata accessor for DOCIntentLocationType(0);
    v51 = v46;
    v52 = String.init<A>(describing:)();
    v54 = sub_100005D28(v52, v53, &v62);

    *(v50 + 14) = v54;
    *(v50 + 22) = 2080;
    *(v50 + 24) = sub_100005D28(v57, a3, &v62);
    _os_log_impl(&_mh_execute_header, v47, v48, "%s: Unexpected location type: %s ID: %s", v50, 0x20u);
    swift_arrayDestroy();

    v55 = v59;
    v56 = v58;
  }

  else
  {

    v55 = v12;
    v56 = v8;
  }

  v28(v55, v56);
}

void sub_100040F98(uint64_t a1, unint64_t a2)
{
  v40 = type metadata accessor for Logger();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v40);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v36 - v10;
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  static Logger.Application.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v39 = v4;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100005D28(0xD00000000000001ALL, 0x80000001000756E0, &v41);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_100005D28(a1, a2, &v41);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: Tag ID: %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(v4 + 8);
  v18(v13, v40);
  v19 = [objc_opt_self() sharedInstance];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 tagForName:v20];

  if (v21)
  {
    static Logger.Application.getter();

    v22 = v21;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v18;
      v27 = a1;
      v28 = v26;
      v41 = swift_slowAlloc();
      *v25 = 136315650;
      *(v25 + 4) = sub_100005D28(0xD00000000000001ALL, 0x80000001000756E0, &v41);
      *(v25 + 12) = 2112;
      *(v25 + 14) = v22;
      *v28 = v21;
      *(v25 + 22) = 2080;
      v29 = v22;
      *(v25 + 24) = sub_100005D28(v27, a2, &v41);
      _os_log_impl(&_mh_execute_header, v23, v24, "%s: Found tag: %@ using ID: %s", v25, 0x20u);
      sub_100005A04(v28, &qword_1000937D0, &unk_1000743F0);

      swift_arrayDestroy();

      v37(v11, v40);
    }

    else
    {

      v18(v11, v40);
    }

    v33 = [objc_allocWithZone(DOCConcreteLocation) initWithTaggedItemsSourceRepresentedTag:v22];
    v34 = *(v38 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    if (v34)
    {
      v35 = v34;
      [v35 switchToLocation:v33];
    }
  }

  else
  {
    static Logger.Application.getter();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_100005D28(0xD00000000000001ALL, 0x80000001000756E0, &v41);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_100005D28(a1, a2, &v41);
      _os_log_impl(&_mh_execute_header, v30, v31, "%s: Error! Can not find tag by ID: %s", v32, 0x16u);
      swift_arrayDestroy();
    }

    v18(v8, v40);
  }
}

void sub_100041580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    if (v6)
    {
      v7 = v6;
      URL._bridgeToObjectiveC()(v8);
      v10 = v9;
      v11 = swift_allocObject();
      *(v11 + 16) = a3;
      aBlock[4] = sub_1000522C0;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000526E0;
      aBlock[3] = &unk_10008ED58;
      v12 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      [v7 revealDocumentAtURL:v10 importIfNeeded:0 openDocument:0 revealContents:1 updateLastUsedDate:1 completion:v12];

      _Block_release(v12);
      v5 = v10;
    }
  }
}

uint64_t sub_1000416D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static Logger.Application.getter();
    swift_errorRetain();
    swift_unknownObjectRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v13 = 136315650;
      *(v13 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100075B90, &v23);
      *(v13 + 12) = 2080;
      v14 = [a3 description];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_100005D28(v15, v17, &v23);

      *(v13 + 14) = v18;
      *(v13 + 22) = 2080;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = sub_100005D28(v19, v20, &v23);

      *(v13 + 24) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s: Failed to reveal folder for item: %s. Error: %s", v13, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

void *sub_10004196C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    swift_getObjectType();
    return sub_10004C708(a1, a2, a4, a5);
  }

  return result;
}

void sub_1000419F8(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = [a1 sourceIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {

LABEL_8:
    v13 = &DOCIntentLocationTypeRecents;
LABEL_9:
    v14 = *v13;

    sub_1000409EC(v14, 0, 0xE000000000000000);
    return;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    goto LABEL_19;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {

LABEL_19:
    v13 = &DOCIntentLocationTypeShared;
    goto LABEL_9;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {

    goto LABEL_24;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
LABEL_24:
    if (a3)
    {

      sub_100040F98(a2, a3);
    }

    return;
  }

  sub_100040790(a1);
}

uint64_t sub_100041C70(uint64_t a1, uint64_t a2, void *a3)
{
  v101 = a1;
  v5 = type metadata accessor for Logger();
  v98 = *(v5 - 8);
  v99 = v5;
  v6 = *(v98 + 64);
  v7 = __chkstk_darwin(v5);
  v94 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v89 - v9;
  v11 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v89 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v93 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v92 = &v89 - v24;
  v25 = __chkstk_darwin(v23);
  v100 = &v89 - v26;
  __chkstk_darwin(v25);
  v27 = *(v19 + 16);
  v102 = &v89 - v28;
  v91 = v19 + 16;
  v90 = v27;
  v27();
  v29 = *(v19 + 56);
  v97 = a2;
  v29(a2, 1, 1, v18);
  v95 = objc_opt_self();
  v30 = [v95 defaultManager];
  v96 = a3;
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v103 = 0;
  v34 = [v30 URLForDirectory:99 inDomain:1 appropriateForURL:v32 create:1 error:&v103];

  v35 = v103;
  if (!v34)
  {
    v97 = v19;
    v56 = v18;
    v57 = v103;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.Application.getter();
    swift_errorRetain();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v60 = 136315394;
      *(v60 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075AF0, &v103);
      *(v60 + 12) = 2080;
      swift_getErrorValue();
      v61 = Error.localizedDescription.getter();
      v63 = sub_100005D28(v61, v62, &v103);

      *(v60 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v58, v59, "%s: could create temporary directory. Error: %s", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v98 + 8))(v10, v99);
    v39 = v56;
    v40 = v97;
    goto LABEL_12;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = v97;
  sub_100005A04(v97, &qword_100093F50, &qword_100074090);
  v29(v17, 0, 1, v18);
  sub_10000B2A8(v17, v37);
  sub_100034850(v37, v15, &qword_100093F50, &qword_100074090);
  result = (*(v19 + 48))(v15, 1, v18);
  if (result != 1)
  {
    v39 = v18;
    v40 = v19;
    v41 = v96;
    URL.lastPathComponent.getter();
    v42 = v100;
    URL.appendingPathComponent(_:)();

    v43 = v15;
    v44 = *(v40 + 8);
    v44(v43, v39);
    v45 = [v95 defaultManager];
    URL._bridgeToObjectiveC()(v46);
    v48 = v47;
    URL._bridgeToObjectiveC()(v49);
    v51 = v50;
    v103 = 0;
    v52 = [v45 moveItemAtURL:v48 toURL:v50 error:&v103];

    if (v52)
    {
      v53 = v103;
      v54 = v102;
      v44(v102, v39);
      (*(v40 + 32))(v54, v42, v39);
      v55 = v54;
      return (*(v40 + 32))(v101, v55, v39);
    }

    v95 = v44;
    v64 = v103;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v65 = v94;
    static Logger.Application.getter();
    v66 = v92;
    v67 = v90;
    (v90)(v92, v41, v39);
    v68 = v93;
    (v67)(v93, v42, v39);
    swift_errorRetain();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      LODWORD(v91) = v70;
      v72 = v66;
      v73 = v71;
      v96 = swift_slowAlloc();
      v103 = v96;
      *v73 = 136315906;
      *(v73 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075AF0, &v103);
      *(v73 + 12) = 2080;
      sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL);
      v97 = v40;
      v74 = v39;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      v78 = v72;
      v79 = v95;
      (v95)(v78, v39);
      v80 = sub_100005D28(v75, v77, &v103);

      *(v73 + 14) = v80;
      *(v73 + 22) = 2080;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v79(v68, v74);
      v84 = sub_100005D28(v81, v83, &v103);

      *(v73 + 24) = v84;
      *(v73 + 32) = 2080;
      swift_getErrorValue();
      v85 = Error.localizedDescription.getter();
      v87 = sub_100005D28(v85, v86, &v103);

      *(v73 + 34) = v87;
      v39 = v74;
      v40 = v97;
      _os_log_impl(&_mh_execute_header, v69, v91, "%s: could not move file in at: %s to: %s. Error: %s", v73, 0x2Au);
      swift_arrayDestroy();

      (*(v98 + 8))(v94, v99);
      v79(v100, v39);
    }

    else
    {

      v88 = v95;
      (v95)(v68, v39);
      v88(v66, v39);
      (*(v98 + 8))(v65, v99);
      v88(v42, v39);
    }

LABEL_12:
    v55 = v102;
    return (*(v40 + 32))(v101, v55, v39);
  }

  __break(1u);
  return result;
}

id sub_100042640()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrowserSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10004271C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100042738(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100042780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000427E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000427F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100042814(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_10004285C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (!v10)
  {
    return 0;
  }

  v11 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookURL;
  swift_beginAccess();
  sub_100034850(v10 + v11, v9, &qword_100093F50, &qword_100074090);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    v12 = v10;
    sub_100005A04(v9, &qword_100093F50, &qword_100074090);
    v13 = [v12 effectiveFullBrowser];
    v14 = DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter();

    if (v14)
    {
      v15 = DOCItemCollectionViewController.getCurrentLocation()();

      if (v15)
      {
        v16 = [v15 fileProviderItem];

        if (v16)
        {
          v17 = [v16 itemID];
          v18 = FPItemID.identifierString.getter();

          return v18;
        }
      }
    }

    return 0;
  }

  (*(v2 + 16))(v5, v9, v1);
  v20 = v10;
  sub_100005A04(v9, &qword_100093F50, &qword_100074090);
  v21 = URL.absoluteString.getter();

  (*(v2 + 8))(v5, v1);
  return v21;
}

uint64_t sub_100042B0C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v39 = a6;
  v40 = a7;
  v37 = a4;
  v38 = a5;
  v42 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v42 - 8);
  v9 = *(v45 + 64);
  __chkstk_darwin(v42);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v20 = &v36 - v19;
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v41 = static OS_dispatch_queue.main.getter();
  sub_100034850(a1, v20, &qword_100093F50, &qword_100074090);
  v21 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v22 = swift_allocObject();
  v24 = v37;
  v23 = v38;
  v22[2] = a3;
  v22[3] = v24;
  v26 = v39;
  v25 = v40;
  v22[4] = v23;
  v22[5] = v26;
  v22[6] = v25;
  sub_10000B2A8(v20, v22 + v21);
  aBlock[4] = sub_10004DBA8;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008E588;
  v27 = _Block_copy(aBlock);
  v28 = a3;
  v29 = v24;
  v30 = v23;
  v31 = v26;
  v32 = v25;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10004DC20(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_100002D44(&qword_100093420, &unk_100093A80, &qword_1000736E0);
  v33 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34 = v41;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v45 + 8))(v11, v33);
  return (*(v43 + 8))(v15, v44);
}

void sub_100042EE0(void *a1, char *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v68 = a6;
  v63 = a4;
  v64 = a5;
  v62 = a3;
  v66 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v8 = *(*(v66 - 8) + 64);
  v9 = __chkstk_darwin(v66);
  v11 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v60[-v12];
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v60[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v60[-v20];
  v22 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController;
  v69 = a2;
  v23 = *&a2[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
  if (!v23 || ![v23 currentPreviewItem])
  {
    goto LABEL_9;
  }

  v67 = v15;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    v15 = v67;
LABEL_9:
    static Logger.Application.getter();
    sub_100034850(v68, v13, &qword_100093F50, &qword_100074090);
    v47 = v69;
    v48 = v69;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v67 = v15;
      v52 = v51;
      v71 = swift_slowAlloc();
      *v52 = 136315650;
      *(v52 + 4) = sub_100005D28(0xD000000000000021, 0x80000001000754D0, &v71);
      v65 = v14;
      *(v52 + 12) = 2080;
      v70 = [*&v47[v22] currentPreviewItem];
      sub_10000DB4C(&qword_100093AF0, &qword_1000743E8);
      v53 = String.init<A>(describing:)();
      v55 = sub_100005D28(v53, v54, &v71);

      *(v52 + 14) = v55;
      *(v52 + 22) = 2080;
      sub_100034850(v13, v11, &qword_100093F50, &qword_100074090);
      v56 = String.init<A>(describing:)();
      v58 = v57;
      sub_100005A04(v13, &qword_100093F50, &qword_100074090);
      v59 = sub_100005D28(v56, v58, &v71);

      *(v52 + 24) = v59;
      _os_log_impl(&_mh_execute_header, v49, v50, "[Interaction] 2.3 %s previewItem: %s not longer equal to currentPreviewItem: %s. Skipping update.", v52, 0x20u);
      swift_arrayDestroy();

      (*(v67 + 8))(v19, v65);
    }

    else
    {

      sub_100005A04(v13, &qword_100093F50, &qword_100074090);
      (*(v15 + 8))(v19, v14);
    }

    return;
  }

  sub_100002B84(0, &unk_100093AF8, QLItem_ptr);
  v24 = a1;
  v25 = static NSObject.== infix(_:_:)();
  swift_unknownObjectRelease();

  v15 = v67;
  if ((v25 & 1) == 0)
  {
    goto LABEL_9;
  }

  v65 = v14;
  static Logger.Application.getter();
  v26 = v24;
  v27 = v62;
  v28 = v63;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v71 = v63;
    *v31 = 136315906;
    *(v31 + 4) = sub_100005D28(0xD000000000000021, 0x80000001000754D0, &v71);
    *(v31 + 12) = 2080;
    v32 = v27;
    v66 = v27;
    v33 = v32;
    v61 = v30;
    v34 = [v32 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_100005D28(v35, v37, &v71);

    *(v31 + 14) = v38;
    *(v31 + 22) = 2080;
    v39 = v28;
    v40 = [v39 description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_100005D28(v41, v43, &v71);

    *(v31 + 24) = v44;
    v27 = v66;
    *(v31 + 32) = 2112;
    *(v31 + 34) = v26;
    v45 = v62;
    *v62 = v26;
    v46 = v26;
    _os_log_impl(&_mh_execute_header, v29, v61, "[Interaction] 2.2 %s on: %s for QLVC: %s with previewItem: %@", v31, 0x2Au);
    sub_100005A04(v45, &qword_1000937D0, &unk_1000743F0);

    swift_arrayDestroy();
  }

  (*(v67 + 8))(v21, v65);
  sub_100008480(v68, v27, v69, v64);
}

uint64_t sub_100043580()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window;
  v8 = *&v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window];
  if (v8)
  {
    v9 = [v8 windowScene];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 session];
      v12 = sub_10004CFD4();
      [v11 setStateRestorationActivity:v12];
    }
  }

  static Logger.Application.getter();
  v13 = v1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100005D28(0xD00000000000001DLL, 0x8000000100075470, &v27);
    *(v16 + 12) = 2080;
    v17 = *&v1[v7];
    if (v17 && (v18 = [v17 windowScene]) != 0)
    {
      v19 = v18;
      v20 = [v18 session];

      v21 = [v20 stateRestorationActivity];
    }

    else
    {
      v21 = 0;
    }

    v26 = v21;
    sub_10000DB4C(&qword_100093A20, &qword_1000743A8);
    v22 = String.init<A>(describing:)();
    v24 = sub_100005D28(v22, v23, &v27);

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "[Interaction] %s to: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1000438AC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v52 = a4;
  v53 = a3;
  v5 = type metadata accessor for Logger();
  *&v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  __chkstk_darwin();
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for URL();
  v9 = *(v51 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DOCUserActivityIdentifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_opt_self();
  v54[0] = a1;
  sub_10000DB4C(&qword_100093BE0, &qword_100074438);
  v17 = Optional._bridgeToObjectiveC()();
  v54[0] = 0;
  v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:v54];
  swift_unknownObjectRelease();
  v19 = v54[0];
  if (v18)
  {
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    (*(v12 + 104))(v15, enum case for DOCUserActivityIdentifier.folderDrag(_:), v11);
    DOCUserActivityIdentifier.rawValue.getter();
    (*(v12 + 8))(v15, v11);
    v23 = objc_allocWithZone(NSUserActivity);
    v24 = String._bridgeToObjectiveC()();

    v25 = [v23 initWithActivityType:v24];

    sub_10000DB4C(&qword_100093A28, qword_100074AD0);
    inited = swift_initStackObject();
    v49 = xmmword_100073FE0;
    *(inited + 16) = xmmword_100073FE0;
    *(inited + 32) = DOCUserActivityDOCNodeKey.getter();
    *(inited + 40) = v27;
    sub_10004CDFC(inited);
    swift_setDeallocating();
    sub_10004DB44(inited + 32);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v25 setRequiredUserInfoKeys:isa];

    sub_10000DB4C(&qword_100093A30, &qword_1000743B0);
    v29 = swift_initStackObject();
    *(v29 + 16) = v49;
    v54[0] = DOCUserActivityDOCNodeKey.getter();
    v54[1] = v30;
    AnyHashable.init<A>(_:)();
    *(v29 + 96) = &type metadata for Data;
    v31 = v20;
    *(v29 + 72) = v20;
    *(v29 + 80) = v22;
    sub_10000AEE8(v20, v22);
    sub_10004CBBC(v29);
    swift_setDeallocating();
    sub_100005A04(v29 + 32, &qword_100093A38, &qword_1000743B8);
    v32 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v25 addUserInfoEntriesFromDictionary:v32];

    v33 = v50;
    v34 = v51;
    (*(v9 + 16))(v50, v52, v51);
    v35 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v36 = swift_allocObject();
    v37 = v53;
    *(v36 + 16) = v25;
    *(v36 + 24) = v37;
    (*(v9 + 32))(v36 + v35, v33, v34);
    v38 = v25;
    v39 = v37;
    DOCRunInMainThread(_:)();
    sub_10000A0F8(v31, v22);
  }

  else
  {
    v40 = v19;
    v41 = v49;
    v42 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.Application.getter();
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v45 = 136315394;
      *(v45 + 4) = sub_100005D28(0xD000000000000013, 0x80000001000758D0, v54);
      *(v45 + 12) = 2080;
      swift_getErrorValue();
      v46 = Error.localizedDescription.getter();
      v48 = sub_100005D28(v46, v47, v54);

      *(v45 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v43, v44, "%s: Failed to encode FPItem in to data. Error: %s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v41 + 8))(v8, v42);
  }
}

void sub_100043FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = [objc_opt_self() sharedApplication];
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  aBlock[4] = sub_100052120;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000639C4;
  aBlock[3] = &unk_10008EAB0;
  v12 = _Block_copy(aBlock);

  [v9 requestSceneSessionActivation:0 userActivity:a1 options:a2 errorHandler:v12];
  _Block_release(v12);
}

uint64_t sub_100044198(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  (*(v4 + 16))(v7, a2, v3);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v9;
    v16 = v15;
    v26 = swift_slowAlloc();
    v28 = v26;
    *v16 = 136315650;
    *(v16 + 4) = sub_100005D28(0xD000000000000013, 0x80000001000758D0, &v28);
    *(v16 + 12) = 2080;
    sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v8;
    v19 = v18;
    (*(v4 + 8))(v7, v3);
    v20 = sub_100005D28(v17, v19, &v28);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2080;
    swift_getErrorValue();
    v21 = Error.localizedDescription.getter();
    v23 = sub_100005D28(v21, v22, &v28);

    *(v16 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: Failed to create new scene for URL: %s Error: %s", v16, 0x20u);
    swift_arrayDestroy();

    return (*(v27 + 8))(v12, v25);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

void sub_100044510(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [objc_opt_self() sharedApplication];
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  v10[4] = sub_100051E30;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000639C4;
  v10[3] = &unk_10008E9C0;
  v8 = _Block_copy(v10);
  v9 = a3;

  [v6 requestSceneSessionActivation:0 userActivity:a1 options:a2 errorHandler:v8];
  _Block_release(v8);
}

uint64_t sub_10004462C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v8 = a2;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v11 = 136315650;
    *(v11 + 4) = sub_100005D28(0xD00000000000001BLL, 0x8000000100075890, &v21);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    *(v11 + 22) = 2080;
    swift_getErrorValue();
    v19 = v3;
    v13 = v8;
    v14 = Error.localizedDescription.getter();
    v16 = sub_100005D28(v14, v15, &v21);

    *(v11 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: Failed to create new scene for Location: %@ Error: %s", v11, 0x20u);
    sub_100005A04(v12, &qword_1000937D0, &unk_1000743F0);

    swift_arrayDestroy();

    return (*(v4 + 8))(v7, v19);
  }

  else
  {

    return (*(v4 + 8))(v7, v3);
  }
}

void sub_1000448B4(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Logger();
  v37 = *(v14 - 8);
  v15 = *(v37 + 64);
  __chkstk_darwin(v14);
  v17 = &v33[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a1)
    {
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = a1;
      *(v20 + 32) = a4 & 1;
      v21 = a1;
      v22 = v19;
      DOCRunInMainThread(_:)();
    }

    else
    {
      static Logger.Application.getter();
      (*(v10 + 16))(v13, a5, v9);
      swift_errorRetain();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v39 = v36;
        *v25 = 136315650;
        *(v25 + 4) = sub_100005D28(0xD000000000000027, 0x8000000100075590, &v39);
        *(v25 + 12) = 2080;
        sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL);
        v34 = v24;
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v14;
        v28 = v27;
        (*(v10 + 8))(v13, v9);
        v29 = sub_100005D28(v26, v28, &v39);

        *(v25 + 14) = v29;
        *(v25 + 22) = 2080;
        v38 = a2;
        swift_errorRetain();
        sub_10000DB4C(&unk_100093B40, qword_100074410);
        v30 = String.init<A>(describing:)();
        v32 = sub_100005D28(v30, v31, &v39);

        *(v25 + 24) = v32;
        _os_log_impl(&_mh_execute_header, v23, v34, "%s item was nil for URL: %s error: %s", v25, 0x20u);
        swift_arrayDestroy();

        (*(v37 + 8))(v17, v35);
      }

      else
      {

        (*(v10 + 8))(v13, v9);
        (*(v37 + 8))(v17, v14);
      }
    }
  }
}

void sub_100044CDC(char *a1, char **a2, int a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&a1[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
  if (v12)
  {
    v50 = v12;
    v13 = [v50 effectiveFullBrowser];
    v14 = DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter();

    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = dispatch thunk of DOCItemCollectionViewController.source.getter();
      v17 = dispatch thunk of DOCFileProviderSource.isSpotlightBacked.getter();

      v18 = [objc_opt_self() quickLookEntireFolderInWindow];
      v19 = [v18 isEnabled];

      if (!v19 || (v17 & 1) != 0)
      {
        v36 = swift_allocObject();
        *(v36 + 16) = v15;
        *(v36 + 24) = v14;
        *(v36 + 32) = a1;
        *(v36 + 40) = a2;
        *(v36 + 48) = a3 & 1;
        aBlock[4] = sub_100051644;
        aBlock[5] = v36;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10004554C;
        aBlock[3] = &unk_10008E6C8;
        v37 = _Block_copy(aBlock);
        v38 = a2;
        v39 = a1;

        v40 = v14;

        [v40 getCellFor:v38 :v37];

        _Block_release(v37);
      }

      else
      {
        v48 = a3;
        v20 = dispatch thunk of DOCItemCollectionViewController.items.getter();
        v21 = v20;
        aBlock[0] = &_swiftEmptyArrayStorage;
        v22 = v20 & 0xFFFFFFFFFFFFFF8;
        if (v20 >> 62)
        {
LABEL_34:
          v23 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v46 = v15;
        v47 = v14;
        v49 = a2;
        if (v23)
        {
          v14 = 0;
          v15 = v21 & 0xC000000000000001;
          v24 = &_swiftEmptyArrayStorage;
          a2 = &off_100091000;
          do
          {
            v25 = v14;
            while (1)
            {
              if (v15)
              {
                v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v14 = (v25 + 1);
                if (__OFADD__(v25, 1))
                {
                  goto LABEL_32;
                }
              }

              else
              {
                if (v25 >= *(v22 + 16))
                {
                  goto LABEL_33;
                }

                v26 = *(v21 + 8 * v25 + 32);
                swift_unknownObjectRetain();
                v14 = (v25 + 1);
                if (__OFADD__(v25, 1))
                {
LABEL_32:
                  __break(1u);
LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }
              }

              if (![v26 isFolder])
              {
                break;
              }

              swift_unknownObjectRelease();
              ++v25;
              if (v14 == v23)
              {
                goto LABEL_29;
              }
            }

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v27 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v24 = aBlock[0];
          }

          while (v14 != v23);
        }

        else
        {
          v24 = &_swiftEmptyArrayStorage;
        }

LABEL_29:

        v41 = swift_allocObject();
        v42 = v49;
        *(v41 + 16) = v49;
        *(v41 + 24) = a1;
        *(v41 + 32) = v46;
        *(v41 + 40) = v48 & 1;
        v43 = v42;
        v44 = a1;

        sub_100051664(v24, sub_100051654, v41);

        v45 = v50;
      }
    }

    else
    {
      sub_10000DB4C(&qword_100093F90, &qword_100074650);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000742D0;
      *(inited + 32) = a2;
      v34 = a2;
      sub_100050A8C(inited, a2, a3 & 1);

      swift_setDeallocating();
      v35 = *(inited + 16);
      swift_arrayDestroy();
    }
  }

  else
  {
    v28 = v9;
    static Logger.Application.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100005D28(0xD000000000000027, 0x8000000100075590, aBlock);
      _os_log_impl(&_mh_execute_header, v29, v30, "%s: Unable to continue activity since main view controller not set, of search query string not is nil", v31, 0xCu);
      sub_100034948(v32);
    }

    (*(v7 + 8))(v11, v28);
  }
}

uint64_t sub_100045298(unint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v9 = a1;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:

    goto LABEL_6;
  }

  sub_10000DB4C(&qword_100093F90, &qword_100074650);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000742D0;
  *(v9 + 32) = a2;
  v10 = a2;
LABEL_6:
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v9;
  *(v11 + 32) = a2;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5 & 1;
  v12 = a2;
  v13 = a3;

  DOCRunInMainThread(_:)();
}

void sub_1000453B4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, int a5)
{
  swift_beginAccess();
  v9 = *(a4 + 16);
  sub_100050A8C(a2, a3, a5);
}

uint64_t sub_100045434(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a1)
  {
    v9 = a1;
    v10 = DOCItemCollectionViewController.targetPreview(for:)();

    swift_beginAccess();
    v11 = *(a2 + 16);
    *(a2 + 16) = v10;
  }

  sub_10000DB4C(&qword_100093F90, &qword_100074650);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000742D0;
  *(inited + 32) = a5;
  swift_beginAccess();
  v13 = *(a2 + 16);
  v14 = a5;
  sub_100050A8C(inited, a5, a6 & 1);

  swift_setDeallocating();
  v15 = *(inited + 16);
  return swift_arrayDestroy();
}

void sub_100045554(void *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    v13 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    static Logger.Application.getter();
    swift_unknownObjectRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075610, v21);
      *(v16 + 12) = 2080;
      v21[3] = a3;
      swift_unknownObjectRetain();
      sub_10000DB4C(&unk_100093BB0, &qword_100074428);
      v17 = String.init<A>(describing:)();
      v19 = sub_100005D28(v17, v18, v21);

      *(v16 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s failed to fetch item from node: %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    (*(v9 + 8))(v12, v8);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_1000457F8(uint64_t a1, void (*a2)(uint64_t), double a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Current = CFAbsoluteTimeGetCurrent();
  static Logger.Application.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = Current - a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075610, &v24);
    *(v15 + 12) = 2048;
    swift_beginAccess();
    v17 = *(a1 + 16);
    if (v17 >> 62)
    {
      if (v17 < 0)
      {
        v22 = *(a1 + 16);
      }

      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 14) = v18;

    *(v15 + 22) = 2048;
    *(v15 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s finished preparing: %ld items. Took: %f", v15, 0x20u);
    sub_100034948(v16);
  }

  else
  {
  }

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  v19 = *(a1 + 16);

  a2(v20);
}

uint64_t sub_100045A64(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v9 = a2;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v24 = v4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v12 = 136315650;
    *(v12 + 4) = sub_100005D28(0xD00000000000003BLL, 0x8000000100075640, &v27);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    *(v12 + 22) = 2080;
    if (a1)
    {
      swift_getErrorValue();
      v14 = v9;
      v15 = Error.localizedDescription.getter();
    }

    else
    {
      v18 = v9;
      v15 = 0;
      v16 = 0;
    }

    v25 = v15;
    v26 = v16;
    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v19 = String.init<A>(describing:)();
    v21 = sub_100005D28(v19, v20, &v27);

    *(v12 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: Failed to create new scene for item: %@ Error: %s", v12, 0x20u);
    sub_100005A04(v13, &qword_1000937D0, &unk_1000743F0);

    swift_arrayDestroy();

    return (*(v5 + 8))(v8, v24);
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_100045D2C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_100045D9C()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v11._object = 0x8000000100075DF0;
    v2._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2._object = 0xEB00000000656C62;
    v3._countAndFlagsBits = 0x636F44206E616353;
    v3._object = 0xEE0073746E656D75;
    v4._object = 0x8000000100075DC0;
    v11._countAndFlagsBits = 0xD00000000000004FLL;
    v4._countAndFlagsBits = 0xD000000000000023;
    DOCLocalizedString(_:tableName:bundle:value:comment:)(v4, v2, v1, v3, v11);

    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() iconWithSystemImageName:v5];

    v7 = objc_allocWithZone(UIApplicationShortcutItem);
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v7 initWithType:v8 localizedTitle:v9 localizedSubtitle:0 icon:v6 userInfo:0];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100045F40()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v11._object = 0x8000000100075D70;
    v2._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2._object = 0xEB00000000656C62;
    v3._countAndFlagsBits = 0x686372616553;
    v4._countAndFlagsBits = 0xD000000000000025;
    v4._object = 0x8000000100075D40;
    v11._countAndFlagsBits = 0xD000000000000045;
    v3._object = 0xE600000000000000;
    DOCLocalizedString(_:tableName:bundle:value:comment:)(v4, v2, v1, v3, v11);

    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() iconWithSystemImageName:v5];

    v7 = objc_allocWithZone(UIApplicationShortcutItem);
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v7 initWithType:v8 localizedTitle:v9 localizedSubtitle:0 icon:v6 userInfo:0];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000460D8(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = DOCFileProviderSource.appMenuIconPreferingSymbolImages.getter();
  v8 = [objc_opt_self() iconWithCustomImage:v7 isTemplate:0];
  v9 = sub_10004CCF8(&_swiftEmptyArrayStorage);
  v10 = [a1 identifier];
  v11 = [objc_allocWithZone(DOCConcreteLocation) initWithSourceIdentifier:v10 node:0];

  v12 = objc_opt_self();
  v44 = 0;
  v13 = [v12 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v44];
  if (v13)
  {
    v14 = v13;
    v15 = v44;
    v16 = DOCUserActivityLocationKey.getter();
    v18 = v17;
    v19 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v9;
    sub_1000524E0(v19, v16, v18, isUniquelyReferenced_nonNull_native, &v44);
  }

  else
  {
    v43 = v8;
    v21 = v44;
    v22 = _convertNSErrorToError(_:)();

    v42 = v22;
    swift_willThrow();

    static Logger.Application.getter();
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v3;
      v28 = v27;
      v29 = swift_slowAlloc();
      v41 = v7;
      v30 = v29;
      v44 = v29;
      *v26 = 136315394;
      *(v26 + 4) = sub_100005D28(0xD000000000000020, 0x8000000100075D10, &v44);
      *(v26 + 12) = 2112;
      *(v26 + 14) = v23;
      *v28 = v23;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s [App Shortcut] Failed to encode DOCConcreteLocation: %@", v26, 0x16u);
      sub_100005A04(v28, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v30);
      v7 = v41;

      (*(v40 + 8))(v6, v2);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v8 = v43;
  }

  v32 = [a1 displayName];
  v33 = objc_allocWithZone(UIApplicationShortcutItem);
  v34 = v8;
  v35 = String._bridgeToObjectiveC()();
  sub_10000DB4C(&qword_100093C08, &qword_100074460);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v37 = [v33 initWithType:v35 localizedTitle:v32 localizedSubtitle:0 icon:v34 userInfo:isa];

  return v37;
}

void sub_100046560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = &_swiftEmptyArrayStorage;
  v12 = *(a3 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (v12)
  {
    v27 = v11;
    v13 = v12;
    static Logger.UI.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = a1;
      v17 = v16;
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100005D28(0xD000000000000028, 0x8000000100075CE0, aBlock);
      _os_log_impl(&_mh_execute_header, v14, v15, "%s [App Shortcut] 3.1 Creating source observer", v17, 0xCu);
      sub_100034948(v18);

      a1 = v26;
    }

    (*(v7 + 8))(v10, v6);
    v19 = [v13 configuration];
    v20 = [v13 sourceObserver];
    v21 = swift_allocObject();
    v21[2] = v27;
    v21[3] = a1;
    v21[4] = a2;
    v22 = objc_allocWithZone(DOCSourceOrderObserver);
    aBlock[4] = sub_1000524C8;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047A04;
    aBlock[3] = &unk_10008EF60;
    v23 = _Block_copy(aBlock);

    v24 = [v22 initWithConfiguration:v19 sourceObserver:v20 updateBlock:v23];

    _Block_release(v23);

    v25 = *(a3 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_sourceOrderObserver);
    *(a3 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_sourceOrderObserver) = v24;
  }

  else
  {
  }
}

uint64_t sub_1000468B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v49 = a4;
  v47 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = &off_100091000;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v14 = 136315650;
    *(v14 + 4) = sub_100005D28(0xD000000000000028, 0x8000000100075CE0, &v50);
    *(v14 + 12) = 2080;
    v15 = [v10 regularSources];
    v45 = v5;
    v16 = v15;
    sub_100002B84(0, &qword_100093880, DOCDocumentSource_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = Array.description.getter();
    v19 = v18;

    v20 = sub_100005D28(v17, v19, &v50);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    v21 = [v10 sharedSources];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = Array.description.getter();
    v24 = v23;
    v13 = &off_100091000;

    v25 = sub_100005D28(v22, v24, &v50);

    *(v14 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s [App Shortcut] 3.2. Ordered sources regularSources: %s sharedSources: %s", v14, 0x20u);
    swift_arrayDestroy();

    (*(v6 + 8))(v9, v45);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v26 = [v10 v13[459]];
  sub_100002B84(0, &qword_100093880, DOCDocumentSource_ptr);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = &_swiftEmptyArrayStorage;
  v28 = v27 & 0xFFFFFFFFFFFFFF8;
  if (v27 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v30 = 0;
      v31 = &_swiftEmptyArrayStorage;
      do
      {
        v32 = v30;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v32 >= *(v28 + 16))
            {
              goto LABEL_37;
            }

            v33 = *(v27 + 8 * v32 + 32);
          }

          v34 = v33;
          v30 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          type metadata accessor for DOCFileProviderSource();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v32;
          if (v30 == i)
          {
            goto LABEL_22;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v35 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v31 = v50;
      }

      while (v30 != i);
    }

    else
    {
      v31 = &_swiftEmptyArrayStorage;
    }

LABEL_22:

    v50 = &_swiftEmptyArrayStorage;
    if (v31 >> 62)
    {
      break;
    }

    v27 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_42;
    }

LABEL_24:
    v36 = 0;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v36 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v37 = *(v31 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if ((DOCDocumentSource.isEnabled.getter() & 1) != 0 && (v40 = DOCFileProviderSource.providerDomain.getter()) != 0)
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v28 = *(v50 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v36;
      if (v39 == v27)
      {
        v41 = v50;
        goto LABEL_43;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v27 = _CocoaArrayWrapper.endIndex.getter();
  if (v27)
  {
    goto LABEL_24;
  }

LABEL_42:
  v41 = &_swiftEmptyArrayStorage;
LABEL_43:

  v42 = swift_allocObject();
  v42[2] = v41;
  v43 = v47;
  v42[3] = v48;
  v42[4] = v43;
  v42[5] = v49;

  DOCRunInMainThread(_:)();
}

uint64_t sub_100046E54(unint64_t a1, uint64_t a2, void (*a3)(void), char *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v15 = &_swiftEmptyArrayStorage;
    v36 = v11;
    v37 = a4;
    v35 = v9;
    if (!v14)
    {
      break;
    }

    v39[0] = &_swiftEmptyArrayStorage;
    v9 = v39;
    v11 = specialized ContiguousArray.reserveCapacity(_:)();
    if (v14 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v32 = v13;
    v33 = a2;
    v34 = a3;
    v13 = 0;
    a3 = (a1 & 0xC000000000000001);
    a2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      a4 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (a3)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v16 = *(a1 + 8 * v13 + 32);
      }

      v17 = v16;
      v40 = v16;
      sub_10004723C(&v40, v38);

      v9 = v39;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = *(v39[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v11 = specialized ContiguousArray._endMutation()();
      ++v13;
      if (a4 == v14)
      {
        v15 = v39[0];
        a2 = v33;
        a3 = v34;
        v13 = v32;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v31 = v11;
    v14 = _CocoaArrayWrapper.endIndex.getter();
    v11 = v31;
  }

LABEL_13:
  swift_beginAccess();
  sub_10004753C(v15);
  swift_endAccess();
  static Logger.Application.getter();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39[0] = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = sub_100005D28(0xD000000000000028, 0x8000000100075CE0, v39);
    *(v21 + 12) = 2080;
    swift_beginAccess();
    v22 = *(a2 + 16);
    sub_100002B84(0, &unk_100093C78, UIApplicationShortcutItem_ptr);

    v23 = Array.description.getter();
    v24 = v13;
    v26 = v25;

    v27 = sub_100005D28(v23, v26, v39);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s [App Shortcut] 3.4 Calling completion with %s", v21, 0x16u);
    swift_arrayDestroy();

    (v35[1])(v24, v36);
  }

  else
  {

    (v35[1])(v13, v36);
  }

  swift_beginAccess();
  v28 = *(a2 + 16);

  a3(v29);
}

id sub_10004723C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  static Logger.Application.getter();
  v11 = v10;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = v5;
    v15 = v14;
    v32 = swift_slowAlloc();
    v37 = v32;
    *v15 = 136315906;
    *(v15 + 4) = sub_100005D28(0xD000000000000028, 0x8000000100075CE0, &v37);
    *(v15 + 12) = 2080;
    v16 = [v11 displayName];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = a2;
    v35 = v2;
    v18 = v17;
    v20 = v19;

    v21 = sub_100005D28(v18, v20, &v37);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2080;
    v22 = [v11 providerName];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_100005D28(v23, v25, &v37);
    a2 = v34;

    *(v15 + 24) = v26;
    *(v15 + 32) = 2080;
    v36 = DOCFileProviderSource.providerDomain.getter();
    sub_10000DB4C(&qword_100093C98, &qword_100074498);
    v27 = String.init<A>(describing:)();
    v29 = sub_100005D28(v27, v28, &v37);

    *(v15 + 34) = v29;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s [App Shortcut] 3.3 Source %s providerName: %s providerDomain: %s", v15, 0x2Au);
    swift_arrayDestroy();

    (*(v6 + 8))(v9, v33);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  result = sub_1000460D8(v11);
  *a2 = result;
  return result;
}

uint64_t sub_10004753C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10004B5D0(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10004B6F8(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_10004762C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  sub_10004753C(v13);
  swift_endAccess();
  static Logger.UI.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v15;
    v17 = v16;
    v30 = swift_slowAlloc();
    v32[0] = v30;
    *v17 = 136315394;
    *(v17 + 4) = sub_100005D28(0xD000000000000015, 0x8000000100075CA0, v32);
    *(v17 + 12) = 2080;
    swift_beginAccess();
    v31 = a5;
    v18 = *(a2 + 16);
    sub_100002B84(0, &unk_100093C78, UIApplicationShortcutItem_ptr);
    v19 = a3;

    v20 = Array.description.getter();
    v28 = v8;
    v22 = v21;

    v23 = v20;
    a3 = v19;
    v24 = sub_100005D28(v23, v22, v32);

    *(v17 + 14) = v24;
    a5 = v31;
    _os_log_impl(&_mh_execute_header, v14, v29, "%s [App Shortcut] 4. Calling completion with %s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v9 + 8))(v12, v28);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  swift_beginAccess();
  v25 = *(a2 + 16);

  a3(v26);

  v27 = *(a5 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_sourceOrderObserver);
  *(a5 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_sourceOrderObserver) = 0;
}

uint64_t sub_100047930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_100002B84(0, &qword_100093BD0, DOCItemBookmark_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a3;
    sub_100002B74(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v5(v6, v10);

  return sub_100005A04(v10, &qword_100093498, &qword_100074430);
}

void sub_100047A04(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

size_t sub_100047ABC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000DB4C(&unk_100093C40, "&+");
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URL() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100047C94(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000DB4C(&qword_100093B38, &qword_100074408);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE **sub_100047DA0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100047DD8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100005D28(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_100047E34(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000DB4C(&qword_100093A58, &unk_1000743D8);
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

void sub_100047F50(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

unint64_t sub_100047FC4(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100048058(a1, v4);
}

unint64_t sub_100048058(uint64_t a1, uint64_t a2)
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

uint64_t sub_10004815C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100048F60(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000482AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10004DC20(&unk_100093B20, &type metadata accessor for URL);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10004DC20(&qword_100093F70, &type metadata accessor for URL);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1000490E0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

Swift::Int sub_10004858C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000DB4C(&qword_100093C30, &qword_100074470);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10004877C(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
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

uint64_t sub_10004877C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000DB4C(&qword_100093C30, &qword_100074470);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1000489A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000DB4C(&qword_100093A48, &qword_1000743C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100048C04(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for URL();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000DB4C(&qword_100093B30, &qword_100074400);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10004DC20(&unk_100093B20, &type metadata accessor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

Swift::Int sub_100048F60(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1000489A4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000494D4();
      goto LABEL_16;
    }

    sub_100049868(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000490E0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100048C04(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100049630();
      goto LABEL_12;
    }

    sub_100049AA0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10004DC20(&unk_100093B20, &type metadata accessor for URL);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_10004DC20(&qword_100093F70, &type metadata accessor for URL);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_100049384()
{
  v1 = v0;
  sub_10000DB4C(&qword_100093C30, &qword_100074470);
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

void *sub_1000494D4()
{
  v1 = v0;
  sub_10000DB4C(&qword_100093A48, &qword_1000743C8);
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

void *sub_100049630()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB4C(&qword_100093B30, &qword_100074400);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_100049868(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000DB4C(&qword_100093A48, &qword_1000743C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100049AA0(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for URL();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000DB4C(&qword_100093B30, &qword_100074400);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_10004DC20(&unk_100093B20, &type metadata accessor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

void sub_100049DBC(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    Set.Iterator.init(_cocoa:)();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_100052240();
      return;
    }

    while (1)
    {
      v18 = sub_10004A68C(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void *sub_100049FF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    Set.Iterator.init(_cocoa:)();
    v4 = v78;
    v6 = v79;
    v7 = v80;
    v8 = v81;
    v9 = v82;
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

  v73 = v4;
  v74 = v6;
  v75 = v7;
  v76 = v8;
  v64 = v7;
  v13 = (v7 + 64) >> 6;
  v70 = v3 + 7;
  v77 = v9;
  v67 = v6;
  v68 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_62;
      }

      v71 = v21;
      sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
      swift_dynamicCast();
      v19 = v72;
      v17 = v8;
      v2 = v9;
      if (!v72)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v73 = v4;
      v74 = v6;
      v75 = v64;
      v76 = v17;
      v77 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = v19;
    v23 = NSObject._rawHashValue(seed:)(v3[5]);
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v67;
    v4 = v68;
  }

  v25 = ~v24;
  v26 = sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
  v27 = *(v3[6] + 8 * v8);
  v69 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v3[6] + 8 * v8);
  }

  v30 = *(v3 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v61;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v62 = &v60;
    __chkstk_darwin(v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = v3[2];
    v63 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v67;
    v35 = v68;
    v37 = i;
LABEL_33:
    v65 = v4;
    while (v35 < 0)
    {
      v38 = __CocoaSet.Iterator.next()();
      if (!v38)
      {
        goto LABEL_61;
      }

      v71 = v38;
      swift_dynamicCast();
      v39 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = NSObject._rawHashValue(seed:)(v3[5]);
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v70[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(v45[6] + 8 * v47);
          v51 = static NSObject.== infix(_:_:)();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v70[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v63[v48];
        v63[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
        if (!v53)
        {
          v4 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v3 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v41;
      v17 = v41;
      v77 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_10004AAC0(v63, v61, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= v17 + 1)
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v55 = v5;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_10004A824(v57, v61, v3, v8, &v73);
  v59 = v58;

  v3 = v59;
LABEL_62:
  sub_100052240();
  return v3;
}

uint64_t sub_10004A68C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_10004ACB4();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100049384();
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_10004AE1C(v13);
  result = v20;
  *v10 = v21;
  return result;
}

void sub_10004A824(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_30;
          }

          sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_10004AAC0(a1, a2, v30, a3);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_10004AAC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000DB4C(&qword_100093C30, &qword_100074470);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10004ACB4()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_10004858C(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_10004AE1C(v9);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10004AE1C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_10004AFBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_10004AAC0(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_10004B128(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_10004AFBC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_10004B1B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000DB4C(&qword_100093CA0, &qword_1000744A0);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_10004B460()
{
  v1 = v0;
  sub_10000DB4C(&qword_100093CA0, &qword_1000744A0);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

uint64_t sub_10004B5D0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

void (*sub_10004B670(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_10004B6F0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004B6F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100002D44(&qword_100093C90, &qword_100093C88, &qword_100074490);
          for (i = 0; i != v6; ++i)
          {
            sub_10000DB4C(&qword_100093C88, &qword_100074490);
            v9 = sub_10004B670(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100002B84(0, &unk_100093C78, UIApplicationShortcutItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10004B8AC(void *a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v40 = a2;
    aBlock[0] = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_100005D28(0xD000000000000013, 0x8000000100075B70, aBlock);
    *(v17 + 12) = 2082;
    v19 = [v13 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v8;
    v22 = v21;

    v23 = sub_100005D28(v20, v22, aBlock);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s: location: %{public}s.", v17, 0x16u);
    swift_arrayDestroy();

    v7 = v41;

    (*(v9 + 8))(v12, v39);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v27 = v13;
    v28 = [v26 fileURL];
    if (v28)
    {
      v29 = v28;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v37 = type metadata accessor for URL();
    (*(*(v37 - 8) + 56))(v7, v30, 1, v37);
    sub_10004C25C(v7, 0, v27, v24);

    sub_100005A04(v7, &qword_100093F50, &qword_100074090);
  }

  else
  {
    v31 = [objc_opt_self() defaultManager];
    objc_opt_self();
    v32 = swift_dynamicCastObjCClassUnconditional();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = v13;
    v34[4] = v24;
    aBlock[4] = sub_10005269C;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000526E0;
    aBlock[3] = &unk_10008EE98;
    v35 = _Block_copy(aBlock);
    v36 = v13;

    [v31 fetchURLForItem:v32 completionHandler:v35];
    _Block_release(v35);
  }
}

void sub_10004BD6C(void *a1)
{
  v2 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v33[-v4];
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.Application.getter();
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v37 = v5;
    v14 = v13;
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v14 = 136446466;
    *(v14 + 4) = sub_100005D28(0xD000000000000013, 0x8000000100075B70, aBlock);
    *(v14 + 12) = 2082;
    v15 = [a1 description];
    v35 = v6;
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v12;
    v19 = v18;

    v20 = sub_100005D28(v17, v19, aBlock);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v34, "%{public}s: location: %{public}s.", v14, 0x16u);
    swift_arrayDestroy();

    v5 = v37;

    (*(v7 + 8))(v10, v35);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    swift_unknownObjectRetain();
    v24 = [v23 fileURL];
    if (v24)
    {
      v25 = v24;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v32 = type metadata accessor for URL();
    (*(*(v32 - 8) + 56))(v5, v26, 1, v32);
    sub_10004C708(v5, 0, a1, v21);
    swift_unknownObjectRelease();
    sub_100005A04(v5, &qword_100093F50, &qword_100074090);
  }

  else
  {
    v27 = [objc_opt_self() defaultManager];
    objc_opt_self();
    v28 = swift_dynamicCastObjCClassUnconditional();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = a1;
    v30[4] = v21;
    aBlock[4] = sub_10005229C;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000526E0;
    aBlock[3] = &unk_10008ECE0;
    v31 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v27 fetchURLForItem:v28 completionHandler:v31];
    _Block_release(v31);
  }
}

uint64_t sub_10004C25C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v41 = a4;
  v44 = a2;
  v45 = a3;
  v5 = type metadata accessor for Logger();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v40 - v18;
  sub_100034850(a1, v12, &qword_100093F50, &qword_100074090);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100005A04(v12, &qword_100093F50, &qword_100074090);
    v20 = v8;
    static Logger.Application.getter();
    v21 = v45;
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v24 = 136315650;
      *(v24 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100075B90, &v47);
      *(v24 + 12) = 2080;
      v25 = [v21 description];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = sub_100005D28(v26, v28, &v47);

      *(v24 + 14) = v29;
      *(v24 + 22) = 2080;
      v46 = v44;
      swift_errorRetain();
      sub_10000DB4C(&unk_100093B40, qword_100074410);
      v30 = String.init<A>(describing:)();
      v32 = sub_100005D28(v30, v31, &v47);

      *(v24 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: got nil URL for item: %s. Error: %s", v24, 0x20u);
      swift_arrayDestroy();
    }

    return (*(v42 + 8))(v20, v43);
  }

  else
  {
    v34 = *(v14 + 32);
    v34(v19, v12, v13);
    (*(v14 + 16))(v17, v19, v13);
    v35 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v36 = (v15 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = v41;
    v34((v37 + v35), v17, v13);
    v38 = v45;
    *(v37 + v36) = v45;

    v39 = v38;
    DOCRunInMainThread(_:)();

    return (*(v14 + 8))(v19, v13);
  }
}

uint64_t sub_10004C708(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v40 = a4;
  v41 = a2;
  v44 = a3;
  v5 = type metadata accessor for Logger();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v39 - v18;
  sub_100034850(a1, v12, &qword_100093F50, &qword_100074090);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100005A04(v12, &qword_100093F50, &qword_100074090);
    v20 = v8;
    static Logger.Application.getter();
    v21 = v44;
    swift_unknownObjectRetain();
    v22 = v41;
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v25 = 136315650;
      *(v25 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100075B90, &v46);
      *(v25 + 12) = 2080;
      v26 = [v21 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_100005D28(v27, v29, &v46);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2080;
      v45 = v22;
      swift_errorRetain();
      sub_10000DB4C(&unk_100093B40, qword_100074410);
      v31 = String.init<A>(describing:)();
      v33 = sub_100005D28(v31, v32, &v46);

      *(v25 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s: got nil URL for item: %s. Error: %s", v25, 0x20u);
      swift_arrayDestroy();
    }

    return (*(v42 + 8))(v20, v43);
  }

  else
  {
    v35 = *(v14 + 32);
    v35(v19, v12, v13);
    (*(v14 + 16))(v17, v19, v13);
    v36 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v37 = (v15 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    *(v38 + 16) = v40;
    v35((v38 + v36), v17, v13);
    *(v38 + v37) = v44;

    swift_unknownObjectRetain();
    DOCRunInMainThread(_:)();

    return (*(v14 + 8))(v19, v13);
  }
}

unint64_t sub_10004CBBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000DB4C(&qword_100093A50, &qword_1000743D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100034850(v4, v13, &qword_100093A38, &qword_1000743B8);
      result = sub_10000A60C(v13);
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
      result = sub_100002B74(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10004CCF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000DB4C(&qword_100093CA0, &qword_1000744A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_100009C94(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

Swift::Int sub_10004CDFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000DB4C(&qword_100093A48, &qword_1000743C8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10004CF64(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_10004815C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_10004CFD4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v66 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  v17 = *(v1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (v17)
  {
    *&v76 = v3;
    v77 = &v66 - v15;
    v78 = v16;
    v18 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookURL;
    swift_beginAccess();
    v19 = v17 + v18;
    v20 = v78;
    sub_100034850(v19, v11, &qword_100093F50, &qword_100074090);
    if ((*(v20 + 48))(v11, 1, v12) == 1)
    {
      sub_100005A04(v11, &qword_100093F50, &qword_100074090);
      return 0;
    }

    else
    {
      v73 = v2;
      (*(v20 + 32))(v77, v11, v12);
      v75 = v17;
      v74 = URL.startAccessingSecurityScopedResource()();
      (*(v20 + 56))(v9, 1, 1, v12);
      v21 = URL.bookmarkData(options:includingResourceValuesForKeys:relativeTo:)();
      v73 = v12;
      v23 = v22;
      v24 = v21;
      sub_100005A04(v9, &qword_100093F50, &qword_100074090);
      v25 = *(v1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_stateRestorationActivityIdentifier);
      v26 = *(v1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_stateRestorationActivityIdentifier + 8);
      v27 = objc_allocWithZone(NSUserActivity);
      v28 = String._bridgeToObjectiveC()();
      v17 = [v27 initWithActivityType:v28];

      sub_10000DB4C(&qword_100093A28, qword_100074AD0);
      inited = swift_initStackObject();
      v76 = xmmword_100073FE0;
      *(inited + 16) = xmmword_100073FE0;
      v31 = *(v1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_stateRestorationURLKey);
      v30 = *(v1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_stateRestorationURLKey + 8);
      *(inited + 32) = v31;
      *(inited + 40) = v30;
      swift_bridgeObjectRetain_n();
      sub_10004CDFC(inited);
      swift_setDeallocating();
      sub_10004DB44(inited + 32);
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v17 setRequiredUserInfoKeys:isa];

      v33 = sub_10000DB4C(&qword_100093A30, &qword_1000743B0);
      v34 = swift_initStackObject();
      *(v34 + 16) = v76;
      *&v84[0] = v31;
      *(&v84[0] + 1) = v30;
      AnyHashable.init<A>(_:)();
      *(v34 + 96) = &type metadata for Data;
      *(v34 + 72) = v24;
      *(v34 + 80) = v23;
      sub_10000AEE8(v24, v23);
      sub_10004CBBC(v34);
      swift_setDeallocating();
      sub_100005A04(v34 + 32, &qword_100093A38, &qword_1000743B8);
      v35 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v17 setUserInfo:v35];

      v36 = *&v75[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
      v37 = v75;
      if (v36)
      {
        v71 = v24;
        v72 = v23;
        v38 = [v36 userActivity];
        v39 = v78;
        v40 = v73;
        if (v38 && (v41 = v38, v42 = [v38 userInfo], v41, v42))
        {
          v69 = v33;
          v43 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v44 = 1 << *(v43 + 32);
          v45 = -1;
          if (v44 < 64)
          {
            v45 = ~(-1 << v44);
          }

          v46 = v45 & *(v43 + 64);
          v47 = (v44 + 63) >> 6;
          result = swift_bridgeObjectRetain_n();
          v49 = 0;
          v70 = &_swiftEmptyArrayStorage;
          while (v46)
          {
LABEL_15:
            v51 = __clz(__rbit64(v46));
            v46 &= v46 - 1;
            sub_10000A718(*(v43 + 48) + 40 * (v51 | (v49 << 6)), v84);
            v79 = v84[0];
            v80 = v84[1];
            v81 = v85;
            result = swift_dynamicCast();
            if (result)
            {
              v52 = v83;
              if (v83)
              {
                v68 = v82;
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_100006CC4(0, *(v70 + 2) + 1, 1, v70);
                  v70 = result;
                }

                v54 = *(v70 + 2);
                v53 = *(v70 + 3);
                v55 = v54 + 1;
                if (v54 >= v53 >> 1)
                {
                  v66 = *(v70 + 2);
                  v67 = v54 + 1;
                  result = sub_100006CC4((v53 > 1), v54 + 1, 1, v70);
                  v54 = v66;
                  v55 = v67;
                  v70 = result;
                }

                v56 = v70;
                *(v70 + 2) = v55;
                v57 = &v56[16 * v54];
                *(v57 + 4) = v68;
                *(v57 + 5) = v52;
              }
            }
          }

          while (1)
          {
            v50 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              __break(1u);
              return result;
            }

            if (v50 >= v47)
            {
              break;
            }

            v46 = *(v43 + 64 + 8 * v50);
            ++v49;
            if (v46)
            {
              v49 = v50;
              goto LABEL_15;
            }
          }

          v59 = [v17 requiredUserInfoKeys];
          if (v59)
          {
            v60 = v59;
            v61 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

            *&v84[0] = v61;
            sub_10004CF64(v70);

            v39 = v78;
            v37 = v75;
            if (*&v84[0])
            {
              v62.super.isa = Set._bridgeToObjectiveC()().super.isa;
            }

            else
            {
              v62.super.isa = 0;
            }

            [v17 setRequiredUserInfoKeys:v62.super.isa];
          }

          else
          {

            [v17 setRequiredUserInfoKeys:0];
            v39 = v78;
            v37 = v75;
          }

          v63 = swift_initStackObject();
          *(v63 + 16) = v76;
          *&v84[0] = DOCUserActivityQuickLookStateRestorationUserInfoKey.getter();
          *(&v84[0] + 1) = v64;
          AnyHashable.init<A>(_:)();
          *(v63 + 96) = sub_10000DB4C(&qword_100093A40, &qword_1000743C0);
          *(v63 + 72) = v43;
          sub_10004CBBC(v63);
          swift_setDeallocating();
          sub_100005A04(v63 + 32, &qword_100093A38, &qword_1000743B8);
          v65 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v17 addUserInfoEntriesFromDictionary:v65];
          sub_10000A0F8(v71, v72);
        }

        else
        {
          sub_10000A0F8(v71, v72);
        }
      }

      else
      {
        sub_10000A0F8(v24, v23);
        v39 = v78;
        v40 = v73;
      }

      if (v74)
      {
        v58 = v77;
        URL.stopAccessingSecurityScopedResource()();

        (*(v39 + 8))(v58, v40);
      }

      else
      {
        (*(v39 + 8))(v77, v40);
      }
    }
  }

  return v17;
}

void sub_10004DBA8()
{
  v1 = *(sub_10000DB4C(&qword_100093F50, &qword_100074090) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_100042EE0(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10004DC20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10004DC68(void *a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, NSObject *a7)
{
  v170 = a7;
  v153 = a6;
  v151 = a5;
  v152 = a4;
  v157 = a3;
  v171 = a2;
  v8 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v167 = &v146[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v169 = &v146[-v12];
  v13 = type metadata accessor for Logger();
  v177 = *(v13 - 8);
  v178 = v13;
  v14 = *(v177 + 64);
  v15 = __chkstk_darwin(v13);
  v161 = &v146[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v159 = &v146[-v18];
  v19 = __chkstk_darwin(v17);
  v149 = &v146[-v20];
  v21 = __chkstk_darwin(v19);
  v172 = &v146[-v22];
  __chkstk_darwin(v21);
  v166 = &v146[-v23];
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v150 = &v146[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __chkstk_darwin(v27);
  v158 = &v146[-v30];
  v31 = __chkstk_darwin(v29);
  v173 = &v146[-v32];
  v33 = __chkstk_darwin(v31);
  v163 = &v146[-v34];
  __chkstk_darwin(v33);
  v36 = &v146[-v35];
  v37 = sub_10000DB4C(&qword_100093C38, &unk_100074478);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37);
  v165 = &v146[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = __chkstk_darwin(v39);
  v155 = &v146[-v42];
  v43 = __chkstk_darwin(v41);
  v162 = &v146[-v44];
  v45 = __chkstk_darwin(v43);
  v47 = &v146[-v46];
  __chkstk_darwin(v45);
  v49 = &v146[-v48];
  v175 = URL.startAccessingSecurityScopedResource()();
  v50 = &v49[*(v37 + 48)];
  v174 = a1;
  sub_100041C70(v49, v50, a1);
  v168 = URL.startAccessingSecurityScopedResource()();
  v156 = objc_opt_self();
  v51 = [v156 defaultManager];
  sub_100034850(v49, v47, &qword_100093C38, &unk_100074478);
  v164 = v37;
  v52 = *(v37 + 48);
  URL._bridgeToObjectiveC()(&v181);
  v54 = v53;
  sub_100005A04(&v47[v52], &qword_100093F50, &qword_100074090);
  v55 = v25;
  v56 = *(v25 + 8);
  v57 = v24;
  v176 = v25 + 8;
  v179 = v56;
  v56(v47, v24);
  v180[0] = 0;
  v58 = [v51 _doc_importItemAtURL:v54 toDestination:1 error:v180];

  v59 = v180[0];
  if (v58)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v61 = v166;
    static Logger.Application.getter();
    v62 = v162;
    sub_100034850(v49, v162, &qword_100093C38, &unk_100074478);
    v63 = v55;
    v64 = v55 + 16;
    v65 = *(v55 + 16);
    v66 = v163;
    v172 = v36;
    v67 = v36;
    v68 = v57;
    v154 = v64;
    v160 = v65;
    v65(v163, v67, v57);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();
    v71 = os_log_type_enabled(v69, v70);
    v161 = v49;
    v171 = v63;
    if (v71)
    {
      v72 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v180[0] = v148;
      *v72 = 136315650;
      *(v72 + 4) = sub_100005D28(0xD000000000000031, 0x8000000100075AB0, v180);
      *(v72 + 12) = 2080;
      sub_100034850(v62, v47, &qword_100093C38, &unk_100074478);
      v73 = v164;
      v147 = v70;
      v74 = *(v164 + 48);
      v75 = v155;
      (*(v171 + 32))(v155, v47, v68);
      sub_10000B2A8(&v47[v74], &v75[v74]);
      v76 = String.init<A>(describing:)();
      v78 = v77;
      sub_100005A04(v62, &qword_100093C38, &unk_100074478);
      v79 = sub_100005D28(v76, v78, v180);

      *(v72 + 14) = v79;
      *(v72 + 22) = 2080;
      sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      v83 = v179;
      v179(v66, v68);
      v84 = sub_100005D28(v80, v82, v180);

      *(v72 + 24) = v84;
      _os_log_impl(&_mh_execute_header, v69, v147, "%s: imported URL: %s to downloads at URL: %s", v72, 0x20u);
      swift_arrayDestroy();

      v63 = v171;
      v49 = v161;

      v166 = *(v177 + 8);
      (v166)(v61, v178);
      v85 = v68;
    }

    else
    {

      v83 = v179;
      v179(v66, v68);
      sub_100005A04(v62, &qword_100093C38, &unk_100074478);
      v166 = *(v177 + 8);
      (v166)(v61, v178);
      v85 = v68;
      v73 = v164;
    }

    v107 = v165;
    sub_100034850(v49, v165, &qword_100093C38, &unk_100074478);
    v108 = *(v73 + 48);
    v109 = *(v63 + 48);
    v110 = v109(&v107[v108], 1, v85);
    v111 = v172;
    v112 = v173;
    if (v110 == 1)
    {
      sub_100005A04(&v107[v108], &qword_100093F50, &qword_100074090);
      v83(v107, v85);
      v113 = v169;
    }

    else
    {
      (*(v63 + 32))(v173, &v107[v108], v85);
      v83(v107, v85);
      v114 = [v156 defaultManager];
      URL._bridgeToObjectiveC()(v115);
      v117 = v116;
      v180[0] = 0;
      v118 = [v114 removeItemAtURL:v116 error:v180];

      if (v118)
      {
        v119 = v180[0];
        v83(v112, v85);
        v113 = v169;
      }

      else
      {
        v165 = v85;
        v120 = v180[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v121 = v149;
        static Logger.Application.getter();
        swift_errorRetain();
        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v180[0] = swift_slowAlloc();
          *v124 = 136315394;
          *(v124 + 4) = sub_100005D28(0xD000000000000031, 0x8000000100075AB0, v180);
          *(v124 + 12) = 2080;
          swift_getErrorValue();
          v125 = Error.localizedDescription.getter();
          v127 = sub_100005D28(v125, v126, v180);

          *(v124 + 14) = v127;
          _os_log_impl(&_mh_execute_header, v122, v123, "%s: Failed to delete temporary directory. Error: %s", v124, 0x16u);
          swift_arrayDestroy();

          (v166)(v121, v178);
          v85 = v165;
          v179(v173, v165);
        }

        else
        {

          (v166)(v121, v178);
          v85 = v165;
          v83(v173, v165);
        }

        v113 = v169;
        v111 = v172;
      }

      v63 = v171;
    }

    v160(v113, v111, v85);
    (*(v63 + 56))(v113, 0, 1, v85);
    v128 = v167;
    sub_100034850(v113, v167, &qword_100093F50, &qword_100074090);
    if (v109(v128, 1, v85) == 1)
    {
      sub_100005A04(v128, &qword_100093F50, &qword_100074090);
      v129 = v159;
      static Logger.Application.getter();
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v180[0] = swift_slowAlloc();
        *v132 = 136315394;
        *(v132 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075A80, v180);
        *(v132 + 12) = 2080;
        v180[3] = 0;
        sub_10000DB4C(&unk_100093B40, qword_100074410);
        v133 = String.init<A>(describing:)();
        v135 = sub_100005D28(v133, v134, v180);
        v111 = v172;

        *(v132 + 14) = v135;
        _os_log_impl(&_mh_execute_header, v130, v131, "%s: could not import to Downloads or it was cancelled: %s", v132, 0x16u);
        swift_arrayDestroy();
      }

      (v166)(v129, v178);
    }

    else
    {
      v136 = *(v63 + 32);
      v137 = v158;
      v136(v158, v128, v85);
      if (v157)
      {
        v138 = [v151 options];
        sub_10003A72C(v137, v138, 1, 1, 1u);

        v179(v137, v85);
      }

      else
      {
        v139 = v150;
        v160(v150, v137, v85);
        v140 = v153;
        swift_beginAccess();
        v141 = *(v140 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v140 + 16) = v141;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v141 = sub_100047ABC(0, v141[2] + 1, 1, v141);
          *(v140 + 16) = v141;
        }

        v144 = v141[2];
        v143 = v141[3];
        if (v144 >= v143 >> 1)
        {
          v141 = sub_100047ABC(v143 > 1, v144 + 1, 1, v141);
        }

        v141[2] = v144 + 1;
        v136(v141 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v144, v139, v85);
        *(v140 + 16) = v141;
        v179(v137, v85);
        v111 = v172;
      }
    }

    dispatch_group_leave(v170);
    sub_100005A04(v113, &qword_100093F50, &qword_100074090);
    v145 = v161;
    if (v168)
    {
      URL.stopAccessingSecurityScopedResource()();
    }

    v179(v111, v85);
    sub_100005A04(v145, &qword_100093C38, &unk_100074478);
    if (v175)
    {
LABEL_38:
      URL.stopAccessingSecurityScopedResource()();
    }
  }

  else
  {
    v86 = v161;
    v87 = v171;
    v88 = v180[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100005A04(v49, &qword_100093C38, &unk_100074478);
    v89 = v172;
    static Logger.Application.getter();
    swift_errorRetain();
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v180[0] = swift_slowAlloc();
      *v92 = 136315394;
      *(v92 + 4) = sub_100005D28(0xD000000000000031, 0x8000000100075AB0, v180);
      *(v92 + 12) = 2080;
      swift_getErrorValue();
      v93 = Error.localizedDescription.getter();
      v95 = sub_100005D28(v93, v94, v180);

      *(v92 + 14) = v95;
      _os_log_impl(&_mh_execute_header, v90, v91, "%s: import to Downloads failed. Error: %s", v92, 0x16u);
      swift_arrayDestroy();
    }

    v96 = *(v177 + 8);
    v96(v89, v178);
    v97 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController;
    v98 = *(v87 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController);
    if (!v98)
    {
      static Logger.Application.getter();
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v180[0] = v102;
        *v101 = 136315138;
        *(v101 + 4) = sub_100005D28(0xD000000000000031, 0x8000000100075AB0, v180);
        _os_log_impl(&_mh_execute_header, v99, v100, "%s: fileImportController was nil, creating a new one.", v101, 0xCu);
        sub_100034948(v102);
      }

      v96(v86, v178);
      v103 = [objc_allocWithZone(type metadata accessor for DOCImportFileController()) init];
      v104 = *(v87 + v97);
      *(v87 + v97) = v103;
      v105 = v103;

      if (v105)
      {
        *&v105[OBJC_IVAR____TtC5Files23DOCImportFileController_delegate + 8] = &off_10008E4F8;
        swift_unknownObjectWeakAssign();
      }

      v98 = *(v87 + v97);
      if (!v98)
      {

        __break(1u);
        return;
      }
    }

    v106 = v98;
    sub_10006E500(v174);

    if (v175)
    {
      goto LABEL_38;
    }
  }
}