void *sub_1003468A4(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v3 = type metadata accessor for CloudKitStackConfiguration();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  sub_1000F24EC(&qword_100ADFA68);
  swift_allocObject();
  v1[5] = PassthroughSubject.init()();
  sub_1000F24EC(&qword_100ADFA70);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  v1[6] = v10;
  v27 = sub_1000065A8(0, &qword_100AD6210);
  static DispatchQoS.background.getter();
  v34 = &_swiftEmptyArrayStorage;
  sub_10001DCF8(&qword_100AD1500, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F24EC(&qword_100AD1508);
  sub_10000B58C(&qword_100AD1510, &qword_100AD1508);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v28 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  v1[7] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[8] = &_swiftEmptySetSingleton;
  v1[9] = &_swiftEmptySetSingleton;
  v1[10] = &_swiftEmptySetSingleton;
  v1[11] = &_swiftEmptySetSingleton;
  v1[12] = &_swiftEmptyArrayStorage;
  UUID.init()();
  sub_10000E044();
  v11 = v30;
  v12 = *v30;
  v13 = *(v30 + 8);
  v14 = objc_allocWithZone(type metadata accessor for CoreDataStack());
  v2[2] = sub_10001EB14(v12, v13);
  v15 = type metadata accessor for DataStackConfiguration();
  v16 = v31;
  (*(v32 + 16))(v31, v11 + *(v15 + 20), v33);
  v17 = objc_allocWithZone(type metadata accessor for CloudKitStack());
  v2[3] = sub_1004BA418(v16);
  type metadata accessor for JournalSyncEngineDelegate();
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v18 + 112) = 0;
  UUID.init()();
  *(v18 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_syncEngine) = 0;
  *(v18 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_isEngineFetching) = 0;
  *(v18 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_isEngineSending) = 0;
  v2[4] = v18;
  v19 = objc_opt_self();
  v20 = [v19 defaultCenter];
  type metadata accessor for ProtectedData();

  v21 = static ProtectedData.didBecomeAvailableNotification.getter();
  [v20 addObserver:v2 selector:"protectedDataDidBecomeAvailableWithNotification:" name:v21 object:static ProtectedData.shared.getter()];

  v22 = [v19 defaultCenter];

  v23 = static ProtectedData.willBecomeUnavailableNotification.getter();
  [v22 addObserver:v2 selector:"protectedDataWillBecomeUnavailableWithNotification:" name:v23 object:static ProtectedData.shared.getter()];

  v24 = [v19 defaultCenter];
  [v24 addObserver:v2 selector:"contextDidSaveWithNotification:" name:NSManagedObjectContextDidSaveNotification object:0];

  v25 = [v19 defaultCenter];
  [v25 addObserver:v2 selector:"identityUpdateNotificationWithNotification:" name:CKIdentityUpdateNotification object:0];

  sub_100356864(v11, type metadata accessor for DataStackConfiguration);
  return v2;
}

id *sub_100346E8C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = OBJC_IVAR____TtC7Journal9DataStack_sessionID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_100346F7C()
{
  sub_100346E8C();

  return swift_deallocClassInstance();
}

void sub_100346FDC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000617C(v8, qword_100ADF880);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26[0] = v12;
    *v11 = 136315138;
    sub_10001DCF8(&qword_100ADFAD8, &type metadata accessor for Notification);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_100008458(v13, v15, v26);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "protectedDataDidBecomeAvailable %s", v11, 0xCu);
    sub_10000BA7C(v12);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v17 = *(v2 + 16);
  v18 = [*(v17 + OBJC_IVAR____TtC7Journal13CoreDataStack_container) viewContext];
  v19 = [v18 persistentStoreCoordinator];

  if (v19 && ((v20 = [v19 persistentStores], sub_1000065A8(0, &qword_100AE5BC0), v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v20, v21 >> 62) ? (v22 = _CocoaArrayWrapper.endIndex.getter()) : (v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, v19, v22) && *(v17 + OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoresLoadSuccess) == 1))
  {
    v23 = *(v2 + 48);
    os_unfair_lock_lock((v23 + 24));
    sub_100356E94((v23 + 16));
    os_unfair_lock_unlock((v23 + 24));
    v24 = *(v17 + OBJC_IVAR____TtC7Journal13CoreDataStack_throttleSaveSubscription);
    __chkstk_darwin(v25);
    v26[-2] = v17;
    os_unfair_lock_lock((v24 + 24));
    sub_100043DD0((v24 + 16));
    os_unfair_lock_unlock((v24 + 24));
    sub_10034A5BC();
  }

  else
  {
    sub_10001FBD0();
  }
}

id sub_1003473D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000617C(v11, qword_100ADF880);
  (*(v8 + 16))(v10, a1, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;
    sub_10001DCF8(&qword_100ADFAD8, &type metadata accessor for Notification);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    v20 = sub_100008458(v17, v19, &v27);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "protectedDataWillBecomeUnavailable %s", v15, 0xCu);
    sub_10000BA7C(v16);

    v6 = v26;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v21 = *(*(v2 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_throttleSaveSubscription);
  os_unfair_lock_lock((v21 + 24));

  *(v21 + 16) = 0;
  os_unfair_lock_unlock((v21 + 24));
  v22 = *(v2 + 48);
  os_unfair_lock_lock((v22 + 24));

  *(v22 + 16) = 0;
  os_unfair_lock_unlock((v22 + 24));
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v2;

  sub_1003E9628(0, 0, v6, &unk_100951028, v24);

  return sub_1000415E8();
}

uint64_t sub_1003477A4()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100347838;

  return sub_1005AAC58();
}

uint64_t sub_100347838()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100347944()
{
  v64 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v3 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD1420);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v52 - v9;
  v11 = type metadata accessor for UUID();
  v73 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v59 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v13;
  __chkstk_darwin(v12);
  v74 = &v52 - v14;
  result = swift_beginAccess();
  v72 = v0;
  v16 = *(v0 + 64);
  v17 = *(v16 + 16);
  if (!v17)
  {
    return result;
  }

  v71 = v8;
  v75 = v3;
  v65 = v11;
  v18 = sub_1003E745C(v17, 0);
  v19 = sub_1001C16E4(aBlock, v18 + 4, v17, v16);
  v76 = v80;

  sub_100014FF8();
  if (v19 != v17)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (qword_100ACFCA0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000617C(v20, qword_100ADF880);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136315138;
    v25 = Array.description.getter();
    v27 = sub_100008458(v25, v26, aBlock);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Purging cache for assetIDs: %s", v23, 0xCu);
    sub_10000BA7C(v24);
  }

  v28 = v65;
  v53 = v18;
  v29 = v18[2];
  if (v29)
  {
    v30 = objc_opt_self();
    v76 = (v73 + 48);
    v70 = (v73 + 32);
    v57 = v73 + 16;
    v56 = v79;
    v55 = (v1 + 8);
    v54 = (v75 + 8);
    v69 = (v73 + 8);
    v31 = v53 + 5;
    v68 = v10;
    v58 = v30;
    do
    {
      v34 = *(v31 - 1);
      v33 = *v31;

      UUID.init(uuidString:)();
      v75 = *v76;
      if ((v75)(v10, 1, v28) == 1)
      {
        sub_100004F84(v10, &qword_100AD1420);
      }

      else
      {
        v35 = v28;
        v36 = *v70;
        (*v70)(v74, v10, v35);
        if (qword_100ACFCB0 != -1)
        {
          swift_once();
        }

        v67 = v34;
        if (qword_100ACFCB8 != -1)
        {
          swift_once();
        }

        v66 = qword_100B2F858;
        v37 = v73;
        v38 = v59;
        v39 = v65;
        (*(v73 + 16))(v59, v74, v65);
        v40 = (*(v37 + 80) + 16) & ~*(v37 + 80);
        v41 = swift_allocObject();
        v36((v41 + v40), v38, v39);
        v80 = sub_100356EAC;
        v81 = v41;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v79[0] = sub_100006C7C;
        v79[1] = &unk_100A68DE8;
        v42 = _Block_copy(aBlock);
        v43 = v61;
        static DispatchQoS.unspecified.getter();
        v77 = _swiftEmptyArrayStorage;
        sub_10001DCF8(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000F24EC(&unk_100AD6220);
        sub_10000B58C(&qword_100AD1530, &unk_100AD6220);
        v44 = v63;
        v45 = v64;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v46 = v42;
        v28 = v39;
        _Block_release(v46);
        (*v55)(v44, v45);
        (*v54)(v43, v62);
        (*(v73 + 8))(v74, v39);

        v30 = v58;
        v34 = v67;
      }

      v47 = v30;
      v48 = [v30 defaultCenter];
      if (qword_100ACFFA8 != -1)
      {
        swift_once();
      }

      v49 = qword_100B2FB98;
      v50 = v71;
      v51 = v34;
      UUID.init(uuidString:)();
      if ((v75)(v50, 1, v28) == 1)
      {
        isa = 0;
      }

      else
      {
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*v69)(v50, v28);
      }

      [v48 postNotificationName:v49 object:isa];

      swift_unknownObjectRelease();
      swift_beginAccess();
      sub_10044AAC8(v51, v33);
      swift_endAccess();

      v31 += 2;
      --v29;
      v30 = v47;
      v10 = v68;
    }

    while (v29);
  }
}

void sub_10034829C()
{
  v1 = type metadata accessor for UUID();
  v35 = *(v1 - 8);
  __chkstk_darwin(v1);
  v34 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v3 = *(v0 + 72);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return;
  }

  v5 = sub_1003E745C(*(v3 + 16), 0);
  v36 = sub_1001C16E4(&v37, v5 + 4, v4, v3);

  sub_100014FF8();
  if (v36 != v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  v33 = v1;
  *(v0 + 72) = &_swiftEmptySetSingleton;

  if (qword_100ACFE28 != -1)
  {
LABEL_19:
    v6 = swift_once();
  }

  __chkstk_darwin(v6);
  v31[-2] = v5;
  v31[-1] = v7;
  v8 = v7;
  sub_1000F24EC(&qword_100AD4D90);
  NSManagedObjectContext.performAndWait<A>(_:)();
  v9 = v37;
  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000617C(v10, qword_100ADF880);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v13 = 136315138;
    v15 = Array.description.getter();
    v17 = v16;

    v18 = sub_100008458(v15, v17, &v37);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "(refreshSavedAttachments) attachments to refresh: %s", v13, 0xCu);
    sub_10000BA7C(v14);
  }

  else
  {
  }

  v19 = *(v9 + 16);
  if (v19)
  {
    v32 = v8;
    v20 = objc_opt_self();
    v21 = v34;
    v22 = v35 + 16;
    v35 = *(v35 + 16);
    v36 = v20;
    v23 = *(v22 + 64);
    v31[1] = v9;
    v24 = v9 + ((v23 + 32) & ~v23);
    v25 = *(v22 + 56);
    v26 = (v22 - 8);
    v27 = v33;
    do
    {
      (v35)(v21, v24, v27);
      v28 = [v36 defaultCenter];
      if (qword_100ACFFA8 != -1)
      {
        swift_once();
      }

      v29 = qword_100B2FB98;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v26)(v21, v27);
      [v28 postNotificationName:v29 object:isa];

      v24 += v25;
      --v19;
    }

    while (v19);

    v8 = v32;
  }

  else
  {
  }
}

uint64_t sub_100348728()
{
  v1 = v0;
  swift_beginAccess();
  if (*(*(v0 + 88) + 16) || (result = swift_beginAccess(), *(*(v0 + 80) + 16)))
  {
    v3 = [objc_opt_self() defaultCenter];
    swift_beginAccess();
    sub_100356B90();

    NSNotificationCenter.post<A>(_:)();

    *(v1 + 88) = &_swiftEmptySetSingleton;

    *(v1 + 80) = &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100348844(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000617C(v11, qword_100ADF880);
  (*(v8 + 16))(v10, a1, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    sub_10001DCF8(&qword_100ADFAD8, &type metadata accessor for Notification);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    v20 = sub_100008458(v17, v19, &v25);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "identityUpdateNotification Notification: %s", v15, 0xCu);
    sub_10000BA7C(v16);

    v2 = v24;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = 2;
  *(v22 + 40) = v2;

  sub_1003E9628(0, 0, v6, &unk_100951010, v22);
}

uint64_t sub_100348BC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 40) = a4;
  return _swift_task_switch(sub_100348BE4, 0, 0);
}

uint64_t sub_100348BE4()
{
  v1 = *(v0 + 40);
  if (v1 == 2)
  {
    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    v2[1] = sub_100348D38;

    return sub_1000994F4(0);
  }

  else if (v1)
  {
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    *v4 = v0;
    v4[1] = sub_1001B78E8;

    return sub_10034962C(0, 0);
  }

  else
  {
    sub_100348F14();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100348D38(char a1)
{
  *(*v1 + 41) = a1;

  return _swift_task_switch(sub_100348E38, 0, 0);
}

uint64_t sub_100348E38()
{
  if (*(v0 + 41) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_1001B78E8;

    return sub_10034962C(0, 0);
  }

  else
  {
    sub_100348F14();
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100348F14()
{
  isEscapingClosureAtFileLocation = v0;
  v3 = *(*(v0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  type metadata accessor for JournalEntryMO();
  v4 = v3;
  v5 = static JournalEntryMO.fetchRequest()();
  v6 = static JournalEntryMO.objectsToDeletePredicate.getter();
  [v5 setPredicate:v6];

  sub_1000F24EC(&qword_100ADFAC8);
  NSManagedObjectContext.performAndWait<A>(_:)();

  v7 = aBlock[0];
  v8 = sub_1000B4824(v4);
  v9 = sub_100756CE4();
  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000617C(v10, qword_100ADF880);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v11, v12))
  {

    goto LABEL_12;
  }

  v1 = swift_slowAlloc();
  *v1 = 134218496;
  if (v7 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v1 + 4) = i;

    *(v1 + 12) = 2048;
    v14 = v8 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 14) = v14;

    *(v1 + 22) = 2048;
    v15 = v9 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 24) = v15;

    _os_log_impl(&_mh_execute_header, v11, v12, "User is not logged in. Deleting all objects marked for removal:\nEntries: %ld\nAssets: %ld\nAttachments: %ld", v1, 0x20u);

LABEL_12:
    v11 = swift_allocObject();
    v11[2].isa = isEscapingClosureAtFileLocation;
    v11[3].isa = v8;
    v11[4].isa = v4;
    v11[5].isa = v7;
    v11[6].isa = v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100356B7C;
    *(v7 + 24) = v11;
    aBlock[4] = sub_100177C4C;
    v18 = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001A7D4;
    aBlock[3] = &unk_100A68D20;
    v8 = _Block_copy(aBlock);
    v9 = v18;
    v4 = v4;

    [v4 performBlockAndWait:v8];

    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_14:
    ;
  }

  return result;
}

void sub_1003492D0(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, unint64_t a5)
{
  sub_100354198(a2, a3);
  if (a4 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v9 = 0;
  do
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(a4 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    sub_1006EFE94();
    [a3 deleteObject:v11];
  }

  while (v8 != v9);
LABEL_10:
  if (a5 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (v12 < 1)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
LABEL_24:
    v20 = type metadata accessor for Logger();
    sub_10000617C(v20, qword_100ADF880);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to delete data marked as removed for local user: %@", v23, 0xCu);
      sub_100004F84(v24, &unk_100AD4BB0);
    }

    else
    {
    }

    return;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((a5 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(a5 + 8 * i + 32);
    }

    v15 = v14;
    [a3 deleteObject:v14];
  }

LABEL_19:
  v26 = 0;
  v16 = [a3 save:&v26];
  v17 = v26;
  if ((v16 & 1) == 0)
  {
    v19 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFCA0 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  v18 = v17;
}

uint64_t sub_10034962C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[6] = v4;
  v3[7] = v6;

  return _swift_task_switch(sub_1003496E8, v4, v6);
}

uint64_t sub_1003496E8()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100349780;
  v2 = v0[3];
  v3 = v0[2];

  return sub_100349AA4(v3, v2);
}

uint64_t sub_100349780(char a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1003498A8, v4, v3);
}

uint64_t sub_1003498A8()
{
  v12 = v0;
  if (*(v0 + 72) == 1)
  {
    sub_10034A3B4();
  }

  else
  {
    if (qword_100ACFCA0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000617C(v1, qword_100ADF880);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v4 = 136446210;
      type metadata accessor for UUID();
      sub_10001DCF8(&qword_100AE19B0, &type metadata accessor for UUID);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = sub_100008458(v6, v7, &v11);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s User id is not set, syncing failed to start", v4, 0xCu);
      sub_10000BA7C(v5);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100349AA4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[12] = v6;
  v3[13] = v8;

  return _swift_task_switch(sub_100349BB0, v6, v8);
}

uint64_t sub_100349BB0()
{
  v1 = *(v0 + 88);
  v2 = *(*(v0 + 56) + 16);
  v3 = OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate;
  *(v0 + 112) = v2;
  *(v0 + 120) = v3;
  v4 = *(v2 + v3);
  v5 = *(v0 + 72);
  *(v0 + 128) = v4;
  *(v0 + 216) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v6 = *(v5 + 104);
  *(v0 + 136) = v6;
  *(v0 + 144) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v1);
  v4;

  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_100349CE0;
  v8 = *(v0 + 88);
  v9 = *(v0 + 56);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 220, v8, sub_100356B24, v9, &type metadata for Bool);
}

uint64_t sub_100349CE0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[16];
    v5 = v2[11];
    v6 = v2[8];
    v7 = v2[9];
    v8 = *(v7 + 8);
    v2[20] = v8;
    v2[21] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);

    v9 = v2[12];
    v10 = v2[13];

    return _swift_task_switch(sub_100349E44, v9, v10);
  }
}

uint64_t sub_100349E44()
{
  if (*(v0 + 220))
  {

    v1 = *(v0 + 8);

    return v1(1);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    *v3 = v0;
    v3[1] = sub_100349F2C;
    v4 = *(v0 + 40);

    return sub_1004BDD80(v4);
  }
}

uint64_t sub_100349F2C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v4[23] = a2;

  v5 = v3[13];
  v6 = v3[12];

  return _swift_task_switch(sub_10034A054, v6, v5);
}

uint64_t sub_10034A054()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 136);
    v4 = *(v0 + 216);
    v5 = *(v0 + 80);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = *(*(v0 + 112) + *(v0 + 120));
    *(v0 + 192) = v8;
    v9 = swift_allocObject();
    *(v0 + 200) = v9;
    v9[2] = v7;
    v9[3] = v2;
    v9[4] = v1;
    v3(v5, v4, v6);

    v8;
    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    *v10 = v0;
    v10[1] = sub_10034A1FC;
    v11 = *(v0 + 80);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_100356B40, v9, &type metadata for () + 8);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12(0);
  }
}

uint64_t sub_10034A1FC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 192);
    (*(v2 + 160))(*(v2 + 80), *(v2 + 64));

    v5 = *(v2 + 96);
    v6 = *(v2 + 104);

    return _swift_task_switch(sub_10034A348, v5, v6);
  }
}

uint64_t sub_10034A348()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_10034A3B4()
{
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100B2F840 + 16);
  v2 = *&v1[OBJC_IVAR____TtC7Journal13CoreDataStack_container];
  v3 = v1;
  v4 = [v2 newBackgroundContext];
  v5 = String._bridgeToObjectiveC()();
  [v4 setName:v5];

  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1003569FC;
  *(v7 + 24) = v6;
  v12[4] = sub_100177C4C;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10001A7D4;
  v12[3] = &unk_100A68C58;
  v8 = _Block_copy(v12);
  v9 = v3;
  v10 = v4;

  [v10 performBlockAndWait:v8];

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

