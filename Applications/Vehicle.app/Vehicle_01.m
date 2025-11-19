void sub_100017AD0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100018D58();
  }
}

uint64_t sub_100017B24()
{
  v0 = sub_100011ACC();
  if (v1)
  {
    v2 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v2 = v0 & 0xFFFFFFFFFFFFLL;
    }

    if (v2)
    {
      sub_100017C1C(v0, v1);
    }
  }

  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_100017C1C(uint64_t a1, unint64_t a2)
{
  v93 = a1;
  v4 = type metadata accessor for CAFUICellSelectionAction();
  v90 = *(v4 - 8);
  v5 = v90[8];
  v6 = __chkstk_darwin(v4);
  v8 = (v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (v86 - v9);
  v11 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v86 - v16;
  v18 = type metadata accessor for CAFUISettingsCache();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v92 = v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_vsRootViewController;
  v23 = *(v2 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_vsRootViewController);
  if (!v23)
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    goto LABEL_16;
  }

  v24 = v23;
  v91 = v2;
  v25 = v24;
  CAFUITileViewController.settingsCache.getter();

  v2 = v91;
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
LABEL_16:
    sub_10000B6D0(v17, &qword_100037BD0, &qword_100023C80);
LABEL_18:
    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v42 = (v2 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_modalSettingsIdentifier);
    goto LABEL_21;
  }

  (*(v19 + 32))(v92, v17, v18);
  v26 = *(v2 + v22);
  if (!v26 || (v27 = v26, v28 = CAFUITileViewController.requestContentManager.getter(), v27, !v28))
  {
    (*(v19 + 8))(v92, v18);
    v2 = v91;
    goto LABEL_18;
  }

  v29 = CAFUISettingsCache.settings.getter();
  if (v29 >> 62)
  {
    v89 = v28;
    v85 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v89;

    if (v85)
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v30)
  {
LABEL_67:
    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();

    (*(v19 + 8))(v92, v18);
    v42 = (v91 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_modalSettingsIdentifier);
LABEL_21:
    v43 = v42[1];
    *v42 = v93;
    v42[1] = a2;
  }

LABEL_7:
  v31 = CAFUISettingsCache.settingsByIdentifiers.getter();
  if (!*(v31 + 16) || (v32 = sub_10001A73C(v93, a2), (v33 & 1) == 0))
  {

    v45 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v46 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v45))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v94 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_10001A194(v93, a2, &v94);
      _os_log_impl(&_mh_execute_header, v46, v45, "No known setting with identifier %s.", v47, 0xCu);
      sub_10000458C(v48);
    }

    goto LABEL_63;
  }

  v89 = v28;
  v34 = *(*(v31 + 56) + 8 * v32);

  swift_getObjectType();
  v35 = swift_conformsToProtocol2();
  if (v35)
  {
    v36 = v34 == 0;
  }

  else
  {
    v36 = 1;
  }

  v88 = v34;
  if (!v36)
  {
    v37 = v35;
    ObjectType = swift_getObjectType();
    v86[1] = *(v37 + 8);
    v87 = ObjectType;
    v39 = v34;
    dispatch thunk of CAFListContentRepresentable.cellSelected()();

    v40 = v90;
    if ((v90[11])(v10, v4) == enum case for CAFUICellSelectionAction.push(_:))
    {
      (v40[12])(v10, v4);
      v41 = *v10;
LABEL_33:
      v54 = v88;
LABEL_51:
      v70 = v41;
      v71 = [v54 userVisibleLabel];
      if (!v71)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = String._bridgeToObjectiveC()();
      }

      [v70 setTitle:v71];

      v72 = [v70 navigationItem];
      v73 = objc_allocWithZone(UIBarButtonItem);
      v74 = v91;
      v75 = [v73 initWithBarButtonSystemItem:24 target:v91 action:"dismissSettingsModal"];
      [v72 setLeftBarButtonItem:v75];

      v76 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v70];
      v77 = *(v74 + v22);
      if (v77)
      {
        [v77 presentViewController:v76 animated:1 completion:0];
      }

      else
      {
      }

      goto LABEL_64;
    }

    (v40[1])(v10, v4);
    v34 = v88;
  }

  swift_getObjectType();
  v49 = swift_conformsToProtocol2();
  if (v49)
  {
    v50 = v34 == 0;
  }

  else
  {
    v50 = 1;
  }

  if (!v50)
  {
    v51 = v49;
    swift_getObjectType();
    v87 = *(v51 + 8);
    v52 = v34;
    dispatch thunk of CAFListContentRepresentable.cellSelected()();

    v53 = v90;
    if ((v90[11])(v8, v4) == enum case for CAFUICellSelectionAction.push(_:))
    {
      (v53[12])(v8, v4);
      v41 = *v8;
      goto LABEL_33;
    }

    (v53[1])(v8, v4);
    v34 = v88;
  }

  v55 = CAFUISettingsCache.visibleChildren(of:)();
  v54 = v34;
  if (v55 >> 62)
  {
    v56 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v56)
  {
    v57 = v34;
LABEL_39:
    v58 = v57;
    v59 = CAFUISettingsCache.sections(for:)();

    goto LABEL_44;
  }

  v60 = CAFUISettingsCache.childToParentIdentifiers.getter();
  if (*(v60 + 16))
  {
    v61 = sub_10001A73C(v93, a2);
    if (v62)
    {
      v63 = *(*(v60 + 56) + 8 * v61);

      v57 = v63;
      goto LABEL_39;
    }
  }

  [v34 category];
  v59 = CAFUISettingsCache.categorySettings(for:)();
  v58 = 0;
LABEL_44:
  if (*(v59 + 16))
  {
    v64 = [*(v91 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_carSessionStatus) currentSession];
    if (v64)
    {
      v87 = v64;
      v90 = v58;
      v65 = static os_log_type_t.debug.getter();
      if (qword_100037840 != -1)
      {
        swift_once();
      }

      v66 = qword_100039188;
      if (os_log_type_enabled(qword_100039188, v65))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v94 = v68;
        *v67 = 136315138;
        *(v67 + 4) = sub_10001A194(v93, a2, &v94);
        _os_log_impl(&_mh_execute_header, v66, v65, "Launching modal settings presentation for setting %s", v67, 0xCu);
        sub_10000458C(v68);

        v54 = v88;
      }

      (*(v19 + 16))(v15, v92, v18);
      (*(v19 + 56))(v15, 0, 1, v18);
      v69 = *(v91 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_assetManager);
      objc_allocWithZone(type metadata accessor for CAFUITileViewController());

      v41 = CAFUITileViewController.init(carSession:prominentCategories:listItems:settingsSections:settingsCache:assetManager:requestContentManager:preventVolumeNotification:)();

      goto LABEL_51;
    }

    static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

  else
  {

    v78 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v79 = qword_100039188;
    if (!os_log_type_enabled(qword_100039188, v78))
    {

      goto LABEL_64;
    }

    v80 = swift_slowAlloc();
    v81 = v58;
    v82 = swift_slowAlloc();
    v94 = v82;
    *v80 = 136315138;
    *(v80 + 4) = sub_10001A194(v93, a2, &v94);
    _os_log_impl(&_mh_execute_header, v79, v78, "No settings sections with setting %s", v80, 0xCu);
    sub_10000458C(v82);
  }

