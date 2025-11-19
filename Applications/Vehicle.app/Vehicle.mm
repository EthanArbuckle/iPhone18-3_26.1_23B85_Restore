int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AutoSettingsApplication();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for AppDelegate();
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

void type metadata accessor for CAFNotificationSeverity()
{
  if (!qword_100037848)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100037848);
    }
  }
}

unint64_t sub_100002038()
{
  result = qword_100037850;
  if (!qword_100037850)
  {
    type metadata accessor for CAFNotificationSeverity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037850);
  }

  return result;
}

Swift::Int sub_100002090()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100002104()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t type metadata accessor for VSNotificationDetailViewController()
{
  result = qword_100037A68;
  if (!qword_100037A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_100002244()
{
  v1 = v0;
  v2 = [v0 historicalNotificationUserActions];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 historicalNotificationUserActions];

    sub_1000043C8(0, &unk_100037AC0, CAFHistoricalNotificationUserAction_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
LABEL_34:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v8 = &_swiftEmptyArrayStorage;
        v40 = v1;
        while (1)
        {
          v41 = v8;
          v9 = v7;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v7 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

            v12 = [v10 userVisibleLabel];
            if (v12)
            {
              break;
            }

LABEL_7:

            ++v9;
            if (v7 == v6)
            {
              v1 = v40;
              v8 = v41;
              goto LABEL_36;
            }
          }

          v13 = v12;
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1 = v15;

          v16 = HIBYTE(v1) & 0xF;
          if ((v1 & 0x2000000000000000) == 0)
          {
            v16 = v14 & 0xFFFFFFFFFFFFLL;
          }

          if (!v16)
          {
            break;
          }

          v17 = [v11 symbolName];
          if (v17)
          {
            v18 = v17;
            v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v20;
            v39 = v19;
          }

          else
          {
            v38 = 0;
            v39 = 0;
          }

          v21 = [v11 contentURLAction];
          if (v21)
          {
            v22 = v21;
            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = v23;
          }

          else
          {

            v37 = 0;
            v24 = 0xE000000000000000;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_100004020(0, *(v41 + 2) + 1, 1, v41);
          }

          v26 = *(v41 + 2);
          v25 = *(v41 + 3);
          if (v26 >= v25 >> 1)
          {
            v41 = sub_100004020((v25 > 1), v26 + 1, 1, v41);
          }

          *(v41 + 2) = v26 + 1;
          v27 = &v41[56 * v26];
          *(v27 + 4) = v14;
          *(v27 + 5) = v1;
          *(v27 + 6) = v39;
          *(v27 + 7) = v38;
          *(v27 + 8) = v37;
          *(v27 + 9) = v24;
          v8 = v41;
          v27[80] = 0;
          v1 = v40;
          if (v7 == v6)
          {
LABEL_36:

            goto LABEL_37;
          }
        }

        goto LABEL_7;
      }
    }

    v8 = &_swiftEmptyArrayStorage;
    goto LABEL_36;
  }

  v8 = &_swiftEmptyArrayStorage;
LABEL_37:
  if ([v1 hasUserDismissible] && objc_msgSend(v1, "userDismissible"))
  {
    sub_100003FD8(&qword_100037AB8, &unk_100023C30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100023B50;
    v29 = [objc_opt_self() mainBundle];
    v42._object = 0xE000000000000000;
    v30.value._countAndFlagsBits = 0x747465536F747541;
    v30.value._object = 0xEC00000073676E69;
    v31._countAndFlagsBits = 0xD000000000000013;
    v31._object = 0x800000010002B270;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v30, v29, v32, v42);

    v33 = String.init(format:_:)();
    v35 = v34;

    *(inited + 32) = v33;
    *(inited + 40) = v35;
    *(inited + 48) = 0xD000000000000011;
    *(inited + 56) = 0x800000010002B290;
    *(inited + 64) = 0;
    *(inited + 72) = 0xE000000000000000;
    *(inited + 80) = 1;
    sub_100020848(inited);
  }

  return v8;
}

id sub_100002648()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for VSNotificationDetailViewController();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v1 = [objc_opt_self() mainBundle];
  v16._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x747465536F747541;
  v2.value._object = 0xEC00000073676E69;
  v3._object = 0x800000010002B310;
  v3._countAndFlagsBits = 0xD000000000000013;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v16);

  String.init(format:_:)();

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  v6 = CAFUITableViewController.tableView.getter();
  type metadata accessor for VSNotificationActionTableCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  [v6 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v8];

  v9 = CAFUITableViewController.tableView.getter();
  type metadata accessor for VSNotificationHeaderView(0);
  v10 = swift_getObjCClassFromMetadata();
  v11 = NSStringFromClass(v10);
  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  [v9 registerClass:v10 forHeaderFooterViewReuseIdentifier:v11];

  v12 = CAFUITableViewController.tableView.getter();
  [v12 setDelegate:v0];

  v13 = CAFUITableViewController.tableView.getter();
  [v13 setDataSource:v0];

  return [*&v0[qword_100037A40] registerObserver:v0];
}

void sub_100002888(void *a1)
{
  v1 = a1;
  sub_100002648();
}

void sub_100002910(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(id))
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for VSNotificationDetailViewController();
  v8 = *a4;
  v9 = v11.receiver;
  v10 = objc_msgSendSuper2(&v11, v8, a3);
  a5(v10);
}

uint64_t sub_1000029A0(void *a1)
{
  type metadata accessor for VSNotificationActionTableCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = IndexPath.row.getter();
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v10 = *(v1 + qword_100037A50);
      if (v9 < *(v10 + 16))
      {
        v11 = v10 + 56 * v9;
        v12 = *(v11 + 40);
        v13 = *(v11 + 48);
        v14 = *(v11 + 72);
        v15 = *(v11 + 80);
        v16 = v8 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction;
        v17 = *(v8 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction);
        v18 = *(v8 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 8);
        v19 = *(v8 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 16);
        v20 = *(v8 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 24);
        v21 = *(v8 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 32);
        v22 = *(v8 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 40);
        v23 = *(v11 + 56);
        *v16 = *(v11 + 32);
        *(v16 + 8) = v12;
        *(v16 + 16) = v13;
        *(v16 + 24) = v23;
        *(v16 + 40) = v14;
        v24 = *(v16 + 48);
        *(v16 + 48) = v15;

        sub_100004698(v17, v18);
        sub_10001F588();
        return v8;
      }
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100002B80(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  v12 = sub_1000029A0(v10);

  (*(v6 + 8))(v9, v5);

  return v12;
}

double sub_100002C94()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v1 + 8))(v4, v0);
  return 44.0;
}

id sub_100002D74(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_100004410(v4);

  return v6;
}

void sub_100002DD4(void *a1, os_log_type_t a2)
{
  v3 = v2;
  v6 = IndexPath.row.getter();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = qword_100037A50;
  v8 = *&v3[qword_100037A50];
  if (v6 >= *(v8 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(v8 + 56 * v6 + 80) == 1)
  {
    a2 = static os_log_type_t.debug.getter();
    if (qword_100037840 == -1)
    {
LABEL_5:
      v9 = qword_100039188;
      if (os_log_type_enabled(qword_100039188, a2))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        v12 = *&v3[qword_100037A40];
        *(v10 + 4) = v12;
        *v11 = v12;
        v13 = v12;
        _os_log_impl(&_mh_execute_header, v9, a2, "Hiding notification %@", v10, 0xCu);
        sub_100004630(v11);
      }

      [*&v3[qword_100037A40] setHidden:1];
      goto LABEL_21;
    }

LABEL_26:
    swift_once();
    goto LABEL_5;
  }

  v14 = [v3 view];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v14 window];

  if (v16)
  {
    v17 = [v16 windowScene];

    if (v17)
    {
      v18 = IndexPath.row.getter();
      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v19 = *&v3[v7];
        if (v18 < *(v19 + 16))
        {
          v20 = v19 + 56 * v18;
          v22 = *(v20 + 64);
          v21 = *(v20 + 72);
          type metadata accessor for CAFUIRequestContentManager();

          v23 = static CAFUIRequestContentManager.inputStreamIdentifier(from:)();
          v25 = v24;
          v26 = *&v3[qword_100037A40];
          v27 = IndexPath.row.getter();
          if ((v27 & 0x8000000000000000) == 0)
          {
            if (v27 <= 0xFF)
            {
              [v26 setUserAction:v27];
              v28 = HIBYTE(v21) & 0xF;
              if ((v21 & 0x2000000000000000) == 0)
              {
                v28 = v22 & 0xFFFFFFFFFFFFLL;
              }

              if (v28)
              {
                v29 = *&v3[qword_100037A48];
                v30 = swift_allocObject();
                v30[2] = v22;
                v30[3] = v21;
                v30[4] = v23;
                v30[5] = v25;
                v30[6] = v3;

                v31 = v3;
                dispatch thunk of CAFUIRequestContentManager.open(contentURLString:in:completion:)();

                goto LABEL_21;
              }

              static os_log_type_t.debug.getter();
              if (qword_100037840 == -1)
              {
LABEL_20:
                os_log(_:dso:log:_:_:)();

                goto LABEL_21;
              }

LABEL_31:
              swift_once();
              goto LABEL_20;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_29;
    }
  }

LABEL_21:
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectRowAtIndexPath:isa animated:1];
}

void sub_1000031A8(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = static os_log_type_t.debug.getter();
  if (a1)
  {
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v13 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10001A194(a2, a3, &v21);
      _os_log_impl(&_mh_execute_header, v13, v12, "Opened url %s successfully", v14, 0xCu);
      sub_10000458C(v15);
    }

    if (a5)
    {
      v16 = (a6 + qword_100037A60);
      v17 = *(a6 + qword_100037A60 + 8);
      *v16 = a4;
      v16[1] = a5;

      sub_1000034E0();
    }
  }

  else
  {
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v18 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v12))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10001A194(a2, a3, &v21);
      _os_log_impl(&_mh_execute_header, v18, v12, "Opening url %s was not successful", v19, 0xCu);
      sub_10000458C(v20);
    }
  }
}

uint64_t sub_1000033E4(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  sub_100002DD4(v10, v9);

  return (*(v6 + 8))(v9, v5);
}

void sub_1000034E0()
{
  v1 = v0;
  v2 = type metadata accessor for CAFUIPunchthroughState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[qword_100037A60 + 8] && ((*(v3 + 104))(v6, enum case for CAFUIPunchthroughState.presented(_:), v2), v7 = CAFUIPunchthroughState.buttonForCurrentState(title:)(0), (*(v3 + 8))(v6, v2), v7))
  {
    [v7 addTarget:v1 action:"dismissPT" forControlEvents:64];
    v8 = [v1 navigationItem];
    v9 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v7];
    [v8 setRightBarButtonItem:v9];
  }

  else
  {
    v9 = [v1 navigationItem];
    [v9 setRightBarButtonItem:0];
  }
}

uint64_t sub_1000036A4()
{
  v1 = *&v0[qword_100037A60 + 8];
  if (v1)
  {
    v2 = *&v0[qword_100037A60];
    v3 = *&v0[qword_100037A60 + 8];

    v4 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v5 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_10001A194(v2, v1, &v11);
      _os_log_impl(&_mh_execute_header, v5, v4, "Requesting dismissal of PT with identifier %s", v6, 0xCu);
      sub_10000458C(v7);
    }

    v8 = *&v0[qword_100037A48];
    *(swift_allocObject() + 16) = v0;
    v9 = v0;
    dispatch thunk of CAFUIRequestContentManager.dismiss(identifier:completion:)();
  }

  else
  {
    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }
}

void sub_1000038E4(char a1, uint64_t a2)
{
  static os_log_type_t.debug.getter();
  if (a1)
  {
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v4 = (a2 + qword_100037A60);
    v5 = *(a2 + qword_100037A60 + 8);
    *v4 = 0;
    v4[1] = 0;

    sub_1000034E0();
  }

  else
  {
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }
}

void sub_100003A08(void *a1)
{
  v1 = a1;
  sub_1000036A4();
}

uint64_t sub_100003A54(char *a1)
{
  v2 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v13 - v5;
  sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = *&a1[qword_100037A40];
  v8 = a1;
  v9 = sub_100002244();
  v10 = *&v8[qword_100037A50];
  *&v8[qword_100037A50] = v9;

  v11 = CAFUITableViewController.tableView.getter();
  [v11 reloadData];

  return (*(v3 + 8))(v6, v2);
}

void sub_100003B9C(char *a1)
{
  v1 = *&a1[qword_100037A40];
  v5 = a1;
  v2 = sub_100002244();
  v3 = *&v5[qword_100037A50];
  *&v5[qword_100037A50] = v2;

  v4 = CAFUITableViewController.tableView.getter();
  [v4 reloadData];
}

void sub_100003C24(char *a1)
{
  v1 = *&a1[qword_100037A40];
  v5 = a1;
  v2 = sub_100002244();
  v3 = *&v5[qword_100037A50];
  *&v5[qword_100037A50] = v2;

  v4 = CAFUITableViewController.tableView.getter();
  [v4 reloadData];
}

void sub_100003CAC(char *a1)
{
  v1 = *&a1[qword_100037A40];
  v5 = a1;
  v2 = sub_100002244();
  v3 = *&v5[qword_100037A50];
  *&v5[qword_100037A50] = v2;

  v4 = CAFUITableViewController.tableView.getter();
  [v4 reloadData];
}

void sub_100003D34(_BYTE *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 && (a1[qword_100037A58] & 1) == 0)
  {
    a1[qword_100037A58] = 1;
    v6 = a1;
    v5 = [v6 navigationController];
  }
}

uint64_t sub_100003E00()
{
  v1 = *(v0 + qword_100037A48);

  v2 = *(v0 + qword_100037A50);

  v3 = *(v0 + qword_100037A60 + 8);
}

id sub_100003E64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VSNotificationDetailViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003E9C(uint64_t a1)
{
  v2 = *(a1 + qword_100037A48);

  v3 = *(a1 + qword_100037A50);

  v4 = *(a1 + qword_100037A60 + 8);
}

__n128 sub_100003F14(uint64_t a1, uint64_t a2)
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