void sub_10034A5BC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for SettingsKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AE1A30);
  v9 = static NSUserDefaults.shared.getter();
  (*(v6 + 104))(v8, enum case for SettingsKey.cloudKitSyncingEnabled(_:), v5);
  SettingsKey.rawValue.getter();
  (*(v6 + 8))(v8, v5);
  v10 = String._bridgeToObjectiveC()();

  LODWORD(v5) = [v9 BOOLForKey:v10];

  if (v5)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v1;

    sub_1003E9628(0, 0, v4, &unk_100950F48, v12);
  }

  else
  {
    if (qword_100AD01A8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000617C(v13, qword_100B2FF98);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Sync is disabled", v16, 2u);
    }
  }
}

uint64_t sub_10034A8B8()
{
  sub_1000415E8();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100044318;

  return sub_1005AAF28();
}

uint64_t sub_10034A950(uint64_t a1, void *a2)
{
  sub_1000F24EC(&qword_100ADFAC8);
  NSManagedObjectContext.performAndWait<A>(_:)();
  v3 = v58[0];
  type metadata accessor for JournalEntryMO();
  v4 = static JournalEntryMO.fetchRequest()();
  v5 = static JournalEntryMO.objectsToDeletePredicate.getter();
  [v4 setPredicate:v5];

  NSManagedObjectContext.performAndWait<A>(_:)();
  v6 = v58[0];
  type metadata accessor for JournalEntryAssetMO();
  v7 = static JournalEntryAssetMO.fetchRequest()();
  v8 = static JournalEntryAssetMO.objectsToSyncPredicate.getter();
  [v7 setPredicate:v8];

  sub_1000F24EC(&qword_100ADF600);
  NSManagedObjectContext.performAndWait<A>(_:)();

  v9 = v58[0];
  v10 = sub_1000B4824(a2);
  v11 = sub_100756E34();
  v53 = a2;
  v12 = sub_100756CE4();
  if (qword_100ACFCA0 != -1)
  {
LABEL_52:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000617C(v13, qword_100ADF880);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = v3 >> 62;
  v17 = v9 >> 62;
  v56 = v11 >> 62;
  if (os_log_type_enabled(v14, v15))
  {
    v54 = v15;
    v18 = swift_slowAlloc();
    *v18 = 134219264;
    if (v16)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2048;
    if (v6 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 14) = v20;

    *(v18 + 22) = 2048;
    if (v17)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 24) = v21;

    *(v18 + 32) = 2048;
    if (v10 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 34) = v22;

    *(v18 + 42) = 2048;
    if (v56)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 44) = v23;

    *(v18 + 52) = 2048;
    if (v12 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 54) = v24;

    _os_log_impl(&_mh_execute_header, v14, v54, "---Begin of DataStack Sync Init Stats:---\nEntries To Save %ld\nEntries To Delete %ld\nAssets To Save %ld\nAssets To Delete %ld\nAttachments To Save %ld\nAttachments To Delete %ld\n---End of DataStack Sync Init Stats:---", v18, 0x3Eu);
  }

  else
  {
  }

  if (v16)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_21;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  if (!(v6 >> 62))
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_21:
    v25 = sub_100605950(v3);

    v26 = sub_100605950(v6);

    sub_100354D88(v25, v26);
    v3 = v25;
    v6 = v26;
  }

LABEL_22:

  if (v17)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_26;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

  if (!(v10 >> 62))
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_26:
    v27 = sub_100605984(v9);

    v28 = sub_100605984(v10);

    sub_100354D88(v27, v28);
  }

LABEL_27:

  if (v56)
  {
    v9 = v53;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_31;
    }
  }

  else
  {
    v9 = v53;
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }
  }

  if (v12 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    v29 = sub_100605B54(v11);

    v30 = sub_100605B54(v12);

    sub_100354D88(v29, v30);
  }

LABEL_32:

  if (qword_100AD0050 != -1)
  {
    swift_once();
  }

  v31 = qword_100B2FC28 + 64;
  v32 = 1 << *(qword_100B2FC28 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v10 = v33 & *(qword_100B2FC28 + 64);
  v34 = (v32 + 63) >> 6;
  v57 = qword_100B2FC28;

  v12 = 0;
  v11 = 0;
  v52 = v31;
  v55 = v34;
  while (v10)
  {
LABEL_42:
    v36 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v6 = *(*(v57 + 56) + ((v12 << 10) | (16 * v36)));
    static ManagedObjectCloudKitSyncing.objectsToSave(context:)();
    sub_1000F24EC(&qword_100ADFAD0);
    v3 = _arrayForceCast<A, B>(_:)();

    static ManagedObjectCloudKitSyncing.objectsToDelete(context:)();
    v37 = _arrayForceCast<A, B>(_:)();

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v40 = 136446978;
      v41 = _typeName(_:qualified:)();
      v43 = sub_100008458(v41, v42, v58);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2048;
      v44 = *(v3 + 16);

      *(v40 + 14) = v44;

      *(v40 + 22) = 2082;
      v45 = _typeName(_:qualified:)();
      v47 = sub_100008458(v45, v46, v58);

      *(v40 + 24) = v47;
      v11 = 0;
      *(v40 + 32) = 2048;
      v48 = *(v37 + 16);

      *(v40 + 34) = v48;

      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s To Save: %ld\n%{public}s To Delete: %ld", v40, 0x2Au);
      swift_arrayDestroy();

      if (*(v3 + 16))
      {
        goto LABEL_47;
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      if (*(v3 + 16))
      {
        goto LABEL_47;
      }
    }

    if (*(v37 + 16))
    {
LABEL_47:
      v49 = sub_100605B88(v3);

      v50 = sub_100605B88(v37);

      sub_100354D88(v49, v50);

      goto LABEL_48;
    }

LABEL_48:

    v31 = v52;
    v9 = v53;
    v34 = v55;
  }

  while (1)
  {
    v35 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v35 >= v34)
    {
    }

    v10 = *(v31 + 8 * v35);
    ++v12;
    if (v10)
    {
      v12 = v35;
      goto LABEL_42;
    }
  }
}

uint64_t sub_10034B44C@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = RecordUploading.cloudKitRecordID.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10034B48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10034B4B0, a4, 0);
}

uint64_t sub_10034B4B0()
{
  sub_1002AD868(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10034B514()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v4 = v2[10];
    v5 = v2[11];

    return _swift_task_switch(sub_10034B668, v4, v5);
  }
}

uint64_t sub_10034B668()
{
  v1 = *(v0 + 72);
  v2 = type metadata accessor for CKSyncEngine.State.Serialization();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  sub_10000617C(*(v0 + 104), qword_100ADF880);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v3 != 1;
    _os_log_impl(&_mh_execute_header, v4, v5, "checkForRecentiCloudLogout - 1.User is Not Logged in. 2. Has user logged in recently: %{BOOL}d", v6, 8u);
  }

  v7 = v3 != 1;
  v8 = *(v0 + 72);

  sub_100004F84(v8, &qword_100ADFA80);
  v9 = *(v0 + 128);

  v10 = *(v0 + 8);

  return v10(v9 | (v7 << 8));
}

uint64_t sub_10034B818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 56) = a4;
  *(v7 + 64) = v6;
  *(v7 + 185) = a6;
  *(v7 + 184) = a5;
  *(v7 + 40) = a2;
  *(v7 + 48) = a3;
  *(v7 + 32) = a1;
  v9 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v7 + 72) = v9;
  *(v7 + 80) = *(v9 - 8);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v7 + 104) = v10;
  *(v7 + 112) = v12;

  return _swift_task_switch(sub_10034B930, v10, v12);
}

uint64_t sub_10034B930()
{
  v24 = v0;
  v1 = *(*(v0 + 64) + 16);
  *(v0 + 120) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  *(v0 + 128) = v2;
  v3 = qword_100ACFCA0;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000617C(v5, qword_100ADF880);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v22 = *(v0 + 185);
    v8 = *(v0 + 184);
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315650;
    *(v0 + 16) = v10;
    *(v0 + 24) = v9;

    sub_1000F24EC(&unk_100AE4870);
    v13 = String.init<A>(describing:)();
    v15 = sub_100008458(v13, v14, &v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v8;
    *(v11 + 18) = 1024;
    *(v11 + 20) = v22;
    _os_log_impl(&_mh_execute_header, v6, v7, "Resetting sync data:\nuserID: %s,\nremoveMetadata: %{BOOL}d,\nremoveAllEntries: %{BOOL}d", v11, 0x18u);
    sub_10000BA7C(v12);
  }

  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  *v16 = v0;
  v16[1] = sub_10034BB7C;
  v17 = *(v0 + 48);
  v18 = *(v0 + 56);
  v20 = *(v0 + 32);
  v19 = *(v0 + 40);

  return sub_100487558(v20, v19, v17, v18);
}

uint64_t sub_10034BB7C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10034BC9C, v3, v2);
}

uint64_t sub_10034BC9C()
{
  if (*(v0 + 185) == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 96);
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v5 = swift_allocObject();
    *(v0 + 144) = v5;
    *(v5 + 16) = v1;
    (*(v4 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
    v6 = v1;
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_10034BF10;
    v8 = *(v0 + 96);
    v9 = sub_10035417C;
LABEL_8:

    return NSManagedObjectContext.perform<A>(schedule:_:)(v7, v8, v9, v5, &type metadata for () + 8);
  }

  if (*(v0 + 184) != 1)
  {
    v13 = *(v0 + 128);
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    v16 = *(v0 + 72);
    v5 = swift_allocObject();
    *(v0 + 168) = v5;
    *(v5 + 16) = v13;
    (*(v15 + 104))(v14, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v16);
    v17 = v13;
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    *v7 = v0;
    v7[1] = sub_10034C450;
    v8 = *(v0 + 88);
    v9 = sub_100354160;
    goto LABEL_8;
  }

  v10 = swift_task_alloc();
  *(v0 + 160) = v10;
  *v10 = v0;
  v10[1] = sub_10034C20C;
  v11 = *(v0 + 32);

  return sub_100488010(v11);
}

uint64_t sub_10034BF10()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[10] + 8))(v2[12], v2[9]);

    v4 = v2[13];
    v5 = v2[14];

    return _swift_task_switch(sub_10034C064, v4, v5);
  }
}

uint64_t sub_10034C064()
{
  if (*(v0 + 184) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v1[1] = sub_10034C20C;
    v2 = *(v0 + 32);

    return sub_100488010(v2);
  }

  else
  {
    v4 = *(v0 + 128);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = swift_allocObject();
    *(v0 + 168) = v8;
    *(v8 + 16) = v4;
    (*(v6 + 104))(v5, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v7);
    v9 = v4;
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v10[1] = sub_10034C450;
    v11 = *(v0 + 88);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_100354160, v8, &type metadata for () + 8);
  }
}

uint64_t sub_10034C20C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10034C32C, v3, v2);
}

uint64_t sub_10034C32C()
{
  v1 = v0[16];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = swift_allocObject();
  v0[21] = v5;
  *(v5 + 16) = v1;
  (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
  v6 = v1;
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_10034C450;
  v8 = v0[11];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v7, v8, sub_100354160, v5, &type metadata for () + 8);
}

uint64_t sub_10034C450()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v4 = v2[13];
    v5 = v2[14];

    return _swift_task_switch(sub_10034C5A4, v4, v5);
  }
}

uint64_t sub_10034C5A4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10034C618()
{
  static JournalDataUtilities.deleteAllUserContent(context:)();
  if (v0)
  {
    if (qword_100ACFCA0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000617C(v1, qword_100ADF880);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to remove all data while resetting sync data: %@", v4, 0xCu);
      sub_100004F84(v5, &unk_100AD4BB0);
    }

    else
    {
    }
  }
}

void sub_10034C790(void *a1)
{
  sub_10048EC28(a1);
  if (v1)
  {
    if (qword_100ACFCA0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100ADF880);
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
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to save context: %@", v5, 0xCu);
      sub_100004F84(v6, &unk_100AD4BB0);
    }

    else
    {
    }
  }
}

uint64_t sub_10034C908@<X0>(BOOL *a1@<X8>)
{
  sub_1000F24EC(&unk_100AE4870);
  result = NSManagedObjectContext.performAndWait<A>(_:)();
  if (v3)
  {
  }

  *a1 = v3 != 0;
  return result;
}

void sub_10034C9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  sub_100488960(a2, a3);
  v4 = *(v3 + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  sub_100488D28(v4);
}

uint64_t sub_10034CA10()
{
  v1 = *(v0 + 216);

  v2 = swift_task_alloc();
  *(v0 + 240) = v2;
  *v2 = v0;
  v2[1] = sub_10034CAB8;

  return sub_100355858(v1);
}

uint64_t sub_10034CAB8(char a1)
{
  v2 = *v1;
  *(*v1 + 185) = a1;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);

  return _swift_task_switch(sub_10034CC04, v4, v3);
}

uint64_t sub_10034CC04()
{
  v33 = v0;
  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100ADF880);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 185);
    v5 = swift_slowAlloc();
    *v5 = 67109632;
    *(v5 + 4) = v4 != 0;
    *(v5 + 8) = 1024;
    *(v5 + 10) = v4 != 1;
    *(v5 + 14) = 1024;
    *(v5 + 16) = v4 == 3;
    _os_log_impl(&_mh_execute_header, v2, v3, "isAppleAccountLoggedIn: %{BOOL}d \nisDataclassProvisioned: %{BOOL}d \nisDataclassEnabled: %{BOOL}d", v5, 0x14u);
  }

  v6 = *(v0 + 185);

  if (v6 == 1)
  {
    isEscapingClosureAtFileLocation = v0 + 64;

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v10 = 136446210;
      type metadata accessor for UUID();
      sub_10001DCF8(&qword_100AE19B0, &type metadata accessor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = sub_100008458(v12, v13, &v32);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s (initializeUserStatus) (AppleAccountUtility.check) Force offline, removing sync metadata and make all as not uploaded to cloud, and continue as offline user", v10, 0xCu);
      sub_10000BA7C(v11);
    }

    v15 = type metadata accessor for JournalFeatureFlags();
    *(v0 + 136) = v15;
    *(v0 + 144) = sub_10001DCF8(&qword_100ADFA78, &type metadata accessor for JournalFeatureFlags);
    v16 = sub_10001A770((v0 + 112));
    (*(*(v15 - 8) + 104))(v16, enum case for JournalFeatureFlags.debug(_:), v15);
    LOBYTE(v15) = isFeatureEnabled(_:)();
    sub_10000BA7C(v0 + 112);
    if ((v15 & 1) == 0)
    {
      goto LABEL_15;
    }

    if (qword_100AD0700 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v17 = xmmword_100B309E0;
      v18 = qword_100AD0708;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = xmmword_100B309F0;
      v20 = objc_opt_self();

      v21 = [v20 defaultCenter];
      if (qword_100ACFF88 != -1)
      {
        swift_once();
      }

      v22 = qword_100B2FB78;
      *(v0 + 152) = v17;
      *(v0 + 168) = v19;
      *(v0 + 184) = 2;
      [v21 postNotificationName:v22 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();

LABEL_15:
      v23 = *(*(*(v0 + 192) + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_100356EB0;
      *(v25 + 24) = v24;
      *(v0 + 96) = sub_100177C4C;
      *(v0 + 104) = v25;
      *(v0 + 64) = _NSConcreteStackBlock;
      *(v0 + 72) = 1107296256;
      *(v0 + 80) = sub_10001A7D4;
      *(v0 + 88) = &unk_100A68910;
      v26 = _Block_copy(isEscapingClosureAtFileLocation);
      v27 = v23;

      [v27 performBlockAndWait:v26];
      _Block_release(v26);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v30 = *(v0 + 216);

    v31 = swift_task_alloc();
    *(v0 + 248) = v31;
    *v31 = v0;
    v31[1] = sub_10034D258;

    return sub_1000A6ABC(v30, &protocol witness table for MainActor);
  }
}

uint64_t sub_10034D258(__int16 a1)
{
  v2 = *v1;
  *(*v1 + 186) = a1;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);

  return _swift_task_switch(sub_10034D3A4, v4, v3);
}

void sub_10034D3A4()
{
  v1 = *(v0 + 186);

  if ((v1 & 0x100) != 0)
  {
    v7 = *(*(*(v0 + 192) + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100356824;
    *(v9 + 24) = v8;
    *(v0 + 48) = sub_100028EF4;
    *(v0 + 56) = v9;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10001A7D4;
    *(v0 + 40) = &unk_100A68898;
    v10 = _Block_copy((v0 + 16));
    v11 = v7;

    [v11 performBlockAndWait:v10];
    _Block_release(v10);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    v4 = *(v0 + 186) & 1;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = v4;
    *(v6 + 40) = v2;

    sub_1003E9628(0, 0, v3, &unk_100950F00, v6);
  }

  if (*(v0 + 185) == 3)
  {
    v12 = *(v0 + 200);
    v13 = *(v0 + 192);
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);

    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v13;
    sub_1003E9628(0, 0, v12, &unk_100950F10, v16);
  }

  v17 = *(v0 + 8);

  v17();
}

uint64_t sub_10034D6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10034D758, v6, v5);
}

uint64_t sub_10034D758()
{
  v1 = *(v0 + 24);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_10034D80C;

  return sub_1004BF130(v1);
}

uint64_t sub_10034D80C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 56) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return _swift_task_switch(sub_10034D958, v4, v3);
}

uint64_t sub_10034D958()
{
  v1 = v0[7];
  v2 = v0[2];

  *(v2 + 96) = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_10034D9C8(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10000CA14((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000F24EC(&qword_100AD5BC0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10034DA98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000F24EC(&qword_100AD5170);
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[9] = v6;
  v3[10] = v8;

  return _swift_task_switch(sub_10034DBD0, v6, v8);
}

uint64_t sub_10034DBD0()
{
  v1 = *(*(v0 + 32) + 32);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_10034DBF4, v1, 0);
}

uint64_t sub_10034DBF4()
{
  v1 = *(v0 + 80);
  *(v0 + 168) = *(*(v0 + 88) + 112);
  return _swift_task_switch(sub_10034DC18, *(v0 + 72), v1);
}

uint64_t sub_10034DC18()
{
  if (*(v0 + 168) == 1)
  {
    if (qword_100ACFCA0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000617C(v1, qword_100ADF880);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "state is .zoneRecreation already", v4, 2u);
    }

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 88);

    return _swift_task_switch(sub_10034DD88, v7, 0);
  }
}

uint64_t sub_10034DD88()
{
  sub_1005AB71C(1);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_10034DDF0, v1, v2);
}

uint64_t sub_10034DDF0()
{
  v0[12] = *(v0[4] + 16);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_10034DE90;
  v2 = v0[2];

  return sub_100488010(v2);
}

uint64_t sub_10034DE90()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 112) = v3;
  *v3 = v2;
  v3[1] = sub_10034DFD0;

  return sub_1005AAF28();
}

uint64_t sub_10034DFD0()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_10034E0F0, v3, v2);
}

uint64_t sub_10034E0F0()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10034E18C;
  v2 = *(v0 + 16);

  return sub_1004BE2D4(v2);
}

uint64_t sub_10034E18C()
{
  v2 = *v1;

  if (v0)
  {
    v2[20] = v0;
    v3 = v2[11];
    v4 = sub_10034E75C;
    v5 = 0;
  }

  else
  {
    v3 = v2[9];
    v5 = v2[10];
    v4 = sub_10034E2B8;
  }

  return _swift_task_switch(v4, v3, v5);
}

uint64_t sub_10034E2B8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = *(v0[12] + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  v0[16] = v4;
  v5 = swift_allocObject();
  v0[17] = v5;
  *(v5 + 16) = v4;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v4;
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_10034E3F8;
  v7 = v0[8];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v6, v7, sub_100355260, v5, &type metadata for () + 8);
}