LABEL_63:

LABEL_64:
  (*(v19 + 8))(v92, v18);
  v83 = (v91 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_modalSettingsIdentifier);
  v84 = *(v91 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_modalSettingsIdentifier + 8);
  *v83 = 0;
  v83[1] = 0;
}

void sub_100018914()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 delegate];

  if (!v10)
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
  v11 = v26;
  if (v26)
  {
    v12 = [v26 rootViewController];

    if (v12)
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {

        return;
      }

      v14 = v13;
      Date.init()();
      v15 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_lastBackgroundTime;
      swift_beginAccess();
      (*(v2 + 16))(v6, v0 + v15, v1);
      v16 = v0;
      Date.timeIntervalSince(_:)();
      v17 = v0;
      v19 = v18;
      v20 = *(v2 + 8);
      v20(v6, v1);
      v20(v8, v1);
      v21 = [*(v0 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager) currentCar];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 automakerNotificationHistory];

        if (v23)
        {
          v24 = sub_10000BE80();

          if (v24 >> 62)
          {
            v23 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v23 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v17 = v16;
        }
      }

      else
      {
        v23 = 0;
      }

      if (v19 >= 420.0)
      {
        static os_log_type_t.debug.getter();
        if (qword_100037840 == -1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v19 < 210.0 || *(v17 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_lastNotificationCount) == v23)
        {
          goto LABEL_19;
        }

        static os_log_type_t.debug.getter();
        if (qword_100037840 == -1)
        {
LABEL_18:
          os_log(_:dso:log:_:_:)();

LABEL_19:
          *(v17 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_lastNotificationCount) = v23;
          return;
        }
      }

      swift_once();
      goto LABEL_18;
    }
  }
}

void sub_100018D58()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7Vehicle18SettingsCarManager_cafCarManager) currentCar];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 automakerNotificationHistory];

    if (v3)
    {
      if ([v3 receivedAllValues])
      {
        v4 = sub_10000BE80();
        if (v4 >> 62)
        {
          v5 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        goto LABEL_9;
      }
    }
  }

  v5 = 0;
LABEL_9:
  v6 = [objc_opt_self() currentNotificationCenter];
  [v6 setBadgeCount:v5 withCompletionHandler:0];
}

id sub_100018E74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsCarManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SettingsCarManager()
{
  result = qword_1000387A8;
  if (!qword_1000387A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100019010()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000AA44();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10001932C(void *a1, char a2)
{
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
    v13 = v7;
    *v6 = 136315394;
    v8 = [a1 name];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10001A194(v9, v11, &v13);

    *(v6 + 4) = v12;
    *(v6 + 12) = 1024;
    *(v6 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v5, v4, "%s accessory updated receivedAllValues=%{BOOL}d", v6, 0x12u);
    sub_10000458C(v7);
  }

  sub_100016174();
}

void sub_100019520()
{
  v0 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v12 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = type metadata accessor for CAFUISettingsCache();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_settingsCache;
    swift_beginAccess();
    sub_10001B8C0(v3, v5 + v7);
    swift_endAccess();
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = *&v8[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationManager];
    *&v8[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationManager] = 0;
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_100016174();
  }
}

uint64_t sub_10001969C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100019748(void *a1)
{
  v3 = static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  v4 = qword_100039188;
  if (os_log_type_enabled(qword_100039188, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = a1;
    *v6 = a1;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v4, v3, "Configuration set for car %@", v5, 0xCu);
    sub_10000B6D0(v6, &unk_100037B00, qword_100024000);
  }

  v8 = [a1 automakerSettings];
  v9 = static os_log_type_t.debug.getter();
  if (v8)
  {
    v10 = v9;
    if (os_log_type_enabled(v4, v9))
    {
      v11 = v8;
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = [v11 receivedAllValues];

      _os_log_impl(&_mh_execute_header, v4, v10, "AutomakerSettings is available... receivedAllValues=%{BOOL}d", v12, 8u);
    }

    [v8 registerObserver:v1];
  }

  else
  {
    os_log(_:dso:log:_:_:)();
  }

  v13 = [a1 automakerNotificationHistory];
  v14 = static os_log_type_t.debug.getter();
  if (v13)
  {
    v15 = v14;
    if (os_log_type_enabled(v4, v14))
    {
      v16 = v13;
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = [v16 receivedAllValues];

      _os_log_impl(&_mh_execute_header, v4, v15, "NotificationHistory is available... receivedAllValues=%{BOOL}d", v17, 8u);
    }

    [v13 registerObserver:v1];
  }

  else
  {
    os_log(_:dso:log:_:_:)();
  }

  sub_100016174();
}