uint64_t sub_100003F30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100003F78(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100003FD8(uint64_t *a1, uint64_t *a2)
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

char *sub_100004020(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003FD8(&qword_100037AB8, &unk_100023C30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000418C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100003FD8(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003FD8(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1000042C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003FD8(&qword_100038220, &qword_100024120);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1000043C8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100004410(void *a1)
{
  type metadata accessor for VSNotificationHeaderView(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v4];

  if (v5)
  {
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *(v1 + qword_100037A40);
      v8 = *(v6 + qword_100038B70);
      *(v6 + qword_100038B70) = v7;
      v9 = v6;
      v10 = v7;

      sub_100020088();
      return v9;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000454C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000458C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000045D8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100004630(uint64_t a1)
{
  v2 = sub_100003FD8(&unk_100037B00, qword_100024000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004698(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100004700@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsNotificationView(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = *(*(type metadata accessor for NotificationModel() - 8) + 64);
  __chkstk_darwin();
  (*(v7 + 16))(&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  NotificationView.init(model:)();
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(sub_100003FD8(&qword_100037E80, &qword_100023E50) + 36));
  v10 = sub_100003FD8(&qword_100037E88, &qword_100023E58);
  v11 = v9 + *(v10 + 28);
  static ActionConfiguration.defaultActionCenter.getter();
  *v9 = KeyPath;
  v12 = swift_getKeyPath();
  v13 = (a1 + *(sub_100003FD8(&qword_100037E90, &qword_100023E90) + 36));
  v14 = v13 + *(v10 + 28);
  static ActionConfiguration.defaultAlertCenter.getter();
  *v13 = v12;
  v15 = swift_getKeyPath();
  v16 = (a1 + *(sub_100003FD8(&qword_100037E98, &qword_100023EC8) + 36));
  v17 = v16 + *(sub_100003FD8(&qword_100037EA0, &qword_100023ED0) + 28);
  static BannerConfiguration.defaultCenter.getter();
  *v16 = v15;
  v18 = swift_getKeyPath();
  v19 = (a1 + *(sub_100003FD8(&qword_100037EA8, &qword_100023F08) + 36));
  v20 = v19 + *(sub_100003FD8(&qword_100037EB0, &qword_100023F10) + 28);
  static NoticeConfiguration.defaultCenter.getter();
  *v19 = v18;
  v21 = swift_getKeyPath();
  v22 = (a1 + *(sub_100003FD8(&qword_100037EB8, &qword_100023F48) + 36));
  v23 = v22 + *(sub_100003FD8(&qword_100037EC0, &qword_100023F50) + 28);
  static FancyNotificationConfiguration.default.getter();
  *v22 = v21;
  v24 = swift_getKeyPath();
  v25 = a1 + *(sub_100003FD8(&qword_100037EC8, &qword_100023F88) + 36);
  *v25 = v24;
  *(v25 + 8) = 1;
  v26 = swift_getKeyPath();
  sub_10000B030(v1, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v28 = swift_allocObject();
  sub_10000B180(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  v29 = (a1 + *(sub_100003FD8(&qword_100037ED0, &qword_100023FC0) + 36));
  v30 = *(sub_100003FD8(&qword_100037ED8, &qword_100023FC8) + 28);
  result = SymbolImageProvider.init(_:)();
  *v29 = v26;
  return result;
}

uint64_t sub_100004AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100004B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v7 = a3 + *(type metadata accessor for SettingsNotificationView(0) + 20);
    v8 = *(v7 + 8);
    return (*v7)(a1, a2);
  }

  else
  {
    v10 = sub_100003FD8(&qword_100037EE0, &qword_100023FD0);
    v11 = *(*(v10 - 8) + 56);

    return v11(a4, 1, 1, v10);
  }
}

uint64_t sub_100004C70()
{
  v0 = type metadata accessor for FancyNotificationConfiguration();
  v60 = *(v0 - 8);
  v61 = v0;
  v1 = *(v60 + 64);
  __chkstk_darwin();
  v59 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = (*(*(sub_100003FD8(&qword_100037F98, &qword_100024020) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v57 - v4;
  v6 = type metadata accessor for NotificationModel.MinimalNotificationModel();
  v72 = *(v6 - 8);
  v7 = *(v72 + 64);
  __chkstk_darwin();
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NoticeConfiguration();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  __chkstk_darwin();
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BannerConfiguration();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  __chkstk_darwin();
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ActionConfiguration();
  v68 = *(v17 - 8);
  v69 = v17;
  v18 = *(v68 + 64);
  __chkstk_darwin();
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100003FD8(&qword_100037FA0, &qword_100024028);
  v21 = (*(*(v58 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v23 = &v57 - v22;
  v62 = type metadata accessor for NotificationModel.InferredNotificationModel();
  v67 = *(v62 - 8);
  v24 = *(v67 + 64);
  __chkstk_darwin();
  v66 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for NotificationModel.Style();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin();
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  NotificationModel.style.getter();
  v31 = (*(v27 + 88))(v30, v26);
  if (v31 == enum case for NotificationModel.Style.minimal(_:))
  {
    (*(v27 + 96))(v30, v26);
    (*(v72 + 32))(v9, v30, v6);
    NotificationModel.MinimalNotificationModel.trailingButtonConfiguration.getter();
    v32 = type metadata accessor for NotificationModel.TrailingButtonConfiguration();
    v33 = (*(*(v32 - 8) + 48))(v5, 1, v32);
    sub_10000B6D0(v5, &qword_100037F98, &qword_100024020);
    v35 = v70;
    v34 = v71;
    if (v33 == 1 && (static BannerConfiguration.defaultCenter.getter(), v36 = BannerConfiguration.includeCloseButtonAffordance.getter(), (*(v35 + 8))(v16, v34), (v36 & 1) == 0))
    {
      v40 = v63;
      static NoticeConfiguration.defaultCenter.getter();
      v37 = NoticeConfiguration.maxNotificationSize.getter();
      (*(v64 + 8))(v40, v65);
    }

    else
    {
      static BannerConfiguration.defaultCenter.getter();
      v37 = BannerConfiguration.maxNotificationSize.getter();
      (*(v35 + 8))(v16, v34);
    }

    v41 = *(v72 + 8);
    v42 = v9;
    v43 = v6;
    goto LABEL_12;
  }

  if (v31 == enum case for NotificationModel.Style.modalAlert(_:))
  {
    (*(v27 + 96))(v30, v26);
    static ActionConfiguration.defaultAlertCenter.getter();
    v37 = ActionConfiguration.maxNotificationSize.getter();
    (*(v68 + 8))(v20, v69);
    v38 = type metadata accessor for NotificationModel.ModalAlertModel();
LABEL_9:
    (*(*(v38 - 8) + 8))(v30, v38);
    return v37;
  }

  if (v31 == enum case for NotificationModel.Style.fancyActions(_:))
  {
    (*(v27 + 96))(v30, v26);
    v39 = v59;
    static FancyNotificationConfiguration.default.getter();
    v37 = FancyNotificationConfiguration.maxNotificationSize.getter();
    (*(v60 + 8))(v39, v61);
    v38 = type metadata accessor for NotificationModel.FancyModel();
    goto LABEL_9;
  }

  if (v31 == enum case for NotificationModel.Style.inferred(_:))
  {
    (*(v27 + 96))(v30, v26);
    v45 = v66;
    v46 = v62;
    (*(v67 + 32))(v66, v30, v62);
    NotificationModel.InferredNotificationModel.buttonType.getter();
    v47 = type metadata accessor for NotificationModel.ButtonType();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v23, 1, v47) == 1)
    {
      static BannerConfiguration.defaultCenter.getter();
      v49 = BannerConfiguration.includeCloseButtonAffordance.getter();
      v50 = v71;
      v51 = *(v70 + 8);
      v51(v16, v71);
      if (v49)
      {
        static BannerConfiguration.defaultCenter.getter();
        v37 = BannerConfiguration.maxNotificationSize.getter();
        v51(v16, v50);
      }

      else
      {
        v56 = v63;
        static NoticeConfiguration.defaultCenter.getter();
        v37 = NoticeConfiguration.maxNotificationSize.getter();
        (*(v64 + 8))(v56, v65);
      }

      v42 = v66;
      v41 = *(v67 + 8);
      goto LABEL_25;
    }

    v52 = (*(v48 + 88))(v23, v47);
    if (v52 == enum case for NotificationModel.ButtonType.actions(_:))
    {
      (*(v48 + 8))(v23, v47);
      v53 = NotificationModel.InferredNotificationModel.blocking.getter();
      v54 = (v68 + 8);
      v55 = (v67 + 8);
      if (v53)
      {
        static ActionConfiguration.defaultAlertCenter.getter();
      }

      else
      {
        static ActionConfiguration.defaultActionCenter.getter();
      }

      v37 = ActionConfiguration.maxNotificationSize.getter();
      (*v54)(v20, v69);
      (*v55)(v45, v46);
      return v37;
    }

    if (v52 == enum case for NotificationModel.ButtonType.symbolButton(_:))
    {
      (*(v48 + 8))(v23, v47);
      static BannerConfiguration.defaultCenter.getter();
      v37 = BannerConfiguration.maxNotificationSize.getter();
      (*(v70 + 8))(v16, v71);
      v41 = *(v67 + 8);
      v42 = v45;
LABEL_25:
      v43 = v46;
LABEL_12:
      v41(v42, v43);
      return v37;
    }
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_1000055F8(uint64_t a1)
{
  *(a1 + qword_100039160 + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10000566C()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationModel.FancyModel();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  __chkstk_darwin(v2);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NotificationModel.MinimalNotificationModel();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NotificationModel.InferredNotificationModel();
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  __chkstk_darwin(v9);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NotificationModel.Style();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v39 = &v39 - v19;
  __chkstk_darwin(v18);
  v21 = &v39 - v20;
  v22 = type metadata accessor for NotificationModel();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = qword_100039158;
  swift_beginAccess();
  (*(v23 + 16))(v26, v1 + v27, v22);
  NotificationModel.style.getter();
  (*(v23 + 8))(v26, v22);
  v28 = (*(v13 + 88))(v21, v12);
  if (v28 != enum case for NotificationModel.Style.minimal(_:))
  {
    if (v28 == enum case for NotificationModel.Style.modalAlert(_:))
    {
      (*(v13 + 16))(v17, v21, v12);
      (*(v13 + 96))(v17, v12);
      v32 = type metadata accessor for NotificationModel.ModalAlertModel();
      (*(*(v32 - 8) + 8))(v17, v32);
      return (*(v13 + 8))(v21, v12);
    }

    if (v28 == enum case for NotificationModel.Style.fancyActions(_:))
    {
      (*(v13 + 16))(v17, v21, v12);
      (*(v13 + 96))(v17, v12);
      v34 = v43;
      v33 = v44;
      v35 = v45;
      (*(v44 + 32))(v43, v17, v45);
      v36 = NotificationModel.FancyModel.dismissalHandler.getter();
    }

    else
    {
      if (v28 != enum case for NotificationModel.Style.inferred(_:))
      {
        return (*(v13 + 8))(v21, v12);
      }

      v38 = v39;
      (*(v13 + 16))(v39, v21, v12);
      (*(v13 + 96))(v38, v12);
      v34 = v40;
      v33 = v41;
      v35 = v42;
      (*(v41 + 32))(v40, v38, v42);
      if (NotificationModel.InferredNotificationModel.blocking.getter())
      {
        goto LABEL_8;
      }

      v36 = NotificationModel.InferredNotificationModel.dismissalHandler.getter();
    }

    v36();

LABEL_8:
    (*(v33 + 8))(v34, v35);
    return (*(v13 + 8))(v21, v12);
  }

  (*(v13 + 16))(v17, v21, v12);
  (*(v13 + 96))(v17, v12);
  v30 = v46;
  v29 = v47;
  (*(v46 + 32))(v8, v17, v47);
  v31 = NotificationModel.MinimalNotificationModel.dismissalHandler.getter();
  v31();

  (*(v30 + 8))(v8, v29);
  return (*(v13 + 8))(v21, v12);
}

Class sub_100005C44()
{
  v1 = v0;
  v2 = sub_100003FD8(&qword_100037F98, &qword_100024020);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v51 = &v45 - v4;
  v5 = type metadata accessor for NotificationModel.MinimalNotificationModel();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  __chkstk_darwin(v5);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003FD8(&qword_100037FA0, &qword_100024028);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v47 = &v45 - v10;
  v11 = type metadata accessor for NotificationModel.InferredNotificationModel();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  __chkstk_darwin(v11);
  v46 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NotificationModel.Style();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v45 - v21;
  __chkstk_darwin(v20);
  v24 = &v45 - v23;
  v25 = type metadata accessor for NotificationModel();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = qword_100039158;
  swift_beginAccess();
  (*(v26 + 16))(v29, v1 + v30, v25);
  NotificationModel.style.getter();
  (*(v26 + 8))(v29, v25);
  v31 = (*(v15 + 88))(v24, v14);
  if (v31 == enum case for NotificationModel.Style.minimal(_:))
  {
    (*(v15 + 16))(v19, v24, v14);
    (*(v15 + 96))(v19, v14);
    v33 = v52;
    v32 = v53;
    v34 = v50;
    (*(v52 + 32))(v50, v19, v53);
    v35 = v51;
    NotificationModel.MinimalNotificationModel.trailingButtonConfiguration.getter();
    v36 = type metadata accessor for NotificationModel.TrailingButtonConfiguration();
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
    {
      sub_10000B6D0(v35, &qword_100037F98, &qword_100024020);
      sub_1000043C8(0, &qword_100037FA8, NSNumber_ptr);
      v37.super.super.isa = NSNumber.init(integerLiteral:)(8).super.super.isa;
      (*(v33 + 8))(v34, v32);
LABEL_7:
      (*(v15 + 8))(v24, v14);
      return v37.super.super.isa;
    }

    (*(v33 + 8))(v34, v32);
    v43 = &qword_100037F98;
    v44 = &qword_100024020;
LABEL_10:
    sub_10000B6D0(v35, v43, v44);
    goto LABEL_11;
  }

  if (v31 == enum case for NotificationModel.Style.inferred(_:))
  {
    (*(v15 + 16))(v22, v24, v14);
    (*(v15 + 96))(v22, v14);
    v39 = v48;
    v38 = v49;
    v40 = v46;
    (*(v48 + 32))(v46, v22, v49);
    v35 = v47;
    NotificationModel.InferredNotificationModel.buttonType.getter();
    v41 = type metadata accessor for NotificationModel.ButtonType();
    if ((*(*(v41 - 8) + 48))(v35, 1, v41) == 1)
    {
      sub_10000B6D0(v35, &qword_100037FA0, &qword_100024028);
      sub_1000043C8(0, &qword_100037FA8, NSNumber_ptr);
      v37.super.super.isa = NSNumber.init(integerLiteral:)(8).super.super.isa;
      (*(v39 + 8))(v40, v38);
      goto LABEL_7;
    }

    (*(v39 + 8))(v40, v38);
    v43 = &qword_100037FA0;
    v44 = &qword_100024028;
    goto LABEL_10;
  }

LABEL_11:
  (*(v15 + 8))(v24, v14);
  sub_1000043C8(0, &qword_100037FA8, NSNumber_ptr);
  return NSNumber.init(integerLiteral:)(60).super.super.isa;
}

uint64_t sub_1000062B8()
{
  v1 = *(v0 + qword_100037C30 + 8);

  v2 = qword_100039158;
  v3 = type metadata accessor for NotificationModel();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v0 + qword_100039160;

  return sub_10000B6A8(v4);
}

id sub_100006344()
{
  v1 = static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  v2 = qword_100039188;
  if (os_log_type_enabled(qword_100039188, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v13 = v4;
    *v3 = 136315138;
    v5 = v0;
    v6 = [v5 description];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = sub_10001A194(v7, v9, &v13);

    *(v3 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v1, "[NotificationManager] deallocating NotificationHostingController %s", v3, 0xCu);
    sub_10000458C(v4);
  }

  v11 = type metadata accessor for NotificationHostingController(0);
  v14.receiver = v0;
  v14.super_class = v11;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t sub_1000064EC(uint64_t a1)
{
  v2 = *(a1 + qword_100037C30 + 8);

  v3 = qword_100039158;
  v4 = type metadata accessor for NotificationModel();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  v5 = a1 + qword_100039160;

  return sub_10000B6A8(v5);
}

id sub_1000065DC()
{
  sub_10000B53C();
  if (v0)
  {
    v1 = String._bridgeToObjectiveC()();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_100006630(uint64_t a1)
{
  v2 = type metadata accessor for NotificationModel();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_100039158;
  swift_beginAccess();
  (*(v3 + 16))(v6, a1 + v7, v2);
  NotificationModel.id.getter();
  (*(v3 + 8))(v6, v2);
  v8 = String._bridgeToObjectiveC()();

  return v8;
}

double sub_100006770(void *a1)
{
  v1 = a1;
  sub_1000067B4();
  v3 = v2;

  return v3;
}

void sub_1000067B4()
{
  v1 = v0;
  v2 = *(*(type metadata accessor for SettingsNotificationView(0) - 8) + 64);
  __chkstk_darwin();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  [v5 intrinsicContentSize];
  v8 = v7;

  if (fabs(v8) == INFINITY)
  {
    goto LABEL_5;
  }

  v9 = [v1 view];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  [v9 intrinsicContentSize];
  v12 = v11;

  if (fabs(v12) != INFINITY)
  {
    v16 = [v1 view];
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_5:
  static os_log_type_t.error.getter();
  sub_1000043C8(0, &qword_100037EE8, OS_os_log_ptr);
  v13 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  dispatch thunk of UIHostingController.rootView.getter();
  sub_100004C70();
  v15 = v14;
  sub_10000B64C(v4);
  if ((v15 & 1) == 0)
  {
    return;
  }

  v16 = [v1 view];
  if (v16)
  {
LABEL_10:
    v17 = v16;
    [v16 intrinsicContentSize];

    return;
  }

  __break(1u);
}

uint64_t sub_1000069D0(void *a1)
{
  v1 = a1;
  v2 = sub_100006A04();

  return v2 & 1;
}

uint64_t sub_100006A04()
{
  v1 = type metadata accessor for NotificationModel.InferredNotificationModel();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  (__chkstk_darwin)();
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NotificationModel.Style();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = type metadata accessor for NotificationModel();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v38 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  v18 = qword_100039158;
  swift_beginAccess();
  v19 = v12[2];
  v40 = v0;
  v37 = v19;
  v19(v17, v0 + v18, v11);
  NotificationModel.style.getter();
  v20 = v12[1];
  v21 = v4;
  v20(v17, v11);
  v41 = v5;
  v22 = *(v5 + 88);
  if (v22(v10, v21) == enum case for NotificationModel.Style.modalAlert(_:))
  {
    (*(v41 + 96))(v10, v21);
    v23 = type metadata accessor for NotificationModel.ModalAlertModel();
    (*(*(v23 - 8) + 8))(v10, v23);
    v24 = 0;
  }

  else
  {
    v33 = *(v41 + 8);
    v33(v10, v21);
    v25 = v40 + v18;
    v26 = v38;
    v37(v38, v25, v11);
    v27 = v39;
    NotificationModel.style.getter();
    v20(v26, v11);
    if (v22(v27, v21) == enum case for NotificationModel.Style.inferred(_:))
    {
      (*(v41 + 96))(v27, v21);
      v29 = v34;
      v28 = v35;
      v30 = v36;
      (*(v35 + 32))(v34, v27, v36);
      v31 = NotificationModel.InferredNotificationModel.blocking.getter();
      (*(v28 + 8))(v29, v30);
      v24 = v31 ^ 1;
    }

    else
    {
      v33(v27, v21);
      v24 = 1;
    }
  }

  return v24 & 1;
}

uint64_t sub_100006E1C(uint64_t a1, uint64_t a2)
{
  v5 = static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  v6 = qword_100039188;
  if (os_log_type_enabled(qword_100039188, v5))
  {
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v7 = 136315394;
    swift_unknownObjectRetain();
    sub_100003FD8(&qword_100037F90, &qword_100024018);
    v8 = String.init<A>(describing:)();
    v10 = sub_10001A194(v8, v9, &v19);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = v2;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = a2;
    v16 = v15;

    v17 = sub_10001A194(v13, v16, &v19);
    a2 = v14;

    *(v7 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v5, "[NotificationManager] presentable: %s did disappear. Self: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10000A13C(a1, a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10000701C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = a1;
  sub_100006E1C(a3, a4);
  swift_unknownObjectRelease();
}

uint64_t AutoSettingsNotificationManager.__allocating_init(carManager:settingsCache:carSession:assetManager:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  AutoSettingsNotificationManager.init(carManager:settingsCache:carSession:assetManager:)(a1, a2, a3, a4);
  return v11;
}

void AutoSettingsNotificationManager.init(carManager:settingsCache:carSession:assetManager:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v71 = type metadata accessor for CAFNotificationSource.Destination();
  v68 = *(v71 - 8);
  v10 = *(v68 + 64);
  __chkstk_darwin(v71);
  v64 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Zone.ZoneRegion();
  v63 = *(v66 - 8);
  v12 = *(v63 + 64);
  __chkstk_darwin(v66);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v61 - v17;
  v70 = sub_100003FD8(&qword_100037BD8, &qword_100023C88);
  v67 = *(v70 - 8);
  v19 = *(v67 + 64);
  __chkstk_darwin(v70);
  v65 = &v61 - v20;
  *(v5 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification) = 0;
  *(v5 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_cancellable) = 0;
  v21 = OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_assetManager;
  *(v5 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_assetManager) = 0;
  v5[2] = a1;
  v72 = a2;
  v22 = a2;
  v23 = a4;
  sub_10000B730(v22, v5 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_settingsCache, &qword_100037BD0, &qword_100023C80);
  v24 = type metadata accessor for CAFUIRequestContentManager();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = a1;
  v28 = a3;
  v5[4] = CAFUIRequestContentManager.init(session:)();
  v29 = type metadata accessor for CAFNotificationDataSources();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v62 = v27;
  *(v5 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_dataSources) = CAFNotificationDataSources.init(displayID:carManager:)();
  v32 = *(v5 + v21);
  *(v5 + v21) = v23;
  v69 = v23;

  v75 = 0;
  v76 = 0xE000000000000000;
  v33 = [objc_opt_self() mainBundle];
  v34 = [v33 bundleIdentifier];

  if (v34)
  {
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v73 = v35;
  v74 = v37;
  sub_100003FD8(&qword_100037C00, &qword_100023C90);
  v38 = Optional<A>.description.getter();
  v40 = v39;

  v41._countAndFlagsBits = v38;
  v41._object = v40;
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0x72656E6E61622ELL;
  v42._object = 0xE700000000000000;
  String.append(_:)(v42);
  v43 = String._bridgeToObjectiveC()();

  v44 = [objc_opt_self() bannerSourceForDestination:1 forRequesterIdentifier:v43];

  if (v44)
  {
    v5[3] = v44;
    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v45 = *(v5 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_dataSources);
    sub_10000B730(v72, v18, &qword_100037BD0, &qword_100023C80);
    v46 = type metadata accessor for CAFUISettingsCache();
    v47 = *(v46 - 8);
    v48 = (*(v47 + 48))(v18, 1, v46);
    v61 = v28;
    if (v48 == 1)
    {
      sub_10000B6D0(v18, &qword_100037BD0, &qword_100023C80);
    }

    else
    {
      CAFUISettingsCache.settingsByIdentifiers.getter();
      (*(v47 + 8))(v18, v46);
    }

    v49 = v63;
    v50 = v14;
    v51 = v66;
    (*(v63 + 104))(v14, enum case for Zone.ZoneRegion.zone1(_:), v66);
    v52 = v68;
    v53 = v64;
    v54 = v71;
    (*(v68 + 104))(v64, enum case for CAFNotificationSource.Destination.centerConsole(_:), v71);
    swift_allocObject();
    swift_weakInit();

    v55 = dispatch thunk of CAFNotificationDataSources.notificationSource(settingsByIdentifier:zoneRegion:destination:actionHandler:)();

    (*(v52 + 8))(v53, v54);
    (*(v49 + 8))(v50, v51);

    v75 = v55;
    type metadata accessor for CAFNotificationSource();
    sub_10000B26C(&qword_100037C08, &type metadata accessor for CAFNotificationSource);
    v56 = v65;
    CAFDataSourcePublisher.init(dataSource:)();
    sub_10000BD80(&qword_100037C10, &qword_100037BD8, &qword_100023C88);
    v57 = v70;
    v58 = Publisher.eraseToAnyPublisher()();
    (*(v67 + 8))(v56, v57);
    v75 = v58;
    swift_allocObject();
    swift_weakInit();

    sub_100003FD8(&qword_100037C18, &qword_100023C98);
    sub_10000BD80(&unk_100037C20, &qword_100037C18, &qword_100023C98);
    v59 = Publisher<>.sink(receiveValue:)();

    sub_10000B6D0(v72, &qword_100037BD0, &qword_100023C80);

    v60 = *(v5 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_cancellable);
    *(v5 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_cancellable) = v59;
  }

  else
  {
    __break(1u);
  }
}

void sub_100007954(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [objc_opt_self() sharedApplication];
    v7 = [v6 delegate];

    if (v7)
    {
      type metadata accessor for AppDelegate();
      swift_dynamicCastClassUnconditional();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_unknownObjectRelease();
      if (v11 && (v8 = [v11 windowScene], v11, v8))
      {
        v9 = *(v5 + 32);
        v10 = swift_allocObject();
        *(v10 + 16) = a1;
        *(v10 + 24) = a2;

        dispatch thunk of CAFUIRequestContentManager.open(contentURLString:in:completion:)();
      }

      else
      {
        static os_log_type_t.debug.getter();
        if (qword_100037840 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100007B8C(char a1, uint64_t a2, unint64_t a3)
{
  v6 = static os_log_type_t.debug.getter();
  if (a1)
  {
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v7 = qword_100039188;
    result = os_log_type_enabled(qword_100039188, v6);
    if (result)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_10001A194(a2, a3, &v12);
      v11 = "[NotificationManager] Opened url %s successfully";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, v6, v11, v9, 0xCu);
      sub_10000458C(v10);
    }
  }

  else
  {
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v7 = qword_100039188;
    result = os_log_type_enabled(qword_100039188, v6);
    if (result)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_10001A194(a2, a3, &v12);
      v11 = "[NotificationManager] Opening url %s was not successful";
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_100007D44(uint64_t a1)
{
  v2 = sub_100003FD8(&qword_100037FB0, &qword_100024030);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v11 = qword_100039188;
    sub_10000B730(a1, v8, &qword_100037FB0, &qword_100024030);
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v21 = v13;
      *v12 = 136315138;
      sub_10000B26C(&qword_100037F68, &type metadata accessor for NotificationModel);
      v14 = Optional<A>.description.getter();
      v16 = v15;
      sub_10000B6D0(v8, &qword_100037FB0, &qword_100024030);
      v17 = sub_10001A194(v14, v16, &v21);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v10, "[NotificationManager] New notificationModel received %s", v12, 0xCu);
      sub_10000458C(v13);
    }

    else
    {
      sub_10000B6D0(v8, &qword_100037FB0, &qword_100024030);
    }

    sub_10000B730(a1, v6, &qword_100037FB0, &qword_100024030);
    v18 = type metadata accessor for NotificationModel();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v6, 1, v18) == 1)
    {
      sub_10000B6D0(v6, &qword_100037FB0, &qword_100024030);
      v21 = 0u;
      v22 = 0u;
    }

    else
    {
      *(&v22 + 1) = v18;
      v20 = sub_10000B798(&v21);
      (*(v19 + 32))(v20, v6, v18);
    }

    sub_1000080A0(&v21);

    return sub_10000B6D0(&v21, &qword_1000387F0, &qword_100023CA0);
  }

  return result;
}

void sub_1000080A0(uint64_t a1)
{
  v2 = v1;
  v98 = a1;
  v3 = type metadata accessor for SettingsNotificationView(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003FD8(&qword_100037FB0, &qword_100024030);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = &v87 - v12;
  v13 = type metadata accessor for NotificationModel();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v16 = __chkstk_darwin(v13);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v87 - v20;
  v22 = __chkstk_darwin(v19);
  v92 = &v87 - v23;
  __chkstk_darwin(v22);
  v94 = &v87 - v24;
  v100 = objc_opt_self();
  v25 = [v100 sharedApplication];
  v26 = [v25 delegate];

  if (!v26)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v88 = v18;
  v91 = v21;
  v99 = type metadata accessor for AppDelegate();
  v27 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
  v28 = v27;
  swift_unknownObjectRelease();
  if (v27)
  {
    v29 = sub_100014588();
  }

  else
  {
    v29 = 0;
  }

  v30 = [v100 sharedApplication];
  v31 = [v30 delegate];

  if (!v31)
  {
    goto LABEL_46;
  }

  v89 = v6;
  v90 = v3;
  v32 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
  v33 = v32;
  swift_unknownObjectRelease();
  if (v32)
  {
    v34 = sub_100014AA0();
  }

  else
  {
    v34 = 0;
  }

  if (v29)
  {
    v35 = v29;
    v36 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v37 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v36))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v97 = v29;
      v93 = v13;
      v95 = v2;
      v40 = v39;
      v101[0] = v39;
      *v38 = 136315138;
      v41 = CAFRequestTemporaryContent.settingsDescription.getter();
      v43 = v14;
      v44 = v34;
      v45 = sub_10001A194(v41, v42, v101);

      *(v38 + 4) = v45;
      v34 = v44;
      v14 = v43;
      _os_log_impl(&_mh_execute_header, v37, v36, "[NotificationManager] updateNotification. requestContent: %s", v38, 0xCu);
      sub_10000458C(v40);
      v2 = v95;
      v13 = v93;
      v29 = v97;
    }
  }

  if (v34)
  {
    v46 = v34;
    v47 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v48 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v47))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v97 = v29;
      v93 = v13;
      v95 = v2;
      v51 = v50;
      v101[0] = v50;
      *v49 = 136315138;
      v52 = CAFRequestContent.settingsDescription.getter();
      v54 = v11;
      v55 = sub_10001A194(v52, v53, v101);

      *(v49 + 4) = v55;
      v11 = v54;
      _os_log_impl(&_mh_execute_header, v48, v47, "[NotificationManager] updateNotification. requestContent: %s", v49, 0xCu);
      sub_10000458C(v51);
      v2 = v95;
      v13 = v93;
      v29 = v97;
    }
  }

  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v56 = *(v2 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification);
  if (!v56)
  {
    sub_10000B730(v98, v101, &qword_1000387F0, &qword_100023CA0);
    if (v102)
    {
      v69 = swift_dynamicCast();
      (*(v14 + 7))(v11, v69 ^ 1u, 1, v13);
      if ((*(v14 + 6))(v11, 1, v13) != 1)
      {
        v77 = v88;
        (*(v14 + 4))(v88, v11, v13);
        static os_log_type_t.debug.getter();
        os_log(_:dso:log:_:_:)();
        sub_100008FA8(v77);

        (*(v14 + 1))(v77, v13);
        return;
      }
    }

    else
    {

      sub_10000B6D0(v101, &qword_1000387F0, &qword_100023CA0);
      (*(v14 + 7))(v11, 1, 1, v13);
    }

    sub_10000B6D0(v11, &qword_100037FB0, &qword_100024030);
    return;
  }

  sub_10000B730(v98, v101, &qword_1000387F0, &qword_100023CA0);
  v57 = v102;
  v58 = v56;
  if (!v57)
  {
    sub_10000B6D0(v101, &qword_1000387F0, &qword_100023CA0);
    v59 = v96;
    (*(v14 + 7))(v96, 1, 1, v13);
LABEL_33:
    sub_10000B6D0(v59, &qword_100037FB0, &qword_100024030);
    v70 = [v100 sharedApplication];
    v71 = [v70 delegate];

    if (v71)
    {
      v72 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
      v73 = v72;
      swift_unknownObjectRelease();
      if (v72)
      {
        v74 = sub_100014FB8();

        static os_log_type_t.debug.getter();
        os_log(_:dso:log:_:_:)();
        if (v74)
        {
          v75 = 0x616C7065526D656FLL;
          v76 = 0xEC000000676E6963;
        }

        else
        {
          v75 = 0x696D7369446D656FLL;
          v76 = 0xED0000676E697373;
        }

        sub_100009BF0(v58, v75, v76);

        return;
      }

LABEL_48:
      __break(1u);
      return;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v59 = v96;
  v60 = swift_dynamicCast();
  (*(v14 + 7))(v59, v60 ^ 1u, 1, v13);
  if ((*(v14 + 6))(v59, 1, v13) == 1)
  {
    goto LABEL_33;
  }

  v100 = v34;
  v97 = v29;
  v95 = v2;
  (*(v14 + 4))(v94, v59, v13);
  v98 = NotificationModel.id.getter();
  v61 = v14;
  v63 = v62;
  v64 = qword_100039158;
  swift_beginAccess();
  v65 = v92;
  v93 = *(v61 + 2);
  v93(v92, &v58[v64], v13);
  v66 = NotificationModel.id.getter();
  v68 = v67;
  v96 = v61;
  v99 = *(v61 + 1);
  v99(v65, v13);
  if (v98 == v66 && v63 == v68)
  {

LABEL_43:
    static os_log_type_t.debug.getter();
    os_log(_:dso:log:_:_:)();
    v79 = v91;
    v80 = v93;
    v81 = v94;
    v93(v91, v94, v13);
    swift_beginAccess();
    (*(v96 + 3))(&v58[v64], v79, v13);
    swift_endAccess();
    v82 = v89;
    v80(v89, &v58[v64], v13);
    v83 = *&v58[qword_100037C30 + 8];
    v84 = &v82[*(v90 + 20)];
    *v84 = *&v58[qword_100037C30];
    *(v84 + 1) = v83;

    dispatch thunk of UIHostingController.rootView.setter();

    v85 = v99;
    v99(v79, v13);
    v85(v81, v13);
    return;
  }

  v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v78)
  {
    goto LABEL_43;
  }

  static os_log_type_t.debug.getter();
  os_log(_:dso:log:_:_:)();
  sub_100009BF0(v58, 0x616C7065526D656FLL, 0xEC000000676E6963);
  v86 = v94;
  sub_100008FA8(v94);

  v99(v86, v13);
}

void sub_100008FA8(uint64_t a1)
{
  v71 = a1;
  v72 = type metadata accessor for NotificationModel();
  v70 = *(v72 - 8);
  v1 = *(v70 + 64);
  v2 = __chkstk_darwin(v72);
  v68 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v65 - v5;
  __chkstk_darwin(v4);
  v8 = &v65 - v7;
  v9 = objc_opt_self();
  v10 = [v9 sharedApplication];
  v11 = [v10 delegate];

  if (!v11)
  {
    __break(1u);
    goto LABEL_33;
  }

  type metadata accessor for AppDelegate();
  v12 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
  v13 = v12;
  swift_unknownObjectRelease();
  if (v12)
  {
    v73 = sub_100014588();
  }

  else
  {
    v73 = 0;
  }

  v14 = [v9 sharedApplication];
  v15 = [v14 delegate];

  if (!v15)
  {
LABEL_33:
    __break(1u);
  }

  v16 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
  v17 = v16;
  swift_unknownObjectRelease();
  if (v16)
  {
    v18 = sub_100014AA0();
  }

  else
  {
    v18 = 0;
  }

  if (!v73 || ([v73 on] & 1) == 0)
  {
    if (v18)
    {
      if ([v18 on])
      {
        goto LABEL_13;
      }
    }

    v40 = v73;

    return;
  }

LABEL_13:
  v67 = v18;
  v19 = *(v70 + 16);
  v19(v8, v71, v72);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = objc_allocWithZone(type metadata accessor for NotificationHostingController(0));
  sub_10000B2B4(v8, sub_10000B644, v20);
  v23 = v22;

  *&v23[qword_100039160 + 8] = &off_1000314E8;
  swift_unknownObjectWeakAssign();
  v24 = static os_log_type_t.error.getter();
  sub_1000043C8(0, &qword_100037EE8, OS_os_log_ptr);
  v25 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v25, v24))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&_mh_execute_header, v25, v24, "[NotificationManager] Created new notification: %@", v26, 0xCu);
    sub_10000B6D0(v27, &unk_100037B00, qword_100024000);
  }

  [v23 preferredContentSize];
  if (fabs(v29) == INFINITY || ([v23 preferredContentSize], fabs(v30) == INFINITY))
  {
    v31 = static os_log_type_t.error.getter();
    v32 = v72;
    v19(v6, v71, v72);
    v33 = static OS_os_log.default.getter();
    if (!os_log_type_enabled(v33, v31))
    {

      (*(v70 + 8))(v6, v32);
      return;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v74 = v35;
    *v34 = 136315138;
    sub_10000B26C(&qword_100037F68, &type metadata accessor for NotificationModel);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    (*(v70 + 8))(v6, v32);
    v39 = sub_10001A194(v36, v38, &v74);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v31, "[NotificationManager] Unable to post new notification with model %s - size contains an infinite dimension", v34, 0xCu);
    sub_10000458C(v35);

    goto LABEL_27;
  }

  v66 = v19;
  v41 = v69;
  v42 = *(v69 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification);
  *(v69 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification) = v23;
  v43 = v23;

  sub_100003FD8(&qword_100037F70, &qword_100023FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100023B50;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v45;
  *(inited + 48) = sub_100005C44();
  v46 = sub_10001AA4C(inited);
  swift_setDeallocating();
  sub_10000B6D0(inited + 32, &unk_100037F78, &qword_100023FF8);
  v47 = *(v41 + 24);
  v48 = v43;
  sub_100009A10(v46);

  sub_100003FD8(&qword_100037F60, &qword_100023FE8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v74 = 0;
  LODWORD(v43) = [v47 postPresentable:v48 options:1 userInfo:isa error:&v74];

  v50 = v74;
  if (v43)
  {

LABEL_27:
    return;
  }

  v51 = v50;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v52 = static os_log_type_t.error.getter();
  v53 = v68;
  v54 = v72;
  v66(v68, v71, v72);
  v55 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v55, v52))
  {
    v56 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v56 = 136315394;
    sub_10000B26C(&qword_100037F68, &type metadata accessor for NotificationModel);
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v53;
    v60 = v59;
    (*(v70 + 8))(v58, v54);
    v61 = sub_10001A194(v57, v60, &v74);

    *(v56 + 4) = v61;
    *(v56 + 12) = 2080;
    swift_getErrorValue();
    v62 = Error.localizedDescription.getter();
    v64 = sub_10001A194(v62, v63, &v74);

    *(v56 + 14) = v64;
    _os_log_impl(&_mh_execute_header, v55, v52, "[NotificationManager] Unable to post new notification with model %s, error: %s", v56, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v70 + 8))(v53, v54);
  }
}

uint64_t sub_10000991C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v3 = *(Strong + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_assetManager), , , v3))
  {
    CAUAssetLibraryManager.fetchCustomImage(named:)();
  }

  else
  {
    v5 = sub_100003FD8(&qword_100037EE0, &qword_100023FD0);
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

unint64_t sub_100009A10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003FD8(&qword_100037F88, &qword_100024570);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(a1 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(a1 + 56) + 8 * v16);

        v21 = v20;
        result = sub_10001A73C(v19, v18);
        if (v22)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v19;
          v9[1] = v18;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v21;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v23 = (v2[6] + 16 * result);
          *v23 = v19;
          v23[1] = v18;
          *(v2[7] + 8 * result) = v21;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_100009BF0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a3;
  v6 = type metadata accessor for NotificationModel();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v6);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static os_log_type_t.error.getter();
  v48 = sub_1000043C8(0, &qword_100037EE8, OS_os_log_ptr);
  v10 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v45 = v6;
    v12 = v11;
    v13 = swift_slowAlloc();
    v44 = v3;
    v14 = v13;
    v50[0] = v13;
    *v12 = 136315138;
    v15 = a1;
    v16 = [v15 description];
    v17 = a1;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10001A194(v18, v20, v50);

    *(v12 + 4) = v21;
    a1 = v17;
    _os_log_impl(&_mh_execute_header, v10, v9, "[NotificationManager] active nil - revoking notification: %s", v12, 0xCu);
    sub_10000458C(v14);
    v4 = v44;

    v6 = v45;
  }

  v22 = *(v4 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification);
  *(v4 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification) = 0;

  v23 = *(v4 + 24);
  v24 = [a1 requestIdentifier];
  v25 = a1;
  v26 = String._bridgeToObjectiveC()();
  sub_10001A948(&_swiftEmptyArrayStorage);
  sub_100003FD8(&qword_100037F60, &qword_100023FE8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v50[0] = 0;
  v28 = [v23 revokePresentableWithRequestIdentifier:v24 reason:v26 animated:1 userInfo:isa error:v50];

  if (v28)
  {
    v29 = v50[0];
  }

  else
  {
    v30 = v50[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v31 = static os_log_type_t.error.getter();
    v32 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v33 = 136315394;
      v34 = qword_100039158;
      swift_beginAccess();
      v36 = v46;
      v35 = v47;
      (*(v47 + 16))(v46, v25 + v34, v6);
      sub_10000B26C(&qword_100037F68, &type metadata accessor for NotificationModel);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v35 + 8))(v36, v6);
      v40 = sub_10001A194(v37, v39, &v51);

      *(v33 + 4) = v40;
      *(v33 + 12) = 2080;
      swift_getErrorValue();
      v41 = Error.localizedDescription.getter();
      v43 = sub_10001A194(v41, v42, &v51);

      *(v33 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v32, v31, "[NotificationManager] Unable to revoke active notification with model %s, error: %s", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall AutoSettingsNotificationManager.invalidate()()
{
  memset(v0, 0, sizeof(v0));
  sub_1000080A0(v0);
  sub_10000B6D0(v0, &qword_1000387F0, &qword_100023CA0);
}

void sub_10000A13C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 delegate];

  if (!v7)
  {
    __break(1u);
    goto LABEL_30;
  }

  type metadata accessor for AppDelegate();
  v8 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
  v9 = v8;
  swift_unknownObjectRelease();
  if (!v8)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v10 = sub_100014FB8();

  if (v10)
  {
    static os_log_type_t.debug.getter();
    sub_1000043C8(0, &qword_100037EE8, OS_os_log_ptr);
    log = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
LABEL_5:

    return;
  }

  if (!a1)
  {
    return;
  }

  type metadata accessor for NotificationHostingController(0);
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification;
  v14 = *(v3 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_activeNotification);
  swift_unknownObjectRetain();
  if (![v12 isEqual:v14])
  {
    v21 = static os_log_type_t.error.getter();
    sub_1000043C8(0, &qword_100037EE8, OS_os_log_ptr);
    log = static OS_os_log.default.getter();
    if (os_log_type_enabled(log, v21))
    {
      v22 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v22 = 136315394;
      swift_unknownObjectRetain();
      v23 = [v12 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      swift_unknownObjectRelease();

      v27 = sub_10001A194(v24, v26, &v45);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2080;
      v44 = *(v3 + v13);
      sub_100003FD8(&qword_100037EF0, &unk_100023FD8);
      sub_10000B26C(&qword_100037EF8, type metadata accessor for NotificationHostingController);
      v28 = Optional<A>.description.getter();
      v30 = sub_10001A194(v28, v29, &v45);

      *(v22 + 14) = v30;
      _os_log_impl(&_mh_execute_header, log, v21, "[NotificationManager] presentableNotification: %s is NOT EQUAL to activeNotification %s. Not calling dismissal handler.", v22, 0x16u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = v15;
  if (!a2)
  {

LABEL_23:
    v32 = static os_log_type_t.debug.getter();
    sub_1000043C8(0, &qword_100037EE8, OS_os_log_ptr);
    v33 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136315138;
      swift_unknownObjectRetain();
      v36 = [v12 description];
      loga = v32;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
      swift_unknownObjectRelease();

      v40 = sub_10001A194(v37, v39, &v45);

      *(v34 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, loga, "[NotificationManager] dismissing presentable: %s", v34, 0xCu);
      sub_10000458C(v35);
    }

    v41 = *(v3 + v13);
    *(v3 + v13) = 0;

    sub_10000566C();
    goto LABEL_26;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {
    swift_unknownObjectRelease();

    return;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v31 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:

  swift_unknownObjectRelease();
}

uint64_t AutoSettingsNotificationManager.deinit()
{
  v1 = *(v0 + 32);

  sub_10000B6D0(v0 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_settingsCache, &qword_100037BD0, &qword_100023C80);

  v2 = *(v0 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_cancellable);

  v3 = *(v0 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_assetManager);

  v4 = *(v0 + OBJC_IVAR____TtC7Vehicle31AutoSettingsNotificationManager_dataSources);

  return v0;
}

uint64_t AutoSettingsNotificationManager.__deallocating_deinit()
{
  AutoSettingsNotificationManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10000A7F4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A834(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000A8A4()
{
  result = type metadata accessor for NotificationModel();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10000A984()
{
  sub_10000AA44();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000AA44()
{
  if (!qword_100037CC0)
  {
    type metadata accessor for CAFUISettingsCache();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100037CC0);
    }
  }
}

uint64_t sub_10000AAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotificationModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000AB80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NotificationModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000AC58(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000AC90()
{
  result = type metadata accessor for NotificationModel();
  if (v1 <= 0x3F)
  {
    result = sub_10000AD14();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10000AD14()
{
  result = qword_100037E50;
  if (!qword_100037E50)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100037E50);
  }

  return result;
}

uint64_t sub_10000AF74@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.canShowCloseButtonFocusEffect.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000B030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsNotificationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B094()
{
  v1 = (type metadata accessor for SettingsNotificationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for NotificationModel();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000B180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsNotificationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for SettingsNotificationView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_100004B74(a1, a2, v8, a3);
}

uint64_t sub_10000B26C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10000B2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v6 = type metadata accessor for UIHostingControllerSizingOptions();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v28 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SettingsNotificationView(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_100039160 + 8) = 0;
  swift_unknownObjectWeakInit();
  v14 = qword_100039158;
  v15 = type metadata accessor for NotificationModel();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v18 = v3 + v14;
  v19 = v29;
  v17(v18, v29, v15);
  v20 = (v3 + qword_100037C30);
  *v20 = a2;
  v20[1] = a3;
  v17(v13, v19, v15);
  v21 = &v13[*(v10 + 28)];
  *v21 = a2;
  *(v21 + 1) = a3;
  swift_retain_n();
  v22 = UIHostingController.init(rootView:)();
  v23 = [v22 view];
  if (v23)
  {
    v24 = v23;
    [v23 setClipsToBounds:0];

    v25 = v22;
    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();

    v26 = [v25 view];
    if (v26)
    {
      v27 = [objc_opt_self() clearColor];
      [v26 setBackgroundColor:v27];

      (*(v16 + 8))(v19, v15);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10000B53C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100003FD8(&qword_100037C00, &qword_100023C90);
  v2 = Optional<A>.description.getter();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x72656E6E61622ELL;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_10000B64C(uint64_t a1)
{
  v2 = type metadata accessor for SettingsNotificationView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B6D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003FD8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000B730(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003FD8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_10000B798(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000B804()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000B848()
{
  result = qword_100037FB8;
  if (!qword_100037FB8)
  {
    sub_10000A834(&qword_100037ED0, &qword_100023FC0);
    sub_10000B900();
    sub_10000BD80(&qword_100038028, &qword_100037ED8, &qword_100023FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037FB8);
  }

  return result;
}

unint64_t sub_10000B900()
{
  result = qword_100037FC0;
  if (!qword_100037FC0)
  {
    sub_10000A834(&qword_100037EC8, &qword_100023F88);
    sub_10000B9B8();
    sub_10000BD80(&qword_100038018, &qword_100038020, &unk_100024080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037FC0);
  }

  return result;
}

unint64_t sub_10000B9B8()
{
  result = qword_100037FC8;
  if (!qword_100037FC8)
  {
    sub_10000A834(&qword_100037EB8, &qword_100023F48);
    sub_10000BA70();
    sub_10000BD80(&qword_100038010, &qword_100037EC0, &qword_100023F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037FC8);
  }

  return result;
}

unint64_t sub_10000BA70()
{
  result = qword_100037FD0;
  if (!qword_100037FD0)
  {
    sub_10000A834(&qword_100037EA8, &qword_100023F08);
    sub_10000BB28();
    sub_10000BD80(&qword_100038008, &qword_100037EB0, &qword_100023F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037FD0);
  }

  return result;
}

unint64_t sub_10000BB28()
{
  result = qword_100037FD8;
  if (!qword_100037FD8)
  {
    sub_10000A834(&qword_100037E98, &qword_100023EC8);
    sub_10000BBE0();
    sub_10000BD80(&qword_100038000, &qword_100037EA0, &qword_100023ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037FD8);
  }

  return result;
}

unint64_t sub_10000BBE0()
{
  result = qword_100037FE0;
  if (!qword_100037FE0)
  {
    sub_10000A834(&qword_100037E90, &qword_100023E90);
    sub_10000BC98();
    sub_10000BD80(&qword_100037FF8, &qword_100037E88, &qword_100023E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037FE0);
  }

  return result;
}

unint64_t sub_10000BC98()
{
  result = qword_100037FE8;
  if (!qword_100037FE8)
  {
    sub_10000A834(&qword_100037E80, &qword_100023E50);
    sub_10000B26C(&qword_100037FF0, &type metadata accessor for NotificationView);
    sub_10000BD80(&qword_100037FF8, &qword_100037E88, &qword_100023E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100037FE8);
  }

  return result;
}

uint64_t sub_10000BD80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A834(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for VSNotificationHistoryViewController()
{
  result = qword_100038050;
  if (!qword_100038050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void **sub_10000BE80()
{
  v1 = [v0 historicalNotifications];
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = v1;
    sub_1000043C8(0, &qword_1000381E8, CAFHistoricalNotification_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = &_swiftEmptyArrayStorage;
    if (v4 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ([v8 hidden])
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v7 = v12[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v2 = &v12;
          specialized ContiguousArray._endMutation()();
        }

        ++v6;
        if (v10 == i)
        {
          v2 = v12;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_15:
  }

  return v2;
}

void sub_10000C008()
{
  v1 = v0;
  v49.receiver = v0;
  v49.super_class = type metadata accessor for VSNotificationHistoryViewController();
  objc_msgSendSuper2(&v49, "viewDidLoad");
  v2 = [objc_opt_self() mainBundle];
  v50._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x4143494649544F4ELL;
  v3._object = 0xED0000534E4F4954;
  v4.value._countAndFlagsBits = 0x747465536F747541;
  v4.value._object = 0xEC00000073676E69;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v50);

  String.init(format:_:)();

  v6 = String._bridgeToObjectiveC()();

  [v1 setTitle:v6];

  v7 = CAFUITableViewController.tableView.getter();
  [v7 setDataSource:v1];

  v8 = CAFUITableViewController.tableView.getter();
  [v8 setDelegate:v1];

  v9 = CAFUITableViewController.tableView.getter();
  type metadata accessor for VSNotificationTableCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  static CAFUICellProtocol.reuseIdentifier.getter();
  v11 = String._bridgeToObjectiveC()();

  [v9 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v11];

  v12 = [*&v1[qword_100038038] historicalNotifications];
  if (v12)
  {
    v13 = v12;
    sub_1000043C8(0, &qword_1000381E8, CAFHistoricalNotification_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v14 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v16 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        [v17 registerObserver:v1];

        ++v16;
        if (v19 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  v20 = [v1 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_23;
  }

  v21 = v20;
  v22 = *&v1[qword_100038030];
  [v20 addSubview:v22];

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100003FD8(&qword_100038A90, &unk_100024110);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100024090;
  v24 = [v22 topAnchor];
  v25 = [v1 view];
  if (!v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v25;
  v27 = [v25 topAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  *(v23 + 32) = v28;
  v29 = [v22 bottomAnchor];
  v30 = [v1 view];
  if (!v30)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v31 = v30;
  v32 = [v30 safeAreaLayoutGuide];

  v33 = [v32 bottomAnchor];
  v34 = [v29 constraintEqualToAnchor:v33];

  *(v23 + 40) = v34;
  v35 = [v22 leadingAnchor];
  v36 = [v1 view];
  if (!v36)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v37 = v36;
  v38 = [v36 safeAreaLayoutGuide];

  v39 = [v38 leadingAnchor];
  v40 = [v35 constraintEqualToAnchor:v39];

  *(v23 + 48) = v40;
  v41 = [v22 trailingAnchor];
  v42 = [v1 view];
  if (v42)
  {
    v43 = v42;
    v44 = objc_opt_self();
    v45 = [v43 safeAreaLayoutGuide];

    v46 = [v45 trailingAnchor];
    v47 = [v41 constraintEqualToAnchor:v46];

    *(v23 + 56) = v47;
    sub_1000043C8(0, &qword_100038200, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v44 activateConstraints:isa];

    sub_10000C668();
    return;
  }

LABEL_26:
  __break(1u);
}

void sub_10000C620(void *a1)
{
  v1 = a1;
  sub_10000C008();
}

void sub_10000C668()
{
  v1 = v0;
  v2 = *(v0 + qword_100038038);
  v3 = sub_10000BE80();
  if (v3 >> 62)
  {
LABEL_38:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = CAFUITableViewController.tableView.getter();
  v6 = v5;
  if (!v4)
  {
    [v5 setHidden:1];

    v45 = *(v1 + qword_100038030);

    [v45 setHidden:0];
    return;
  }

  [v5 setHidden:0];

  [*(v1 + qword_100038030) setHidden:1];
  v7 = sub_10000BE80();
  v8 = sub_1000101D4(v7);

  v9 = qword_100038048;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v47 = v9;
  *(v1 + v9) = v8;

  v11 = 0;
  v12 = v8 + 8;
  v46 = v8;
  v13 = 1 << *(v8 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v8[8];
  v16 = (v13 + 63) >> 6;
  while (1)
  {
    if (!v15)
    {
      while (1)
      {
        v19 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v19 >= v16)
        {

          v44 = CAFUITableViewController.tableView.getter();
          [v44 reloadData];

          return;
        }

        v15 = v12[v19];
        ++v11;
        if (v15)
        {
          v11 = v19;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_14:
    v20 = __clz(__rbit64(v15)) | (v11 << 6);
    v48 = *(v46[6] + v20);
    v21 = *(v46[7] + 8 * v20);
    if (!(v21 >> 62))
    {
      v22 = (v21 & 0xFFFFFFFFFFFFFF8);

LABEL_16:

      goto LABEL_17;
    }

    v37 = _CocoaArrayWrapper.endIndex.getter();
    if (!v37)
    {
      v22 = &_swiftEmptyArrayStorage;
      goto LABEL_16;
    }

    v38 = v1;
    v39 = v37;
    v22 = sub_10000DF48(v37, 0);
    swift_bridgeObjectRetain_n();
    sub_100020AF0(v22 + 32, v39, v21);
    v41 = v40;

    v42 = v41 == v39;
    v1 = v38;
    if (!v42)
    {
      break;
    }

LABEL_17:
    v49 = v22;
    sub_10000E3C8(&v49);

    v23 = v49;
    swift_beginAccess();
    v24 = *(v1 + v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v1 + v47);
    *(v1 + v47) = 0x8000000000000000;
    v27 = sub_10001A7B4(v48);
    v29 = v26[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_36;
    }

    v33 = v28;
    if (v26[3] < v32)
    {
      sub_10000E138(v32, isUniquelyReferenced_nonNull_native);
      v27 = sub_10001A7B4(v48);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_39;
      }

LABEL_22:
      if (v33)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v43 = v27;
    sub_10000E580();
    v27 = v43;
    if (v33)
    {
LABEL_7:
      v17 = v26[7];
      v18 = *(v17 + 8 * v27);
      *(v17 + 8 * v27) = v23;

      goto LABEL_8;
    }

LABEL_23:
    v26[(v27 >> 6) + 8] |= 1 << v27;
    *(v26[6] + v27) = v48;
    *(v26[7] + 8 * v27) = v23;
    v35 = v26[2];
    v31 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v31)
    {
      goto LABEL_37;
    }

    v26[2] = v36;
LABEL_8:
    v15 &= v15 - 1;
    *(v1 + v47) = v26;
    swift_endAccess();
  }

  __break(1u);

  __break(1u);
LABEL_39:
  type metadata accessor for CAFNotificationSeverity();
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10000CA80(unint64_t a1)
{
  v3 = qword_100038048;
  swift_beginAccess();
  v15 = v1;
  v4 = *(v1 + v3);
  v5 = v3;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = sub_10000DFD0(*(v4 + 16), 0);
    v14 = sub_1000100D0(&v16, v7 + 32, v6, v4);
    swift_bridgeObjectRetain_n();
    sub_1000101CC();
    if (v14 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = &_swiftEmptyArrayStorage;
LABEL_5:
  v16 = v7;
  sub_10000E444(&v16);

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v16 + 2) <= a1)
  {
LABEL_13:
    __break(1u);

    __break(1u);
    return result;
  }

  v8 = v16[a1 + 32];

  v9 = *(v15 + v5);
  if (!*(v9 + 16))
  {
    return 0;
  }

  v10 = sub_10001A7B4(v8);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
}

void sub_10000CBF8(void *a1)
{
  v2 = v1;
  v4 = IndexPath.section.getter();
  v5 = sub_10000CA80(v4);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = IndexPath.row.getter();
  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v6 + 8 * v7 + 32);
      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
  v9 = v8;

  v10 = *(sub_100002244() + 2);

  if (v10 || ([v9 hasUserVisibleFullDescription] & 1) != 0)
  {
    v11 = *&v2[qword_100038040];
    v12 = objc_allocWithZone(type metadata accessor for VSNotificationDetailViewController());
    v12[qword_100037A58] = 0;
    v13 = &v12[qword_100037A60];
    *v13 = 0;
    v13[1] = 0;
    *&v12[qword_100037A48] = v11;
    *&v12[qword_100037A40] = v9;
    swift_retain_n();
    isa = v9;
    *&v12[qword_100037A50] = sub_100002244();
    v9 = CAFUITableViewController.init(style:)();

    v14 = [v2 navigationController];
    if (v14)
    {
      v15 = v14;
      [v14 pushViewController:v9 animated:1];
    }
  }

  else
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 deselectRowAtIndexPath:? animated:?];
  }
}

uint64_t sub_10000CDE8(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  sub_10000CBF8(v10);

  return (*(v6 + 8))(v9, v5);
}

id sub_10000CEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_allocWithZone(UIView) init];
  }

  return v6;
}

double sub_10000CF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0.0;
  if (a4 > 0)
  {
    return 12.0;
  }

  return result;
}

uint64_t sub_10000CF50(uint64_t a1)
{
  v2 = qword_100038048;
  swift_beginAccess();
  return *(*(a1 + v2) + 16);
}

uint64_t sub_10000CF9C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a1;
  v6 = sub_10000CA80(a4);
  if (v6)
  {
    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10000D01C(void *a1, void *a2)
{
  type metadata accessor for VSNotificationTableCell(0);
  static CAFUICellProtocol.reuseIdentifier.getter();
  v4 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = IndexPath.section.getter();
    v10 = sub_10000CA80(v9);
    if (!v10)
    {
      _StringGuts.grow(_:)(24);

      type metadata accessor for IndexPath();
      sub_100010050();
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      goto LABEL_13;
    }

    v11 = v10;
    v6 = a2;
    v12 = IndexPath.row.getter();
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v11 + 8 * v12 + 32);
LABEL_7:
      v14 = v13;

      v15 = *(v8 + qword_100038AD0);
      *(v8 + qword_100038AD0) = v14;
      v16 = v14;

      sub_10001E114();
      return v8;
    }

    __break(1u);
  }

LABEL_13:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10000D268(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  v12 = sub_10000D01C(v10, v9);

  (*(v6 + 8))(v9, v5);

  return v12;
}

void sub_10000D37C(void *a1)
{
  v1 = a1;
  sub_10000C668();
}

uint64_t sub_10000D3C4(void *a1)
{
  v2 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  sub_10000C668();

  return (*(v3 + 8))(v6, v2);
}

void sub_10000D4CC(void *a1)
{
  v1 = a1;
  sub_10000C668();
}

uint64_t sub_10000D548()
{
  v1 = *(v0 + qword_100038040);

  v2 = *(v0 + qword_100038048);
}

uint64_t sub_10000D5C4(uint64_t a1)
{
  v2 = *(a1 + qword_100038040);

  v3 = *(a1 + qword_100038048);
}

void sub_10000D694()
{
  v49.receiver = v0;
  v49.super_class = type metadata accessor for VSEmptyNotificationHistoryView();
  v46 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    v48 = [objc_allocWithZone(UIImageView) initWithImage:v2];
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 setTextAlignment:1];
    sub_1000043C8(0, &unk_1000381F0, UIFont_ptr);
    v4 = static UIFont.cafui_preferredFont(for:weight:size:rounded:)();
    [v3 setFont:v4];

    v45 = v2;
    v5 = objc_opt_self();
    v6 = [v5 mainBundle];
    v50._object = 0xE000000000000000;
    v7._object = 0x800000010002BC40;
    v7._countAndFlagsBits = 0xD00000000000001ELL;
    v8.value._countAndFlagsBits = 0x747465536F747541;
    v8.value._object = 0xEC00000073676E69;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v50._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v50);

    String.init(format:_:)();

    v10 = String._bridgeToObjectiveC()();

    [v3 setText:v10];

    v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 setTextAlignment:1];
    v12 = static UIFont.cafui_preferredFont(for:weight:size:rounded:)();
    [v11 setFont:v12];

    v13 = [v5 mainBundle];
    v51._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0xD000000000000023;
    v14._object = 0x800000010002BC60;
    v15.value._countAndFlagsBits = 0x747465536F747541;
    v15.value._object = 0xEC00000073676E69;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v51._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v51);

    String.init(format:_:)();

    v17 = String._bridgeToObjectiveC()();

    [v11 setText:v17];

    v18 = v46;
    [v18 addSubview:v48];
    [v18 addSubview:v3];
    [v18 addSubview:v11];
    v47 = objc_opt_self();
    sub_100003FD8(&qword_100038A90, &unk_100024110);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000240A0;
    v20 = [v48 centerYAnchor];
    v21 = [v18 centerYAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    *(v19 + 32) = v22;
    v23 = [v48 centerXAnchor];
    v24 = [v18 centerXAnchor];

    v25 = [v23 constraintEqualToAnchor:v24];
    *(v19 + 40) = v25;
    v26 = [v3 topAnchor];
    v27 = [v48 bottomAnchor];

    v28 = [v26 constraintEqualToAnchor:v27];
    *(v19 + 48) = v28;
    v29 = [v3 leadingAnchor];
    v30 = [v18 leadingAnchor];

    v31 = [v29 constraintEqualToAnchor:v30];
    *(v19 + 56) = v31;
    v32 = [v3 trailingAnchor];
    v33 = [v18 trailingAnchor];

    v34 = [v32 constraintEqualToAnchor:v33];
    *(v19 + 64) = v34;
    v35 = [v11 topAnchor];
    v36 = [v3 bottomAnchor];

    v37 = [v35 constraintEqualToAnchor:v36];
    *(v19 + 72) = v37;
    v38 = [v11 leadingAnchor];
    v39 = [v18 leadingAnchor];

    v40 = [v38 constraintEqualToAnchor:v39];
    *(v19 + 80) = v40;
    v41 = [v11 trailingAnchor];

    v42 = [v18 trailingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    *(v19 + 88) = v43;
    sub_1000043C8(0, &qword_100038200, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v47 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

id sub_10000DEEC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_10000DF48(uint64_t a1, uint64_t a2)
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

  sub_100003FD8(&qword_100038A90, &unk_100024110);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_10000DFD0(uint64_t a1, uint64_t a2)
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

  sub_100003FD8(&qword_100038228, &qword_100024128);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000E044(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003FD8(&qword_100038228, &qword_100024128);
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

uint64_t sub_10000E138(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003FD8(&qword_100038230, &unk_100024130);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000E3C8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000100A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10000E6DC(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_10000E444(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000100BC(v2);
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
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v14 >= v11)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
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
      type metadata accessor for CAFNotificationSeverity();
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_10000F368(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void *sub_10000E580()
{
  v1 = v0;
  sub_100003FD8(&qword_100038230, &unk_100024130);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void sub_10000E6DC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000043C8(0, &qword_1000381E8, CAFHistoricalNotification_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10000EA64(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10000E7F0(0, v2, 1, a1);
  }
}

void sub_10000E7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v8 = *(*(v35 - 8) + 64);
  v9 = __chkstk_darwin(v35);
  v37 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v36 = &v29 - v12;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v34 = v11 + 8;
    v38 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
    v16 = (v11 + 8);
LABEL_5:
    v32 = v14;
    v33 = a3;
    v17 = *(v38 + 8 * a3);
    v31 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v17;
      v39 = v19;
      v20 = v18;
      v21 = [v19 timestamp];
      sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
      v22 = v36;
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [v20 timestamp];
      v24 = v37;
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10001042C();
      v25 = v35;
      LOBYTE(v19) = dispatch thunk of static Comparable.< infix(_:_:)();
      v26 = *v16;
      (*v16)(v24, v25);
      v26(v22, v25);

      if ((v19 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v27 = *v14;
      v17 = *(v14 + 8);
      *v14 = v17;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v15++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10000EA64(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v118 = a1;
  v128 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v7 = *(*(v128 - 8) + 64);
  v8 = __chkstk_darwin(v128);
  v130 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v129 = &v116 - v11;
  v12 = a3[1];
  v120 = a3;
  if (v12 < 1)
  {
    v14 = &_swiftEmptyArrayStorage;
LABEL_87:
    v4 = *v118;
    if (!*v118)
    {
      goto LABEL_126;
    }

    a4 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v109 = a4;
    }

    else
    {
LABEL_120:
      v109 = sub_10001003C(a4);
    }

    v132 = v109;
    v110 = *(v109 + 2);
    if (v110 >= 2)
    {
      while (*a3)
      {
        a4 = v110 - 1;
        v111 = *&v109[16 * v110];
        v112 = v109;
        v113 = *&v109[16 * v110 + 24];
        v114 = v125;
        sub_10000F8B4((*a3 + 8 * v111), (*a3 + 8 * *&v109[16 * v110 + 16]), (*a3 + 8 * v113), v4);
        v125 = v114;
        if (v114)
        {
          goto LABEL_98;
        }

        if (v113 < v111)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = sub_10001003C(v112);
        }

        if (v110 - 2 >= *(v112 + 2))
        {
          goto LABEL_114;
        }

        v115 = &v112[16 * v110];
        *v115 = v111;
        *(v115 + 1) = v113;
        v132 = v112;
        sub_10000FFB0(a4);
        v109 = v132;
        v110 = *(v132 + 2);
        a3 = v120;
        if (v110 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v13 = 0;
  v14 = &_swiftEmptyArrayStorage;
  v127 = (v10 + 8);
  v117 = a4;
  while (1)
  {
    v15 = v13++;
    if (v13 < v12)
    {
      v126 = v12;
      v116 = v14;
      v16 = *a3;
      v17 = *(*a3 + 8 * v13);
      v119 = v15;
      v121 = 8 * v15;
      v18 = (v16 + 8 * v15);
      v20 = *v18;
      v19 = v18 + 2;
      v21 = v17;
      v22 = v20;
      v23 = [v21 timestamp];
      v24 = sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
      v4 = v129;
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = [v22 timestamp];
      v26 = v130;
      v124 = v24;
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = sub_10001042C();
      v28 = v128;
      v123 = v27;
      LODWORD(v131) = dispatch thunk of static Comparable.< infix(_:_:)();
      v29 = *v127;
      (*v127)(v26, v28);
      v122 = v29;
      (v29)(v4, v28);

      v30 = v119 + 2;
      while (1)
      {
        v13 = v126;
        if (v126 == v30)
        {
          break;
        }

        v31 = *(v19 - 1);
        v32 = *v19;
        v4 = v31;
        v33 = [v32 timestamp];
        v34 = v129;
        static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = [v4 timestamp];
        v36 = v130;
        static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = v128;
        v38 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v39 = v122;
        (v122)(v36, v37);
        v39(v34, v37);

        ++v30;
        ++v19;
        if ((v131 & 1) != v38)
        {
          v13 = v30 - 1;
          break;
        }
      }

      v15 = v119;
      a3 = v120;
      v14 = v116;
      a4 = v117;
      v40 = v121;
      if (v131)
      {
        if (v13 < v119)
        {
          goto LABEL_117;
        }

        if (v119 < v13)
        {
          v41 = 8 * v13 - 8;
          v42 = v13;
          v43 = v119;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v44 = *(v45 + v40);
              *(v45 + v40) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            ++v43;
            v41 -= 8;
            v40 += 8;
          }

          while (v43 < v42);
        }
      }
    }

    v46 = a3[1];
    if (v13 < v46)
    {
      if (__OFSUB__(v13, v15))
      {
        goto LABEL_116;
      }

      if (v13 - v15 < a4)
      {
        v47 = v15 + a4;
        if (__OFADD__(v15, a4))
        {
          goto LABEL_118;
        }

        if (v47 >= v46)
        {
          v47 = a3[1];
        }

        if (v47 < v15)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v13 != v47)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v13 < v15)
    {
      goto LABEL_115;
    }

    v62 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v14 = v62;
    }

    else
    {
      v14 = sub_1000042C0(0, *(v62 + 2) + 1, 1, v62);
    }

    a4 = *(v14 + 2);
    v63 = *(v14 + 3);
    v64 = a4 + 1;
    if (a4 >= v63 >> 1)
    {
      v14 = sub_1000042C0((v63 > 1), a4 + 1, 1, v14);
    }

    *(v14 + 2) = v64;
    v65 = &v14[16 * a4];
    *(v65 + 4) = v15;
    *(v65 + 5) = v13;
    v66 = *v118;
    if (!*v118)
    {
      goto LABEL_125;
    }

    if (a4)
    {
      while (1)
      {
        v4 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v67 = *(v14 + 4);
          v68 = *(v14 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_55:
          if (v70)
          {
            goto LABEL_104;
          }

          v83 = &v14[16 * v64];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_107;
          }

          v89 = &v14[16 * v4 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_111;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v4 = v64 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v93 = &v14[16 * v64];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_69:
        if (v88)
        {
          goto LABEL_106;
        }

        v96 = &v14[16 * v4];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_109;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = v4 - 1;
        if (v4 - 1 >= v64)
        {
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

        v104 = v14;
        v105 = *&v14[16 * a4 + 32];
        v106 = *&v14[16 * v4 + 40];
        v107 = v125;
        sub_10000F8B4((*a3 + 8 * v105), (*a3 + 8 * *&v14[16 * v4 + 32]), (*a3 + 8 * v106), v66);
        v125 = v107;
        if (v107)
        {
          goto LABEL_98;
        }

        if (v106 < v105)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_10001003C(v104);
        }

        if (a4 >= *(v104 + 2))
        {
          goto LABEL_101;
        }

        v108 = &v104[16 * a4];
        *(v108 + 4) = v105;
        *(v108 + 5) = v106;
        v132 = v104;
        sub_10000FFB0(v4);
        v14 = v132;
        v64 = *(v132 + 2);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v14[16 * v64 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_102;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_103;
      }

      v78 = &v14[16 * v64];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_105;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_108;
      }

      if (v82 >= v74)
      {
        v100 = &v14[16 * v4 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_112;
        }

        if (v69 < v103)
        {
          v4 = v64 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v12 = a3[1];
    a4 = v117;
    if (v13 >= v12)
    {
      goto LABEL_87;
    }
  }

  v116 = v14;
  v126 = *a3;
  v48 = v126 + 8 * v13 - 8;
  v119 = v15;
  v49 = (v15 - v13);
  v121 = v47;
LABEL_28:
  v123 = v48;
  v124 = v13;
  v50 = *(v126 + 8 * v13);
  v122 = v49;
  v51 = v48;
  while (1)
  {
    v52 = *v51;
    v53 = v50;
    v131 = v53;
    v54 = v52;
    v55 = [v53 timestamp];
    sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
    v56 = v129;
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = [v54 timestamp];
    v58 = v130;
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10001042C();
    v59 = v128;
    a4 = dispatch thunk of static Comparable.< infix(_:_:)();
    v4 = *v127;
    (*v127)(v58, v59);
    (v4)(v56, v59);

    if ((a4 & 1) == 0)
    {
LABEL_27:
      v13 = v124 + 1;
      v48 = v123 + 8;
      v49 = v122 - 1;
      if (v124 + 1 != v121)
      {
        goto LABEL_28;
      }

      v13 = v121;
      v15 = v119;
      a3 = v120;
      v14 = v116;
      goto LABEL_35;
    }

    if (!v126)
    {
      break;
    }

    v60 = *v51;
    v50 = *(v51 + 8);
    *v51 = v50;
    *(v51 + 8) = v60;
    v51 -= 8;
    if (__CFADD__(v49++, 1))
    {
      goto LABEL_27;
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
}

uint64_t sub_10000F368(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10001003C(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_10000FDC4((*a3 + *v77), (*a3 + *v79), *a3 + v80, v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + v7);
      v11 = *(*a3 + v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + v17);
            *(v20 + v17) = *(v20 + v16);
            *(v20 + v16) = v18;
          }
        }

        while (++v17 < v16--);
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
      result = sub_1000042C0(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1000042C0((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = (v8 + 4);
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        sub_10000FDC4((*a3 + *v70), (*a3 + *v72), *a3 + v73, v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = (*a3 + v7);
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *(v26 - 1);
    if (v27 >= v24)
    {
LABEL_29:
      ++v7;
      ++v22;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v27;
    *--v26 = v24;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_10000F8B4(void **a1, void **a2, void **a3, void **a4)
{
  v56 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v8 = *(v56 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v56);
  v58 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v49 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v60 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v51 = (v8 + 8);
      v59 = a4;
      v55 = a1;
LABEL_27:
      v50 = a2;
      v31 = a2 - 1;
      v32 = a3 - 1;
      v33 = v60;
      v52 = a2 - 1;
      do
      {
        v34 = v32;
        v35 = v32 + 1;
        v36 = *--v33;
        v37 = *v31;
        v38 = v36;
        v54 = v38;
        v39 = v37;
        v53 = v39;
        v40 = [v38 timestamp];
        sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
        v41 = v57;
        static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = [v39 timestamp];
        v43 = v58;
        static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10001042C();
        v44 = v56;
        LOBYTE(v42) = dispatch thunk of static Comparable.< infix(_:_:)();
        v45 = *v51;
        (*v51)(v43, v44);
        v45(v41, v44);

        if (v42)
        {
          v46 = v55;
          a3 = v34;
          v47 = v52;
          if (v35 != v50)
          {
            *v34 = *v52;
          }

          a4 = v59;
          if (v60 <= v59 || (a2 = v47, v47 <= v46))
          {
            a2 = v47;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v35 != v60)
        {
          *v34 = *v33;
        }

        v32 = v34 - 1;
        v60 = v33;
        v31 = v52;
      }

      while (v33 > v59);
      v60 = v33;
      a4 = v59;
      a2 = v50;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v60 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v17 = a2;
      v53 = (v8 + 8);
      v54 = a3;
      while (1)
      {
        v59 = a4;
        v55 = a1;
        v18 = *a4;
        v19 = *v17;
        v20 = v18;
        v21 = [v19 timestamp];
        sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
        v22 = v57;
        static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = [v20 timestamp];
        v24 = v58;
        static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10001042C();
        v25 = v56;
        v26 = dispatch thunk of static Comparable.< infix(_:_:)();
        v27 = *v53;
        (*v53)(v24, v25);
        v27(v22, v25);

        if ((v26 & 1) == 0)
        {
          break;
        }

        v28 = v17;
        v29 = v55;
        v30 = v55 == v17++;
        a4 = v59;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 1;
        if (a4 >= v60 || v17 >= v54)
        {
          goto LABEL_20;
        }
      }

      v28 = v59;
      a4 = v59 + 1;
      v29 = v55;
      if (v55 == v59)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_38:
  if (a2 != a4 || a2 >= (a4 + ((v60 - a4 + (v60 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v60 - a4));
  }

  return 1;
}

uint64_t sub_10000FDC4(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v19 < v18)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (*v4 >= v11)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_10000FFB0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10001003C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_100010050()
{
  result = qword_100038218;
  if (!qword_100038218)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038218);
  }

  return result;
}

void *sub_1000100D0(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1000101D4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

LABEL_23:
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v8 = [v5 notificationSeverity];
    v9 = sub_10001A7B4(v8);
    v11 = _swiftEmptyDictionarySingleton[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      goto LABEL_21;
    }

    v15 = v10;
    if (_swiftEmptyDictionarySingleton[3] < v14)
    {
      sub_10000E138(v14, 1);
      v9 = sub_10001A7B4(v8);
      if ((v15 & 1) != (v16 & 1))
      {
        break;
      }
    }

    if (v15)
    {
      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v9);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      v17 = v9;
      sub_100003FD8(&qword_100038A90, &unk_100024110);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1000240B0;
      *(v18 + 32) = v6;
      _swiftEmptyDictionarySingleton[(v17 >> 6) + 8] |= 1 << v17;
      *(_swiftEmptyDictionarySingleton[6] + v17) = v8;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v17) = v18;
      v19 = _swiftEmptyDictionarySingleton[2];
      v13 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v13)
      {
        goto LABEL_22;
      }

      _swiftEmptyDictionarySingleton[2] = v20;
    }

    if (v7 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  type metadata accessor for CAFNotificationSeverity();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10001042C()
{
  result = qword_100038238;
  if (!qword_100038238)
  {
    sub_10000A834(&unk_100037AF0, qword_100023C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038238);
  }

  return result;
}

id sub_1000106C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsWindowSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10001071C(void *a1, void *a2, void *a3)
{
  CAFSignpostEmit_Scene();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = a1;
  v9 = [a2 role];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {

LABEL_8:
      static os_log_type_t.debug.getter();
      if (qword_100037840 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      return;
    }
  }

  v35 = v8;
  v16 = [v7 _FBSScene];
  v17 = [v16 settings];

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v18 = [objc_opt_self() sharedApplication];
    v19 = [v18 delegate];

    if (v19)
    {
      type metadata accessor for AppDelegate();
      v20 = swift_dynamicCastClassUnconditional();
      static os_log_type_t.debug.getter();
      if (qword_100037840 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      v21 = [objc_allocWithZone(UIWindow) initWithWindowScene:v7];
      [v21 setAutoresizesSubviews:1];
      [v21 setAutoresizingMask:18];
      [v21 makeKeyAndVisible];
      [v21 setHidden:0];
      v36[3] = &type metadata for VehicleFeatures;
      v36[4] = sub_100011860();
      v22 = isFeatureEnabled(_:)();
      sub_10000458C(v36);
      if (v22)
      {
        v23 = [objc_opt_self() clearColor];
      }

      else
      {
        sub_1000043C8(0, &unk_100038460, UIColor_ptr);
        v23 = static UIColor.cafui_tableBackground.getter();
      }

      v31 = v23;
      [v21 setBackgroundColor:v23];

      swift_getKeyPath();
      swift_getKeyPath();
      v36[0] = v21;
      v32 = v20;
      static Published.subscript.setter();
      swift_unknownObjectRelease();
LABEL_27:

      return;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v24 = [v7 _FBSScene];
  v25 = [v24 settings];

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();

  v27 = [objc_opt_self() sharedApplication];
  v28 = [v27 delegate];

  if (v26)
  {
    if (v28)
    {
      type metadata accessor for AppDelegate();
      swift_dynamicCastClassUnconditional();
      static os_log_type_t.debug.getter();
      if (qword_100037840 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      v29 = [objc_allocWithZone(UIWindow) initWithWindowScene:v7];
      swift_getKeyPath();
      swift_getKeyPath();
      v36[0] = v29;
      v30 = v29;
      static Published.subscript.setter();

      goto LABEL_27;
    }

    goto LABEL_33;
  }

  if (!v28)
  {
LABEL_34:
    __break(1u);
    return;
  }

  type metadata accessor for AppDelegate();
  swift_dynamicCastClassUnconditional();
  v33 = [a3 URLContexts];
  sub_1000043C8(0, &qword_100038470, UIOpenURLContext_ptr);
  sub_100011798();
  v34 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000125D4(v7, v34);
  swift_unknownObjectRelease();
}

void sub_100010DBC(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v13 = a1;
    v4 = [v3 _FBSScene];
    v5 = [v4 settings];

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v6 = [objc_opt_self() sharedApplication];
      v7 = [v6 delegate];

      if (v7)
      {
        type metadata accessor for AppDelegate();
        swift_dynamicCastClassUnconditional();
        sub_100012AF0();
LABEL_15:
        swift_unknownObjectRelease();

        return;
      }

      __break(1u);
    }

    else
    {

      v8 = [v3 _FBSScene];
      v9 = [v8 settings];

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();

      v11 = [objc_opt_self() sharedApplication];
      v12 = [v11 delegate];

      if (!v10)
      {
        if (v12)
        {
          type metadata accessor for AppDelegate();
          swift_dynamicCastClassUnconditional();
          sub_100012AD0();
          goto LABEL_15;
        }

LABEL_20:
        __break(1u);
        return;
      }

      if (v12)
      {
        type metadata accessor for AppDelegate();
        swift_dynamicCastClassUnconditional();
        sub_100012B10();
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
}

void sub_1000110A8(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v30 - v9;
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = sub_1000123B4(a1);
  if (v13)
  {
    v14 = v13;
    v15 = [v13 URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v3 + 32))(v12, v10, v2);
    v16 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v17 = qword_100039188;
    (*(v3 + 16))(v7, v12, v2);
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136315138;
      sub_100011800();
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v30 = v3;
      v23 = *(v3 + 8);
      v23(v7, v2);
      v24 = sub_10001A194(v20, v22, &v31);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v16, "AutoSettings received settings URL %s", v18, 0xCu);
      sub_10000458C(v19);

      v25 = v23;
    }

    else
    {
      v25 = *(v3 + 8);
      v25(v7, v2);
    }

    v26 = [objc_opt_self() sharedApplication];
    v27 = [v26 delegate];

    if (v27)
    {
      type metadata accessor for AppDelegate();
      v28 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
      v29 = v28;
      swift_unknownObjectRelease();
      if (v28)
      {
        sub_100017B24();

        v25(v12, v2);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100011428(void *a1)
{
  v1 = [a1 session];
  v2 = [v1 role];

  CAFSignpostEmit_SceneWillEnterForeground();
  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 delegate];

  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  type metadata accessor for AppDelegate();
  v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  sub_100018914();
  swift_unknownObjectRelease();
}

unint64_t sub_100011798()
{
  result = qword_1000382D0;
  if (!qword_1000382D0)
  {
    sub_1000043C8(255, &qword_100038470, UIOpenURLContext_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000382D0);
  }

  return result;
}

unint64_t sub_100011800()
{
  result = qword_1000382D8;
  if (!qword_1000382D8)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000382D8);
  }

  return result;
}

unint64_t sub_100011860()
{
  result = qword_1000382E0;
  if (!qword_1000382E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000382E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VehicleFeatures(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for VehicleFeatures(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000119B0()
{
  result = qword_100038350;
  if (!qword_100038350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038350);
  }

  return result;
}

uint64_t sub_100011A04()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100012368();
  result = OS_os_log.init(subsystem:category:)();
  qword_100039188 = result;
  return result;
}

uint64_t sub_100011ACC()
{
  v57 = type metadata accessor for URL();
  v1 = *(v57 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v57);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = &v50 - v6;
  v7 = type metadata accessor for URLQueryItem();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v50 - v13;
  v14 = sub_100003FD8(&qword_1000388B0, &unk_100024298);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v50 - v16;
  v18 = type metadata accessor for URLComponents();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v0;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100012300(v17);
    LOBYTE(v23) = static os_log_type_t.debug.getter();
    if (qword_100037840 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_24;
  }

  v51 = v1;
  (*(v19 + 32))(v22, v17, v18);
  v32 = URLComponents.queryItems.getter();
  v33 = v57;
  v52 = v22;
  v53 = v19;
  if (!v32)
  {
LABEL_14:
    v38 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v39 = qword_100039188;
    v40 = v51;
    v41 = v55;
    (*(v51 + 16))(v55, v56, v33);
    if (os_log_type_enabled(v39, v38))
    {
      v42 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v42 = 136315394;
      sub_100011800();
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v40 + 8))(v41, v33);
      v46 = sub_10001A194(v43, v45, &v59);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_10001A194(0x696669746E656469, 0xEA00000000007265, &v59);
      _os_log_impl(&_mh_execute_header, v39, v38, "URL %s doesn't seem to have a %s query parameter.", v42, 0x16u);
      swift_arrayDestroy();

      (*(v53 + 8))(v52, v18);
    }

    else
    {
      (*(v40 + 8))(v41, v33);
      (*(v53 + 8))(v22, v18);
    }

    return 0;
  }

  v1 = v32;
  v50 = v18;
  v58 = *(v32 + 16);
  if (!v58)
  {
LABEL_13:

    v33 = v57;
    v18 = v50;
    v22 = v52;
    goto LABEL_14;
  }

  v34 = 0;
  v23 = 0x696669746E656469;
  v5 = (v8 + 8);
  while (v34 < *(v1 + 16))
  {
    (*(v8 + 16))(v12, v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v34, v7);
    if (URLQueryItem.name.getter() == v23 && v35 == 0xEA00000000007265)
    {

LABEL_22:

      v48 = v54;
      (*(v8 + 32))(v54, v12, v7);
      v49 = URLQueryItem.value.getter();
      (*(v8 + 8))(v48, v7);
      (*(v53 + 8))(v52, v50);
      return v49;
    }

    v36 = v23;
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v37)
    {
      goto LABEL_22;
    }

    ++v34;
    (*v5)(v12, v7);
    v23 = v36;
    if (v58 == v34)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  swift_once();
LABEL_3:
  v24 = qword_100039188;
  v25 = v57;
  (*(v1 + 16))(v5, v56, v57);
  if (os_log_type_enabled(v24, v23))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v59 = v27;
    *v26 = 136315138;
    sub_100011800();
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v1 + 8))(v5, v25);
    v31 = sub_10001A194(v28, v30, &v59);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v23, "Couldn't parse URL components out of %s", v26, 0xCu);
    sub_10000458C(v27);
  }

  else
  {
    (*(v1 + 8))(v5, v25);
  }

  return 0;
}

Swift::Int sub_10001222C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100012298()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100012300(uint64_t a1)
{
  v2 = sub_100003FD8(&qword_1000388B0, &unk_100024298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100012368()
{
  result = qword_100037EE8;
  if (!qword_100037EE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100037EE8);
  }

  return result;
}

uint64_t sub_1000123B4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000139F0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000139F0(v3, v5, v2 != 0);
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

  sub_10001329C(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_1000139F0(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_10001250C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1000125D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v39[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v39[-1] - v12;
  __chkstk_darwin(v11);
  v15 = &v39[-1] - v14;
  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  v16 = qword_100039188;
  os_log(_:dso:log:_:_:)();
  v17 = [objc_allocWithZone(UIWindow) initWithWindowScene:a1];
  [v17 setAutoresizesSubviews:1];
  [v17 setAutoresizingMask:18];
  [v17 makeKeyAndVisible];
  [v17 setHidden:0];
  v39[3] = &type metadata for VehicleFeatures;
  v39[4] = sub_100011860();
  v18 = isFeatureEnabled(_:)();
  sub_10000458C(v39);
  if (v18)
  {
    v19 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_1000043C8(0, &unk_100038460, UIColor_ptr);
    v19 = static UIColor.cafui_tableBackground.getter();
  }

  v20 = v19;
  [v17 setBackgroundColor:{v19, v38}];

  swift_getKeyPath();
  swift_getKeyPath();
  v39[0] = v17;
  v21 = v3;
  static Published.subscript.setter();
  if (a2)
  {
    v22 = sub_1000123B4(a2);
    if (v22)
    {
      v23 = v22;
      v24 = [v22 URL];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v38;
      (*(v38 + 32))(v15, v13, v6);
      (*(v25 + 16))(v10, v15, v6);
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v39[0] = v28;
        *v27 = 136315138;
        sub_100011800();
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v30;
        v32 = *(v25 + 8);
        v32(v10, v6);
        v33 = sub_10001A194(v29, v31, v39);

        *(v27 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v16, v26, "AutoSettings received settings URL %s", v27, 0xCu);
        sub_10000458C(v28);
      }

      else
      {
        v32 = *(v25 + 8);
        v32(v10, v6);
      }

      v34 = [objc_opt_self() sharedApplication];
      v35 = [v34 delegate];

      if (v35)
      {
        type metadata accessor for AppDelegate();
        v36 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
        v37 = v36;
        swift_unknownObjectRelease();
        if (v36)
        {
          sub_100017B24();

          v32(v15, v6);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t sub_100012B30()
{
  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3)
  {
    [v3 setHidden:1];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

id sub_100012C6C()
{
  v1 = sub_100003FD8(&qword_100038478, &unk_1000243D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - v4;
  *&v0[OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager] = 0;
  v6 = OBJC_IVAR____TtC7Vehicle11AppDelegate__carWindow;
  v14 = 0;
  sub_100003FD8(&qword_100038420, &unk_1000242D0);
  Published.init(initialValue:)();
  v7 = *(v2 + 32);
  v7(&v0[v6], v5, v1);
  v8 = OBJC_IVAR____TtC7Vehicle11AppDelegate__clusterWindow;
  v14 = 0;
  Published.init(initialValue:)();
  v7(&v0[v8], v5, v1);
  v9 = OBJC_IVAR____TtC7Vehicle11AppDelegate__notificationWindow;
  v14 = 0;
  Published.init(initialValue:)();
  v7(&v0[v9], v5, v1);
  v10 = type metadata accessor for AppDelegate();
  v13.receiver = v0;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t type metadata accessor for AppDelegate()
{
  result = qword_100038408;
  if (!qword_100038408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012F80()
{
  sub_100013020();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100013020()
{
  if (!qword_100038418)
  {
    sub_10000A834(&qword_100038420, &unk_1000242D0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100038418);
    }
  }
}

id sub_100013104(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10001319C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10001322C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

void sub_10001329C(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000043C8(0, &qword_100038470, UIOpenURLContext_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000043C8(0, &qword_100038470, UIOpenURLContext_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
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

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_1000134C0()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v1 delegate];

  if (!v2)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  type metadata accessor for AppDelegate();
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (v23)
  {
    v3 = [v23 windowScene];
    if (!v3)
    {
LABEL_13:

      goto LABEL_16;
    }

    v4 = v3;
    v5 = [v3 windows];

    sub_1000043C8(0, &unk_100038450, UIWindow_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_37;
        }

        v7 = *(v6 + 32);
      }

      v8 = v7;

      v9 = [v23 windowScene];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 activationState];

        if (!v11)
        {
          return;
        }
      }

      else
      {
      }

      goto LABEL_13;
    }
  }

LABEL_16:
  v12 = [v0 sharedApplication];
  v13 = [v12 delegate];

  if (!v13)
  {
LABEL_40:
    __break(1u);
    return;
  }

  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  v0 = v23;
  if (!v23)
  {
    goto LABEL_31;
  }

  v14 = [v23 windowScene];
  if (!v14)
  {

    goto LABEL_31;
  }

  v15 = v14;
  v16 = [v14 windows];

  sub_1000043C8(0, &unk_100038450, UIWindow_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_30;
  }

LABEL_21:
  if ((v17 & 0xC000000000000001) == 0)
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v17 + 32);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_39;
  }

LABEL_37:
  v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_24:
  v19 = v18;

  v20 = [v0 windowScene];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 activationState];

    if (!v22)
    {
      return;
    }
  }

  else
  {
  }

LABEL_31:
  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  [objc_allocWithZone(UIWindow) init];
}

uint64_t sub_1000139F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

objc_class *sub_1000139FC()
{
  v1 = OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController____lazy_storage___cancelButton;
  v2 = *(v0 + OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController____lazy_storage___cancelButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController____lazy_storage___cancelButton);
  }

  else
  {
    v4 = v0;
    sub_1000043C8(0, &qword_1000384C8, UIButton_ptr);
    v5._countAndFlagsBits = 0x4C45434E4143;
    v5._object = 0xE600000000000000;
    isa = UIButton.init(alertButtonTitle:)(v5).super.super.super.super.isa;
    [(objc_class *)isa addTarget:v4 action:"cancelButtonTapped" forControlEvents:64];
    v7 = *(v4 + v1);
    *(v4 + v1) = isa;
    v3 = isa;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_100013AE8()
{
  v1 = v0;
  v51.receiver = v0;
  v51.super_class = type metadata accessor for VSFullScreenActionAlertViewController();
  objc_msgSendSuper2(&v51, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  sub_1000043C8(0, &unk_100038460, UIColor_ptr);
  v4 = static UIColor.cafui_tableBackground.getter();
  [v3 setBackgroundColor:v4];

  sub_1000043C8(0, &qword_1000384D0, UIStackView_ptr);
  sub_100003FD8(&qword_100038A90, &unk_100024110);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000240B0;
  *(v5 + 32) = sub_1000139FC();
  v6 = UIStackView.init(axis:spacing:arrangedSubviews:)();
  [v6 setDistribution:1];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = v6;
  [v8 addSubview:v9];

  if (*&v1[OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController_action])
  {
    sub_1000043C8(0, &qword_1000384C8, UIButton_ptr);
    v10._countAndFlagsBits = 0x484354495753;
    v10._object = 0xE600000000000000;
    isa = UIButton.init(alertButtonTitle:)(v10).super.super.super.super.isa;
    [(objc_class *)isa addTarget:v1 action:"primaryAction" forControlEvents:64];
    [v9 addArrangedSubview:isa];
  }

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000243E0;
  v13 = *&v1[OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController_titleLabel];
  v14 = *&v1[OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController_messageLabel];
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  v15 = v13;
  v16 = v14;

  v17 = UIStackView.init(axis:spacing:arrangedSubviews:)();
  v18 = [v1 view];
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = v18;
  v20 = v17;
  [v19 addSubview:v20];

  v21 = [v1 view];
  if (v21)
  {
    v22 = v21;

    v23 = [v22 safeAreaLayoutGuide];

    v50 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1000240A0;
    v25 = [v20 topAnchor];

    v26 = [v23 topAnchor];
    [v23 layoutFrame];
    v27 = [v25 constraintEqualToAnchor:v26 constant:CGRectGetHeight(v52) * 0.05];

    *(v24 + 32) = v27;
    v28 = [v20 bottomAnchor];

    v29 = [v9 topAnchor];
    v30 = [v28 constraintLessThanOrEqualToAnchor:v29 constant:30.0];

    *(v24 + 40) = v30;
    v31 = [v20 leadingAnchor];

    v32 = [v23 leadingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:12.0];

    *(v24 + 48) = v33;
    v34 = [v20 trailingAnchor];

    v35 = [v23 trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:-12.0];

    *(v24 + 56) = v36;
    v37 = [v9 bottomAnchor];

    v38 = [v23 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:-24.0];

    *(v24 + 64) = v39;
    v40 = [v9 leadingAnchor];

    v41 = [v23 leadingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:12.0];

    *(v24 + 72) = v42;
    v43 = [v9 trailingAnchor];

    v44 = [v23 trailingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44 constant:-12.0];

    *(v24 + 80) = v45;
    v46 = [v9 centerXAnchor];

    v47 = [v23 centerXAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    *(v24 + 88) = v48;
    sub_1000043C8(0, &qword_100038200, NSLayoutConstraint_ptr);
    v49 = Array._bridgeToObjectiveC()().super.isa;

    [v50 activateConstraints:v49];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_10001429C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VSFullScreenActionAlertViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100014364(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setFont:a1];
  [v4 setTextAlignment:1];
  v5 = [objc_opt_self() labelColor];
  [v4 setTextColor:v5];

  [v4 setNumberOfLines:a2];
  return v4;
}

void sub_100014454()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController_titleLabel;
  v3 = objc_opt_self();
  v4 = [v3 boldSystemFontOfSize:28.0];
  sub_1000043C8(0, &qword_1000384D8, UILabel_ptr);
  v5 = sub_100014364(v4, 1);

  *(v0 + v2) = v5;
  v6 = OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController_messageLabel;
  v7 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];
  v8 = sub_100014364(v7, 3);

  *(v1 + v6) = v8;
  *(v1 + OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController____lazy_storage___cancelButton) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100014578(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_100014588()
{
  v48 = type metadata accessor for Zone.ZoneRegion();
  v1 = *(v48 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v48);
  v47 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [*(v0 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager) currentCar];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 automakerRequestContent];

  sub_1000043C8(0, &qword_1000388B8, CAFAutomakerRequestContent_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
LABEL_22:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    v43 = v1;
    if (v8)
    {
LABEL_4:
      v1 = 0;
      v9 = &_swiftEmptyArrayStorage;
      do
      {
        v10 = v1;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v11 = *(v7 + 8 * v10 + 32);
          }

          v12 = v11;
          v1 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          v13 = [v11 requestTemporaryContents];
          if (v13)
          {
            break;
          }

          ++v10;
          if (v1 == v8)
          {
            goto LABEL_24;
          }
        }

        v14 = v13;
        sub_1000043C8(0, &unk_1000388C0, CAFRequestTemporaryContent_ptr);
        v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100004144(0, v9[2] + 1, 1, v9);
        }

        v17 = v9[2];
        v16 = v9[3];
        if (v17 >= v16 >> 1)
        {
          v9 = sub_100004144((v16 > 1), v17 + 1, 1, v9);
        }

        v9[2] = v17 + 1;
        v9[v17 + 4] = v15;
      }

      while (v1 != v8);
      goto LABEL_24;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = v1;
    if (v8)
    {
      goto LABEL_4;
    }
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_24:

  v18 = sub_100019AB0(v9);

  if (v18 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v20 = 0;
    v50 = v18 & 0xC000000000000001;
    v49 = v18 & 0xFFFFFFFFFFFFFF8;
    v45 = enum case for Zone.ZoneRegion.zone1(_:);
    v21 = (v43 + 13);
    ++v43;
    v44 = v21;
    v46 = v18;
    while (1)
    {
      if (v50)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v49 + 16))
        {
          goto LABEL_46;
        }

        v23 = *(v18 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v26 = [v23 displayPanelIdentifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (v27 == 0x445F7265746E6543 && v29 == 0xEE0079616C707369)
      {
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v31 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v32 = [v24 displayZoneIdentifier];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = v47;
      v37 = v48;
      (*v44)(v47, v45, v48);
      v38 = Zone.ZoneRegion.rawValue.getter();
      v40 = v39;
      (*v43)(v36, v37);
      if (v33 == v38 && v35 == v40)
      {

        return v24;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v18 = v46;
      if (v22)
      {

        return v24;
      }

LABEL_28:

      ++v20;
      if (v25 == i)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

LABEL_48:

  return 0;
}

void *sub_100014AA0()
{
  v48 = type metadata accessor for Zone.ZoneRegion();
  v1 = *(v48 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v48);
  v47 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [*(v0 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager) currentCar];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 automakerRequestContent];

  sub_1000043C8(0, &qword_1000388B8, CAFAutomakerRequestContent_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
LABEL_22:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    v43 = v1;
    if (v8)
    {
LABEL_4:
      v1 = 0;
      v9 = &_swiftEmptyArrayStorage;
      do
      {
        v10 = v1;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v11 = *(v7 + 8 * v10 + 32);
          }

          v12 = v11;
          v1 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          v13 = [v11 requestContents];
          if (v13)
          {
            break;
          }

          ++v10;
          if (v1 == v8)
          {
            goto LABEL_24;
          }
        }

        v14 = v13;
        sub_1000043C8(0, &qword_1000388E8, CAFRequestContent_ptr);
        v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100004168(0, v9[2] + 1, 1, v9);
        }

        v17 = v9[2];
        v16 = v9[3];
        if (v17 >= v16 >> 1)
        {
          v9 = sub_100004168((v16 > 1), v17 + 1, 1, v9);
        }

        v9[2] = v17 + 1;
        v9[v17 + 4] = v15;
      }

      while (v1 != v8);
      goto LABEL_24;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = v1;
    if (v8)
    {
      goto LABEL_4;
    }
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_24:

  v18 = sub_100019DA8(v9);

  if (v18 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v20 = 0;
    v50 = v18 & 0xC000000000000001;
    v49 = v18 & 0xFFFFFFFFFFFFFF8;
    v45 = enum case for Zone.ZoneRegion.zone1(_:);
    v21 = (v43 + 13);
    ++v43;
    v44 = v21;
    v46 = v18;
    while (1)
    {
      if (v50)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v49 + 16))
        {
          goto LABEL_46;
        }

        v23 = *(v18 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v26 = [v23 displayPanelIdentifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (v27 == 0x445F7265746E6543 && v29 == 0xEE0079616C707369)
      {
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v31 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v32 = [v24 displayZoneIdentifier];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = v47;
      v37 = v48;
      (*v44)(v47, v45, v48);
      v38 = Zone.ZoneRegion.rawValue.getter();
      v40 = v39;
      (*v43)(v36, v37);
      if (v33 == v38 && v35 == v40)
      {

        return v24;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v18 = v46;
      if (v22)
      {

        return v24;
      }

LABEL_28:

      ++v20;
      if (v25 == i)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

LABEL_48:

  return 0;
}

uint64_t sub_100014FB8()
{
  v1 = type metadata accessor for URLQueryItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v45 = &v40 - v7;
  v8 = sub_100003FD8(&qword_1000388B0, &unk_100024298);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for CAUFeatureConfiguration();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = *(v0 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_assetManager);
  v21 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
  if (v21)
  {
    CAUAssetLibrary.featureConfiguration()();

    (*(v13 + 32))(v19, v17, v12);
    v22 = sub_100014588();
    if (v22)
    {
      v42 = v12;
      v23 = v22;
      v24 = [v22 temporaryContentURL];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      URLComponents.init(string:)();

      v25 = type metadata accessor for URLComponents();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v11, 1, v25) == 1)
      {
        (*(v13 + 8))(v19, v42);
        sub_10000B6D0(v11, &qword_1000388B0, &unk_100024298);
      }

      else
      {
        v27 = URLComponents.queryItems.getter();
        result = (*(v26 + 8))(v11, v25);
        if (v27)
        {
          v41 = v13;
          v43 = *(v27 + 16);
          if (v43)
          {
            v29 = 0;
            v30 = 0x696669746E656469;
            v44 = v2 + 16;
            while (1)
            {
              if (v29 >= *(v27 + 16))
              {
                __break(1u);
                return result;
              }

              (*(v2 + 16))(v6, v27 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v29, v1);
              if (URLQueryItem.name.getter() == v30 && v31 == 0xEA00000000007265)
              {
                break;
              }

              v32 = v30;
              v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v33)
              {
                goto LABEL_17;
              }

              ++v29;
              result = (*(v2 + 8))(v6, v1);
              v30 = v32;
              if (v43 == v29)
              {
                goto LABEL_14;
              }
            }

LABEL_17:

            v34 = v45;
            (*(v2 + 32))(v45, v6, v1);
            v21 = URLQueryItem.value.getter();
            v36 = v35;
            (*(v2 + 8))(v34, v1);
            v38 = v41;
            v37 = v42;
            if (v36)
            {
              v39._countAndFlagsBits = v21;
              v39._object = v36;
              LOBYTE(v21) = CAUFeatureConfiguration.doesSupport(_:)(v39);

              (*(v38 + 8))(v19, v37);
              return v21 & 1;
            }

            (*(v41 + 8))(v19, v42);
          }

          else
          {
LABEL_14:

            (*(v41 + 8))(v19, v42);
          }
        }

        else
        {
          (*(v13 + 8))(v19, v42);
        }
      }
    }

    else
    {
      (*(v13 + 8))(v19, v12);
    }

    LOBYTE(v21) = 0;
  }

  return v21 & 1;
}

void sub_1000154E4()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];

  if (!v2)
  {
    __break(1u);
    return;
  }

  type metadata accessor for AppDelegate();
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (v7)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible);
    v4 = [v7 rootViewController];
    v5 = v4;
    if (v3 == 1)
    {
      if (!v4)
      {
LABEL_7:
        static os_log_type_t.debug.getter();
        if (qword_100037840 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        v6 = [objc_allocWithZone(type metadata accessor for CAFUILoadingViewController()) init];
        [v7 setRootViewController:v6];

        goto LABEL_15;
      }

      type metadata accessor for CAFUILoadingViewController();
      if (!swift_dynamicCastClass())
      {

        goto LABEL_7;
      }
    }

    else
    {
      if (!v4)
      {
LABEL_15:
        v5 = v7;
LABEL_17:

        return;
      }

      type metadata accessor for CAFUILoadingViewController();
      if (swift_dynamicCastClass())
      {

        static os_log_type_t.debug.getter();
        if (qword_100037840 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        [v7 setRootViewController:0];
        goto LABEL_15;
      }
    }

    goto LABEL_17;
  }
}

void sub_10001577C()
{
  v1 = v0;
  v2 = sub_100003FD8(&qword_100038800, &qword_100024528);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v59 - v4;
  v6 = sub_100003FD8(&qword_100038888, &qword_100024550);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v59 - v9;
  v11 = sub_100003FD8(&unk_100038890, &qword_100024558);
  v12 = *(v11 - 8);
  v71 = v11;
  v72 = v12;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v68 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v59 - v16;
  v18 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager;
  *&v1[v18] = [objc_allocWithZone(CAFCarManager) init];
  v19 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_assetManager;
  v20 = type metadata accessor for CAUAssetLibraryManager();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *&v1[v19] = CAUAssetLibraryManager.init()();
  v23 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_subscribers;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v58 = sub_10001AC60(&_swiftEmptyArrayStorage);
    }

    else
    {
      v58 = &_swiftEmptySetSingleton;
    }

    *&v1[v23] = v58;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v24 = sub_10001AC60(&_swiftEmptyArrayStorage);
    }

    else
    {
      v24 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v24 = &_swiftEmptySetSingleton;
    *&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_subscribers] = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationHistorysubscribers] = v24;
  *&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_vsRootViewController] = 0;
  Date.init()();
  *&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_lastNotificationCount] = 0;
  v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_fireRenderedAndFinalizedSignposts] = 1;
  *&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationManager] = 0;
  v25 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_settingsCache;
  v26 = type metadata accessor for CAFUISettingsCache();
  (*(*(v26 - 8) + 56))(&v1[v25], 1, 1, v26);
  v27 = &v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_modalSettingsIdentifier];
  *v27 = 0;
  v27[1] = 0;
  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  v70 = v7;
  os_log(_:dso:log:_:_:)();
  v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible] = 1;
  v28 = [objc_allocWithZone(CARSessionStatus) init];
  *&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_carSessionStatus] = v28;
  v29 = type metadata accessor for SettingsCarManager();
  v74.receiver = v1;
  v74.super_class = v29;
  v30 = objc_msgSendSuper2(&v74, "init");
  v31 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager;
  v32 = *&v30[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager];
  v33 = v30;
  [v32 registerObserver:v33];
  v34 = *&v30[v31];
  v35 = [v34 currentCar];
  [v33 carManager:v34 didUpdateCurrentCar:v35];

  v36 = *&v33[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_carSessionStatus];
  [v36 addSessionObserver:v33];

  v69 = objc_opt_self();
  v37 = [v69 sharedApplication];
  v38 = [v37 delegate];

  if (v38)
  {
    v67 = type metadata accessor for AppDelegate();
    swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v66 = sub_100003FD8(&qword_100038478, &unk_1000243D0);
    Published.projectedValue.getter();
    swift_endAccess();
    swift_unknownObjectRelease();
    v65 = objc_opt_self();
    v39 = [v65 mainRunLoop];
    v73 = v39;
    v40 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v41 = *(v40 - 8);
    v42 = *(v41 + 56);
    v60 = v40;
    v63 = v41 + 56;
    v64 = v42;
    (v42)(v5, 1, 1);
    v43 = sub_1000043C8(0, &qword_100038840, NSRunLoop_ptr);
    v44 = v5;
    v45 = sub_10000BD80(&qword_1000388A0, &qword_100038888, &qword_100024550);
    v46 = sub_10001BB14(&qword_100038850, &qword_100038840, NSRunLoop_ptr);
    v61 = v45;
    v62 = v43;
    v59[2] = v46;
    Publisher.receive<A>(on:options:)();
    sub_10000B6D0(v44, &qword_100038800, &qword_100024528);

    v70 = *(v70 + 8);
    (v70)(v10, v6);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = sub_10000BD80(&qword_1000388A8, &unk_100038890, &qword_100024558);
    v48 = v33;
    v49 = v71;
    v59[1] = v47;
    Publisher<>.sink(receiveValue:)();

    v50 = v6;
    v51 = v44;
    v52 = *(v72 + 8);
    v72 += 8;
    v59[0] = v52;
    v52(v17, v49);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v53 = [v69 sharedApplication];
    v54 = [v53 delegate];

    if (v54)
    {
      swift_dynamicCastClassUnconditional();
      swift_beginAccess();
      Published.projectedValue.getter();
      swift_endAccess();
      swift_unknownObjectRelease();
      v55 = [v65 mainRunLoop];
      v73 = v55;
      v64(v44, 1, 1, v60);
      v56 = v68;
      Publisher.receive<A>(on:options:)();
      sub_10000B6D0(v51, &qword_100038800, &qword_100024528);

      (v70)(v10, v50);
      swift_allocObject();
      swift_unknownObjectWeakInit();

      v57 = v71;
      Publisher<>.sink(receiveValue:)();

      (v59[0])(v56, v57);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      sub_100016174();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000160FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100016174();
  }
}

void sub_100016174()
{
  v1 = v0;
  v2 = sub_100003FD8(&qword_1000387F8, &qword_100024520);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v158 - v4;
  v6 = sub_100003FD8(&qword_100038800, &qword_100024528);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v158 - v8;
  v174 = sub_100003FD8(&qword_100038808, &qword_100024530);
  v170 = *(v174 - 8);
  v10 = *(v170 + 64);
  __chkstk_darwin(v174);
  v173 = &v158 - v11;
  v12 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v171 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v158 - v17;
  __chkstk_darwin(v16);
  v20 = &v158 - v19;
  sub_100018D58();
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v21 = sub_10001AC60(&_swiftEmptyArrayStorage);
  }

  else
  {
    v21 = &_swiftEmptySetSingleton;
  }

  v22 = &v0[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationHistorysubscribers];
  swift_beginAccess();
  v23 = *v22;
  *v22 = v21;

  v24 = [*(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_carSessionStatus) currentSession];
  if (!v24)
  {
    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      goto LABEL_50;
    }

    goto LABEL_28;
  }

  v166 = v5;
  v172 = v24;
  v168 = *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager);
  v25 = [v168 currentCar];
  if (!v25)
  {
    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible) = 1;
    sub_1000154E4();

    return;
  }

  v26 = v25;
  v27 = [v25 isConfigured];
  v167 = v26;
  if (!v27)
  {
    v42 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v43 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v42))
    {
      v44 = v26;
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      v46 = [v44 accessories];
      type metadata accessor for UUID();
      sub_1000043C8(0, &qword_100038810, CAFAccessory_ptr);
      sub_10001B994(&qword_100038818, &type metadata accessor for UUID);
      v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v48 = *(v47 + 16);

      *(v45 + 4) = v48;

      v26 = v167;
      _os_log_impl(&_mh_execute_header, v43, v42, "Waiting for car configuration to be set... accessory count=%ld", v45, 0xCu);
    }

    *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible) = 1;
    sub_1000154E4();

    return;
  }

  v28 = [v26 automakerSettings];
  if (!v28)
  {
    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
LABEL_55:
    v56 = [v26 automakerNotificationHistory];
    if (v56)
    {
      v57 = v56;
      if (![v56 receivedAllValues])
      {
        v18 = v57;
        LOBYTE(v57) = static os_log_type_t.debug.getter();
        if (qword_100037840 == -1)
        {
LABEL_69:
          v69 = qword_100039188;
          if (os_log_type_enabled(qword_100039188, v57))
          {
            v70 = v18;
            v71 = swift_slowAlloc();
            *v71 = 67109120;
            *(v71 + 4) = [v70 receivedAllValues];

            _os_log_impl(&_mh_execute_header, v69, v57, "Waiting for automakerNotificationHistory to receive all values current... receivedAllValues=%{BOOL}d", v71, 8u);
            v26 = v167;
          }

          *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible) = 1;
          sub_1000154E4();

          return;
        }

LABEL_74:
        swift_once();
        goto LABEL_69;
      }

      v158 = v57;
      v58 = [v57 historicalNotifications];
      if (v58)
      {
        v59 = v58;
        v163 = sub_1000043C8(0, &qword_1000381E8, CAFHistoricalNotification_ptr);
        v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v165 = v60;
        v164 = v22;
        if (v60 >> 62)
        {
          v57 = _CocoaArrayWrapper.endIndex.getter();
          if (v57)
          {
LABEL_60:
            v61 = 0;
            v162 = v165 & 0xC000000000000001;
            v161 = v165 & 0xFFFFFFFFFFFFFF8;
            v159 = (v170 + 8);
            v160 = v57;
            while (1)
            {
              if (v162)
              {
                v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v61 >= *(v161 + 16))
                {
                  goto LABEL_73;
                }

                v62 = *(v165 + 8 * v61 + 32);
              }

              v63 = v62;
              if (__OFADD__(v61, 1))
              {
                break;
              }

              v170 = v61 + 1;
              sub_10001BB14(&qword_100038830, &qword_1000381E8, CAFHistoricalNotification_ptr);
              v169 = v63;
              v64 = CAFObserved<>.observable.getter();
              v65 = dispatch thunk of CAFHistoricalNotificationObservable.$hidden.getter();

              v180 = v65;
              v18 = [objc_opt_self() mainRunLoop];
              v179 = v18;
              v66 = type metadata accessor for NSRunLoop.SchedulerOptions();
              (*(*(v66 - 8) + 56))(v9, 1, 1, v66);
              sub_100003FD8(&qword_100038838, &qword_100024538);
              sub_1000043C8(0, &qword_100038840, NSRunLoop_ptr);
              v26 = v1;
              sub_10000BD80(&qword_100038848, &qword_100038838, &qword_100024538);
              sub_10001BB14(&qword_100038850, &qword_100038840, NSRunLoop_ptr);
              v67 = v173;
              Publisher.receive<A>(on:options:)();
              sub_10000B6D0(v9, &qword_100038800, &qword_100024528);

              swift_allocObject();
              swift_unknownObjectWeakInit();
              sub_10000BD80(&qword_100038858, &qword_100038808, &qword_100024530);
              v68 = v174;
              Publisher<>.sink(receiveValue:)();

              (*v159)(v67, v68);
              swift_beginAccess();
              v57 = v160;
              AnyCancellable.store(in:)();
              swift_endAccess();

              ++v61;
              if (v170 == v57)
              {
                goto LABEL_76;
              }
            }

            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }
        }

        else
        {
          v57 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v57)
          {
            goto LABEL_60;
          }
        }

LABEL_76:
      }
    }

    v72 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationManager;
    if (!*(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationManager))
    {
      v73 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_settingsCache;
      swift_beginAccess();
      v74 = v171;
      sub_10001B9DC(v1 + v73, v171);
      v75 = *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_assetManager);
      v76 = type metadata accessor for AutoSettingsNotificationManager(0);
      v77 = *(v76 + 48);
      v78 = *(v76 + 52);
      swift_allocObject();
      v79 = v168;
      v80 = v172;

      AutoSettingsNotificationManager.init(carManager:settingsCache:carSession:assetManager:)(v79, v74, v80, v75);
      v81 = *(v1 + v72);
      *(v1 + v72) = v82;
    }

    v83 = [objc_opt_self() sharedApplication];
    v84 = [v83 delegate];

    if (!v84)
    {
      __break(1u);
      return;
    }

    type metadata accessor for AppDelegate();
    swift_dynamicCastClassUnconditional();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_unknownObjectRelease();
    v85 = v179;
    if (!v179)
    {
      static os_log_type_t.debug.getter();
      v89 = v167;
      if (qword_100037840 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();

      return;
    }

    v86 = [v179 rootViewController];
    v87 = v167;
    if (v86)
    {
      v88 = v86;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        return;
      }
    }

    *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible) = 0;
    sub_1000154E4();
    v90 = [v87 automakerSettings];
    if (v90)
    {
      v91 = v90;
      [v90 unregisterObserver:v1];
    }

    v92 = [v87 automakerNotificationHistory];
    if (v92)
    {
      v93 = v92;
      v94 = sub_10000BE80();

      if (v94 >> 62)
      {
        v95 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v95 = 0;
    }

    *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_lastNotificationCount) = v95;
    v96 = [v85 rootViewController];
    if (v96)
    {

      static os_log_type_t.debug.getter();
      if (qword_100037840 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();

      return;
    }

    v97 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_settingsCache;
    swift_beginAccess();
    v98 = v171;
    sub_10001B9DC(v1 + v97, v171);
    v99 = sub_10001AEF4(v87, v98);
    sub_10000B6D0(v98, &qword_100037BD0, &qword_100023C80);
    if (v99)
    {
      v100 = [v87 automakerNotificationHistory];
      if (v100)
      {
        v101 = v100;
        v102 = type metadata accessor for CAFUIRequestContentManager();
        v103 = *(v102 + 48);
        v104 = *(v102 + 52);
        swift_allocObject();
        v105 = v172;
        v106 = CAFUIRequestContentManager.init(session:)();
        v107 = objc_allocWithZone(type metadata accessor for VSNotificationHistoryViewController());
        v108 = qword_100038030;
        v109 = objc_allocWithZone(type metadata accessor for VSEmptyNotificationHistoryView());
        v110 = v101;
        *&v107[v108] = [v109 init];
        v111 = qword_100038048;
        *&v107[v111] = sub_10001AB50(&_swiftEmptyArrayStorage);
        *&v107[qword_100038040] = v106;
        *&v107[qword_100038038] = v110;
        v112 = CAFUITableViewController.init(style:)();
        v113 = [v112 navigationItem];
        [v113 setHidesBackButton:1 animated:0];

LABEL_121:
        v153 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v112];

        [v153 setDelegate:v1];
        [v85 setRootViewController:v153];
        v154 = *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_modalSettingsIdentifier + 8);
        if (v154)
        {
          v155 = *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_modalSettingsIdentifier);
          v156 = *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_modalSettingsIdentifier + 8);

          sub_100017C1C(v155, v154);
        }

        return;
      }
    }

    v114 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v115 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v114))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *v116 = 138412290;
      v118 = v167;
      *(v116 + 4) = v167;
      *v117 = v118;
      v119 = v118;
      _os_log_impl(&_mh_execute_header, v115, v114, "Connecting to car main scene for %@", v116, 0xCu);
      sub_10000B6D0(v117, &unk_100037B00, qword_100024000);
    }

    v120 = *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_assetManager);
    v121 = v1 + v97;
    v122 = v171;
    sub_10001B9DC(v121, v171);
    v123 = objc_allocWithZone(type metadata accessor for VSRootViewController(0));
    v124 = v172;
    v125 = v167;

    v126 = VSRootViewController.init(carSession:cafCar:assetManager:settingsCache:)(v124, v125, v120, v122);
    v127 = String._bridgeToObjectiveC()();
    v128 = sub_10001BA4C(v127);

    v129 = v128;
    if (!v128)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v129 = String._bridgeToObjectiveC()();
    }

    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v131;
    v133 = [v125 vehicleResources];
    if (v133 && (v134 = v133, v135 = [v133 vehicleInformation], v134, v135))
    {
      v136 = [v135 vehicleUserVisibleLabel];

      v137 = v136;
      if (!v136)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v137 = String._bridgeToObjectiveC()();
      }

      v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v140 = v139;
      v141 = HIBYTE(v139) & 0xF;
      if ((v139 & 0x2000000000000000) == 0)
      {
        v141 = v138 & 0xFFFFFFFFFFFFLL;
      }

      if (v141)
      {
        v142 = v138;

        v177 = v142;
        v178 = v140;
        v175 = v130;
        v176 = v132;
        v143 = type metadata accessor for Locale();
        v144 = v166;
        (*(*(v143 - 8) + 56))(v166, 1, 1, v143);
        sub_10001BAC0();
        StringProtocol.range<A>(of:options:range:locale:)();
        v146 = v145;
        sub_10000B6D0(v144, &qword_1000387F8, &qword_100024520);
        if (v146)
        {

          v177 = 32;
          v178 = 0xE100000000000000;
          v147 = v126;
          v148._countAndFlagsBits = v130;
          v148._object = v132;
          String.append(_:)(v148);

          v149 = v177;
          v150 = v178;
          v177 = v142;
          v178 = v140;

          v151._countAndFlagsBits = v149;
          v151._object = v150;
          String.append(_:)(v151);

          v129 = String._bridgeToObjectiveC()();
        }

        else
        {

          v157 = v126;

          v129 = v137;
        }

        goto LABEL_120;
      }
    }

    else
    {
    }

    v152 = v126;
LABEL_120:
    [v126 setTitle:v129];

    v113 = *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_vsRootViewController);
    *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_vsRootViewController) = v126;
    v112 = v126;
    goto LABEL_121;
  }

  v165 = v28;
  if (![v28 receivedAllValues])
  {
    v49 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v50 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v49))
    {
      v51 = v165;
      v52 = swift_slowAlloc();
      *v52 = 67109120;
      *(v52 + 4) = [v51 receivedAllValues];

      _os_log_impl(&_mh_execute_header, v50, v49, "Waiting for automakerSettings to receive all values current... receivedAllValues=%{BOOL}d", v52, 8u);
      v26 = v167;
    }

    *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible) = 1;
    sub_1000154E4();

    return;
  }

  v29 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_settingsCache;
  swift_beginAccess();
  v163 = v29;
  sub_10001B9DC(v1 + v29, v20);
  v30 = type metadata accessor for CAFUISettingsCache();
  v161 = *(v30 - 8);
  v31 = *(v161 + 48);
  v162 = v30;
  if (v31(v20, 1) != 1)
  {

    sub_10000B6D0(v20, &qword_100037BD0, &qword_100023C80);
    goto LABEL_55;
  }

  v164 = v22;
  sub_10000B6D0(v20, &qword_100037BD0, &qword_100023C80);
  v32 = CAFAutomakerSettings.allSettings.getter();
  v33 = v32;
  v180 = &_swiftEmptyArrayStorage;
  if (v32 >> 62)
  {
    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (v34)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

  v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
LABEL_52:

    v53 = [v165 settingsSections];
    if (v53)
    {
      v54 = v53;
      sub_1000043C8(0, &qword_100038860, CAFSettingsSection_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v22 = v164;
    CAFUISettingsCache.init(settings:sections:)();

    (*(v161 + 56))(v18, 0, 1, v162);
    v55 = v163;
    swift_beginAccess();
    sub_10001B8C0(v18, v1 + v55);
    swift_endAccess();
    goto LABEL_55;
  }

LABEL_11:
  v159 = v9;
  v160 = v1;
  v1 = 0;
  v169 = (v33 & 0xC000000000000001);
  while (1)
  {
    if (v169)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v35 = *(v33 + 8 * v1 + 32);
    }

    v36 = v35;
    v37 = (v1 + 1);
    if (__OFADD__(v1, 1))
    {
      break;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_23;
    }

    v38 = [v36 prominenceInfo];
    if (!v38)
    {
      goto LABEL_23;
    }

    v39 = v38;
    [v38 prominenceLevel];
    if ((CAFSettingProminenceLevel.hasAppHomeTile.getter() & 1) != 0 || ([v39 prominenceLevel], (CAFSettingProminenceLevel.hasHomescreen.getter() & 1) == 0))
    {

LABEL_23:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v41 = v180[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_24;
    }

    v40 = [v36 hidden];

    if ((v40 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_24:
    ++v1;
    if (v37 == v34)
    {
      v1 = v160;
      v9 = v159;
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  swift_once();
LABEL_28:
  os_log(_:dso:log:_:_:)();
  *(v1 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_spinnerVisible) = 1;
  sub_1000154E4();
}