uint64_t sub_10034E3F8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = sub_10034E97C;
  }

  else
  {
    v8 = sub_10034E5B4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10034E5D0()
{
  sub_1005AB71C(0);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_10034E638, v1, v2);
}

uint64_t sub_10034E638()
{
  v1 = v0[16];
  v2 = v0[4];
  v3 = v0[5];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 2;
  *(v5 + 40) = v2;

  sub_1003E9628(0, 0, v3, &unk_100950ED0, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10034E75C()
{
  sub_1005AB71C(0);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_10034E7C4, v1, v2);
}

uint64_t sub_10034E7C4()
{
  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100ADF880);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error creating zone: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10034E97C()
{
  *(v0 + 160) = *(v0 + 152);
  v1 = *(v0 + 88);

  return _swift_task_switch(sub_10034E75C, v1, 0);
}

void sub_10034E9EC(void *a1)
{
  static JournalDataUtilities.markAllLocalDataForReuploading(context:)();
  if (!v1)
  {
    sub_10048EC28(a1);
  }
}

uint64_t sub_10034EA1C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return _swift_task_switch(sub_10034EAB0, v4, v6);
}

uint64_t sub_10034EAB0()
{
  v1 = *(*(v0 + 32) + 32);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_10034EAD4, v1, 0);
}

uint64_t sub_10034EAD4()
{
  v1 = *(v0 + 48);
  *(v0 + 104) = *(*(v0 + 56) + 112);
  return _swift_task_switch(sub_10034EAF8, *(v0 + 40), v1);
}

uint64_t sub_10034EAF8()
{
  if (*(v0 + 104) == 2)
  {
    if (qword_100ACFCA0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000617C(v1, qword_100ADF880);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "state is .manateeIdentityLossHandling already", v4, 2u);
    }

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 56);

    return _swift_task_switch(sub_10034EC54, v7, 0);
  }
}

uint64_t sub_10034EC54()
{
  sub_1005AB71C(2);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_10034ECBC, v1, v2);
}

uint64_t sub_10034ECBC()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_10034ED58;
  v2 = *(v0 + 16);

  return sub_100488010(v2);
}

uint64_t sub_10034ED58()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_10034EE98;

  return sub_1005AAF28();
}

uint64_t sub_10034EE98()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10034EFB8, v3, v2);
}

uint64_t sub_10034EFB8()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_10034F054;
  v2 = *(v0 + 16);

  return sub_1004BEA60(v2);
}

uint64_t sub_10034F054()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_10034F3A0;
  }

  else
  {
    v5 = sub_10034F190;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10034F190()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_10034F228;
  v2 = v0[3];
  v3 = v0[2];

  return sub_10034DA98(v3, v2);
}

uint64_t sub_10034F228()
{
  v1 = *v0;

  v2 = *(v1 + 56);

  return _swift_task_switch(sub_10034F338, v2, 0);
}

uint64_t sub_10034F338()
{
  sub_1005AB71C(0);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_100136BE8, v1, v2);
}

uint64_t sub_10034F3A0()
{
  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100ADF880);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error deleting zone: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  else
  {
  }

  v7 = *(v0 + 56);

  return _swift_task_switch(sub_10034F338, v7, 0);
}

uint64_t sub_10034F54C()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 2;
    *(v6 + 40) = v4;
    sub_1003E9628(0, 0, v2, &unk_100950F60, v6);
  }

  return result;
}

void sub_10034F674(void *a1)
{
  static JournalDataUtilities.permanentlyDeleteRecentlyDeletedExpiredEntries(context:)();
  if ([a1 hasChanges])
  {
    v12[0] = 0;
    v8 = [a1 save:v12];
    v9 = v12[0];
    if (v8)
    {

      v10 = v9;
    }

    else
    {
      v11 = v12[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100ACFCA0 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_10000617C(v2, qword_100ADF880);
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
        _os_log_impl(&_mh_execute_header, v3, v4, "Error in deleteExpiredRecentlyDeletedEntries %@", v5, 0xCu);
        sub_100004F84(v6, &unk_100AD4BB0);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10034F8BC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100356848;
  *(v3 + 24) = v2;
  v7[4] = sub_100177C4C;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10001A7D4;
  v7[3] = &unk_100A68A00;
  v4 = _Block_copy(v7);
  v5 = v1;

  [v5 performBlockAndWait:v4];

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

id sub_10034FA2C(void *a1)
{
  type metadata accessor for JournalMO();

  result = [a1 hasChanges];
  if (result)
  {
    v6 = 0;
    v3 = [a1 save:&v6];
    v4 = v6;
    if (v3)
    {

      return v4;
    }

    else
    {
      v5 = v6;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return result;
}

void sub_10034FB40(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v81 = a3;
  v84 = a2;
  v4 = type metadata accessor for FileStoreConfiguration();
  v79 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v80 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD1420);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v72 - v15;
  __chkstk_darwin(v14);
  v18 = &v72 - v17;
  type metadata accessor for JournalEntryMO();
  sub_10001DCF8(&unk_100AE9050, &type metadata accessor for JournalEntryMO);
  v19 = static Identifiable<>.fetch(ids:context:)();
  v73 = v13;
  v74 = a1;
  v75 = v6;
  v76 = v4;
  v77 = v9;
  v26 = v19;
  if (v19 >> 62)
  {
    v84 = (v19 & 0xFFFFFFFFFFFFFF8);
    v27 = _CocoaArrayWrapper.endIndex.getter();
    v78 = v7;
    if (v27)
    {
      goto LABEL_8;
    }

LABEL_34:
    v82 = _swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  v84 = (v19 & 0xFFFFFFFFFFFFFF8);
  v27 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v78 = v7;
  if (!v27)
  {
    goto LABEL_34;
  }

LABEL_8:
  v28 = 0;
  v82 = _swiftEmptyArrayStorage;
  v83 = v26 & 0xC000000000000001;
  while (2)
  {
    v29 = v28;
    while (1)
    {
      if (v83)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v28 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v29 >= v84[2].isa)
        {
          goto LABEL_32;
        }

        v30 = *(v26 + 8 * v29 + 32);
        v28 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          swift_once();
          v20 = type metadata accessor for Logger();
          sub_10000617C(v20, qword_100ADF880);
          swift_errorRetain();
          v84 = Logger.logObject.getter();
          v21 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v84, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *v22 = 138412290;
            swift_errorRetain();
            v24 = _swift_stdlib_bridgeErrorToNSError();
            *(v22 + 4) = v24;
            *v23 = v24;
            _os_log_impl(&_mh_execute_header, v84, v21, "Error fetching in-progress entries: %@", v22, 0xCu);
            sub_100004F84(v23, &unk_100AD4BB0);

            v25 = v84;
          }

          else
          {
          }

          return;
        }
      }

      v31 = v30;
      v32 = [v31 id];
      if (v32)
      {
        v33 = v32;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = 0;
      }

      else
      {
        v34 = 1;
      }

      v35 = type metadata accessor for UUID();
      v36 = *(v35 - 8);
      (*(v36 + 56))(v16, v34, 1, v35);
      sub_100024EC0(v16, v18);
      if ((*(v36 + 48))(v18, 1, v35) != 1)
      {
        break;
      }

      sub_100004F84(v18, &qword_100AD1420);

      v29 = (v29 + 1);
      if (v28 == v27)
      {
        goto LABEL_35;
      }
    }

    v37 = v73;
    sub_1001EDCD8(v18, v73);
    v38 = UUID.uuidString.getter();
    v72 = v39;
    (*(v36 + 8))(v37, v35);
    sub_100004F84(v18, &qword_100AD1420);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = sub_10009BCC8(0, *(v82 + 2) + 1, 1, v82);
    }

    v41 = *(v82 + 2);
    v40 = *(v82 + 3);
    if (v41 >= v40 >> 1)
    {
      v82 = sub_10009BCC8((v40 > 1), v41 + 1, 1, v82);
    }

    v42 = v82;
    *(v82 + 2) = v41 + 1;
    v43 = &v42[16 * v41];
    v44 = v72;
    *(v43 + 4) = v38;
    *(v43 + 5) = v44;
    if (v28 != v27)
    {
      continue;
    }

    break;
  }

LABEL_35:

  v45 = v82;

  v47 = sub_100891094(v46);

  v48 = sub_100891094(v45);

  if (*(v48 + 16) <= v47[2] >> 3)
  {
    v85 = v47;
    sub_100354034(v48);

    v49 = v85;
  }

  else
  {
    v49 = sub_100259048(v48, v47);
  }

  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_10000617C(v50, qword_100ADF880);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v53 = 136315650;
    v54 = Array.description.getter();
    v56 = sub_100008458(v54, v55, &v85);

    *(v53 + 4) = v56;
    *(v53 + 12) = 2080;
    v57 = Array.description.getter();
    v59 = sub_100008458(v57, v58, &v85);

    *(v53 + 14) = v59;
    *(v53 + 22) = 2080;
    v60 = Set.description.getter();
    v62 = sub_100008458(v60, v61, &v85);

    *(v53 + 24) = v62;
    _os_log_impl(&_mh_execute_header, v51, v52, "Cleaning up asset files For In-progress Entries\nAll in-progress entry: %s\nExisting ID's to check: %s\nNon-Existing ID's to check: %s", v53, 0x20u);
    swift_arrayDestroy();
  }

  v63 = v80;
  v65 = v77;
  v64 = v78;
  v66 = v75;
  v67 = v76;
  v68 = v79;
  static FileStoreConfiguration.shared.getter();
  FileStoreConfiguration.assetStorageDirectoryURL.getter();
  (*(v68 + 8))(v66, v67);
  v69 = *(v49 + 2);
  if (!v69)
  {
    goto LABEL_45;
  }

  v70 = sub_1003E745C(*(v49 + 2), 0);
  v71 = sub_1001C16E4(&v85, v70 + 4, v69, v49);
  sub_100014FF8();
  if (v71 != v69)
  {
    __break(1u);
LABEL_45:

    v70 = _swiftEmptyArrayStorage;
  }

  sub_1003504C8(v70, v65);

  sub_100350974(v45, v65);

  (*(v63 + 8))(v65, v64);
}

uint64_t sub_1003504C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = type metadata accessor for URL();
  v6 = *(v43 - 8);
  result = __chkstk_darwin(v43);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v44 = objc_opt_self();
    v37 = OBJC_IVAR____TtC7Journal9DataStack_sessionID;
    v42 = (v6 + 8);
    v11 = (a1 + 40);
    *&v12 = 136446722;
    v36 = v12;
    v41 = v3;
    v38 = a2;
    do
    {
      v14 = *(v11 - 1);
      v15 = *v11;

      URL.appendingPathComponent(_:)();
      v45 = 1;
      v16 = [v44 defaultManager];
      URL.path.getter();
      v17 = String._bridgeToObjectiveC()();

      v18 = [v16 fileExistsAtPath:v17 isDirectory:&v45];

      if (v18)
      {
        v19 = [v44 defaultManager];
        URL._bridgeToObjectiveC()(v20);
        v22 = v21;
        v46 = 0;
        v23 = [v19 removeItemAtURL:v21 error:&v46];

        if (!v23)
        {
          v24 = v46;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_100ACFCA0 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_10000617C(v25, qword_100ADF880);

          swift_errorRetain();
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v46 = v40;
            *v28 = v36;
            type metadata accessor for UUID();
            sub_10001DCF8(&qword_100AE19B0, &type metadata accessor for UUID);
            v39 = v27;
            v29 = dispatch thunk of CustomStringConvertible.description.getter();
            v31 = sub_100008458(v29, v30, &v46);

            *(v28 + 4) = v31;
            *(v28 + 12) = 2080;
            v32 = sub_100008458(v14, v15, &v46);

            *(v28 + 14) = v32;
            *(v28 + 22) = 2080;
            swift_getErrorValue();
            v33 = Error.localizedDescription.getter();
            v35 = sub_100008458(v33, v34, &v46);

            *(v28 + 24) = v35;
            _os_log_impl(&_mh_execute_header, v26, v39, "%{public}s Unable to remove in-progress directory for entry id: %s %s", v28, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
          }

          goto LABEL_5;
        }

        v13 = v46;
      }

      sub_100124B70(v14, v15);

LABEL_5:
      result = (*v42)(v9, v43);
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_100350974(uint64_t a1, uint64_t a2)
{
  v143 = a2;
  v149 = type metadata accessor for URLResourceValues();
  v3 = *(v149 - 8);
  __chkstk_darwin(v149);
  v5 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v152 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v133 - v11;
  result = __chkstk_darwin(v10);
  v15 = &v133 - v14;
  v142 = *(a1 + 16);
  if (v142)
  {
    v16 = objc_opt_self();
    v17 = 0;
    v161 = 0;
    v136 = OBJC_IVAR____TtC7Journal9DataStack_sessionID;
    v141 = a1 + 32;
    v138 = NSURLIsDirectoryKey;
    v158 = v152 + 16;
    v18 = (v152 + 8);
    v148 = (v3 + 8);
    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
    *(&v20 + 1) = 2;
    v137 = xmmword_100940080;
    *&v20 = 136446722;
    v133 = v20;
    *&v20 = 136446466;
    v134 = v20;
    *&v20 = 136315394;
    v145 = v20;
    v159 = v6;
    v151 = v9;
    v140 = v15;
    v139 = v16;
    v160 = (v152 + 8);
    v157 = v12;
    v150 = v5;
    do
    {
      v23 = v5;
      v146 = v17;
      v24 = (v141 + 16 * v17);
      v26 = *v24;
      v25 = v24[1];

      v144 = v26;
      v147 = v25;
      URL.appendingPathComponent(_:)();
      v163 = 1;
      v27 = p_ivar_lyt;
      v28 = [v16 p_ivar_lyt[364]];
      URL.path.getter();
      v29 = String._bridgeToObjectiveC()();

      LODWORD(v25) = [v28 fileExistsAtPath:v29 isDirectory:&v163];

      if (v25)
      {
        v30 = [v16 v27[364]];
        URL._bridgeToObjectiveC()(v31);
        v33 = v32;
        sub_1000F24EC(&qword_100ADFA90);
        v34 = swift_allocObject();
        *(v34 + 16) = v137;
        v35 = v138;
        *(v34 + 32) = v138;
        type metadata accessor for URLResourceKey(0);
        v155 = v35;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v164 = 0;
        v37 = [v30 contentsOfDirectoryAtURL:v33 includingPropertiesForKeys:isa options:4 error:&v164];

        v38 = v164;
        if (!v37)
        {
          v111 = v164;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v5 = v23;
          if (qword_100ACFCA0 != -1)
          {
            swift_once();
          }

          v161 = 0;
          v112 = type metadata accessor for Logger();
          sub_10000617C(v112, qword_100ADF880);
          v113 = v147;

          swift_errorRetain();
          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            v164 = v162;
            *v116 = v133;
            type metadata accessor for UUID();
            sub_10001DCF8(&qword_100AE19B0, &type metadata accessor for UUID);
            v117 = dispatch thunk of CustomStringConvertible.description.getter();
            v119 = sub_100008458(v117, v118, &v164);

            *(v116 + 4) = v119;
            *(v116 + 12) = 2080;
            v120 = sub_100008458(v144, v113, &v164);

            *(v116 + 14) = v120;
            *(v116 + 22) = 2080;
            swift_getErrorValue();
            v121 = Error.localizedDescription.getter();
            v123 = sub_100008458(v121, v122, &v164);

            *(v116 + 24) = v123;
            _os_log_impl(&_mh_execute_header, v114, v115, "%{public}s Error clear data for finished entries with unfinised assets in-progress entry: %s %s", v116, 0x20u);
            swift_arrayDestroy();

            v18 = v160;
          }

          else
          {
          }

          v15 = v140;
          result = (*v18)(v140, v159);
          v16 = v139;
          p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
          goto LABEL_6;
        }

        v22 = v159;
        v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v38;

        v5 = v23;
        v154 = *(v39 + 16);
        if (!v154)
        {

          v124 = v147;
          if (qword_100ACFCA0 != -1)
          {
            swift_once();
          }

          v125 = type metadata accessor for Logger();
          sub_10000617C(v125, qword_100ADF880);

          v126 = Logger.logObject.getter();
          v127 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v126, v127))
          {
            v128 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            *v128 = v134;
            type metadata accessor for UUID();
            sub_10001DCF8(&qword_100AE19B0, &type metadata accessor for UUID);
            v129 = dispatch thunk of CustomStringConvertible.description.getter();
            v131 = sub_100008458(v129, v130, &v164);

            *(v128 + 4) = v131;
            v124 = v147;
            *(v128 + 12) = 2080;
            v132 = v144;
            *(v128 + 14) = sub_100008458(v144, v124, &v164);
            _os_log_impl(&_mh_execute_header, v126, v127, "%{public}s No in-progress sub directories for an entry: %s", v128, 0x16u);
            swift_arrayDestroy();

            v15 = v140;
            v16 = v139;
          }

          else
          {

            v15 = v140;
            v16 = v139;
            v132 = v144;
          }

          sub_100124B70(v132, v124);

          result = (*v18)(v15, v159);
          p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
          goto LABEL_6;
        }

        v41 = 0;
        v135 = _swiftEmptyArrayStorage;
        v153 = v39;
        do
        {
          if (v41 >= *(v39 + 16))
          {
            __break(1u);
LABEL_68:
            __break(1u);
          }

          v42 = v39 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
          v43 = *(v152 + 72);
          v162 = v41;
          v44 = *(v152 + 16);
          v44(v12, v42 + v43 * v41, v22);
          v45 = v155;
          v165 = v155;
          sub_1000F24EC(&qword_100ADFA98);
          v46 = static _SetStorage.allocate(capacity:)();
          v47 = v46 + 56;
          v48 = v165;
          v49 = v45;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          Hasher.init(_seed:)();
          v50 = v48;
          String.hash(into:)();
          v51 = Hasher._finalize()();

          v52 = -1 << *(v46 + 32);
          v53 = v51 & ~v52;
          v54 = v53 >> 6;
          v55 = *(v46 + 56 + 8 * (v53 >> 6));
          v56 = 1 << v53;
          if (((1 << v53) & v55) != 0)
          {
            v156 = v44;
            v57 = v5;
            v58 = ~v52;
            while (1)
            {
              v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v61 = v60;
              if (v59 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v61 == v62)
              {

                goto LABEL_26;
              }

              v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v64)
              {
                break;
              }

              v53 = (v53 + 1) & v58;
              v54 = v53 >> 6;
              v55 = *(v47 + 8 * (v53 >> 6));
              v56 = 1 << v53;
              if (((1 << v53) & v55) == 0)
              {
                v5 = v57;
                v65 = v162;
                v44 = v156;
                goto LABEL_22;
              }
            }

LABEL_26:
            v5 = v57;
            v12 = v157;
            v65 = v162;
            v44 = v156;
          }

          else
          {
            v65 = v162;
LABEL_22:
            *(v47 + 8 * v54) = v56 | v55;
            *(*(v46 + 48) + 8 * v53) = v50;
            v66 = *(v46 + 16);
            v67 = __OFADD__(v66, 1);
            v68 = v66 + 1;
            v12 = v157;
            if (v67)
            {
              goto LABEL_68;
            }

            *(v46 + 16) = v68;
          }

          v41 = (v65 + 1);
          sub_100356864(&v165, type metadata accessor for URLResourceKey);
          v69 = v161;
          URL.resourceValues(forKeys:)();
          v18 = v160;
          if (v69)
          {

            v22 = v159;
            if (qword_100ACFCA0 != -1)
            {
              swift_once();
            }

            v70 = type metadata accessor for Logger();
            sub_10000617C(v70, qword_100ADF880);
            v71 = v151;
            v44(v151, v12, v22);
            swift_errorRetain();
            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v162 = v41;
              v164 = v75;
              *v74 = v145;
              sub_10001DCF8(&qword_100ADEFD0, &type metadata accessor for URL);
              v76 = dispatch thunk of CustomStringConvertible.description.getter();
              v78 = v77;
              v79 = *v160;
              (*v160)(v71, v159);
              v80 = sub_100008458(v76, v78, &v164);

              *(v74 + 4) = v80;
              *(v74 + 12) = 2080;
              swift_getErrorValue();
              v81 = Error.localizedDescription.getter();
              v83 = sub_100008458(v81, v82, &v164);

              *(v74 + 14) = v83;
              v12 = v157;
              _os_log_impl(&_mh_execute_header, v72, v73, "Error reading resource for in-progtess values for URL: %s, error: %s", v74, 0x16u);
              swift_arrayDestroy();
              v41 = v162;

              v18 = v160;

              v22 = v159;
            }

            else
            {

              v79 = *v18;
              (*v18)(v71, v22);
            }

            v161 = 0;
            v5 = v150;
            v79(v12, v22);
          }

          else
          {

            v84 = URLResourceValues.isDirectory.getter();
            v22 = v159;
            v161 = 0;
            if (v84 != 2 && (v84 & 1) != 0)
            {
              v85 = URL.lastPathComponent.getter();
              v87 = v86;
              (*v148)(v5, v149);
              (*v18)(v12, v22);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v88 = v135;
              }

              else
              {
                v88 = sub_10009BCC8(0, *(v135 + 2) + 1, 1, v135);
              }

              v90 = *(v88 + 2);
              v89 = *(v88 + 3);
              if (v90 >= v89 >> 1)
              {
                v88 = sub_10009BCC8((v89 > 1), v90 + 1, 1, v88);
              }

              *(v88 + 2) = v90 + 1;
              v135 = v88;
              v91 = &v88[16 * v90];
              *(v91 + 4) = v85;
              *(v91 + 5) = v87;
            }

            else
            {
              (*v148)(v5, v149);
              (*v18)(v12, v22);
            }
          }

          v39 = v153;
        }

        while (v41 != v154);

        if (qword_100ACFCA0 != -1)
        {
          swift_once();
        }

        v100 = type metadata accessor for Logger();
        sub_10000617C(v100, qword_100ADF880);

        v101 = v135;

        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          v164 = v162;
          *v104 = v134;
          type metadata accessor for UUID();
          sub_10001DCF8(&qword_100AE19B0, &type metadata accessor for UUID);
          v105 = dispatch thunk of CustomStringConvertible.description.getter();
          v107 = sub_100008458(v105, v106, &v164);

          *(v104 + 4) = v107;
          *(v104 + 12) = 2080;
          v108 = Array.description.getter();
          v110 = sub_100008458(v108, v109, &v164);

          *(v104 + 14) = v110;
          _os_log_impl(&_mh_execute_header, v102, v103, "%{public}s In-progress asset directories to check: %s", v104, 0x16u);
          swift_arrayDestroy();
        }

        v15 = v140;
        v16 = v139;
        sub_100351DB8(v101, v144, v147, v140);

        p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
      }

      else
      {
        if (qword_100ACFCA0 != -1)
        {
          swift_once();
        }

        v92 = type metadata accessor for Logger();
        sub_10000617C(v92, qword_100ADF880);
        v93 = v147;

        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.default.getter();

        v5 = v23;
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          *v96 = v134;
          type metadata accessor for UUID();
          sub_10001DCF8(&qword_100AE19B0, &type metadata accessor for UUID);
          v97 = dispatch thunk of CustomStringConvertible.description.getter();
          v99 = sub_100008458(v97, v98, &v164);

          *(v96 + 4) = v99;
          *(v96 + 12) = 2080;
          v21 = v144;
          *(v96 + 14) = sub_100008458(v144, v93, &v164);
          _os_log_impl(&_mh_execute_header, v94, v95, "%{public}s No directory for in-progress entry: %s", v96, 0x16u);
          swift_arrayDestroy();
          v16 = v139;

          v15 = v140;
        }

        else
        {

          v21 = v144;
        }

        sub_100124B70(v21, v93);
        p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
        v22 = v159;
      }

      result = (*v18)(v15, v22);