uint64_t sub_100019AB0(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v29 = a1 + 32;
  v3 = &qword_100037AD8;
  while (1)
  {
    v5 = *(v29 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 8 * v1);
      }

      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_10000BD80(&unk_1000388D0, v3, &unk_100024560);
      for (i = 0; i != v15; ++i)
      {
        sub_100003FD8(v3, &unk_100024560);
        v19 = v3;
        v20 = sub_10001D2B0(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_1000043C8(0, &unk_1000388C0, CAFRequestTemporaryContent_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_100019DA8(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v29 = a1 + 32;
  v3 = &qword_1000388F0;
  while (1)
  {
    v5 = *(v29 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 8 * v1);
      }

      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_10000BD80(&qword_1000388F8, v3, &unk_100024580);
      for (i = 0; i != v15; ++i)
      {
        sub_100003FD8(v3, &unk_100024580);
        v19 = v3;
        v20 = sub_10001D330(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_1000043C8(0, &qword_1000388E8, CAFRequestContent_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_10001A0A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10001A120(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_10001A194(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001A260(v11, 0, 0, 1, a1, a2);
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
    sub_10001B930(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000458C(v11);
  return v7;
}

unint64_t sub_10001A260(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001A36C(a5, a6);
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

char *sub_10001A36C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001A3B8(a1, a2);
  sub_10001A4E8(&off_100031378);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001A3B8(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001A5D4(v5, 0);
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
        v7 = sub_10001A5D4(v10, 0);
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

uint64_t sub_10001A4E8(uint64_t result)
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

  result = sub_10001A648(result, v12, 1, v3);
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

void *sub_10001A5D4(uint64_t a1, uint64_t a2)
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

  sub_100003FD8(&qword_1000387E0, &unk_1000244C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001A648(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003FD8(&qword_1000387E0, &unk_1000244C8);
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

unint64_t sub_10001A73C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10001A820(a1, a2, v6);
}

unint64_t sub_10001A7B4(Swift::UInt8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_10001A8D8(a1, v4);
}

unint64_t sub_10001A820(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10001A8D8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10001A948(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003FD8(&qword_100037F88, &qword_100024570);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_10001A73C(v5, v6);
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

unint64_t sub_10001AA4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003FD8(&qword_1000388E0, &qword_100024578);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10001A73C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void *sub_10001AB50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100003FD8(&qword_100038230, &unk_100024130);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_10001A7B4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_10001A7B4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10001AC60(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100003FD8(&qword_100038868, &unk_100024540);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    type metadata accessor for AnyCancellable();
    sub_10001B994(&qword_100038870, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_10001B994(&unk_100038878, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10001AEF4(void *a1, uint64_t a2)
{
  v4 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = [a1 audioSettings];
  if (v11 && (v12 = v11, v13 = [v11 equalizers], v12, v13) || (v14 = objc_msgSend(a1, "audioSettings"), v13 = objc_msgSend(v14, "soundDistribution"), v14, v13))
  {

    return 0;
  }

  sub_10001B9DC(a2, v10);
  v16 = type metadata accessor for CAFUISettingsCache();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v10, 1, v16) == 1)
  {
    v19 = v10;
LABEL_9:
    sub_10000B6D0(v19, &qword_100037BD0, &qword_100023C80);
    return 0;
  }

  v20 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
  v21 = *(v17 + 8);
  v21(v10, v16);
  if (v20 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22)
  {
    return 0;
  }

  sub_10001B9DC(a2, v8);
  if (v18(v8, 1, v16) == 1)
  {
    v19 = v8;
    goto LABEL_9;
  }

  v23 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
  v21(v8, v16);
  if (v23 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();

    if (v25)
    {
      return 0;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v24)
    {
      return 0;
    }
  }

  result = [a1 automakerNotificationHistory];
  if (result)
  {

    return 1;
  }

  return result;
}

void sub_10001B1E8(void *a1)
{
  v3 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v16 - v5;
  if (a1)
  {
    v7 = type metadata accessor for CAFUISettingsCache();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_settingsCache;
    swift_beginAccess();
    v9 = a1;
    sub_10001B8C0(v6, &v1[v8]);
    swift_endAccess();
    v10 = *&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationManager];
    *&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationManager] = 0;

    v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_fireRenderedAndFinalizedSignposts] = 1;
    v11 = static os_log_type_t.debug.getter();
    if (qword_100037840 != -1)
    {
      swift_once();
    }

    v12 = qword_100039188;
    if (os_log_type_enabled(qword_100039188, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v9;
      *v14 = a1;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v12, v11, "Set current car %@", v13, 0xCu);
      sub_10000B6D0(v14, &unk_100037B00, qword_100024000);
    }

    [v9 registerObserver:v1];
    if ([v9 isConfigured])
    {
      [v1 carIsConfigured:v9];
    }
  }

  else if (*&v1[OBJC_IVAR____TtC7Vehicle18SettingsCarManager_notificationManager])
  {
    memset(v16, 0, sizeof(v16));

    sub_1000080A0(v16);

    sub_10000B6D0(v16, &qword_1000387F0, &qword_100023CA0);
  }
}

void sub_10001B484(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v5 unregisterObserver:v1];

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_10001B564()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v0 - 8);
  v1 = *(v15 + 64);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v13 = *(v4 - 8);
  v14 = v4;
  v5 = *(v13 + 64);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000043C8(0, &qword_1000387B8, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10001B8A0;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001969C;
  aBlock[3] = &unk_100031600;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10001B994(&qword_1000387C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003FD8(&qword_1000387C8, &unk_1000244B8);
  sub_10000BD80(&unk_1000387D0, &qword_1000387C8, &unk_1000244B8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v15 + 8))(v3, v0);
  (*(v13 + 8))(v7, v14);
}

uint64_t sub_10001B868()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B8A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001B8C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B930(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001B994(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001B9DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10001BA4C(void *a1)
{
  v1 = a1;
  v2 = CAFUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1000316E0 table:@"Localizable"];

  return v3;
}

unint64_t sub_10001BAC0()
{
  result = qword_100038820;
  if (!qword_100038820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038820);
  }

  return result;
}

uint64_t sub_10001BB14(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000043C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t VSRootViewController.init(carSession:cafCar:assetManager:settingsCache:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a3;
  v9 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v51 = &v50 - v14;
  v15 = __chkstk_darwin(v13);
  v50 = &v50 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v50 - v18;
  __chkstk_darwin(v17);
  v21 = &v50 - v20;
  v22 = qword_1000389C8;
  *(v4 + qword_1000389C8) = 0;
  v23 = type metadata accessor for CAFUIRequestContentManager();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v52 = a1;
  v55 = CAFUIRequestContentManager.init(session:)();
  *(v4 + qword_1000389D0) = a2;
  v26 = *(v4 + v22);
  *(v5 + v22) = 0;
  v54 = a2;

  sub_10001B9DC(a4, v21);
  v27 = type metadata accessor for CAFUISettingsCache();
  p_name = *(v27 - 8);
  v29 = p_name[6];
  if ((v29)(v21, 1, v27) != 1)
  {
    v31 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
    (p_name[1])(v21, v27);
    if (v31 >> 62)
    {
      goto LABEL_37;
    }

    v30 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

  sub_10001D3B8(v21);
  v30 = 0;
  while (1)
  {
    v32 = qword_1000389D8;
    *(v5 + qword_1000389D8) = v30;
    v57 = a4;
    sub_10001B9DC(a4, v19);
    if ((v29)(v19, 1, v27) == 1)
    {
      sub_10001D3B8(v19);
      *(v5 + qword_1000389E0) = 0;
    }

    else
    {
      v33 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
      v34 = p_name[1];
      (v34)(v19, v27);
      if (v33 >> 62)
      {
        v35 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v5 + qword_1000389E0) = v35;
      if (v35 >= 1)
      {
        v36 = v50;
        sub_10001B9DC(v57, v50);
        if ((v29)(v36, 1, v27) == 1)
        {
          sub_10001D3B8(v36);
        }

        else
        {
          CAFUISettingsCache.categorySettings(for:)();
          (v34)(v36, v27);
        }

LABEL_20:
        v37 = v57;
        goto LABEL_21;
      }
    }

    if (*(v5 + v32) < 1)
    {
      goto LABEL_20;
    }

    v37 = v57;
    v38 = v51;
    sub_10001B9DC(v57, v51);
    if ((v29)(v38, 1, v27) == 1)
    {
      sub_10001D3B8(v38);
    }

    else
    {
      CAFUISettingsCache.categorySettings(for:)();
      (p_name[1])(v38, v27);
    }

LABEL_21:
    v39 = v54;
    v27 = v55;
    v40 = v52;
    sub_10001B9DC(v37, v53);
    v41 = v40;

    v42 = CAFUITileViewController.init(carSession:prominentCategories:listItems:settingsSections:settingsCache:assetManager:requestContentManager:preventVolumeNotification:)();
    sub_10001C1F4();
    v43 = [v39 automakerNotificationHistory];
    if (!v43)
    {
      sub_10001D3B8(v37);

      return v42;
    }

    v19 = v43;
    v44 = [v43 historicalNotifications];
    if (!v44)
    {
      sub_10001D3B8(v37);

      return v42;
    }

    v45 = v44;
    sub_1000043C8(0, &qword_1000381E8, CAFHistoricalNotification_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = v41;
    if (v5 >> 62)
    {
      break;
    }

    v46 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v46)
    {
      goto LABEL_40;
    }

LABEL_25:
    v29 = 0;
    a4 = v5 & 0xFFFFFFFFFFFFFF8;
    p_name = &VSFullScreenActionAlertViewController.name;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v47 = *(v5 + 8 * v29 + 32);
      }

      v48 = v47;
      v27 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      [v47 registerObserver:v42];

      ++v29;
      if (v27 == v46)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v30 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
  }

  v46 = _CocoaArrayWrapper.endIndex.getter();
  if (v46)
  {
    goto LABEL_25;
  }

LABEL_40:

  sub_10001D3B8(v57);
  return v42;
}

uint64_t sub_10001C1F4()
{
  v1 = v0;
  v2 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v42 - v4;
  v43 = &_swiftEmptyArrayStorage;
  CAFUITileViewController.settingsCache.getter();
  v6 = type metadata accessor for CAFUISettingsCache();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_10001D3B8(v5);
  if (v7 == 1)
  {
    v8 = *(v1 + qword_1000389D0);
    v9 = [v8 audioSettings];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 equalizers];
      if ((v11 || (v11 = [v10 soundDistribution]) != 0) && (v11, CAFUITileViewController.createSoundItem(audioSettings:)()))
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v40 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v12 = v43;
      }

      else
      {
        v12 = &_swiftEmptyArrayStorage;
      }

      v17 = [v10 volumes];
      sub_1000043C8(0, &qword_100038A98, CAFVolume_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = CAFUITileViewController.createVolumeListItem(volumes:)();

      if (v18)
      {
        goto LABEL_24;
      }

LABEL_37:

      goto LABEL_38;
    }

    goto LABEL_21;
  }

  v13 = *(v1 + qword_1000389E0);
  v8 = *(v1 + qword_1000389D0);
  v14 = [v8 audioSettings];
  v10 = v14;
  if (v13 < 1)
  {
    if (v14)
    {
      v16 = [v14 equalizers];
      if ((v16 || (v16 = [v10 soundDistribution]) != 0) && (v16, CAFUITileViewController.createSoundItem(audioSettings:)()))
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v41 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v12 = v43;
      }

      else
      {
        v12 = &_swiftEmptyArrayStorage;
      }

      v19 = [v10 volumes];
      sub_1000043C8(0, &qword_100038A98, CAFVolume_ptr);
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v20 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v21)
      {
        goto LABEL_37;
      }

      v22 = [v10 volumes];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = CAFUITileViewController.createVolumeListItem(volumes:)();

      if (!v23)
      {
        goto LABEL_37;
      }

      if (*(v1 + qword_1000389D8) <= 0)
      {
        v24 = [v10 equalizers];
        if (!v24)
        {
          v24 = [v10 soundDistribution];
          if (!v24)
          {

            goto LABEL_37;
          }
        }
      }

LABEL_24:

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v38 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v12 = v43;
      goto LABEL_38;
    }

LABEL_21:
    v12 = &_swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v15 = CAFUITileViewController.createAudioListItem(audioSettings:)();

  if (!v15)
  {
    goto LABEL_21;
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v12 = v43;
LABEL_38:
  v25 = CAFUITileViewController.requestContentManager.getter();
  if (v25)
  {
    v26 = v25;
    v27 = [v8 automakerNotificationHistory];
    if (v27 && ((v28 = v27, v29 = sub_10000BE80(), v28, v29 >> 62) ? (v30 = _CocoaArrayWrapper.endIndex.getter()) : (v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v30))
    {
      v31 = type metadata accessor for CAFUINotificationListItem(0);
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      swift_allocObject();
      v34 = v8;

      v35 = sub_10001CC90(v34, v26);
      sub_100003FD8(&qword_100038A90, &unk_100024110);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1000240B0;
      *(v36 + 32) = v35;
      v42 = v36;
      sub_100020940(v12);
    }

    else
    {
    }
  }

  dispatch thunk of CAFUITileViewController.setListItems(_:)();
}

uint64_t sub_10001C834()
{
  v1 = *(v0 + qword_1000389C8);
}

id VSRootViewController.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:CARSessionLimitUserInterfacesChangedNotification];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for VSRootViewController(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10001C8F4(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver:CARSessionLimitUserInterfacesChangedNotification];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for VSRootViewController(0);
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t sub_10001C988(uint64_t a1)
{
  v2 = *(a1 + qword_1000389C8);
}

Swift::Void __swiftcall VSRootViewController.viewDidLoad()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for VSRootViewController(0);
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v5[3] = &type metadata for VehicleFeatures;
  v5[4] = sub_100011860();
  v1 = isFeatureEnabled(_:)();
  sub_10000458C(v5);
  if (v1)
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_opt_self() clearColor];
      [v3 setBackgroundColor:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10001CAA4(void *a1)
{
  v1 = a1;
  VSRootViewController.viewDidLoad()();
}

uint64_t sub_10001CAFC()
{
  v0 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  return (*(v1 + 8))(v4, v0);
}

void sub_10001CBFC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _s7Vehicle20VSRootViewControllerC29historicalNotificationService_15didUpdateHiddenySo013CAFHistoricalF0C_SbtF_0();
}

uint64_t sub_10001CC90(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4 = a1;
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() systemImageNamed:v5];

  v7 = [objc_opt_self() mainBundle];
  v15._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0x4143494649544F4ELL;
  v8._object = 0xED0000534E4F4954;
  v9.value._countAndFlagsBits = 0x747465536F747541;
  v9.value._object = 0xEC00000073676E69;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v15);

  String.init(format:_:)();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a2;

  v13 = CAFUIDataListItem.init(symbol:text:secondaryText:badgeText:showChevron:enabled:settingsCategory:limitedUI:limitedUIImage:selectionAction:)();

  return v13;
}

uint64_t sub_10001CEA4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v5 = Strong;
  v6 = [Strong automakerNotificationHistory];

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = sub_10000BE80();
  if (v7 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();

    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v8)
  {
LABEL_7:

LABEL_8:
    v13 = &enum case for CAFUICellSelectionAction.none(_:);
    goto LABEL_9;
  }

LABEL_5:
  v9 = objc_allocWithZone(type metadata accessor for VSNotificationHistoryViewController());
  v10 = qword_100038030;
  v11 = objc_allocWithZone(type metadata accessor for VSEmptyNotificationHistoryView());

  *&v9[v10] = [v11 init];
  v12 = qword_100038048;
  *&v9[v12] = sub_10001AB50(&_swiftEmptyArrayStorage);
  *&v9[qword_100038040] = a1;
  *&v9[qword_100038038] = v6;
  *a2 = CAFUITableViewController.init(style:)();
  v13 = &enum case for CAFUICellSelectionAction.push(_:);
LABEL_9:
  v15 = *v13;
  v16 = type metadata accessor for CAFUICellSelectionAction();
  return (*(*(v16 - 8) + 104))(a2, v15, v16);
}

BOOL sub_10001D048()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  result = 0;
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong automakerNotificationHistory];

    if (v2)
    {
      v3 = sub_10000BE80();
      v4 = v3 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v4)
      {
        return 1;
      }
    }
  }

  return result;
}

void *sub_10001D0F4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [result automakerNotificationHistory];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10000BE80();
  if (v3 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();

    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v4)
  {
LABEL_9:

    return 0;
  }

LABEL_5:
  v5 = sub_10000BE80();
  if (v5 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = dispatch thunk of CustomStringConvertible.description.getter();

  return v7;
}

uint64_t sub_10001D260()
{
  v0 = CAFUIDataListItem.deinit();
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t (*sub_10001D2B0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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
    return sub_10001D7B4;
  }

  __break(1u);
  return result;
}

void (*sub_10001D330(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_10001D3B0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D3B8(uint64_t a1)
{
  v2 = sub_100003FD8(&qword_100037BD0, &qword_100023C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_10001D440(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    *v3 = v5;
    return sub_10001D4C0;
  }

  __break(1u);
  return result;
}

id _s7Vehicle20VSRootViewControllerC29historicalNotificationService_15didUpdateHiddenySo013CAFHistoricalF0C_SbtF_0()
{
  v1 = v0;
  v2 = *&v0[qword_1000389D0];
  v3 = [v2 automakerNotificationHistory];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10000BE80();

    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = &v1[qword_1000389C8];
    result = *&v1[qword_1000389C8];
    if (result)
    {
      if (v6 > 0)
      {
        result = [v1 isViewLoaded];
        if (result)
        {

          return dispatch thunk of CAFUITileViewController.reloadListItem(item:)(0);
        }

        return result;
      }
    }

    else
    {
      if (v6 <= 0)
      {
        return result;
      }

      v9 = CAFUITileViewController.requestContentManager.getter();
      if (v9)
      {
        v10 = v9;
        v11 = type metadata accessor for CAFUINotificationListItem(0);
        v12 = *(v11 + 48);
        v13 = *(v11 + 52);
        swift_allocObject();
        v14 = sub_10001CC90(v2, v10);
        v15 = *v7;
        *v7 = v14;
        goto LABEL_12;
      }

      v16 = *v7;
    }
  }

  else
  {
    v7 = &v0[qword_1000389C8];
    result = *&v0[qword_1000389C8];
    if (!result)
    {
      return result;
    }
  }

  *v7 = 0;
LABEL_12:

  return sub_10001C1F4();
}

uint64_t sub_10001D734()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D76C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001D978()
{
  v1 = type metadata accessor for Calendar();
  v40 = *(v1 - 8);
  v2 = *(v40 + 64);
  __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v18 = *(v0 + qword_100038AD0);
  if (!v18)
  {
    return 0;
  }

  v37 = v12;
  v38 = v6;
  v39 = v5;
  v41 = v18;
  v19 = [v41 timestamp];
  sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

  Measurement.value.getter();
  v21 = v20;
  v22 = *(v14 + 8);
  v22(v17, v13);
  if (v21 <= 0.0)
  {

    return 0;
  }

  v23 = [v41 timestamp];
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

  Measurement.value.getter();
  v22(v17, v13);
  v24 = v37;
  Date.init(timeIntervalSince1970:)();
  static Calendar.current.getter();
  LOBYTE(v23) = Calendar.isDateInToday(_:)();
  (*(v40 + 8))(v4, v1);
  if (v23)
  {
    v25 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
    [v25 setUnitsStyle:2];
    [v25 setDateTimeStyle:1];
    isa = Date._bridgeToObjectiveC()().super.isa;
    Date.init()();
    v27 = Date._bridgeToObjectiveC()().super.isa;
    v28 = v39;
    v29 = *(v38 + 8);
    v29(v10, v39);
    v30 = [v25 localizedStringForDate:isa relativeToDate:v27];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29(v24, v28);
  }

  else
  {
    v33 = [objc_allocWithZone(NSDateFormatter) init];
    [v33 setDateStyle:1];
    [v33 setTimeStyle:0];
    v34 = Date._bridgeToObjectiveC()().super.isa;
    v35 = [v33 stringFromDate:v34];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v38 + 8))(v24, v39);
  }

  return v31;
}

void sub_10001DE24(void *a1)
{
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v2 = *&v1[qword_100038AC8];
  if (v2)
  {
    v3 = v2;
    [v1 setAccessoryType:0];
    v4 = v3;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v1 contentView];
    [v5 addSubview:v4];

    v6 = objc_opt_self();
    sub_100003FD8(&qword_100038A90, &unk_100024110);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100024610;
    v8 = [v4 topAnchor];
    v9 = [v1 contentView];
    v10 = [v9 topAnchor];

    v11 = [v8 constraintEqualToAnchor:v10];
    *(v7 + 32) = v11;
    v12 = [v4 trailingAnchor];
    v13 = [v1 contentView];
    v14 = [v13 trailingAnchor];

    v15 = [v12 constraintEqualToAnchor:v14 constant:-12.0];
    *(v7 + 40) = v15;
    v16 = [v4 bottomAnchor];

    v17 = [v1 contentView];
    v18 = [v17 bottomAnchor];

    v19 = [v16 constraintEqualToAnchor:v18];
    *(v7 + 48) = v19;
    sub_1000043C8(0, &qword_100038200, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 activateConstraints:isa];
  }
}

uint64_t sub_10001E114()
{
  v1 = v0;
  v2 = sub_100003FD8(&unk_100037AF0, qword_100023C60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v65 - v5;
  v7 = sub_100003FD8(&qword_100038BE0, &unk_1000246D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for UIListContentConfiguration();
  v71 = *(v11 - 8);
  v12 = *(v71 + 64);
  result = __chkstk_darwin(v11);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + qword_100038AD0);
  if (v16)
  {
    v68 = v3;
    *&v69 = v2;
    v70 = result;
    v17 = v16;
    static UIListContentConfiguration.subtitleCell()();
    v18 = sub_1000043C8(0, &unk_1000381F0, UIFont_ptr);
    static UIFont.cafui_titleFont.getter();
    v19 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v19(v72, 0);
    v20 = [v17 userVisibleLabel];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UIListContentConfiguration.text.setter();
    v67 = v18;
    static UIFont.cafui_subtitleFont.getter();
    v21 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v21(v72, 0);
    v22 = objc_opt_self();
    v23 = [v22 secondaryLabelColor];
    v24 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v24(v72, 0);
    v25 = [v17 userVisibleDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UIListContentConfiguration.secondaryText.setter();
    v26 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
    v26(v72, 0);
    v27 = [objc_opt_self() configurationWithWeight:6];
    v28 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
    v28(v72, 0);
    static UIBackgroundConfiguration.clear()();
    v29 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
    UITableViewCell.backgroundConfiguration.setter();
    v30 = [v17 symbolName];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      v35 = [v17 symbolName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v36 = [v17 notificationSeverity];
    v66 = v22;
    if (v36 <= 2)
    {
      v37 = [v22 *(&off_1000316C8)[v36]];
    }

    v38 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.tintColor.setter();
    v38(v72, 0);
    v39 = String._bridgeToObjectiveC()();

    v40 = CAFUIImageForSymbolName();

    UIListContentConfiguration.image.setter();
    v41 = v70;
    v72[3] = v70;
    v72[4] = &protocol witness table for UIListContentConfiguration;
    v42 = sub_10000B798(v72);
    v43 = v71;
    (*(v71 + 16))(v42, v15, v41);
    UITableViewCell.contentConfiguration.setter();
    v44 = [v17 timestamp];
    sub_1000043C8(0, &qword_100038210, NSUnitDuration_ptr);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = v69;
    Measurement.value.getter();
    v47 = v46;
    (*(v68 + 8))(v6, v45);
    if (v47 <= 0.0)
    {
      v63 = *(v1 + qword_100038AC8);
      *(v1 + qword_100038AC8) = 0;
      sub_10001DE24(v63);
    }

    else
    {
      v72[0] = &_swiftEmptyArrayStorage;
      v48 = [objc_allocWithZone(UILabel) init];
      sub_10001D978();
      v49 = String._bridgeToObjectiveC()();

      [v48 setText:v49];

      v50 = [v66 secondaryLabelColor];
      [v48 setTextColor:v50];

      v51 = static UIFont.cafui_subtitleFont.getter();
      [v48 setFont:v51];

      v52 = v48;
      [v52 sizeToFit];
      sub_100003FD8(&qword_100038A90, &unk_100024110);
      inited = swift_initStackObject();
      v69 = xmmword_1000240B0;
      *(inited + 16) = xmmword_1000240B0;
      *(inited + 32) = v52;
      sub_100020958(inited, sub_100020C90);
      v54 = *(v1 + qword_100038AD8);
      *(v1 + qword_100038AD8) = v52;
      v55 = v52;

      v56 = *(sub_100002244() + 2);

      if (v56 || [v17 hasUserVisibleFullDescription])
      {
        v57 = sub_10001EA1C();
        v58 = *(v1 + qword_100038AE0);
        *(v1 + qword_100038AE0) = v57;
        v59 = v57;

        v60 = swift_initStackObject();
        *(v60 + 16) = v69;
        *(v60 + 32) = v59;
        sub_100020958(v60, sub_100020C90);
      }

      v61 = objc_allocWithZone(type metadata accessor for CAFUIStackView());
      v62 = CAFUIStackView.init(views:axis:minWidth:)();
      v63 = *(v1 + qword_100038AC8);
      *(v1 + qword_100038AC8) = v62;
      v64 = v62;
      sub_10001DE24(v63);
    }

    return (*(v43 + 8))(v15, v41);
  }

  return result;
}

id sub_10001E97C()
{
  v1 = *(v0 + qword_100038AD0);
  if (!v1 || (v2 = [v1 notificationSeverity], v2 > 2) || (result = objc_msgSend(objc_opt_self(), *(&off_1000316C8)[v2])) == 0)
  {
    v4 = [objc_opt_self() labelColor];

    return v4;
  }

  return result;
}

id sub_10001EA1C()
{
  v1 = qword_100038AE8;
  v2 = *(v0 + qword_100038AE8);
  if (v2)
  {
    v3 = *(v0 + qword_100038AE8);
  }

  else
  {
    v4 = sub_10001EA7C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10001EA7C()
{
  v0 = [objc_opt_self() boldSystemFontOfSize:13.0];
  v1 = [objc_opt_self() configurationWithFont:v0 scale:-1];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  if (v3)
  {
    v4 = [v3 imageWithRenderingMode:2];
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];
  v6 = objc_allocWithZone(UIColor);
  v10[4] = sub_100021018;
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000207C8;
  v10[3] = &unk_1000316A0;
  v7 = _Block_copy(v10);
  v8 = [v6 initWithDynamicProvider:v7];
  _Block_release(v7);

  [v5 setTintColor:v8];

  return v5;
}

uint64_t sub_10001EC78(char a1, char a2)
{
  v3 = v2;
  v6 = sub_100003FD8(&qword_100038BC8, &qword_1000246B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = aBlock - v8;
  v10 = type metadata accessor for UIListContentConfiguration();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VSNotificationTableCell(0);
  v43.receiver = v3;
  v43.super_class = v15;
  objc_msgSendSuper2(&v43, "setHighlighted:animated:", a1 & 1, a2 & 1);
  UITableViewCell.contentConfiguration.getter();
  if (!v40)
  {
    sub_10000B6D0(aBlock, &qword_100038BD0, &qword_1000246B8);
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_10000B6D0(v9, &qword_100038BC8, &qword_1000246B0);
  }

  sub_100003FD8(&qword_100038BD8, &unk_1000246C0);
  v16 = swift_dynamicCast();
  (*(v11 + 56))(v9, v16 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10000B6D0(v9, &qword_100038BC8, &qword_1000246B0);
  }

  (*(v11 + 32))(v14, v9, v10);
  if (a1)
  {
    sub_1000043C8(0, &unk_100038460, UIColor_ptr);
    static UIColor.cafui_carSystemFocusLabel.getter();
    v17 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v17(aBlock, 0);
    v18 = [objc_opt_self() _carSystemFocusPrimaryColor];
    v19 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v19(aBlock, 0);
    v20 = *&v3[qword_100038AD8];
    if (v20)
    {
      v21 = v20;
      v22 = static UIColor.cafui_carSystemFocusLabel.getter();
      [v21 setTextColor:v22];
    }

    v23 = *&v3[qword_100038AE0];
    if (!v23)
    {
      goto LABEL_15;
    }

    v24 = v23;
    v25 = static UIColor.cafui_carSystemFocusLabel.getter();
  }

  else
  {
    v27 = objc_opt_self();
    v28 = [v27 labelColor];
    v29 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v29(aBlock, 0);
    v30 = [v27 secondaryLabelColor];
    v31 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v31(aBlock, 0);
    v32 = *&v3[qword_100038AD8];
    if (v32)
    {
      v33 = v32;
      v34 = [v27 secondaryLabelColor];
      [v33 setTextColor:v34];
    }

    v35 = *&v3[qword_100038AE0];
    if (!v35)
    {
      goto LABEL_15;
    }

    v36 = objc_allocWithZone(UIColor);
    v41 = sub_100021018;
    v42 = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000207C8;
    v40 = &unk_100031678;
    v37 = _Block_copy(aBlock);
    v24 = v35;
    v25 = [v36 initWithDynamicProvider:v37];
    _Block_release(v37);
  }

  [v24 setTintColor:v25];

LABEL_15:
  v40 = v10;
  v41 = &protocol witness table for UIListContentConfiguration;
  v38 = sub_10000B798(aBlock);
  (*(v11 + 16))(v38, v14, v10);
  UITableViewCell.contentConfiguration.setter();
  return (*(v11 + 8))(v14, v10);
}

id sub_10001F1E8(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemDarkGrayColor;
  if (v1 != 1)
  {
    v3 = &selRef_secondaryLabelColor;
  }

  v4 = [v2 *v3];

  return v4;
}

void sub_10001F254(void *a1, uint64_t a2, char a3, char a4)
{
  v6 = a1;
  sub_10001EC78(a3, a4);
}

id sub_10001F2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[qword_100038AC8] = 0;
  *&v3[qword_100038AD0] = 0;
  *&v3[qword_100038AD8] = 0;
  *&v3[qword_100038AE0] = 0;
  *&v3[qword_100038AE8] = 0;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for VSNotificationTableCell(0);
  v6 = objc_msgSendSuper2(&v8, "initWithStyle:reuseIdentifier:", a1, v5);

  return v6;
}

id sub_10001F374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10001F2B0(a3, a4, v6);
}

uint64_t sub_10001F3C0()
{
  v1 = objc_allocWithZone(v0);
  *&v1[qword_100038AC8] = 0;
  *&v1[qword_100038AD0] = 0;
  *&v1[qword_100038AD8] = 0;
  *&v1[qword_100038AE0] = 0;
  *&v1[qword_100038AE8] = 0;
  return CAFUITableCell.init(reuseIdentifier:)();
}

void sub_10001F440()
{
  v1 = *(v0 + qword_100038AE8);
}

id sub_10001F4CC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10001F504(uint64_t a1)
{
  v2 = *(a1 + qword_100038AE8);
}

uint64_t sub_10001F588()
{
  v1 = *(*(type metadata accessor for UIListContentConfiguration() - 8) + 64);
  result = __chkstk_darwin();
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction];
  v7 = *&v0[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 8];
  if (v7)
  {
    v32 = result;
    v33 = v3;
    v34 = v0;
    v8 = *v6;
    v9 = *(v6 + 2);
    v10 = *(v6 + 3);
    v11 = *(v6 + 5);
    v30 = *(v6 + 4);
    v31 = v9;
    v12 = v6[48];

    static UIListContentConfiguration.cell()();
    v13 = [objc_opt_self() systemFontOfSize:16.0 weight:UIFontWeightMedium];
    v14 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v14(v35, 0);
    v15 = objc_opt_self();
    v16 = &selRef_systemRedColor;
    if ((v12 & 1) == 0)
    {
      v16 = &selRef_labelColor;
    }

    v17 = [v15 *v16];
    v18 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v18(v35, 0);

    UIListContentConfiguration.text.setter();
    if (v10)
    {

      v19 = v31;
      sub_100004698(v8, v7);
      v20 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v20 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        v21 = String._bridgeToObjectiveC()();

        v22 = CAFUIImageForSymbolName();

        v23 = [objc_allocWithZone(UIImageView) initWithImage:v22];
        v24 = objc_opt_self();
        v25 = &selRef_systemRedColor;
        if ((v12 & 1) == 0)
        {
          v25 = &selRef_labelColor;
        }

        v26 = [v24 *v25];
        [v23 setTintColor:v26];

        [v34 setAccessoryView:v23];
        goto LABEL_14;
      }
    }

    else
    {
      sub_100004698(v8, v7);
    }

    [v34 setAccessoryView:0];
LABEL_14:
    v27 = v32;
    v35[3] = v32;
    v35[4] = &protocol witness table for UIListContentConfiguration;
    v28 = sub_10000B798(v35);
    v29 = v33;
    (*(v33 + 16))(v28, v5, v27);
    UITableViewCell.contentConfiguration.setter();
    return (*(v29 + 8))(v5, v27);
  }

  return result;
}

uint64_t sub_10001F920(char a1, char a2)
{
  v3 = v2;
  v6 = sub_100003FD8(&qword_100038BC8, &qword_1000246B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v49[-1] - v8;
  v10 = type metadata accessor for UIListContentConfiguration();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v49[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VSNotificationActionTableCell();
  v52.receiver = v3;
  v52.super_class = v15;
  objc_msgSendSuper2(&v52, "setHighlighted:animated:", a1 & 1, a2 & 1);
  UITableViewCell.contentConfiguration.getter();
  if (!v50)
  {
    sub_10000B6D0(v49, &qword_100038BD0, &qword_1000246B8);
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_10000B6D0(v9, &qword_100038BC8, &qword_1000246B0);
  }

  sub_100003FD8(&qword_100038BD8, &unk_1000246C0);
  v16 = swift_dynamicCast();
  (*(v11 + 56))(v9, v16 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10000B6D0(v9, &qword_100038BC8, &qword_1000246B0);
  }

  (*(v11 + 32))(v14, v9, v10);
  if (a1)
  {
    sub_1000043C8(0, &unk_100038460, UIColor_ptr);
    static UIColor.cafui_carSystemFocusLabel.getter();
    v17 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v17(v49, 0);
    v18 = [v3 accessoryView];
    if (v18)
    {
      v19 = v18;
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = v20;
        v22 = static UIColor.cafui_carSystemFocusLabel.getter();
        [v21 setTintColor:{v22, v48}];
LABEL_17:

        v19 = v22;
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v48 = v14;
  v24 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction];
  v25 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 8];
  v26 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 16];
  v27 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 24];
  v29 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 32];
  v28 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 40];
  v30 = v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 48];
  if (v25)
  {
    v31 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 16];
    v32 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 24];
    v33 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 32];
    v34 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 40];
    v35 = v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 48];
    sub_100020778(v24, *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 8]);
    sub_100004698(v24, v25);
    if (v30)
    {
      v36 = &selRef_systemRedColor;
      goto LABEL_14;
    }
  }

  else
  {
    v37 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 16];
    v38 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 24];
    v39 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 32];
    v40 = *&v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 40];
    v41 = v3[OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 48];
    sub_100020778(v24, 0);
    sub_100004698(v24, 0);
  }

  v36 = &selRef_labelColor;
