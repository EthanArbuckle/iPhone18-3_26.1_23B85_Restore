void sub_10001BBE4(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = a1;
      sub_10001BC50(v4);
    }
  }
}

void sub_10001BC50(uint64_t a1)
{
  v2 = v1;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000097A8(v4, qword_1000493C0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "handle remote option update", v7, 2u);
  }

  v11 = [objc_allocWithZone(SHSheetOptionsUpdateAction) initWithCustomization:a1];
  v8 = v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v2, v11, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_10001BDF4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10001BE50(a1);
  }
}

void sub_10001BE50(uint64_t a1)
{
  v2 = v1;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000097A8(v4, qword_1000493C0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "handle remote collaboration options update", v7, 2u);
  }

  v11 = [objc_allocWithZone(SHSheetCollaborationOptionsUpdateAction) initWithCollaborationOptions:a1];
  v8 = v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v2, v11, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_10001BFF0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_10001C05C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_allocWithZone(SHSheetAction) initWithType:9];
    v3 = &v1[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 1);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v1, v2, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

char *sub_10001C134()
{
  v1 = v0;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000097A8(v2, qword_1000493C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "creating view model", v5, 2u);
  }

  v6 = *(v0 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_currentConfiguration);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_sessionContext);
    if (v7)
    {
      v8 = objc_allocWithZone(type metadata accessor for ShareSheetViewModel());
      v9 = v7;
      v10 = v6;
      v11 = sub_100012128(v10, v7);

      v12 = *(v1 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_customViewController);
      v13 = *&v11[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewController];
      *&v11[OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewController] = v12;
      v14 = v12;

      return v11;
    }

    v16 = v6;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "skipping: no session context", v21, 2u);
    }
  }

  else
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "skipping: no configuration", v18, 2u);
    }
  }

  return 0;
}

uint64_t sub_10001C450(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A598(0, &unk_1000479F0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v1;
  aBlock[4] = sub_1000211CC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007CB0;
  aBlock[3] = &unk_10003DF60;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000210E4(&qword_100046CA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000025C4(&unk_100047A00, qword_10002D780);
  sub_10000A71C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v19);
}

void sub_10001C71C(void *a1, uint64_t a2)
{
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000097A8(v4, qword_1000493C0);
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
    _os_log_impl(&_mh_execute_header, v6, v7, "did update data source with configuration %@", v8, 0xCu);
    sub_100009C18(v9, &qword_1000475A0, &unk_10002D720);
  }

  v11 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_currentConfiguration;
  v12 = *(a2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_currentConfiguration);
  if (!v12)
  {
    sub_100001F54();
    v12 = *(a2 + v11);
  }

  *(a2 + v11) = v5;

  v13 = [v5 shouldBlockPresentation];
  v14 = a2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    if (Strong)
    {
      v16 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 48))(a2, ObjectType, v16);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (Strong)
    {
      v18 = *(v14 + 8);
      v19 = swift_getObjectType();
      (*(v18 + 56))(a2, v19, v18);
      swift_unknownObjectRelease();
    }

    sub_10001B960();
  }
}

uint64_t sub_10001C9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v24);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A598(0, &unk_1000479F0, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v4;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_10002117C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007CB0;
  aBlock[3] = &unk_10003DF10;
  v18 = _Block_copy(aBlock);

  v19 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000210E4(&qword_100046CA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000025C4(&unk_100047A00, qword_10002D780);
  sub_10000A71C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v23;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v25 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v24);
}

void sub_10001CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_sessionContext;
  v7 = *(a3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_sessionContext);
  if (v7)
  {
    v8 = [v7 activitiesByUUID];
    type metadata accessor for UUID();
    sub_10000A598(0, &unk_100047A10, UIActivity_ptr);
    sub_1000210E4(&qword_100047370, &type metadata accessor for UUID);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = *(a3 + v6);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_12;
  }

  sub_10001FDE8(&_swiftEmptyArrayStorage);
  v9 = *(a3 + v6);
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = [v9 applicationActivityTypes];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for ActivityType(0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = *(a3 + v6);
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = *(a3 + v6);
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v14 = [v12 excludedActivityTypes];
  if (v14)
  {
    v15 = v14;
    type metadata accessor for ActivityType(0);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_12;
  }

LABEL_11:
  v13 = 0;
LABEL_12:
  sub_10000A598(0, &unk_1000479E0, _UIUserDefaultsActivityProxy_ptr);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
  type metadata accessor for UUID();
  sub_10000A598(0, &unk_100047A10, UIActivity_ptr);
  sub_1000210E4(&qword_100047370, &type metadata accessor for UUID);
  v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  type metadata accessor for ActivityType(0);
  v19.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (v13)
  {
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v21.super.isa = 0;
  }

  LOBYTE(v27) = 1;
  v22 = [objc_allocWithZone(_UIActivityUserDefaultsViewController) initWithFavoritesProxies:v16.super.isa suggestionProxies:v17.super.isa activitiesByUUID:v18.super.isa applicationActivityTypes:v19.super.isa orderedUUIDs:v20.super.isa excludedActivityTypes:v21.super.isa activityCategory:a5 isPresentedModally:v27];

  [v22 setUserDefaultsDelegate:a3];
  [v22 setHostAuditToken:*(a3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_hostAuditToken)];
  v23 = *(a3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_userDefaultsViewController);
  *(a3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_userDefaultsViewController) = v22;
  v29 = v22;

  v24 = a3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 8);
    ObjectType = swift_getObjectType();
    (*(v25 + 16))(a3, v29, ObjectType, v25);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_10001D18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A598(0, &unk_1000479F0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = sub_1000210C0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007CB0;
  aBlock[3] = &unk_10003DEC0;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000210E4(&qword_100046CA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000025C4(&unk_100047A00, qword_10002D780);
  sub_10000A71C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v20 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v19);
}

void sub_10001D49C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_userDefaultsViewController);
    if (v2)
    {
      sub_10000A598(0, &unk_1000479E0, _UIUserDefaultsActivityProxy_ptr);
      v3 = v2;
      v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v6 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_sessionContext;
      v7 = *&v1[OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_sessionContext];
      if (v7)
      {
        v8 = [v7 activitiesByUUID];
        type metadata accessor for UUID();
        sub_10000A598(0, &unk_100047A10, UIActivity_ptr);
        sub_1000210E4(&qword_100047370, &type metadata accessor for UUID);
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        sub_10001FDE8(&_swiftEmptyArrayStorage);
      }

      type metadata accessor for UUID();
      sub_10000A598(0, &unk_100047A10, UIActivity_ptr);
      sub_1000210E4(&qword_100047370, &type metadata accessor for UUID);
      v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v10 = *&v1[v6];
      if (v10)
      {
        v11 = [v10 applicationActivityTypes];
        if (v11)
        {
          v12 = v11;
          type metadata accessor for ActivityType(0);
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      type metadata accessor for ActivityType(0);
      v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v15 = *&v1[v6];
      if (!v15 || (v16 = [v15 excludedActivityTypes]) == 0)
      {
        v16 = 0;
      }

      [v3 updateWithFavoritesProxies:v4.super.isa suggestionProxies:v5.super.isa activitiesByUUID:v9.super.isa applicationActivityTypes:v13.super.isa orderedUUIDs:v14.super.isa excludedActivityTypes:v16];
    }
  }
}

void sub_10001D88C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000097A8(v8, qword_1000493C0);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    v13 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v25 + 8))(v7, v4);
    v17 = sub_100029F40(v14, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Remove people suggestion %s", v11, 0xCu);
    sub_10000EF68(v12);
  }

  v18 = *(v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  if (v18)
  {
    v19 = *(v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier);
    v20 = *(v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier + 8);
    v21 = v18;
    v22 = String._bridgeToObjectiveC()();
    v23 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v25 + 8))(v7, v4);
    [v21 activityViewControllerWithSessionID:v22 removedPersonWithIdentifier:isa];
  }
}