LABEL_6:
      v17 = v146 + 1;
    }

    while (v146 + 1 != v142);
  }

  return result;
}

uint64_t sub_100351DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v23 = a4;
  v24 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JournalEntryAssetMO();
  v9 = static JournalEntryAssetMO.fetchRequest()();
  sub_1000065A8(0, &qword_100ADB900);
  sub_1000F24EC(&unk_100AD5B10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100940080;
  *(v10 + 56) = sub_1000F24EC(&qword_100AD60A0);
  *(v10 + 64) = sub_10000B58C(&qword_100AD3C00, &qword_100AD60A0);
  *(v10 + 32) = a1;

  v11 = NSPredicate.init(format:_:)();
  [v9 setPredicate:v11];

  v12 = v26;
  v13 = *(*(v26 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  (*(v6 + 16))(v8, v23, v5);
  v14 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = v9;
  *(v15 + 4) = a1;
  *(v15 + 5) = v12;
  v16 = v25;
  *(v15 + 6) = v24;
  *(v15 + 7) = v16;
  (*(v6 + 32))(&v15[v14], v8, v5);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1003568C4;
  *(v17 + 24) = v15;
  aBlock[4] = sub_100177C4C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A7D4;
  aBlock[3] = &unk_100A68B68;
  v18 = _Block_copy(aBlock);
  v19 = v13;

  v20 = v19;
  v21 = v9;

  [v20 performBlockAndWait:v18];

  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  return result;
}

void sub_10035212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v130 = a7;
  v128 = a6;
  v132 = a4;
  v135 = a3;
  v8 = type metadata accessor for URL();
  v127 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for UUID();
  v11 = *(v136 - 8);
  __chkstk_darwin(v136);
  v13 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100AD1420);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v118 - v18;
  type metadata accessor for JournalEntryAssetMO();
  v20 = NSManagedObjectContext.fetch<A>(_:)();
  v131 = 0;
  v31 = v20;
  v122 = a5;
  v124 = v13;
  v129 = v10;
  v126 = v8;
  if (v20 >> 62)
  {
    v134 = v20 & 0xFFFFFFFFFFFFFF8;
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32)
    {
      goto LABEL_6;
    }

LABEL_31:
    v125 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  v134 = v20 & 0xFFFFFFFFFFFFFF8;
  v32 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_31;
  }

LABEL_6:
  v33 = 0;
  v133 = v31 & 0xC000000000000001;
  v34 = (v11 + 56);
  v35 = (v11 + 48);
  *&v123 = v11 + 16;
  v125 = _swiftEmptyArrayStorage;
  v121 = (v11 + 8);
  while (2)
  {
    v36 = v33;
    while (1)
    {
      if (v133)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v36 >= *(v134 + 16))
        {
          goto LABEL_29;
        }

        v37 = *(v31 + 8 * v36 + 32);
      }

      v38 = v37;
      v33 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        swift_once();
        v21 = type metadata accessor for Logger();
        sub_10000617C(v21, qword_100ADF880);

        swift_errorRetain();
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          *v24 = 136446466;
          sub_10001DCF8(&qword_100AE19B0, &type metadata accessor for UUID);
          v25 = dispatch thunk of CustomStringConvertible.description.getter();
          v27 = sub_100008458(v25, v26, &v138);

          *(v24 + 4) = v27;
          *(v24 + 12) = 2080;
          swift_getErrorValue();
          v28 = Error.localizedDescription.getter();
          v30 = sub_100008458(v28, v29, &v138);

          *(v24 + 14) = v30;
          _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s In-progress assets fetch error: %s", v24, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        return;
      }

      v39 = [v37 id];
      if (v39)
      {
        v40 = v39;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = 0;
      }

      else
      {
        v41 = 1;
      }

      v42 = v136;
      (*v34)(v17, v41, 1, v136);
      sub_100024EC0(v17, v19);
      if (!(*v35)(v19, 1, v42))
      {
        break;
      }

      sub_100004F84(v19, &qword_100AD1420);
      ++v36;
      if (v33 == v32)
      {
        goto LABEL_32;
      }
    }

    v43 = v124;
    v44 = v136;
    (*v123)(v124, v19, v136);
    sub_100004F84(v19, &qword_100AD1420);
    *&v120 = UUID.uuidString.getter();
    v119 = v45;

    (*v121)(v43, v44);
    v46 = v125;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_10009BCC8(0, *(v46 + 2) + 1, 1, v46);
    }

    v48 = *(v46 + 2);
    v47 = *(v46 + 3);
    if (v48 >= v47 >> 1)
    {
      v46 = sub_10009BCC8((v47 > 1), v48 + 1, 1, v46);
    }

    *(v46 + 2) = v48 + 1;
    v125 = v46;
    v49 = &v46[16 * v48];
    v50 = v119;
    *(v49 + 4) = v120;
    *(v49 + 5) = v50;
    if (v33 != v32)
    {
      continue;
    }

    break;
  }

LABEL_32:

  v52 = sub_100891094(v51);

  v53 = sub_100891094(v125);

  v54 = v128;
  if (*(v53 + 16) <= v52[2] >> 3)
  {
    v138 = v52;
    sub_100354034(v53);

    v57 = v138;
  }

  else
  {
    v55 = sub_100259048(v53, v52);

    v57 = v55;
  }

  v58 = v132;
  if (v57[2])
  {
    v121 = v57[2];
    v59 = 0;
    v60 = (v57 + 7);
    v61 = 1 << *(v57 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & v57[7];
    v124 = OBJC_IVAR____TtC7Journal9DataStack_sessionID;
    v64 = (v61 + 63) >> 6;
    v125 = (v127 + 8);
    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
    *&v56 = 136446466;
    v120 = v56;
    *&v56 = 136446722;
    v123 = v56;
    v54 = v129;
    v133 = (v57 + 7);
    v127 = v64;
    v134 = v57;
LABEL_39:
    v66 = v59;
    while (v63)
    {
      v67 = v58;
      v59 = v66;
LABEL_48:
      v68 = __clz(__rbit64(v63));
      v63 &= v63 - 1;
      v69 = (v57[6] + ((v59 << 10) | (16 * v68)));
      v70 = *v69;
      v71 = v69[1];

      v135 = v70;
      URL.appendingPathComponent(_:)();
      v137 = 1;
      v72 = objc_opt_self();
      v73 = [v72 p_ivar_lyt[364]];
      v74 = v54;
      URL.path.getter();
      v75 = String._bridgeToObjectiveC()();

      v76 = [v73 fileExistsAtPath:v75 isDirectory:&v137];

      if (!v76)
      {
        (*v125)(v74, v126);

        v54 = v74;
        v60 = v133;
        v57 = v134;
        v64 = v127;
        v58 = v67;
        goto LABEL_39;
      }

      v77 = [v72 p_ivar_lyt[364]];
      URL._bridgeToObjectiveC()(v78);
      v80 = v79;
      v138 = 0;
      v81 = [v77 removeItemAtURL:v79 error:&v138];

      v58 = v67;
      if (v81)
      {
        v54 = v74;
        v94 = qword_100ACFCA0;
        v95 = v138;
        if (v94 != -1)
        {
          swift_once();
        }

        v96 = type metadata accessor for Logger();
        sub_10000617C(v96, qword_100ADF880);

        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          *v99 = v120;
          sub_10001DCF8(&qword_100AE19B0, &type metadata accessor for UUID);
          v100 = dispatch thunk of CustomStringConvertible.description.getter();
          v102 = sub_100008458(v100, v101, &v138);

          *(v99 + 4) = v102;
          *(v99 + 12) = 2080;
          v103 = sub_100008458(v135, v71, &v138);

          *(v99 + 14) = v103;
          _os_log_impl(&_mh_execute_header, v97, v98, "%{public}s Delete in-progress asset dir success: %s", v99, 0x16u);
          swift_arrayDestroy();
          v58 = v132;

          v54 = v129;
        }

        else
        {
        }

        (*v125)(v54, v126);
        v57 = v134;
        p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
        v104 = __OFSUB__(v121, 1);
        v121 = (v121 - 1);
        v60 = v133;
        v64 = v127;
        if (v104)
        {
          __break(1u);
        }

        goto LABEL_39;
      }

      v82 = v138;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100ACFCA0 != -1)
      {
        swift_once();
      }

      v83 = type metadata accessor for Logger();
      sub_10000617C(v83, qword_100ADF880);

      swift_errorRetain();
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v138 = v131;
        *v86 = v123;
        sub_10001DCF8(&qword_100AE19B0, &type metadata accessor for UUID);
        v87 = dispatch thunk of CustomStringConvertible.description.getter();
        v89 = sub_100008458(v87, v88, &v138);

        *(v86 + 4) = v89;
        *(v86 + 12) = 2080;
        v90 = sub_100008458(v135, v71, &v138);

        *(v86 + 14) = v90;
        *(v86 + 22) = 2080;
        swift_getErrorValue();
        v91 = Error.localizedDescription.getter();
        v93 = sub_100008458(v91, v92, &v138);

        *(v86 + 24) = v93;
        _os_log_impl(&_mh_execute_header, v84, v85, "%{public}s Delete in-progress asset dir failure: %s %s", v86, 0x20u);
        swift_arrayDestroy();

        v58 = v132;
      }

      else
      {
      }

      v54 = v129;
      (*v125)(v129, v126);
      v131 = 0;
      v66 = v59;
      v60 = v133;
      v57 = v134;
      v64 = v127;
      p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
    }

    while (1)
    {
      v59 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        __break(1u);
        goto LABEL_76;
      }

      if (v59 >= v64)
      {
        break;
      }

      v63 = *&v60[8 * v59];
      ++v66;
      if (v63)
      {
        v67 = v58;
        goto LABEL_48;
      }
    }

    if (v121)
    {
      return;
    }

    if (qword_100ACFCA0 != -1)
    {
      swift_once();
    }

    v105 = type metadata accessor for Logger();
    sub_10000617C(v105, qword_100ADF880);

    v54 = v128;

    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v108 = v120;
      sub_10001DCF8(&qword_100AE19B0, &type metadata accessor for UUID);
      v109 = dispatch thunk of CustomStringConvertible.description.getter();
      v111 = sub_100008458(v109, v110, &v138);

      *(v108 + 4) = v111;
      *(v108 + 12) = 2080;
      v112 = v122;
      *(v108 + 14) = sub_100008458(v122, v54, &v138);
      v113 = "%{public}s Done cleaning in-progress assets for entry: %s";
      goto LABEL_71;
    }
  }

  else
  {

    if (qword_100ACFCA0 != -1)
    {
LABEL_76:
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    sub_10000617C(v114, qword_100ADF880);

    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v108 = 136446466;
      sub_10001DCF8(&qword_100AE19B0, &type metadata accessor for UUID);
      v115 = dispatch thunk of CustomStringConvertible.description.getter();
      v117 = sub_100008458(v115, v116, &v138);

      *(v108 + 4) = v117;
      *(v108 + 12) = 2080;
      v112 = v122;
      *(v108 + 14) = sub_100008458(v122, v54, &v138);
      v113 = "%{public}s No in-progress assets to clean for an entry: %s";
LABEL_71:
      _os_log_impl(&_mh_execute_header, v106, v107, v113, v108, 0x16u);
      swift_arrayDestroy();

      goto LABEL_73;
    }
  }

  v112 = v122;
LABEL_73:
  sub_100124B70(v112, v54);
}

void sub_1003532AC(void *a1)
{
  type metadata accessor for JournalEntryMO();
  v2 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_1000065A8(0, &qword_100ADB900);
  v3 = NSPredicate.init(format:_:)();
  [v2 setPredicate:v3];

  v4 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v2];
  [v4 setResultType:2];
  *&v24 = 0;
  v5 = [a1 executeRequest:v4 error:&v24];
  v6 = v24;
  if (v5)
  {
    v7 = v5;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    v9 = v6;
    if (v8)
    {
      if ([v8 result])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0u;
        v23 = 0u;
      }

      v24 = v22;
      v25 = v23;
      if (*(&v23 + 1))
      {
        if (swift_dynamicCast())
        {
          v17 = v22;
LABEL_17:
          if (qword_100ACFCA0 != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for Logger();
          sub_10000617C(v18, qword_100ADF880);
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 134217984;
            *(v21 + 4) = v17;
            _os_log_impl(&_mh_execute_header, v19, v20, "Removed %ld tips in the model.", v21, 0xCu);
          }

          return;
        }

LABEL_16:
        v17 = 0;
        goto LABEL_17;
      }
    }

    else
    {

      v24 = 0u;
      v25 = 0u;
    }

    sub_100004F84(&v24, &qword_100AD13D0);
    goto LABEL_16;
  }

  v10 = v24;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000617C(v11, qword_100ADF880);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "Error fetching or saving when cleaning up lock tips on app launch: %@", v14, 0xCu);
    sub_100004F84(v15, &unk_100AD4BB0);
  }

  else
  {
  }
}

uint64_t sub_1003536FC@<X0>(char **a1@<X8>)
{
  v49 = a1;
  v1 = sub_1000F24EC(&qword_100AD1420);
  v2 = __chkstk_darwin(v1 - 8);
  v52 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v48 - v5;
  v7 = __chkstk_darwin(v4);
  v9 = &v48 - v8;
  __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v12 = type metadata accessor for UUID();
  v51 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  sub_10001DCF8(&unk_100AD6A90, &type metadata accessor for JournalEntryAssetFileAttachmentMO);
  v15 = v61;
  v16 = static Identifiable<>.fetch(ids:context:)();
  if (v15)
  {
    if (qword_100ACFCA0 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_3;
  }

  v59 = v14;
  v60 = v11;
  v61 = v9;
  v50 = v6;
  v58 = v16;
  if (v16 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v58;
  }

  else
  {
    v30 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v60;
  v31 = v61;
  v48 = 0;
  if (!v30)
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_31:

    v29 = v49;
    goto LABEL_32;
  }

  v33 = 0;
  v56 = v16 & 0xFFFFFFFFFFFFFF8;
  v57 = v16 & 0xC000000000000001;
  v54 = (v51 + 48);
  v55 = (v51 + 56);
  v53 = (v51 + 32);
  v28 = _swiftEmptyArrayStorage;
  v34 = v50;
  while (v57)
  {
    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_33;
    }

LABEL_15:
    v37 = v35;
    v38 = [v37 asset];
    if (v38)
    {
      v39 = v38;
      v40 = [v39 id];
      if (v40)
      {
        v41 = v40;
        v42 = v52;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = v42;
        v34 = v50;
        v44 = 0;
      }

      else
      {
        v44 = 1;
        v43 = v52;
      }

      (*v55)(v43, v44, 1, v12);
      sub_100024EC0(v43, v34);
      v31 = v61;
      sub_100024EC0(v34, v61);

      v32 = v60;
    }

    else
    {
      (*v55)(v31, 1, 1, v12);
    }

    sub_100024EC0(v31, v32);

    if ((*v54)(v32, 1, v12) == 1)
    {
      sub_100004F84(v32, &qword_100AD1420);
    }

    else
    {
      v45 = *v53;
      (*v53)(v59, v32, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_100055CEC(0, *(v28 + 2) + 1, 1, v28);
      }

      v47 = *(v28 + 2);
      v46 = *(v28 + 3);
      if (v47 >= v46 >> 1)
      {
        v28 = sub_100055CEC(v46 > 1, v47 + 1, 1, v28);
      }

      *(v28 + 2) = v47 + 1;
      v45(&v28[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v47]);
      v32 = v60;
      v31 = v61;
    }

    ++v33;
    v16 = v58;
    if (v36 == v30)
    {
      goto LABEL_31;
    }
  }

  if (v33 >= *(v56 + 16))
  {
    goto LABEL_34;
  }

  v35 = *(v16 + 8 * v33 + 32);
  v36 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    goto LABEL_15;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  sub_10000617C(v17, qword_100ADF880);

  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v62 = v22;
    *v20 = 136315394;
    v23 = Array.description.getter();
    v25 = sub_100008458(v23, v24, &v62);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2112;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Unable to fetch local changed file attachments %s. Error: %@", v20, 0x16u);
    sub_100004F84(v21, &unk_100AD4BB0);

    sub_10000BA7C(v22);
  }

  v28 = _swiftEmptyArrayStorage;
  v29 = v49;
