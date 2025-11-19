Swift::Bool __swiftcall NotificationRealTimeCheckManager.isUsingPrimaryJournalApp()()
{
  v48 = type metadata accessor for NSFastEnumerationIterator();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v1 = &v44[-((v0 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v46 = &v44[-v8];
  v9 = __chkstk_darwin(v7);
  v11 = &v44[-v10];
  __chkstk_darwin(v9);
  v13 = &v44[-v12];
  v49 = static EventStreams.currentBundleIdentifiers.getter();
  v56 = type metadata accessor for CommonLogger();
  static CommonLogger.notification.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v61 = v18;
    *v17 = 136446210;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001002AF960, &v61);
    _os_log_impl(&_mh_execute_header, v14, v15, "Notification real time check.%{public}s, fetching app bundle ID", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);

    v3 = v16;

    v19 = v16;
  }

  else
  {

    v19 = v3;
  }

  v57 = *(v19 + 8);
  v57(v13, v2);
  if ([v49 count] >= 1)
  {
    NSOrderedSet.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (!v62)
    {
      LOBYTE(v21) = 0;
      goto LABEL_33;
    }

    LODWORD(v21) = 0;
    v51 = "fetchLastVisit()";
    v54 = "isUsingPrimaryJournalApp()";
    v55 = v3 + 8;
    v53 = 0x80000001002AF920;
    *&v20 = 136446466;
    v50 = v20;
    v52 = 0xD000000000000011;
    while (1)
    {
      v45 = v21;
      while (1)
      {
        outlined init with take of Any(&v61, v60);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_10;
        }

        v24 = v58;
        v23 = v59;
        static CommonLogger.notification.getter();

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *&v60[0] = swift_slowAlloc();
          *v27 = v50;
          *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, v51 | 0x8000000000000000, v60);
          *(v27 + 12) = 2080;
          *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v60);
          _os_log_impl(&_mh_execute_header, v25, v26, "Notification real time check.%{public}s, current app: %s", v27, 0x16u);
          swift_arrayDestroy();
        }

        v57(v11, v2);
        if (one-time initialization token for defaults != -1)
        {
          swift_once();
        }

        v28 = static MOAngelDefaultsManager.defaults;
        if (static MOAngelDefaultsManager.defaults)
        {
          v29 = String._bridgeToObjectiveC()();
          v30 = [v28 stringForKey:v29];

          if (v30)
          {
            break;
          }
        }

        v33 = v53;
        if (v24 == v52)
        {
          goto LABEL_21;
        }

LABEL_8:
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_23;
        }

LABEL_10:
        NSFastEnumerationIterator.next()();
        if (!v62)
        {
          LOBYTE(v21) = v45;
          goto LABEL_33;
        }
      }

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      if (v24 != v31)
      {
        goto LABEL_8;
      }

LABEL_21:
      if (v23 != v33)
      {
        goto LABEL_8;
      }

LABEL_23:
      v34 = v46;
      static CommonLogger.notification.getter();

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *&v60[0] = swift_slowAlloc();
        *v37 = v50;
        *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, v51 | 0x8000000000000000, v60);
        *(v37 + 12) = 2080;
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v60);

        *(v37 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v35, v36, "Notification real time check.%{public}s, current app match with primary journal app: %s", v37, 0x16u);
        swift_arrayDestroy();

        v39 = v46;
      }

      else
      {

        v39 = v34;
      }

      v57(v39, v2);
      NSFastEnumerationIterator.next()();
      LODWORD(v21) = 1;
      if (!v62)
      {
LABEL_33:
        (*(v47 + 8))(v1, v48);

        return v21 & 1;
      }
    }
  }

  static CommonLogger.notification.getter();
  v21 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v61 = v42;
    *v41 = 136446210;
    *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001002AF960, &v61);
    _os_log_impl(&_mh_execute_header, v21, v40, "Notification real time check.%{public}s, no bundle ID fetched", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
  }

  v57(v6, v2);
  LOBYTE(v21) = 0;
  return v21 & 1;
}

uint64_t NotificationRealTimeCheckManager.primaryAppBundleID.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = 0xD000000000000011;
  v1 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 stringForKey:v2];

    if (v3)
    {
      v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  return v0;
}

uint64_t NotificationRealTimeCheckManager.isInWorkOutSessionBasedOnHealthKit()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = NotificationRealTimeCheckManager.isInWorkOutSessionBasedOnHealthKit();

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 24, 0, 0, 0xD000000000000024, 0x80000001002AF9A0, closure #1 in NotificationRealTimeCheckManager.isInWorkOutSessionBasedOnHealthKit(), 0, &type metadata for Bool);
}

{

  return _swift_task_switch(NotificationRealTimeCheckManager.isInWorkOutSessionBasedOnHealthKit(), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 24));
}

void closure #1 in NotificationRealTimeCheckManager.isInWorkOutSessionBasedOnHealthKit()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v6 = [objc_allocWithZone(HKHealthStore) init];
  v7 = [objc_allocWithZone(_HKWorkoutObserver) initWithHealthStore:v6];
  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = partial apply for closure #1 in closure #1 in NotificationRealTimeCheckManager.isInWorkOutSessionBasedOnHealthKit();
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed _HKCurrentWorkoutSnapshot?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_77;
  v10 = _Block_copy(aBlock);

  [v7 currentWorkoutSnapshotWithCompletion:v10];
  _Block_release(v10);
}

void closure #1 in closure #1 in NotificationRealTimeCheckManager.isInWorkOutSessionBasedOnHealthKit()(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v39 - v12;
  __chkstk_darwin(v11);
  v15 = v39 - v14;
  if (a2)
  {
    type metadata accessor for CommonLogger();
    swift_errorRetain();
    static CommonLogger.notification.getter();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v40 = v6;
      v41 = v19;
      *v18 = 136446466;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x80000001002AF9A0, &v41);
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v41);

      *(v18 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Notification real time check.%{public}s, hit error: %s) ", v18, 0x16u);
      swift_arrayDestroy();

      (*(v7 + 8))(v15, v40);
    }

    else
    {

      (*(v7 + 8))(v15, v6);
    }

    LOBYTE(v41) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
    CheckedContinuation.resume(returning:)();

    return;
  }

  if (a1)
  {
    v39[1] = a3;
    v23 = a1;
    if ([v23 sessionState] == 2 || objc_msgSend(v23, "sessionState") == 4 || objc_msgSend(v23, "sessionState") == 5 || objc_msgSend(v23, "sessionState") == 1)
    {
      type metadata accessor for CommonLogger();
      static CommonLogger.notification.getter();
      v24 = v23;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v39[0] = swift_slowAlloc();
        v41 = v39[0];
        *v27 = 136446466;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x80000001002AF9A0, &v41);
        *(v27 + 12) = 2080;
        v28 = v24;
        v40 = v6;
        v29 = v28;
        v30 = [v28 description];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v41);

        *(v27 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v25, v26, "Notification real time check.%{public}s, got workout snapshot: %s ", v27, 0x16u);
        swift_arrayDestroy();

        (*(v7 + 8))(v13, v40);
      }

      else
      {

        (*(v7 + 8))(v13, v6);
      }

      LOBYTE(v41) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
      CheckedContinuation.resume(returning:)();

      return;
    }
  }

  type metadata accessor for CommonLogger();
  static CommonLogger.notification.getter();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v37 = 136446210;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x80000001002AF9A0, &v41);
    _os_log_impl(&_mh_execute_header, v35, v36, "Notification real time check.%{public}s, no active workout is fetched) ", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  (*(v7 + 8))(v10, v6);
  LOBYTE(v41) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  CheckedContinuation.resume(returning:)();
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed _HKCurrentWorkoutSnapshot?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t NotificationRealTimeCheckManager.isInSessionBasedOnMotion()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(NotificationRealTimeCheckManager.isInSessionBasedOnMotion(), 0, 0);
}

{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = NotificationRealTimeCheckManager.isInSessionBasedOnMotion();

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD00000000000001ALL, 0x80000001002AF9D0, partial apply for closure #1 in NotificationRealTimeCheckManager.isInSessionBasedOnMotion(), v2, &type metadata for NotificationRealTimeCheckManager.MotionActivityEnum);
}

{

  return _swift_task_switch(NotificationRealTimeCheckManager.isInSessionBasedOnMotion(), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 40));
}

uint64_t closure #1 in NotificationRealTimeCheckManager.isInSessionBasedOnMotion()(uint64_t a1, void *a2)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy16MomentsUIService32NotificationRealTimeCheckManagerC18MotionActivityEnumOs5NeverOGMd);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - v5;
  v7 = type metadata accessor for Date();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  Date.init()();
  static DefaultsManager.Notifications.notificationRealTimeCheckWindow.getter();
  if (v14)
  {
    type metadata accessor for DefaultsManager();
    static DefaultsManager.getTrialDoubleValue(for:)();
  }

  Date.addingTimeInterval(_:)();
  v15 = objc_allocWithZone(MotionActivityQuery);
  v31 = v10;
  v30 = [v15 init];
  v29 = [objc_allocWithZone(NSOperationQueue) init];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v17 = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 16))(v6, a1, v3);
  v18 = v3;
  v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v20 = swift_allocObject();
  v21 = v32;
  *(v20 + 16) = v32;
  *(v20 + 24) = v13;
  (*(v4 + 32))(v20 + v19, v6, v18);
  aBlock[4] = partial apply for closure #1 in closure #1 in NotificationRealTimeCheckManager.isInSessionBasedOnMotion();
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [CMMotionActivity]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_71;
  v22 = _Block_copy(aBlock);
  v23 = v29;
  v24 = v21;

  v25 = v30;
  [v30 fetchMotionActivityBetweenStartDate:isa endDate:v17 toQueue:v23 handler:v22];
  _Block_release(v22);

  v26 = v34;
  v27 = *(v33 + 8);
  v27(v31, v34);
  v27(v12, v26);
}

double NotificationRealTimeCheckManager.notificationCheckWindow.getter()
{
  v0 = static DefaultsManager.Notifications.notificationRealTimeCheckWindow.getter();
  if (v1 & 1) != 0 && (type metadata accessor for DefaultsManager(), v0 = static DefaultsManager.getTrialDoubleValue(for:)(), (v2))
  {
    return 900.0;
  }

  else
  {
    return *&v0;
  }
}

uint64_t closure #1 in closure #1 in NotificationRealTimeCheckManager.isInSessionBasedOnMotion()(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65[2] = a5;
  v66 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v65 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = v65 - v16;
  __chkstk_darwin(v15);
  v19 = v65 - v18;
  if (a2)
  {
    type metadata accessor for CommonLogger();
    swift_errorRetain();
    static CommonLogger.notification.getter();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v68[0] = swift_slowAlloc();
      *v22 = 136446466;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001002AF9D0, v68);
      *(v22 + 12) = 2080;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v68);

      *(v22 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Notification real time check.%{public}s, error fetching motion activities: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v8 + 8))(v19, v7);
    goto LABEL_11;
  }

  if (!a1)
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.notification.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68[0] = v39;
      *v38 = 136446210;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001002AF9D0, v68);
      _os_log_impl(&_mh_execute_header, v36, v37, "Notification real time check.%{public}s, motion activity fetched is nil", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
    }

    (*(v8 + 8))(v11, v7);
    goto LABEL_11;
  }

  v26 = type metadata accessor for CommonLogger();
  static CommonLogger.notification.getter();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  v29 = a1 >> 62;
  if (os_log_type_enabled(v27, v28))
  {
    v65[1] = v26;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v68[0] = v31;
    *v30 = 136446466;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001002AF9D0, v68);
    *(v30 + 12) = 2048;
    if (v29)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v30 + 14) = v32;

    _os_log_impl(&_mh_execute_header, v27, v28, "Notification real time check.%{public}s, motion activity fetched count: %ld", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v31);

    v33 = *(v8 + 8);
    v33(v17, v7);
  }

  else
  {

    v33 = *(v8 + 8);
    v33(v17, v7);
  }

  if (v29)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_11;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
LABEL_11:
    v34 = v66;
    swift_beginAccess();
    v67 = *(v34 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy16MomentsUIService32NotificationRealTimeCheckManagerC18MotionActivityEnumOs5NeverOGMd);
    return CheckedContinuation.resume(returning:)();
  }

  v68[0] = specialized Array._copyToContiguousArray()(v40);
  specialized MutableCollection<>.sort(by:)(v68);
  v41 = v68[0];
  if ((v68[0] & 0x8000000000000000) == 0 && (v68[0] & 0x4000000000000000) == 0)
  {
    if (*(v68[0] + 16))
    {
      goto LABEL_21;
    }

LABEL_45:

    goto LABEL_11;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_45;
  }

LABEL_21:
  if ((v41 & 0xC000000000000001) != 0)
  {
    v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_24:
    v43 = v42;

    static CommonLogger.notification.getter();
    v44 = v43;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v68[0] = v49;
      *v47 = 136446466;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001002AF9D0, v68);
      *(v47 + 12) = 2112;
      *(v47 + 14) = v44;
      *v48 = v44;
      v50 = v44;
      _os_log_impl(&_mh_execute_header, v45, v46, "Notification real time check.%{public}s, latest motion activity %@", v47, 0x16u);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v48, &_sSo8NSObjectCSgMd);

      __swift_destroy_boxed_opaque_existential_0(v49);
    }

    v33(v14, v7);
    v51 = v44;
    [v51 timestamp];
    v53 = v52;
    v54 = COERCE_DOUBLE(static DefaultsManager.Notifications.notificationRealTimeCheckMotionWorkoutDurationThreshold.getter());
    if (v55 & 1) != 0 && (type metadata accessor for DefaultsManager(), v54 = COERCE_DOUBLE(static DefaultsManager.getTrialDoubleValue(for:)()), (v56))
    {
      if (v53 < 600.0)
      {
        goto LABEL_31;
      }
    }

    else if (v53 < v54)
    {
      goto LABEL_31;
    }

    if (([v51 walking] & 1) != 0 || (objc_msgSend(v51, "running") & 1) != 0 || objc_msgSend(v51, "cycling"))
    {

      v64 = v66;
      swift_beginAccess();
      *(v64 + 16) = 1;
      goto LABEL_11;
    }