LABEL_14:
  v14 = v48;
  v42 = [objc_opt_self() *v36];
  v43 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v43(v49, 0);
  v44 = [v3 accessoryView];
  if (v44)
  {
    v19 = v44;
    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    if (v45)
    {
      v46 = v45;
      v22 = [objc_opt_self() *v36];
      [v46 setTintColor:{v22, v48}];
      goto LABEL_17;
    }

LABEL_18:
  }

LABEL_19:
  v50 = v10;
  v51 = &protocol witness table for UIListContentConfiguration;
  v47 = sub_10000B798(v49);
  (*(v11 + 16))(v47, v14, v10);
  UITableViewCell.contentConfiguration.setter();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_10001FFA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 16);
  v2 = *(v0 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 24);
  v3 = *(v0 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 32);
  v4 = *(v0 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 40);
  v5 = *(v0 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 48);
  return sub_100004698(*(v0 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction), *(v0 + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction + 8));
}

uint64_t sub_100020088()
{
  v1 = (*(*(sub_100003FD8(&qword_100038BE0, &unk_1000246D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v39[-1] - v2;
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin();
  v9 = &v39[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + qword_100038B70);
  if (v10)
  {
    v38 = v0;
    v11 = v10;
    static UIListContentConfiguration.subtitleCell()();
    sub_1000043C8(0, &unk_1000381F0, UIFont_ptr);
    v12 = static UIFont.cafui_titleFont.getter();
    v13 = [v12 fontDescriptor];
    v14 = [v13 fontDescriptorWithSymbolicTraits:2];

    if (v14)
    {
      [objc_opt_self() fontWithDescriptor:v14 size:0.0];
    }

    v15 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v15(v39, 0);
    v16 = [v11 userVisibleLabel];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UIListContentConfiguration.text.setter();
    static UIFont.cafui_subtitleFont.getter();
    v17 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v17(v39, 0);
    v18 = objc_opt_self();
    v19 = [v18 secondaryLabelColor];
    v20 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v20(v39, 0);
    v21 = [v11 userVisibleFullDescription];
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    UIListContentConfiguration.secondaryText.setter();
    v23 = [v11 symbolName];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v28 = [v11 notificationSeverity];
      if (v28 <= 2)
      {
        v29 = [v18 *(&off_1000316C8)[v28]];
      }

      v30 = UIListContentConfiguration.imageProperties.modify();
      UIListContentConfiguration.ImageProperties.tintColor.setter();
      v30(v39, 0);
      v31 = UIListContentConfiguration.imageProperties.modify();
      UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
      v31(v39, 0);
      v32 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle3 scale:3];
      v33 = UIListContentConfiguration.imageProperties.modify();
      UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
      v33(v39, 0);
      v34 = [v11 symbolName];
      if (!v34)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = String._bridgeToObjectiveC()();
      }

      v35 = CAFUIImageForSymbolName();
    }

    UIListContentConfiguration.image.setter();
    static UIBackgroundConfiguration.clear()();
    v36 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v36 - 8) + 56))(v3, 0, 1, v36);
    UITableViewHeaderFooterView.backgroundConfiguration.setter();
    v39[3] = v4;
    v39[4] = &protocol witness table for UIListContentConfiguration;
    v37 = sub_10000B798(v39);
    (*(v5 + 16))(v37, v9, v4);
    UITableViewHeaderFooterView.contentConfiguration.setter();

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