LABEL_32:
  *v29 = v28;
  return result;
}

uint64_t sub_100353D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataStackConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100353DE8(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000065A8(0, &qword_100AF02B0);
    sub_10006DAB0(&qword_100AD6FD8, &qword_100AF02B0);
    Set.Iterator.init(_cocoa:)();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_100014FF8();
      return;
    }

    while (1)
    {
      v16 = sub_10044A8E4(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000065A8(0, &qword_100AF02B0);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_100354034(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10044AAC8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_100354198(unint64_t a1, void *a2)
{
  v93 = a2;
  v89 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchQoS();
  v5 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for UUID();
  v90 = *(v94 - 8);
  __chkstk_darwin(v94);
  v84 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v7;
  __chkstk_darwin(v8);
  v10 = v74 - v9;
  v11 = sub_1000F24EC(&qword_100AD1420);
  v96 = *(v11 - 8);
  __chkstk_darwin(v11);
  v83 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v82 = v74 - v14;
  __chkstk_darwin(v15);
  v95 = v74 - v16;
  __chkstk_darwin(v17);
  v19 = (v74 - v18);
  __chkstk_darwin(v20);
  v22 = v74 - v21;
  __chkstk_darwin(v23);
  v25 = (v74 - v24);
  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  sub_10000617C(v76, qword_100ADF880);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  LODWORD(v92) = v27;
  v28 = os_log_type_enabled(v26, v27);
  v29 = (a1 >> 62);
  v91 = a1;
  if (!v28)
  {

    goto LABEL_28;
  }

  v81 = v5;
  v5 = v3;
  v30 = swift_slowAlloc();
  v77 = swift_slowAlloc();
  aBlock[0] = v77;
  v78 = v30;
  *v30 = 136315138;
  v79 = (a1 >> 62);
  v80 = v26;
  if (v29)
  {
    goto LABEL_50;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = v5;
    if (i)
    {
      v97 = _swiftEmptyArrayStorage;
      sub_100199F64(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return;
      }

      v74[1] = v11;
      v75 = v5;
      v32 = v97;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v33 = 0;
        v34 = (v90 + 56);
        do
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v35 = [swift_unknownObjectRetain() id];
          if (v35)
          {
            v36 = v35;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v37 = 0;
          }

          else
          {
            v37 = 1;
          }

          (*v34)(v19, v37, 1, v94);
          sub_100024EC0(v19, v22);
          sub_100024EC0(v22, v25);
          swift_unknownObjectRelease_n();
          v97 = v32;
          v39 = *(v32 + 2);
          v38 = *(v32 + 3);
          if (v39 >= v38 >> 1)
          {
            sub_100199F64(v38 > 1, v39 + 1, 1);
            v32 = v97;
          }

          ++v33;
          *(v32 + 2) = v39 + 1;
          sub_100024EC0(v25, v32 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + v96[9] * v39);
        }

        while (i != v33);
      }

      else
      {
        v25 = (a1 + 32);
        v19 = (v90 + 56);
        v40 = v83;
        v41 = v82;
        v42 = v95;
        do
        {
          v43 = *v25;
          v44 = [v43 id];
          if (v44)
          {
            v45 = v44;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v42 = v95;
            v46 = 0;
          }

          else
          {
            v46 = 1;
          }

          (*v19)(v40, v46, 1, v94);
          sub_100024EC0(v40, v41);
          sub_100024EC0(v41, v42);

          v97 = v32;
          v48 = *(v32 + 2);
          v47 = *(v32 + 3);
          v22 = (v48 + 1);
          if (v48 >= v47 >> 1)
          {
            sub_100199F64(v47 > 1, v48 + 1, 1);
            v32 = v97;
          }

          *(v32 + 2) = v22;
          sub_100024EC0(v42, v32 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + v96[9] * v48);
          ++v25;
          --i;
        }

        while (i);
      }

      a1 = v91;
      v3 = v75;
      v5 = v81;
    }

    else
    {
      v5 = v81;
    }

    v49 = Array.description.getter();
    v51 = v50;

    v52 = sub_100008458(v49, v51, aBlock);

    v53 = v78;
    *(v78 + 1) = v52;
    v54 = v80;
    _os_log_impl(&_mh_execute_header, v80, v92, "Purging cache for assetIDs %s", v53, 0xCu);
    sub_10000BA7C(v77);

    v29 = v79;
LABEL_28:
    if (v29)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        return;
      }
    }

    if (v11 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_50:
    ;
  }

  v55 = 0;
  v92 = a1 & 0xC000000000000001;
  v82 = (v90 + 16);
  v81 = v90 + 32;
  v80 = v99;
  v79 = (v3 + 8);
  v78 = (v5 + 8);
  v77 = v90 + 8;
  v83 = v11;
  v56 = v94;
  v57 = v86;
  do
  {
    if (v92)
    {
      v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v58 = *(a1 + 8 * v55 + 32);
    }

    v59 = v58;
    v60 = [v58 id];
    if (v60)
    {
      v61 = v60;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if (qword_100ACFCB0 != -1)
      {
        swift_once();
      }

      v96 = v59;
      if (qword_100ACFCB8 != -1)
      {
        swift_once();
      }

      v95 = qword_100B2F858;
      v62 = v90;
      v63 = v84;
      (*(v90 + 16))(v84, v10, v56);
      v64 = (*(v62 + 80) + 16) & ~*(v62 + 80);
      v65 = swift_allocObject();
      (*(v62 + 32))(v65 + v64, v63, v56);
      v99[2] = sub_100356B8C;
      v99[3] = v65;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v99[0] = sub_100006C7C;
      v99[1] = &unk_100A68D70;
      v66 = _Block_copy(aBlock);
      static DispatchQoS.unspecified.getter();
      v97 = _swiftEmptyArrayStorage;
      sub_10001DCF8(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000F24EC(&unk_100AD6220);
      sub_10000B58C(&qword_100AD1530, &unk_100AD6220);
      v67 = v88;
      v68 = v10;
      v69 = v89;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v66);
      v70 = v69;
      v10 = v68;
      (*v79)(v67, v70);
      (*v78)(v57, v87);

      (*(v62 + 8))(v68, v56);
      a1 = v91;
      v11 = v83;
      v59 = v96;
    }

    else
    {
      if (qword_100AD0AF8 != -1)
      {
        swift_once();
      }

      sub_10000617C(v76, qword_100AF2420);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v71, v72, "(purgeCache) unable to get assetId from an asset", v73, 2u);
      }
    }

    ++v55;
    sub_1006EF5D4();
    [v93 deleteObject:v59];
  }

  while (v11 != v55);
}

void sub_100354D88(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v25 = v24 - v5;
  swift_getKeyPath();
  v6 = _swiftEmptyArrayStorage;
  v28 = _swiftEmptyArrayStorage;
  v7 = *(a1 + 16);
  v24[2] = a1;
  if (v7)
  {
    v8 = 0;
    v9 = a1 + 32;
    v10 = _swiftEmptyArrayStorage;
    do
    {
      v11 = v8;
      while (1)
      {
        if (v11 >= v7)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v8 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_33;
        }

        v26 = *(v9 + 16 * v11);
        swift_unknownObjectRetain();
        swift_getAtKeyPath();
        swift_unknownObjectRelease();
        if (v27)
        {
          break;
        }

        ++v11;
        if (v8 == v7)
        {
          goto LABEL_14;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v28;
    }

    while (v8 != v7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

LABEL_14:

  swift_getKeyPath();
  v28 = _swiftEmptyArrayStorage;
  v12 = a2;
  a2 = *(a2 + 16);
  v24[1] = v12;
  if (a2)
  {
    v13 = 0;
    v14 = v12 + 32;
    v6 = _swiftEmptyArrayStorage;
LABEL_16:
    v15 = v13;
    while (v15 < a2)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_35;
      }

      v26 = *(v14 + 16 * v15);
      swift_unknownObjectRetain();
      swift_getAtKeyPath();
      swift_unknownObjectRelease();
      if (v27)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v28;
        if (v13 != a2)
        {
          goto LABEL_16;
        }

        goto LABEL_25;
      }

      ++v15;
      if (v13 == a2)
      {
        goto LABEL_25;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_25:

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_29:
    if (qword_100ACFCA8 != -1)
    {
      swift_once();
    }

    v16 = *(qword_100B2F840 + 32);
    v17 = type metadata accessor for TaskPriority();
    v18 = v25;
    (*(*(v17 - 8) + 56))(v25, 1, 1, v17);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v16;
    v19[5] = v10;
    v19[6] = v6;

    sub_1003E9628(0, 0, v18, &unk_100951000, v19);

    return;
  }

LABEL_27:
  if (v6 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_29;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000617C(v20, qword_100ADF880);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = v7;

    *(v23 + 12) = 2048;
    *(v23 + 14) = a2;

    _os_log_impl(&_mh_execute_header, v21, v22, "No records to save or delete. Expected %ld and %ld, respectively", v23, 0x16u);
  }

  else
  {
  }
}

uint64_t sub_10035527C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_100348BC0(a1, v4, v5, v7, v6);
}

void sub_100355340()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = type metadata accessor for ProtectedData.ProtectedDataState();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000617C(v12, qword_100ADF880);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Initialize User Status", v15, 2u);
  }

  v35 = v1;
  isa = v1[2].isa;
  v17 = [*(isa + OBJC_IVAR____TtC7Journal13CoreDataStack_container) viewContext];
  v18 = [v17 persistentStoreCoordinator];

  if (v18 && ((v19 = [v18 persistentStores], sub_1000065A8(0, &qword_100AE5BC0), v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v19, v20 >> 62) ? (v21 = _CocoaArrayWrapper.endIndex.getter()) : (v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, v18, v21) && *(isa + OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoresLoadSuccess) == 1))
  {
    type metadata accessor for ProtectedData();
    static ProtectedData.shared.getter();
    ProtectedData.state.getter();

    (*(v6 + 104))(v9, enum case for ProtectedData.ProtectedDataState.available(_:), v5);
    v22 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
    v23 = *(v6 + 8);
    v23(v9, v5);
    v23(v11, v5);
    if (v22)
    {
      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
      type metadata accessor for MainActor();
      v25 = v35;

      v26 = static MainActor.shared.getter();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = &protocol witness table for MainActor;
      v27[4] = v25;
      sub_1003E9628(0, 0, v4, &unk_100950EE8, v27);
    }

    else
    {
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Protected data is not available, not ready to sync", v33, 2u);
      }
    }
  }

  else
  {
    v35 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v35, v28, "Database is not open, not ready to sync", v29, 2u);
    }

    v30 = v35;
  }
}

uint64_t sub_100355858(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v1[36] = v3;
  v1[37] = *(v3 - 8);
  v1[38] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v1[39] = v4;
  v1[40] = v6;

  return _swift_task_switch(sub_100355944, v4, v6);
}

uint64_t sub_100355944()
{
  Logger.init(subsystem:category:)();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Checking for provisioned Apple account.", v3, 2u);
  }

  v4 = [objc_opt_self() defaultStore];
  v0[41] = v4;
  if (v4)
  {
    v5 = v4;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_100355C00;
    v6 = swift_continuation_init();
    v7 = sub_1000F24EC(&qword_100ADFA88);
    v0[42] = v7;
    v0[25] = v7;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_10034D9C8;
    v0[21] = &unk_100A68960;
    v0[22] = v6;
    [v5 aa_primaryAppleAccountWithCompletion:v0 + 18];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "There is no account signed in.", v10, 2u);
    }

    (*(v0[37] + 8))(v0[38], v0[36]);

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_100355C00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  v3 = *(v1 + 320);
  v4 = *(v1 + 312);
  if (v2)
  {
    v5 = sub_10035652C;
  }

  else
  {
    v5 = sub_100355D30;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100355D30()
{
  v1 = *(v0 + 272);
  *(v0 + 352) = v1;
  if (!v1)
  {

    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v3, v9, "There is no account signed in.", v10, 2u);
    }

    v8 = 0;
    goto LABEL_18;
  }

  v2 = ACAccountDataclassMoments;
  *(v0 + 360) = ACAccountDataclassMoments;
  if (([v1 isEnabledForDataclass:v2]& 1) != 0)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 328);
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Signed in and dataclass is enabled.", v7, 2u);

      v8 = 3;
      v3 = v1;
    }

    else
    {

      v8 = 3;
    }

    goto LABEL_18;
  }

  v11 = [v1 isProvisionedForDataclass:v2];
  v3 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  v13 = os_log_type_enabled(v3, v12);
  if (v11)
  {
    v14 = *(v0 + 328);
    if (v13)
    {
      v8 = 2;
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v3, v12, "Signed in and dataclass is provisioned.", v15, 2u);

      v3 = v1;
    }

    else
    {

      v8 = 2;
    }

LABEL_18:

    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

    v22 = *(v0 + 8);

    return v22(v8);
  }

  if (v13)
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v3, v12, "(checkForProvisionedAppleAccount) There is primary account signed in", v16, 2u);
  }

  v17 = *(v0 + 328);
  v18 = *(v0 + 336);

  v19 = v1;
  sub_1003630D0(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 368) = isa;

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 280;
  *(v0 + 88) = sub_100356134;
  v21 = swift_continuation_init();
  *(v0 + 264) = v18;
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_10034D9C8;
  *(v0 + 232) = &unk_100A68988;
  *(v0 + 240) = v21;
  [v17 discoverPropertiesForAccount:v19 options:isa completion:v0 + 208];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_100356134()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 376) = v2;
  v3 = *(v1 + 320);
  v4 = *(v1 + 312);
  if (v2)
  {
    v5 = sub_100356640;
  }

  else
  {
    v5 = sub_100356264;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100356264()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 280);

  if (!v2)
  {
    v3 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    v11 = os_log_type_enabled(v3, v10);
    v6 = *(v0 + 352);
    v2 = *(v0 + 328);
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v3, v10, "Log and handle error. Device or account state does not permit refresh. Proceed as if offline", v12, 2u);
    }

    goto LABEL_14;
  }

  if (([v2 isEnabledForDataclass:*(v0 + 360)] & 1) == 0)
  {
    v13 = [v2 isProvisionedForDataclass:*(v0 + 360)];
    v3 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    v15 = os_log_type_enabled(v3, v14);
    v6 = *(v0 + 352);
    v16 = *(v0 + 328);
    if (v13)
    {
      if (v15)
      {
        v9 = 2;
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v3, v14, "Dataclass is provisioned but not enabled", v17, 2u);
      }

      else
      {

        v9 = 2;
      }

      goto LABEL_15;
    }

    if (v15)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v3, v14, "Dataclass is not provisioned and not enabled. This account is not capable of using Journal due to some restriction.", v18, 2u);
    }

LABEL_14:
    v9 = 1;
    goto LABEL_15;
  }

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 352);
  v7 = *(v0 + 328);
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Dataclass is provisioned and enabled", v8, 2u);
  }

  v9 = 3;
LABEL_15:

  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

  v19 = *(v0 + 8);

  return v19(v9);
}

uint64_t sub_10035652C()
{
  v1 = v0[41];
  swift_willThrow();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "There is no account signed in.", v4, 2u);
  }

  (*(v0[37] + 8))(v0[38], v0[36]);

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_100356640()
{
  v1 = v0[46];
  v2 = v0[44];
  swift_willThrow();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[44];
  v7 = v0[41];
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Log and handle error. Device or account state does not permit refresh. Proceed as if offline", v8, 2u);
  }

  (*(v0[37] + 8))(v0[38], v0[36]);

  v9 = v0[1];

  return v9(1);
}

uint64_t sub_100356770(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10034D6C0(a1, v4, v5, v6);
}

uint64_t sub_100356864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1003568C4()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  sub_10035212C(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100356938(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_100348BC0(a1, v4, v5, v7, v6);
}

uint64_t sub_100356A5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_10034B48C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_100356B90()
{
  result = qword_100ADFAE0;
  if (!qword_100ADFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFAE0);
  }

  return result;
}

uint64_t sub_100356C00()
{
  v1 = type metadata accessor for UUID();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_100356C88()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1007D8468(v2);
}

uint64_t sub_100356CE8(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t sub_100356D40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100347784(a1, v4, v5, v6);
}

unint64_t sub_100356DF4()
{
  result = qword_100ADFAF0;
  if (!qword_100ADFAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFAF0);
  }

  return result;
}

Swift::Int sub_100356ED8()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 == 1)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v1)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  return Hasher._finalize()();
}

void sub_100356F68()
{
  v1 = *(v0 + 8);
  if (v1 == 1)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v1)
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }
}

Swift::Int sub_100356FF8()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 == 1)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v1)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  return Hasher._finalize()();
}

BOOL sub_100357084(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = v5 == 1 && v4 == 1;
  if (v4 != 1 && v5 != 1)
  {
    if (v4)
    {
      if (v5)
      {
        v8 = *a1 == *a2 && v4 == v5;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void sub_100357110(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v24 - v8;
  v10 = OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation;
  v11 = *&v2[OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation];
  if (a1)
  {
    if (!v11)
    {
      return;
    }

    type metadata accessor for StyledMKPointAnnotation();
    v12 = v11;
    v13 = a1;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      return;
    }

    v11 = *&v2[v10];
  }

  if (v11)
  {
    v15 = *&v11[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID + 8];
    if (v15)
    {
      v16 = *&v2[OBJC_IVAR____TtC7Journal26LocationListCollectionView_locationsDataSource];
      if (v16)
      {
        v24[0] = *&v11[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID];
        v24[1] = v15;
        v17 = v11;

        v18 = v16;
        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
      }

      else
      {
        v19 = type metadata accessor for IndexPath();
        (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
        v20 = v11;
      }

      sub_1000082B4(v9, v6, &unk_100ADFB90);
      v21 = type metadata accessor for IndexPath();
      v22 = *(v21 - 8);
      isa = 0;
      if ((*(v22 + 48))(v6, 1, v21) != 1)
      {
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v22 + 8))(v6, v21);
      }

      [v2 selectItemAtIndexPath:isa animated:1 scrollPosition:0];

      sub_100004F84(v9, &unk_100ADFB90);
    }
  }
}

id sub_100357444(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for LocationListCollectionView();
  v16.receiver = v3;
  v16.super_class = v6;
  objc_msgSendSuper2(&v16, "contentSize");
  v8 = v7;
  v10 = v9;
  v15.receiver = v3;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "setContentSize:", a1, a2);
  result = [v3 contentSize];
  if (v13 != v8 || v12 != v10)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1005365EC();
      swift_unknownObjectRelease();
    }

    return [v3 invalidateIntrinsicContentSize];
  }

  return result;
}