LABEL_31:
    [v51 timestamp];
    v58 = v57;

    v59 = COERCE_DOUBLE(static DefaultsManager.Notifications.notificationRealTimeCheckMotionAutomotiveDurationThreshold.getter());
    if (v60 & 1) != 0 && (type metadata accessor for DefaultsManager(), v59 = COERCE_DOUBLE(static DefaultsManager.getTrialDoubleValue(for:)()), (v61))
    {
      if (v58 >= 300.0)
      {
        goto LABEL_34;
      }
    }

    else if (v58 >= v59)
    {
LABEL_34:
      v62 = [v51 automotive];

      if (v62)
      {
        v63 = v66;
        swift_beginAccess();
        *(v63 + 16) = 2;
      }

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (*(v41 + 16))
  {
    v42 = *(v41 + 32);
    goto LABEL_24;
  }

  __break(1u);

  __break(1u);
  return result;
}

double NotificationRealTimeCheckManager.motionWorkoutDurationThreshold.getter()
{
  v0 = static DefaultsManager.Notifications.notificationRealTimeCheckMotionWorkoutDurationThreshold.getter();
  if (v1 & 1) != 0 && (type metadata accessor for DefaultsManager(), v0 = static DefaultsManager.getTrialDoubleValue(for:)(), (v2))
  {
    return 600.0;
  }

  else
  {
    return *&v0;
  }
}

double NotificationRealTimeCheckManager.motionAutomotiveDurationThreshold.getter()
{
  v0 = static DefaultsManager.Notifications.notificationRealTimeCheckMotionAutomotiveDurationThreshold.getter();
  if (v1 & 1) != 0 && (type metadata accessor for DefaultsManager(), v0 = static DefaultsManager.getTrialDoubleValue(for:)(), (v2))
  {
    return 300.0;
  }

  else
  {
    return *&v0;
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [RTVisit]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for UIApplication(0, a4);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v5, a3);
}

uint64_t NotificationRealTimeCheckManager.isTraveling(visit:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(NotificationRealTimeCheckManager.isTraveling(visit:), 0, 0);
}

uint64_t NotificationRealTimeCheckManager.isTraveling(visit:)()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = NotificationRealTimeCheckManager.isTraveling(visit:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 48, 0, 0, 0xD000000000000013, 0x80000001002AFA90, partial apply for closure #1 in NotificationRealTimeCheckManager.isTraveling(visit:), v1, &type metadata for Bool);
}

{

  return _swift_task_switch(NotificationRealTimeCheckManager.isTraveling(visit:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 48));
}

void closure #1 in NotificationRealTimeCheckManager.isTraveling(visit:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  v11 = [objc_allocWithZone(RTRoutineManager) init];
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v12, v10, v6);
  *(v14 + v13) = a2;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in NotificationRealTimeCheckManager.isTraveling(visit:);
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [RTLocationOfInterest]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_64;
  v15 = _Block_copy(aBlock);
  v16 = a2;
  v17 = a3;

  [v11 fetchLocationsOfInterestOfType:0 withHandler:v15];
  _Block_release(v15);
}

uint64_t closure #1 in closure #1 in NotificationRealTimeCheckManager.isTraveling(visit:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v103 = a4;
  v104 = a1;
  v105 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v94 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v94 - v13;
  v15 = type metadata accessor for Logger();
  v106 = *(v15 - 8);
  v107 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v94 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v94 - v23;
  __chkstk_darwin(v22);
  v26 = &v94 - v25;
  v27 = type metadata accessor for CommonLogger();
  if (a2)
  {
    static CommonLogger.notification.getter();
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v108[0] = swift_slowAlloc();
      *v30 = 136446466;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x80000001002AFA90, v108);
      *(v30 + 12) = 2080;
      swift_getErrorValue();
      v31 = Error.localizedDescription.getter();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v108);

      *(v30 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v28, v29, "Notification real time check.%{public}s, error fetching home loi: %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    (*(v106 + 8))(v26, v107);
    LOBYTE(v108[0]) = 0;
    goto LABEL_36;
  }

  v97 = v8;
  v98 = v14;
  v99 = v7;
  v100 = v9;
  v101 = v21;
  v102 = v27;
  v96 = v18;
  static CommonLogger.notification.getter();
  v34 = v103;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  v37 = os_log_type_enabled(v35, v36);
  v103 = v34;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v108[0] = v95;
    *v38 = 136446466;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x80000001002AFA90, v108);
    *(v38 + 12) = 2080;
    v39 = [v34 entry];
    if (v39)
    {
      v40 = v39;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = v100;
      v42 = *(v100 + 32);
      v94 = v35;
      v43 = v36;
      v44 = v99;
      v45 = v97;
      v42(v99, v12, v97);
      (*(v41 + 56))(v44, 0, 1, v45);
      v46 = v98;
      v47 = v44;
      v36 = v43;
      v35 = v94;
      v42(v98, v47, v45);
      v48 = v41;
      v49 = v101;
    }

    else
    {
      v54 = v99;
      v48 = v100;
      v45 = v97;
      (*(v100 + 56))(v99, 1, 1, v97);
      v46 = v98;
      static Date.distantPast.getter();
      v55 = (*(v48 + 48))(v54, 1, v45);
      v49 = v101;
      if (v55 != 1)
      {
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v54, &_s10Foundation4DateVSgMd);
      }
    }

    lazy protocol witness table accessor for type Date and conformance Date();
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    (*(v48 + 8))(v46, v45);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v108);

    *(v38 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v35, v36, "Notification real time check.%{public}s, visit start date: %s", v38, 0x16u);
    swift_arrayDestroy();

    v50 = *(v106 + 8);
    v60 = v24;
    v52 = v107;
    v50(v60, v107);
    v53 = v104;
    if (!v104)
    {
      goto LABEL_34;
    }
  }

  else
  {

    v50 = *(v106 + 8);
    v51 = v24;
    v52 = v107;
    v50(v51, v107);
    v53 = v104;
    v49 = v101;
    if (!v104)
    {
      goto LABEL_34;
    }
  }

  static CommonLogger.notification.getter();
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v108[0] = v64;
    *v63 = 136446210;
    *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x80000001002AFA90, v108);
    _os_log_impl(&_mh_execute_header, v61, v62, "Notification real time check.%{public}s, got home loi", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
  }

  v50(v49, v52);
  if (v53 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_34;
    }
  }

  else if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_34;
  }

  v65 = [v103 placeInference];
  if (v65)
  {

    v66 = [v103 placeInference];
    if (v66)
    {
      v67 = v66;
      v68 = [v66 userType];

      if (v68 == 2)
      {
        goto LABEL_34;
      }
    }
  }

  if (v53 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_34;
    }
  }

  else
  {
    result = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_34;
    }
  }

  if ((v53 & 0xC000000000000001) != 0)
  {
    v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_27:
    v71 = v70;
    v72 = [v70 location];

    if (v72)
    {
      v73 = [v103 location];
      if (!v73)
      {
LABEL_33:

        goto LABEL_34;
      }

      v74 = v73;
      v75 = objc_opt_self();
      [v72 latitude];
      v77 = v76;
      [v72 longitude];
      v79 = v78;
      [v74 latitude];
      v81 = v80;
      [v74 longitude];
      [v75 distanceFromlat1:v77 lon1:v79 tolat2:v81 lon2:v82];
      v84 = v83;
      v85 = COERCE_DOUBLE(static DefaultsManager.Notifications.notificationRealTimeCheckTravelDistanceThreshold.getter());
      if (v86 & 1) != 0 && (type metadata accessor for DefaultsManager(), v85 = COERCE_DOUBLE(static DefaultsManager.getTrialDoubleValue(for:)()), (v87))
      {
        v88 = v96;
        if (v84 <= 60000.0)
        {
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
        v88 = v96;
        if (v84 <= v85)
        {
          goto LABEL_32;
        }
      }

      static CommonLogger.notification.getter();
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v108[0] = v93;
        *v92 = 136315138;
        *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x80000001002AFA90, v108);
        _os_log_impl(&_mh_execute_header, v90, v91, "Notification real time check.%s, user is traveling based on distance check", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v93);
      }

      v50(v88, v52);
      v89 = 1;
      goto LABEL_35;
    }

LABEL_34:
    v89 = 0;
LABEL_35:
    LOBYTE(v108[0]) = v89;
LABEL_36:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
    return CheckedContinuation.resume(returning:)();
  }

  if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v70 = *(v53 + 32);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

double NotificationRealTimeCheckManager.travelDistanceThreshold.getter()
{
  v0 = static DefaultsManager.Notifications.notificationRealTimeCheckTravelDistanceThreshold.getter();
  if (v1 & 1) != 0 && (type metadata accessor for DefaultsManager(), v0 = static DefaultsManager.getTrialDoubleValue(for:)(), (v2))
  {
    return 60000.0;
  }

  else
  {
    return *&v0;
  }
}

uint64_t NotificationRealTimeCheckManager.isAtPlacesEligibleForJournaling(visit:)()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = NotificationRealTimeCheckManager.isAtPlacesEligibleForJournaling(visit:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD000000000000027, 0x80000001002AFAF0, partial apply for closure #1 in NotificationRealTimeCheckManager.isAtPlacesEligibleForJournaling(visit:), v2, &type metadata for Bool);
}

{

  return _swift_task_switch(NotificationRealTimeCheckManager.isAtPlacesEligibleForJournaling(visit:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 40));
}

void closure #1 in NotificationRealTimeCheckManager.isAtPlacesEligibleForJournaling(visit:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = [objc_allocWithZone(MOPromptManager) init];
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = (v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v11, v8, v4);
  *(v13 + v12) = v9;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = partial apply for closure #1 in closure #1 in NotificationRealTimeCheckManager.isAtPlacesEligibleForJournaling(visit:);
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [String]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_58;
  v14 = _Block_copy(aBlock);

  v15 = a2;

  [v10 fetchEligiblePOICategoriesWithHandler:v14];
  _Block_release(v14);
}

uint64_t closure #1 in closure #1 in NotificationRealTimeCheckManager.isAtPlacesEligibleForJournaling(visit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.notification.getter();
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33[1] = a3;
      v36[0] = v17;
      *v16 = 136446466;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x80000001002AFAF0, v36);
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v36);

      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Notification real time check.%{public}s, error fetching eligible poi categories: %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    (*(v11 + 8))(v13, v10);
    swift_beginAccess();
    v34 = *(a4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  }

  else
  {
    if (a1)
    {
      v21 = [a5 placeInference];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 mapItem];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 category];
          if (v25)
          {
            v26 = v25;
            v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v29 = v28;

            v36[0] = v27;
            v36[1] = v29;
            __chkstk_darwin(v30);
            v33[-2] = v36;
            v31 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v33[-4], a1);

            if (v31)
            {
              swift_beginAccess();
              *(a4 + 16) = 1;
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }

    swift_beginAccess();
    v35 = *(a4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  }

  return CheckedContinuation.resume(returning:)();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [String]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)(char a1)
{
  *(v2 + 240) = v1;
  *(v2 + 600) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v2 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17RealTimeCheckDataVSgMd);
  *(v2 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI21NotificationEventDataVSgMd);
  *(v2 + 264) = swift_task_alloc();
  v3 = type metadata accessor for RealTimeCheckData();
  *(v2 + 272) = v3;
  *(v2 + 280) = *(v3 - 8);
  *(v2 + 288) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v2 + 296) = v4;
  *(v2 + 304) = *(v4 - 8);
  *(v2 + 312) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v2 + 320) = v5;
  *(v2 + 328) = *(v5 - 8);
  *(v2 + 336) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v2 + 344) = v6;
  *(v2 + 352) = *(v6 - 8);
  *(v2 + 360) = swift_task_alloc();
  *(v2 + 368) = swift_task_alloc();
  *(v2 + 376) = swift_task_alloc();
  *(v2 + 384) = swift_task_alloc();
  *(v2 + 392) = swift_task_alloc();
  *(v2 + 400) = swift_task_alloc();
  *(v2 + 408) = swift_task_alloc();
  *(v2 + 416) = swift_task_alloc();
  *(v2 + 424) = swift_task_alloc();
  *(v2 + 432) = swift_task_alloc();
  *(v2 + 440) = swift_task_alloc();
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = swift_task_alloc();
  *(v2 + 464) = swift_task_alloc();
  *(v2 + 472) = swift_task_alloc();
  *(v2 + 480) = swift_task_alloc();
  *(v2 + 488) = swift_task_alloc();
  *(v2 + 496) = swift_task_alloc();
  *(v2 + 504) = swift_task_alloc();
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = swift_task_alloc();
  *(v2 + 528) = swift_task_alloc();

  return _swift_task_switch(NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:), 0, 0);
}

{
  *(*v1 + 602) = a1;

  return _swift_task_switch(NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:), 0, 0);
}

{
  *(*v1 + 609) = a1;

  return _swift_task_switch(NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:), 0, 0);
}

{
  *(*v1 + 614) = a1;

  return _swift_task_switch(NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:), 0, 0);
}

{
  *(*v1 + 617) = a1;

  return _swift_task_switch(NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:), 0, 0);
}