id sub_100020610(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&a1[qword_100038B70] = 0;
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
    *&a1[qword_100038B70] = 0;
  }

  v7.receiver = a1;
  v7.super_class = type metadata accessor for VSNotificationHeaderView(0);
  v5 = objc_msgSendSuper2(&v7, "initWithReuseIdentifier:", v4);

  return v5;
}

id sub_1000206AC(char *a1, uint64_t a2, void *a3)
{
  *&a1[qword_100038B70] = 0;
  v7.receiver = a1;
  v7.super_class = type metadata accessor for VSNotificationHeaderView(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_100020778(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_1000207C8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_100020830(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100020848(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100004020(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100020958(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_100020A50(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100020A50(uint64_t a1)
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

uint64_t sub_100020AF0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100020FC0(&qword_100038C08, &qword_100038C00, &qword_1000246E8);
          for (i = 0; i != v6; ++i)
          {
            sub_100003FD8(&qword_100038C00, &qword_1000246E8);
            v9 = sub_10001D2B0(v13, i, a3);
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
        sub_1000043C8(0, &qword_1000381E8, CAFHistoricalNotification_ptr);
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

uint64_t sub_100020C90(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100020FC0(&qword_100038BF8, &qword_100038BF0, &qword_1000246E0);
          for (i = 0; i != v6; ++i)
          {
            sub_100003FD8(&qword_100038BF0, &qword_1000246E0);
            v9 = sub_10001D2B0(v13, i, a3);
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
        sub_1000043C8(0, &qword_100038BE8, UIView_ptr);
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

uint64_t sub_100020E30(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100020FC0(&qword_100038C18, &qword_100038C10, &unk_1000246F0);
          for (i = 0; i != v6; ++i)
          {
            sub_100003FD8(&qword_100038C10, &unk_1000246F0);
            v9 = sub_10001D440(v13, i, a3);
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
        type metadata accessor for CAFUIDataListItem();
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

uint64_t sub_100020FC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_100021020()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for VSClusterViewController();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  v1 = [objc_allocWithZone(UILabel) init];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = [objc_opt_self() labelColor];
  [v1 setTextColor:v3];

  [v1 setTextAlignment:1];
  [v1 setNumberOfLines:2];
  v4 = [objc_opt_self() systemFontOfSize:24.0];
  [v1 setFont:v4];

  v5 = v1;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v6;
  [v6 addSubview:v5];

  sub_100003FD8(&qword_100038A90, &unk_100024110);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000243E0;
  v9 = [v5 centerXAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  v12 = [v10 centerXAnchor];

  v13 = [v9 constraintEqualToAnchor:v12];
  *(v8 + 32) = v13;
  v14 = [v5 centerYAnchor];

  v15 = [v0 view];
  if (v15)
  {
    v16 = v15;
    v17 = objc_opt_self();
    v18 = [v16 centerYAnchor];

    v19 = [v14 constraintEqualToAnchor:v18];
    *(v8 + 40) = v19;
    sub_1000214F4();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v17 activateConstraints:isa];

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_10002149C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VSClusterViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000214F4()
{
  result = qword_100038200;
  if (!qword_100038200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100038200);
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

UIButton_optional __swiftcall CAFUIPunchthroughState.buttonForCurrentState(title:)(Swift::String_optional title)
{
  v1 = CAFUIPunchthroughState.buttonForCurrentState(title:)(title.value._countAndFlagsBits, title.value._object);
  result.value.super.super.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}