_BYTE *sub_100357518(char a1)
{
  *&v1[OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry] = 0;
  v1[OBJC_IVAR____TtC7Journal26LocationListCollectionView_entryIsDeletable] = 0;
  *&v1[OBJC_IVAR____TtC7Journal26LocationListCollectionView_locationsDataSource] = 0;
  v1[OBJC_IVAR____TtC7Journal26LocationListCollectionView_isCardView] = 1;
  *&v1[OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapCellDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal26LocationListCollectionView_pickerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapListSheetDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal26LocationListCollectionView_locationPickerController] = 0;
  *&v1[OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation] = 0;
  v3 = [objc_allocWithZone(UICollectionViewLayout) init];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for LocationListCollectionView();
  v4 = objc_msgSendSuper2(&v9, "initWithFrame:collectionViewLayout:", v3, 0.0, 0.0, 0.0, 0.0);

  v4[OBJC_IVAR____TtC7Journal26LocationListCollectionView_isCardView] = a1;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];

  [v6 setClipsToBounds:1];
  [v6 setAllowsFocus:1];
  [v6 setAllowsSelection:1];
  [v6 setDelegate:v6];
  [v6 setScrollEnabled:(a1 & 1) == 0];
  [v6 setBouncesVertically:(a1 & 1) == 0];

  sub_100357E64();
  sub_100357718();

  return v6;
}

void sub_100357718()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v5[4] = sub_10035FAEC;
  v5[5] = v1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100029CCC;
  v5[3] = &unk_100A69258;
  v3 = _Block_copy(v5);

  v4 = [v2 initWithSectionProvider:v3];
  _Block_release(v3);

  [v0 setCollectionViewLayout:v4 animated:0];
}

void *sub_100357834()
{
  v0 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UICollectionLayoutListConfiguration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for UICollectionLayoutListConfiguration.Appearance.grouped(_:), v0, v6);
  UICollectionLayoutListConfiguration.init(appearance:)();

  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  v9 = [objc_opt_self() clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  sub_1000065A8(0, &unk_100AD4440);
  v10 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v12 = Strong[OBJC_IVAR____TtC7Journal26LocationListCollectionView_isCardView], Strong, v13 = 3.0, (v12 & 1) == 0))
  {
    v13 = -1.0;
  }

  [v10 contentInsets];
  [v10 setContentInsets:v13];
  [v10 contentInsets];
  [v10 setContentInsets:?];
  (*(v5 + 8))(v8, v4);
  return v10;
}

void sub_100357AB0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v23[-v9];
  v11 = type metadata accessor for UIListSeparatorConfiguration();
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
  v13 = *(v5 + 104);
  v13(v10, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v4);
  UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong[OBJC_IVAR____TtC7Journal26LocationListCollectionView_isCardView];

    if (v15 == 1)
    {
      v16 = [objc_opt_self() quaternaryLabelColor];
      UIListSeparatorConfiguration.color.setter();
    }
  }

  v17 = IndexPath.item.getter();
  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    v20 = [v18 numberOfItemsInSection:IndexPath.section.getter()];

    v21 = v20 - 1;
    if (__OFSUB__(v20, 1))
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v21 = -1;
  }

  if (v17 == v21)
  {
    v22 = v12;
  }

  else
  {
    v22 = enum case for UIListSeparatorConfiguration.Visibility.visible(_:);
  }

  v13(v7, v22, v4);
  UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
}

uint64_t sub_100357D0C(void *a1)
{
  *(v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_entryIsDeletable) = 0;
  v2 = OBJC_IVAR____TtC7Journal26LocationListCollectionView_locationsDataSource;
  *(v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_locationsDataSource) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_isCardView) = 1;
  v3 = v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapCellDelegate;
  *(v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapCellDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_pickerDelegate;
  *(v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_pickerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapListSheetDelegate;
  *(v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapListSheetDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC7Journal26LocationListCollectionView_locationPickerController;
  *(v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_locationPickerController) = 0;
  v7 = OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation;
  *(v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation) = 0;

  sub_100038534(v3);
  sub_100038534(v4);
  sub_100038534(v5);

  type metadata accessor for LocationListCollectionView();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_100357E64()
{
  v69 = type metadata accessor for VisitAssetMetadata();
  v66 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000F24EC(&qword_100ADFBA0);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v56 - v2;
  v3 = sub_1000F24EC(&unk_100ADFBB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v67 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v56 - v7;
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000065A8(0, &qword_100AD4D40);
  UICollectionView.CellRegistration.init(handler:)();
  *(swift_allocObject() + 16) = v0;
  v15 = v0;
  UICollectionView.CellRegistration.init(handler:)();
  v16 = *(v4 + 16);
  v60 = v14;
  v16(v8, v14, v3);
  v17 = v67;
  v61 = v11;
  v16(v67, v11, v3);
  v18 = *(v4 + 80);
  v19 = (v18 + 24) & ~v18;
  v20 = (v5 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  v62 = v4;
  v22 = *(v4 + 32);
  v22(v21 + v19, v8, v3);
  v23 = v21 + v20;
  v24 = v3;
  v22(v23, v17, v3);
  v25 = v64;
  v26 = v65;
  objc_allocWithZone(sub_1000F24EC(&qword_100ADFBC8));
  v27 = v15;
  v28 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v29 = OBJC_IVAR____TtC7Journal26LocationListCollectionView_locationsDataSource;
  v30 = *&v27[OBJC_IVAR____TtC7Journal26LocationListCollectionView_locationsDataSource];
  *&v27[OBJC_IVAR____TtC7Journal26LocationListCollectionView_locationsDataSource] = v28;

  sub_10035F710();
  sub_10035F5E0();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A58C50);
  v31 = *&v27[OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry];
  if (v31)
  {
    v32 = *(v31 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
    v33 = _swiftEmptyArrayStorage;
    if (v32)
    {
      v34 = v32;
      v35 = sub_1001B4A00();

      v36 = *(v35 + 16);
      if (v36)
      {
        v57 = v29;
        v58 = v27;
        v59 = v24;
        v70 = _swiftEmptyArrayStorage;
        sub_100199FE4(0, v36, 0);
        v33 = v70;
        v37 = v66 + 16;
        v38 = *(v66 + 16);
        v39 = *(v66 + 80);
        v56 = v35;
        v40 = v35 + ((v39 + 32) & ~v39);
        v66 = *(v66 + 72);
        v67 = v38;
        v41 = (v37 - 8);
        do
        {
          v42 = v68;
          v43 = v69;
          (v67)(v68, v40, v69);
          v44 = VisitAssetMetadata.id.getter();
          v46 = v45;
          (*v41)(v42, v43);
          v70 = v33;
          v48 = *(v33 + 2);
          v47 = *(v33 + 3);
          if (v48 >= v47 >> 1)
          {
            sub_100199FE4((v47 > 1), v48 + 1, 1);
            v33 = v70;
          }

          *(v33 + 2) = v48 + 1;
          v49 = &v33[2 * v48];
          *(v49 + 4) = v44;
          *(v49 + 5) = v46;
          v40 += v66;
          --v36;
        }

        while (v36);

        v25 = v64;
        v26 = v65;
        v27 = v58;
        v24 = v59;
        v29 = v57;
      }

      else
      {
      }
    }
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  v50 = OBJC_IVAR____TtC7Journal26LocationListCollectionView_isCardView;
  if (v27[OBJC_IVAR____TtC7Journal26LocationListCollectionView_isCardView] == 1 && *(v33 + 2) > 3uLL)
  {
    sub_100610218(v33, (v33 + 4), 0, 7uLL);
  }

  else
  {
  }

  v72 = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  v51 = *(v33 + 2);

  if (v51 >= 4 && v27[v50] == 1)
  {
    v71 = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  }

  v52 = *&v27[v29];
  if (v52)
  {
    v53 = v52;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  (*(v63 + 8))(v25, v26);
  v54 = *(v62 + 8);
  v54(v61, v24);
  return (v54)(v60, v24);
}

void sub_100358510(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v104 = a1;
  v4 = sub_1000F24EC(&unk_100ADFBE0);
  __chkstk_darwin(v4 - 8);
  v97 = &v84 - v5;
  v95 = type metadata accessor for UICellAccessory.Placement();
  v94 = *(v95 - 1);
  __chkstk_darwin(v95);
  v96 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for UIListContentConfiguration();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v9 - 8);
  v11 = &v84 - v10;
  v12 = type metadata accessor for MultiPinMapAssetMetadata();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for VisitAssetMetadata();
  v17 = *(v16 - 8);
  v106 = v16;
  v107 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v93 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v84 - v20;
  __chkstk_darwin(v22);
  v24 = &v84 - v23;
  __chkstk_darwin(v25);
  v105 = &v84 - v26;
  v27 = a3[1];
  if (v27 == 1)
  {
    return;
  }

  v28 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!v27 || (v30 = *&Strong[OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry]) == 0 || (v31 = *(v30 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset)) == 0)
  {

    return;
  }

  if (!*&v31[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
  {

    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_12;
  }

  v87 = Strong;
  v92 = v31;

  sub_1000768B4(v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

LABEL_12:
    sub_100004F84(v11, &unk_100AD5B30);
    return;
  }

  (*(v13 + 32))(v15, v11, v12);
  v32 = MultiPinMapAssetMetadata.visitsData.getter();
  (*(v13 + 8))(v15, v12);
  if (!v32)
  {

    goto LABEL_23;
  }

  v33 = v92;
  v89 = *(v32 + 16);
  if (!v89)
  {
LABEL_21:

LABEL_23:

    return;
  }

  v34 = 0;
  v35 = v107;
  v36 = *(v107 + 80);
  v85 = ~v36;
  v86 = v36;
  v37 = (v32 + ((v36 + 32) & ~v36));
  v91 = v107 + 16;
  v90 = (v107 + 8);
  v38 = v106;
  while (1)
  {
    if (v34 >= *(v32 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    v39 = &v37[*(v35 + 72) * v34];
    v88 = *(v35 + 16);
    v88(v21, v39, v38);
    if (VisitAssetMetadata.id.getter() == v28 && v27 == v40)
    {

      goto LABEL_26;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      break;
    }

    ++v34;
    v38 = v106;
    (*v90)(v21, v106);
    v35 = v107;
    v33 = v92;
    if (v89 == v34)
    {
      goto LABEL_21;
    }
  }

  v38 = v106;
LABEL_26:
  v42 = *(v107 + 32);
  v107 += 32;
  v42(v24, v21, v38);
  v37 = v105;
  v42(v105, v24, v38);
  v34 = v98;
  static UIListContentConfiguration.cell()();
  v43 = sub_100579A18();
  v44 = objc_opt_self();
  v45 = [v87 traitCollection];
  [v45 displayScale];
  v47 = v46;

  v89 = v43;
  v48 = [v44 imageForStyle:v43 size:3 forScale:0 format:v47];
  if (v48)
  {
    goto LABEL_33;
  }

  v24 = v42;
  if (qword_100AD09D8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v48 = qword_100B30EB0;
  if (qword_100B30EB0)
  {
    sub_1000F24EC(&unk_100AD4780);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_100941D60;
    *(v49 + 32) = [objc_opt_self() whiteColor];
    if (qword_100AD0360 != -1)
    {
      swift_once();
    }

    v50 = qword_100B30358;
    *(v49 + 40) = qword_100B30358;
    sub_1000065A8(0, &qword_100AD4C70);
    v51 = v50;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v53 = [objc_opt_self() configurationWithPaletteColors:isa];

    v48 = [v48 imageWithConfiguration:v53];
    v37 = v105;
  }

  v42 = v24;
LABEL_33:
  v92 = v42;
  v105 = v48;
  UIListContentConfiguration.image.setter();
  v54 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.maximumSize.setter();
  v54(v108, 0);
  v55 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle1];
  v56 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
  v56(v108, 0);
  sub_1008A81A0();
  UIListContentConfiguration.text.setter();
  sub_1008A8634();
  UIListContentConfiguration.secondaryText.setter();
  sub_1000F24EC(&unk_100ADFBF0);
  inited = swift_initStackObject();
  v84 = xmmword_100940080;
  *(inited + 16) = xmmword_100940080;
  *(inited + 32) = UIFontWeightSemibold;
  v58 = inited + 32;
  *(inited + 40) = 0;
  *(inited + 48) = 3;
  sub_100047788(UIFontTextStyleBody, inited, 0);
  swift_setDeallocating();
  sub_100047D60(v58);
  v59 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v59(v108, 0);
  v60 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v61 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v61(v108, 0);
  v62 = [objc_opt_self() secondaryLabelColor];
  v63 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v63(v108, 0);
  UIListContentConfiguration.imageToTextPadding.setter();
  v64 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *v65 = 0x4028000000000000;
  v64(v108, 0);
  v66 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *(v67 + 16) = 0x4028000000000000;
  v66(v108, 0);
  v68 = sub_10035E78C(v37);
  v69 = sub_1000F24EC(&qword_100AD4E00);
  v70 = v96;
  v71 = &v96[*(v69 + 48)];
  v72 = enum case for UICellAccessory.DisplayedState.always(_:);
  v73 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v73 - 8) + 104))(v70, v72, v73);
  *v71 = variable initialization expression of RecentSearch.tokens;
  v71[1] = 0;
  (*(v94 + 104))(v70, enum case for UICellAccessory.Placement.trailing(_:), v95);
  v74 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v74 - 8) + 56))(v97, 1, 1, v74);
  v95 = v68;
  v75 = v100;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  sub_1000F24EC(&unk_100AD4410);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = v84;
  static UICellAccessory.customView(configuration:)();
  UICollectionViewListCell.accessories.setter();
  v76 = v101;
  v108[3] = v101;
  v108[4] = &protocol witness table for UIListContentConfiguration;
  v77 = sub_10001A770(v108);
  v78 = v37;
  v79 = v99;
  (*(v99 + 16))(v77, v34, v76);
  UICollectionViewCell.contentConfiguration.setter();
  v80 = v93;
  v81 = v106;
  v88(v93, v78, v106);
  v82 = (v86 + 16) & v85;
  v83 = swift_allocObject();
  (v92)(v83 + v82, v80, v81);
  UICollectionViewCell.configurationUpdateHandler.setter();

  (*(v102 + 8))(v75, v103);
  (*(v79 + 8))(v34, v76);
  (*v90)(v78, v81);
}

uint64_t sub_100359418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[1] = a3;
  v4 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v4 - 8);
  v37 = v35 - v5;
  v6 = sub_1000F24EC(&unk_100AE92D0);
  __chkstk_darwin(v6 - 8);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v35 - v10;
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  v15 = type metadata accessor for UIBackgroundConfiguration();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIBackgroundConfiguration.clear()();
  UICollectionViewCell.contentConfiguration.getter();
  if (*(&v39 + 1))
  {
    sub_1000F24EC(&qword_100AD3268);
    v19 = type metadata accessor for UIListContentConfiguration();
    v20 = swift_dynamicCast();
    (*(*(v19 - 8) + 56))(v14, v20 ^ 1u, 1, v19);
  }

  else
  {
    sub_100004F84(&v38, &unk_100ADFC00);
    v21 = type metadata accessor for UIListContentConfiguration();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  }

  if (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isFocused.getter())
  {
    v36 = a1;
    v22 = [objc_opt_self() effectWithStyle:8];
    v23 = [objc_opt_self() effectForBlurEffect:v22 style:6];

    UIBackgroundConfiguration.visualEffect.setter();
    v24 = [objc_opt_self() whiteColor];
    UIBackgroundConfiguration.backgroundColor.setter();
    UIBackgroundConfiguration.cornerRadius.setter();
    UIBackgroundConfiguration.backgroundInsets.setter();
    v25 = type metadata accessor for UIListContentConfiguration();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (!v27(v14, 1, v25))
    {
      sub_1008A8A90();
      UIListContentConfiguration.secondaryText.setter();
    }

    sub_1000082B4(v14, v11, &unk_100AE92D0);
    if (v27(v11, 1, v25) == 1)
    {
      sub_100004F84(v11, &unk_100AE92D0);
      v38 = 0u;
      v39 = 0u;
      v40 = 0;
    }

    else
    {
      *(&v39 + 1) = v25;
      v40 = &protocol witness table for UIListContentConfiguration;
      v28 = sub_10001A770(&v38);
      (*(v26 + 32))(v28, v11, v25);
    }
  }

  else
  {
    v31 = type metadata accessor for UIListContentConfiguration();
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    if (!v33(v14, 1, v31))
    {
      v36 = v32;
      sub_1008A8634();
      UIListContentConfiguration.secondaryText.setter();
      v32 = v36;
    }

    sub_1000082B4(v14, v8, &unk_100AE92D0);
    if (v33(v8, 1, v31) == 1)
    {
      sub_100004F84(v8, &unk_100AE92D0);
      v38 = 0u;
      v39 = 0u;
      v40 = 0;
    }

    else
    {
      *(&v39 + 1) = v31;
      v40 = &protocol witness table for UIListContentConfiguration;
      v34 = sub_10001A770(&v38);
      (*(v32 + 32))(v34, v8, v31);
    }
  }

  UICollectionViewCell.contentConfiguration.setter();
  v29 = v37;
  (*(v16 + 16))(v37, v18, v15);
  (*(v16 + 56))(v29, 0, 1, v15);
  UICollectionViewCell.backgroundConfiguration.setter();
  (*(v16 + 8))(v18, v15);
  return sub_100004F84(v14, &unk_100AE92D0);
}

uint64_t sub_100359A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[1] = a1;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for UIListContentConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.cell()();
  v12 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *(v13 + 8) = 0x4049000000000000;
  v12(v29, 0);
  v14 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *(v15 + 24) = 0x4049000000000000;
  v14(v29, 0);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 43;
  v16._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  v17 = *(a4 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry);
  if (v17 && (v18 = *(v17 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset)) != 0)
  {
    v19 = v18;
    v20 = sub_1001B4A00();

    v21 = *(v20 + 16);

    v22 = v21 - 3;
  }

  else
  {
    v22 = -3;
  }

  v29[0] = v22;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v23._countAndFlagsBits = 0x65726F6D20;
  v23._object = 0xE500000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  UIListContentConfiguration.text.setter();
  v24 = [objc_opt_self() secondaryLabelColor];
  v25 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v25(v29, 0);
  v29[3] = v8;
  v29[4] = &protocol witness table for UIListContentConfiguration;
  v26 = sub_10001A770(v29);
  (*(v9 + 16))(v26, v11, v8);
  UICollectionViewCell.contentConfiguration.setter();
  UICollectionViewCell.configurationUpdateHandler.setter();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100359DD8()
{
  v0 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = type metadata accessor for UIBackgroundConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIBackgroundConfiguration.clear()();
  if (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isFocused.getter())
  {
    v7 = [objc_opt_self() effectWithStyle:8];
    v8 = [objc_opt_self() effectForBlurEffect:v7 style:6];

    UIBackgroundConfiguration.visualEffect.setter();
    v9 = [objc_opt_self() whiteColor];
    UIBackgroundConfiguration.backgroundColor.setter();
  }

  (*(v4 + 16))(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  UICollectionViewCell.backgroundConfiguration.setter();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100359FEC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_1000065A8(0, &qword_100AD4D40);
  if (v4 == 1)
  {
    return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  v6 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_100034538(v3, v4);
  return v6;
}

uint64_t sub_10035A0D4()
{
  v1 = v0;
  *&v40 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100ADFBA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  sub_10035F5E0();
  NSDiffableDataSourceSectionSnapshot.init()();
  v9 = *(v0 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry);
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
    v11 = _swiftEmptyArrayStorage;
    if (v10)
    {
      v12 = v10;
      v13 = sub_1001B4A00();

      v14 = *(v13 + 16);
      if (v14)
      {
        v33 = v8;
        v34 = v1;
        v35 = v6;
        v36 = v5;
        *&v41 = _swiftEmptyArrayStorage;
        sub_100199FE4(0, v14, 0);
        v11 = v41;
        v16 = *(v2 + 16);
        v15 = v2 + 16;
        v17 = *(v15 + 64);
        v32 = v13;
        v18 = v13 + ((v17 + 32) & ~v17);
        v37 = *(v15 + 56);
        v38 = v16;
        v39 = v15;
        v19 = (v15 - 8);
        do
        {
          v20 = v40;
          v38(v4, v18, v40);
          v21 = VisitAssetMetadata.id.getter();
          v23 = v22;
          (*v19)(v4, v20);
          *&v41 = v11;
          v25 = *(v11 + 2);
          v24 = *(v11 + 3);
          if (v25 >= v24 >> 1)
          {
            sub_100199FE4((v24 > 1), v25 + 1, 1);
            v11 = v41;
          }

          *(v11 + 2) = v25 + 1;
          v26 = &v11[2 * v25];
          *(v26 + 4) = v21;
          *(v26 + 5) = v23;
          v18 += v37;
          --v14;
        }

        while (v14);

        v6 = v35;
        v5 = v36;
        v8 = v33;
        v1 = v34;
      }

      else
      {
      }
    }
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v27 = OBJC_IVAR____TtC7Journal26LocationListCollectionView_isCardView;
  if (*(v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_isCardView) == 1 && *(v11 + 2) > 3uLL)
  {
    sub_100610218(v11, (v11 + 4), 0, 7uLL);
  }

  else
  {
  }

  v40 = xmmword_1009510C0;
  v41 = xmmword_1009510C0;
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();

  v28 = *(v11 + 2);

  if (v28 >= 4 && *(v1 + v27) == 1)
  {
    v41 = v40;
    NSDiffableDataSourceSectionSnapshot.append(_:to:)();
  }

  v29 = *(v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_locationsDataSource);
  if (!v29)
  {
    return (*(v6 + 8))(v8, v5);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = v29;

  UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

  (*(v6 + 8))(v8, v5);
}

void sub_10035A4E4()
{
  v0 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v0 - 8);
  v2 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v20 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong indexPathsForSelectedItems];
    if (v8)
    {
      v9 = v8;
      v10 = type metadata accessor for IndexPath();
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = *(v11 + 16);

      if (!v12)
      {
        v13 = *&v7[OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation];
        if (v13)
        {
          v14 = (v13 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID);
          v15 = v14[1];
          if (v15)
          {
            v16 = *&v7[OBJC_IVAR____TtC7Journal26LocationListCollectionView_locationsDataSource];
            if (v16)
            {
              v20[1] = *v14;
              v20[2] = v15;

              v17 = v16;
              dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
            }

            else
            {
              (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
            }

            sub_1000082B4(v5, v2, &unk_100ADFB90);
            v18 = *(v10 - 8);
            if ((*(v18 + 48))(v2, 1, v10) == 1)
            {
              isa = 0;
            }

            else
            {
              isa = IndexPath._bridgeToObjectiveC()().super.isa;
              (*(v18 + 8))(v2, v10);
            }

            [v7 selectItemAtIndexPath:isa animated:1 scrollPosition:0];

            sub_100004F84(v5, &unk_100ADFB90);
          }
        }
      }
    }

    sub_10035A780();
  }
}

void sub_10035A780()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100ADFBA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC7Journal26LocationListCollectionView_locationsDataSource;
  v10 = *(v0 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_locationsDataSource);
  if (v10)
  {
    v11 = v10;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    (*(v3 + 32))(v8, v5, v2);
    NSDiffableDataSourceSnapshot.reloadSections(_:)(&off_100A58CA8);
    v14 = xmmword_100945C40;
    NSDiffableDataSourceSnapshot.sectionIdentifier(containingItem:)();
    if ((v15 & 1) == 0)
    {
      NSDiffableDataSourceSnapshot.reconfigureItems(_:)(&off_100A58CD0);
    }

    v12 = *(v1 + v9);
    if (v12)
    {
      v13 = v12;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
    }

    (*(v3 + 8))(v8, v2);
  }
}

void sub_10035A934()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10035F0D8();
  }
}