uint64_t NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)()
{
  v182 = v0;
  v0[67] = type metadata accessor for CommonLogger();
  static CommonLogger.notification.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[66];
  v5 = v0[43];
  v6 = v0[44];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v180 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v180);
    _os_log_impl(&_mh_execute_header, v1, v2, "Notification real time check.%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  v9 = *(v6 + 8);
  v9(v4, v5);
  v0[68] = v9;
  v10 = static DefaultsManager.Notifications.notificationRealTimeCheckIsUsingPrimaryJournalApp.getter();
  if (v10 == 2)
  {
    if (((*((swift_isaMask & *v0[30]) + 0x58))() & 1) == 0)
    {
LABEL_5:
      v11 = 0;
      goto LABEL_10;
    }
  }

  else if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

  static CommonLogger.notification.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[65];
  v16 = v0[43];
  if (v14)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v180 = v18;
    *v17 = 136446210;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v180);
    _os_log_impl(&_mh_execute_header, v12, v13, "Notification real time check.%{public}s, user is using App so do not post notification now", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  v9(v15, v16);
  v11 = 1;
LABEL_10:
  *(v0 + 601) = v11;
  v19 = static DefaultsManager.Notifications.notificationRealTimeCheckIsInWorkOutSessionBasedOnHealthKit.getter();
  if (v19 == 2)
  {
    v172 = (*((swift_isaMask & *v0[30]) + 0x60) + **((swift_isaMask & *v0[30]) + 0x60));
    v20 = swift_task_alloc();
    v0[69] = v20;
    *v20 = v0;
    v20[1] = NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);
    v21 = v172;

    return v21();
  }

  v22 = v19;
  v23 = v11 ^ 1;
  static CommonLogger.notification.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[64];
  v28 = v0[43];
  if (v26)
  {
    v173 = v23;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v180 = v30;
    *v29 = 136446466;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v180);
    *(v29 + 12) = 1024;
    *(v29 + 14) = v22 & 1;
    _os_log_impl(&_mh_execute_header, v24, v25, "Notification real time check.%{public}s, default value set for isInWorkOutBasedOnHealthKit %{BOOL}d", v29, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v30);

    v23 = v173;
  }

  v9(v27, v28);
  *(v0 + 604) = v23;
  *(v0 + 603) = 0;
  v31 = static DefaultsManager.Notifications.notificationRealTimeCheckIsInWorkOutSessionBasedOnMotion.getter();
  *(v0 + 605) = v31;
  v32 = static DefaultsManager.Notifications.notificationRealTimeCheckIsInAutomotiveSessionBasedOnMotion.getter();
  v33 = 0;
  *(v0 + 606) = v32;
  if (v31 != 2)
  {
    static CommonLogger.notification.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[68];
    v38 = v0[62];
    v39 = v0[43];
    if (v36)
    {
      v174 = v0[68];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v180 = v41;
      *v40 = 136446466;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v180);
      *(v40 + 12) = 1024;
      *(v40 + 14) = v31 & 1;
      _os_log_impl(&_mh_execute_header, v34, v35, "Notification real time check.%{public}s, default value set for isInWorkOutBasedOnMotion %{BOOL}d", v40, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v41);

      v174(v38, v39);
    }

    else
    {

      v37(v38, v39);
    }

    v33 = v31;
  }

  *(v0 + 607) = v33 & 1;
  if (v32 == 2)
  {
    v32 = 0;
LABEL_27:
    *(v0 + 608) = v32 & 1;
    v176 = (*((swift_isaMask & *v0[30]) + 0x68) + **((swift_isaMask & *v0[30]) + 0x68));
    v50 = swift_task_alloc();
    v0[70] = v50;
    *v50 = v0;
    v50[1] = NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);
    v21 = v176;

    return v21();
  }

  static CommonLogger.notification.getter();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v0[68];
  v46 = v0[61];
  v47 = v0[43];
  if (v44)
  {
    v175 = v33;
    v48 = swift_slowAlloc();
    v169 = v45;
    v49 = swift_slowAlloc();
    v180 = v49;
    *v48 = 136446466;
    *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v180);
    *(v48 + 12) = 1024;
    *(v48 + 14) = v32 & 1;
    _os_log_impl(&_mh_execute_header, v42, v43, "Notification real time check.%{public}s, default value set for isInAutomotiveSessionBasedOnMotion %{BOOL}d", v48, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v49);

    v33 = v175;

    v169(v46, v47);
  }

  else
  {

    v45(v46, v47);
  }

  if (v31 == 2)
  {
    goto LABEL_27;
  }

  if (v33)
  {
    static CommonLogger.notification.getter();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[68];
    v55 = v0[60];
    v56 = v0[43];
    if (v53)
    {
      v57 = swift_slowAlloc();
      v177 = v33;
      v58 = swift_slowAlloc();
      v180 = v58;
      *v57 = 136446210;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v180);
      _os_log_impl(&_mh_execute_header, v51, v52, "Notification real time check.%{public}s, user is running/walking/cycling so do not post notification now", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      v33 = v177;
    }

    v54(v55, v56);
    if ((v32 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((v32 & 1) == 0)
  {
LABEL_34:
    v59 = 0;
    goto LABEL_39;
  }

  v60 = v33;
  static CommonLogger.notification.getter();
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();
  v63 = os_log_type_enabled(v61, v62);
  v64 = v0[68];
  v65 = v0[59];
  v66 = v0[43];
  if (v63)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v180 = v68;
    *v67 = 136446210;
    *(v67 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v180);
    _os_log_impl(&_mh_execute_header, v61, v62, "Notification real time check.%{public}s, user is in automotive session so do not post notification now", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
  }

  v64(v65, v66);
  v59 = 1;
  v33 = v60;
LABEL_39:
  *(v0 + 611) = v33 & 1;
  *(v0 + 610) = v59;
  if (*(v0 + 600) == 1)
  {
    v178 = (*((swift_isaMask & *v0[30]) + 0x50) + **((swift_isaMask & *v0[30]) + 0x50));
    v69 = swift_task_alloc();
    v0[71] = v69;
    *v69 = v0;
    v69[1] = NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);
    v21 = v178;

    return v21();
  }

  static CommonLogger.notification.getter();
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.info.getter();
  v73 = os_log_type_enabled(v71, v72);
  v74 = v0[68];
  v75 = v0[46];
  v76 = v0[43];
  if (v73)
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v180 = v78;
    *v77 = 136446210;
    *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v180);
    _os_log_impl(&_mh_execute_header, v71, v72, "Notification real time check.%{public}s, significant location switch is off", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v78);
  }

  v74(v75, v76);
  v79 = *(v0 + 611);
  v170 = *(v0 + 610);
  v80 = *(v0 + 603);
  v81 = *(v0 + 601);
  v179 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A4D20;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001002AFB20;
  aBlock = v81;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:v81];
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = 0x80000001002AFB40;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithBool:v80];
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000001002AFB60;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithBool:v79];
  *(inited + 104) = 0xD000000000000022;
  *(inited + 112) = 0x80000001002AFB80;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithBool:v170];
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001002AFBB0;
  v83 = objc_allocWithZone(NSString);
  v84 = String._bridgeToObjectiveC()();
  v85 = [v83 initWithString:v84];

  *(inited + 144) = v85;
  v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  swift_arrayDestroy();
  v87 = 0;
  *(v179 + 16) = v86;
  v88 = (v179 + 16);
  if ((v80 & 1) == 0 && (aBlock & 1) == 0)
  {
    v87 = *(v0 + 611) ^ 1;
  }

  v171 = v87;
  if (*(v0 + 600) == 1)
  {
    v89 = *(v0 + 601);
    v90 = [objc_allocWithZone(NSNumber) initWithBool:0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v180 = v86;
    *v88 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v90, 0x74697369566F6ELL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v92 = v180;
    *v88 = v180;
    v93 = [objc_allocWithZone(NSNumber) initWithBool:0];
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v180 = v92;
    *v88 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0x697369566E497369, 0xE900000000000074, v94);
    v95 = v180;
    *v88 = v180;
    v96 = [objc_allocWithZone(NSNumber) initWithBool:0];
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v180 = v95;
    *v88 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v96, 0x656D6F4874417369, 0xE800000000000000, v97);
    v98 = v180;
    *v88 = v180;
    v99 = [objc_allocWithZone(NSNumber) initWithBool:0];
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v180 = v98;
    *v88 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v99, 0x6C65766172547369, 0xEE00776F4E676E69, v100);
    v101 = v180;
    *v88 = v180;
    v102 = [objc_allocWithZone(NSNumber) initWithBool:v89];
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v180 = v101;
    *v88 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v102, 0xD000000000000018, 0x80000001002AFB20, v103);
    v104 = v180;
    *v88 = v180;
    v105 = [objc_allocWithZone(NSNumber) initWithBool:0];
    v106 = swift_isUniquelyReferenced_nonNull_native();
    v180 = v104;
    *v88 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v105, 0xD000000000000012, 0x80000001002AFCC0, v106);
    v86 = v180;
    *v88 = v180;
  }

  v107 = *(v0 + 611);
  v108 = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + 603)];
  v109 = swift_isUniquelyReferenced_nonNull_native();
  v180 = v86;
  *v88 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v108, 0xD00000000000001BLL, 0x80000001002AFB40, v109);
  v110 = v180;
  *v88 = v180;
  v111 = [objc_allocWithZone(NSNumber) initWithBool:v107];
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v180 = v110;
  *v88 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v111, 0xD000000000000018, 0x80000001002AFB60, v112);
  v113 = v180;
  *v88 = v180;
  v114 = [objc_allocWithZone(NSNumber) initWithBool:v171 & 1];
  v115 = swift_isUniquelyReferenced_nonNull_native();
  v180 = v113;
  *v88 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v114, 0xD000000000000016, 0x80000001002AFBF0, v115);
  v116 = v180;
  *v88 = v180;
  specialized MOAngelDefaultsManager.notificationReporterIdentification.getter();
  if (v117)
  {
    v118 = objc_allocWithZone(NSString);
    v119 = String._bridgeToObjectiveC()();

    v120 = [v118 initWithString:v119];

    v121 = swift_isUniquelyReferenced_nonNull_native();
    v180 = v116;
    *v88 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v120, 0x726574726F706572, 0xEC00000044495555, v121);
    *v88 = v180;
  }

  v123 = v0[41];
  v122 = v0[42];
  v124 = v0[40];
  v125 = [objc_allocWithZone(NSDateFormatter) init];
  v126 = String._bridgeToObjectiveC()();
  [v125 setDateFormat:v126];

  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v123 + 8))(v122, v124);
  v168 = v125;
  v128 = [v125 stringFromDate:isa];

  if (!v128)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = String._bridgeToObjectiveC()();
  }

  v129 = [objc_allocWithZone(NSString) initWithString:v128];

  v130 = *(v179 + 16);
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v180 = v130;
  *(v179 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v129, 0xD000000000000013, 0x80000001002AFC30, v131);
  *(v179 + 16) = v180;
  v132 = String._bridgeToObjectiveC()();
  v0[25] = partial apply for closure #1 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);
  v0[26] = v179;
  v0[21] = _NSConcreteStackBlock;
  v0[22] = 1107296256;
  v0[23] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[24] = &block_descriptor_0;
  v133 = _Block_copy(v0 + 21);

  AnalyticsSendEventLazy();
  _Block_release(v133);

  swift_beginAccess();
  v134 = *(v179 + 16);
  if (!*(v134 + 16) || (v135 = specialized __RawDictionaryStorage.find<A>(_:)(0x726574726F706572, 0xEC00000044495555), (v136 & 1) == 0))
  {
    swift_endAccess();
LABEL_60:
    v140 = v0[38];
    v139 = v0[39];
    v141 = v0[37];
    UUID.init()();
    UUID.uuidString.getter();
    (*(v140 + 8))(v139, v141);
    goto LABEL_61;
  }

  v137 = *(*(v134 + 56) + 8 * v135);
  swift_endAccess();
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_60;
  }

  v180 = 0;
  v181 = 0;
  v138 = v137;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!v181)
  {
    goto LABEL_60;
  }

LABEL_61:
  v143 = v0[35];
  v142 = v0[36];
  v145 = v0[33];
  v144 = v0[34];
  v146 = v0[31];
  v147 = v0[32];
  RealTimeCheckData.init(reporterId:realTimeCheckRejected:locationEnabled:isTraveling:isPlaceEligible:noVisit:isInVisit:isInWorkoutHealthKit:isInWorkoutMotion:isUsingPrimaryJournalApp:isAtHome:)();
  type metadata accessor for NotificationBiomeManager();
  v148 = type metadata accessor for NotificationEventData();
  (*(*(v148 - 8) + 56))(v145, 1, 1, v148);
  (*(v143 + 16))(v147, v142, v144);
  (*(v143 + 56))(v147, 0, 1, v144);
  v149 = static NotificationBiomeManager.generateNotificationBiomeEvent(engagementEvent:realTimeCheckEvent:)();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v147, &_s9MomentsUI17RealTimeCheckDataVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v145, &_s9MomentsUI21NotificationEventDataVSgMd);
  v150 = type metadata accessor for TaskPriority();
  (*(*(v150 - 8) + 56))(v146, 1, 1, v150);
  v151 = swift_allocObject();
  v151[2] = 0;
  v151[3] = 0;
  v151[4] = v149;
  v152 = v149;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v146, &async function pointer to partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:), v151);

  static CommonLogger.notification.getter();
  v153 = Logger.logObject.getter();
  v154 = static os_log_type_t.info.getter();
  v155 = os_log_type_enabled(v153, v154);
  v167 = v0[68];
  v156 = v0[45];
  v157 = v0[43];
  v159 = v0[35];
  v158 = v0[36];
  v160 = v0[34];
  if (v155)
  {
    v166 = v0[36];
    v161 = swift_slowAlloc();
    v165 = v152;
    v162 = swift_slowAlloc();
    v180 = v162;
    *v161 = 136315394;
    *(v161 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v180);
    *(v161 + 12) = 1024;
    *(v161 + 14) = v171 & 1;
    _os_log_impl(&_mh_execute_header, v153, v154, "Notification real time check.%s, success: %{BOOL}d", v161, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v162);

    v167(v156, v157);
    (*(v159 + 8))(v166, v160);
  }

  else
  {

    v167(v156, v157);
    (*(v159 + 8))(v158, v160);
  }

  v163 = v0[1];

  return v163(v171 & 1);
}