uint64_t sub_10001DC0C(void *a1, uint64_t a2)
{
  v5 = sub_1000025C4(&qword_100046C08, &unk_10002E280);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v69 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v76 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v78 = &v69 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v69 - v19;
  __chkstk_darwin(v18);
  v22 = &v69 - v21;
  v75 = a2;
  sub_1000211EC(a2, v10, &qword_100046C08, &unk_10002E280);
  v23 = *(v12 + 48);
  if (v23(v10, 1, v11) == 1)
  {
    v24 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    if (v23(v10, 1, v11) != 1)
    {
      sub_100009C18(v10, &qword_100046C08, &unk_10002E280);
    }
  }

  else
  {
    (*(v12 + 32))(v22, v10, v11);
  }

  v73 = v23;
  v74 = v12 + 48;
  v80 = v2;
  v81 = a1;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_1000097A8(v25, qword_1000493C0);
  v27 = *(v12 + 16);
  v27(v20, v22, v11);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v70 = v27;
    v71 = v26;
    v31 = v30;
    v32 = swift_slowAlloc();
    v72 = v22;
    v33 = v12;
    v34 = v32;
    v82 = v32;
    *v31 = 136315138;
    sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v79 = *(v33 + 8);
    v79(v20, v11);
    v38 = sub_100029F40(v35, v37, &v82);

    *(v31 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v28, v29, "Perform share activity %s", v31, 0xCu);
    sub_10000EF68(v34);
    v12 = v33;
    v22 = v72;

    v27 = v70;
  }

  else
  {

    v79 = *(v12 + 8);
    v79(v20, v11);
  }

  v39 = v78;
  if ([v81 isDisabled])
  {
    v27(v39, v22, v11);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v82 = v43;
      *v42 = 136315138;
      sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v39;
      v47 = v46;
      v48 = v79;
      v79(v45, v11);
      v49 = sub_100029F40(v44, v47, &v82);

      *(v42 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "Share activity: %s is disabled.", v42, 0xCu);
      sub_10000EF68(v43);
    }

    else
    {

      v48 = v79;
      v79(v39, v11);
    }

    v61 = v80;
    v62 = [objc_opt_self() createScreenTimeAlertViewController];
    v63 = v61 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v64 = *(v63 + 8);
      ObjectType = swift_getObjectType();
      (*(v64 + 32))(v61, v62, ObjectType, v64);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v48 = v79;
    v50 = *(v80 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
    if (v50)
    {
      v51 = *(v80 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier);
      v52 = *(v80 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier + 8);
      v53 = v50;
      v54 = String._bridgeToObjectiveC()();
      v55 = v77;
      sub_1000211EC(v75, v77, &qword_100046C08, &unk_10002E280);
      v56 = v73;
      if (v73(v55, 1, v11) == 1)
      {
        v57 = [v81 identifier];
        v81 = v54;
        v58 = v53;
        v59 = v76;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v60 = v59;
        v53 = v58;
        v54 = v81;
        if (v56(v55, 1, v11) != 1)
        {
          sub_100009C18(v55, &qword_100046C08, &unk_10002E280);
        }
      }

      else
      {
        v60 = v76;
        (*(v12 + 32))(v76, v55, v11);
      }

      v66 = v60;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v48(v66, v11);
      [v53 activityViewControllerWithSessionID:v54 selectedActivityWithIdentifier:isa];
    }
  }

  return (v48)(v22, v11);
}

void sub_10001E538(void *a1, const char *a2, const char *a3, SEL *a4)
{
  v49 = a3;
  v7 = v4;
  v9 = type metadata accessor for UUID();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000097A8(v13, qword_1000493C0);
  swift_unknownObjectRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v48 = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v46 = a2;
    v47 = v18;
    v51 = v18;
    *v17 = 136315138;
    v19 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v7;
    v23 = v22;
    (*(v50 + 8))(v12, v9);
    v24 = sub_100029F40(v20, v23, &v51);
    v7 = v21;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, v46, v17, 0xCu);
    sub_10000EF68(v47);

    a4 = v48;
  }

  if ([a1 isDisabled])
  {
    swift_unknownObjectRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v7;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51 = v29;
      *v28 = 136315138;
      v30 = [a1 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v50 + 8))(v12, v9);
      v34 = sub_100029F40(v31, v33, &v51);

      *(v28 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, v49, v28, 0xCu);
      sub_10000EF68(v29);

      v7 = v27;
    }

    v35 = [objc_opt_self() createScreenTimeAlertViewController];
    v36 = v7 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 8);
      ObjectType = swift_getObjectType();
      (*(v37 + 32))(v7, v35, ObjectType, v37);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v39 = *(v7 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
    if (v39)
    {
      v40 = *(v7 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier);
      v41 = *(v7 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier + 8);
      v42 = v39;
      v43 = String._bridgeToObjectiveC()();
      v44 = [a1 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v50 + 8))(v12, v9);
      [v42 *a4];
    }
  }
}

void sub_10001EA90(void *a1, uint64_t a2, void *a3, const char *a4, const char *a5, SEL *a6)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_10001E538(a3, a4, a5, a6);
  swift_unknownObjectRelease();
}

void sub_10001EB20()
{
  v1 = v0;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000097A8(v2, qword_1000493C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "handle action edit", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  if (v6)
  {
    v7 = v1 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier;
    v8 = *(v1 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier);
    v9 = *(v7 + 8);
    v10 = v6;
    v11 = String._bridgeToObjectiveC()();
    [v10 activityViewControllerPerformEditActionsWithSessionID:v11];
  }
}

void sub_10001ED2C()
{
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000097A8(v1, qword_1000493C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "did update sheet size", v4, 2u);
  }

  v5 = OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_contentView;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = [objc_allocWithZone(SHSheetSizeUpdateAction) initWithSize:objc_msgSend(swift_unknownObjectRetain() isResizable:{"isCompactSize"), objc_msgSend(v6, "isResizable")}];
    v8 = v0 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(v0, v7, ObjectType, v9);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "no content view available", v13, 2u);
    }
  }
}

void sub_10001F150()
{
  v1 = v0;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000097A8(v2, qword_1000493C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "handle info suggestion", v5, 2u);
  }

  v6 = objc_allocWithZone(SHSheetSuggestionAction);
  v7 = String._bridgeToObjectiveC()();
  v11 = [v6 initWithSuggestionReason:v7];

  v8 = v1 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v1, v11, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_10001F888(uint64_t a1)
{
  v2 = v1;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000097A8(v4, qword_1000493C0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "userDefaultsViewControllerDidDisappear", v7, 2u);
  }

  v8 = *(v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_userDefaultsViewController);
  *(v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_userDefaultsViewController) = 0;

  v9 = *(v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  if (v9)
  {
    v10 = *(v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier);
    v11 = *(v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier + 8);
    v12 = v9;
    v13 = String._bridgeToObjectiveC()();
    [v12 userDefaultsViewControllerDidDisappearWithSessionID:v13];
  }

  v14 = v2 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 24))(v2, a1, ObjectType, v16);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10001FAB4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_1000210E4(&qword_100047370, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10001FBB8(a1, v5);
}

unint64_t sub_10001FB4C(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v4 = Hasher._finalize()();

  return sub_10001FD78(a1 & 1, v4);
}

unint64_t sub_10001FBB8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1000210E4(&unk_100047A30, &type metadata accessor for UUID);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10001FD78(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10001FDE8(uint64_t a1)
{
  v2 = sub_1000025C4(&qword_100047A20, &qword_10002E290);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000025C4(&qword_100047A28, &qword_10002E298);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000211EC(v10, v6, &qword_100047A20, &qword_10002E290);
      result = sub_10001FAB4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

id sub_10001FFD0()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

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

unint64_t sub_100020090(uint64_t a1)
{
  v2 = sub_1000025C4(&qword_1000477C8, &qword_10002E210);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000025C4(&unk_100047A60, qword_10002E2A0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1000211EC(v10, v6, &qword_1000477C8, &qword_10002E210);
      v12 = *v6;
      result = sub_10001FB4C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

void sub_10002026C(const char *a1, uint64_t a2)
{
  v5 = v2;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000097A8(v6, qword_1000493C0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  v13 = [objc_allocWithZone(SHSheetAction) initWithType:a2];
  v10 = v5 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v5, v13, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_10002040C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000097A8(v11, qword_1000493C0);
  (*(v7 + 16))(v10, a1, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28[1] = a1;
    v17 = v16;
    v30 = v16;
    *v15 = 136315138;
    sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = sub_100029F40(v18, v20, &v30);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "didToggleActivityWithIdentifier:%s", v15, 0xCu);
    sub_10000EF68(v17);

    a2 = v29;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v22 = *(v3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  if (v22)
  {
    v23 = *(v3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier);
    v24 = *(v3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier + 8);
    v25 = v22;
    v26 = String._bridgeToObjectiveC()();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v25 activityViewControllerWithSessionID:v26 toggledActivityWithIdentifier:isa activityCategory:a2];
  }
}

void sub_1000206FC(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000097A8(v12, qword_1000493C0);
  (*(v8 + 16))(v11, a2, v7);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v29[1] = a2;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v29[0] = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315138;
    sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v8 + 8))(v11, v7);
    v22 = sub_100029F40(v19, v21, &v31);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "didFavoriteActivity:%s", v17, 0xCu);
    sub_10000EF68(v18);

    a3 = v29[0];
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v23 = *(v4 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  if (v23)
  {
    v24 = *(v4 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier);
    v25 = *(v4 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier + 8);
    v26 = v23;
    v27 = String._bridgeToObjectiveC()();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v26 activityViewControllerWithSessionID:v27 favoritedActivity:v30 & 1 withIdentifier:isa activityCategory:a3];
  }
}

void sub_1000209F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000097A8(v5, qword_1000493C0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    sub_10000A598(0, &unk_1000479E0, _UIUserDefaultsActivityProxy_ptr);
    v10 = Array.description.getter();
    v12 = sub_100029F40(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "didUpdateFavoritesProxies:%s", v8, 0xCu);
    sub_10000EF68(v9);
  }

  v13 = *(v3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  if (v13)
  {
    v14 = *(v3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier);
    v15 = *(v3 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier + 8);
    v16 = v13;
    v17 = String._bridgeToObjectiveC()();
    sub_10000A598(0, &unk_1000479E0, _UIUserDefaultsActivityProxy_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v16 activityViewControllerWithSessionID:v17 updatedFavoritesProxies:isa activityCategory:a2];
  }
}

void sub_100020C34(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000464C8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000097A8(v13, qword_1000493C0);
  (*(v9 + 16))(v12, a1, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v14, v15))
  {

    (*(v9 + 8))(v12, v8);
    if ((a3 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v35 = [objc_opt_self() createScreenTimeAlertViewController];
    v36 = v4 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 8);
      ObjectType = swift_getObjectType();
      (*(v37 + 32))(v4, v35, ObjectType, v37);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  v16 = swift_slowAlloc();
  v41 = a1;
  v17 = v16;
  v39 = swift_slowAlloc();
  v42 = v39;
  *v17 = 136315138;
  sub_1000210E4(&qword_1000479D8, &type metadata accessor for UUID);
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  v40 = a3;
  v19 = v4;
  v20 = a2;
  v22 = v21;
  (*(v9 + 8))(v12, v8);
  v23 = sub_100029F40(v18, v22, &v42);
  a2 = v20;
  v4 = v19;
  LOBYTE(v19) = v40;

  *(v17 + 4) = v23;
  _os_log_impl(&_mh_execute_header, v14, v15, "didSelectActivityWithIdentifier:%s", v17, 0xCu);
  sub_10000EF68(v39);

  if (v19)
  {
    goto LABEL_11;
  }

LABEL_5:
  v24 = [objc_allocWithZone(SHSheetAction) initWithType:13];
  v25 = v4 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v25 + 8);
    v27 = swift_getObjectType();
    (*(v26 + 8))(v4, v24, v27, v26);
    swift_unknownObjectRelease();
  }

  v28 = *(v4 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  if (v28)
  {
    v29 = v4 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier;
    v30 = *(v4 + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_identifier);
    v31 = *(v29 + 8);
    v32 = v28;
    v33 = String._bridgeToObjectiveC()();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v32 activityViewControllerWithSessionID:v33 selectedDefaultActivityWithIdentifier:isa activityCategory:a2];
  }
}

uint64_t sub_100021038()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021070()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1000210C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_10001D49C();
}