void sub_10035A990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10035C7D4(a3);
  }
}

uint64_t sub_10035A9EC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_10035AA78([a1 presentationSourceItem], a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10035AA78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for VisitAssetMetadata();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry;
  v13 = *&v3[OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry];
  if (!v13)
  {
    return;
  }

  v14 = *(v13 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
  if (!v14)
  {
    return;
  }

  v43 = v6;
  v44 = a1;
  v45 = v14;
  v15 = sub_100076E78();
  v42 = a2;
  if (v16)
  {
    goto LABEL_9;
  }

  if (v15 != 1)
  {
    goto LABEL_9;
  }

  v17 = *&v3[v12];
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v19 = *(v17 + v18);
  if (v19 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() != 1)
    {
      goto LABEL_9;
    }
  }

  else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
LABEL_9:
    v20 = sub_100076E78();
    if ((v21 & 1) == 0 && v20 == 1)
    {
      v22 = *&v3[v12];
      if (v22)
      {
        v23 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
        swift_beginAccess();
        if (*(v22 + v23) >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }
      }
    }

    goto LABEL_14;
  }

  if (v3[OBJC_IVAR____TtC7Journal26LocationListCollectionView_entryIsDeletable])
  {
    goto LABEL_9;
  }

LABEL_14:
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v41 = String.init(localized:table:bundle:locale:comment:)();
  v24 = String._bridgeToObjectiveC()();

  v25 = [objc_opt_self() alertControllerWithTitle:0 message:v24 preferredStyle:0];

  v26 = v43;
  (*(v7 + 16))(&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v42, v43);
  v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v28 = swift_allocObject();
  v29 = v9;
  v30 = v45;
  *(v28 + 16) = v3;
  *(v28 + 24) = v30;
  (*(v7 + 32))(v28 + v27, v29, v26);
  v45 = v30;
  v43 = v3;
  v31 = String._bridgeToObjectiveC()();

  v50 = sub_10035F468;
  v51 = v28;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_10016B4D8;
  v49 = &unk_100A69078;
  v32 = _Block_copy(&aBlock);

  v33 = objc_opt_self();
  v34 = [v33 actionWithTitle:v31 style:2 handler:v32];
  _Block_release(v32);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v35 = String._bridgeToObjectiveC()();

  v50 = DebugData.init(name:);
  v51 = 0;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_10016B4D8;
  v49 = &unk_100A690A0;
  v36 = _Block_copy(&aBlock);

  v37 = [v33 actionWithTitle:v35 style:1 handler:v36];
  _Block_release(v36);

  [v25 addAction:v34];
  [v25 addAction:v37];
  v38 = [v25 popoverPresentationController];
  [v38 setSourceItem:v44];

  v39 = UIView.viewControllerForPresenting.getter();
  if (v39)
  {
    v40 = v39;
    [v39 presentViewController:v25 animated:1 completion:0];
  }
}

uint64_t sub_10035B22C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for VisitAssetMetadata();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(v9, a4, v6);
  type metadata accessor for MainActor();

  v15 = a3;
  v16 = static MainActor.shared.getter();
  v17 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = v14;
  *(v18 + 5) = v15;
  (*(v7 + 32))(&v18[v17], v9, v6);

  sub_1003E9628(0, 0, v12, &unk_1009512E0, v18);
}

uint64_t sub_10035B46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v6[8] = type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[10] = v8;
  v6[11] = v7;

  return _swift_task_switch(sub_10035B50C, v8, v7);
}

uint64_t sub_10035B50C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (!Strong)
  {

LABEL_8:
    v10 = v0[1];

    return v10();
  }

  v2 = Strong;
  v3 = sub_100076E78();
  if ((v4 & 1) == 0 && v3 == 1)
  {
    v5 = *(v2 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry);
    v0[13] = v5;
    if (v5)
    {
      v6 = v0[9];

      if (v6)
      {
        swift_getObjectType();
        v7 = dispatch thunk of Actor.unownedExecutor.getter();
        v9 = v8;
      }

      else
      {
        v7 = 0;
        v9 = 0;
      }

      v0[14] = v7;
      v0[15] = v9;
      v20 = sub_10035B7E8;
      v21 = v7;
      goto LABEL_24;
    }

    if (sub_10011A350())
    {
      v16 = *(v0[12] + OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry);
      v0[24] = v16;
      if (v16)
      {

        v0[25] = static MainActor.shared.getter();
        v17 = dispatch thunk of Actor.unownedExecutor.getter();
        v19 = v18;
        v20 = sub_10035C370;
        v21 = v17;
        v9 = v19;
LABEL_24:

        return _swift_task_switch(v20, v21, v9);
      }
    }

    v22 = v0[12] + OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapCellDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 8);
      ObjectType = swift_getObjectType();
      (*(v23 + 8))(ObjectType, v23);
      swift_unknownObjectRelease();
    }

    v25 = swift_unknownObjectWeakLoadStrong();
    v26 = v0[12];
    if (v25)
    {
      v27 = *(v22 + 8);
      v28 = swift_getObjectType();
      (*(v27 + 24))(v28, v27);
      swift_unknownObjectRelease();
    }

    goto LABEL_8;
  }

  v12 = VisitAssetMetadata.id.getter();
  v14 = v13;
  v0[18] = v13;

  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_10035BB5C;

  return sub_1001B38D8(v12, v14);
}

uint64_t sub_10035B7E8()
{
  v1 = v0[9];
  v2 = v0[6];
  sub_1000F24EC(&unk_100AE1A40);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  (*(v4 + 16))(v6 + v5, v2 + OBJC_IVAR____TtC7Journal5Asset_id, v3);
  v7 = sub_1004960D4(v6);
  v0[16] = v7;
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_10035B9A8;

  return sub_10056824C(v1, &protocol witness table for MainActor, v7);
}

uint64_t sub_10035B9A8()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_10035BAEC, v3, v2);
}

uint64_t sub_10035BAEC()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_10035FB08, v1, v2);
}

uint64_t sub_10035BB5C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  if (v2)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v1 + 160) = v3;
  *(v1 + 168) = v5;

  return _swift_task_switch(sub_10035BCA8, v3, v5);
}

uint64_t sub_10035BCA8()
{
  v1 = v0[6];
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v4 = result;
    v5 = v0[9];
    v6 = v1;
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_10035BD9C;

    return sub_10078BBDC(v5, &protocol witness table for MainActor, ObjectType, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10035BD9C()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_10035BEBC, v3, v2);
}

uint64_t sub_10035BEBC()
{
  v1 = *(v0 + 72);

  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_10035BF7C;

  return (sub_1001DA5A8)(v1, &protocol witness table for MainActor);
}

uint64_t sub_10035BF7C()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_10035C09C, v3, v2);
}

uint64_t sub_10035C09C()
{
  if (qword_100ACFCB0 != -1)
  {
    swift_once();
  }

  sub_10044BE48(v0[6] + OBJC_IVAR____TtC7Journal5Asset_id);
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFA8 != -1)
  {
    swift_once();
  }

  v2 = qword_100B2FB98;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 postNotificationName:v2 object:isa];

  v4 = v0[10];
  v5 = v0[11];

  return _swift_task_switch(sub_10035C1F0, v4, v5);
}

uint64_t sub_10035C1F0()
{
  if ((sub_10011A350() & 1) != 0 && (v1 = *(v0[12] + OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry), (v0[24] = v1) != 0))
  {

    v0[25] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10035C370, v3, v2);
  }

  else
  {

    v4 = v0[12] + OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapCellDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = v0[12];
    if (Strong)
    {
      v9 = *(v4 + 8);
      v10 = swift_getObjectType();
      (*(v9 + 24))(v10, v9);
      swift_unknownObjectRelease();
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10035C370()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[24];
  if (Strong)
  {
    v3 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    v5 = sub_1004959AC(&off_100A58D00);
    (*(v3 + 8))(v2, v5, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = v0[10];
  v7 = v0[11];

  return _swift_task_switch(sub_10035C450, v6, v7);
}

uint64_t sub_10035C450()
{

  v1 = *(v0 + 96) + OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapCellDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v0 + 96);
  if (Strong)
  {
    v6 = *(v1 + 8);
    v7 = swift_getObjectType();
    (*(v6 + 24))(v7, v6);
    swift_unknownObjectRelease();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10035C540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10035C5D8, v6, v5);
}

uint64_t sub_10035C5D8()
{
  v1 = v0[3];
  v2 = v0[2];

  *v2 = [v1 openInMapsWithLaunchOptions:0];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10035C654(uint64_t a1, double a2, double a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10035C6F0, v5, v4);
}

uint64_t sub_10035C6F0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v0 + 2);

  v4 = [objc_allocWithZone(CLLocation) initWithLatitude:v2 longitude:v1];
  v5 = [objc_allocWithZone(MKMapItem) initWithLocation:v4 address:0];

  LOBYTE(v4) = [v5 openInMapsWithLaunchOptions:0];
  *v3 = v4;
  v6 = *(v0 + 1);

  return v6();
}

void sub_10035C7D4(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v76 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v75 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v6 - 8);
  v74 = &v60 - v7;
  v8 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v8 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  type metadata accessor for LocationPickerEditController();
  v73 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = VisitAssetMetadata.latitude.getter();
  v15 = 0.0;
  v16 = 0.0;
  if ((v17 & 1) == 0)
  {
    v18 = *&v14;
    v19 = COERCE_DOUBLE(VisitAssetMetadata.longitude.getter());
    if (v20)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v18;
    }

    if (v20)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v19;
    }
  }

  v21 = VisitAssetMetadata.id.getter();
  v68 = v22;
  v69 = v21;
  v23 = VisitAssetMetadata.placeName.getter();
  v66 = v24;
  v67 = v23;
  v63 = VisitAssetMetadata.city.getter();
  v62 = v25;
  v65 = VisitAssetMetadata.typeOfPlace.getter();
  v64 = v26;
  v27 = type metadata accessor for Date();
  v28 = *(*(v27 - 8) + 56);
  v28(v13, 1, 1, v27);
  VisitAssetMetadata.createdDate.getter();
  v70 = sub_100579A18();
  v71 = type metadata accessor for StyledMKPointAnnotation();
  v29 = objc_allocWithZone(v71);
  v30 = &v29[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v29[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_placeName];
  *v31 = 0;
  v31[1] = 0;
  v32 = &v29[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_city];
  *v32 = 0;
  v32[1] = 0;
  v72 = a1;
  v61 = v10;
  v33 = &v29[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_typeOfPlace];
  *v33 = 0;
  v33[1] = 0;
  v78 = v13;
  v34 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitStartTime;
  v28(&v29[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitStartTime], 1, 1, v27);
  v35 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_createdDate;
  v28(&v29[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_createdDate], 1, 1, v27);
  v36 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_styleAttributes;
  *&v29[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_styleAttributes] = 0;
  v37 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_entryIds;
  *&v29[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_entryIds] = 0;
  v38 = v68;
  *v30 = v69;
  v30[1] = v38;
  v39 = v66;
  *v31 = v67;
  v31[1] = v39;
  v40 = v62;
  *v32 = v63;
  v32[1] = v40;

  v41 = v64;
  *v33 = v65;
  v33[1] = v41;

  swift_beginAccess();
  sub_100221D8C(v78, &v29[v34]);
  swift_endAccess();
  swift_beginAccess();
  v42 = v61;
  sub_100221D8C(v61, &v29[v35]);
  swift_endAccess();
  v43 = *&v29[v36];
  v44 = v70;
  *&v29[v36] = v70;
  v45 = v44;

  *&v29[v37] = &_swiftEmptySetSingleton;

  v79.receiver = v29;
  v79.super_class = v71;
  v46 = objc_msgSendSuper2(&v79, "init");
  [v46 setCoordinate:{v15, v16}];

  sub_100004F84(v42, &unk_100AD4790);
  sub_100004F84(v78, &unk_100AD4790);
  v47 = v77;
  v48 = *(v77 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation);
  *(v77 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation) = v46;
  v49 = v46;
  sub_100357110(v48);

  v50 = type metadata accessor for VisitAssetMetadata();
  v51 = *(v50 - 8);
  v52 = v74;
  (*(v51 + 16))(v74, v72, v50);
  (*(v51 + 56))(v52, 0, 1, v50);
  v53 = v73;
  sub_100825FCC(v52);
  *&v53[OBJC_IVAR____TtC7Journal28LocationPickerEditController_journalEntry] = *(v47 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry);

  *&v53[OBJC_IVAR____TtC7Journal28LocationPickerEditController_pickerDelegate + 8] = &off_100A68FD8;
  swift_unknownObjectWeakAssign();
  v54 = v53;
  v55 = [v54 navigationItem];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v56 = String._bridgeToObjectiveC()();

  [v55 setTitle:v56];

  v57 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v54];
  v58 = UIView.viewControllerForPresenting.getter();
  if (v58)
  {
    v59 = v58;
    [v58 presentViewController:v57 animated:1 completion:0];
  }
}

uint64_t sub_10035CE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[8] = v9;
  v7[9] = v8;

  return _swift_task_switch(sub_10035CF14, v9, v8);
}

uint64_t sub_10035CF14()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry;
  v0[10] = OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry;
  v3 = *(v1 + v2);
  if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset), (v0[11] = v4) != 0))
  {
    v5 = v0[7];

    v4;
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_10035D068;
    v7 = v0[4];
    v8 = v0[5];
    v9 = v0[3];

    return sub_1001B3EE4(v5, &protocol witness table for MainActor, v9, v7, v8);
  }

  else
  {

    v11 = v0[2];
    sub_10035A0D4();
    v12 = *(v11 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation);
    *(v11 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation) = 0;
    sub_100357110(v12);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10035D068()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10035D1AC, v3, v2);
}

uint64_t sub_10035D1AC()
{
  v1 = *(v0[2] + v0[10]);
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[7];

    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_10035D36C;

    return sub_10077E5EC(v2, &protocol witness table for MainActor);
  }

  else if ((sub_10011A350() & 1) != 0 && (v5 = *(v0[2] + v0[10]), (v0[15] = v5) != 0))
  {

    v0[16] = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10035D5E0, v7, v6);
  }

  else
  {
    v8 = v0[11];

    v9 = v0[2];
    sub_10035A0D4();
    v10 = *(v9 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation);
    *(v9 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation) = 0;
    sub_100357110(v10);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10035D36C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10035D4CC, v3, v2);
}

uint64_t sub_10035D4CC()
{
  if ((sub_10011A350() & 1) != 0 && (v1 = *(v0[2] + v0[10]), (v0[15] = v1) != 0))
  {

    v0[16] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10035D5E0, v3, v2);
  }

  else
  {
    v4 = v0[11];

    v5 = v0[2];
    sub_10035A0D4();
    v6 = *(v5 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation);
    *(v5 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation) = 0;
    sub_100357110(v6);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10035D5E0()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[15];
  if (Strong)
  {
    v3 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    v5 = sub_1004959AC(&off_100A58D28);
    (*(v3 + 8))(v2, v5, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = v0[8];
  v7 = v0[9];

  return _swift_task_switch(sub_10035D6C0, v6, v7);
}

uint64_t sub_10035D6C0()
{
  v1 = v0[11];

  v2 = v0[2];
  sub_10035A0D4();
  v3 = *(v2 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation);
  *(v2 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation) = 0;
  sub_100357110(v3);

  v4 = v0[1];

  return v4();
}

id sub_10035D77C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationListCollectionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10035D968(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10035D98C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10035D9E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_10035DA44(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_10035DA98()
{
  result = qword_100ADFB70;
  if (!qword_100ADFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFB70);
  }

  return result;
}

unint64_t sub_10035DAF0()
{
  result = qword_100ADFB78;
  if (!qword_100ADFB78)
  {
    sub_1000F2A18(&qword_100ADFB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFB78);
  }

  return result;
}

unint64_t sub_10035DB58()
{
  result = qword_100ADFB88;
  if (!qword_100ADFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFB88);
  }

  return result;
}

uint64_t sub_10035DBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for AssetPlacement();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[10] = v10;
  v7[11] = v9;

  return _swift_task_switch(sub_10035DCA4, v10, v9);
}

uint64_t sub_10035DCA4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];

  *v1 = static AssetPlacement.maxGridCount.getter();
  (*(v4 + 104))(v1, enum case for AssetPlacement.grid(_:), v3);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_10035DDA8;
  v6 = v0[8];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_10044C1DC(v2, &protocol witness table for MainActor, v9, v7, v8, v6, 1);
}