{
  v161 = v0;
  v1 = *(v0 + 602);
  if (v1)
  {
    static CommonLogger.notification.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[68];
    v6 = v0[63];
    v7 = v0[43];
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v159 = v9;
      *v8 = 136446210;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v159);
      _os_log_impl(&_mh_execute_header, v2, v3, "Notification real time check.%{public}s, user is working out so do not post notification now", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    v5(v6, v7);
    v10 = 0;
  }

  else
  {
    v10 = *(v0 + 601) ^ 1;
  }

  *(v0 + 604) = v10 & 1;
  *(v0 + 603) = v1;
  v11 = static DefaultsManager.Notifications.notificationRealTimeCheckIsInWorkOutSessionBasedOnMotion.getter();
  *(v0 + 605) = v11;
  v12 = static DefaultsManager.Notifications.notificationRealTimeCheckIsInAutomotiveSessionBasedOnMotion.getter();
  *(v0 + 606) = v12;
  if (v11 == 2)
  {
    v13 = 0;
  }

  else
  {
    static CommonLogger.notification.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[68];
    v18 = v0[62];
    v19 = v0[43];
    if (v16)
    {
      v153 = v0[68];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v159 = v21;
      *v20 = 136446466;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v159);
      *(v20 + 12) = 1024;
      *(v20 + 14) = v11 & 1;
      _os_log_impl(&_mh_execute_header, v14, v15, "Notification real time check.%{public}s, default value set for isInWorkOutBasedOnMotion %{BOOL}d", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v21);

      v153(v18, v19);
    }

    else
    {

      v17(v18, v19);
    }

    v13 = v11;
  }

  *(v0 + 607) = v13 & 1;
  if (v12 == 2)
  {
    v12 = 0;
LABEL_18:
    *(v0 + 608) = v12 & 1;
    v155 = (*((swift_isaMask & *v0[30]) + 0x68) + **((swift_isaMask & *v0[30]) + 0x68));
    v30 = swift_task_alloc();
    v0[70] = v30;
    *v30 = v0;
    v30[1] = NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);
    v31 = v155;

    return v31();
  }

  static CommonLogger.notification.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[68];
  v26 = v0[61];
  v27 = v0[43];
  if (v24)
  {
    v154 = v13;
    v28 = swift_slowAlloc();
    v150 = v25;
    v29 = swift_slowAlloc();
    v159 = v29;
    *v28 = 136446466;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v159);
    *(v28 + 12) = 1024;
    *(v28 + 14) = v12 & 1;
    _os_log_impl(&_mh_execute_header, v22, v23, "Notification real time check.%{public}s, default value set for isInAutomotiveSessionBasedOnMotion %{BOOL}d", v28, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v29);

    v13 = v154;

    v150(v26, v27);
  }

  else
  {

    v25(v26, v27);
  }

  if (v11 == 2)
  {
    goto LABEL_18;
  }

  if (v13)
  {
    static CommonLogger.notification.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[68];
    v37 = v0[60];
    v38 = v0[43];
    if (v35)
    {
      v39 = swift_slowAlloc();
      v156 = v13;
      v40 = swift_slowAlloc();
      v159 = v40;
      *v39 = 136446210;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v159);
      _os_log_impl(&_mh_execute_header, v33, v34, "Notification real time check.%{public}s, user is running/walking/cycling so do not post notification now", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      v13 = v156;
    }

    v36(v37, v38);
    if ((v12 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((v12 & 1) == 0)
  {
LABEL_25:
    v41 = 0;
    goto LABEL_30;
  }

  v42 = v13;
  static CommonLogger.notification.getter();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v0[68];
  v47 = v0[59];
  v48 = v0[43];
  if (v45)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v159 = v50;
    *v49 = 136446210;
    *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v159);
    _os_log_impl(&_mh_execute_header, v43, v44, "Notification real time check.%{public}s, user is in automotive session so do not post notification now", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  v46(v47, v48);
  v41 = 1;
  v13 = v42;
LABEL_30:
  *(v0 + 611) = v13 & 1;
  *(v0 + 610) = v41;
  if (*(v0 + 600) == 1)
  {
    v157 = (*((swift_isaMask & *v0[30]) + 0x50) + **((swift_isaMask & *v0[30]) + 0x50));
    v51 = swift_task_alloc();
    v0[71] = v51;
    *v51 = v0;
    v51[1] = NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);
    v31 = v157;

    return v31();
  }

  static CommonLogger.notification.getter();
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v0[68];
  v56 = v0[46];
  v57 = v0[43];
  if (v54)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v159 = v59;
    *v58 = 136446210;
    *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v159);
    _os_log_impl(&_mh_execute_header, v52, v53, "Notification real time check.%{public}s, significant location switch is off", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
  }

  v55(v56, v57);
  v60 = *(v0 + 611);
  v151 = *(v0 + 610);
  v61 = *(v0 + 603);
  v62 = *(v0 + 601);
  v158 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A4D20;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001002AFB20;
  aBlock = v62;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:v62];
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = 0x80000001002AFB40;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithBool:v61];
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000001002AFB60;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithBool:v60];
  *(inited + 104) = 0xD000000000000022;
  *(inited + 112) = 0x80000001002AFB80;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithBool:v151];
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001002AFBB0;
  v64 = objc_allocWithZone(NSString);
  v65 = String._bridgeToObjectiveC()();
  v66 = [v64 initWithString:v65];

  *(inited + 144) = v66;
  v67 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  swift_arrayDestroy();
  v68 = 0;
  *(v158 + 16) = v67;
  v69 = (v158 + 16);
  if ((v61 & 1) == 0 && (aBlock & 1) == 0)
  {
    v68 = *(v0 + 611) ^ 1;
  }

  v152 = v68;
  if (*(v0 + 600) == 1)
  {
    v70 = *(v0 + 601);
    v71 = [objc_allocWithZone(NSNumber) initWithBool:0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v159 = v67;
    *v69 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0x74697369566F6ELL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v73 = v159;
    *v69 = v159;
    v74 = [objc_allocWithZone(NSNumber) initWithBool:0];
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v159 = v73;
    *v69 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v74, 0x697369566E497369, 0xE900000000000074, v75);
    v76 = v159;
    *v69 = v159;
    v77 = [objc_allocWithZone(NSNumber) initWithBool:0];
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v159 = v76;
    *v69 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, 0x656D6F4874417369, 0xE800000000000000, v78);
    v79 = v159;
    *v69 = v159;
    v80 = [objc_allocWithZone(NSNumber) initWithBool:0];
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v159 = v79;
    *v69 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v80, 0x6C65766172547369, 0xEE00776F4E676E69, v81);
    v82 = v159;
    *v69 = v159;
    v83 = [objc_allocWithZone(NSNumber) initWithBool:v70];
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v159 = v82;
    *v69 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v83, 0xD000000000000018, 0x80000001002AFB20, v84);
    v85 = v159;
    *v69 = v159;
    v86 = [objc_allocWithZone(NSNumber) initWithBool:0];
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v159 = v85;
    *v69 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v86, 0xD000000000000012, 0x80000001002AFCC0, v87);
    v67 = v159;
    *v69 = v159;
  }

  v88 = *(v0 + 611);
  v89 = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + 603)];
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v159 = v67;
  *v69 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, 0xD00000000000001BLL, 0x80000001002AFB40, v90);
  v91 = v159;
  *v69 = v159;
  v92 = [objc_allocWithZone(NSNumber) initWithBool:v88];
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v159 = v91;
  *v69 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v92, 0xD000000000000018, 0x80000001002AFB60, v93);
  v94 = v159;
  *v69 = v159;
  v95 = [objc_allocWithZone(NSNumber) initWithBool:v152 & 1];
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v159 = v94;
  *v69 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v95, 0xD000000000000016, 0x80000001002AFBF0, v96);
  v97 = v159;
  *v69 = v159;
  specialized MOAngelDefaultsManager.notificationReporterIdentification.getter();
  if (v98)
  {
    v99 = objc_allocWithZone(NSString);
    v100 = String._bridgeToObjectiveC()();

    v101 = [v99 initWithString:v100];

    v102 = swift_isUniquelyReferenced_nonNull_native();
    v159 = v97;
    *v69 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v101, 0x726574726F706572, 0xEC00000044495555, v102);
    *v69 = v159;
  }

  v104 = v0[41];
  v103 = v0[42];
  v105 = v0[40];
  v106 = [objc_allocWithZone(NSDateFormatter) init];
  v107 = String._bridgeToObjectiveC()();
  [v106 setDateFormat:v107];

  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v104 + 8))(v103, v105);
  v149 = v106;
  v109 = [v106 stringFromDate:isa];

  if (!v109)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = String._bridgeToObjectiveC()();
  }

  v110 = [objc_allocWithZone(NSString) initWithString:v109];

  v111 = *(v158 + 16);
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v159 = v111;
  *(v158 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v110, 0xD000000000000013, 0x80000001002AFC30, v112);
  *(v158 + 16) = v159;
  v113 = String._bridgeToObjectiveC()();
  v0[25] = partial apply for closure #1 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);
  v0[26] = v158;
  v0[21] = _NSConcreteStackBlock;
  v0[22] = 1107296256;
  v0[23] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[24] = &block_descriptor_0;
  v114 = _Block_copy(v0 + 21);

  AnalyticsSendEventLazy();
  _Block_release(v114);

  swift_beginAccess();
  v115 = *(v158 + 16);
  if (!*(v115 + 16) || (v116 = specialized __RawDictionaryStorage.find<A>(_:)(0x726574726F706572, 0xEC00000044495555), (v117 & 1) == 0))
  {
    swift_endAccess();
LABEL_51:
    v121 = v0[38];
    v120 = v0[39];
    v122 = v0[37];
    UUID.init()();
    UUID.uuidString.getter();
    (*(v121 + 8))(v120, v122);
    goto LABEL_52;
  }

  v118 = *(*(v115 + 56) + 8 * v116);
  swift_endAccess();
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_51;
  }

  v159 = 0;
  v160 = 0;
  v119 = v118;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!v160)
  {
    goto LABEL_51;
  }

LABEL_52:
  v124 = v0[35];
  v123 = v0[36];
  v126 = v0[33];
  v125 = v0[34];
  v127 = v0[31];
  v128 = v0[32];
  RealTimeCheckData.init(reporterId:realTimeCheckRejected:locationEnabled:isTraveling:isPlaceEligible:noVisit:isInVisit:isInWorkoutHealthKit:isInWorkoutMotion:isUsingPrimaryJournalApp:isAtHome:)();
  type metadata accessor for NotificationBiomeManager();
  v129 = type metadata accessor for NotificationEventData();
  (*(*(v129 - 8) + 56))(v126, 1, 1, v129);
  (*(v124 + 16))(v128, v123, v125);
  (*(v124 + 56))(v128, 0, 1, v125);
  v130 = static NotificationBiomeManager.generateNotificationBiomeEvent(engagementEvent:realTimeCheckEvent:)();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v128, &_s9MomentsUI17RealTimeCheckDataVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v126, &_s9MomentsUI21NotificationEventDataVSgMd);
  v131 = type metadata accessor for TaskPriority();
  (*(*(v131 - 8) + 56))(v127, 1, 1, v131);
  v132 = swift_allocObject();
  v132[2] = 0;
  v132[3] = 0;
  v132[4] = v130;
  v133 = v130;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v127, &async function pointer to partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:), v132);

  static CommonLogger.notification.getter();
  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.info.getter();
  v136 = os_log_type_enabled(v134, v135);
  v148 = v0[68];
  v137 = v0[45];
  v138 = v0[43];
  v140 = v0[35];
  v139 = v0[36];
  v141 = v0[34];
  if (v136)
  {
    v147 = v0[36];
    v142 = swift_slowAlloc();
    v146 = v133;
    v143 = swift_slowAlloc();
    v159 = v143;
    *v142 = 136315394;
    *(v142 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v159);
    *(v142 + 12) = 1024;
    *(v142 + 14) = v152 & 1;
    _os_log_impl(&_mh_execute_header, v134, v135, "Notification real time check.%s, success: %{BOOL}d", v142, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v143);

    v148(v137, v138);
    (*(v140 + 8))(v147, v141);
  }

  else
  {

    v148(v137, v138);
    (*(v140 + 8))(v139, v141);
  }

  v144 = v0[1];

  return v144(v152 & 1);
}