uint64_t sub_1000210CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000210E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002112C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002118C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000211EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000025C4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_100021564(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000215D0()
{
  v0 = type metadata accessor for Logger();
  sub_10000AB94(v0, qword_100047B40);
  v1 = sub_1000097A8(v0, qword_100047B40);
  if (qword_1000464D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000097A8(v0, qword_1000493D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000216AC()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000AB94(v0, static ShareIntent.title);
  sub_1000097A8(v0, static ShareIntent.title);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t ShareIntent.title.unsafeMutableAddressor()
{
  if (qword_100046530 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_1000097A8(v0, static ShareIntent.title);
}

uint64_t static ShareIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100046530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1000097A8(v2, static ShareIntent.title);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ShareIntent.title.setter(uint64_t a1)
{
  if (qword_100046530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1000097A8(v2, static ShareIntent.title);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ShareIntent.title.modify())()
{
  if (qword_100046530 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  sub_1000097A8(v0, static ShareIntent.title);
  swift_beginAccess();
  return j__swift_endAccess;
}

double ShareIntent.shareTransport.getter@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t ShareIntent.shareTransport.setter(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  return IntentParameter.wrappedValue.setter();
}

uint64_t (*ShareIntent.shareTransport.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_1000275EC;
}

uint64_t (*ShareIntent.recipients.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100021BB0;
}

uint64_t (*ShareIntent.mode.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_1000275EC;
}

uint64_t (*ShareIntent.content.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_1000275EC;
}

void sub_100021DB4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t ShareIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return _swift_task_switch(sub_100021E50, 0, 0);
}

uint64_t sub_100021E50()
{
  if (qword_100046528 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000097A8(v1, qword_100047B40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing share intent", v4, 2u);
  }

  v5 = v0[11];

  IntentParameter.wrappedValue.getter();
  v6 = v0[6];
  v7 = v0[7];

  sub_1000256F4((v0 + 2));
  if (v6 == 0xD00000000000002ALL && 0x800000010002ECA0 == v7)
  {

LABEL_9:
    v9 = swift_task_alloc();
    v0[15] = v9;
    *v9 = v0;
    v9[1] = sub_100022094;
    v10 = v0[13];
    v11 = v0[14];
    v13 = v0[11];
    v12 = v0[12];

    return sub_1000222F0(v13, v12, v10, v11);
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    goto LABEL_9;
  }

  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_1000221F4;
  v16 = v0[13];
  v17 = v0[14];
  v19 = v0[11];
  v18 = v0[12];

  return sub_100022820(v19, v18, v16, v17);
}

uint64_t sub_100022094()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_100022190, 0, 0);
}

uint64_t sub_100022190()
{
  v1 = *(v0 + 80);
  static IntentResult.result<>()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000221F4()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_1000275E0, 0, 0);
}

uint64_t sub_1000222F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for SFRemoteAlertPresentationRequest.PresentationType();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v9;
  v4[17] = v8;

  return _swift_task_switch(sub_1000223E8, v9, v8);
}

uint64_t sub_1000223E8()
{
  if (qword_100046528 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000097A8(v1, qword_100047B40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No transport provided, presenting Share Sheet", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_10002253C;
  v6 = v0[10];
  v7 = v0[11];
  v9 = v0[8];
  v8 = v0[9];

  return sub_100022EAC(v9, v8, v6, v7);
}

uint64_t sub_10002253C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = a1;

  v4 = *(v2 + 136);
  v5 = *(v2 + 128);

  return _swift_task_switch(sub_100022664, v5, v4);
}

uint64_t sub_100022664()
{
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[13];

  type metadata accessor for SUISRemoteAlertPresentationManager();
  v6 = sub_10000BD18();
  (*(v5 + 104))(v3, enum case for SFRemoteAlertPresentationRequest.PresentationType.sharesheet(_:), v4);
  v7 = dispatch thunk of SFRemoteAlertPresentationManager.present(_:animated:contentOverlaysStatusBar:supportedInterfaceOrientations:hideViewController:presentationType:)();

  (*(v5 + 8))(v3, v4);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v0[6] = sub_1000275F0;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10002330C;
  v0[5] = &unk_10003E128;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  [v1 setCompletionWithItemsHandler:v9];
  _Block_release(v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100022820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v5 = type metadata accessor for SFRemoteAlertPresentationRequest.PresentationType();
  v4[28] = v5;
  v6 = *(v5 - 8);
  v4[29] = v6;
  v7 = *(v6 + 64) + 15;
  v4[30] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[31] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[32] = v9;
  v4[33] = v8;

  return _swift_task_switch(sub_100022918, v9, v8);
}

uint64_t sub_100022918()
{
  v24 = v0;
  if (qword_100046528 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = type metadata accessor for Logger();
  sub_1000097A8(v5, qword_100047B40);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[24];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    IntentParameter.wrappedValue.getter();
    v11 = ShareTransportEntity.description.getter();
    v13 = v12;
    sub_1000256F4((v0 + 2));
    v14 = sub_100029F40(v11, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Performing provided transport: %s", v9, 0xCu);
    sub_10000EF68(v10);
  }

  v15 = v0[24];
  IntentParameter.wrappedValue.getter();
  v16 = v0[15];
  v0[34] = v0[14];
  v0[35] = v16;

  sub_1000256F4((v0 + 10));
  v17 = swift_task_alloc();
  v0[36] = v17;
  *v17 = v0;
  v17[1] = sub_100022B5C;
  v18 = v0[26];
  v19 = v0[27];
  v21 = v0[24];
  v20 = v0[25];

  return sub_100022EAC(v21, v20, v18, v19);
}

uint64_t sub_100022B5C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = a1;

  v4 = *(v2 + 264);
  v5 = *(v2 + 256);

  return _swift_task_switch(sub_100022C84, v5, v4);
}

uint64_t sub_100022C84()
{
  v1 = v0[37];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v5 = v0[29];

  type metadata accessor for SUISRemoteAlertPresentationManager();
  v6 = sub_10000BD18();
  (*(v5 + 104))(v3, enum case for SFRemoteAlertPresentationRequest.PresentationType.unknown(_:), v4);
  v7 = dispatch thunk of SFRemoteAlertPresentationManager.present(_:animated:contentOverlaysStatusBar:supportedInterfaceOrientations:hideViewController:presentationType:)();

  (*(v5 + 8))(v3, v4);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v0[22] = sub_100027410;
  v0[23] = v8;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10002330C;
  v0[21] = &unk_10003E1C8;
  v9 = _Block_copy(v0 + 18);
  v10 = v0[23];

  [v1 setCompletionWithItemsHandler:v9];
  _Block_release(v9);
  v11 = v0[37];
  v12 = v0[35];
  if (v7)
  {
    v13 = v0[34];
    v14 = swift_allocObject();
    v14[2] = v11;
    v14[3] = v13;
    v14[4] = v12;
    v14[5] = v7;

    v15 = v11;
    dispatch thunk of SFRemoteAlertPresentationHandle.onActivate.setter();
  }

  else
  {
    v16 = v0[35];
  }

  v17 = v0[30];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100022EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v6;
  v4[15] = v5;

  return _swift_task_switch(sub_100022F48, v6, v5);
}

uint64_t sub_100022F48()
{
  v1 = v0[12];
  IntentParameter.wrappedValue.getter();
  v2 = sub_100025BB8(v0[8]);
  v0[16] = v2;

  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_100023004;
  v4 = v0[12];

  return sub_100026718(v2, v4);
}

uint64_t sub_100023004(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = a1;

  v4 = *(v2 + 120);
  v5 = *(v2 + 112);

  return _swift_task_switch(sub_10002312C, v5, v4);
}

uint64_t sub_10002312C()
{
  v1 = v0[18];
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];

  v8 = objc_allocWithZone(UIActivityItemsConfiguration);
  sub_10000A598(0, &qword_100047B80, NSItemProvider_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithItemProviders:isa];

  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v6;
  v11[4] = v5;
  v11[5] = v4;
  v11[6] = v1;
  v0[6] = sub_1000273C8;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100024C40;
  v0[5] = &unk_10003E178;
  v12 = _Block_copy(v0 + 2);
  v13 = v0[7];

  [v10 setPerItemMetadataProvider:v12];
  _Block_release(v12);
  v14 = [objc_allocWithZone(UIActivityViewController) initWithActivityItemsConfiguration:v10];

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_10002330C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a4)
  {
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = 0;
  }

  v11 = a2;
  v12 = a5;
  v9(a2, a3, v10, a5);
}

uint64_t sub_1000233C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000025C4(&qword_100047048, &qword_10002DC28);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = a1;

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  sub_10000DCD8(0, 0, v11, &unk_10002E4D8, v15);
}

uint64_t sub_100023520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  type metadata accessor for MainActor();
  v7[22] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[23] = v9;
  v7[24] = v8;

  return _swift_task_switch(sub_1000235BC, v9, v8);
}

uint64_t sub_1000235BC()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = String._bridgeToObjectiveC()();
  v0[25] = v4;
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1000236F4;
  v5 = swift_continuation_init();
  v0[17] = sub_1000025C4(&qword_100047BB8, &qword_10002E4E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100023C00;
  v0[13] = &unk_10003E240;
  v0[14] = v5;
  [v3 _performActivityWithType:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000236F4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 192);
  v5 = *(v1 + 184);
  if (v3)
  {
    v6 = sub_1000239D8;
  }

  else
  {
    v6 = sub_100023824;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100023824()
{
  v15 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);

  v3 = *(v0 + 216);

  if ((v3 & 1) == 0)
  {
    if (qword_100046528 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 160);
    v5 = type metadata accessor for Logger();
    sub_1000097A8(v5, qword_100047B40);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 152);
      v8 = *(v0 + 160);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100029F40(v9, v8, &v14);
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to perform activity of type %s", v10, 0xCu);
      sub_10000EF68(v11);
    }

    if (*(v0 + 168))
    {
      dispatch thunk of SFRemoteAlertPresentationHandle.dismiss(animated:completion:)();
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000239D8()
{
  v20 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];

  swift_willThrow();

  if (qword_100046528 != -1)
  {
    swift_once();
  }

  v4 = v0[26];
  v5 = v0[20];
  v6 = type metadata accessor for Logger();
  sub_1000097A8(v6, qword_100047B40);

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  if (v9)
  {
    v12 = v0[19];
    v11 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_100029F40(v12, v11, &v19);
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v16;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to perform activity of type %s with error: %@", v13, 0x16u);
    sub_100009C18(v14, &qword_1000475A0, &unk_10002D720);

    sub_10000EF68(v15);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100023C00(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000F3D8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000025C4(&qword_100047060, &qword_10002DC58);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100023CCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v47 = a2;
  v46 = type metadata accessor for URL();
  v40 = *(v46 - 8);
  v3 = *(v40 + 64);
  __chkstk_darwin(v46);
  v43 = v4;
  v44 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000025C4(&qword_1000473A8, &qword_10002E490);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v38 - v7;
  v42 = type metadata accessor for UTType();
  v48 = *(v42 - 8);
  v9 = *(v48 + 64);
  v10 = __chkstk_darwin(v42);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v41 = v38 - v13;
  v14 = type metadata accessor for URLResourceValues();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = URL.startAccessingSecurityScopedResource()();
  sub_1000025C4(&qword_100047B88, &qword_10002E498);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002D290;
  *(inited + 32) = NSURLTypeIdentifierKey;
  v20 = NSURLTypeIdentifierKey;
  sub_1000259C4(inited);
  swift_setDeallocating();
  sub_10002659C(inited + 32);
  v45 = a1;
  v21 = v38[1];
  URL.resourceValues(forKeys:)();
  if (v21)
  {
  }

  else
  {

    URLResourceValues.typeIdentifier.getter();
    v33 = v32;
    (*(v15 + 8))(v18, v14);
    if (v33)
    {
      v34 = v8;
      UTType.init(identifier:allowUndeclared:)();
      v35 = v48;
      v36 = *(v48 + 48);
      v22 = v42;
      if (v36(v8, 1, v42) == 1)
      {
        static UTType.fileURL.getter();
        v37 = v36(v8, 1, v22);
        v24 = v45;
        v23 = v41;
        if (v37 != 1)
        {
          sub_100009C18(v34, &qword_1000473A8, &qword_10002E490);
        }
      }

      else
      {
        (*(v35 + 32))(v12, v8, v22);
        v24 = v45;
        v23 = v41;
      }

      (*(v35 + 32))(v23, v12, v22);
      if (v39)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  v23 = v41;
  v22 = v42;
  static UTType.fileURL.getter();
  v24 = v45;
  if (v39)
  {
LABEL_4:
    URL.stopAccessingSecurityScopedResource()();
  }

LABEL_5:
  v25 = [objc_allocWithZone(NSItemProvider) init];
  v26 = v40;
  v27 = v44;
  v28 = v46;
  (*(v40 + 16))(v44, v24, v46);
  v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v30 = swift_allocObject();
  (*(v26 + 32))(v30 + v29, v27, v28);
  NSItemProvider.registerFileRepresentation(for:visibility:openInPlace:loadHandler:)();

  result = (*(v48 + 8))(v23, v22);
  *v47 = v25;
  return result;
}

uint64_t sub_1000241B8(void (*a1)(char *, uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_1000025C4(&qword_100046C80, &unk_10002D770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = URL.startAccessingSecurityScopedResource()();
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a3, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  a1(v8, 1, 0);
  sub_100009C18(v8, &qword_100046C80, &unk_10002D770);
  if (v9)
  {
    URL.stopAccessingSecurityScopedResource()();
  }

  return 0;
}

uint64_t sub_100024310@<X0>(uint64_t a1@<X0>, unint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v78 = type metadata accessor for IntentPerson();
  v74 = *(v78 - 8);
  v6 = v74[8];
  v7 = __chkstk_darwin(v78);
  v77 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v72 - v9;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    goto LABEL_16;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
LABEL_16:
    IntentParameter.wrappedValue.getter();
    if (v79)
    {
      if (*(v79 + 2))
      {
        if (qword_100046528 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_1000097A8(v29, qword_100047B40);

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v79 = v33;
          *v32 = 136315138;
          v34 = Array.description.getter();
          v36 = v35;

          v37 = sub_100029F40(v34, v36, &v79);

          *(v32 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v30, v31, "Intent providing recipients: %s", v32, 0xCu);
          sub_10000EF68(v33);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    result = IntentParameter.wrappedValue.getter();
    v38 = v79;
    if (v79)
    {
      v39 = &_swiftEmptyArrayStorage;
      v79 = &_swiftEmptyArrayStorage;
      v40 = v38[2];
      if (v40)
      {
        v73 = a3;
        v41 = sub_10000A598(0, &qword_100047BA8, INPerson_ptr);
        v42 = v74 + 2;
        v43 = v74[2];
        v44 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v74 = v38;
        v75 = v41;
        v45 = v38 + v44;
        v46 = v42[7];
        v47 = (v42 - 1);
        do
        {
          v48 = v76;
          v49 = v78;
          v43(v76, v45, v78);
          v43(v77, v48, v49);
          INPerson.init(_:)();
          (*v47)(v48, v49);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v72 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v45 += v46;
          --v40;
        }

        while (v40);
        v39 = v79;
        a3 = v73;
      }

      result = sub_1000025C4(&qword_100047BB0, &unk_10002E4C0);
      *(a3 + 24) = result;
      *a3 = v39;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    return result;
  }

  v16 = a3;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
      if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
      {

        v28 = v16;
        if (!a2)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v28 = v16;
        if ((v63 & 1) == 0 || !a2)
        {
          goto LABEL_57;
        }
      }

      if (a2 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result > a1)
        {
LABEL_48:
          if ((a2 & 0xC000000000000001) != 0)
          {
            v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a1 < 0)
            {
              __break(1u);
              goto LABEL_60;
            }

            if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
            {
              __break(1u);
              return result;
            }

            v64 = *(a2 + 8 * a1 + 32);
          }

          a2 = v64;
          if (qword_100046528 == -1)
          {
LABEL_53:
            v65 = type metadata accessor for Logger();
            sub_1000097A8(v65, qword_100047B40);
            v66 = a2;
            v67 = Logger.logObject.getter();
            v68 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              *v69 = 138412290;
              *(v69 + 4) = v66;
              *v70 = v66;
              v71 = v66;
              _os_log_impl(&_mh_execute_header, v67, v68, "Intent providing metadata: %@", v69, 0xCu);
              sub_100009C18(v70, &qword_1000475A0, &unk_10002D720);
            }

            result = sub_10000A598(0, &unk_100046C90, LPLinkMetadata_ptr);
            *(v16 + 24) = result;
            *v16 = v66;
            return result;
          }

LABEL_60:
          swift_once();
          goto LABEL_53;
        }
      }

      else
      {
        result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result > a1)
        {
          goto LABEL_48;
        }
      }

LABEL_57:
      *v28 = 0u;
      v28[1] = 0u;
      return result;
    }
  }

  IntentParameter.wrappedValue.getter();
  v50 = v79;
  if (v79 != 2)
  {
    if (qword_100046528 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000097A8(v51, qword_100047B40);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v79 = v55;
      *v54 = 136315138;
      sub_1000025C4(&qword_100046C88, qword_10002DD20);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_10002D6A0;
      *(v56 + 32) = [objc_allocWithZone(UIActivityCollaborationModeRestriction) initWithDisabledMode:(v50 & 1) == 0];
      sub_10000A598(0, &qword_100047BA0, UIActivityCollaborationModeRestriction_ptr);
      v57 = Array.description.getter();
      v59 = v58;

      v60 = sub_100029F40(v57, v59, &v79);

      *(v54 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v52, v53, "Intent providing restrictions: %s", v54, 0xCu);
      sub_10000EF68(v55);
    }
  }

  result = IntentParameter.wrappedValue.getter();
  v61 = v79;
  if (v79 == 2)
  {
    *v16 = 0u;
    *(v16 + 16) = 0u;
  }

  else
  {
    sub_1000025C4(&qword_100046C88, qword_10002DD20);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_10002D6A0;
    *(v62 + 32) = [objc_allocWithZone(UIActivityCollaborationModeRestriction) initWithDisabledMode:(v61 & 1) == 0];
    result = sub_1000025C4(&qword_100047B98, &qword_10002E4B8);
    *(v16 + 24) = result;
    *v16 = v62;
  }

  return result;
}

id sub_100024C40(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(v16, a2, v7);

  v8 = v17;
  if (v17)
  {
    v9 = sub_10000F3D8(v16, v17);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    __chkstk_darwin(v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    sub_10000EF68(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_100024DC0(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000BA80;

  return ShareIntent.perform()(a1, v4, v5, v7, v6);
}

uint64_t sub_100024E80@<X0>(uint64_t *a1@<X8>)
{
  result = _s16SharingUIService11ShareIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_100024EAC(uint64_t a1)
{
  v2 = sub_100025864();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100024EE8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100024F34(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t _s16SharingUIService11ShareIntentVACycfC_0()
{
  v0 = type metadata accessor for IntentPerson.ParameterMode();
  v50 = *(v0 - 8);
  v51 = v0;
  v1 = *(v50 + 64);
  __chkstk_darwin(v0);
  v49 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for InputConnectionBehavior();
  v3 = *(v61 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v61);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000025C4(&qword_100046540, &unk_10002D2A0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v46 - v12;
  v14 = sub_1000025C4(&qword_100046548, &qword_10002E200);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v46 - v16;
  v18 = type metadata accessor for LocalizedStringResource();
  v53 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000025C4(&qword_100046550, &qword_10002D2B0);
  LocalizedStringResource.init(stringLiteral:)();
  v23 = *(v19 + 56);
  v46[2] = v19 + 56;
  v54 = v23;
  v23(v17, 1, 1, v18);
  v24 = type metadata accessor for IntentDialog();
  v59 = v24;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v57 = v26;
  v58 = v25 + 56;
  v26(v13, 1, 1, v24);
  v47 = v11;
  v26(v11, 1, 1, v24);
  v60 = enum case for InputConnectionBehavior.default(_:);
  v55 = *(v3 + 104);
  v56 = v3 + 104;
  v27 = v61;
  v55(v6);
  sub_10000260C();
  v52 = v22;
  v28 = v6;
  v48 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v46[1] = sub_1000025C4(&qword_100046560, &qword_10002D2B8);
  LocalizedStringResource.init(stringLiteral:)();
  v29 = v17;
  v30 = v17;
  v32 = v53;
  v31 = v54;
  v54(v29, 1, 1, v53);
  v57(v13, 1, 1, v59);
  (*(v50 + 104))(v49, enum case for IntentPerson.ParameterMode.contact(_:), v51);
  v46[0] = v28;
  v33 = v27;
  v34 = v55;
  (v55)(v28, v60, v33);
  v35 = v13;
  v51 = IntentParameter<>.init(title:description:mode:requestValueDialog:inputConnectionBehavior:)();
  v50 = sub_1000025C4(&qword_100046568, &qword_10002D2C0);
  LocalizedStringResource.init(stringLiteral:)();
  v31(v30, 1, 1, v32);
  LOBYTE(v62) = 2;
  v36 = v59;
  v37 = v57;
  v57(v35, 1, 1, v59);
  v37(v47, 1, 1, v36);
  v38 = v37;
  v39 = v46[0];
  (v34)(v46[0], v60, v61);
  sub_100002C98();
  v40 = v35;
  v41 = v39;
  v50 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_1000025C4(&qword_100046578, &qword_10002D2C8);
  LocalizedStringResource.init(stringLiteral:)();
  v54(v30, 1, 1, v53);
  *&v62 = 0;
  v38(v40, 1, 1, v59);
  sub_1000025C4(&qword_100046580, &unk_10002D2D0);
  v42 = *(type metadata accessor for UTType() - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  *(swift_allocObject() + 16) = xmmword_10002D290;
  static UTType.item.getter();
  (v55)(v41, v60, v61);
  IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  return v48;
}

unint64_t sub_10002574C()
{
  result = qword_100047B58;
  if (!qword_100047B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047B58);
  }

  return result;
}

unint64_t sub_1000257A4()
{
  result = qword_100047B60;
  if (!qword_100047B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047B60);
  }

  return result;
}

unint64_t sub_100025864()
{
  result = qword_100047B68;
  if (!qword_100047B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047B68);
  }

  return result;
}

__n128 sub_1000258B8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000258C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10002590C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100025960()
{
  result = qword_100047B70;
  if (!qword_100047B70)
  {
    sub_10000A780(&qword_100047B78, &unk_10002E480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047B70);
  }

  return result;
}

void *sub_1000259C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000025C4(&qword_100047B90, &qword_10002E4A0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100025BB8(uint64_t a1)
{
  v2 = 0;
  v3 = sub_1000025C4(&qword_100046C80, &unk_10002D770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v71 - v5;
  v7 = type metadata accessor for URL();
  v80 = *(v7 - 8);
  v8 = *(v80 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v79 = &v71 - v12;
  v82 = type metadata accessor for IntentFile();
  v13 = *(v82 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v82);
  v78 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v71 - v17;
  v19 = &_swiftEmptyArrayStorage;
  if (!a1)
  {
    return v19;
  }

  v76 = v11;
  v83[0] = &_swiftEmptyArrayStorage;
  v20 = *(a1 + 16);
  v81 = v7;
  v74 = a1;
  if (v20)
  {
    v72 = v13;
    v73 = v6;
    v75 = 0;
    v21 = *(v13 + 16);
    v22 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v23 = *(v13 + 72);
    v24 = (v13 + 8);
    v77 = v20;
    v25 = v20;
    do
    {
      v26 = v82;
      v21(v18, v22, v82);
      IntentFile._itemProvider.getter();
      (*v24)(v18, v26);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v22 += v23;
      --v25;
    }

    while (v25);
    v19 = v83[0];
    v2 = v75;
    v13 = v72;
    v6 = v73;
    v20 = v77;
  }

  v27 = (v19 >> 62);
  if (v19 >> 62)
  {
LABEL_50:
    if (_CocoaArrayWrapper.endIndex.getter() != 1 || !_CocoaArrayWrapper.endIndex.getter())
    {
      v37 = 0;
      goto LABEL_20;
    }
  }

  else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    v37 = 0;
    goto LABEL_17;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
    v28 = v20;
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_55:
      swift_once();
LABEL_44:
      v66 = type metadata accessor for Logger();
      sub_1000097A8(v66, qword_100047B40);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v41, v42))
      {
LABEL_47:

        return v19;
      }

      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v83[0] = v44;
      *v43 = 136315138;
      sub_10000A598(0, &qword_100047B80, NSItemProvider_ptr);
      v67 = Array.description.getter();
      v69 = sub_100029F40(v67, v68, v83);

      *(v43 + 4) = v69;
      v48 = "Did not find item providers on Intent File using synthesized item providers: %s";
LABEL_46:
      _os_log_impl(&_mh_execute_header, v41, v42, v48, v43, 0xCu);
      sub_10000EF68(v44);

      goto LABEL_47;
    }

    v28 = v20;
    v29 = *(v19 + 32);
  }

  v30 = v29;
  v31 = [v29 registeredTypeIdentifiers];
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = *(v32 + 16);

  if (v33 != 1)
  {

    v37 = 0;
    v20 = v28;
    if (v27)
    {
      goto LABEL_20;
    }

LABEL_17:
    v38 = v74;
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v34 = [v30 registeredTypeIdentifiers];
  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v83[0] = 0xD000000000000018;
  v83[1] = 0x800000010002F680;
  __chkstk_darwin(v36);
  *(&v71 - 2) = v83;
  v37 = sub_100024F34(sub_100026544, (&v71 - 4), v35);

  v20 = v28;
  if (!v27)
  {
    goto LABEL_17;
  }

LABEL_20:
  v39 = _CocoaArrayWrapper.endIndex.getter();
  v38 = v74;
  if (!v39)
  {
    goto LABEL_26;
  }

LABEL_21:
  if ((v37 & 1) == 0)
  {
    if (qword_100046528 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000097A8(v40, qword_100047B40);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_47;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v83[0] = v44;
    *v43 = 136315138;
    sub_10000A598(0, &qword_100047B80, NSItemProvider_ptr);
    v45 = Array.description.getter();
    v47 = sub_100029F40(v45, v46, v83);

    *(v43 + 4) = v47;
    v48 = "Returning item providers from IntentFiles: %s";
    goto LABEL_46;
  }

LABEL_26:
  v72 = v19;
  v49 = &_swiftEmptyArrayStorage;
  if (v20)
  {
    v51 = *(v13 + 16);
    v50 = v13 + 16;
    v52 = v38 + ((*(v50 + 64) + 32) & ~*(v50 + 64));
    v74 = *(v50 + 56);
    v75 = v51;
    v27 = (v50 - 8);
    v53 = (v80 + 48);
    v73 = (v80 + 32);
    do
    {
      v54 = v78;
      v55 = v82;
      v75(v78, v52, v82);
      IntentFile.fileURL.getter();
      (*v27)(v54, v55);
      v56 = v81;
      if ((*v53)(v6, 1, v81) == 1)
      {
        sub_100009C18(v6, &qword_100046C80, &unk_10002D770);
      }

      else
      {
        v77 = v20;
        v57 = v50;
        v58 = *v73;
        v59 = v6;
        (*v73)(v79, v6, v56);
        v60 = v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_100029B54(0, *(v49 + 2) + 1, 1, v49);
        }

        v62 = *(v49 + 2);
        v61 = *(v49 + 3);
        if (v62 >= v61 >> 1)
        {
          v49 = sub_100029B54(v61 > 1, v62 + 1, 1, v49);
        }

        *(v49 + 2) = v62 + 1;
        v58(&v49[((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v62], v79, v81);
        v2 = v60;
        v6 = v59;
        v50 = v57;
        v20 = v77;
      }

      v52 += v74;
      --v20;
    }

    while (v20);
  }

  v6 = *(v49 + 2);
  if (!v6)
  {

    v19 = &_swiftEmptyArrayStorage;
LABEL_43:
    if (qword_100046528 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_55;
  }

  v83[0] = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v20 = 0;
  v63 = &v49[(*(v80 + 80) + 32) & ~*(v80 + 80)];
  v13 = v80 + 16;
  v19 = v80 + 8;
  while (1)
  {
    if (v20 >= *(v49 + 2))
    {
      __break(1u);
      goto LABEL_50;
    }

    v64 = v81;
    v65 = v76;
    (*(v80 + 16))(v76, &v63[*(v80 + 72) * v20], v81);
    sub_100023CCC(v65, &v84);
    if (v2)
    {
      break;
    }

    ++v20;
    (*v19)(v65, v64);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v27 = *(v83[0] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v6 == v20)
    {

      v19 = v83[0];
      goto LABEL_43;
    }
  }

  (*v19)(v65, v64);

  __break(1u);
  return result;
}

uint64_t sub_100026544(void *a1)
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

uint64_t sub_10002659C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000265F8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100026680(void (*a1)(char *, uint64_t, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000241B8(a1, a2, v6);
}

uint64_t sub_100026700(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100026718(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = *(*(sub_1000025C4(&qword_100046C80, &unk_10002D770) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v7 = type metadata accessor for IntentFile();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100026878, 0, 0);
}

uint64_t sub_100026878()
{
  v0[2] = _swiftEmptyArrayStorage;
  v1 = v0[4];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[4];
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
    v0[14] = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[14] = v2;
    if (v2)
    {
LABEL_3:
      if (v2 >= 1)
      {
        v3 = v0[4];
        v0[16] = _swiftEmptyArrayStorage;
        v0[17] = _swiftEmptyArrayStorage;
        v0[15] = 0;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v0[18] = v4;
        v5 = swift_task_alloc();
        v0[19] = v5;
        *v5 = v0;
        v5[1] = sub_100026D54;

        return sub_100012B04();
      }

      __break(1u);
      goto LABEL_36;
    }
  }

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v8 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_36:
  v8 = _CocoaArrayWrapper.endIndex.getter();
LABEL_15:
  if (!v8)
  {
    v9 = v0[5];
    IntentParameter.wrappedValue.getter();
    v10 = v0[3];
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v0[12];
      v50 = *(v12 + 16);
      v47 = v0[8];
      v13 = v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v14 = (v12 + 8);
      v48 = (v47 + 32);
      v49 = *(v12 + 72);
      v15 = _swiftEmptyArrayStorage;
      do
      {
        v16 = v15;
        v17 = v0[13];
        v18 = v0[11];
        v19 = v0[6];
        v20 = v0[7];
        v50(v17, v13, v18);
        IntentFile.fileURL.getter();
        (*v14)(v17, v18);
        if ((*(v47 + 48))(v19, 1, v20) == 1)
        {
          sub_100009C18(v0[6], &qword_100046C80, &unk_10002D770);
          v15 = v16;
        }

        else
        {
          v21 = *v48;
          (*v48)(v0[10], v0[6], v0[7]);
          v15 = v16;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_100029B54(0, v16[2] + 1, 1, v16);
          }

          v23 = v15[2];
          v22 = v15[3];
          if (v23 >= v22 >> 1)
          {
            v15 = sub_100029B54(v22 > 1, v23 + 1, 1, v15);
          }

          v24 = v0[10];
          v25 = v0[7];
          v15[2] = v23 + 1;
          v21(v15 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v23, v24, v25);
        }

        v13 += v49;
        --v11;
      }

      while (v11);

      v26 = v15[2];
      if (!v26)
      {
        goto LABEL_31;
      }
    }

    else
    {

      v15 = _swiftEmptyArrayStorage;
      v26 = _swiftEmptyArrayStorage[2];
      if (!v26)
      {
LABEL_31:

        goto LABEL_32;
      }
    }

    v27 = v0[8];
    specialized ContiguousArray.reserveCapacity(_:)();
    v29 = *(v27 + 16);
    v28 = v27 + 16;
    v51 = v29;
    v30 = v15 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v31 = *(v28 + 56);
    do
    {
      v32 = v0[9];
      v33 = v0[7];
      v51(v32, v30, v33);
      v34 = [objc_allocWithZone(LPLinkMetadata) init];
      URL._bridgeToObjectiveC()(v35);
      v37 = v36;
      [v34 setOriginalURL:v36];

      URL._bridgeToObjectiveC()(v38);
      v40 = v39;
      [v34 setURL:v39];

      (*(v28 - 8))(v32, v33);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v41 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v30 += v31;
      --v26;
    }

    while (v26);
    goto LABEL_31;
  }

LABEL_32:
  v42 = v0[13];
  v43 = v0[9];
  v44 = v0[10];
  v45 = v0[6];

  v46 = v0[1];

  return v46(_swiftEmptyArrayStorage);
}

uint64_t sub_100026D54(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_100026E54, 0, 0);
}

uint64_t sub_100026E54()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = v1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v50 = *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v3 = *(v0 + 144);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v4 = *(v0 + 16);
    v5 = v4;
  }

  else
  {

    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
  }

  v6 = *(v0 + 120) + 1;
  if (v6 == *(v0 + 112))
  {
    if (v5 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_31;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_31:
      v45 = *(v0 + 104);
      v47 = *(v0 + 72);
      v46 = *(v0 + 80);
      v48 = *(v0 + 48);

      v49 = *(v0 + 8);

      return v49(v4);
    }

    v7 = *(v0 + 40);
    IntentParameter.wrappedValue.getter();
    v8 = *(v0 + 24);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v0 + 96);
      v11 = *(v0 + 64);
      v54 = *(v10 + 16);
      v12 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v13 = (v10 + 8);
      v14 = (v11 + 48);
      v51 = v11;
      v52 = (v11 + 32);
      v53 = *(v10 + 72);
      v15 = _swiftEmptyArrayStorage;
      do
      {
        v16 = *(v0 + 104);
        v17 = *(v0 + 88);
        v18 = *(v0 + 48);
        v19 = *(v0 + 56);
        v54(v16, v12, v17);
        IntentFile.fileURL.getter();
        (*v13)(v16, v17);
        if ((*v14)(v18, 1, v19) == 1)
        {
          sub_100009C18(*(v0 + 48), &qword_100046C80, &unk_10002D770);
        }

        else
        {
          v20 = *v52;
          (*v52)(*(v0 + 80), *(v0 + 48), *(v0 + 56));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_100029B54(0, *(v15 + 2) + 1, 1, v15);
          }

          v22 = *(v15 + 2);
          v21 = *(v15 + 3);
          if (v22 >= v21 >> 1)
          {
            v15 = sub_100029B54(v21 > 1, v22 + 1, 1, v15);
          }

          v23 = *(v0 + 80);
          v24 = *(v0 + 56);
          *(v15 + 2) = v22 + 1;
          v20(&v15[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v22], v23, v24);
        }

        v12 += v53;
        --v9;
      }

      while (v9);

      v29 = *(v15 + 2);
      if (!v29)
      {
        goto LABEL_30;
      }
    }

    else
    {

      v15 = _swiftEmptyArrayStorage;
      v29 = _swiftEmptyArrayStorage[2];
      if (!v29)
      {
LABEL_30:

        v4 = _swiftEmptyArrayStorage;
        goto LABEL_31;
      }
    }

    v30 = *(v0 + 64);
    specialized ContiguousArray.reserveCapacity(_:)();
    v32 = *(v30 + 16);
    v31 = v30 + 16;
    v55 = v32;
    v33 = &v15[(*(v31 + 64) + 32) & ~*(v31 + 64)];
    v34 = *(v31 + 56);
    do
    {
      v35 = *(v0 + 72);
      v36 = *(v0 + 56);
      v55(v35, v33, v36);
      v37 = [objc_allocWithZone(LPLinkMetadata) init];
      URL._bridgeToObjectiveC()(v38);
      v40 = v39;
      [v37 setOriginalURL:v39];

      URL._bridgeToObjectiveC()(v41);
      v43 = v42;
      [v37 setURL:v42];

      (*(v31 - 8))(v35, v36);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v44 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v33 += v34;
      --v29;
    }

    while (v29);
    goto LABEL_30;
  }

  *(v0 + 128) = v4;
  *(v0 + 136) = v5;
  *(v0 + 120) = v6;
  v25 = *(v0 + 32);
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v26 = *(v25 + 8 * v6 + 32);
  }

  *(v0 + 144) = v26;
  v27 = swift_task_alloc();
  *(v0 + 152) = v27;
  *v27 = v0;
  v27[1] = sub_100026D54;

  return sub_100012B04();
}

uint64_t sub_100027370()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000273C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_100024310(a1, v2[6], a2);
}

uint64_t sub_1000273D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100027410()
{
  if (*(v0 + 16))
  {
    return dispatch thunk of SFRemoteAlertPresentationHandle.dismiss(animated:completion:)();
  }

  return result;
}

uint64_t sub_100027444()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100027498()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000274E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000BA80;

  return sub_100023520(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t ShareTransportQuery.init()()
{
  sub_1000025C4(&qword_100046588, &qword_10002E4F0);
  swift_getKeyPath();
  return IntentParameterDependency.__allocating_init<A, B>(_:)();
}

uint64_t sub_100027638()
{
  v0 = type metadata accessor for Logger();
  sub_10000AB94(v0, qword_100047BC0);
  v1 = sub_1000097A8(v0, qword_100047BC0);
  if (qword_1000464D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000097A8(v0, qword_1000493D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100027724@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = IntentParameter.projectedValue.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100027750@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = IntentParameter.projectedValue.getter();
  *a2 = result;
  return result;
}

uint64_t ShareTransportQuery.entities(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 280) = a1;
  *(v2 + 288) = a2;
  return _swift_task_switch(sub_10002779C, 0, 0);
}

uint64_t sub_10002779C()
{
  v27 = v0;
  if (qword_100046538 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = type metadata accessor for Logger();
  *(v0 + 296) = sub_1000097A8(v2, qword_100047BC0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 280);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    v8 = Array.description.getter();
    v10 = sub_100029F40(v8, v9, &v26);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Querying for entities with identifiers %s", v6, 0xCu);
    sub_10000EF68(v7);
  }

  v11 = *(v0 + 288);
  v12 = sub_1000280D4();
  *(v0 + 304) = v12;
  if (v12)
  {
    v13 = qword_1000464F8;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = qword_100049420;

    return _swift_task_switch(sub_100027A64, v15, 0);
  }

  else
  {
    sub_1000025C4(&qword_100047488, &qword_10002DE10);
    v16 = swift_allocObject();
    v16[1] = xmmword_10002D290;
    if (qword_100046500 != -1)
    {
      swift_once();
    }

    v18 = xmmword_100049448;
    v17 = xmmword_100049458;
    v20 = xmmword_100049428;
    v19 = xmmword_100049438;
    *(v0 + 16) = xmmword_100049428;
    *(v0 + 32) = v19;
    *(v0 + 48) = v18;
    *(v0 + 64) = v17;
    v21 = xmmword_100049438;
    v22 = xmmword_100049448;
    v16[2] = v20;
    v16[3] = v21;
    v23 = xmmword_100049458;
    v16[4] = v22;
    v16[5] = v23;
    sub_10000E408(v0 + 16, v0 + 80);
    v24 = *(v0 + 8);

    return v24(v16);
  }
}

uint64_t sub_100027A64()
{
  v1 = *(v0 + 304);
  type metadata accessor for ShareTransportEntitiesProvider();
  v2 = swift_allocObject();
  *(v0 + 312) = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v1;

  return _swift_task_switch(sub_100027AE8, 0, 0);
}

uint64_t sub_100027AE8()
{
  v0[34] = v0[35];
  v1 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v2 = swift_task_alloc();
  v0[40] = v2;
  v3 = sub_1000025C4(&qword_100047BD8, &qword_10002E540);
  v4 = sub_1000025C4(&qword_100047BE0, &unk_10002E548);
  v5 = sub_10002846C();
  *v2 = v0;
  v2[1] = sub_100027BE8;
  v6 = v0[39];

  return Sequence.asyncMap<A>(_:)(&unk_10002E538, v6, v3, v4, v5);
}

uint64_t sub_100027BE8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v7 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v5 = sub_10002806C;
  }

  else
  {
    v5 = sub_100027CFC;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_100027CFC()
{
  v45 = v0;
  v1 = *(v0 + 328);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = -v2;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v6 = *(v1 + 16);
      if (v3 > v6)
      {
        v6 = v3;
      }

      v7 = -v6;
      v8 = (v1 + 48 + (v3++ << 6));
      while (1)
      {
        if (v7 + v3 == 1)
        {
          __break(1u);
          return;
        }

        v9 = *(v8 - 2);
        v10 = *(v8 - 1);
        v39 = *v8;
        v40 = v8[1];
        v41 = v8[2];
        if (v10)
        {
          break;
        }

        ++v3;
        v8 += 4;
        if (v4 + v3 == 1)
        {
          goto LABEL_17;
        }
      }

      *(v0 + 144) = v9;
      *(v0 + 152) = v10;
      *(v0 + 160) = v39;
      *(v0 + 176) = v40;
      *(v0 + 192) = v41;
      sub_10000E408(v0 + 144, v0 + 208);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100029D2C(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100029D2C((v11 > 1), v12 + 1, 1, v5);
      }

      v43 = v40;
      v44 = v41;
      v42 = v39;
      *(v5 + 2) = v12 + 1;
      v13 = &v5[64 * v12];
      *(v13 + 4) = v9;
      *(v13 + 5) = v10;
      v14 = v42;
      v15 = v44;
      *(v13 + 4) = v43;
      *(v13 + 5) = v15;
      *(v13 + 3) = v14;
    }

    while (v4 + v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_17:
  v16 = *(v0 + 328);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 280);

  v20 = v18;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v25 = *(v0 + 304);
  v24 = *(v0 + 312);
  if (v23)
  {
    v26 = *(v0 + 280);
    v38 = *(v0 + 312);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v42 = swift_slowAlloc();
    *v27 = 136315650;
    v29 = Array.description.getter();
    v31 = sub_100029F40(v29, v30, &v42);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = Array.description.getter();
    v34 = sub_100029F40(v32, v33, &v42);

    *(v27 + 14) = v34;
    *(v27 + 22) = 2112;
    *(v27 + 24) = v25;
    *v28 = v25;
    v35 = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "Query found entities %s for identifiers %s and configuration %@", v27, 0x20u);
    sub_100014660(v28);

    swift_arrayDestroy();
  }

  else
  {
    v36 = *(v0 + 312);
  }

  v37 = *(v0 + 8);

  v37(v5);
}

uint64_t sub_10002806C()
{
  v2 = v0[38];
  v1 = v0[39];

  v3 = v0[1];
  v4 = v0[42];

  return v3();
}

id sub_1000280D4()
{
  if (!IntentParameterDependency.wrappedValue.getter())
  {
    return 0;
  }

  swift_getKeyPath();
  sub_10002A704();
  IntentProjection.subscript.getter();

  sub_100025BB8(v4);

  v0 = objc_allocWithZone(UIActivityItemsConfiguration);
  sub_10002A7E0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithItemProviders:isa];

  return v2;
}

uint64_t sub_1000281B4(uint64_t a1, uint64_t *a2)
{
  *(v2 + 80) = a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 88) = v5;
  *v5 = v2;
  v5[1] = sub_100028264;

  return sub_10000C7F8(v2 + 16, v3, v4);
}

uint64_t sub_100028264()
{
  v2 = *(*v1 + 88);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100028394, 0, 0);
  }
}

uint64_t sub_100028394()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v1[2] = *(v0 + 48);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1000283C0(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BA80;

  return sub_1000281B4(a1, a2);
}

unint64_t sub_10002846C()
{
  result = qword_100047BE8;
  if (!qword_100047BE8)
  {
    sub_10000A780(&qword_100047BD8, &qword_10002E540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047BE8);
  }

  return result;
}

uint64_t sub_1000284F0()
{
  if (qword_100046538 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 152) = sub_1000097A8(v1, qword_100047BC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Querying for supported entities", v4, 2u);
  }

  v5 = *(v0 + 144);

  v6 = sub_1000280D4();
  *(v0 + 160) = v6;
  if (v6)
  {
    v7 = qword_1000464F8;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = qword_100049420;

    return _swift_task_switch(sub_10002872C, v9, 0);
  }

  else
  {
    sub_1000025C4(&qword_100047488, &qword_10002DE10);
    v10 = swift_allocObject();
    v10[1] = xmmword_10002D290;
    if (qword_100046500 != -1)
    {
      swift_once();
    }

    v12 = xmmword_100049448;
    v11 = xmmword_100049458;
    v14 = xmmword_100049428;
    v13 = xmmword_100049438;
    *(v0 + 16) = xmmword_100049428;
    *(v0 + 32) = v13;
    *(v0 + 48) = v12;
    *(v0 + 64) = v11;
    v15 = xmmword_100049438;
    v16 = xmmword_100049448;
    v10[2] = v14;
    v10[3] = v15;
    v17 = xmmword_100049458;
    v10[4] = v16;
    v10[5] = v17;
    sub_10000E408(v0 + 16, v0 + 80);
    v18 = *(v0 + 8);

    return v18(v10);
  }
}

uint64_t sub_10002872C()
{
  v1 = v0[20];
  type metadata accessor for ShareTransportEntitiesProvider();
  v2 = swift_allocObject();
  v0[21] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v1;
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_1000287E0;

  return sub_10000C1A4();
}

uint64_t sub_1000287E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v7 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v5 = sub_100028AD0;
  }

  else
  {
    v5 = sub_1000288F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000288F4()
{
  v22 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = Array.description.getter();
    v14 = sub_100029F40(v12, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v8;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Query found entities %s for configuration %@", v9, 0x16u);
    sub_100014660(v10);

    sub_10000EF68(v11);
  }

  else
  {
    v17 = *(v0 + 160);
    v16 = *(v0 + 168);
  }

  v18 = *(v0 + 184);
  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_100028AD0()
{
  v2 = v0[20];
  v1 = v0[21];

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t ShareTransportQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[43] = a2;
  v3[44] = a3;
  v3[42] = a1;
  return _swift_task_switch(sub_100028B5C, 0, 0);
}

uint64_t sub_100028B5C()
{
  v22 = v0;
  if (qword_100046538 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = type metadata accessor for Logger();
  *(v0 + 360) = sub_1000097A8(v2, qword_100047BC0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100029F40(v6, v5, &v21);
    _os_log_impl(&_mh_execute_header, v3, v4, "Querying for entity matching string %s", v7, 0xCu);
    sub_10000EF68(v8);
  }

  v9 = *(v0 + 352);
  v10 = sub_1000280D4();
  *(v0 + 368) = v10;
  if (v10)
  {
    v11 = qword_1000464F8;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = qword_100049420;

    return _swift_task_switch(sub_100028E04, v13, 0);
  }

  else
  {
    sub_1000025C4(&qword_100047488, &qword_10002DE10);
    v14 = swift_allocObject();
    v14[1] = xmmword_10002D290;
    if (qword_100046500 != -1)
    {
      swift_once();
    }

    v15 = xmmword_100049428;
    v16 = xmmword_100049438;
    *(v0 + 80) = xmmword_100049428;
    *(v0 + 96) = v16;
    v17 = xmmword_100049448;
    v18 = xmmword_100049458;
    *(v0 + 112) = xmmword_100049448;
    *(v0 + 128) = v18;
    v14[2] = v15;
    v14[3] = v16;
    v14[4] = v17;
    v14[5] = v18;
    sub_10000E408(v0 + 80, v0 + 144);
    v19 = *(v0 + 8);

    return v19(v14);
  }
}

uint64_t sub_100028E04()
{
  v1 = v0[46];
  type metadata accessor for ShareTransportEntitiesProvider();
  v2 = swift_allocObject();
  v0[47] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v1;
  v3 = swift_task_alloc();
  v0[48] = v3;
  *v3 = v0;
  v3[1] = sub_100028EC4;
  v4 = v0[42];
  v5 = v0[43];

  return sub_10000CCB8((v0 + 2), v4, v5);
}

uint64_t sub_100028EC4()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_100029238;
  }

  else
  {
    v3 = sub_100028FD8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100028FD8()
{
  v27 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 344);

  v4 = v1;
  sub_10000E408(v0 + 16, v0 + 208);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_1000256F4(v0 + 16);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 368);
    v8 = *(v0 + 336);
    v25 = *(v0 + 344);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v9 = 136315650;
    sub_10000E408(v0 + 16, v0 + 272);
    v11 = ShareTransportEntity.description.getter();
    v13 = v12;
    sub_1000256F4(v0 + 16);
    v14 = sub_100029F40(v11, v13, &v26);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100029F40(v8, v25, &v26);
    *(v9 + 22) = 2112;
    *(v9 + 24) = v7;
    *v10 = v7;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Query found entity %s matching string %s and configuration %@", v9, 0x20u);
    sub_100014660(v10);

    swift_arrayDestroy();
  }

  v17 = *(v0 + 368);
  v16 = *(v0 + 376);
  sub_1000025C4(&qword_100047488, &qword_10002DE10);
  v18 = swift_allocObject();
  v19 = *(v0 + 16);
  v20 = *(v0 + 32);
  v18[1] = xmmword_10002D290;
  v18[2] = v19;
  v21 = *(v0 + 48);
  v22 = *(v0 + 64);
  v18[3] = v20;
  v18[4] = v21;
  v18[5] = v22;

  v23 = *(v0 + 8);

  return v23(v18);
}

uint64_t sub_100029238()
{
  v2 = v0[46];
  v1 = v0[47];

  v3 = v0[1];
  v4 = v0[49];

  return v3();
}

uint64_t sub_1000292C0()
{
  if (qword_100046500 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = xmmword_100049428;
  v3 = xmmword_100049438;
  *(v0 + 80) = xmmword_100049428;
  *(v0 + 96) = v3;
  v4 = xmmword_100049448;
  v5 = xmmword_100049458;
  *(v0 + 112) = xmmword_100049448;
  *(v0 + 128) = v5;
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;
  sub_10000E408(v0 + 80, v0 + 144);
  v6 = *(v0 + 64);
  v8 = *(v0 + 16);
  v7 = *(v0 + 32);
  v1[2] = *(v0 + 48);
  v1[3] = v6;
  *v1 = v8;
  v1[1] = v7;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100029388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_100029438;

  return ShareTransportQuery.entities(matching:)(a2, a3, v7);
}

uint64_t sub_100029438(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_100029548@<X0>(uint64_t *a1@<X8>)
{
  sub_1000025C4(&qword_100046588, &qword_10002E4F0);
  swift_getKeyPath();
  result = IntentParameterDependency.__allocating_init<A, B>(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100029594(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002A830;

  return ShareTransportQuery.entities(for:)(a1, v4);
}

uint64_t sub_100029630(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10002A82C;

  return ShareTransportQuery.suggestedEntities()(v3);
}

uint64_t sub_1000296C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100029788;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100029788(uint64_t a1)
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

uint64_t sub_100029888(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000B650();
  *v6 = v2;
  v6[1] = sub_10000BA80;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10002995C()
{
  if (qword_100046500 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v3 = xmmword_100049448;
  v2 = xmmword_100049458;
  v5 = xmmword_100049428;
  v4 = xmmword_100049438;
  *(v0 + 16) = xmmword_100049428;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 64) = v2;
  v6 = xmmword_100049438;
  v7 = xmmword_100049458;
  v1[2] = xmmword_100049448;
  v1[3] = v7;
  *v1 = v5;
  v1[1] = v6;
  sub_10000E408(v0 + 16, v0 + 80);
  v8 = *(v0 + 8);

  return v8();
}

void *sub_100029A20(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000025C4(&qword_100047480, &qword_10002DE08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000025C4(&qword_100047470, &qword_10002DE00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100029B54(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1000025C4(&qword_100047C38, qword_10002E770);
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

char *sub_100029D2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025C4(&qword_100047488, &qword_10002DE10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE **sub_100029E38(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100029E48(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_100029EE4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100029F40(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100029F40(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002A1B0(v11, 0, 0, 1, a1, a2);
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
    sub_10000F374(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000EF68(v11);
  return v7;
}

unint64_t sub_10002A010()
{
  result = qword_100047BF0;
  if (!qword_100047BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047BF0);
  }

  return result;
}

unint64_t sub_10002A068()
{
  result = qword_100047BF8;
  if (!qword_100047BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047BF8);
  }

  return result;
}

unint64_t sub_10002A0C4()
{
  result = qword_100047C00;
  if (!qword_100047C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047C00);
  }

  return result;
}

unint64_t sub_10002A11C()
{
  result = qword_100047C08;
  if (!qword_100047C08)
  {
    sub_10000A780(&qword_100047C10, qword_10002E620);
    sub_10000B800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047C08);
  }

  return result;
}

unint64_t sub_10002A1B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10002A2BC(a5, a6);
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

char *sub_10002A2BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002A308(a1, a2);
  sub_10002A438(&off_10003D610);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10002A308(uint64_t a1, unint64_t a2)
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

  v6 = sub_10002A524(v5, 0);
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
        v7 = sub_10002A524(v10, 0);
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

uint64_t sub_10002A438(uint64_t result)
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

  result = sub_10002A598(result, v12, 1, v3);
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

void *sub_10002A524(uint64_t a1, uint64_t a2)
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

  sub_1000025C4(&qword_100047C18, "ȉ");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10002A598(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025C4(&qword_100047C18, "ȉ");
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

uint64_t sub_10002A68C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = IntentParameter.wrappedValue.getter();
  *a2 = v5;
  return result;
}

uint64_t sub_10002A6C8(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v4 = *a1;

  return IntentParameter.wrappedValue.setter();
}

unint64_t sub_10002A704()
{
  result = qword_100047C20;
  if (!qword_100047C20)
  {
    sub_10000A780(&qword_100047C28, &qword_10002E768);
    sub_10002A788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047C20);
  }

  return result;
}

unint64_t sub_10002A788()
{
  result = qword_100047C30;
  if (!qword_100047C30)
  {
    type metadata accessor for IntentFile();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047C30);
  }

  return result;
}

unint64_t sub_10002A7E0()
{
  result = qword_100047B80;
  if (!qword_100047B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100047B80);
  }

  return result;
}

uint64_t dispatch thunk of UISceneKeyValueStorage.observe<A>(_:handler:)()
{
  return dispatch thunk of UISceneKeyValueStorage.observe<A>(_:handler:)();
}

{
  return dispatch thunk of UISceneKeyValueStorage.observe<A>(_:handler:)();
}

{
  return dispatch thunk of UISceneKeyValueStorage.observe<A>(_:handler:)();
}

uint64_t dispatch thunk of UISceneKeyValueStorage.subscript.getter()
{
  return dispatch thunk of UISceneKeyValueStorage.subscript.getter();
}

{
  return dispatch thunk of UISceneKeyValueStorage.subscript.getter();
}

{
  return dispatch thunk of UISceneKeyValueStorage.subscript.getter();
}