uint64_t sub_10035DDA8()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_10035DF48, v6, v5);
}

uint64_t sub_10035DF48()
{

  sub_10035A0D4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10035DFD0(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry))
  {

    sub_10003A464();
  }

  sub_10035A0D4();
  sub_10035A780();
  [a1 dismissViewControllerAnimated:1 completion:0];
  v3 = *(v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation);
  *(v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation) = 0;
  sub_100357110(v3);

  v4 = v1 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapCellDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10035E0C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  v5 = type metadata accessor for VisitAssetMetadata();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v48 = &v48 - v10;
  v11 = type metadata accessor for AssetSource();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 presentingViewController];
  if (v16)
  {
    v17 = v16;
    [v16 dismissViewControllerAnimated:1 completion:0];
  }

  v18 = OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation;
  if (*&v2[OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation] || (v29 = OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry, (v30 = *&v2[OBJC_IVAR____TtC7Journal26LocationListCollectionView_journalEntry]) == 0))
  {
    (*(v12 + 104))(v15, enum case for AssetSource.locationPicker(_:), v11);
    (*(v6 + 16))(v8, v49, v5);
    v19 = sub_100579F84(v15, v8);
    v20 = *&v3[v18];
    if (v20)
    {
      v21 = *&v20[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID + 8];
      if (v21)
      {
        v22 = *&v20[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID];
        v23 = type metadata accessor for TaskPriority();
        v24 = v48;
        (*(*(v23 - 8) + 56))(v48, 1, 1, v23);
        type metadata accessor for MainActor();
        v25 = v3;

        v26 = v19;
        v27 = static MainActor.shared.getter();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = &protocol witness table for MainActor;
        v28[4] = v25;
        v28[5] = v22;
        v28[6] = v21;
        v28[7] = v26;
        sub_1003E9628(0, 0, v24, &unk_1009512B0, v28);

        v20 = *&v3[v18];
      }
    }

    *&v3[v18] = 0;
    sub_100357110(v20);
  }

  else
  {
    (*(v12 + 104))(v15, enum case for AssetSource.locationPicker(_:), v11);
    sub_1000F24EC(&qword_100AD64A8);
    v31 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100940080;
    (*(v6 + 16))(v32 + v31, v49, v5);

    v33 = sub_10011CEC0(v15, v32);
    v34 = *&v3[v29];
    v35 = v30;
    if (v34)
    {
      v36 = *(v34 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
      v37 = v36;
    }

    else
    {
      v36 = 0;
    }

    v38 = type metadata accessor for TaskPriority();
    v39 = v48;
    (*(*(v38 - 8) + 56))(v48, 1, 1, v38);
    type metadata accessor for MainActor();
    v40 = v36;
    v41 = v3;

    v20 = v33;
    v42 = static MainActor.shared.getter();
    v43 = swift_allocObject();
    v43[2] = v42;
    v43[3] = &protocol witness table for MainActor;
    v43[4] = v20;
    v43[5] = v35;
    v43[6] = v36;
    v43[7] = v41;
    sub_1003E9628(0, 0, v39, &unk_1009512C8, v43);
  }

  v44 = &v3[OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapCellDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 1);
    ObjectType = swift_getObjectType();
    (*(v46 + 24))(ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10035E5E4(uint64_t a1)
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
  v10[1] = sub_100032ECC;

  return sub_10035CE74(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10035E6B8(uint64_t a1)
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
  v10[1] = sub_100032EC8;

  return sub_10035DBAC(a1, v4, v5, v6, v7, v9, v8);
}

void *sub_10035E78C(uint64_t a1)
{
  v73 = a1;
  v67 = type metadata accessor for UIButton.Configuration.Indicator();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for UIButton.Configuration();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v54 - v5;
  v6 = type metadata accessor for VisitAssetMetadata();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v58 = sub_1000065A8(0, &qword_100AD4420);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v59 = v12;
  v60 = v11;
  v13 = String._bridgeToObjectiveC()();
  v57 = objc_opt_self();
  v14 = [v57 systemImageNamed:v13];

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = *(v7 + 16);
  v72 = v7 + 16;
  v74 = v16;
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v6;
  v16(v55, a1, v6);
  v71 = *(v7 + 80);
  v17 = (v71 + 24) & ~v71;
  v56 = v8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v19 = *(v7 + 32);
  v69 = v7 + 32;
  v70 = v19;
  v19(v18 + v17, &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v60 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v59 = String.init(localized:table:bundle:locale:comment:)();
  v54 = v20;
  v21 = String._bridgeToObjectiveC()();
  v22 = v57;
  v23 = [v57 systemImageNamed:v21];

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v55;
  v26 = v68;
  v74(v55, v73, v68);
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  v70(v27 + v17, v25, v26);
  v59 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v28 = String._bridgeToObjectiveC()();
  v29 = [v22 systemImageNamed:v28];

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v68;
  v74(v25, v73, v68);
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  v70(v32 + v17, v25, v31);
  v33 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1000065A8(0, &unk_100AD4D00);
  sub_1000F24EC(&unk_100AD4780);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100941D50;
  v35 = v60;
  *(v34 + 32) = v60;
  v74 = v35;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v75.value.super.isa = 0;
  v75.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v36, 0, v75, 1, 0xFFFFFFFFFFFFFFFFLL, v34, v52).super.super.isa;
  v38 = v61;
  static UIButton.Configuration.borderless()();
  v39 = String._bridgeToObjectiveC()();
  v40 = [v22 systemImageNamed:v39];

  UIButton.Configuration.image.setter();
  (*(v65 + 104))(v63, enum case for UIButton.Configuration.Indicator.none(_:), v67);
  UIButton.Configuration.indicator.setter();
  sub_1000065A8(0, &qword_100ADFC10);
  v41 = v64;
  v42 = v66;
  (*(v64 + 16))(v62, v38, v66);
  v43 = UIButton.init(configuration:primaryAction:)();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100941D70;
  v45 = v59;
  *(v44 + 32) = v59;
  *(v44 + 40) = v33;
  *(v44 + 48) = isa;
  v46 = v45;
  v47 = v33;
  v48 = isa;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v76.value.super.isa = 0;
  v76.is_nil = 0;
  v50 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v49, 0, v76, 0, 0xFFFFFFFFFFFFFFFFLL, v44, v53).super.super.isa;
  [v43 setMenu:v50];
  [v43 setShowsMenuAsPrimaryAction:1];

  (*(v41 + 8))(v38, v42);
  return v43;
}

void sub_10035F0D8()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v21 - v1;
  v3 = VisitAssetMetadata.mapItemData.getter();
  if (v4 >> 60 == 15 || (v5 = v3, v6 = v4, sub_1000065A8(0, &qword_100AD5A90), v7 = static NSCoding<>.create(from:)(), sub_10003A5C8(v5, v6), !v7))
  {
    v12 = VisitAssetMetadata.latitude.getter();
    if ((v13 & 1) == 0)
    {
      v14 = v12;
      v15 = VisitAssetMetadata.longitude.getter();
      if ((v16 & 1) == 0)
      {
        v17 = v15;
        v18 = type metadata accessor for TaskPriority();
        (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
        type metadata accessor for MainActor();
        v19 = static MainActor.shared.getter();
        v20 = swift_allocObject();
        v20[2] = v19;
        v20[3] = &protocol witness table for MainActor;
        v20[4] = v14;
        v20[5] = v17;
        sub_1003E9E90(0, 0, v2, &unk_100951338, v20);
      }
    }
  }

  else
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = v7;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    sub_1003E9E90(0, 0, v2, &unk_100951348, v11);
  }
}

void sub_10035F334()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_locationsDataSource);
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if (v11 == 1)
    {
      v7 = v2 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapCellDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 8);
        ObjectType = swift_getObjectType();
        (*(v8 + 16))(0, 0, ObjectType, v8);
        swift_unknownObjectRelease();
      }
    }

    else if (v11 != 2)
    {
      v4 = v2 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_fullScreenMapCellDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 8);
        v6 = swift_getObjectType();
        (*(v5 + 16))(v10, v11, v6, v5);
        swift_unknownObjectRelease();
      }

      sub_10035F458(v10, v11);
    }
  }
}

uint64_t sub_10035F458(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_100034538(a1, a2);
  }

  return a1;
}

uint64_t sub_10035F468(uint64_t a1)
{
  v3 = *(type metadata accessor for VisitAssetMetadata() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10035B22C(a1, v4, v5, v6);
}

uint64_t sub_10035F4DC(uint64_t a1)
{
  v4 = *(type metadata accessor for VisitAssetMetadata() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032EC8;

  return sub_10035B46C(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_10035F5E0()
{
  result = qword_100ADFBB0;
  if (!qword_100ADFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFBB0);
  }

  return result;
}

uint64_t sub_10035F64C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000F24EC(&unk_100ADFBB8);

  return sub_100359FEC(a1, a2, a3);
}

unint64_t sub_10035F710()
{
  result = qword_100ADFBD0;
  if (!qword_100ADFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFBD0);
  }

  return result;
}

uint64_t sub_10035F764(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for VisitAssetMetadata() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100359418(a1, a2, v6);
}

uint64_t sub_10035F814()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10035F8F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for VisitAssetMetadata() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_10035F978(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100032EC8;

  return sub_10035C654(a1, v4, v5);
}

uint64_t sub_10035FA38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10035C540(a1, v4, v5, v6);
}

uint64_t sub_10035FB50()
{
  v1 = [v0 arrangedSubviews];
  sub_1000065A8(0, &qword_100ADC670);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;

        v10 = [v9 isEnabled];

        return v10;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 1;
}

void sub_10035FD00(char a1)
{
  v3 = [v1 arrangedSubviews];
  sub_1000065A8(0, &qword_100ADC670);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v9 setEnabled:a1 & 1];
    }
  }

LABEL_12:
}

id sub_10035FEFC()
{
  v2.receiver = v0;
  v2.super_class = _s21MacBorderedCustomViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10035FF58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v24[-v9];
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  static UIButton.Configuration.bordered()();

  UIButton.Configuration.title.setter();
  sub_1000065A8(0, &qword_100ADFC10);
  (*(v5 + 16))(v8, v10, v4);
  v13 = UIButton.init(configuration:primaryAction:)();
  [v13 setRole:2];
  [v13 addTarget:a1 action:a2 forControlEvents:0x2000];
  v14 = v13;
  v15 = [v14 widthAnchor];
  v16 = [v15 constraintGreaterThanOrEqualToConstant:72.0];

  [v16 setActive:1];
  _s21MacBorderedCustomViewCMa();
  sub_1000F24EC(&unk_100AD4780);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100941D50;
  *(v17 + 32) = v14;
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1000065A8(0, &qword_100ADC670);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v18 initWithArrangedSubviews:isa];

  v21 = v20;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setAlignment:3];
  v22 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v21];

  [v22 _setPrefersNoPlatter:1];

  (*(v5 + 8))(v10, v4);
  return v22;
}

id sub_10036032C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v24[-v9];
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  static UIButton.Configuration.bordered()();

  UIButton.Configuration.title.setter();
  sub_1000065A8(0, &qword_100ADFC10);
  (*(v5 + 16))(v8, v10, v4);
  v13 = UIButton.init(configuration:primaryAction:)();
  [v13 setRole:1];
  [v13 addTarget:a1 action:a2 forControlEvents:0x2000];
  v14 = v13;
  v15 = [v14 widthAnchor];
  v16 = [v15 constraintGreaterThanOrEqualToConstant:72.0];

  [v16 setActive:1];
  _s21MacBorderedCustomViewCMa();
  sub_1000F24EC(&unk_100AD4780);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100941D50;
  *(v17 + 32) = v14;
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1000065A8(0, &qword_100ADC670);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v18 initWithArrangedSubviews:isa];

  v21 = v20;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setAlignment:3];
  v22 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v21];

  [v22 _setPrefersNoPlatter:1];

  (*(v5 + 8))(v10, v4);
  return v22;
}

uint64_t sub_1003606FC()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100005508();
  static DispatchQoS.default.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100B2F858 = result;
  return result;
}

uint64_t sub_1003608AC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADFC48);
  v1 = sub_10000617C(v0, qword_100ADFC48);
  if (qword_100AD0228 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30118);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100360974()
{

  return v0;
}

uint64_t sub_1003609A4()
{
  sub_100360974();

  return swift_deallocClassInstance();
}

uint64_t sub_1003609D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100193984(a1, &v20);
  if (!v21)
  {
    return sub_10019385C(&v20);
  }

  sub_100018480(&v20, v23);
  v5 = v24;
  v6 = v25;
  sub_10000CA14(v23, v24);
  if (sub_10029B2BC(v5, v6))
  {
    v7 = v24;
    v8 = v25;
    sub_10000CA14(v23, v24);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    (*(a3 + 88))(&v20, a2, a3);
    v12 = v21;
    if (v21)
    {
      v13 = v22;
      sub_10000CA14(&v20, v21);
      v14 = (*(v13 + 8))(v12, v13);
      v16 = v15;
      sub_10000BA7C(&v20);
      if (v9 == v14 && v11 == v16)
      {

        return sub_10000BA7C(v23);
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        return sub_10000BA7C(v23);
      }
    }

    else
    {
      sub_10019385C(&v20);
    }

    (*(a3 + 96))(v23, a2, a3);
  }

  return sub_10000BA7C(v23);
}

uint64_t sub_100360BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 24))(&v9, ObjectType, a2);
  if (v10)
  {
    sub_100018480(&v9, v11);
    (*(a4 + 96))(v11, a3, a4);
    return sub_10000BA7C(v11);
  }

  else
  {
    sub_10019385C(&v9);
    return (*(a4 + 128))(a3, a4);
  }
}

uint64_t sub_100360C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 96))();
  v5 = *(a3 + 120);

  return v5(a2, a3);
}

uint64_t sub_100360CE4(uint64_t a1, uint64_t a2, double a3)
{
  v5 = (*(a2 + 40))() + a3;
  v6.n128_f64[0] = (*(*(a2 + 16) + 24))(a1);
  if (v6.n128_f64[0] >= v5)
  {
    v6.n128_f64[0] = v5;
  }

  return (*(a2 + 160))(a1, a2, v6);
}

uint64_t sub_100360D8C(uint64_t a1, uint64_t a2, double a3)
{
  v5.n128_f64[0] = (*(a2 + 40))() - a3;
  if (v5.n128_f64[0] <= 0.0)
  {
    v5.n128_f64[0] = 0.0;
  }

  v6 = *(a2 + 160);

  return v6(a1, a2, v5);
}

void *sub_100360E1C(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v9[1] = sub_100005508();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = 0;
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10001DD40(&qword_100AD1500, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F24EC(&qword_100AD1508);
  sub_10001F408(&qword_100AD1510, &qword_100AD1508);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  v2[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v2;
}

uint64_t sub_100361068(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 40);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_100361C24;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A69460;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10001DD40(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_10001F408(&qword_100AD1530, &unk_100AD6220);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_100361338(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  if (a1[2])
  {
    v9 = a1[3];
    a1[3] = a2;
    a1[4] = a3;

    return sub_100004DF8(v9);
  }

  else
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = a1;

    a1[2] = sub_1003E9628(0, 0, v8, &unk_1009515C0, v12);
  }
}

uint64_t sub_1003614B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_1003615A8;

  return (v9)(0, 0);
}

uint64_t sub_1003615A8()
{

  return _swift_task_switch(sub_1003616A4, 0, 0);
}

uint64_t sub_1003616A4()
{
  sub_100361704();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100361704()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 40);
  aBlock[4] = sub_100361B54;
  v14 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A693E8;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_10001DD40(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_10001F408(&qword_100AD1530, &unk_100AD6220);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_1003619A4(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  a1[2] = 0;

  v6 = a1[3];
  if (v6)
  {
    v7 = a1[4];
    v8 = type metadata accessor for TaskPriority();
    a1[3] = 0;
    a1[4] = 0;
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v6;
    v9[5] = v7;
    v9[6] = a1;

    a1[2] = sub_1003E9628(0, 0, v4, &unk_1009515B8, v9);
  }

  return result;
}

uint64_t sub_100361AE8()
{

  sub_100004DF8(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_100361B5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_1003614B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100361C30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_1003614B4(a1, v4, v5, v6, v7, v8);
}

id sub_100361D00(int a1)
{
  v2 = v1;
  if (a1 && (v10 = v1, v4 = [v1 fontDescriptor], v5 = objc_msgSend(v10, "fontDescriptor"), v6 = objc_msgSend(v5, "symbolicTraits"), v5, v7 = objc_msgSend(v4, "fontDescriptorWithSymbolicTraits:", v6 | a1), v4, v2 = v10, v7))
  {
    v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];

    return v8;
  }

  else
  {

    return v2;
  }
}

unint64_t sub_100361E08(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10006F5AC(&qword_100AD4B40, &type metadata accessor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003628C8(a1, v2, &type metadata accessor for UUID, &qword_100AD9220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100361EDC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100362800(a1, v4);
}

unint64_t sub_100361F20(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100362B34(a1, v4, &unk_100AD2BF0);
}

unint64_t sub_100361F70(uint64_t a1)
{
  type metadata accessor for SidebarPreferences.Brick();
  sub_10006F5AC(&unk_100AD4B30, &type metadata accessor for SidebarPreferences.Brick);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003628C8(a1, v2, &type metadata accessor for SidebarPreferences.Brick, &qword_100AE0000, &type metadata accessor for SidebarPreferences.Brick, &protocol conformance descriptor for SidebarPreferences.Brick);
}

unint64_t sub_100362044(uint64_t a1)
{
  type metadata accessor for AssetType();
  sub_10006F5AC(&qword_100ADFEE0, &type metadata accessor for AssetType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003628C8(a1, v2, &type metadata accessor for AssetType, &qword_100ADC690, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
}

unint64_t sub_100362118(uint64_t a1)
{
  type metadata accessor for TokenTypeIdentifier();
  sub_10006F5AC(&qword_100AE0030, &type metadata accessor for TokenTypeIdentifier);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003628C8(a1, v2, &type metadata accessor for TokenTypeIdentifier, &qword_100ADB848, &type metadata accessor for TokenTypeIdentifier, &protocol conformance descriptor for TokenTypeIdentifier);
}

unint64_t sub_1003621EC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = Hasher._finalize()();

  return sub_100362A68(a1, a2, v4);
}

unint64_t sub_100362280(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100362B34(a1, v4, &qword_100AD43F0);
}

unint64_t sub_1003622D0(uint64_t a1)
{
  type metadata accessor for IndexPath();
  sub_10006F5AC(&qword_100AE0018, &type metadata accessor for IndexPath);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003628C8(a1, v2, &type metadata accessor for IndexPath, &unk_100AE0020, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
}

unint64_t sub_1003623D0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100362B34(a1, v4, &qword_100AD13A0);
}

unint64_t sub_100362420(int64_t a1)
{
  Hasher.init(_seed:)();
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }

LABEL_8:
    Hasher._combine(_:)(4uLL);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.hash(into:)();

    goto LABEL_12;
  }

  if (!a1)
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 1;
LABEL_11:
  Hasher._combine(_:)(v2);
LABEL_12:
  v3 = Hasher._finalize()();

  return sub_100362C78(a1, v3);
}