{
  v127 = v0;
  v1 = *(v0 + 609);
  if (*(v0 + 605) == 2)
  {
    v2 = v1 == 1;
  }

  else
  {
    v2 = *(v0 + 607);
  }

  v3 = v1 == 2;
  if (*(v0 + 606) == 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = *(v0 + 608);
  }

  if (v2)
  {
    static CommonLogger.notification.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[68];
    v9 = v0[60];
    v10 = v0[43];
    if (v7)
    {
      v121 = v0[68];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v125 = v12;
      *v11 = 136446210;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v125);
      _os_log_impl(&_mh_execute_header, v5, v6, "Notification real time check.%{public}s, user is running/walking/cycling so do not post notification now", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);

      v121(v9, v10);
      if ((v4 & 1) == 0)
      {
LABEL_10:
        v13 = 0;
        goto LABEL_15;
      }
    }

    else
    {

      v8(v9, v10);
      if ((v4 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

  static CommonLogger.notification.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[68];
  v18 = v0[59];
  v19 = v0[43];
  if (v16)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v125 = v21;
    *v20 = 136446210;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v125);
    _os_log_impl(&_mh_execute_header, v14, v15, "Notification real time check.%{public}s, user is in automotive session so do not post notification now", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  v17(v18, v19);
  v13 = 1;
LABEL_15:
  *(v0 + 611) = v2 & 1;
  *(v0 + 610) = v13;
  if (*(v0 + 600) == 1)
  {
    v122 = (*((swift_isaMask & *v0[30]) + 0x50) + **((swift_isaMask & *v0[30]) + 0x50));
    v22 = swift_task_alloc();
    v0[71] = v22;
    *v22 = v0;
    v22[1] = NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

    return v122();
  }

  static CommonLogger.notification.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[68];
  v28 = v0[46];
  v29 = v0[43];
  if (v26)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v125 = v31;
    *v30 = 136446210;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v125);
    _os_log_impl(&_mh_execute_header, v24, v25, "Notification real time check.%{public}s, significant location switch is off", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  v27(v28, v29);
  v32 = *(v0 + 611);
  v123 = *(v0 + 610);
  v33 = *(v0 + 603);
  v34 = *(v0 + 601);
  v35 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A4D20;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001002AFB20;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:v34];
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = 0x80000001002AFB40;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithBool:v33];
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000001002AFB60;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithBool:v32];
  *(inited + 104) = 0xD000000000000022;
  *(inited + 112) = 0x80000001002AFB80;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithBool:v123];
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001002AFBB0;
  v37 = objc_allocWithZone(NSString);
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 initWithString:v38];

  *(inited + 144) = v39;
  v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  swift_arrayDestroy();
  v124 = 0;
  *(v35 + 16) = v40;
  v41 = (v35 + 16);
  if ((v33 & 1) == 0 && (v34 & 1) == 0)
  {
    v124 = *(v0 + 611) ^ 1;
  }

  if (*(v0 + 600) == 1)
  {
    v42 = *(v0 + 601);
    v43 = [objc_allocWithZone(NSNumber) initWithBool:0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v125 = v40;
    *v41 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, 0x74697369566F6ELL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v45 = v125;
    *v41 = v125;
    v46 = [objc_allocWithZone(NSNumber) initWithBool:0];
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v45;
    *v41 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, 0x697369566E497369, 0xE900000000000074, v47);
    v48 = v125;
    *v41 = v125;
    v49 = [objc_allocWithZone(NSNumber) initWithBool:0];
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v48;
    *v41 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49, 0x656D6F4874417369, 0xE800000000000000, v50);
    v51 = v125;
    *v41 = v125;
    v52 = [objc_allocWithZone(NSNumber) initWithBool:0];
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v51;
    *v41 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v52, 0x6C65766172547369, 0xEE00776F4E676E69, v53);
    v54 = v125;
    *v41 = v125;
    v55 = [objc_allocWithZone(NSNumber) initWithBool:v42];
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v54;
    *v41 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, 0xD000000000000018, 0x80000001002AFB20, v56);
    v57 = v125;
    *v41 = v125;
    v58 = [objc_allocWithZone(NSNumber) initWithBool:0];
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v57;
    *v41 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, 0xD000000000000012, 0x80000001002AFCC0, v59);
    v40 = v125;
    *v41 = v125;
  }

  v60 = *(v0 + 611);
  v61 = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + 603)];
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v125 = v40;
  *v41 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, 0xD00000000000001BLL, 0x80000001002AFB40, v62);
  v63 = v125;
  *v41 = v125;
  v64 = [objc_allocWithZone(NSNumber) initWithBool:v60];
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v125 = v63;
  *v41 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v64, 0xD000000000000018, 0x80000001002AFB60, v65);
  v66 = v125;
  *v41 = v125;
  v67 = [objc_allocWithZone(NSNumber) initWithBool:v124 & 1];
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v125 = v66;
  *v41 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, 0xD000000000000016, 0x80000001002AFBF0, v68);
  v69 = v125;
  *v41 = v125;
  specialized MOAngelDefaultsManager.notificationReporterIdentification.getter();
  if (v70)
  {
    v71 = objc_allocWithZone(NSString);
    v72 = String._bridgeToObjectiveC()();

    v73 = [v71 initWithString:v72];

    v74 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v69;
    *v41 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, 0x726574726F706572, 0xEC00000044495555, v74);
    *v41 = v125;
  }

  v76 = v0[41];
  v75 = v0[42];
  v77 = v0[40];
  v78 = [objc_allocWithZone(NSDateFormatter) init];
  v79 = String._bridgeToObjectiveC()();
  [v78 setDateFormat:v79];

  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v76 + 8))(v75, v77);
  v120 = v78;
  v81 = [v78 stringFromDate:isa];

  if (!v81)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = String._bridgeToObjectiveC()();
  }

  v82 = [objc_allocWithZone(NSString) initWithString:v81];

  v83 = *(v35 + 16);
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v125 = v83;
  *(v35 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v82, 0xD000000000000013, 0x80000001002AFC30, v84);
  *(v35 + 16) = v125;
  v85 = String._bridgeToObjectiveC()();
  v0[25] = partial apply for closure #1 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);
  v0[26] = v35;
  v0[21] = _NSConcreteStackBlock;
  v0[22] = 1107296256;
  v0[23] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[24] = &block_descriptor_0;
  v86 = _Block_copy(v0 + 21);

  AnalyticsSendEventLazy();
  _Block_release(v86);

  swift_beginAccess();
  v87 = *(v35 + 16);
  if (!*(v87 + 16) || (v88 = specialized __RawDictionaryStorage.find<A>(_:)(0x726574726F706572, 0xEC00000044495555), (v89 & 1) == 0))
  {
    swift_endAccess();
LABEL_38:
    v93 = v0[38];
    v92 = v0[39];
    v94 = v0[37];
    UUID.init()();
    UUID.uuidString.getter();
    (*(v93 + 8))(v92, v94);
    goto LABEL_39;
  }

  v90 = *(*(v87 + 56) + 8 * v88);
  swift_endAccess();
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_38;
  }

  v125 = 0;
  v126 = 0;
  v91 = v90;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!v126)
  {
    goto LABEL_38;
  }

LABEL_39:
  v96 = v0[35];
  v95 = v0[36];
  v98 = v0[33];
  v97 = v0[34];
  v99 = v0[31];
  v100 = v0[32];
  RealTimeCheckData.init(reporterId:realTimeCheckRejected:locationEnabled:isTraveling:isPlaceEligible:noVisit:isInVisit:isInWorkoutHealthKit:isInWorkoutMotion:isUsingPrimaryJournalApp:isAtHome:)();
  type metadata accessor for NotificationBiomeManager();
  v101 = type metadata accessor for NotificationEventData();
  (*(*(v101 - 8) + 56))(v98, 1, 1, v101);
  (*(v96 + 16))(v100, v95, v97);
  (*(v96 + 56))(v100, 0, 1, v97);
  v102 = static NotificationBiomeManager.generateNotificationBiomeEvent(engagementEvent:realTimeCheckEvent:)();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v100, &_s9MomentsUI17RealTimeCheckDataVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v98, &_s9MomentsUI21NotificationEventDataVSgMd);
  v103 = type metadata accessor for TaskPriority();
  (*(*(v103 - 8) + 56))(v99, 1, 1, v103);
  v104 = swift_allocObject();
  v104[2] = 0;
  v104[3] = 0;
  v104[4] = v102;
  v105 = v102;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v99, &async function pointer to partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:), v104);

  static CommonLogger.notification.getter();
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.info.getter();
  v108 = os_log_type_enabled(v106, v107);
  v119 = v0[68];
  v109 = v0[45];
  v110 = v0[43];
  v112 = v0[35];
  v111 = v0[36];
  v113 = v0[34];
  if (v108)
  {
    aBlock = v0[36];
    v114 = swift_slowAlloc();
    v117 = v105;
    v115 = swift_slowAlloc();
    v125 = v115;
    *v114 = 136315394;
    *(v114 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v125);
    *(v114 + 12) = 1024;
    *(v114 + 14) = v124 & 1;
    _os_log_impl(&_mh_execute_header, v106, v107, "Notification real time check.%s, success: %{BOOL}d", v114, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v115);

    v119(v109, v110);
    (*(v112 + 8))(aBlock, v113);
  }

  else
  {

    v119(v109, v110);
    (*(v112 + 8))(v111, v113);
  }

  v116 = v0[1];

  return v116(v124 & 1);
}

{
  v231 = v0;
  v1 = v0[72];
  v2 = static DefaultsManager.Notifications.notificationRealTimeCheckNoVisit.getter();
  *(v0 + 612) = v2;
  if (v2 == 2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = v2;
  }

  v220 = v3;
  if (v3)
  {
    static CommonLogger.notification.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[68];
    v8 = v0[58];
    v9 = v0[43];
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v229 = v11;
      *v10 = 136446210;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v229);
      _os_log_impl(&_mh_execute_header, v4, v5, "Notification real time check.%{public}s, there is no visit fetched so do not post notification now", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    v7(v8, v9);
  }

  v12 = static DefaultsManager.Notifications.notificationRealTimeCheckIsInVisit.getter();
  if (v12 == 2)
  {
    if (!v1)
    {
      goto LABEL_12;
    }

    v13 = v0[72];
    if ([v13 type] != 1 && objc_msgSend(v13, "type") != 2)
    {
      goto LABEL_12;
    }
  }

  else if ((v12 & 1) == 0)
  {
LABEL_12:
    static CommonLogger.notification.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[72];
    v18 = v0[68];
    v19 = v0[47];
    v20 = v0[43];
    if (v16)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v229 = v22;
      *v21 = 136446210;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v229);
      _os_log_impl(&_mh_execute_header, v14, v15, "Notification real time check.%{public}s, last visit is not entry so user is not in a visit now", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    v18(v19, v20);
    v216 = 0;
    v214 = 0;
    v211 = 0;
    v218 = 0;
    v215 = 0;
    goto LABEL_64;
  }

  static CommonLogger.notification.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[68];
  v27 = v0[57];
  v28 = v0[43];
  if (v25)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v229 = v30;
    *v29 = 136446210;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v229);
    _os_log_impl(&_mh_execute_header, v23, v24, "Notification real time check.%{public}s, last visit is entry so user is in a visit now", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  v26(v27, v28);
  if (!v1 || (v31 = [v0[72] placeInference]) == 0)
  {
    static CommonLogger.notification.getter();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v0[68];
    v46 = v0[54];
    v47 = v0[43];
    if (v44)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v229 = v49;
      *v48 = 136446210;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v229);
      _os_log_impl(&_mh_execute_header, v42, v43, "Notification real time check.%{public}s, no place inference", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
    }

    v45(v46, v47);
    goto LABEL_27;
  }

  v32 = v31;
  v33 = static DefaultsManager.Notifications.notificationRealTimeCheckIsAtHome.getter();
  if (v33 == 2)
  {
    if ([v32 userType] != 1)
    {
      goto LABEL_22;
    }
  }

  else if ((v33 & 1) == 0)
  {
LABEL_22:
    static CommonLogger.notification.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[68];
    v38 = v0[55];
    v39 = v0[43];
    if (v36)
    {
      v225 = v0[68];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v229 = v41;
      *v40 = 136446210;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v229);
      _os_log_impl(&_mh_execute_header, v34, v35, "Notification real time check.%{public}s, user is not at home so continue checking", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);

      v225(v38, v39);
    }

    else
    {

      v37(v38, v39);
    }

LABEL_27:
    v50 = 0;
    goto LABEL_28;
  }

  static CommonLogger.notification.getter();
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.info.getter();
  v109 = os_log_type_enabled(v107, v108);
  v110 = v0[68];
  v111 = v0[56];
  v112 = v0[43];
  if (v109)
  {
    v226 = v0[68];
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v229 = v114;
    *v113 = 136446210;
    *(v113 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v229);
    _os_log_impl(&_mh_execute_header, v107, v108, "Notification real time check.%{public}s, user is at home so keep current notification", v113, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v114);

    v226(v111, v112);
  }

  else
  {

    v110(v111, v112);
  }

  v50 = 1;
LABEL_28:
  *(v0 + 613) = v50;
  v51 = static DefaultsManager.Notifications.notificationRealTimeCheckIsTravelling.getter();
  if (v51 == 2)
  {
    if (v1)
    {
      v52 = *((swift_isaMask & *v0[30]) + 0x70);
      v53 = v0[72];
      v222 = (v52 + *v52);
      v54 = swift_task_alloc();
      v0[73] = v54;
      *v54 = v0;
      v54[1] = NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);
      v55 = v53;
      v56 = v222;

      return v56(v55);
    }

    goto LABEL_39;
  }

  v58 = v51;
  static CommonLogger.notification.getter();
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.info.getter();
  v61 = os_log_type_enabled(v59, v60);
  v62 = v0[68];
  v63 = v0[53];
  v64 = v0[43];
  if (v61)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v229 = v66;
    *v65 = 136446466;
    *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v229);
    *(v65 + 12) = 1024;
    *(v65 + 14) = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Notification real time check.%{public}s, default value set for isTraveling: %{BOOL}d", v65, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v66);
  }

  v62(v63, v64);
  if ((v58 & 1) == 0)
  {
LABEL_39:
    static CommonLogger.notification.getter();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();
    v79 = os_log_type_enabled(v77, v78);
    v80 = v0[68];
    v81 = v0[51];
    v82 = v0[43];
    if (v79)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v229 = v84;
      *v83 = 136446210;
      *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v229);
      _os_log_impl(&_mh_execute_header, v77, v78, "Notification real time check.%{public}s, user is not traveling so continue checking", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
    }

    v80(v81, v82);
    v76 = 0;
    v75 = *(v0 + 613);
    goto LABEL_42;
  }

  static CommonLogger.notification.getter();
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.info.getter();
  v69 = os_log_type_enabled(v67, v68);
  v70 = v0[68];
  v71 = v0[52];
  v72 = v0[43];
  if (v69)
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v229 = v74;
    *v73 = 136446210;
    *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v229);
    _os_log_impl(&_mh_execute_header, v67, v68, "Notification real time check.%{public}s, user is traveling so keep current notification", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);
  }

  v70(v71, v72);
  v75 = 1;
  v76 = 1;
LABEL_42:
  *(v0 + 616) = v76;
  *(v0 + 615) = v75;
  v85 = static DefaultsManager.Notifications.notificationRealTimeCheckIsAtPlacesEligibleForJournaling.getter();
  if (v85 == 2)
  {
    v86 = v0[72];
    if (v86)
    {
      v87 = *((swift_isaMask & *v0[30]) + 0x78);
      v88 = v86;
      v223 = (v87 + *v87);
      v89 = swift_task_alloc();
      v0[74] = v89;
      *v89 = v0;
      v89[1] = NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);
      v55 = v88;
      v56 = v223;

      return v56(v55);
    }

    v211 = v75;
  }

  else
  {
    v90 = v85;
    v211 = v75;
    static CommonLogger.notification.getter();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.info.getter();
    v93 = os_log_type_enabled(v91, v92);
    v94 = v0[68];
    v95 = v0[50];
    v96 = v0[43];
    if (v93)
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v229 = v98;
      *v97 = 136446466;
      *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v229);
      *(v97 + 12) = 1024;
      *(v97 + 14) = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "Notification real time check.%{public}s, default value set for isAtEligiblePlaces: %{BOOL}d", v97, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v98);
    }

    v94(v95, v96);
    if (v90)
    {
      static CommonLogger.notification.getter();
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.info.getter();
      v101 = os_log_type_enabled(v99, v100);
      v102 = v0[68];
      v103 = v0[49];
      v104 = v0[43];
      if (v101)
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v229 = v106;
        *v105 = 136446210;
        *(v105 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v229);
        _os_log_impl(&_mh_execute_header, v99, v100, "Notification real time check.%{public}s, user is at eligible places so keep current notification", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v106);
      }

      v102(v103, v104);
      v211 = 1;
      v218 = 1;
      goto LABEL_59;
    }
  }

  v218 = 0;
LABEL_59:
  static CommonLogger.notification.getter();
  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.info.getter();
  v117 = os_log_type_enabled(v115, v116);
  v118 = v0[72];
  v119 = v0[68];
  v120 = v0[48];
  v121 = v0[43];
  if (v117)
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v229 = v123;
    *v122 = 136446210;
    *(v122 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v229);
    _os_log_impl(&_mh_execute_header, v115, v116, "Notification real time check.%{public}s, no condition is met for visit entry.", v122, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v123);
  }

  v119(v120, v121);
  v215 = *(v0 + 616);
  v216 = *(v0 + 613);
  v124 = *(v0 + 612);
  if (v124 == 2)
  {
    LOBYTE(v124) = v0[72] == 0;
  }

  v220 = v124;
  v214 = 1;
LABEL_64:
  v125 = *(v0 + 611);
  v227 = *(v0 + 610);
  v126 = *(v0 + 603);
  v127 = *(v0 + 601);
  v224 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A4D20;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001002AFB20;
  aBlock = v127;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:v127];
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = 0x80000001002AFB40;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithBool:v126];
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000001002AFB60;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithBool:v125];
  *(inited + 104) = 0xD000000000000022;
  *(inited + 112) = 0x80000001002AFB80;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithBool:v227];
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001002AFBB0;
  v129 = objc_allocWithZone(NSString);
  v130 = String._bridgeToObjectiveC()();
  v131 = [v129 initWithString:v130];

  *(inited + 144) = v131;
  v132 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  swift_arrayDestroy();
  v133 = 0;
  *(v224 + 16) = v132;
  v134 = (v224 + 16);
  if ((v126 & 1) != 0 || v220)
  {
    v135 = &_s9MomentsUI17SuggestionSubTypeO14workoutRoutineyA2CmFWC_ptr;
  }

  else
  {
    v135 = &_s9MomentsUI17SuggestionSubTypeO14workoutRoutineyA2CmFWC_ptr;
    if ((aBlock & 1) == 0)
    {
      v133 = v211 & (*(v0 + 611) ^ 1);
    }
  }

  v228 = v133;
  if (*(v0 + 600) == 1)
  {
    v136 = *(v0 + 601);
    v137 = [objc_allocWithZone(v135[159]) initWithBool:v220];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v229 = v132;
    *v134 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v137, 0x74697369566F6ELL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v139 = v229;
    *v134 = v229;
    v140 = [objc_allocWithZone(v135[159]) initWithBool:v214];
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v229 = v139;
    *v134 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v140, 0x697369566E497369, 0xE900000000000074, v141);
    v142 = v229;
    *v134 = v229;
    v143 = [objc_allocWithZone(v135[159]) initWithBool:v216];
    v144 = swift_isUniquelyReferenced_nonNull_native();
    v229 = v142;
    *v134 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v143, 0x656D6F4874417369, 0xE800000000000000, v144);
    v145 = v229;
    *v134 = v229;
    v146 = [objc_allocWithZone(v135[159]) initWithBool:v215];
    v147 = swift_isUniquelyReferenced_nonNull_native();
    v229 = v145;
    *v134 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v146, 0x6C65766172547369, 0xEE00776F4E676E69, v147);
    v148 = v229;
    *v134 = v229;
    v149 = [objc_allocWithZone(v135[159]) initWithBool:v136];
    v150 = swift_isUniquelyReferenced_nonNull_native();
    v229 = v148;
    *v134 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v149, 0xD000000000000018, 0x80000001002AFB20, v150);
    v151 = v229;
    *v134 = v229;
    v152 = [objc_allocWithZone(v135[159]) initWithBool:v218];
    v153 = swift_isUniquelyReferenced_nonNull_native();
    v229 = v151;
    *v134 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v152, 0xD000000000000012, 0x80000001002AFCC0, v153);
    v132 = v229;
    *v134 = v229;
  }

  v154 = *(v0 + 611);
  v155 = [objc_allocWithZone(v135[159]) initWithBool:*(v0 + 603)];
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v229 = v132;
  *v134 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v155, 0xD00000000000001BLL, 0x80000001002AFB40, v156);
  v157 = v229;
  *v134 = v229;
  v158 = [objc_allocWithZone(v135[159]) initWithBool:v154];
  v159 = swift_isUniquelyReferenced_nonNull_native();
  v229 = v157;
  *v134 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v158, 0xD000000000000018, 0x80000001002AFB60, v159);
  v160 = v229;
  *v134 = v229;
  v161 = [objc_allocWithZone(v135[159]) initWithBool:v228];
  v162 = swift_isUniquelyReferenced_nonNull_native();
  v229 = v160;
  *v134 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v161, 0xD000000000000016, 0x80000001002AFBF0, v162);
  v163 = v229;
  *v134 = v229;
  specialized MOAngelDefaultsManager.notificationReporterIdentification.getter();
  if (v164)
  {
    v165 = objc_allocWithZone(NSString);
    v166 = String._bridgeToObjectiveC()();

    v167 = [v165 initWithString:v166];

    v168 = swift_isUniquelyReferenced_nonNull_native();
    v229 = v163;
    *v134 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v167, 0x726574726F706572, 0xEC00000044495555, v168);
    *v134 = v229;
  }

  v169 = v0[41];
  v170 = v0[42];
  v171 = v0[40];
  v172 = [objc_allocWithZone(NSDateFormatter) init];
  v173 = String._bridgeToObjectiveC()();
  [v172 setDateFormat:v173];

  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v169 + 8))(v170, v171);
  v213 = v172;
  v175 = [v172 stringFromDate:isa];

  if (!v175)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v175 = String._bridgeToObjectiveC()();
  }

  v176 = [objc_allocWithZone(NSString) initWithString:v175];

  v177 = *(v224 + 16);
  v178 = swift_isUniquelyReferenced_nonNull_native();
  v229 = v177;
  *(v224 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v176, 0xD000000000000013, 0x80000001002AFC30, v178);
  *(v224 + 16) = v229;
  v179 = String._bridgeToObjectiveC()();
  v0[25] = partial apply for closure #1 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);
  v0[26] = v224;
  v0[21] = _NSConcreteStackBlock;
  v0[22] = 1107296256;
  v0[23] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[24] = &block_descriptor_0;
  v180 = _Block_copy(v0 + 21);

  AnalyticsSendEventLazy();
  _Block_release(v180);

  swift_beginAccess();
  v181 = *(v224 + 16);
  if (!*(v181 + 16) || (v182 = specialized __RawDictionaryStorage.find<A>(_:)(0x726574726F706572, 0xEC00000044495555), (v183 & 1) == 0))
  {
    swift_endAccess();
LABEL_81:
    v186 = v0[38];
    v187 = v0[39];
    v188 = v0[37];
    UUID.init()();
    UUID.uuidString.getter();
    (*(v186 + 8))(v187, v188);
    goto LABEL_82;
  }

  v184 = *(*(v181 + 56) + 8 * v182);
  swift_endAccess();
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_81;
  }

  v229 = 0;
  v230 = 0;
  v185 = v184;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!v230)
  {
    goto LABEL_81;
  }

LABEL_82:
  v190 = v0[35];
  v189 = v0[36];
  v191 = v0[33];
  v192 = v0[34];
  v193 = v0[31];
  v194 = v0[32];
  RealTimeCheckData.init(reporterId:realTimeCheckRejected:locationEnabled:isTraveling:isPlaceEligible:noVisit:isInVisit:isInWorkoutHealthKit:isInWorkoutMotion:isUsingPrimaryJournalApp:isAtHome:)();
  type metadata accessor for NotificationBiomeManager();
  v195 = type metadata accessor for NotificationEventData();
  (*(*(v195 - 8) + 56))(v191, 1, 1, v195);
  (*(v190 + 16))(v194, v189, v192);
  (*(v190 + 56))(v194, 0, 1, v192);
  v196 = static NotificationBiomeManager.generateNotificationBiomeEvent(engagementEvent:realTimeCheckEvent:)();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v194, &_s9MomentsUI17RealTimeCheckDataVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v191, &_s9MomentsUI21NotificationEventDataVSgMd);
  v197 = type metadata accessor for TaskPriority();
  (*(*(v197 - 8) + 56))(v193, 1, 1, v197);
  v198 = swift_allocObject();
  v198[2] = 0;
  v198[3] = 0;
  v198[4] = v196;
  v199 = v196;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v193, &async function pointer to partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:), v198);

  static CommonLogger.notification.getter();
  v200 = Logger.logObject.getter();
  v201 = static os_log_type_t.info.getter();
  v202 = os_log_type_enabled(v200, v201);
  v221 = v0[68];
  v203 = v0[45];
  v204 = v0[43];
  v206 = v0[35];
  v205 = v0[36];
  v207 = v0[34];
  if (v202)
  {
    v219 = v0[36];
    v208 = swift_slowAlloc();
    v217 = v199;
    v209 = swift_slowAlloc();
    v229 = v209;
    *v208 = 136315394;
    *(v208 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v229);
    *(v208 + 12) = 1024;
    *(v208 + 14) = v228;
    _os_log_impl(&_mh_execute_header, v200, v201, "Notification real time check.%s, success: %{BOOL}d", v208, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v209);

    v221(v203, v204);
    (*(v206 + 8))(v219, v207);
  }

  else
  {

    v221(v203, v204);
    (*(v206 + 8))(v205, v207);
  }

  v210 = v0[1];

  return v210(v228);
}

{
  v156 = v0;
  v1 = *(v0 + 614);

  if (v1 == 1)
  {
    static CommonLogger.notification.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[68];
    v6 = v0[52];
    v7 = v0[43];
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v154 = v9;
      *v8 = 136446210;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v154);
      _os_log_impl(&_mh_execute_header, v2, v3, "Notification real time check.%{public}s, user is traveling so keep current notification", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    v5(v6, v7);
    v10 = 1;
  }

  else
  {
    static CommonLogger.notification.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[68];
    v15 = v0[51];
    v16 = v0[43];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v154 = v18;
      *v17 = 136446210;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v154);
      _os_log_impl(&_mh_execute_header, v11, v12, "Notification real time check.%{public}s, user is not traveling so continue checking", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    v14(v15, v16);
    v10 = *(v0 + 613);
  }

  *(v0 + 616) = v1;
  *(v0 + 615) = v10;
  v19 = static DefaultsManager.Notifications.notificationRealTimeCheckIsAtPlacesEligibleForJournaling.getter();
  if (v19 == 2)
  {
    v20 = v0[72];
    if (v20)
    {
      v21 = *((swift_isaMask & *v0[30]) + 0x78);
      v22 = v20;
      v150 = (v21 + *v21);
      v23 = swift_task_alloc();
      v0[74] = v23;
      *v23 = v0;
      v23[1] = NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

      return v150(v22);
    }

    aBlock = v10;
    goto LABEL_20;
  }

  v25 = v19;
  aBlock = v10;
  static CommonLogger.notification.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[68];
  v30 = v0[50];
  v31 = v0[43];
  if (v28)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v154 = v33;
    *v32 = 136446466;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v154);
    *(v32 + 12) = 1024;
    *(v32 + 14) = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Notification real time check.%{public}s, default value set for isAtEligiblePlaces: %{BOOL}d", v32, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  v29(v30, v31);
  if ((v25 & 1) == 0)
  {
LABEL_20:
    v146 = 0;
    goto LABEL_21;
  }

  static CommonLogger.notification.getter();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v0[68];
  v38 = v0[49];
  v39 = v0[43];
  if (v36)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v154 = v41;
    *v40 = 136446210;
    *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v154);
    _os_log_impl(&_mh_execute_header, v34, v35, "Notification real time check.%{public}s, user is at eligible places so keep current notification", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  v37(v38, v39);
  aBlock = 1;
  v146 = 1;
LABEL_21:
  static CommonLogger.notification.getter();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v0[72];
  v46 = v0[68];
  v47 = v0[48];
  v48 = v0[43];
  if (v44)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v154 = v50;
    *v49 = 136446210;
    *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v154);
    _os_log_impl(&_mh_execute_header, v42, v43, "Notification real time check.%{public}s, no condition is met for visit entry.", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  v46(v47, v48);
  v51 = *(v0 + 612);
  if (v51 == 2)
  {
    LOBYTE(v51) = v0[72] == 0;
  }

  v148 = v51;
  v144 = *(v0 + 616);
  v143 = *(v0 + 613);
  v52 = *(v0 + 611);
  v152 = *(v0 + 610);
  v53 = *(v0 + 603);
  v54 = *(v0 + 601);
  v151 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A4D20;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001002AFB20;
  v140 = v54;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:v54];
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = 0x80000001002AFB40;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithBool:v53];
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000001002AFB60;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithBool:v52];
  *(inited + 104) = 0xD000000000000022;
  *(inited + 112) = 0x80000001002AFB80;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithBool:v152];
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001002AFBB0;
  v56 = objc_allocWithZone(NSString);
  v57 = String._bridgeToObjectiveC()();
  v58 = [v56 initWithString:v57];

  *(inited + 144) = v58;
  v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  swift_arrayDestroy();
  v60 = 0;
  *(v151 + 16) = v59;
  v61 = (v151 + 16);
  if (v53)
  {
    v62 = v148;
    goto LABEL_30;
  }

  v62 = v148;
  if (v148)
  {
LABEL_30:
    p_align = &stru_100327FE8.align;
    goto LABEL_31;
  }

  p_align = (&stru_100327FE8 + 24);
  if ((v140 & 1) == 0)
  {
    v60 = aBlock & (*(v0 + 611) ^ 1);
  }

LABEL_31:
  v153 = v60;
  if (*(v0 + 600) == 1)
  {
    v64 = *(v0 + 601);
    v65 = [objc_allocWithZone(NSNumber) *(p_align + 307)];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154 = v59;
    *v61 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v65, 0x74697369566F6ELL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v67 = v154;
    *v61 = v154;
    v68 = [objc_allocWithZone(NSNumber) initWithBool:1];
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v154 = v67;
    *v61 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, 0x697369566E497369, 0xE900000000000074, v69);
    v70 = v154;
    *v61 = v154;
    v71 = [objc_allocWithZone(NSNumber) initWithBool:v143];
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v154 = v70;
    *v61 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0x656D6F4874417369, 0xE800000000000000, v72);
    v73 = v154;
    *v61 = v154;
    v74 = [objc_allocWithZone(NSNumber) initWithBool:v144];
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v154 = v73;
    *v61 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v74, 0x6C65766172547369, 0xEE00776F4E676E69, v75);
    v76 = v154;
    *v61 = v154;
    v77 = [objc_allocWithZone(NSNumber) initWithBool:v64];
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v154 = v76;
    *v61 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, 0xD000000000000018, 0x80000001002AFB20, v78);
    v79 = v154;
    *v61 = v154;
    v80 = [objc_allocWithZone(NSNumber) initWithBool:v146];
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v154 = v79;
    *v61 = 0x8000000000000000;
    p_align = (&stru_100327FE8 + 24);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v80, 0xD000000000000012, 0x80000001002AFCC0, v81);
    v59 = v154;
    *v61 = v154;
  }

  v82 = *(v0 + 611);
  v83 = p_align;
  v84 = [objc_allocWithZone(NSNumber) *(p_align + 307)];
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v154 = v59;
  *v61 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v84, 0xD00000000000001BLL, 0x80000001002AFB40, v85);
  v86 = v154;
  *v61 = v154;
  v87 = [objc_allocWithZone(NSNumber) *(v83 + 307)];
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v154 = v86;
  *v61 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v87, 0xD000000000000018, 0x80000001002AFB60, v88);
  v89 = v154;
  *v61 = v154;
  v90 = [objc_allocWithZone(NSNumber) *(v83 + 307)];
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v154 = v89;
  *v61 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v90, 0xD000000000000016, 0x80000001002AFBF0, v91);
  v92 = v154;
  *v61 = v154;
  specialized MOAngelDefaultsManager.notificationReporterIdentification.getter();
  if (v93)
  {
    v94 = objc_allocWithZone(NSString);
    v95 = String._bridgeToObjectiveC()();

    v96 = [v94 initWithString:v95];

    v97 = swift_isUniquelyReferenced_nonNull_native();
    v154 = v92;
    *v61 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v96, 0x726574726F706572, 0xEC00000044495555, v97);
    *v61 = v154;
  }

  v98 = v0[41];
  v99 = v0[42];
  v100 = v0[40];
  v101 = [objc_allocWithZone(NSDateFormatter) init];
  v102 = String._bridgeToObjectiveC()();
  [v101 setDateFormat:v102];

  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v98 + 8))(v99, v100);
  v142 = v101;
  v104 = [v101 stringFromDate:isa];

  if (!v104)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = String._bridgeToObjectiveC()();
  }

  v105 = [objc_allocWithZone(NSString) initWithString:v104];

  v106 = *(v151 + 16);
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v154 = v106;
  *(v151 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v105, 0xD000000000000013, 0x80000001002AFC30, v107);
  *(v151 + 16) = v154;
  v108 = String._bridgeToObjectiveC()();
  v0[25] = partial apply for closure #1 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);
  v0[26] = v151;
  v0[21] = _NSConcreteStackBlock;
  v0[22] = 1107296256;
  v0[23] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[24] = &block_descriptor_0;
  v109 = _Block_copy(v0 + 21);

  AnalyticsSendEventLazy();
  _Block_release(v109);

  swift_beginAccess();
  v110 = *(v151 + 16);
  if (!*(v110 + 16) || (v111 = specialized __RawDictionaryStorage.find<A>(_:)(0x726574726F706572, 0xEC00000044495555), (v112 & 1) == 0))
  {
    swift_endAccess();
LABEL_43:
    v115 = v0[38];
    v116 = v0[39];
    v117 = v0[37];
    UUID.init()();
    UUID.uuidString.getter();
    (*(v115 + 8))(v116, v117);
    goto LABEL_44;
  }

  v113 = *(*(v110 + 56) + 8 * v111);
  swift_endAccess();
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_43;
  }

  v154 = 0;
  v155 = 0;
  v114 = v113;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!v155)
  {
    goto LABEL_43;
  }

LABEL_44:
  v119 = v0[35];
  v118 = v0[36];
  v120 = v0[33];
  v121 = v0[34];
  v122 = v0[31];
  v123 = v0[32];
  RealTimeCheckData.init(reporterId:realTimeCheckRejected:locationEnabled:isTraveling:isPlaceEligible:noVisit:isInVisit:isInWorkoutHealthKit:isInWorkoutMotion:isUsingPrimaryJournalApp:isAtHome:)();
  type metadata accessor for NotificationBiomeManager();
  v124 = type metadata accessor for NotificationEventData();
  (*(*(v124 - 8) + 56))(v120, 1, 1, v124);
  (*(v119 + 16))(v123, v118, v121);
  (*(v119 + 56))(v123, 0, 1, v121);
  v125 = static NotificationBiomeManager.generateNotificationBiomeEvent(engagementEvent:realTimeCheckEvent:)();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v123, &_s9MomentsUI17RealTimeCheckDataVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v120, &_s9MomentsUI21NotificationEventDataVSgMd);
  v126 = type metadata accessor for TaskPriority();
  (*(*(v126 - 8) + 56))(v122, 1, 1, v126);
  v127 = swift_allocObject();
  v127[2] = 0;
  v127[3] = 0;
  v127[4] = v125;
  v128 = v125;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v122, &async function pointer to partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:), v127);

  static CommonLogger.notification.getter();
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.info.getter();
  v131 = os_log_type_enabled(v129, v130);
  v149 = v0[68];
  v132 = v0[45];
  v133 = v0[43];
  v135 = v0[35];
  v134 = v0[36];
  v136 = v0[34];
  if (v131)
  {
    v147 = v0[36];
    v137 = swift_slowAlloc();
    v145 = v128;
    v138 = swift_slowAlloc();
    v154 = v138;
    *v137 = 136315394;
    *(v137 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v154);
    *(v137 + 12) = 1024;
    *(v137 + 14) = v153;
    _os_log_impl(&_mh_execute_header, v129, v130, "Notification real time check.%s, success: %{BOOL}d", v137, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v138);

    v149(v132, v133);
    (*(v135 + 8))(v147, v136);
  }

  else
  {

    v149(v132, v133);
    (*(v135 + 8))(v134, v136);
  }

  v139 = v0[1];

  return v139(v153);
}

{
  v124 = v0;
  v1 = *(v0 + 617);

  v115 = v1;
  if (v1)
  {
    static CommonLogger.notification.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[68];
    v6 = v0[49];
    v7 = v0[43];
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v122 = v9;
      *v8 = 136446210;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v122);
      _os_log_impl(&_mh_execute_header, v2, v3, "Notification real time check.%{public}s, user is at eligible places so keep current notification", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    v5(v6, v7);
    v10 = 1;
  }

  else
  {
    v10 = *(v0 + 615);
  }

  v109 = v10;
  static CommonLogger.notification.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[72];
  v15 = v0[68];
  v16 = v0[48];
  v17 = v0[43];
  if (v13)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 136446210;
    v122 = v19;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v122);
    _os_log_impl(&_mh_execute_header, v11, v12, "Notification real time check.%{public}s, no condition is met for visit entry.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  v15(v16, v17);
  v20 = *(v0 + 612);
  if (v20 == 2)
  {
    LOBYTE(v20) = v0[72] == 0;
  }

  v117 = v20;
  v113 = *(v0 + 616);
  v112 = *(v0 + 613);
  v21 = *(v0 + 611);
  v120 = *(v0 + 610);
  v22 = *(v0 + 603);
  v23 = *(v0 + 601);
  v24 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A4D20;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001002AFB20;
  v110 = v23;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:v23];
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = 0x80000001002AFB40;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithBool:v22];
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000001002AFB60;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithBool:v21];
  *(inited + 104) = 0xD000000000000022;
  *(inited + 112) = 0x80000001002AFB80;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithBool:v120];
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001002AFBB0;
  v26 = objc_allocWithZone(NSString);
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 initWithString:v27];

  *(inited + 144) = v28;
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  swift_arrayDestroy();
  v30 = 0;
  v119 = v24;
  *(v24 + 16) = v29;
  v31 = (v24 + 16);
  if (v22)
  {
    v32 = v117;
  }

  else
  {
    v32 = v117;
    if ((v117 & 1) == 0 && (v110 & 1) == 0)
    {
      v30 = v109 & (*(v0 + 611) ^ 1);
    }
  }

  v121 = v30;
  if (*(v0 + 600) == 1)
  {
    v33 = *(v0 + 601);
    v34 = [objc_allocWithZone(NSNumber) initWithBool:v32 & 1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v29;
    *v31 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, 0x74697369566F6ELL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v36 = v122;
    *v31 = v122;
    v37 = [objc_allocWithZone(NSNumber) initWithBool:1];
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v36;
    *v31 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, 0x697369566E497369, 0xE900000000000074, v38);
    v39 = v122;
    *v31 = v122;
    v40 = [objc_allocWithZone(NSNumber) initWithBool:v112];
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v39;
    *v31 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v40, 0x656D6F4874417369, 0xE800000000000000, v41);
    v42 = v122;
    *v31 = v122;
    v43 = [objc_allocWithZone(NSNumber) initWithBool:v113];
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v42;
    *v31 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, 0x6C65766172547369, 0xEE00776F4E676E69, v44);
    v45 = v122;
    *v31 = v122;
    v46 = [objc_allocWithZone(NSNumber) initWithBool:v33];
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v45;
    *v31 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, 0xD000000000000018, 0x80000001002AFB20, v47);
    v48 = v122;
    *v31 = v122;
    v49 = [objc_allocWithZone(NSNumber) initWithBool:v115];
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v48;
    *v31 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49, 0xD000000000000012, 0x80000001002AFCC0, v50);
    v29 = v122;
    *v31 = v122;
  }

  v51 = *(v0 + 611);
  v52 = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + 603)];
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v122 = v29;
  *v31 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v52, 0xD00000000000001BLL, 0x80000001002AFB40, v53);
  v54 = v122;
  *v31 = v122;
  v55 = [objc_allocWithZone(NSNumber) initWithBool:v51];
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v122 = v54;
  *v31 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, 0xD000000000000018, 0x80000001002AFB60, v56);
  v57 = v122;
  *v31 = v122;
  v58 = [objc_allocWithZone(NSNumber) initWithBool:v121];
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v122 = v57;
  *v31 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, 0xD000000000000016, 0x80000001002AFBF0, v59);
  v60 = v122;
  *v31 = v122;
  specialized MOAngelDefaultsManager.notificationReporterIdentification.getter();
  if (v61)
  {
    v62 = objc_allocWithZone(NSString);
    v63 = String._bridgeToObjectiveC()();

    v64 = [v62 initWithString:v63];

    v65 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v60;
    *v31 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v64, 0x726574726F706572, 0xEC00000044495555, v65);
    *v31 = v122;
  }

  v66 = v0[41];
  v67 = v0[42];
  v68 = v0[40];
  v69 = [objc_allocWithZone(NSDateFormatter) init];
  v70 = String._bridgeToObjectiveC()();
  [v69 setDateFormat:v70];

  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v66 + 8))(v67, v68);
  v111 = v69;
  v72 = [v69 stringFromDate:isa];

  if (!v72)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = String._bridgeToObjectiveC()();
  }

  v73 = [objc_allocWithZone(NSString) initWithString:v72];

  v74 = *(v119 + 16);
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v122 = v74;
  *(v119 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, 0xD000000000000013, 0x80000001002AFC30, v75);
  *(v119 + 16) = v122;
  v76 = String._bridgeToObjectiveC()();
  v0[25] = partial apply for closure #1 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);
  v0[26] = v119;
  v0[21] = _NSConcreteStackBlock;
  v0[22] = 1107296256;
  v0[23] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[24] = &block_descriptor_0;
  v77 = _Block_copy(v0 + 21);

  AnalyticsSendEventLazy();
  _Block_release(v77);

  swift_beginAccess();
  v78 = *(v119 + 16);
  if (*(v78 + 16) && (v79 = specialized __RawDictionaryStorage.find<A>(_:)(0x726574726F706572, 0xEC00000044495555), (v80 & 1) != 0))
  {
    v81 = *(*(v78 + 56) + 8 * v79);
    swift_endAccess();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v122 = 0;
      v123 = 0;
      v82 = v81;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();

      if (v123)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    swift_endAccess();
  }

  v83 = v0[38];
  v84 = v0[39];
  v85 = v0[37];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v83 + 8))(v84, v85);
LABEL_28:
  v87 = v0[35];
  v86 = v0[36];
  v88 = v0[33];
  v89 = v0[34];
  v91 = v0[31];
  v90 = v0[32];
  RealTimeCheckData.init(reporterId:realTimeCheckRejected:locationEnabled:isTraveling:isPlaceEligible:noVisit:isInVisit:isInWorkoutHealthKit:isInWorkoutMotion:isUsingPrimaryJournalApp:isAtHome:)();
  type metadata accessor for NotificationBiomeManager();
  v92 = type metadata accessor for NotificationEventData();
  (*(*(v92 - 8) + 56))(v88, 1, 1, v92);
  (*(v87 + 16))(v90, v86, v89);
  (*(v87 + 56))(v90, 0, 1, v89);
  v93 = static NotificationBiomeManager.generateNotificationBiomeEvent(engagementEvent:realTimeCheckEvent:)();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v90, &_s9MomentsUI17RealTimeCheckDataVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v88, &_s9MomentsUI21NotificationEventDataVSgMd);
  v94 = type metadata accessor for TaskPriority();
  (*(*(v94 - 8) + 56))(v91, 1, 1, v94);
  v95 = swift_allocObject();
  v95[2] = 0;
  v95[3] = 0;
  v95[4] = v93;
  v96 = v93;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v91, &async function pointer to partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:), v95);

  static CommonLogger.notification.getter();
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();
  v99 = os_log_type_enabled(v97, v98);
  v118 = v0[68];
  v100 = v0[45];
  v101 = v0[43];
  v103 = v0[35];
  v102 = v0[36];
  v104 = v0[34];
  if (v99)
  {
    v116 = v0[36];
    v105 = swift_slowAlloc();
    v114 = v96;
    v106 = swift_slowAlloc();
    v122 = v106;
    *v105 = 136315394;
    *(v105 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x80000001002AFC70, &v122);
    *(v105 + 12) = 1024;
    *(v105 + 14) = v121;
    _os_log_impl(&_mh_execute_header, v97, v98, "Notification real time check.%s, success: %{BOOL}d", v105, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v106);

    v118(v100, v101);
    (*(v103 + 8))(v116, v104);
  }

  else
  {

    v118(v100, v101);
    (*(v103 + 8))(v102, v104);
  }

  v107 = v0[1];

  return v107(v121);
}

uint64_t NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)(uint64_t a1)
{
  *(*v1 + 576) = a1;

  return _swift_task_switch(NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:), 0, 0);
}

uint64_t closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:), 0, 0);
}

uint64_t closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)()
{
  type metadata accessor for NotificationBiomeManager();
  v0[6] = static NotificationBiomeManager.shared.getter();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);
  v2 = v0[2];

  return NotificationBiomeManager.donateEvent(_:)(v2);
}

{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  type metadata accessor for CommonLogger();
  static CommonLogger.NotificationBiome.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to donate biome event: %@", v3, 0xCu);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v4, &_sSo8NSObjectCSgMd);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v6 = v0[1];

  return v6();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of (String, Date?)(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a3, &_sScPSgMd);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a3, &_sScPSgMd);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of (String, Date?)(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a3, &_sScPSgMd);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a3, &_sScPSgMd);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of (String, Date?)(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a3, &_sScPSgMd);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a3, &_sScPSgMd);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id NotificationRealTimeCheckManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationRealTimeCheckManager();
  return objc_msgSendSuper2(&v2, "init");
}

id NotificationRealTimeCheckManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationRealTimeCheckManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10003F324()
{

  return _swift_deallocObject(v0, 24, 7);
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CMMotionActivity);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
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
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NotificationApprovedApplication);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
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
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOResource);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
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
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = [v20 startDate];
      v23 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v22) = static Date.> infix(_:_:)();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
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

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v30 = a3;
    v7 = *(v4 + 8 * a3);
    v25 = v6;
    v26 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      v11 = [v9 rankingDictionary];
      v12 = 0.0;
      if (v11)
      {
        v13 = v11;
        v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        strcpy(v27, "rankingScore");
        BYTE5(v27[1]) = 0;
        HIWORD(v27[1]) = -5120;
        AnyHashable.init<A>(_:)();
        if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v28), (v16 & 1) != 0))
        {
          outlined init with copy of Any(*(v14 + 56) + 32 * v15, v29);
          outlined destroy of AnyHashable(v28);

          if (swift_dynamicCast())
          {
            v12 = v27[0];
          }
        }

        else
        {

          outlined destroy of AnyHashable(v28);
        }
      }

      v17 = [v10 rankingDictionary];
      if (v17)
      {
        v18 = v17;
        v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        strcpy(v27, "rankingScore");
        BYTE5(v27[1]) = 0;
        HIWORD(v27[1]) = -5120;
        AnyHashable.init<A>(_:)();
        if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v28), (v21 & 1) != 0))
        {
          outlined init with copy of Any(*(v19 + 56) + 32 * v20, v29);
          outlined destroy of AnyHashable(v28);

          if (swift_dynamicCast())
          {

            if (v27[0] >= v12)
            {
              goto LABEL_4;
            }

            goto LABEL_20;
          }
        }

        else
        {

          outlined destroy of AnyHashable(v28);
        }
      }

      if (v12 <= 0.0)
      {
        goto LABEL_4;
      }

LABEL_20:
      if (!v4)
      {
        __break(1u);
        return;
      }

      v22 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v22;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
LABEL_4:
        a3 = v30 + 1;
        v5 = v26 + 8;
        v6 = v25 - 1;
        if (v30 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }
  }
}

{
  v35 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = [v20 startDate];
      v23 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v22) = static Date.> infix(_:_:)();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
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

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 priorityScore];
      v15 = v14;
      [v13 priorityScore];
      v17 = v16;

      if (v15 >= v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v23 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      v13 = COERCE_DOUBLE(dispatch thunk of Asset.priorityScore.getter());
      if (v14)
      {
        v15 = 300.0;
      }

      else
      {
        v15 = v13;
      }

      v16 = dispatch thunk of Asset.priorityScore.getter();
      v18 = v17;

      v19 = *&v16;
      if (v18)
      {
        v19 = 300.0;
      }

      if (v15 >= v19)
      {
LABEL_4:
        ++v4;
        v6 = v23 + 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v20 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v20;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v21 = v7;
    v22 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 lastInvokedTimestamp];
      [v12 doubleValue];
      v14 = v13;

      v15 = [v11 lastInvokedTimestamp];
      [v15 doubleValue];
      v17 = v16;

      if (v17 >= v14)
      {
LABEL_4:
        ++v4;
        v6 = v22 + 8;
        v7 = v21 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v18;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v125);
  v124 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = specialized _ArrayBuffer._consumeAndCreateNew()(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        specialized Array.remove(at:)(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 startDate];
      v24 = v123;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = [v22 startDate];
      v26 = v124;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LODWORD(v121) = static Date.> infix(_:_:)();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 startDate];
        v34 = v123;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = [v32 startDate];
        v36 = v124;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v35) = static Date.> infix(_:_:)() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew()(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        specialized Array.remove(at:)(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 startDate];
    v53 = v123;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = [v51 startDate];
    v55 = v124;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v54) = static Date.> infix(_:_:)();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

{
  v6 = v4;
  v116 = a1;
  v125 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v125);
  v124 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = specialized _ArrayBuffer._consumeAndCreateNew()(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        specialized Array.remove(at:)(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 startDate];
      v24 = v123;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = [v22 startDate];
      v26 = v124;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LODWORD(v121) = static Date.> infix(_:_:)();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 startDate];
        v34 = v123;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = [v32 startDate];
        v36 = v124;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v35) = static Date.> infix(_:_:)() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew()(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        specialized Array.remove(at:)(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 startDate];
    v53 = v123;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = [v51 startDate];
    v55 = v124;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v54) = static Date.> infix(_:_:)();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(id *a1, id *a2, id *a3, void **a4)
{
  v56 = type metadata accessor for Date();
  v8 = *(v56 - 8);
  v9 = __chkstk_darwin(v56);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 startDate];
        v41 = v54;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = [v39 startDate];
        v43 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v42) = static Date.> infix(_:_:)();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 startDate];
        v21 = v54;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = [v19 startDate];
        v23 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v22) = static Date.> infix(_:_:)();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

{
  v56 = type metadata accessor for Date();
  v8 = *(v56 - 8);
  v9 = __chkstk_darwin(v56);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 startDate];
        v41 = v54;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = [v39 startDate];
        v43 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v42) = static Date.> infix(_:_:)();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 startDate];
        v21 = v54;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = [v19 startDate];
        v23 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v22) = static Date.> infix(_:_:)();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for UIFontDescriptorAttributeName(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (*(v18 + 56) + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for UIFontDescriptorTraitKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (*(v18 + 56) + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for MOSuggestionAssetMetadataKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (*(v18 + 56) + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return _objc_release_x1();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1, v21);
  }

  return result;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for URL();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
      return outlined assign with take of Date?(a1, v19 + *(*(v20 - 8) + 72) * v12, &_s10Foundation4DateVSgMd);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v23);
  }
}

{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v23);
  }
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_14:
      type metadata accessor for MOSuggestionAssetMetadataKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    return outlined assign with take of Date?(a1, v18[7] + 32 * v8, &_sypSgMd);
  }

  specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

  return a2;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, Swift::UInt a3, char a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v11[3];
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 >= v17 && (a5 & 1) == 0)
    {
      v20 = result;
      specialized _NativeDictionary.copy()();
      result = v20;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
    if ((v18 & 1) != (v21 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v6;
  if (v18)
  {
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a4 & 1, a1, v22);

    return a2;
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(unint64_t, char *, uint64_t, uint64_t))
{
  v32 = a6;
  v33 = a7;
  v30 = a4;
  v31 = a5;
  v8 = v7;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v30();
      goto LABEL_7;
    }

    v31();
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v22 & 1) == (v29 & 1))
    {
      v18 = v28;
      v24 = *v8;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v15, a2, v12);
      return v33(v18, v15, a1, v24);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v8;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = *(v24 + 56) + 40 * v18;
  __swift_destroy_boxed_opaque_existential_0(v25);
  v26 = v32;

  return v26(a1, v25);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return outlined init with take of Any(a1, v17);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      specialized _NativeDictionary.copy()();
      v17 = v25;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a7 & 1);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * v17;
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3;
    *(v28 + 24) = a4 & 1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v17, a5, a6, a1, a2, a3, a4 & 1, v27);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a1, a2, v21, a4);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Date?)(v4, &v11, &_sSo21NSAttributedStringKeya_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo24UIFontDescriptorTraitKeyaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Date?)(v4, &v11, &_sSo24UIFontDescriptorTraitKeya_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo9MOSettingV_SaySo23MOEventBundleSourceTypeaGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo9MOSettingVSaySo23MOEventBundleSourceTypeaGGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
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
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService30MOSuggestionAssetVisualSubTypeO_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeOSiGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say16MomentsUIService25MOSuggestionAssetTileSizeOGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSay16MomentsUIService25MOSuggestionAssetTileSizeOGGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
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
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SDys11AnyHashableVypGSgTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SDys11AnyHashableVypGSgtMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSDys11AnyHashableVypGSgGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Date?)(v9, v5, &_s10Foundation4UUIDV_SDys11AnyHashableVypGSgtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18MOUsageContextTypea_SDy10Foundation4UUIDVSDys11AnyHashableVypGSgGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18MOUsageContextTypeaSDy10Foundation4UUIDVSDys11AnyHashableVypGSgGGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So6UIFontCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaSo6UIFontCGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI7MapItemCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9MomentsUI7MapItemCGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_SSTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSSGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo24UIFontDescriptorTraitKeyaSo0C6WeightaGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Date?)(v4, &v11, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26UIFontDescriptorFeatureKeyaSiGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Date?)(v4, &v13, &_sSS_yptMd);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService26MOSuggestionAssetAnalyticsC0F13TransferEventV0I6FieldsO_So0E10AssetsTypeaTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16MomentsUIService26MOSuggestionAssetAnalyticsC0F13TransferEventV0I6FieldsOSo0E10AssetsTypeaGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService30MOSuggestionAssetVisualSubTypeO_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeOSSGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService30MOSuggestionAssetVisualSubTypeO_So0e6AssetsI0aTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeOSo0e6AssetsI0aGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15CIContextOptiona_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo15CIContextOptionaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Date?)(v4, &v11, &_sSo15CIContextOptiona_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_Sb_SbtTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_Sb_SbttMd);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSb_SbtGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Date?)(v9, v5, &_s10Foundation4UUIDV_Sb_SbttMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 2 * v13);
      v17 = v8[1];
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22MOSuggestionAssetsTypea_16MomentsUIService0c14AssetVisualSubE0OTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo22MOSuggestionAssetsTypea16MomentsUIService0c14AssetVisualSubE0OGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo38UIApplicationOpenExternalURLOptionsKeyaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Date?)(v4, &v11, &_sSo38UIApplicationOpenExternalURLOptionsKeya_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28MOSuggestionAssetMetadataKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo28MOSuggestionAssetMetadataKeyaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Date?)(v4, &v11, &_sSo28MOSuggestionAssetMetadataKeya_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_16MomentsUIService19TaskProcessorWorker_pTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_16MomentsUIService19TaskProcessorWorker_ptMd);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV16MomentsUIService19TaskProcessorWorker_pGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Date?)(v9, v5, &_s10Foundation4UUIDV_16MomentsUIService19TaskProcessorWorker_ptMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = outlined init with take of MOMusicPlaybackCoordinatorDelegate(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_16MomentsUIService19TaskProcessorWorker_pyKcTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS16MomentsUIService19TaskProcessorWorker_pyKcGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService25MOSuggestionAssetTileSizeO_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16MomentsUIService25MOSuggestionAssetTileSizeO12CoreGraphics7CGFloatVGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28MOSuggestionAssetMetadataKeya_ypSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo28MOSuggestionAssetMetadataKeyaypSgGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Date?)(v4, &v13, &_sSo28MOSuggestionAssetMetadataKeya_ypSgtMd);
      v5 = v13;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 40;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService19MOAssetAndMediaTypeV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16MomentsUIService19MOAssetAndMediaTypeVSiGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 2);
      v6 = *(i - 8);
      v7 = *i;
      v8 = *(i - 3);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v8;
      *(v11 + 8) = v5;
      *(v11 + 16) = v6;
      *(v3[7] + 8 * result) = v7;
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