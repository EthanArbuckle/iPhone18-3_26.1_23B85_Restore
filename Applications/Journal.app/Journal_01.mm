uint64_t sub_10001D988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001D85C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for JournalAjaxSession.JournalSentiment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_10001DA40()
{
  result = qword_100AE8058;
  if (!qword_100AE8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8058);
  }

  return result;
}

uint64_t sub_10001DA94()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001DAC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001DB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001DB98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001DC14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneSplitViewController.ContentType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001DC80()
{
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  qword_100B2F9E0 = qword_100B2F840;
}

uint64_t sub_10001DCF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001DD40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001DD88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001DDD0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10001DE18(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v6, qword_100B2FC48);
  FileStoreConfiguration.applicationSupportDirectoryURL.getter();
  URL.appendingPathComponent(_:)();
  (*(v3 + 8))(a1, v2);
  (*(v3 + 32))(a1, v5, v2);
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  URL.path.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 fileExistsAtPath:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [v7 defaultManager];
    URL.path.getter();
    v12 = String._bridgeToObjectiveC()();

    sub_1000F24EC(&qword_100AD77C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940080;
    *(inited + 32) = NSFileProtectionKey;
    v14 = NSFileProtectionKey;
    v15 = FileStoreConfiguration.protectionClass.getter();
    type metadata accessor for URLFileProtection(0);
    *(inited + 64) = v16;
    *(inited + 40) = v15;
    sub_100362FA8(inited);
    swift_setDeallocating();
    sub_100004F84(inited + 32, &qword_100ADFE90);
    type metadata accessor for FileAttributeKey(0);
    sub_10001E4C0(&qword_100AD1C38, type metadata accessor for FileAttributeKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v34 = 0;
    v18 = [v11 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:isa error:&v34];

    if (v18)
    {
      v19 = v34;
      v20 = FileStoreConfiguration.protectionClass.getter();
      URL.setProtectionClass(protectionClass:)(v20);

      static FileStoreConfiguration.excludeFromBackupFully(at:)();
    }

    else
    {
      v21 = v34;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100ACFA70 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000617C(v22, qword_100AD7700);
      swift_errorRetain();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v34 = v27;
        *v25 = 136446466;
        if (qword_100ACFA78 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for UUID();
        sub_10000617C(v28, qword_100AD7718);
        sub_10001E4C0(&qword_100AE19B0, &type metadata accessor for UUID);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = sub_100008458(v29, v30, &v34);

        *(v25 + 4) = v31;
        *(v25 + 12) = 2112;
        swift_errorRetain();
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 14) = v32;
        *v26 = v32;
        _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Unable to create assets directory: %@", v25, 0x16u);
        sub_100004F84(v26, &unk_100AD4BB0);

        sub_10000BA7C(v27);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10001E3F8()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD7700);
  v1 = sub_10000617C(v0, qword_100AD7700);
  if (qword_100AD01B8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10001E4C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001E508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001E550(char a1)
{
  v42 = type metadata accessor for URL();
  v2 = *(v42 - 8);
  v3 = __chkstk_darwin(v42);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v38 - v6;
  type metadata accessor for AssetsFileManager();
  LODWORD(v8) = a1 & 1;
  sub_10001DE18(v7);
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v41 = v7;
  URL.path.getter();
  v11 = String._bridgeToObjectiveC()();

  v44 = 0;
  v12 = [v10 contentsOfDirectoryAtPath:v11 error:&v44];

  v13 = v44;
  if (!v12)
  {
    v25 = v44;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_12:
    if (qword_100ACFA70 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v13;

  v16 = *(v14 + 16);
  if (v16)
  {
    v39 = v8;
    v17 = 0;
    v40 = v2;
    v8 = (v2 + 8);
    v2 = v14 + 40;
    v38[1] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (v17 < *(v14 + 16))
    {

      URL.appendingPathComponent(_:)();

      v18 = [v9 defaultManager];
      URL._bridgeToObjectiveC()(v19);
      v21 = v20;
      v44 = 0;
      v22 = [v18 removeItemAtURL:v20 error:&v44];

      if (!v22)
      {
        v27 = v44;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*v8)(v5, v42);
        v2 = v40;
        LOBYTE(v8) = v39;
        goto LABEL_12;
      }

      ++v17;
      v23 = *v8;
      v24 = v44;
      v23(v5, v42);
      v2 += 16;
      if (v16 == v17)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
LABEL_13:
    v28 = type metadata accessor for Logger();
    sub_10000617C(v28, qword_100AD7700);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v31 = 136315394;
      v43 = v8;
      v34 = String.init<A>(describing:)();
      v36 = sub_100008458(v34, v35, &v44);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v37;
      *v32 = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error deleting staging directory %s Error: %@", v31, 0x16u);
      sub_100004F84(v32, &unk_100AD4BB0);

      sub_10000BA7C(v33);
    }

    else
    {
    }

    return (*(v2 + 8))(v41, v42);
  }

  v23 = *(v2 + 8);
LABEL_10:
  v23(v41, v42);
}

uint64_t sub_10001EA34()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10001EB14(void *a1, int a2)
{
  v3 = v2;
  v62 = a2;
  v63 = a1;
  v4 = type metadata accessor for UUID();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v57 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v61 - 8);
  __chkstk_darwin(v61);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  UUID.init()();
  v11 = OBJC_IVAR____TtC7Journal13CoreDataStack_throttleSubject;
  sub_1000F24EC(&qword_100ADFA68);
  swift_allocObject();
  *&v2[v11] = PassthroughSubject.init()();
  v12 = OBJC_IVAR____TtC7Journal13CoreDataStack_throttleSaveSubscription;
  sub_1000F24EC(&qword_100ADFA70);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *&v2[v12] = v13;
  v60 = OBJC_IVAR____TtC7Journal13CoreDataStack_throttleDispatchQueue;
  sub_1000065A8(0, &qword_100AD6210);
  static DispatchQoS.background.getter();
  v65 = &_swiftEmptyArrayStorage;
  sub_10001DDD0(&qword_100AD1500, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F24EC(&qword_100AD1508);
  sub_10048B2CC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v61);
  *&v2[v60] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC7Journal13CoreDataStack_unDeletedObjectsIDs] = &_swiftEmptySetSingleton;
  v14 = OBJC_IVAR____TtC7Journal13CoreDataStack_lockUnDeletedObjects;
  *&v2[v14] = [objc_allocWithZone(NSLock) init];
  v2[OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoresLoadSuccess] = 0;
  v15 = &v2[OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoreLoadedSuccessfully];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v2[OBJC_IVAR____TtC7Journal13CoreDataStack_spotlightDelegate] = 0;
  *&v2[OBJC_IVAR____TtC7Journal13CoreDataStack_remoteChangeObservationTask] = 0;
  *&v2[OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoreLoadingError] = 0;
  v16 = sub_10001F4B8(v63, v62);
  v17 = OBJC_IVAR____TtC7Journal13CoreDataStack_container;
  *&v2[OBJC_IVAR____TtC7Journal13CoreDataStack_container] = v16;
  v18 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  v19 = OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate;
  *&v2[OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate] = v18;
  v20 = *&v2[v17];
  v21 = v18;
  v22 = [v20 viewContext];
  v23 = [v22 persistentStoreCoordinator];

  [v21 setPersistentStoreCoordinator:v23];
  [*&v3[v19] setAutomaticallyMergesChangesFromParent:1];
  v24 = *&v3[v19];
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 mergeByPropertyObjectTrumpMergePolicy];
  [v26 setMergePolicy:v27];

  v28 = [*&v3[v17] viewContext];
  v29 = OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain;
  *&v3[OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain] = v28;
  [v28 setAutomaticallyMergesChangesFromParent:1];
  v30 = *&v3[v29];
  v31 = [v25 mergeByPropertyStoreTrumpMergePolicy];
  [v30 setMergePolicy:v31];

  v32 = type metadata accessor for CoreDataStack();
  v67.receiver = v3;
  v67.super_class = v32;
  v33 = objc_msgSendSuper2(&v67, "init");
  sub_10001FBD0();
  v34 = OBJC_IVAR____TtC7Journal13CoreDataStack_container;
  v35 = [*&v33[OBJC_IVAR____TtC7Journal13CoreDataStack_container] persistentStoreDescriptions];
  sub_1000065A8(0, &qword_100AD6F78);
  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v36 >> 62))
  {
    result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v65 = 0;
    v66 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    v44 = v58;
    v43 = v59;
    v45 = &v33[OBJC_IVAR____TtC7Journal13CoreDataStack_sessionID];
    v33 = v57;
    (*(v58 + 16))(v57, v45, v59);
    sub_10001DDD0(&qword_100AE19B0, &type metadata accessor for UUID);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;

    v65 = v46;
    v66 = v48;
    (*(v44 + 8))(v33, v43);
    v49._countAndFlagsBits = 0xD000000000000020;
    v49._object = 0x80000001008F5620;
    String.append(_:)(v49);
    v50 = v65;
    v51 = v66;
    v52 = qword_100ACFDE0;

    if (v52 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_10000617C(v53, qword_100AE50A0);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v33 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v64 = v56;
      *v33 = 136315138;
      *(v33 + 4) = sub_100008458(v50, v51, &v64);
      _os_log_impl(&_mh_execute_header, v54, v55, "%s", v33, 0xCu);
      sub_10000BA7C(v56);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_15;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v36 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v38 = *(v36 + 32);
LABEL_6:
  v39 = v38;

  if (qword_100ACFD68 != -1)
  {
    swift_once();
  }

  v40 = [*&v33[v34] persistentStoreCoordinator];
  v41 = [objc_allocWithZone(type metadata accessor for JournalCoreDataSpotlightDelegate()) initForStoreWithDescription:v39 coordinator:v40];

  v42 = *&v33[OBJC_IVAR____TtC7Journal13CoreDataStack_spotlightDelegate];
  *&v33[OBJC_IVAR____TtC7Journal13CoreDataStack_spotlightDelegate] = v41;

  return v33;
}

uint64_t sub_10001F408(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10001F4B8(uint64_t a1, unsigned __int8 a2)
{
  sub_1000065A8(0, &qword_100AEEE30);
  v4 = static NSManagedObjectModel.shared.getter();
  v5 = objc_allocWithZone(NSPersistentContainer);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithName:v6 managedObjectModel:v4];

  v8 = sub_10001F7DC(a1, a2);
  sub_1000F24EC(&unk_100AD4780);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100941D50;
  *(v9 + 32) = v8;
  sub_1000065A8(0, &qword_100AD6F78);
  v10 = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setPersistentStoreDescriptions:isa];

  if (qword_100AD0198 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000617C(v12, qword_100B2FF68);
  v13 = v7;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = [v13 name];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_100008458(v18, v20, &v28);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = [v13 persistentStoreDescriptions];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = Array.description.getter();
    v25 = v24;

    v26 = sub_100008458(v23, v25, &v28);

    *(v16 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "CoreDataStack init for container %s\nSQLite PATH: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  return v13;
}

id sub_10001F7DC(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F9B0(v6, a2);
  v9 = objc_allocWithZone(NSPersistentStoreDescription);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = [v9 initWithURL:v11];

  [v13 setShouldInferMappingModelAutomatically:1];
  [v13 setShouldMigrateStoreAutomatically:1];
  [v13 setOption:a1 forKey:NSPersistentStoreFileProtectionKey];
  sub_1000065A8(0, &unk_100ADE730);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v13 setOption:isa forKey:NSPersistentHistoryTrackingKey];

  v15 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v13 setOption:v15 forKey:NSPersistentStoreRemoteChangeNotificationPostOptionKey];

  (*(v5 + 8))(v8, v4);
  return v13;
}

uint64_t sub_10001F9B0(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 2)
  {

    return URL.init(fileURLWithPath:)(0x6C756E2F7665642FLL, 0xE90000000000006CLL);
  }

  else
  {
    if (a2)
    {
      v8 = 0x2D73746E656D6F6DLL;
    }

    else
    {
      v8 = 0x73746E656D6F6DLL;
    }

    if (a2)
    {
      v9 = 0xEF676E6967617473;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    if (qword_100AD0060 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for FileStoreConfiguration();
    sub_10000617C(v10, qword_100B2FC48);
    FileStoreConfiguration.libraryDirectoryURL.getter();
    v13[0] = v8;
    v13[1] = v9;
    v11._countAndFlagsBits = 0x6574696C71732ELL;
    v11._object = 0xE700000000000000;
    String.append(_:)(v11);
    URL.appendingPathComponent(_:)();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_10001FBD0()
{
  v1 = type metadata accessor for Date();
  v44 = *(v1 - 1);
  v45 = v1;
  v2 = *(v44 + 64);
  v3 = __chkstk_darwin(v1);
  v4 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v44 - v5;
  v7 = type metadata accessor for ProtectedData.ProtectedDataState();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  v14 = OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoresLoadSuccess;
  v15 = v0;
  if (v0[OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoresLoadSuccess])
  {
    if (qword_100ACFDE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000617C(v16, qword_100AE50A0);
    v45 = v0;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136446466;
      type metadata accessor for UUID();
      sub_10001DDD0(&qword_100AE19B0, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = sub_100008458(v21, v22, aBlock);

      *(v19 + 4) = v23;
      *(v19 + 12) = 1024;
      v24 = v0[v14];

      *(v19 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s (loadPersistentStores)  persistentStoresLoadSuccess: %{BOOL}d", v19, 0x12u);
      sub_10000BA7C(v20);
    }

    else
    {

      v34 = v45;
    }
  }

  else
  {
    type metadata accessor for ProtectedData();
    static ProtectedData.shared.getter();
    ProtectedData.state.getter();

    (*(v8 + 104))(v11, enum case for ProtectedData.ProtectedDataState.available(_:), v7);
    v25 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
    v26 = *(v8 + 8);
    v26(v11, v7);
    v26(v13, v7);
    if (v25)
    {
      Date.init()();
      v27 = *&v15[OBJC_IVAR____TtC7Journal13CoreDataStack_container];
      v29 = v44;
      v28 = v45;
      (*(v44 + 16))(v4, v6, v45);
      v30 = (*(v29 + 80) + 24) & ~*(v29 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = v15;
      (*(v29 + 32))(v31 + v30, v4, v28);
      aBlock[4] = sub_1000202F4;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100020268;
      aBlock[3] = &unk_100A6EA10;
      v32 = _Block_copy(aBlock);
      v33 = v15;

      [v27 loadPersistentStoresWithCompletionHandler:v32];
      _Block_release(v32);
      (*(v29 + 8))(v6, v28);
    }

    else
    {
      if (qword_100ACFDE0 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10000617C(v35, qword_100AE50A0);
      v36 = v15;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        aBlock[0] = v40;
        *v39 = 136446210;
        type metadata accessor for UUID();
        sub_10001DDD0(&qword_100AE19B0, &type metadata accessor for UUID);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = sub_100008458(v41, v42, aBlock);

        *(v39 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s (loadPersistentStores) protected data is not available to load persistent stores", v39, 0xCu);
        sub_10000BA7C(v40);
      }
    }
  }
}

void sub_100020268(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_1000202F4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_100020378(a1, a2, v6, v7);
}

void sub_100020378(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v7 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v7 - 8);
  v9 = &v104 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a3[OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoreLoadingError] = a2;

  if (a2)
  {
    swift_errorRetain();
    v105 = _convertErrorToNSError(_:)();
    v14 = [v105 domain];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = [v105 code];
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v15 && v19 == v17)
    {

      if (v18 == 640)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) != 0 && v18 == 640)
      {
LABEL_8:
        if (qword_100ACFDE0 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_10000617C(v22, qword_100AE50A0);
        v23 = a3;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v106 = v27;
          *v26 = 136446210;
          type metadata accessor for UUID();
          sub_10001DDD0(&qword_100AE19B0, &type metadata accessor for UUID);
          v28 = dispatch thunk of CustomStringConvertible.description.getter();
          v30 = sub_100008458(v28, v29, &v106);

          *(v26 + 4) = v30;
          v31 = "%{public}s (loadPersistentStores) File write out of space error";
LABEL_12:
          _os_log_impl(&_mh_execute_header, v24, v25, v31, v26, 0xCu);
          sub_10000BA7C(v27);

LABEL_13:
          return;
        }

        goto LABEL_58;
      }
    }

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v15 && v45 == v17)
    {
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v46 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    if (v18 == 134110)
    {
      if (qword_100ACFDE0 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_10000617C(v47, qword_100AE50A0);
      v48 = a3;
      v49 = v105;
      v105 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v105, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v106 = v53;
        *v51 = 136446466;
        type metadata accessor for UUID();
        sub_10001DDD0(&qword_100AE19B0, &type metadata accessor for UUID);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = sub_100008458(v54, v55, &v106);

        *(v51 + 4) = v56;
        *(v51 + 12) = 2112;
        *(v51 + 14) = v49;
        *v52 = v49;
        v57 = v49;
        _os_log_impl(&_mh_execute_header, v105, v50, "%{public}s (loadPersistentStores) Migration error: %@", v51, 0x16u);
        sub_100004F84(v52, &unk_100AD4BB0);

        sub_10000BA7C(v53);

        return;
      }

      goto LABEL_59;
    }

LABEL_32:
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v15 && v58 == v17)
    {
    }

    else
    {
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v59 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (v18 == 134100)
    {
      if (qword_100ACFDE0 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_10000617C(v60, qword_100AE50A0);
      v61 = a3;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v106 = v27;
        *v26 = 136446210;
        type metadata accessor for UUID();
        sub_10001DDD0(&qword_100AE19B0, &type metadata accessor for UUID);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = sub_100008458(v62, v63, &v106);

        *(v26 + 4) = v64;
        v31 = "%{public}s (loadPersistentStores) Incompatible version hash error";
        goto LABEL_12;
      }

      goto LABEL_58;
    }

LABEL_41:
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v15 && v65 == v17)
    {
    }

    else
    {
      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v74 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    if (v18 == 260)
    {
      if (qword_100ACFDE0 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_10000617C(v75, qword_100AE50A0);
      v76 = a3;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v106 = v27;
        *v26 = 136446210;
        type metadata accessor for UUID();
        sub_10001DDD0(&qword_100AE19B0, &type metadata accessor for UUID);
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        v79 = sub_100008458(v77, v78, &v106);

        *(v26 + 4) = v79;
        v31 = "%{public}s (loadPersistentStores) Parent directory does not exist or write permission is disallowed";
        goto LABEL_12;
      }

LABEL_58:

LABEL_59:
      v80 = v105;

      return;
    }

LABEL_62:

    v106 = 0;
    v107 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);
    type metadata accessor for UUID();
    sub_10001DDD0(&qword_100AE19B0, &type metadata accessor for UUID);
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = v82;

    v106 = v81;
    v107 = v83;
    v84._object = 0x80000001008F56B0;
    v84._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v84);
    v85 = [v105 description];
    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;

    v89._countAndFlagsBits = v86;
    v89._object = v88;
    String.append(_:)(v89);

    v90._countAndFlagsBits = 8236;
    v90._object = 0xE200000000000000;
    String.append(_:)(v90);
    v91 = [v105 userInfo];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v92 = Dictionary.description.getter();
    v94 = v93;

    v95._countAndFlagsBits = v92;
    v95._object = v94;
    String.append(_:)(v95);

    v97 = v106;
    v96 = v107;
    if (qword_100ACFDE0 != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    sub_10000617C(v98, qword_100AE50A0);

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v106 = v102;
      *v101 = 136315138;
      v103 = sub_100008458(v97, v96, &v106);

      *(v101 + 4) = v103;
      _os_log_impl(&_mh_execute_header, v99, v100, "%s", v101, 0xCu);
      sub_10000BA7C(v102);

      goto LABEL_13;
    }

    goto LABEL_59;
  }

  a3[OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoresLoadSuccess] = 1;
  if (qword_100ACFDE0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000617C(v32, qword_100AE50A0);
  (*(v11 + 16))(v13, a4, v10);
  v33 = a3;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = (v11 + 8);
  v37 = &unk_100B2F000;
  if (os_log_type_enabled(v34, v35))
  {
    v38 = swift_slowAlloc();
    *v38 = 134218496;
    Date.timeIntervalSinceNow.getter();
    v40 = v39;
    (*v36)(v13, v10);
    *(v38 + 4) = -v40;
    *(v38 + 12) = 2048;
    v41 = [*&v33[OBJC_IVAR____TtC7Journal13CoreDataStack_container] viewContext];
    v42 = [v41 persistentStoreCoordinator];

    if (v42)
    {
      v43 = [v42 persistentStores];

      sub_1000065A8(0, &qword_100AE5BC0);
      v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v44 >> 62)
      {
        v42 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v42 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v37 = &unk_100B2F000;
    }

    else
    {
      v37 = &unk_100B2F000;
    }

    *(v38 + 14) = v42;

    *(v38 + 22) = 1024;
    v66 = *&v33[v37[302]];

    *(v38 + 24) = v66 != 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Loading persistent stores:\ncompleted in %f seconds.\npersistentStoresCount: %ld\nwill call persistentStoreLoadedSuccessfully(): %{BOOL}d", v38, 0x1Cu);
  }

  else
  {

    (*v36)(v13, v10);
  }

  v67 = *&v33[v37[302]];
  if (v67)
  {

    v67(v68);
    sub_100004DF8(v67);
  }

  if (static Runtime.isJournalApp.getter())
  {
    static TaskPriority.utility.getter();
    v69 = type metadata accessor for TaskPriority();
    (*(*(v69 - 8) + 56))(v9, 0, 1, v69);
    v70 = *&v33[OBJC_IVAR____TtC7Journal13CoreDataStack_container];
    v71 = swift_allocObject();
    v71[2] = 0;
    v71[3] = 0;
    v71[4] = v70;
    v72 = v70;
    v73 = sub_10017AD28(0, 0, v9, &unk_1009577C8, v71);
    sub_100004F84(v9, &qword_100AD5170);
    *&v33[OBJC_IVAR____TtC7Journal13CoreDataStack_remoteChangeObservationTask] = v73;
  }
}

uint64_t sub_100021280()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000212C0()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE50A0);
  v1 = sub_10000617C(v0, qword_100AE50A0);
  if (qword_100AD0198 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100021388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_10002143C(a1, v4, v5, v6);
}

uint64_t sub_10002143C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for Notification();
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v4[13] = *(v7 + 64);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AF6E60);
  v4[20] = swift_task_alloc();
  v9 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[21] = v9;
  v4[22] = *(v9 - 8);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100021744, 0, 0);
}

uint64_t sub_100021670()
{

  return swift_deallocObject();
}

uint64_t sub_1000216C0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100021744()
{
  v1 = *(v0 + 56);
  v2 = swift_allocObject();
  *(v0 + 192) = v2;
  v3 = [v1 persistentStoreCoordinator];
  v4 = [v3 currentPersistentHistoryTokenFromStores:0];

  *(v2 + 16) = v4;
  v5 = [objc_opt_self() defaultCenter];
  v6 = [v1 persistentStoreCoordinator];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  *(v0 + 344) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v7 = sub_10001DDD0(&qword_100AD5F58, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v8 = swift_task_alloc();
  *(v0 + 200) = v8;
  *v8 = v0;
  v8[1] = sub_100031E04;
  v9 = *(v0 + 160);
  v10 = *(v0 + 168);

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v7);
}

uint64_t sub_100021920()
{

  return swift_deallocObject();
}

void sub_10002195C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 arguments];

  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v3 + 1;
    v5 = (v2 + 56);
    do
    {
      if (v4 == 2)
      {
        goto LABEL_12;
      }

      if (!--v4)
      {
        __break(1u);
        goto LABEL_16;
      }

      v6 = v5;
      if (*(v5 - 3) == 0xD000000000000017 && 0x80000001008F0DB0 == *(v5 - 2))
      {
        break;
      }

      v5 += 2;
    }

    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);
    v9 = *(v6 - 1);
    v8 = *v6;

    if (v9 == 49 && v8 == 0xE100000000000000)
    {
LABEL_12:

      return;
    }

    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
LABEL_16:
    __break(1u);
  }
}

uint64_t type metadata accessor for CloudKitStack()
{
  result = qword_100AE5DB0;
  if (!qword_100AE5DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100021BD4()
{
  sub_100021C88();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100021C88()
{
  if (!qword_100AE5DC0)
  {
    sub_1000F2A18(&qword_100ADFA80);
    v0 = type metadata accessor for Mutex();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE5DC0);
    }
  }
}

uint64_t sub_100021CEC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000F24EC(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100021D54()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE5D50);
  v1 = sub_10000617C(v0, qword_100AE5D50);
  if (qword_100AD01A0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NSString sub_100021E48()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2FC90 = result;
  return result;
}

uint64_t sub_100021E80(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_100021E90()
{
  result = [objc_allocWithZone(type metadata accessor for OperationsManager()) init];
  qword_100AF2118 = result;
  return result;
}

char *sub_100021EE4()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000F24EC(&qword_100AF2188);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

id sub_100021F18()
{
  v1 = &v0[OBJC_IVAR____TtC7Journal17OperationsManager_mapTableFileAttachmentsQueue];
  v2 = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  *v1 = 0;
  *(v1 + 1) = v2;
  v3 = &v0[OBJC_IVAR____TtC7Journal17OperationsManager_mapTableAssetMetadataQueue];
  v4 = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  *v3 = 0;
  *(v3 + 1) = v4;
  v5 = [objc_allocWithZone(NSOperationQueue) init];
  v6 = OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueLowPriority;
  *&v0[OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueLowPriority] = v5;
  v7 = qword_100ACFB88;
  v8 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  [v8 setUnderlyingQueue:qword_100B2F620];

  v9 = *&v0[v6];
  v10 = String._bridgeToObjectiveC()();
  [v9 setName:v10];

  [*&v0[v6] setMaxConcurrentOperationCount:6];
  [*&v0[v6] setQualityOfService:9];
  v11 = [objc_allocWithZone(NSOperationQueue) init];
  v12 = OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueRegularPriority;
  *&v0[OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueRegularPriority] = v11;
  v13 = qword_100ACFB90;
  v14 = v11;
  if (v13 != -1)
  {
    swift_once();
  }

  [v14 setUnderlyingQueue:qword_100B2F628];

  v15 = *&v0[v12];
  v16 = String._bridgeToObjectiveC()();
  [v15 setName:v16];

  [*&v0[v12] setMaxConcurrentOperationCount:6];
  [*&v0[v12] setQualityOfService:-1];
  v17 = [objc_allocWithZone(NSOperationQueue) init];
  v18 = OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueHighPriority;
  *&v0[OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueHighPriority] = v17;
  v19 = qword_100ACFB98;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  [v20 setUnderlyingQueue:qword_100B2F630];

  v21 = *&v0[v18];
  v22 = String._bridgeToObjectiveC()();
  [v21 setName:v22];

  [*&v0[v18] setMaxConcurrentOperationCount:2];
  [*&v0[v18] setQualityOfService:33];
  v23 = [objc_allocWithZone(NSOperationQueue) init];
  v24 = OBJC_IVAR____TtC7Journal17OperationsManager_fileAttachmentsQueue;
  *&v0[OBJC_IVAR____TtC7Journal17OperationsManager_fileAttachmentsQueue] = v23;
  v25 = qword_100AD0A40;
  v26 = v23;
  if (v25 != -1)
  {
    swift_once();
  }

  [v26 setUnderlyingQueue:qword_100B30F80];

  v27 = *&v0[v24];
  v28 = String._bridgeToObjectiveC()();
  [v27 setName:v28];

  [*&v0[v24] setMaxConcurrentOperationCount:2];
  [*&v0[v24] setQualityOfService:-1];
  v29 = [objc_allocWithZone(NSOperationQueue) init];
  v30 = OBJC_IVAR____TtC7Journal17OperationsManager_assetMetadataQueue;
  *&v0[OBJC_IVAR____TtC7Journal17OperationsManager_assetMetadataQueue] = v29;
  v31 = qword_100AD0A48;
  v32 = v29;
  if (v31 != -1)
  {
    swift_once();
  }

  [v32 setUnderlyingQueue:qword_100B30F88];

  v33 = *&v0[v30];
  v34 = String._bridgeToObjectiveC()();
  [v33 setName:v34];

  [*&v0[v30] setMaxConcurrentOperationCount:2];
  [*&v0[v30] setQualityOfService:-1];
  v35 = [objc_allocWithZone(NSOperationQueue) init];
  v36 = OBJC_IVAR____TtC7Journal17OperationsManager_batchRecordDownloadQueue;
  *&v0[OBJC_IVAR____TtC7Journal17OperationsManager_batchRecordDownloadQueue] = v35;
  v37 = qword_100AD0A50;
  v38 = v35;
  if (v37 != -1)
  {
    swift_once();
  }

  [v38 setUnderlyingQueue:qword_100B30F90];

  v39 = *&v0[v36];
  v40 = String._bridgeToObjectiveC()();
  [v39 setName:v40];

  [*&v0[v36] setMaxConcurrentOperationCount:1];
  [*&v0[v36] setQualityOfService:9];
  v42.receiver = v0;
  v42.super_class = type metadata accessor for OperationsManager();
  return objc_msgSendSuper2(&v42, "init");
}

uint64_t sub_10002250C()
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
  static DispatchQoS.background.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100B30F80 = result;
  return result;
}

uint64_t sub_1000226BC()
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
  static DispatchQoS.background.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100B30F90 = result;
  return result;
}

uint64_t sub_10002286C()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100022924(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10002298C()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EntryListType();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EntriesSortOrder();
      if (v2 <= 0x3F)
      {
        sub_100022AF8();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100022AF8()
{
  if (!qword_100AD3560)
  {
    type metadata accessor for DateInterval();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD3560);
    }
  }
}

uint64_t sub_100022B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryListType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100022BB4()
{
  v1 = type metadata accessor for EntriesSortOrder();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for EntryListType();
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v21[-v9];
  v11 = sub_100022EB0();
  v12 = *(v0 + OBJC_IVAR____TtC7Journal18EntryListViewModel_context);
  v13 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
  swift_beginAccess();
  sub_100022B50(v0 + v13, v10);
  v14 = sub_1000F24EC(&qword_100AD47A0);
  (*(*(v14 - 8) + 56))(v8, 1, 2, v14);
  LOBYTE(v13) = sub_100023858(v10, v8);
  sub_100011478(v8);
  sub_100011478(v10);
  if ((v13 & 1) != 0 || (v15 = OBJC_IVAR____TtC7Journal18EntryListViewModel_sortOrder, swift_beginAccess(), (*(v2 + 16))(v4, v0 + v15, v1), v16 = (*(v2 + 88))(v4, v1), v16 == enum case for EntriesSortOrder.entryDate(_:)) || v16 == enum case for EntriesSortOrder.momentDate(_:))
  {
    v17 = objc_allocWithZone(NSFetchedResultsController);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v17 initWithFetchRequest:v11 managedObjectContext:v12 sectionNameKeyPath:v18 cacheName:0];

    v20 = *(v0 + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
    *(v0 + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController) = v19;
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

void *sub_100022EB0()
{
  type metadata accessor for JournalEntryMO();
  v0 = static JournalEntryMO.fetchRequest()();
  [v0 setFetchBatchSize:20];
  [v0 setIncludesPendingChanges:0];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v0 setRelationshipKeyPathsForPrefetching:isa];

  v2 = sub_100022FBC();
  [v0 setPredicate:v2];

  sub_1000114D4();
  sub_1000065A8(0, &qword_100AD5B00);
  v3 = Array._bridgeToObjectiveC()().super.isa;

  [v0 setSortDescriptors:v3];

  return v0;
}

id sub_100022FBC()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = __chkstk_darwin(v2);
  v50 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v49 = v48 - v5;
  v6 = sub_1000F24EC(&qword_100AD3750);
  __chkstk_darwin(v6 - 8);
  v8 = v48 - v7;
  v53 = type metadata accessor for DateInterval();
  v9 = *(v53 - 8);
  __chkstk_darwin(v53);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EntryListType();
  __chkstk_darwin(v16 - 8);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = _swiftEmptyArrayStorage;
  v19 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
  swift_beginAccess();
  sub_100022B50(v1 + v19, v18);
  v20 = sub_1000F24EC(&qword_100AD47A0);
  v21 = (*(*(v20 - 8) + 48))(v18, 2, v20);
  v22 = v11;
  if (v21)
  {
    if (v21 == 1)
    {
      sub_1000065A8(0, &unk_100AD5AF0);
      static NSPredicate.recentlyDeletedEntries.getter();
    }

    else
    {
      sub_1000065A8(0, &unk_100AD5AF0);
      static NSPredicate.timelineEntries.getter();
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    sub_1000065A8(0, &unk_100AD5AF0);
    static NSPredicate.timelineEntriesFor(journalID:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (*(v13 + 8))(v15, v12);
  }

  v23 = *(v1 + OBJC_IVAR____TtC7Journal18EntryListViewModel_assetIDs);
  if (v23)
  {
    sub_1000065A8(0, &qword_100ADB900);
    sub_1000F24EC(&unk_100AD5B10);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100940080;
    *(v24 + 56) = sub_1000F24EC(&qword_100AD3760);
    *(v24 + 64) = sub_100119504();
    *(v24 + 32) = v23;

    NSPredicate.init(format:_:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v11 = v22;
  }

  v25 = *(v1 + OBJC_IVAR____TtC7Journal18EntryListViewModel_entryIDs);
  if (v25)
  {
    sub_1000065A8(0, &qword_100ADB900);
    sub_1000F24EC(&unk_100AD5B10);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100940080;
    *(v26 + 56) = sub_1000F24EC(&qword_100AD3760);
    *(v26 + 64) = sub_100119504();
    *(v26 + 32) = v25;

    NSPredicate.init(format:_:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v11 = v22;
  }

  v27 = OBJC_IVAR____TtC7Journal18EntryListViewModel_dateInterval;
  swift_beginAccess();
  sub_1000082B4(v1 + v27, v8, &qword_100AD3750);
  v28 = v9;
  v29 = v53;
  if ((*(v9 + 48))(v8, 1, v53) == 1)
  {
    sub_100004F84(v8, &qword_100AD3750);
  }

  else
  {
    (*(v9 + 32))(v11, v8, v29);
    v30 = sub_1000065A8(0, &qword_100ADB900);
    v48[0] = "isRemovedFromCloud = false";
    v48[1] = v30;
    sub_1000F24EC(&unk_100AD5B10);
    v31 = swift_allocObject();
    v32 = v51;
    v33 = v28;
    v34 = v31;
    *(v31 + 16) = xmmword_100940050;
    v35 = v49;
    DateInterval.start.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v37 = *(v32 + 8);
    v38 = v35;
    v39 = v52;
    v37(v38, v52);
    v40 = v11;
    v41 = sub_1000065A8(0, &unk_100AE5E10);
    v34[7] = v41;
    v42 = sub_10011949C();
    v34[8] = v42;
    v34[4] = isa;
    v43 = v50;
    DateInterval.end.getter();
    v44 = Date._bridgeToObjectiveC()().super.isa;
    v37(v43, v39);
    v34[12] = v41;
    v34[13] = v42;
    v34[9] = v44;
    NSPredicate.init(format:_:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (*(v33 + 8))(v40, v53);
  }

  sub_1000065A8(0, &qword_100ADB900);
  v45 = Array._bridgeToObjectiveC()().super.isa;

  v46 = [objc_opt_self() andPredicateWithSubpredicates:v45];

  return v46;
}

uint64_t sub_100023858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EntryListType();
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD5CF0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_100022B50(a1, &v22 - v13);
  sub_100022B50(a2, &v14[v15]);
  v16 = sub_1000F24EC(&qword_100AD47A0);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v14, 2, v16);
  if (!v18)
  {
    sub_100022B50(v14, v10);
    if (!v17(&v14[v15], 2, v16))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v19 = static UUID.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_100011478(v14);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v18 == 1)
  {
    if (v17(&v14[v15], 2, v16) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v17(&v14[v15], 2, v16) != 2)
  {
LABEL_9:
    sub_1000117D0(v14);
    v19 = 0;
    return v19 & 1;
  }

  sub_100011478(v14);
  v19 = 1;
  return v19 & 1;
}

void sub_100023B2C()
{
  sub_10000E788(319, &qword_100AEECA0, &qword_100AD43B0);
  if (v0 <= 0x3F)
  {
    sub_10000E788(319, &qword_100AE3C70, &qword_100AE3C78);
    if (v1 <= 0x3F)
    {
      sub_10000EF1C(319, &qword_100AE3C80, type metadata accessor for SuggestedSearchController, &type metadata accessor for UIViewController.ViewLoading);
      if (v2 <= 0x3F)
      {
        _s14descr100A531E1V32SuggestionSheetPresentationStateOMa();
        if (v3 <= 0x3F)
        {
          sub_10000EF1C(319, &qword_100AE3C88, type metadata accessor for JournalTimelineViewController.State, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_100023D78()
{
  sub_10000A454();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100023DF0()
{
  if (!qword_100AE3DB0)
  {
    sub_10000EF1C(0, &qword_100ADE4E0, &type metadata accessor for UUID, &type metadata accessor for Optional);
    if (!v1)
    {
      atomic_store(v0, &qword_100AE3DB0);
    }
  }
}

id sub_100023E8C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal18ComposeButtonsView_blurGradientLayer;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v10 = OBJC_IVAR____TtC7Journal18ComposeButtonsView_blurEffectView;
  *&v4[v10] = [objc_allocWithZone(UIVisualEffectView) init];
  v11 = OBJC_IVAR____TtC7Journal18ComposeButtonsView_floatingButtons;
  type metadata accessor for ComposeButton();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC7Journal18ComposeButtonsView_blurView;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for VariableBlurView()) init];
  swift_unknownObjectWeakInit();
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ComposeButtonsView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_100013018();

  return v13;
}

id sub_100023FEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_100024054(void *a1, void *a2, void *a3)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  return v5;
}

char *sub_100024140(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_10002430C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10002430C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10002432C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10002430C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10002432C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_10002430C(char *a1, int64_t a2, char a3)
{
  result = sub_100012EF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_10002432C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_10002433C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal18ComposeButtonsView_floatingButtons];
  [v0 addSubview:v2];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = &v2[OBJC_IVAR____TtC7JournalP33_08145CDDEA6A92DF1A40BD81AC9894B713ComposeButton_buttonTapped];
  *v4 = sub_10011239C;
  v4[1] = v3;

  v5 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100941830;
  v7 = [v2 centerXAnchor];
  v8 = [v1 safeAreaLayoutGuide];
  v9 = [v8 centerXAnchor];

  v10 = [v7 constraintEqualToAnchor:v9];
  *(v6 + 32) = v10;
  v11 = [v2 topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v6 + 40) = v13;
  v14 = [v2 widthAnchor];
  v15 = [v14 constraintEqualToConstant:72.0];

  *(v6 + 48) = v15;
  v16 = [v2 heightAnchor];
  v17 = [v16 constraintEqualToConstant:72.0];

  *(v6 + 56) = v17;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];
}

uint64_t sub_100024600()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_10002463C()
{
  sub_10030D2F0(319, &unk_100ADE340, &type metadata accessor for IndexPath);
  if (v0 <= 0x3F)
  {
    sub_10030D2F0(319, &qword_100AD59F0, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      sub_10030D2F0(319, &qword_100ADE350, &type metadata accessor for AnyTip);
      if (v2 <= 0x3F)
      {
        sub_10030D2F0(319, &qword_100ADE358, type metadata accessor for JournalEntryCollectionViewController.State);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1000248C4()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v1];

  v2 = *&v0[OBJC_IVAR____TtC7Journal10FadingView_contentFadeGradientLayer];
  [v2 setStartPoint:{0.5, 0.0}];
  [v2 setEndPoint:{0.5, 1.0}];
  [v0 bounds];
  [v2 setFrame:?];
  [v2 setDelegate:v0];
  v3 = [v0 layer];
  [v3 setMask:v2];
}

uint64_t sub_1000249D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100024A1C()
{
  swift_getObjectType();
  sub_1000F24EC(&qword_100AD8480);
  return String.init<A>(describing:)();
}

uint64_t sub_100024AF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v4 - 8);
  v20 = &v17 - v5;
  v6 = sub_1000F24EC(&qword_100ADE578);
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for JournalEntryCollectionViewController.State(0);
  __chkstk_darwin(v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CA14(a1, a1[3]);
  sub_100024E6C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  v12 = v11;
  v13 = v19;
  type metadata accessor for UUID();
  v22 = 0;
  sub_1000249D4(&qword_100AD81F0, &type metadata accessor for UUID);
  v14 = v20;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100021CEC(v14, v12, &qword_100AD1420);
  v21 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v13 + 8))(v8, v6);
  *(v12 + *(v9 + 20)) = v15 & 1;
  sub_1000140BC(v12, v18, type metadata accessor for JournalEntryCollectionViewController.State);
  sub_10000BA7C(a1);
  return sub_100014124(v12, type metadata accessor for JournalEntryCollectionViewController.State);
}

unint64_t sub_100024E18()
{
  result = qword_100ADE7B8;
  if (!qword_100ADE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE7B8);
  }

  return result;
}

unint64_t sub_100024E6C()
{
  result = qword_100ADE580;
  if (!qword_100ADE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE580);
  }

  return result;
}

uint64_t sub_100024EC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD1420);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE3C90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_1000250E0()
{
  v1 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100ADD440);
  __chkstk_darwin(v4 - 8);
  v6 = &v57 - v5;
  v7 = type metadata accessor for SceneSplitViewController.State(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SceneSplitViewController(0);
  v64.receiver = v0;
  v64.super_class = v11;
  objc_msgSendSuper2(&v64, "viewDidLoad");
  v12 = *&v0[OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView];
  v13 = [v12 view];
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13;
  [v0 addChildViewController:v12];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v0 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  v16 = v15;
  v58 = v12;
  v59 = v8;
  v60 = v7;
  v57 = v10;
  v62 = v6;
  *&v63 = v3;
  [v15 addSubview:v14];

  v61 = sub_1000F24EC(&unk_100AD4780);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100941830;
  v18 = [v14 leadingAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v17 + 32) = v22;
  v23 = [v14 topAnchor];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v23 constraintEqualToAnchor:v26];
  *(v17 + 40) = v27;
  v28 = [v14 trailingAnchor];
  v29 = [v0 view];
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = v29;
  v31 = [v29 trailingAnchor];

  v32 = [v28 constraintEqualToAnchor:v31];
  *(v17 + 48) = v32;
  v33 = [v14 bottomAnchor];
  v34 = [v0 view];
  if (!v34)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 bottomAnchor];

  v38 = [v33 constraintEqualToAnchor:v37];
  *(v17 + 56) = v38;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];

  [v58 didMoveToParentViewController:v0];
  v40 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_stateToRestore;
  swift_beginAccess();
  v41 = &v0[v40];
  v42 = v62;
  sub_1000082B4(v41, v62, &qword_100ADD440);
  if ((*(v59 + 48))(v42, 1, v60) == 1)
  {
    sub_100004F84(v42, &qword_100ADD440);
    v43 = v63;
  }

  else
  {
    v44 = v42;
    v45 = v57;
    sub_10001DB98(v44, v57, type metadata accessor for SceneSplitViewController.State);
    v43 = v63;
    sub_1002E7958(v45, v63);
    sub_10000D628(v45, type metadata accessor for SceneSplitViewController.State);
    v46 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_lastDisplayedContentType;
    swift_beginAccess();
    sub_1002ED7F0(v43, &v0[v46]);
    swift_endAccess();
  }

  v47 = *&v0[OBJC_IVAR____TtC7Journal24SceneSplitViewController_primaryNavigationController];
  v48 = swift_allocObject();
  v63 = xmmword_100941D50;
  *(v48 + 16) = xmmword_100941D50;
  v49 = *&v0[OBJC_IVAR____TtC7Journal24SceneSplitViewController_sidebarController];
  *(v48 + 32) = v49;
  sub_1000065A8(0, &qword_100AD4C80);
  v50 = v49;
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v47 setViewControllers:v51];

  v52 = *&v0[OBJC_IVAR____TtC7Journal24SceneSplitViewController_secondaryNavigationController];
  v53 = swift_allocObject();
  *(v53 + 16) = v63;
  v54 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_lastDisplayedContentType;
  swift_beginAccess();
  sub_10000D6E8(&v0[v54], v43, type metadata accessor for SceneSplitViewController.ContentType);
  v55 = sub_10000D79C(v43, 1);
  sub_10000D628(v43, type metadata accessor for SceneSplitViewController.ContentType);
  *(v53 + 32) = v55;
  v56 = Array._bridgeToObjectiveC()().super.isa;

  [v52 setViewControllers:v56];
}

uint64_t sub_100025820()
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

void sub_1000258DC(uint64_t a1)
{
  v3 = sub_1000F24EC(qword_100AF2AC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v50 - v4;
  if (!*&v1[OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window])
  {
    v52 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window;
    v6 = objc_allocWithZone(UIWindow);
    v53 = a1;
    v51 = [v6 initWithWindowScene:a1];
    p_ivar_lyt = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_logger;
    v8 = type metadata accessor for Logger();
    v9 = *(v8 - 8);
    v10 = *(v9 + 16);
    v55 = p_ivar_lyt;
    v10(v5, p_ivar_lyt + v1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    sub_100014590(v5, 0xD000000000000012, 0x80000001008E2510);
    v54 = v11;
    sub_100004F84(v5, qword_100AF2AC0);
    v12 = [objc_opt_self() sharedApplication];
    v13 = [v12 connectedScenes];

    v14 = sub_1000065A8(0, &qword_100AE4620);
    sub_10002623C();
    v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = v1;
    v57 = v14;
    if ((v15 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v17 = v61;
      v16 = v62;
      v18 = v63;
      v19 = v64;
      v20 = v65;
    }

    else
    {
      v21 = -1 << *(v15 + 32);
      v16 = v15 + 56;
      v18 = ~v21;
      v22 = -v21;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v20 = (v23 & *(v15 + 56));

      v19 = 0;
      v17 = v15;
    }

    v50 = v18;
    do
    {
      v24 = v19;
      if (v17 < 0)
      {
        v27 = __CocoaSet.Iterator.next()();
        if (!v27)
        {
          goto LABEL_19;
        }

        v59 = *&v27;
        swift_dynamicCast();
        v1 = aBlock[0];
        if (!aBlock[0])
        {
          goto LABEL_19;
        }
      }

      else
      {
        v25 = v19;
        v26 = v20;
        if (!v20)
        {
          while (1)
          {
            v19 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v19 >= ((v18 + 64) >> 6))
            {
              goto LABEL_19;
            }

            v26 = *(v16 + 8 * v19);
            ++v25;
            if (v26)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          goto LABEL_35;
        }

LABEL_9:
        v20 = ((v26 - 1) & v26);
        v1 = *(*(v17 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v26)))));
        if (!v1)
        {
LABEL_19:
          v28 = 1;
          goto LABEL_20;
        }
      }

      p_ivar_lyt = [v1 activationState];
    }

    while (p_ivar_lyt == -1);
    v28 = 0;
LABEL_20:
    sub_100014FF8();

    v24 = v56;
    v56[OBJC_IVAR____TtC7Journal22AppSecureAccessManager_isNewAppLaunch] = v28;
    LOBYTE(v16) = v54;
    v29 = (v54 & 1) == 0;
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = type metadata accessor for AppSecureAccessViewController();
    v32 = objc_allocWithZone(v31);
    v32[OBJC_IVAR____TtC7Journal29AppSecureAccessViewController_state] = v29;
    v33 = &v32[OBJC_IVAR____TtC7Journal29AppSecureAccessViewController_onAuthenticate];
    *v33 = sub_10018BD94;
    v33[1] = v30;
    v60.receiver = v32;
    v60.super_class = v31;
    v34 = objc_msgSendSuper2(&v60, "initWithNibName:bundle:", 0, 0);
    v35 = v51;
    [v51 setRootViewController:v34];

    type metadata accessor for Level(0);
    v59 = UIWindowLevelAlert;
    aBlock[6] = 0x4000000000000000;
    sub_100015024(&unk_100AE9070, type metadata accessor for Level);
    static _UIKitNumericRawRepresentable.+ infix(_:_:)();
    [v35 setWindowLevel:*aBlock];
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10018BD9C;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100186578;
    aBlock[3] = &unk_100A5FB20;
    v37 = _Block_copy(aBlock);
    v15 = v35;

    [v15 setAccessibilityViewIsModalBlock:v37];
    _Block_release(v37);

    v38 = *(v24 + v52);
    *(v24 + v52) = v35;

    [v15 setHidden:0];
    v1 = objc_opt_self();
    p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
    v39 = [v1 defaultCenter];
    v19 = &selRef_setRegion_;
    v40 = v53;
    [v39 addObserver:v24 selector:"sceneDidEnterBackground" name:UISceneDidEnterBackgroundNotification object:v53];

    v41 = [v1 defaultCenter];
    [v41 addObserver:v24 selector:"sceneDidActivate" name:UISceneDidActivateNotification object:v40];

    v20 = [v1 defaultCenter];
    if (qword_100ACF9E0 == -1)
    {
      goto LABEL_21;
    }

LABEL_35:
    swift_once();
LABEL_21:
    [v20 *(v19 + 256)];

    v42 = [v1 p_ivar_lyt[362]];
    if (qword_100ACF9F0 != -1)
    {
      swift_once();
    }

    [v42 *(v19 + 256)];

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *v45 = 136315138;
      if (v16)
      {
        v47 = 0x45534C4146;
      }

      else
      {
        v47 = 1163219540;
      }

      if (v16)
      {
        v48 = 0xE500000000000000;
      }

      else
      {
        v48 = 0xE400000000000000;
      }

      v49 = sub_100008458(v47, v48, aBlock);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "sceneWillConnectTo: lockEnabled=%s", v45, 0xCu);
      sub_10000BA7C(v46);
    }
  }
}

uint64_t sub_100026118()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100026150()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

unint64_t sub_100026188()
{
  result = qword_100AE1A30;
  if (!qword_100AE1A30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE1A30);
  }

  return result;
}

uint64_t sub_1000261D4(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD13D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002623C()
{
  result = qword_100AD5F70;
  if (!qword_100AD5F70)
  {
    sub_1000065A8(255, &qword_100AE4620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5F70);
  }

  return result;
}

uint64_t sub_1000262B8()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31700);
  sub_10000617C(v0, qword_100B31700);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100026360()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B316E8);
  sub_10000617C(v0, qword_100B316E8);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t type metadata accessor for GradientView()
{
  result = qword_100AF3A40;
  if (!qword_100AF3A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100026454(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000264D0()
{
  result = qword_100AF3A70;
  if (!qword_100AF3A70)
  {
    sub_1000F2A18(&qword_100AF3A68);
    sub_100026454(&qword_100AF3A78, &qword_100AF3A80, &unk_10096C7D0, sub_100026580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3A70);
  }

  return result;
}

unint64_t sub_100026580()
{
  result = qword_100AE5290;
  if (!qword_100AE5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5290);
  }

  return result;
}

unint64_t sub_1000265D4()
{
  result = qword_100AF3A90;
  if (!qword_100AF3A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3A90);
  }

  return result;
}

id sub_100026628(double a1, double a2, double a3, double a4)
{
  v9 = sub_1000F24EC(&qword_100AF3A98);
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v12 = sub_1000F24EC(&qword_100AF3AA0);
  v33 = *(v12 - 8);
  v34 = v12;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for UIView.Invalidations.Properties();
  __chkstk_darwin(v15);
  v16 = sub_1000F24EC(&qword_100AF3AA8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v33 - v18;
  v20 = OBJC_IVAR____TtC7Journal12GradientView__colors;
  v38 = _swiftEmptyArrayStorage;
  UIView.Invalidations.Properties.init()();
  sub_1000F24EC(&qword_100AEB660);
  sub_100015838();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v17 + 32))(&v4[v20], v19, v16);
  v21 = OBJC_IVAR____TtC7Journal12GradientView__locations;
  v38 = 0;
  UIView.Invalidations.Properties.init()();
  sub_1000F24EC(&qword_100AF3A68);
  sub_1000264D0();
  UIView.Invalidating.init(wrappedValue:_:)();
  v22 = v4;
  (*(v33 + 32))(&v4[v21], v14, v34);
  v23 = OBJC_IVAR____TtC7Journal12GradientView__startPoint;
  static UnitPoint.top.getter();
  v38 = v24;
  v39 = v25;
  UIView.Invalidations.Properties.init()();
  sub_1000265D4();
  UIView.Invalidating.init(wrappedValue:_:)();
  v26 = v36;
  v27 = *(v35 + 32);
  v27(&v22[v23], v11, v36);
  v28 = OBJC_IVAR____TtC7Journal12GradientView__endPoint;
  static UnitPoint.bottom.getter();
  v38 = v29;
  v39 = v30;
  UIView.Invalidations.Properties.init()();
  UIView.Invalidating.init(wrappedValue:_:)();
  v27(&v22[v28], v11, v26);
  v31 = type metadata accessor for GradientView();
  v37.receiver = v22;
  v37.super_class = v31;
  return objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
}

NSString sub_100026A88()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2F480 = result;
  return result;
}

NSString sub_100026AC0()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2F490 = result;
  return result;
}

void sub_100026AF8(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIWindow) initWithWindowScene:a1];
  v3 = OBJC_IVAR____TtC7Journal13SceneDelegate_systemAlertWindow;
  v4 = *(v1 + OBJC_IVAR____TtC7Journal13SceneDelegate_systemAlertWindow);
  *(v1 + OBJC_IVAR____TtC7Journal13SceneDelegate_systemAlertWindow) = v2;

  v12 = [objc_allocWithZone(UIViewController) init];
  v5 = [v12 view];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor:v7];

    v8 = *(v1 + v3);
    v9 = v12;
    if (v8 && ([v8 setRootViewController:v12], v9 = v12, (v10 = *(v1 + v3)) != 0))
    {
      type metadata accessor for Level(0);
      sub_10000EA18(&unk_100AE9070, type metadata accessor for Level);
      v11 = v10;
      static _UIKitNumericRawRepresentable.+ infix(_:_:)();
      [v11 setWindowLevel:v13];
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100026CBC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906470;
  v1._countAndFlagsBits = 0x72746E452077654ELL;
  v1._object = 0xE900000000000079;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000035;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30B10 = v3;
}

void sub_100026D70()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009063B0;
  v1._object = 0x8000000100906390;
  v4._countAndFlagsBits = 0xD00000000000003CLL;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30B20 = v3;
}

void sub_100026E2C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906430;
  v1._countAndFlagsBits = 0x746F685020646441;
  v1._object = 0xEA0000000000736FLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000039;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30B30 = v3;
}

void sub_100026EE0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009063F0;
  v1._countAndFlagsBits = 0x412064726F636552;
  v1._object = 0xEC0000006F696475;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000038;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30B40 = v3;
}

void sub_100026FF8()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  sub_1003E9628(0, 0, v4, &unk_10095D568, v7);

  v8 = sub_1000144C8() + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_backgroundedAtNanoStamp;
  if (*(v8 + 8))
  {

    return;
  }

  v9 = *v8;
  v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);

  v11 = v10 - v9;
  if (v10 < v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 < 0xDF8475800)
  {
    return;
  }

  v12 = objc_opt_self();
  v13 = [v12 standardUserDefaults];
  v14 = [v12 standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 integerForKey:v15];

  if (__OFADD__(v16, 1))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v17 = String._bridgeToObjectiveC()();
  [v13 setInteger:v16 + 1 forKey:v17];

  if (v11 >= 0x6FC23AC000)
  {
    v18 = sub_10054B2F8();
    if (v18)
    {
      v19 = v18;
      v21[3] = type metadata accessor for SceneDelegate();
      v21[0] = v1;
      v20 = v1;
      sub_10041D600(0);
      sub_100004F84(v21, &qword_100AD13D0);
      sub_10041C5C8(0);
    }
  }
}

uint64_t sub_1000272A8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000272E4()
{
  type metadata accessor for HealthManager();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(HKHealthStore) init];
  sub_1000065A8(0, &qword_100AE1A30);
  *(v0 + 24) = static NSUserDefaults.shared.getter();
  result = Logger.init(subsystem:category:)();
  qword_100B2F3C0 = v0;
  return result;
}

uint64_t type metadata accessor for HealthManager()
{
  result = qword_100AD4610;
  if (!qword_100AD4610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000273F4()
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

id sub_100027494(char a1)
{
  if (![objc_opt_self() isHealthDataAvailable])
  {
    v5 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, v9, "HealthKit is not available on this device", v10, 2u);
      goto LABEL_8;
    }

LABEL_9:

    return 0;
  }

  sub_1000065A8(0, &qword_100AD46D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (a1)
  {
    v4 = [ObjCClassFromMetadata categoryTypeForIdentifier:HKCategoryTypeIdentifierMindfulSession];
    if (!v4)
    {
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v14 = v8;
        *v7 = 136315138;
        *(v7 + 4) = sub_100008458(0x4D6C7566646E696DLL, 0xEE00736574756E69, &v14);
        _os_log_impl(&_mh_execute_header, v5, v6, "Couldn't create a HKSampleType for %s", v7, 0xCu);
        sub_10000BA7C(v8);

LABEL_8:

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = [ObjCClassFromMetadata stateOfMindType];
  }

  v12 = [v1[2] authorizationStatusForType:v4];
  if (v12)
  {
    v13 = v12;
    if ([v1 hasSeenBothHealthTCCs])
    {
      [v1 setHasSeenBothHealthTCCs:1];
    }

    return v13;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1000276EC()
{
  v0 = sub_1000F24EC(&qword_100ADC240);
  sub_100006118(v0, qword_100B2FAC0);
  sub_10000617C(v0, qword_100B2FAC0);
  sub_1000F24EC(&qword_100ADA090);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100940080;
  static Tips.ParameterOption.transient.getter();
  sub_100027848();
  sub_10002789C();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

unint64_t sub_100027848()
{
  result = qword_100ADC248;
  if (!qword_100ADC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC248);
  }

  return result;
}

unint64_t sub_10002789C()
{
  result = qword_100ADC250;
  if (!qword_100ADC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC250);
  }

  return result;
}

id sub_100027ABC()
{
  v1 = v0;
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 view];
  if (!result)
  {
    goto LABEL_26;
  }

  v7 = result;
  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0D50 != -1)
  {
    swift_once();
  }

  v8 = sub_10000617C(v2, qword_100B31700);
  (*(v3 + 16))(v5, v8, v2);
  v9 = UIColor.init(resource:)();
  [v7 setBackgroundColor:v9];

  v10 = type metadata accessor for JournalTimelineViewController(0);
  v49.receiver = v1;
  v49.super_class = v10;
  objc_msgSendSuper2(&v49, "viewDidLoad");
  sub_100015868();
  v11 = *&v1[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController];
  *&v11[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate + 8] = &off_100A6C448;
  swift_unknownObjectWeakAssign();
  *&v11[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate + 8] = &off_100A6C3A8;
  swift_unknownObjectWeakAssign();
  result = [v1 view];
  if (!result)
  {
    goto LABEL_27;
  }

  v12 = result;
  v13 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_composeButtonsView;
  [result addSubview:*&v1[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_composeButtonsView]];

  v14 = *&v1[v13];
  v15 = sub_100028DA0(0, 1, 0.0);

  v16 = *&v1[v13];
  v17 = [v16 superview];
  v18 = &selRef_setSuggestedName_;
  v19 = &selRef_setSuggestedName_;
  if (v17)
  {
    v20 = v17;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [v16 leadingAnchor];
    v22 = [v20 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    [v23 setConstant:0.0];
    if (v23)
    {
      [v23 setActive:1];
    }

    v19 = &selRef_setSuggestedName_;
    v18 = &selRef_setSuggestedName_;
  }

  else
  {
    v23 = 0;
    v20 = v16;
  }

  v24 = *&v1[v13];
  v25 = [v24 superview];
  if (v25)
  {
    v26 = v25;
    [v24 v18[278]];
    v27 = [v24 trailingAnchor];
    v28 = [v26 trailingAnchor];
    v29 = v19;
    v30 = v28;
    v31 = [v27 v29[207]];

    [v31 setConstant:0.0];
    if (v31)
    {
      [v31 setActive:1];
    }
  }

  else
  {
    v31 = 0;
    v26 = v24;
  }

  swift_unknownObjectWeakAssign();
  [*&v1[v13] _accessibilitySetSortPriority:1000];
  v32 = [v1 traitCollection];
  v33 = [v32 userInterfaceIdiom];

  if (v33 == 5 || _UISolariumEnabled())
  {
    [*&v1[v13] setHidden:1];
  }

  else
  {
    [v11 additionalSafeAreaInsets];
    [v11 setAdditionalSafeAreaInsets:?];
    v43 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_wantsBottomGradientMask;
    v44 = v11[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_wantsBottomGradientMask];
    v11[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_wantsBottomGradientMask] = 1;
    if ([v11 isViewLoaded] && v44 != v11[v43])
    {
      sub_10001A264();
    }
  }

  v34 = type metadata accessor for JournalFeatureFlags();
  v46 = v34;
  v47 = sub_1000142D0(&qword_100ADFA78, &type metadata accessor for JournalFeatureFlags);
  v35 = sub_10001A770(aBlock);
  (*(*(v34 - 8) + 104))(v35, enum case for JournalFeatureFlags.debug(_:), v34);
  LOBYTE(v34) = isFeatureEnabled(_:)();
  sub_10000BA7C(aBlock);
  if (v34)
  {
    v36 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v1 action:"adminLongPressWithSender:"];
    [*&v1[v13] addGestureRecognizer:v36];
  }

  sub_10041A7AC();
  v37 = objc_opt_self();
  v38 = swift_allocObject();
  *(v38 + 16) = v1;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_100034858;
  *(v39 + 24) = v38;
  v47 = sub_100177C4C;
  v48 = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A7D4;
  v46 = &unk_100A6C8B0;
  v40 = _Block_copy(aBlock);
  v41 = v1;

  [v37 performWithoutAnimation:v40];
  _Block_release(v40);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000281EC()
{

  return swift_deallocObject();
}

uint64_t sub_10002823C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD13D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000282B4()
{
  result = type metadata accessor for EntryListType();
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

char *sub_10002837C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for EntryListType();
  __chkstk_darwin(v10 - 8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC7Journal25SuggestedSearchController_timelineDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7Journal25SuggestedSearchController_suggestedSearchFieldDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7Journal25SuggestedSearchController_stateToRestore] = xmmword_100945C40;
  v13 = OBJC_IVAR____TtC7Journal25SuggestedSearchController_recentSearchesManager;
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  v14 = *(*(qword_100B2F840 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  *&v4[v13] = v14;
  sub_100022B50(a1, &v4[OBJC_IVAR____TtC7Journal25SuggestedSearchController_initialEntryListType]);
  sub_100022B50(a1, &v4[OBJC_IVAR____TtC7Journal25SuggestedSearchController_currentEntryListType]);
  sub_100022B50(a1, v12);
  type metadata accessor for SpotlightSearchSession();
  swift_allocObject();
  v15 = v14;
  *&v4[OBJC_IVAR____TtC7Journal25SuggestedSearchController_searchSession] = sub_10001808C(v12);
  v16 = objc_allocWithZone(type metadata accessor for JournalSearchResultsViewController());
  v17 = a2;
  v18 = sub_1005600B4(a2, a3 & 1);
  v19 = OBJC_IVAR____TtC7Journal25SuggestedSearchController_resultsViewController;
  *&v4[OBJC_IVAR____TtC7Journal25SuggestedSearchController_resultsViewController] = v18;
  sub_100022B50(a1, v12);
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v20 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  type metadata accessor for EntryListViewModel(0);
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC7Journal25SuggestedSearchController_entryListViewModel] = sub_100010AF4(v12, v20);
  v21 = *&v4[v19];
  v22 = type metadata accessor for SuggestedSearchController();
  v43.receiver = v4;
  v43.super_class = v22;
  v23 = objc_msgSendSuper2(&v43, "initWithSearchResultsController:", v21);
  [v23 setUserActivity:v17];
  if (a3)
  {
    sub_100018498(&unk_100AE4DF0, type metadata accessor for SuggestedSearchController);
    RestorableController.getRestorableStateFromUserActivity()();
    v24 = v42[1];
    v25 = v42[2];
  }

  else
  {
    v24 = 0;
    v25 = 1;
  }

  v26 = &v23[OBJC_IVAR____TtC7Journal25SuggestedSearchController_stateToRestore];
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  *v26 = v24;
  v26[1] = v25;
  sub_100034538(v27, v28);
  v29 = v23;
  [v29 setSearchResultsUpdater:v29];
  [v29 setHidesNavigationBarDuringPresentation:1];
  v30 = v29;
  v31 = [v30 searchBar];
  [v31 setDelegate:v30];

  v32 = [v30 searchBar];
  v33 = [v32 searchTextField];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v34 = String._bridgeToObjectiveC()();

  [v33 setToolTip:v34];

  v35 = [v30 traitCollection];
  v36 = [v35 userInterfaceIdiom];

  v37 = &selRef_setShowsSearchResultsController_;
  if (v36)
  {
    v37 = &selRef_setAutomaticallyShowsSearchResultsController_;
  }

  [v30 *v37];
  v38 = OBJC_IVAR____TtC7Journal25SuggestedSearchController_resultsViewController;
  *(*&v30[OBJC_IVAR____TtC7Journal25SuggestedSearchController_resultsViewController] + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate + 8) = &off_100A6E340;
  swift_unknownObjectWeakAssign();
  v39 = *&v30[v38];

  sub_1003032B4(v40, 1, 0);

  sub_100479D70(a1, type metadata accessor for EntryListType);
  return v30;
}

uint64_t sub_10002891C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100B301F0);
  sub_10000617C(v0, qword_100B301F0);
  return Logger.init(subsystem:category:)();
}

uint64_t type metadata accessor for JournalSearchResultsViewController()
{
  result = qword_100AE9290;
  if (!qword_100AE9290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100028ACC()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v5[4] = sub_100562458;
  v5[5] = v0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100029CCC;
  v5[3] = &unk_100A73228;
  v2 = _Block_copy(v5);

  v3 = [v1 initWithSectionProvider:v2];
  _Block_release(v2);

  return v3;
}

uint64_t sub_100028BD0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100028C0C()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100028D38(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, void *a5)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() *a4];

  *a5 = v8;
}

id sub_100028DA0(char a1, char a2, double a3)
{
  v4 = v3;
  v8 = [v4 superview];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v4 bottomAnchor];
  v11 = [v9 bottomAnchor];
  v12 = [v10 *(&off_100A677A0)[a1]];

  if (v12)
  {
    [v12 setConstant:-a3];
    if (a2)
    {
      [v12 setActive:1];
    }
  }

  else if (a2)
  {
    v12 = 0;
  }

  return v12;
}

id sub_100028EFC()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v5[4] = sub_100071FB4;
  v5[5] = v0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100029CCC;
  v5[3] = &unk_100A670B0;
  v2 = _Block_copy(v5);

  v3 = [v1 initWithSectionProvider:v2];
  _Block_release(v2);

  return v3;
}

void sub_10002908C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906FA0;
  v1._countAndFlagsBits = 0x6163696669746F4ELL;
  v1._object = 0xED0000736E6F6974;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30520 = v3;
}

void sub_100029168()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906F20;
  v1._countAndFlagsBits = 0x756F4A206B636F4CLL;
  v1._object = 0xEC0000006C616E72;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000024;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30530 = v3;
}

Swift::Int sub_100029264()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000292C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100029324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_1000293AC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000F24EC(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_100029588(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000F24EC(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100029784()
{
  result = sub_1000065A8(319, &qword_100AD4C70);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MergeableJournalAttributes.Icon();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100029840(uint64_t a1)
{
  v2 = v1;
  v24[1] = a1;
  v3 = type metadata accessor for SidebarPreferences.Brick();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v24[0] = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v24 - v14;
  v16 = type metadata accessor for AppNavigationSidebarController.Item(0);
  __chkstk_darwin(v16);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001C850(v2, v18, type metadata accessor for AppNavigationSidebarController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v4 + 32))(v6, v18, v3);
      Hasher._combine(_:)(1uLL);
      sub_1001588B0(&unk_100AD4B30, &type metadata accessor for SidebarPreferences.Brick);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      Hasher._combine(_:)(2uLL);
      String.hash(into:)();
    }
  }

  else
  {
    v21 = v24[0];
    sub_10001DAC8(v18, v15, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    Hasher._combine(_:)(0);
    sub_10001C850(v15, v13, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    v22 = sub_1000F24EC(&qword_100AD47A0);
    v23 = (*(*(v22 - 8) + 48))(v13, 2, v22);
    if (v23)
    {
      Hasher._combine(_:)(v23 != 1);
    }

    else
    {
      (*(v21 + 32))(v9, v13, v7);
      Hasher._combine(_:)(2uLL);
      sub_1001588B0(&qword_100AD4B40, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      (*(v21 + 8))(v9, v7);
    }

    return sub_10000D5C8(v15, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  }
}

Swift::Int sub_100029C88()
{
  Hasher.init(_seed:)();
  sub_100029840(v1);
  return Hasher._finalize()();
}

id sub_100029CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_100029D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarPreferences.Brick();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v10 = __chkstk_darwin(v9);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - v14;
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v18 = sub_1000F24EC(&qword_100AD4B48);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v34 - v20;
  v22 = (&v34 + *(v19 + 56) - v20);
  sub_10001C850(a1, &v34 - v20, type metadata accessor for AppNavigationSidebarController.Item);
  sub_10001C850(a2, v22, type metadata accessor for AppNavigationSidebarController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10001C850(v21, v17, type metadata accessor for AppNavigationSidebarController.Item);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_10001DAC8(v22, v8, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v28 = sub_100524B84(v17, v8);
      sub_10000D5C8(v8, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      sub_10000D5C8(v17, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      goto LABEL_19;
    }

    sub_10000D5C8(v17, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_10001C850(v21, v15, type metadata accessor for AppNavigationSidebarController.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v35;
      v24 = v36;
      v26 = v37;
      (*(v36 + 32))(v35, v22, v37);
      sub_1001588B0(&unk_100AD4B50, &type metadata accessor for SidebarPreferences.Brick);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v27 = *(v24 + 8);
      v27(v25, v26);
      v28 = v39 == v38;
      v27(v15, v26);
LABEL_19:
      sub_10000D5C8(v21, type metadata accessor for AppNavigationSidebarController.Item);
      return v28 & 1;
    }

    (*(v36 + 8))(v15, v37);
    goto LABEL_16;
  }

  sub_10001C850(v21, v12, type metadata accessor for AppNavigationSidebarController.Item);
  v30 = *v12;
  v29 = v12[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

LABEL_16:
    sub_100004F84(v21, &qword_100AD4B48);
    goto LABEL_17;
  }

  if (v30 == *v22 && v29 == v22[1])
  {

    goto LABEL_21;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
LABEL_21:
    sub_10000D5C8(v21, type metadata accessor for AppNavigationSidebarController.Item);
    v28 = 1;
    return v28 & 1;
  }

  sub_10000D5C8(v21, type metadata accessor for AppNavigationSidebarController.Item);
LABEL_17:
  v28 = 0;
  return v28 & 1;
}

void *sub_10002A24C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICollectionLayoutListConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v14 = Strong;
  v28 = v3;
  v30 = a2;
  sub_10002A6DC(v8);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v15 = v14;
  v16 = [v15 parentViewController];

  if (v16)
  {
    type metadata accessor for SceneSplitViewController(0);
    while (1)
    {
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        break;
      }

      v18 = v16;
      v16 = [v18 parentViewController];

      if (!v16)
      {
        goto LABEL_9;
      }
    }

    [*(v17 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed];
  }

LABEL_9:
  UICollectionLayoutListConfiguration.showsSeparators.setter();
  v20 = v15;
  v21 = [v20 parentViewController];

  if (!v21)
  {
    goto LABEL_15;
  }

  type metadata accessor for SceneSplitViewController(0);
  while (1)
  {
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      break;
    }

    v23 = v21;
    v21 = [v23 parentViewController];

    if (!v21)
    {
      goto LABEL_15;
    }
  }

  v24 = [*(v22 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed];

  if (v24)
  {
LABEL_15:
    v25 = [objc_opt_self() systemGroupedBackgroundColor];
    UICollectionLayoutListConfiguration.backgroundColor.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v26 = v31;
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  if (v32 != 2 && (v32 & 1) == 0)
  {
    (*(v29 + 104))(v5, enum case for UICollectionLayoutListConfiguration.HeaderMode.firstItemInSection(_:), v28);
    UICollectionLayoutListConfiguration.headerMode.setter();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  sub_1000065A8(0, &unk_100AD4440);
  v19 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  [v19 setInterGroupSpacing:sub_10002A94C()];

  (*(v10 + 8))(v12, v9);
  return v19;
}

uint64_t sub_10002A6DC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  if (v19 == 2 || (v19 & 1) == 0)
  {
    v8 = v1;
    v9 = [v8 parentViewController];

    if (!v9)
    {
      goto LABEL_15;
    }

    type metadata accessor for SceneSplitViewController(0);
    while (1)
    {
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        break;
      }

      v11 = v9;
      v9 = [v11 parentViewController];

      if (!v9)
      {
        goto LABEL_15;
      }
    }

    v12 = [*(v10 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed];

    if ((v12 & 1) == 0)
    {
      v13 = &enum case for UICollectionLayoutListConfiguration.Appearance.sidebar(_:);
    }

    else
    {
LABEL_15:
      v13 = &enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:);
    }

    v14 = *v13;
  }

  else
  {
    if (![v1 isEditing])
    {
      goto LABEL_21;
    }

    v3 = v1;
    v4 = [v3 parentViewController];

    if (!v4)
    {
      goto LABEL_20;
    }

    type metadata accessor for SceneSplitViewController(0);
    v5 = &enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:);
    while (1)
    {
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        break;
      }

      v7 = v4;
      v4 = [v7 parentViewController];

      if (!v4)
      {
        goto LABEL_22;
      }
    }

    v17 = [*(v6 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed];

    if (v17)
    {
LABEL_20:
      v14 = enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:);
    }

    else
    {
LABEL_21:
      v5 = &enum case for UICollectionLayoutListConfiguration.Appearance.sidebar(_:);
LABEL_22:
      v14 = *v5;
    }
  }

  v15 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  return (*(*(v15 - 8) + 104))(a1, v14, v15);
}

double sub_10002A94C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  if (v10 == 2)
  {
    return 0.0;
  }

  if (v10)
  {
    if (![v0 isEditing])
    {
      return 16.0;
    }

    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceIdiom];

    result = 5.0;
    if (v3 != 5)
    {
      return 16.0;
    }
  }

  else
  {
    v4 = v0;
    v5 = [v4 parentViewController];

    result = 0.0;
    if (v5)
    {
      type metadata accessor for SceneSplitViewController(0);
      while (1)
      {
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          break;
        }

        v7 = v5;
        v5 = [v7 parentViewController];

        if (!v5)
        {
          return 0.0;
        }
      }

      v8 = [*(v6 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed];

      result = 5.0;
      if (v8)
      {
        return 0.0;
      }
    }
  }

  return result;
}

uint64_t sub_10002AAFC()
{
  v1 = type metadata accessor for SidebarPreferences.Brick();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = __chkstk_darwin(v1);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v36 = &v34 - v4;
  v5 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v5 - 8);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD4B90);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v0;
  static UIViewController.ViewLoading.subscript.getter();

  v20 = v41;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_100004F84(v12, &qword_100AD4B90);
  }

  sub_10001DAC8(v12, v19, type metadata accessor for AppNavigationSidebarController.Item);
  sub_10001C850(v19, v17, type metadata accessor for AppNavigationSidebarController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10001DAC8(v17, v9, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = v39;
      sub_10001C850(v9, v39, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v31 = sub_1000F24EC(&unk_100AD4BA0);
      (*(*(v31 - 8) + 56))(v30, 0, 2, v31);
      sub_1002E5234(v30, 0);
      swift_unknownObjectRelease();
      sub_10000D5C8(v30, type metadata accessor for SceneSplitViewController.ContentType);
    }

    sub_10000D5C8(v9, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v24 = v36;
    v23 = v37;
    v25 = v38;
    (*(v37 + 32))(v36, v17, v38);
    v26 = v35;
    (*(v23 + 16))(v35, v24, v25);
    v27 = (*(v23 + 88))(v26, v25);
    if (v27 == enum case for SidebarPreferences.Brick.insights(_:))
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_16:
        (*(v23 + 8))(v24, v25);
LABEL_17:
        v32 = v19;
        return sub_10000D5C8(v32, type metadata accessor for AppNavigationSidebarController.Item);
      }

      v28 = sub_1000F24EC(&unk_100AD4BA0);
      v29 = v39;
      (*(*(v28 - 8) + 56))(v39, 1, 2, v28);
    }

    else
    {
      if (v27 != enum case for SidebarPreferences.Brick.places(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_16;
      }

      v33 = sub_1000F24EC(&unk_100AD4BA0);
      v29 = v39;
      (*(*(v33 - 8) + 56))(v39, 2, 2, v33);
    }

    sub_1002E5234(v29, 0);
    swift_unknownObjectRelease();
    sub_10000D5C8(v29, type metadata accessor for SceneSplitViewController.ContentType);
    goto LABEL_16;
  }

  sub_10000D5C8(v19, type metadata accessor for AppNavigationSidebarController.Item);
  v32 = v17;
  return sub_10000D5C8(v32, type metadata accessor for AppNavigationSidebarController.Item);
}

uint64_t sub_10002B13C(int a1)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_1000F24EC(&qword_100AD4B90);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_1000F24EC(&qword_100AD4BD0);
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for AppNavigationSidebarController.Item(0);
  sub_1001588B0(&qword_100AD4B80, type metadata accessor for AppNavigationSidebarController.Item);
  NSDiffableDataSourceSectionSnapshot.init()();
  v31 = sub_1000F24EC(&qword_100AD4B98);
  v26 = v9;
  v10 = *(v9 - 8);
  v30 = *(v10 + 72);
  v11 = *(v10 + 80);
  v28 = (v11 + 32) & ~v11;
  v12 = swift_allocObject();
  v29 = xmmword_100940080;
  *(v12 + 16) = xmmword_100940080;
  v13 = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_headerItem;
  v27 = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_headerItem;
  sub_10001C850(v2 + OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_headerItem, v12 + ((v11 + 32) & ~v11), type metadata accessor for AppNavigationSidebarController.Item);
  v14 = *(v10 + 56);
  v14(v5, 1, 1, v9);
  v15 = v8;
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();

  sub_100004F84(v5, &qword_100AD4B90);
  v16 = v25;
  sub_100152DFC();
  v17 = v16 + v13;
  v18 = v16;
  sub_10001C850(v17, v5, type metadata accessor for AppNavigationSidebarController.Item);
  v14(v5, 0, 1, v26);
  v19 = v15;
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();

  sub_100004F84(v5, &qword_100AD4B90);
  v20 = v28;
  v21 = swift_allocObject();
  *(v21 + 16) = v29;
  sub_10001C850(v18 + v27, v21 + v20, type metadata accessor for AppNavigationSidebarController.Item);
  v22 = v19;
  NSDiffableDataSourceSectionSnapshot.expand(_:)(v21);

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v23 = v35;
  v34 = 0;
  UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

  return (*(v32 + 8))(v22, v6);
}

void *sub_10002B504()
{
  v0 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  v3 = type metadata accessor for JournalSidebarViewModel(0);
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JournalFeatureFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, enum case for JournalFeatureFlags.multipleJournals(_:), v5);
  v9 = JournalFeatureFlags.isEnabled.getter();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  if (qword_100ACFE28 != -1)
  {
    goto LABEL_24;
  }

LABEL_3:
  v10 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  type metadata accessor for JournalMO();
  v11 = v10;
  v12 = static JournalMO.visibleNamedJournalsRequest()();
  v15 = NSManagedObjectContext.fetch<A>(_:)();

  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v11;
    if (!v16)
    {
      goto LABEL_26;
    }

    goto LABEL_8;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  v23 = v11;
  if (v16)
  {
LABEL_8:
    v17 = 0;
    v18 = (v26 + 48);
    v13 = _swiftEmptyArrayStorage;
    v24 = v16;
    v25 = v3;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v15 + 8 * v17 + 32);
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          swift_once();
          goto LABEL_3;
        }
      }

      sub_1005208D8(v19, v2);
      if ((*v18)(v2, 1, v3) == 1)
      {
        sub_100004F84(v2, &unk_100AD4400);
      }

      else
      {
        sub_10001DAC8(v2, v27, type metadata accessor for JournalSidebarViewModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1003E4CB4(0, v13[2] + 1, 1, v13);
        }

        v22 = v13[2];
        v21 = v13[3];
        if (v22 >= v21 >> 1)
        {
          v13 = sub_1003E4CB4(v21 > 1, v22 + 1, 1, v13);
        }

        v13[2] = v22 + 1;
        sub_10001DAC8(v27, v13 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, type metadata accessor for JournalSidebarViewModel);
        v16 = v24;
        v3 = v25;
      }

      ++v17;
      if (v20 == v16)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_26:
  v13 = _swiftEmptyArrayStorage;
LABEL_27:

  return v13;
}

BOOL sub_10002BA54()
{
  v0 = type metadata accessor for JournalFeatureFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for JournalFeatureFlags.recentlyDeleted(_:), v0);
  v4 = JournalFeatureFlags.isEnabled.getter();
  (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v5 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v6 = static JournalDataUtilities.getRecentlyDeletedEntriesCount(context:)();

  return v6 > 0;
}

uint64_t sub_10002BD00()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD4B88);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v71 = &v61 - v4;
  v5 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v5 - 8);
  v66 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v67 = &v61 - v11;
  v12 = sub_1000F24EC(&qword_100AD4B90);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v61 - v16;
  v18 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v72 = *(v18 - 8);
  v73 = v18;
  v19 = __chkstk_darwin(v18);
  v70 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v61 - v22;
  __chkstk_darwin(v21);
  v68 = &v61 - v24;
  v25 = type metadata accessor for IndexPath();
  v69 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v61 - v29;
  result = sub_10002BA54();
  if ((result & 1) == 0)
  {
    v63 = v3;
    v64 = v2;
    v32 = [v1 collectionView];
    v33 = v73;
    if (v32)
    {
      v65 = v1;
      v34 = v32;
      v35 = [v32 indexPathsForSelectedItems];

      if (v35)
      {
        v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v36 + 16))
        {
          v37 = v69;
          (*(v69 + 16))(v28, v36 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v25);

          (*(v37 + 32))(v30, v28, v25);
          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          v38 = v73;

          v39 = v74;
          dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

          if ((*(v72 + 48))(v17, 1, v38) == 1)
          {
            (*(v37 + 8))(v30, v25);
            sub_100004F84(v17, &qword_100AD4B90);
            v33 = v38;
          }

          else
          {
            v40 = v68;
            sub_10001DAC8(v17, v68, type metadata accessor for AppNavigationSidebarController.Item);
            sub_10001C850(v40, v23, type metadata accessor for AppNavigationSidebarController.Item);
            v41 = v38;
            if (swift_getEnumCaseMultiPayload())
            {
              sub_10000D5C8(v23, type metadata accessor for AppNavigationSidebarController.Item);
            }

            else
            {
              v42 = v67;
              sub_10001DAC8(v23, v67, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
              v43 = sub_1000F24EC(&qword_100AD47A0);
              v44 = *(v43 - 8);
              v45 = *(v44 + 56);
              v61 = v44 + 56;
              v62 = v45;
              v45(v10, 1, 2, v43);
              v46 = sub_100524B84(v42, v10);
              sub_10000D5C8(v10, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
              sub_10000D5C8(v42, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
              if (v46)
              {
                Strong = swift_unknownObjectWeakLoadStrong();
                v48 = v69;
                if (Strong)
                {
                  v49 = v66;
                  v62(v66, 2, 2, v43);
                  v50 = sub_1000F24EC(&unk_100AD4BA0);
                  (*(*(v50 - 8) + 56))(v49, 0, 2, v50);
                  sub_1002E5234(v49, 0);
                  swift_unknownObjectRelease();
                  sub_10000D5C8(v49, type metadata accessor for SceneSplitViewController.ContentType);
                }

                sub_10002CCF8(0);
                sub_10000D5C8(v68, type metadata accessor for AppNavigationSidebarController.Item);
                (*(v48 + 8))(v30, v25);
                v33 = v73;
                goto LABEL_15;
              }
            }

            sub_10000D5C8(v40, type metadata accessor for AppNavigationSidebarController.Item);
            (*(v69 + 8))(v30, v25);
            v33 = v41;
          }
        }

        else
        {
        }
      }
    }

LABEL_15:
    v51 = sub_1000F24EC(&qword_100AD47A0);
    (*(*(v51 - 8) + 56))(v10, 1, 2, v51);
    sub_10002C6AC(v10, v15);
    sub_10000D5C8(v10, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    v52 = v72;
    if ((*(v72 + 48))(v15, 1, v33) == 1)
    {
      return sub_100004F84(v15, &qword_100AD4B90);
    }

    else
    {
      v53 = v15;
      v54 = v70;
      sub_10001DAC8(v53, v70, type metadata accessor for AppNavigationSidebarController.Item);
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      v55 = v74;
      v56 = v71;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      sub_1000F24EC(&qword_100AD4B98);
      v57 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_100940080;
      sub_10001C850(v54, v58 + v57, type metadata accessor for AppNavigationSidebarController.Item);
      v59 = v64;
      NSDiffableDataSourceSnapshot.deleteItems(_:)(v58);

      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      v60 = v74;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      (*(v63 + 8))(v56, v59);
      return sub_10000D5C8(v54, type metadata accessor for AppNavigationSidebarController.Item);
    }
  }

  return result;
}

uint64_t sub_10002C6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v8 - 8);
  v10 = v15 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v11 = v15[1];
  sub_10001C850(a1, v7, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  swift_storeEnumTagMultiPayload();
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  sub_10000D5C8(v7, type metadata accessor for AppNavigationSidebarController.Item);
  v12 = type metadata accessor for IndexPath();
  v13 = 1;
  LODWORD(v7) = (*(*(v12 - 8) + 48))(v10, 1, v12);
  sub_100004F84(v10, &unk_100ADFB90);
  if (v7 != 1)
  {
    sub_10001C850(a1, a2, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    swift_storeEnumTagMultiPayload();
    v13 = 0;
  }

  return (*(v5 + 56))(a2, v13, 1, v4);
}

uint64_t sub_10002C958@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v10 = a3(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = *(a2 + 16);
  if (v15)
  {
    v22 = v12;
    v23 = a5;
    v16 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v11 + 72);
    while (1)
    {
      sub_1005730E8(v16, v14, a4);
      v18 = a1(v14);
      if (v5)
      {
        return sub_100573150(v14, a4);
      }

      if (v18)
      {
        break;
      }

      sub_100573150(v14, a4);
      v16 += v17;
      if (!--v15)
      {
        v19 = 1;
        a5 = v23;
        goto LABEL_10;
      }
    }

    a5 = v23;
    sub_1005731B0(v14, v23, a4);
    v19 = 0;
LABEL_10:
    v12 = v22;
  }

  else
  {
    v19 = 1;
  }

  return (*(v11 + 56))(a5, v19, 1, v12);
}

size_t sub_10002CAF0(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD4B98, &unk_1009435C8, type metadata accessor for AppNavigationSidebarController.Item);
  *v3 = result;
  return result;
}

void sub_10002CB34(char a1)
{
  if ([v1 isEditing] || (v3 = objc_msgSend(v1, "traitCollection"), v4 = objc_msgSend(v3, "userInterfaceIdiom"), v3, v4 != 5))
  {
    sub_1000F24EC(&unk_100AD4780);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100941D50;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v5 + 32) = v8;
  }

  v6 = [v1 navigationItem];
  sub_1000065A8(0, &qword_100AD43B0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setRightBarButtonItems:isa animated:a1 & 1];
}

id sub_10002CCF8(int a1)
{
  v93 = a1;
  v2 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v2 - 8);
  v84 = &v77 - v3;
  v92 = type metadata accessor for IndexPath();
  v94 = *(v92 - 8);
  v4 = __chkstk_darwin(v92);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v83 = &v77 - v7;
  v8 = sub_1000F24EC(&qword_100AD4B90);
  __chkstk_darwin(v8 - 8);
  v88 = &v77 - v9;
  v90 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v87 = *(v90 - 8);
  v10 = __chkstk_darwin(v90);
  v80 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v89 = &v77 - v12;
  v13 = sub_1000F24EC(&qword_100AD4B88);
  v86 = *(v13 - 1);
  __chkstk_darwin(v13);
  v85 = &v77 - v14;
  v15 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v81 = *(v15 - 8);
  v16 = *(v81 + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v79 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v82 = &v77 - v18;
  v19 = sub_1000F24EC(&qword_100AD4D20);
  __chkstk_darwin(v19 - 8);
  v21 = &v77 - v20;
  v22 = type metadata accessor for SceneSplitViewController.ContentType(0);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v77 - v27;
  __chkstk_darwin(v26);
  v91 = &v77 - v29;
  v30 = v1;
  v31 = [v30 parentViewController];

  v95 = v30;
  if (!v31)
  {
    goto LABEL_7;
  }

  type metadata accessor for SceneSplitViewController(0);
  while (1)
  {
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      break;
    }

    v33 = v31;
    v31 = [v33 parentViewController];

    if (!v31)
    {
      goto LABEL_7;
    }
  }

  v34 = [*(v32 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed];

  if (v34)
  {
    goto LABEL_7;
  }

  v46 = v95;
  v47 = [v46 parentViewController];

  v78 = v46;
  if (!v47)
  {
    goto LABEL_7;
  }

  while (!swift_dynamicCastClass())
  {
    v48 = v47;
    v47 = [v48 parentViewController];

    if (!v47)
    {
      goto LABEL_7;
    }
  }

  sub_1002E8160(v21);

  v49 = type metadata accessor for SceneSplitViewController.Content(0);
  if ((*(*(v49 - 8) + 48))(v21, 1, v49) != 1)
  {
    sub_10001C850(v21, v28, type metadata accessor for SceneSplitViewController.ContentType);
    sub_10000D5C8(v21, type metadata accessor for SceneSplitViewController.Content);
    v50 = v91;
    sub_10001DAC8(v28, v91, type metadata accessor for SceneSplitViewController.ContentType);
    sub_10001C850(v50, v25, type metadata accessor for SceneSplitViewController.ContentType);
    v51 = sub_1000F24EC(&unk_100AD4BA0);
    v52 = (*(*(v51 - 8) + 48))(v25, 2, v51);
    if (v52)
    {
      v53 = v94;
      v54 = v89;
      if (v52 == 1)
      {
        v55 = sub_10013FC48;
      }

      else
      {
        v55 = sub_10013FC54;
      }
    }

    else
    {
LABEL_27:
      v56 = v82;
      sub_10001DAC8(v25, v82, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v57 = v13;
      v58 = (*(v81 + 80) + 16) & ~*(v81 + 80);
      v59 = swift_allocObject() + v58;
      v13 = v57;
      sub_10001DAC8(v56, v59, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v55 = sub_10015DAEC;
      v53 = v94;
      v54 = v89;
    }

    v60 = v85;
    swift_getKeyPath();
    swift_getKeyPath();

    v61 = v78;
    static UIViewController.ViewLoading.subscript.getter();

    v62 = v96;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v63 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    v64 = v88;
    sub_10002C918(v55, v63, v88);

    if ((*(v87 + 48))(v64, 1, v90) == 1)
    {

      (*(v86 + 8))(v60, v13);
      sub_10000D5C8(v91, type metadata accessor for SceneSplitViewController.ContentType);
      return sub_100004F84(v64, &qword_100AD4B90);
    }

    v95 = v13;
    sub_10001DAC8(v64, v54, type metadata accessor for AppNavigationSidebarController.Item);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v65 = v96;
    v66 = v84;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    v67 = v92;
    if ((*(v53 + 48))(v66, 1, v92) == 1)
    {

      sub_10000D5C8(v54, type metadata accessor for AppNavigationSidebarController.Item);
      (*(v86 + 8))(v60, v95);
      sub_10000D5C8(v91, type metadata accessor for SceneSplitViewController.ContentType);
      return sub_100004F84(v66, &unk_100ADFB90);
    }

    (*(v53 + 32))(v83, v66, v67);
    result = [v61 collectionView];
    if (!result)
    {
      goto LABEL_41;
    }

    v68 = result;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v68 selectItemAtIndexPath:isa animated:v93 & 1 scrollPosition:4];

    v70 = v80;
    sub_10001C850(v54, v80, type metadata accessor for AppNavigationSidebarController.Item);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10000D5C8(v70, type metadata accessor for AppNavigationSidebarController.Item);
      v71 = v95;
    }

    else
    {
      v72 = v70;
      v73 = v79;
      sub_10001DAC8(v72, v79, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v74 = sub_1000F24EC(&qword_100AD47A0);
      v75 = v82;
      (*(*(v74 - 8) + 56))(v82, 1, 2, v74);
      v76 = sub_100524B84(v73, v75);
      sub_10000D5C8(v75, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      sub_10000D5C8(v73, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v71 = v95;
      if (v76)
      {
LABEL_38:

        (*(v53 + 8))(v83, v92);
        sub_10000D5C8(v54, type metadata accessor for AppNavigationSidebarController.Item);
        (*(v86 + 8))(v60, v71);
        return sub_10000D5C8(v91, type metadata accessor for SceneSplitViewController.ContentType);
      }
    }

    sub_10002BD00();
    goto LABEL_38;
  }

  sub_100004F84(v21, &qword_100AD4D20);
LABEL_7:
  result = [v95 collectionView];
  if (result)
  {
    v36 = result;
    v37 = [result indexPathsForSelectedItems];

    v38 = v94;
    if (v37)
    {
      v39 = v92;
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = v40[2];
      if (!v41)
      {
      }
    }

    else
    {
      v40 = _swiftEmptyArrayStorage;
      v39 = v92;
      v41 = _swiftEmptyArrayStorage[2];
      if (!v41)
      {
      }
    }

    v25 = 0;
    v13 = (v38 + 16);
    v42 = (v38 + 8);
    while (1)
    {
      if (v25 >= v40[2])
      {
        __break(1u);
        goto LABEL_27;
      }

      (*(v38 + 16))(v6, v40 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v25, v39);
      result = [v95 collectionView];
      if (!result)
      {
        break;
      }

      v43 = result;
      v44 = v39;
      ++v25;
      v45 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v43 deselectItemAtIndexPath:v45 animated:v93 & 1];

      (*v42)(v6, v44);
      v39 = v44;
      v38 = v94;
      if (v41 == v25)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_10002D9CC()
{
  v1 = *(type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1000F24EC(&qword_100AD47A0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 2, v3))
  {
    v4 = type metadata accessor for UUID();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10002DB04()
{
  result = type metadata accessor for SceneSplitViewController.ContentType(319);
  if (v1 <= 0x3F)
  {
    result = sub_1000065A8(319, &qword_100AD4C80);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_10002DBE0()
{
  v1 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v1);
  v2 = sub_1000F24EC(&qword_100ADD520);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for RootPaneNavigationController();
  v16.receiver = v0;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  result = [v0 view];
  if (result)
  {
    v7 = result;
    [result bounds];
    Width = CGRectGetWidth(v17);
    [v7 safeAreaInsets];
    v10 = Width - v9;
    [v7 safeAreaInsets];
    *&v12 = v10 - v11;
    v13 = [v7 traitCollection];
    [v13 horizontalSizeClass];

    UserInterfaceSizeClass.init(_:)();
    v14 = sub_10002DDD4(v12, 0, v4);

    UIViewController.traitOverrides.getter();
    v15[15] = v14;
    sub_10002E2A0();
    dispatch thunk of UIMutableTraits.subscript.setter();
    return UIViewController.traitOverrides.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002DDD4(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100ADD520);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = sub_1000F24EC(&qword_100AEBFC0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v24 - v14;
  v16 = *(v13 + 56);
  sub_10002E158(a3, &v24 + v16 - v14);
  if (a2)
  {
    v17 = type metadata accessor for UserInterfaceSizeClass();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(&v15[v16], 1, v17) == 1)
    {
LABEL_18:
      v22 = 2;
      goto LABEL_20;
    }

    sub_10002E1C8(&v15[v16], v9);
    if ((*(v18 + 88))(v9, v17) != enum case for UserInterfaceSizeClass.compact(_:))
    {
      (*(v18 + 8))(v9, v17);
      goto LABEL_18;
    }

LABEL_19:
    v22 = 1;
    goto LABEL_20;
  }

  v19 = *&a1;
  v20 = type metadata accessor for UserInterfaceSizeClass();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(&v15[v16], 1, v20) != 1)
  {
    sub_10002E1C8(&v15[v16], v11);
    if ((*(v21 + 88))(v11, v20) == enum case for UserInterfaceSizeClass.compact(_:))
    {
      if (v19 <= 374.0)
      {
        v22 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      (*(v21 + 8))(v11, v20);
    }
  }

  if (v19 <= 500.0)
  {
    goto LABEL_19;
  }

  if (v19 <= 726.0)
  {
    goto LABEL_18;
  }

  if (v19 <= 981.0)
  {
    v22 = 3;
  }

  else if (v19 <= 1194.0)
  {
    v22 = 4;
  }

  else if (v19 <= 1500.0)
  {
    v22 = 5;
  }

  else if (v19 > 2500.0)
  {
    v22 = 7;
  }

  else
  {
    v22 = 6;
  }

LABEL_20:
  sub_10002E238(&v15[v16]);
  return v22;
}

uint64_t sub_10002E158(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADD520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E1C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADD520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E238(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100ADD520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002E2A0()
{
  result = qword_100AD4EE0;
  if (!qword_100AD4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4EE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetSizeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10002E3AC()
{
  v1 = sub_1000F24EC(&qword_100AEBFC0);
  __chkstk_darwin(v1);
  v3 = &v15[-v2];
  v4 = sub_1000F24EC(&qword_100ADD520);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  sub_10002E2A0();
  UITraitCollection.subscript.getter();
  v10 = v16;
  if (v16 == 8)
  {
    [v0 horizontalSizeClass];
    UserInterfaceSizeClass.init(_:)();
    v11 = *(v1 + 48);
    sub_10002E158(v9, &v3[v11]);
    v12 = type metadata accessor for UserInterfaceSizeClass();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(&v3[v11], 1, v12) != 1)
    {
      sub_10002E1C8(&v3[v11], v7);
      if ((*(v13 + 88))(v7, v12) == enum case for UserInterfaceSizeClass.compact(_:))
      {
        v10 = 1;
LABEL_7:
        sub_10002E238(&v3[v11]);
        return v10;
      }

      (*(v13 + 8))(v7, v12);
    }

    v10 = 2;
    goto LABEL_7;
  }

  return v10;
}

unint64_t sub_10002E5C8()
{
  result = qword_100AEBFC8;
  if (!qword_100AEBFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBFC8);
  }

  return result;
}

uint64_t sub_10002E71C()
{
  v0 = type metadata accessor for ImageResource();
  v21 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for UIContentUnavailableConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100303598())
  {
    v20 = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v9 = v22;
    v10 = [v22 isActive];

    if ((v10 & 1) == 0)
    {
      sub_10041C954(0);
    }

    static UIContentUnavailableConfiguration.empty()();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    UIContentUnavailableConfiguration.text.setter();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    UIContentUnavailableConfiguration.secondaryText.setter();
    sub_1000065A8(0, &qword_100AE9450);
    if (qword_100AD0D78 != -1)
    {
      swift_once();
    }

    v11 = sub_10000617C(v0, qword_100B31778);
    (*(v21 + 16))(v2, v11, v0);
    UIImage.init(resource:)();
    UIContentUnavailableConfiguration.image.setter();
    UIContentUnavailableConfiguration.imageToTextPadding.setter();
    v12 = UIContentUnavailableConfiguration.directionalLayoutMargins.modify();
    *(v13 + 8) = 0x4034000000000000;
    v12(&v22, 0);
    v14 = UIContentUnavailableConfiguration.directionalLayoutMargins.modify();
    *(v15 + 24) = 0x4034000000000000;
    v14(&v22, 0);
    *(&v23 + 1) = v5;
    v24 = &protocol witness table for UIContentUnavailableConfiguration;
    v16 = sub_10001A770(&v22);
    v17 = v20;
    (*(v20 + 16))(v16, v8, v5);
    UIViewController.contentUnavailableConfiguration.setter();
    return (*(v17 + 8))(v8, v5);
  }

  else
  {
    sub_10041C954(1);
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    return UIViewController.contentUnavailableConfiguration.setter();
  }
}

void sub_10002EBD4(char a1)
{
  v3 = sub_1000F24EC(&qword_100AE3E08);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for JournalTimelineViewController(0);
  v13.receiver = v1;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, "viewIsAppearing:", a1 & 1);
  sub_100016804(a1);
  if (sub_10018B14C(v1))
  {
    v7 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_stateToRestore;
    swift_beginAccess();
    sub_1000082B4(&v1[v7], v5, &qword_100AE3E08);
    v8 = type metadata accessor for JournalTimelineViewController.State(0);
    LODWORD(v7) = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
    sub_100004F84(v5, &qword_100AE3E08);
    sub_100055D14(v7);
    v9 = [v1 viewIfLoaded];
    v10 = [v9 window];

    if (v10)
    {

      v11 = *&v1[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController];
      if (!*(v11 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel))
      {
        (*((swift_isaMask & *v11) + 0x388))(*&v1[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_model], 0, 1);
      }
    }
  }
}

void sub_10002EE24()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for JournalTimelineViewController(0);
  objc_msgSendSuper2(&v5, "viewWillLayoutSubviews");
  v1 = *(*&v0[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController] + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v1)
  {
    v2 = v1;
    v3 = [v0 navigationItem];
    v4 = [v3 title];

    [v2 setAccessibilityValue:v4];
  }

  sub_10023DCC0();
}

uint64_t sub_10002EEEC()
{
  v1 = type metadata accessor for Runtime.Environment();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002F058(v0);
  v7 = v6;
  static Runtime.Environment.current.getter();
  v8 = (*(v2 + 88))(v4, v1);
  if (v8 == enum case for Runtime.Environment.production(_:))
  {
    return v5;
  }

  if (v8 == enum case for Runtime.Environment.staging(_:))
  {
    v12 = v5;
    v13 = v7;
    v9 = 0x676174532820;
LABEL_6:
    v10._countAndFlagsBits = v9 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
    v10._object = 0xEA00000000002967;
    String.append(_:)(v10);
    return v12;
  }

  if (v8 == enum case for Runtime.Environment.testing(_:))
  {
    v12 = v5;
    v13 = v7;
    v9 = 0x747365542820;
    goto LABEL_6;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10002F058(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for EntryListType();
  v5 = __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v20 - v8;
  sub_100022B50(a1 + OBJC_IVAR____TtC7Journal28ObservableEntryListViewModel_listType, v20 - v8);
  v10 = sub_1000F24EC(&qword_100AD47A0);
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v9, 2, v10);
  if (v12)
  {
    if (v12 == 1)
    {
      if (qword_100AD0788 != -1)
      {
        swift_once();
      }

      v13 = xmmword_100B30AF0;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      return String.init(localized:table:bundle:locale:comment:)();
    }

    return v13;
  }

  sub_100022B50(v9, v7);
  if (qword_100ACF9D0 != -1)
  {
    swift_once();
  }

  v14 = sub_10000617C(v4, qword_100B2F468);
  v15 = sub_100023858(v14, v7);
  sub_100011478(v7);
  if (v15)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v13 = String.init(localized:table:bundle:locale:comment:)();
    sub_100011478(v9);
    return v13;
  }

  if (!v11(v9, 2, v10))
  {
    swift_getKeyPath();
    v20[1] = a1;
    sub_10011939C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(a1 + OBJC_IVAR____TtC7Journal28ObservableEntryListViewModel__observableJournal) || (, v13 = dispatch thunk of ObservableJournal.title.getter(), v17 = v16, , !v17))
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v13 = String.init(localized:table:bundle:locale:comment:)();
    }

    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 8))(v9, v18);
    return v13;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_10002F59C(char a1)
{
  v3 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-v4];
  v6 = sub_1000F24EC(&unk_100ADE540);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v22[-v10];
  v12 = type metadata accessor for JournalEntryCollectionViewController.State(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for JournalEntryCollectionViewController(0);
  v23.receiver = v1;
  v23.super_class = v16;
  objc_msgSendSuper2(&v23, "viewIsAppearing:", a1 & 1);
  v17 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_stateToRestore;
  swift_beginAccess();
  sub_1000082B4(&v1[v17], v11, &unk_100ADE540);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100004F84(v11, &unk_100ADE540);
    goto LABEL_10;
  }

  sub_10031894C(v11, v15, type metadata accessor for JournalEntryCollectionViewController.State);
  (*(v13 + 56))(v9, 1, 1, v12);
  swift_beginAccess();
  sub_100014318(v9, &v1[v17], &unk_100ADE540);
  swift_endAccess();
  v18 = sub_100316564(v15);
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  v20 = &v1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_pendingScrollRequest];
  *v20 = v18;
  v20[8] = 0;
  swift_retain_n();

  if (v1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialFetchStatus] == 2)
  {
    *v20 = 0;
    v20[8] = 0;

    sub_100304A74(v19, 0);
  }

  if (v15[*(v12 + 20)] == 1)
  {
    v21 = type metadata accessor for CanvasContentInputType();
    swift_storeEnumTagMultiPayload();
    (*(*(v21 - 8) + 56))(v5, 0, 1, v21);
    sub_1003054F0(v19, v5, 0);

    sub_100004F84(v5, &qword_100AD57F0);
LABEL_8:
    sub_100014124(v15, type metadata accessor for JournalEntryCollectionViewController.State);
    goto LABEL_10;
  }

  sub_100014124(v15, type metadata accessor for JournalEntryCollectionViewController.State);

LABEL_10:
  if (!v1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialFetchStatus])
  {
    sub_10002F984();
  }
}

void sub_10002F984()
{
  if (!*(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialFetchStatus))
  {
    *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialFetchStatus) = 1;
  }

  v1 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
    if (v3)
    {
      v15[0] = 0;
      if ([v3 performFetch:v15])
      {
        v4 = v15[0];
        v5 = *(v0 + v1);
        if (!v5)
        {
          return;
        }

        goto LABEL_13;
      }

      v6 = v0;
      v7 = v15[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100ACFBF8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000617C(v8, qword_100B2F718);
      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v9, v10))
      {

        v5 = *(v6 + v1);
        if (!v5)
        {
          return;
        }

LABEL_13:
        if (!*(v5 + OBJC_IVAR____TtC7Journal18EntryListViewModel_currentFilters))
        {

          sub_100087B3C();
          if (qword_100ACFF00 != -1)
          {
            swift_once();
          }

          v14 = sub_1000F24EC(&unk_100ADE720);
          sub_10000617C(v14, qword_100B2FA90);
          swift_beginAccess();
          Tips.Parameter.wrappedValue.setter();
          swift_endAccess();
        }

        return;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Fetch error: %@", v11, 0xCu);
      sub_100004F84(v12, &unk_100AD4BB0);

      v0 = v6;
    }

    v5 = *(v0 + v1);
    if (!v5)
    {
      return;
    }

    goto LABEL_13;
  }
}

uint64_t sub_10002FD9C(void *a1)
{
  [a1 bounds];
  Width = CGRectGetWidth(v14);
  [a1 safeAreaInsets];
  v4 = Width - v3;
  [a1 safeAreaInsets];
  v6 = v4 - v5;
  [a1 bounds];
  Height = CGRectGetHeight(v15);
  [a1 safeAreaInsets];
  v9 = Height - v8;
  [a1 safeAreaInsets];
  v11 = v10;

  v12 = (v9 - v11) / v6;
  if (v12 < 1.0)
  {
    return 0;
  }

  if (v12 <= 1.5)
  {
    return 1;
  }

  if (v12 < 1.5)
  {
    return 1;
  }

  return 2;
}

unint64_t sub_10002FE80()
{
  result = qword_100ADE698;
  if (!qword_100ADE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE698);
  }

  return result;
}

unint64_t sub_10002FF0C()
{
  result = qword_100ADFC18;
  if (!qword_100ADFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFC18);
  }

  return result;
}

uint64_t sub_1000300C4()
{
  v1 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for UIContentUnavailableConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(qword_100AF2AC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = sub_100014590(v8, 0, 0);
  v12 = v11;
  result = sub_1000307DC(v8);
  if ((v12 & 1) == 0)
  {
    v31 = v0;
    static UIContentUnavailableConfiguration.empty()();
    v14 = String._bridgeToObjectiveC()();
    v15 = [objc_opt_self() systemImageNamed:v14];

    UIContentUnavailableConfiguration.image.setter();
    v16 = [objc_opt_self() systemIndigoColor];
    v17 = UIContentUnavailableConfiguration.imageProperties.modify();
    UIContentUnavailableConfiguration.ImageProperties.tintColor.setter();
    v17(&v32, 0);
    static UIBackgroundConfiguration.clear()();
    UIContentUnavailableConfiguration.background.setter();
    if (qword_100AD0518 != -1)
    {
      swift_once();
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v19 = qword_100AD0528;

        if (v19 != -1)
        {
          goto LABEL_28;
        }

LABEL_16:
        v22 = v31;

        v23 = UIContentUnavailableConfigurationState.traitCollection.getter();
        v24 = [v23 userInterfaceIdiom];

        v25 = *(v22 + OBJC_IVAR____TtC7Journal29AppSecureAccessViewController_state);
        if (v24 == 5 && v25 - 1 < 2)
        {
          goto LABEL_18;
        }

        if (v25 < 2)
        {

          v34 = 0;
          v32 = 0u;
          v33 = 0u;
          goto LABEL_24;
        }

        if (v25 != 2)
        {
LABEL_18:
          UIContentUnavailableConfiguration.text.setter();
          UIContentUnavailableConfiguration.secondaryText.setter();
          if (qword_100AD0540 != -1)
          {
            swift_once();
          }

          v26 = UIContentUnavailableConfiguration.button.modify();
          UIButton.Configuration.title.setter();
          v26(&v32, 0);
          sub_1000065A8(0, &qword_100AD4420);
          swift_allocObject();
          swift_unknownObjectWeakInit();
          UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          v27 = UIContentUnavailableConfiguration.buttonProperties.modify();
          UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
          v27(&v32, 0);
        }

        else
        {
          UIContentUnavailableConfiguration.text.setter();
          UIContentUnavailableConfiguration.secondaryText.setter();
        }

        *(&v33 + 1) = v2;
        v34 = &protocol witness table for UIContentUnavailableConfiguration;
        v28 = sub_10001A770(&v32);
        (*(v3 + 16))(v28, v5, v2);
LABEL_24:
        UIViewController.contentUnavailableConfiguration.setter();
        return (*(v3 + 8))(v5, v2);
      }

      if (v10 == 4)
      {
        v21 = qword_100AD0520;

        if (v21 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_28;
      }
    }

    else
    {
      if (!v10)
      {
        v18 = qword_100AD0538;

        if (v18 == -1)
        {
          goto LABEL_16;
        }

LABEL_28:
        swift_once();
        goto LABEL_16;
      }

      if (v10 == 1)
      {
        v20 = qword_100AD0530;

        if (v20 != -1)
        {
          goto LABEL_28;
        }

        goto LABEL_16;
      }
    }

    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(29);

    *&v32 = 0xD00000000000001BLL;
    *(&v32 + 1) = 0x800000010090A200;
    v35 = v10;
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000307A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000307DC(uint64_t a1)
{
  v2 = sub_1000F24EC(qword_100AF2AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003088C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_10003094C(a1, v4, v5, v7, v6);
}

uint64_t sub_10003094C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_1000F24EC(&qword_100AF6E60);
  v5[5] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v8;
  v5[12] = v7;

  return _swift_task_switch(sub_100030A7C, v8, v7);
}

uint64_t sub_100030A7C()
{

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v0[13] = static MainActor.shared.getter();
  v1 = sub_100006C34(&qword_100AD5F58, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_10009A3CC;
  v3 = v0[5];
  v4 = v0[6];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_100030B78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_100030C24();
}

uint64_t sub_100030C24()
{
  sub_1000F24EC(&qword_100AD5170);
  v0[2] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[4] = v2;
  v0[5] = v1;

  return _swift_task_switch(sub_100030CF0, v2, v1);
}

uint64_t sub_100030CF0()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v1 = qword_100B2F9E0;
  v2 = *(qword_100B2F9E0 + 16);
  v3 = *&v2[OBJC_IVAR____TtC7Journal13CoreDataStack_container];
  v4 = v2;
  v5 = [v3 viewContext];
  v6 = [v5 persistentStoreCoordinator];

  if (v6 && ((v7 = [v6 persistentStores], sub_1000065A8(0, &qword_100AE5BC0), v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v7, v8 >> 62) ? (v9 = _CocoaArrayWrapper.endIndex.getter()) : (v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10)), v6, , v9))
  {
    v10 = v4[OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoresLoadSuccess];

    if (v10 == 1)
    {
      if (qword_100ACFE20 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000617C(v11, qword_100AE5A40);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "didFinishLaunchingWithOptions: Core Data was determined to be open!", v14, 2u);
      }

      v15 = v0[3];

      sub_100031210();
      v16 = *(*(v1 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container);
      v0[6] = v16;
      v17 = v16;

      v18 = swift_task_alloc();
      v0[7] = v18;
      *v18 = v0;
      v18[1] = sub_100087554;

      return (sub_1004FFB2C)(v15, &protocol witness table for MainActor, 1, v17);
    }
  }

  else
  {
  }

  if (qword_100ACFE20 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000617C(v20, qword_100AE5A40);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "didFinishLaunchingWithOptions: Core Data hasn't opened, will wait for open callback", v23, 2u);
  }

  v24 = *(v1 + 16);
  v25 = &v24[OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoreLoadedSuccessfully];
  v26 = *&v24[OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoreLoadedSuccessfully];
  *v25 = sub_1004AED30;
  v25[1] = 0;
  v27 = v24;
  sub_100004DF8(v26);

  sub_1000B1F9C();
  v28 = type metadata accessor for JournalWidgetBridge();
  if (qword_100AD00D8 != -1)
  {
    swift_once();
  }

  v29 = v0[2];
  v30 = qword_100B2FD90;
  static TaskPriority.low.getter();
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v29, 0, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v30;
  v32[5] = v28;

  sub_1004AAB54(0, 0, v29, &unk_1009584B0, v32);

  sub_100004F84(v29, &qword_100AD5170);

  v33 = v0[1];

  return v33();
}

uint64_t sub_100031210()
{
  v0 = type metadata accessor for JournalFeatureFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v7 = qword_100B2F9E0;
  sub_1000315B0();
  v8 = *(*(v7 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  sub_100776A88(v8);

  sub_10003C5A8();
  sub_10003C938();
  sub_10034F8BC();
  sub_10034A5BC();
  TaskPriority.init(rawValue:)();
  v9 = type metadata accessor for TaskPriority();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 0, 1, v9);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1004AAB54(0, 0, v6, &unk_1009584B8, v11);

  sub_100004F84(v6, &qword_100AD5170);
  type metadata accessor for AssetPostprocessingOperation();
  sub_10003CC9C();
  v10(v6, 1, 1, v9);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_1004EC158(0, 0, v6, &unk_1009584C0, v12);

  if (qword_100AD00D8 != -1)
  {
    swift_once();
  }

  sub_1000423C0();
  (*(v1 + 104))(v3, enum case for JournalFeatureFlags.search(_:), v0);
  v13 = JournalFeatureFlags.isEnabled.getter();
  (*(v1 + 8))(v3, v0);
  if (v13)
  {
    sub_100042EA4();
  }

  v10(v6, 1, 1, v9);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_1003E9628(0, 0, v6, &unk_1009584D0, v15);
}

void sub_1000315B0()
{
  v1 = v0;
  sub_100026188();
  v2 = static NSUserDefaults.sharedWithDataclassOwner.getter();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 BOOLForKey:v3];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    [v2 setBool:0 forKey:v5];

    if (qword_100AD00E8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000617C(v6, qword_100AECF50);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "(resolveDataClassKeys) CAUTION!!! deleting all private data as requested during iCloud sign-out", v9, 2u);
    }

    v10 = *(*(v1 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1004667AC;
    *(v12 + 24) = v11;
    v31 = sub_100177C4C;
    v32 = v12;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10001A7D4;
    v30 = &unk_100A77F58;
    v13 = _Block_copy(&v27);
    v14 = v10;

    [v14 performBlockAndWait:v13];
    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
LABEL_16:
      swift_once();
      goto LABEL_9;
    }
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = [v2 BOOLForKey:v15];

  if (!v16)
  {
LABEL_13:

    return;
  }

  v17 = String._bridgeToObjectiveC()();
  [v2 setBool:0 forKey:v17];

  if (qword_100AD00E8 != -1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v18 = type metadata accessor for Logger();
  sub_10000617C(v18, qword_100AECF50);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "(resolveDataClassKeys) CAUTION!!! marking all as not uploaded as requested during iCloud sign-out", v21, 2u);
  }

  v22 = *(*(v1 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100356824;
  *(v24 + 24) = v23;
  v31 = sub_100028EF4;
  v32 = v24;
  v27 = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10001A7D4;
  v30 = &unk_100A77EE0;
  v25 = _Block_copy(&v27);
  v26 = v22;

  [v26 performBlockAndWait:v25];
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
    goto LABEL_13;
  }
}

uint64_t sub_100031AD0()
{

  return swift_deallocObject();
}

unint64_t sub_100031B20()
{
  result = qword_100ADB910;
  if (!qword_100ADB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB910);
  }

  return result;
}

uint64_t sub_100031B84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_100031C30();
}

uint64_t sub_100031C30()
{
  v1 = type metadata accessor for AudioIntensityProcessor();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v3 = sub_1000F24EC(&qword_100AD8858);
  v0[9] = v3;
  v0[10] = *(v3 - 8);
  v0[11] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1000432A8;

  return sub_100208F9C(0);
}

uint64_t sub_100031E04()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_10048E0F8;
  }

  else
  {
    v2 = sub_100032194;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100031F18()
{
  if ((*(*(v0 + 96) + 48))(*(v0 + 160), 1, *(v0 + 88)) == 1)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 192);
    v5 = *(v0 + 152);
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v8 = [*(v0 + 56) newBackgroundContext];
    *(v0 + 216) = v8;
    v9 = swift_allocObject();
    *(v0 + 224) = v9;
    *(v9 + 16) = v4;
    *(v9 + 24) = v8;
    v10 = *(v7 + 104);
    *(v0 + 232) = v10;
    *(v0 + 240) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v10(v5, v3, v6);

    v8;
    v11 = swift_task_alloc();
    *(v0 + 248) = v11;
    v12 = sub_1000F24EC(&qword_100AE5120);
    *v11 = v0;
    v11[1] = sub_10003EF30;
    v13 = *(v0 + 152);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 48, v13, sub_10048F014, v9, v12);
  }
}

uint64_t sub_100032154()
{

  return swift_deallocObject();
}

unint64_t sub_1000321B0()
{
  result = qword_100ADB900;
  if (!qword_100ADB900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADB900);
  }

  return result;
}

uint64_t sub_1000321FC(uint64_t a1)
{
  v4 = *(sub_1000F24EC(&qword_100ADA6A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_100032328(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100032328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1000F24EC(&qword_100ADA6A8);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000323F4, 0, 0);
}

uint64_t sub_1000323F4()
{
  if (qword_100ACFB60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100ADA5A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Requesting automatic update at launch", v4, 2u);
  }

  v6 = v0[2].i64[1];
  v5 = v0[3].i64[0];
  v7 = v0[2].i64[0];
  v11 = v0[1];

  AsyncStream.Continuation.yield<A>()();
  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v0[3].i64[1] = v8;
  v8[1] = vextq_s8(v11, v11, 8uLL);
  v9 = swift_task_alloc();
  v0[4].i64[0] = v9;
  *v9 = v0;
  v9[1] = sub_10024829C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1000325CC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADA5A8);
  sub_10000617C(v0, qword_100ADA5A8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003264C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1000326BC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100032EC8;

  return sub_100032770(a1, a2, v7, v6);
}

uint64_t sub_100032770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_1000F24EC(&qword_100ADA6A0);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v4[7] = *(v6 + 64);
  v4[8] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100032880, 0, 0);
}

uint64_t sub_100032880()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  v18 = v5;
  v6 = v0[3];
  v16 = type metadata accessor for TaskPriority();
  v19 = *(*(v16 - 8) + 56);
  v19(v2, 1, 1, v16);
  v17 = *(v3 + 16);
  v17(v1, v5, v4);
  v7 = *(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = v6;
  v15 = *(v3 + 32);
  v15(&v8[(v7 + 40) & ~v7], v1, v4);
  v9 = v6;
  sub_100032C78(v2, &unk_10094A4E8, v8);
  sub_100004F84(v2, &qword_100AD5170);
  v19(v2, 1, 1, v16);
  v17(v1, v18, v4);
  v10 = (v7 + 32) & ~v7;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v15((v11 + v10), v1, v4);
  sub_100032C78(v2, &unk_10094A4F8, v11);
  sub_100004F84(v2, &qword_100AD5170);
  v19(v2, 1, 1, v16);
  v17(v1, v18, v4);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v15((v12 + v10), v1, v4);
  sub_100032C78(v2, &unk_10094A508, v12);
  sub_100004F84(v2, &qword_100AD5170);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100032B98()
{
  v1 = sub_1000F24EC(&qword_100ADA6A0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100032C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_1000082B4(a1, v20 - v9, &qword_100AD5170);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100004F84(v10, &qword_100AD5170);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_100032E90()
{

  return swift_deallocObject();
}

uint64_t sub_100032ECC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100032FC0(uint64_t a1)
{
  v4 = *(sub_1000F24EC(&qword_100ADA690) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_10003507C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1000330EC()
{
  if ((*(v0 + 144) & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 112) = Strong) == 0))
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v8 = *(v0 + 8);

    return v8();
  }

  else if (MKBGetDeviceLockState() == 1)
  {
    if (qword_100ACFB60 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100ADA5A8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Skipping InsightsDataManager.update. Device is locked.", v5, 2u);
    }

    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v6[1] = sub_1000431AC;
    v7 = *(v0 + 80);

    return AsyncStream.Iterator.next(isolation:)(v0 + 144, 0, 0, v7);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    v9[1] = sub_1000B946C;

    return sub_1000351A4();
  }
}

uint64_t sub_100033358()
{
  v2 = *(sub_1000F24EC(&qword_100ADA6A0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100032EC8;

  return sub_1000353A4(v4, v5, v6, v0 + v3);
}

uint64_t sub_100033450(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100090620;

  return v4();
}

uint64_t sub_100033538()
{
  NSManagedObjectContext.didMergeChangesNotifications.getter();
  v0[16] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  swift_getAssociatedConformanceWitness();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_100248414;
  v2 = v0[10];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v2, 0, 0);
}

uint64_t sub_100033658(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TapToRadarUtilities.RadarClassification();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for JournalTimelineViewController(0);
  v52.receiver = v2;
  v52.super_class = v12;
  objc_msgSendSuper2(&v52, "viewDidAppear:", a1 & 1);
  [v2 setNeedsStatusBarAppearanceUpdate];
  result = static Runtime.isInternalBuild.getter();
  if (result)
  {
    if (qword_100ACFE28 != -1)
    {
      result = swift_once();
    }

    v14 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoreLoadingError);
    if (v14)
    {
      aBlock = 0;
      v46 = 0xE000000000000000;
      swift_errorRetain();
      _StringGuts.grow(_:)(30);
      v15._object = 0x80000001008F22A0;
      v15._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v15);
      v51 = v14;
      sub_1000F24EC(&qword_100AD5BC0);
      _print_unlocked<A, B>(_:_:)();
      v17 = aBlock;
      v16 = v46;
      (*(v6 + 104))(v11, enum case for TapToRadarUtilities.RadarClassification.crashHangDataLoss(_:), v5);
      if (static Runtime.isInternalBuild.getter())
      {
        if (byte_100AE9DE0)
        {
        }

        else
        {
          v44 = ObjectType;
          v42 = 0x80000001008F2280;
          v43 = "Journal encountered an error";
          v40 = type metadata accessor for JurassicAlertController();
          v18 = String._bridgeToObjectiveC()();
          v41 = v17;
          v19 = v18;
          v20 = String._bridgeToObjectiveC()();
          v43 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

          (*(v6 + 16))(v9, v11, v5);
          v21 = (*(v6 + 80) + 48) & ~*(v6 + 80);
          v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
          v40 = v16;
          v23 = swift_allocObject();
          v25 = v41;
          v24 = v42;
          *(v23 + 2) = 0xD000000000000017;
          *(v23 + 3) = v24;
          v26 = v40;
          *(v23 + 4) = v25;
          *(v23 + 5) = v26;
          (*(v6 + 32))(&v23[v21], v9, v5);
          v27 = &v23[v22];
          *v27 = 0;
          *(v27 + 1) = 0;
          *&v23[(v22 + 23) & 0xFFFFFFFFFFFFFFF8] = v44;
          v28 = String._bridgeToObjectiveC()();
          v49 = sub_100420C54;
          v50 = v23;
          aBlock = _NSConcreteStackBlock;
          v46 = 1107296256;
          v41 = &v47;
          v47 = sub_10016B4D8;
          v48 = &unk_100A6C7E8;
          v29 = _Block_copy(&aBlock);

          v30 = objc_opt_self();
          v42 = [v30 actionWithTitle:v28 style:0 handler:v29];
          _Block_release(v29);

          v31 = [objc_opt_self() mainBundle];
          v53._countAndFlagsBits = 0xD00000000000001BLL;
          v53._object = 0x80000001008E0EF0;
          v32._countAndFlagsBits = 0x6C65636E6143;
          v32._object = 0xE600000000000000;
          v33._countAndFlagsBits = 0;
          v33._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v53);

          v34 = swift_allocObject();
          *(v34 + 2) = 0;
          *(v34 + 3) = 0;
          *(v34 + 4) = v44;
          v35 = String._bridgeToObjectiveC()();

          v49 = sub_100420D08;
          v50 = v34;
          aBlock = _NSConcreteStackBlock;
          v46 = 1107296256;
          v47 = sub_10016B4D8;
          v48 = &unk_100A6C838;
          v36 = _Block_copy(&aBlock);

          v37 = [v30 actionWithTitle:v35 style:1 handler:v36];
          _Block_release(v36);

          v38 = v43;
          [v43 addAction:v37];
          v39 = v42;
          [v38 addAction:v42];
          byte_100AE9DE0 = 1;
          [v2 presentViewController:v38 animated:1 completion:0];
        }
      }

      else
      {
      }

      return (*(v6 + 8))(v11, v5);
    }
  }

  return result;
}

uint64_t sub_100033CA8()
{
  v1 = type metadata accessor for TapToRadarUtilities.RadarClassification();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100033D9C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100033DDC()
{
  v2 = *(sub_1000F24EC(&qword_100ADA6A0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100032EC8;

  return sub_100033EC4(v4, v5, v0 + v3);
}

uint64_t sub_100033EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  v4 = sub_1000F24EC(&qword_100ADA6A8);
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  sub_1000F24EC(&qword_100AF6E60);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000356A8, 0, 0);
}

uint64_t sub_100034024(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003406C()
{
  result = qword_100AF11B0;
  if (!qword_100AF11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF11B0);
  }

  return result;
}

uint64_t sub_1000340DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100034130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100034178(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000341C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100034208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100034250(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100034298(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000342E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100034328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SpotlightSearchSession()
{
  result = qword_100AD6700;
  if (!qword_100AD6700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000343BC()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EntryListType();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100034538(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t type metadata accessor for JournalEntryCollectionViewCell()
{
  result = qword_100AEB368;
  if (!qword_100AEB368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100034600()
{
  result = qword_100ADE520;
  if (!qword_100ADE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE520);
  }

  return result;
}

uint64_t sub_100034658@<X0>(uint64_t a1@<X8>)
{
  if (qword_100ACF9D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for EntryListType();
  v3 = sub_10000617C(v2, qword_100AD5C30);

  return sub_100022B50(v3, a1);
}

uint64_t sub_1000346D0(uint64_t a1)
{
  v2 = type metadata accessor for EntryListType();
  __chkstk_darwin(v2 - 8);
  sub_100022B50(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001A6F0();
  dispatch thunk of UIMutableTraits.subscript.setter();
  return sub_100011478(a1);
}

uint64_t sub_100034788()
{
  v0 = type metadata accessor for EntryListType();
  sub_100006118(v0, qword_100AD5C30);
  v1 = sub_10000617C(v0, qword_100AD5C30);
  v2 = sub_1000F24EC(&qword_100AD47A0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 2, 2, v2);
}

uint64_t sub_1000348F0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v37 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OpenSensitiveURLAction.Destination();
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  v5 = __chkstk_darwin(v3);
  v6 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v34 - v7;
  sub_1000065A8(0, &qword_100AD4420);
  if (qword_100AD04A0 != -1)
  {
    swift_once();
  }

  v9 = qword_100AD09F0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_100B30EC8;
  v36 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  if (qword_100AD04D0 != -1)
  {
    swift_once();
  }

  v11 = qword_100AD09F8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_100ACF988;
  v13 = qword_100B30ED0;
  if (v12 != -1)
  {
    swift_once();
  }

  [objc_opt_self() isHealthDataAvailable];
  v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  if (qword_100AD04A8 != -1)
  {
    swift_once();
  }

  v15 = qword_100AD09B8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_100B30E90;
  swift_storeEnumTagMultiPayload();
  sub_10001C850(v8, v6, type metadata accessor for OpenSensitiveURLAction.Destination);
  v17 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v18 = swift_allocObject();
  sub_10001DAC8(v6, v18 + v17, type metadata accessor for OpenSensitiveURLAction.Destination);
  v19 = v16;
  v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_10000D5C8(v8, type metadata accessor for OpenSensitiveURLAction.Destination);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() systemImageNamed:v21];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1000065A8(0, &unk_100AD4D00);
  sub_1000F24EC(&unk_100AD4780);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100941D70;
  v25 = v36;
  *(v24 + 32) = v36;
  *(v24 + 40) = v14;
  *(v24 + 48) = v20;
  v26 = v25;
  v27 = v14;
  v28 = v20;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v38.value.super.isa = 0;
  v38.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, 0, v38, 1, 0xFFFFFFFFFFFFFFFFLL, v24, v33).super.super.isa;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100941D60;
  *(v31 + 32) = v23;
  *(v31 + 40) = isa;

  return v31;
}

uint64_t sub_100034F94()
{
  v1 = *(type metadata accessor for OpenSensitiveURLAction.Destination() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v3 = type metadata accessor for Date();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_10003507C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_1000F24EC(&qword_100ADA698);
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000430C4, 0, 0);
}

uint64_t sub_1000351A4()
{
  v1[459] = v0;
  v1[465] = type metadata accessor for InsightsDataManager.Streaks(0);
  v1[471] = swift_task_alloc();
  v1[472] = swift_task_alloc();
  v1[473] = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  v1[474] = swift_task_alloc();
  v1[475] = swift_task_alloc();
  v1[476] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v1[477] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[478] = v2;
  v1[479] = *(v2 - 8);
  v1[480] = swift_task_alloc();
  v1[481] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[482] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[483] = v4;
  v1[484] = v3;

  return _swift_task_switch(sub_1000AFE70, v4, v3);
}

uint64_t sub_1000353A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = sub_1000F24EC(&qword_100ADA6A8);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for NSManagedObjectContext.ObjectIDNotification();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  sub_1000F24EC(&qword_100ADA6B0);
  v4[10] = swift_task_alloc();
  v4[11] = sub_1000F24EC(&qword_100AD5B80);
  v4[12] = swift_task_alloc();
  v7 = sub_1000F24EC(&qword_100ADA6B8);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_100033538, 0, 0);
}

uint64_t sub_1000355FC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100032EC8;

  return sub_100033450(v2);
}

uint64_t sub_1000356A8()
{
  v1 = [objc_opt_self() defaultCenter];
  type metadata accessor for ProtectedData();
  v2 = static ProtectedData.didBecomeAvailableNotification.getter();
  static ProtectedData.shared.getter();
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v3 = sub_100034024(&qword_100AD5F58, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_100248C84;
  v5 = v0[7];
  v6 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v5, v6, v3);
}

void sub_100035854(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for JournalEntryCollectionViewController(0);
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (v3)
  {
    v4 = v3;
    [v4 contentOffset];
    [v4 contentOffset];
    [v4 setContentOffset:?];
    [v4 contentOffset];
    v6 = v5;

    *&v1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_originY] = v6;
  }
}

uint64_t sub_100035920()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100035994()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD87A8);
  v1 = sub_10000617C(v0, qword_100AD87A8);
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100035A5C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100B301D8);
  sub_10000617C(v0, qword_100B301D8);
  return Logger.init(subsystem:category:)();
}

char *sub_100035ADC(void *a1, int a2, int a3, void *a4)
{
  v5 = v4;
  v174 = a4;
  v175 = a3;
  v156 = a2;
  v172 = *v4;
  v173 = a1;
  v6 = sub_1000F24EC(&qword_100ADFAA0);
  __chkstk_darwin(v6 - 8);
  v151 = &v144 - v7;
  v150 = sub_1000F24EC(&qword_100AF11C0);
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = (&v144 - v8);
  v154 = sub_1000F24EC(&qword_100AF11C8);
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = &v144 - v9;
  v10 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v10 - 8);
  v171 = &v144 - v11;
  v12 = sub_1000F24EC(&qword_100AE2AA0);
  __chkstk_darwin(v12 - 8);
  v162 = &v144 - v13;
  v14 = sub_1000F24EC(&unk_100AD4790);
  v15 = __chkstk_darwin(v14 - 8);
  v170 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v169 = &v144 - v18;
  __chkstk_darwin(v17);
  v158 = &v144 - v19;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v161 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v157 = &v144 - v24;
  v25 = sub_1000F24EC(&qword_100AD1420);
  v26 = __chkstk_darwin(v25 - 8);
  v167 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v144 - v28;
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v145 = &v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v144 - v34;
  *(v4 + 7) = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal14EntryViewModel_cancelable] = 0;
  v36 = OBJC_IVAR____TtC7Journal14EntryViewModel_changeEventPublisher;
  v147 = sub_1000F24EC(&qword_100AF11D0);
  swift_allocObject();
  *&v4[v36] = PassthroughSubject.init()();
  v37 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
  v38 = type metadata accessor for MergeableEntryAttributes();
  v39 = *(*(v38 - 8) + 56);
  v40 = 1;
  v168 = v37;
  v39(&v5[v37], 1, 1, v38);
  v163 = OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText;
  *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText] = 0;
  v160 = OBJC_IVAR____TtC7Journal14EntryViewModel_attributedTitle;
  *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_attributedTitle] = 0;
  *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager] = 0;
  v5[OBJC_IVAR____TtC7Journal14EntryViewModel_textChanged] = 0;
  v159 = OBJC_IVAR____TtC7Journal14EntryViewModel_prompts;
  *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_prompts] = 0;
  v41 = OBJC_IVAR____TtC7Journal14EntryViewModel_dateSource;
  v42 = type metadata accessor for EntryDateSource();
  v43 = *(*(v42 - 8) + 56);
  v155 = v41;
  v43(&v5[v41], 1, 1, v42);
  v44 = *(v31 + 56);
  v164 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleId;
  v176 = v44;
  v177 = v31 + 56;
  v44(&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_bundleId], 1, 1, v30);
  v45 = *(v21 + 56);
  v165 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleDate;
  v45(&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_bundleDate], 1, 1, v20);
  v166 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleEndDate;
  v45(&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_bundleEndDate], 1, 1, v20);
  *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets] = &_swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets] = &_swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssetsAndSlimAsset] = &_swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets] = &_swiftEmptyArrayStorage;
  v46 = &v5[OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset];
  *v46 = 0;
  *(v46 + 1) = 0;
  *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_hiddenAssets] = &_swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset] = 0;
  *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_fullScreenAssets] = &_swiftEmptyArrayStorage;
  v179 = v45;
  v45(&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_originalUpdatedDate], 1, 1, v20);
  UUID.init()();
  v146 = v31;
  v47 = *(v31 + 32);
  v178 = v30;
  v47(&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_uniqueID], v35, v30);
  v48 = v156;
  v5[16] = v156 & 1;
  v49 = v173;
  v50 = [v173 objectID];
  *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_id] = v50;
  v5[40] = v175;
  v51 = v174;
  *(v5 + 3) = v174;
  *(v5 + 4) = v49;
  v174 = v51;
  v173 = v49;
  v52 = [v173 id];
  if (v52)
  {
    v53 = v52;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = 0;
  }

  v176(v29, v40, 1, v178);
  sub_100021CEC(v29, &v5[OBJC_IVAR____TtC7Journal14EntryViewModel_uuid], &qword_100AD1420);
  v54 = [*(v5 + 4) entryDate];
  v55 = v161;
  v56 = v157;
  if (v54)
  {
    v57 = v54;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = *(v21 + 32);
    v59 = v158;
    v58(v158, v55, v20);
    v179(v59, 0, 1, v20);
    v58(v56, v59, v20);
  }

  else
  {
    v60 = v158;
    v179(v158, 1, 1, v20);
    Date.init()();
    if ((*(v21 + 48))(v60, 1, v20) != 1)
    {
      sub_100004F84(v60, &unk_100AD4790);
    }
  }

  v61 = *(v21 + 32);
  v61(&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_date], v56, v20);
  v62 = [*(v5 + 4) dateSource];
  if (v62)
  {
    v63 = v62;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v64 = v162;
  EntryDateSource.init(rawValue:)();
  v65 = v155;
  swift_beginAccess();
  sub_100014318(v64, &v5[v65], &qword_100AE2AA0);
  swift_endAccess();
  v66 = *(v5 + 4);
  JournalEntryMO.displayDate.getter();

  v61(&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_displayDate], v55, v20);
  v67 = [*(v5 + 4) flagged];
  v5[OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked] = v67;
  v68 = [*(v5 + 4) prompt];
  if (v68)
  {
    v69 = v68;
    v70 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    v73 = Data.getAttributedString()();
    sub_1000340DC(v70, v72);
  }

  else
  {
    v73 = 0;
  }

  v74 = v169;
  v75 = *&v5[v159];
  *&v5[v159] = v73;

  v76 = [*(v5 + 4) title];
  if (v76)
  {
    v77 = v76;
    v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    v81 = Data.getAttributedString()();
    sub_1000340DC(v78, v80);
  }

  else
  {
    v81 = 0;
  }

  v82 = *&v5[v160];
  *&v5[v160] = v81;

  v83 = [*(v5 + 4) text];
  if (v83)
  {
    v84 = v83;
    v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    v88 = Data.getAttributedString()();
    sub_1000340DC(v85, v87);
  }

  else
  {
    v88 = 0;
  }

  v89 = v170;
  v90 = v167;
  v91 = *&v5[v163];
  *&v5[v163] = v88;

  v92 = [*(v5 + 4) showTitle];
  v5[OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle] = v92;
  v93 = [*(v5 + 4) bundleId];
  if (v93)
  {
    v94 = v93;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v95 = 0;
  }

  else
  {
    v95 = 1;
  }

  v96 = 1;
  v176(v90, v95, 1, v178);
  v97 = v164;
  swift_beginAccess();
  sub_100014318(v90, &v5[v97], &qword_100AD1420);
  swift_endAccess();
  v98 = [*(v5 + 4) bundleDate];
  if (v98)
  {
    v99 = v98;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v96 = 0;
  }

  v100 = 1;
  v179(v74, v96, 1, v20);
  v101 = v165;
  swift_beginAccess();
  sub_100014318(v74, &v5[v101], &unk_100AD4790);
  swift_endAccess();
  v102 = [*(v5 + 4) bundleEndDate];
  if (v102)
  {
    v103 = v102;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v100 = 0;
  }

  v179(v89, v100, 1, v20);
  v104 = v166;
  swift_beginAccess();
  sub_100014318(v89, &v5[v104], &unk_100AD4790);
  swift_endAccess();
  v105 = *(v5 + 4);
  v106 = v171;
  sub_1000467FC(v105, v171);

  v107 = v168;
  swift_beginAccess();
  sub_100014318(v106, &v5[v107], &qword_100AD6260);
  swift_endAccess();
  v108 = [*(v5 + 4) showPhotoMemoryBanner];
  v5[OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner] = v108;
  v109 = [*(v5 + 4) flagged];
  v5[OBJC_IVAR____TtC7Journal14EntryViewModel_originalBookmarkFromEntryMO] = v109;
  sub_10003A464();
  if (v48)
  {
    if (v175)
    {
      [*(v5 + 4) setIsDraft:1];
    }

    v110 = [*(v5 + 4) id];
    if (v110)
    {
      v111 = v145;
      v112 = v110;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v113 = UUID.uuidString.getter();
      sub_10012491C(v113, v114);

      (*(v146 + 8))(v111, v178);
    }

    else
    {
      if (qword_100AD0A68 != -1)
      {
        swift_once();
      }

      v115 = type metadata accessor for Logger();
      sub_10000617C(v115, qword_100AF0BF0);

      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v180 = v119;
        *v118 = 136315138;
        v120 = [*(v5 + 4) debugDescription];
        v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v123 = v122;

        v124 = sub_100008458(v121, v123, &v180);

        *(v118 + 4) = v124;
        _os_log_impl(&_mh_execute_header, v116, v117, "Error getting entry id for in-progress register %s", v118, 0xCu);
        sub_10000BA7C(v119);
      }
    }

    v125 = [objc_opt_self() defaultCenter];
    [v125 addObserver:v5 selector:"contextObjectsDidChangeWithNotification:" name:NSManagedObjectContextObjectsDidChangeNotification object:*(v5 + 3)];

    v180 = *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_changeEventPublisher];
    sub_1000F24EC(&qword_100AF11D8);
    sub_1000065A8(0, &qword_100AD6210);

    v126 = static OS_dispatch_queue.main.getter();
    v127 = v148;
    *v148 = v126;
    static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
    v128 = v149;
    v129 = v150;
    (*(v149 + 104))(v127, enum case for Publishers.TimeGroupingStrategy.byTime<A>(_:), v150);
    v130 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v131 = v151;
    (*(*(v130 - 8) + 56))(v151, 1, 1, v130);
    sub_10000B58C(&qword_100AF11E0, &qword_100AF11D0);
    sub_10006DAB0(&qword_100ADFAB8, &qword_100AD6210);
    v132 = v152;
    Publisher.collect<A>(_:options:)();
    sub_100004F84(v131, &qword_100ADFAA0);
    (*(v128 + 8))(v127, v129);

    swift_allocObject();
    swift_weakInit();
    sub_10000B58C(&qword_100AF11E8, &qword_100AF11C8);

    v133 = v154;
    v134 = Publisher<>.sink(receiveValue:)();

    (*(v153 + 8))(v132, v133);
    *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_cancelable] = v134;

    v135 = [objc_allocWithZone(type metadata accessor for EntryUndoManager()) init];

    v136 = OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager;
    v137 = *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager];
    *&v5[OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager] = v135;

    v138 = *&v5[v136];
    if (v138)
    {
      v139 = swift_allocObject();
      swift_weakInit();
      v140 = v138;

      v141 = &v140[OBJC_IVAR____TtC7Journal16EntryUndoManager_didUndoOrRedo];
      v142 = *&v140[OBJC_IVAR____TtC7Journal16EntryUndoManager_didUndoOrRedo];
      *v141 = sub_100786470;
      v141[1] = v139;

      sub_100004DF8(v142);
    }
  }

  else
  {
  }

  return v5;
}

uint64_t sub_100036E80()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100036EC8()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v154 = *(v0 - 8);
  v155 = v0;
  __chkstk_darwin(v0);
  v153 = &v132 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v152 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v150 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v6 - 8);
  v151 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppShortcutPhraseToken();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100ADF5B8);
  v13 = __chkstk_darwin(v12);
  v147 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v145 = &v132 - v16;
  v17 = __chkstk_darwin(v15);
  v143 = &v132 - v18;
  v19 = __chkstk_darwin(v17);
  v142 = &v132 - v20;
  v21 = __chkstk_darwin(v19);
  v141 = &v132 - v22;
  v23 = __chkstk_darwin(v21);
  v140 = &v132 - v24;
  v25 = __chkstk_darwin(v23);
  v139 = &v132 - v26;
  v27 = __chkstk_darwin(v25);
  v138 = &v132 - v28;
  v29 = __chkstk_darwin(v27);
  v137 = &v132 - v30;
  v31 = __chkstk_darwin(v29);
  v136 = &v132 - v32;
  v33 = __chkstk_darwin(v31);
  v135 = &v132 - v34;
  v35 = __chkstk_darwin(v33);
  v134 = &v132 - v36;
  v37 = __chkstk_darwin(v35);
  v133 = &v132 - v38;
  v39 = __chkstk_darwin(v37);
  v132 = &v132 - v40;
  __chkstk_darwin(v39);
  v149 = type metadata accessor for AppShortcut();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v146 = &v132 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004C238(&v165);
  sub_1000F24EC(&qword_100ADF5C0);
  v42 = *(sub_1000F24EC(&qword_100ADF5C8) - 8);
  v162 = *(v42 + 72);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = swift_allocObject();
  v144 = v44;
  *(v44 + 16) = xmmword_100950C50;
  v45 = v44 + v43;
  v46 = sub_100054264();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v47._object = 0x80000001008EC350;
  v47._countAndFlagsBits = 0xD00000000000001DLL;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v47);
  v164 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v49 = v9 + 104;
  v48 = *(v9 + 104);
  v163 = v8;
  v48(v11);
  v158 = v48;
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v51 = v9 + 8;
  v50 = *(v9 + 8);
  v50(v11, v8);
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v52);
  v161 = v45;
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v53._countAndFlagsBits = 0xD000000000000020;
  v53._object = 0x80000001008EC370;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v53);
  v54 = v163;
  (v48)(v11, v164, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v159 = v50;
  v50(v11, v54);
  v156 = v51;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v55);
  v56 = v162;
  v157 = v46;
  AppShortcutPhrase.init(stringInterpolation:)();
  v132 = (2 * v56);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v57._countAndFlagsBits = 0x2061206574697257;
  v57._object = 0xEC0000002077656ELL;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v57);
  v58 = v164;
  v59 = v163;
  v160 = v49;
  v60 = v158;
  (v158)(v11, v164, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v50(v11, v59);
  v61._countAndFlagsBits = 0x7972746E6520;
  v61._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v61);
  v62 = v132;
  AppShortcutPhrase.init(stringInterpolation:)();
  v63 = v162;
  v133 = &v62[v162];
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v64._countAndFlagsBits = 0x6120657461657243;
  v64._object = 0xEF206B6E616C6220;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v64);
  v65 = v163;
  v60(v11, v58, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v159(v11, v65);
  v66._countAndFlagsBits = 0x7972746E6520;
  v66._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v66);
  AppShortcutPhrase.init(stringInterpolation:)();
  v67 = 4 * v63;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v68._object = 0x80000001008EC3A0;
  v68._countAndFlagsBits = 0xD00000000000001DLL;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v68);
  v69 = v164;
  v70 = v163;
  (v158)(v11, v164, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v71 = v70;
  v72 = v159;
  v159(v11, v70);
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v73);
  v74 = v161;
  AppShortcutPhrase.init(stringInterpolation:)();
  v135 = (v67 + v162);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v75._countAndFlagsBits = 0x2061207472617453;
  v75._object = 0xEC0000002077656ELL;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v75);
  v76 = v69;
  v77 = v158;
  (v158)(v11, v76, v71);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v72(v11, v71);
  v78._countAndFlagsBits = 0x7972746E6520;
  v78._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v78);
  AppShortcutPhrase.init(stringInterpolation:)();
  v79 = v162;
  v136 = v74 + 6 * v162;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v80._object = 0x80000001008EC3C0;
  v80._countAndFlagsBits = 0xD00000000000001DLL;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v80);
  v81 = v163;
  (v77)(v11, v164, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v82 = v81;
  v83 = v81;
  v84 = v159;
  v159(v11, v82);
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v85);
  AppShortcutPhrase.init(stringInterpolation:)();
  v137 = (8 * v79);
  v136 = 7 * v79;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v86._countAndFlagsBits = 0x2061206E69676542;
  v86._object = 0xEC0000002077656ELL;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v86);
  v87 = v164;
  v88 = v158;
  (v158)(v11, v164, v83);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v84(v11, v83);
  v89._countAndFlagsBits = 0x7972746E6520;
  v89._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v89);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v90._countAndFlagsBits = 0x6E69206574697257;
  v90._object = 0xE900000000000020;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v90);
  v91 = v87;
  v92 = v163;
  v88(v11, v91, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v93 = v92;
  v94 = v159;
  v159(v11, v93);
  v95._countAndFlagsBits = 0;
  v95._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v95);
  v96 = v137;
  AppShortcutPhrase.init(stringInterpolation:)();
  v97 = v162;
  v139 = &v96[v162];
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v98._object = 0xEC00000020796D20;
  v98._countAndFlagsBits = 0x6E69206574697257;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v98);
  v99 = v164;
  v100 = v163;
  v88(v11, v164, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v94(v11, v100);
  v101._countAndFlagsBits = 0;
  v101._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v101);
  v102 = v161;
  AppShortcutPhrase.init(stringInterpolation:)();
  v103 = v97;
  v140 = (v102 + 10 * v97);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v104._countAndFlagsBits = 0xD00000000000001BLL;
  v104._object = 0x80000001008EC3E0;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v104);
  v105 = v158;
  (v158)(v11, v99, v100);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v106 = v11;
  v107 = v159;
  v159(v11, v100);
  v108._countAndFlagsBits = 0;
  v108._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v108);
  AppShortcutPhrase.init(stringInterpolation:)();
  v109 = v161;
  v140 = (v161 + 11 * v103);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v110._countAndFlagsBits = 0xD000000000000018;
  v141 = 0xD000000000000018;
  v110._object = 0x80000001008EC400;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v110);
  v111 = v163;
  (v105)(v11, v164, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v107(v11, v111);
  v112._countAndFlagsBits = 0;
  v112._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v112);
  AppShortcutPhrase.init(stringInterpolation:)();
  v142 = (v109 + 12 * v162);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v113._countAndFlagsBits = 0xD000000000000015;
  v113._object = 0x80000001008EC420;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v113);
  v114 = v164;
  v115 = v111;
  v116 = v111;
  v117 = v158;
  (v158)(v106, v164, v116);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v118 = v115;
  v119 = v159;
  v159(v106, v118);
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v120);
  AppShortcutPhrase.init(stringInterpolation:)();
  v143 = (v161 + 13 * v162);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v121._object = 0x80000001008EC440;
  v121._countAndFlagsBits = v141;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v121);
  v122 = v114;
  v123 = v163;
  v117(v106, v122, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v119(v106, v123);
  v124._countAndFlagsBits = 0;
  v124._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v124);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v125._countAndFlagsBits = 0xD000000000000014;
  v125._object = 0x80000001008EC460;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v125);
  (v158)(v106, v164, v123);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v159(v106, v123);
  v126._countAndFlagsBits = 0;
  v126._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v126);
  AppShortcutPhrase.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v154 + 104))(v153, enum case for LocalizedStringResource.BundleDescription.main(_:), v155);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v127 = v146;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v128 = static AppShortcutsBuilder.buildExpression(_:)();
  (*(v148 + 8))(v127, v149);
  sub_1000F24EC(&qword_100ADF5D8);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_100940080;
  *(v129 + 32) = v128;
  v130 = static AppShortcutsBuilder.buildBlock(_:)();

  return v130;
}

uint64_t sub_100038244()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_100038534(v0 + 48);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, &qword_100AD1420);

  v2 = OBJC_IVAR____TtC7Journal14EntryViewModel_uniqueID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes, &qword_100AD6260);

  v4 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal14EntryViewModel_dateSource, &qword_100AE2AA0);
  v6(v0 + OBJC_IVAR____TtC7Journal14EntryViewModel_displayDate, v5);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal14EntryViewModel_bundleId, &qword_100AD1420);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal14EntryViewModel_bundleDate, &unk_100AD4790);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal14EntryViewModel_bundleEndDate, &unk_100AD4790);

  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal14EntryViewModel_originalUpdatedDate, &unk_100AD4790);
  return v0;
}

uint64_t sub_10003855C()
{
  sub_100038244();

  return swift_deallocClassInstance();
}

id sub_1000385DC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC7Journal5Asset_thumbnailCacheKey + 8];
  if (v5)
  {
    v6 = *&v0[OBJC_IVAR____TtC7Journal5Asset_thumbnailCacheKey];

    sub_1007CE83C(v6, v5, 0);
  }

  (*(v2 + 16))(v4, &v0[OBJC_IVAR____TtC7Journal5Asset_id], v1);
  ObjectType = swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = sub_1000387D4(ObjectType, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *&v0[OBJC_IVAR____TtC7Journal5Asset_attachmentIdsMissingFile];

  sub_10003881C(1, v4, v9, v10);

  (*(v2 + 8))(v4, v1);
  v11 = [objc_opt_self() defaultCenter];
  [v11 removeObserver:v0];

  v12 = type metadata accessor for Asset();
  v14.receiver = v0;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "dealloc");
}

BOOL sub_1000387D4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  if (v2)
  {
  }

  return v2 == 0;
}

uint64_t sub_10003881C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v60 = a4;
  LOBYTE(v5) = a1;
  v6 = type metadata accessor for UUID();
  v59 = *(v6 - 1);
  __chkstk_darwin(v6);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
  if ((a3 & 1) == 0)
  {
    v57 = 0x80000001008F7160;
    v56 = v5 & 1;
    goto LABEL_5;
  }

  v9 = [objc_opt_self() defaultCenter];
  if (qword_100AD0080 == -1)
  {
    goto LABEL_3;
  }

  while (1)
  {
    swift_once();
LABEL_3:
    v10 = qword_100B2FC90;
    sub_1000F24EC(&qword_100AD5808);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100942000;
    strcpy(&v63, "downloadIDKey");
    HIWORD(v63) = -4864;
    AnyHashable.init<A>(_:)();
    v12 = UUID.uuidString.getter();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v12;
    *(inited + 80) = v13;
    *&v63 = 0xD000000000000013;
    *(&v63 + 1) = 0x80000001008F7160;
    v57 = 0x80000001008F7160;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &_s16DownloadPriorityON;
    v56 = v5 & 1;
    *(inited + 144) = v5 & 1;
    *&v63 = 0x64616F6C6E776F64;
    *(&v63 + 1) = 0xEF79654B65707954;
    AnyHashable.init<A>(_:)();
    *(inited + 240) = &_s12DownloadTypeON;
    *(inited + 216) = 1;
    sub_1003630D0(inited);
    swift_setDeallocating();
    sub_1000F24EC(&unk_100AD5810);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 postNotificationName:v10 object:0 userInfo:isa];

    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
LABEL_5:
    v15 = v60 + 56;
    v16 = 1 << *(v60 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v9 = v17 & *(v60 + 56);
    v18 = (v16 + 63) >> 6;
    v54 = (v59 + 8);
    v55 = v59 + 16;

    v19 = 0;
    v5 = v58;
    v52 = v15;
    v53 = v18;
    v51 = v6;
    if (!v9)
    {
      break;
    }

    while (1)
    {
      v20 = v19;
LABEL_12:
      (*(v59 + 16))(v5, *(v60 + 48) + *(v59 + 72) * (__clz(__rbit64(v9)) | (v20 << 6)), v6);
      v62 = [objc_opt_self() p_ivar_lyt[362]];
      if (qword_100AD0080 != -1)
      {
        swift_once();
      }

      v61 = qword_100B2FC90;
      strcpy(&v63, "downloadIDKey");
      HIWORD(v63) = -4864;
      AnyHashable.init<A>(_:)();
      v21 = UUID.uuidString.getter();
      v23 = v22;
      (*v54)(v5, v6);
      v68[8] = &type metadata for String;
      v68[5] = v21;
      v68[6] = v23;
      *&v63 = 0xD000000000000013;
      *(&v63 + 1) = v57;
      AnyHashable.init<A>(_:)();
      v70 = &_s16DownloadPriorityON;
      v69[40] = v56;
      *&v63 = 0x64616F6C6E776F64;
      v5 = &v67;
      *(&v63 + 1) = 0xEF79654B65707954;
      AnyHashable.init<A>(_:)();
      v72 = &_s12DownloadTypeON;
      v71[40] = 0;
      sub_1000F24EC(&qword_100AD8788);
      v24 = static _DictionaryStorage.allocate(capacity:)();
      sub_1007708E8(v68, &v63);
      v25 = sub_100361EDC(&v63);
      v6 = &v63;
      if (v26)
      {
        break;
      }

      v27 = v24 + 8;
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v25;
      v28 = v24[6] + 40 * v25;
      v29 = v63;
      v30 = v64;
      *(v28 + 32) = v65;
      *v28 = v29;
      *(v28 + 16) = v30;
      sub_10002432C(v66, (v24[7] + 32 * v25));
      v31 = v24[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v24[2] = v33;
      sub_1007708E8(v69, &v63);
      v34 = sub_100361EDC(&v63);
      if (v35)
      {
        break;
      }

      *(v27 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v36 = v24[6] + 40 * v34;
      v37 = v63;
      v38 = v64;
      *(v36 + 32) = v65;
      *v36 = v37;
      *(v36 + 16) = v38;
      sub_10002432C(v66, (v24[7] + 32 * v34));
      v39 = v24[2];
      v32 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v24[2] = v40;
      sub_1007708E8(v71, &v63);
      v41 = sub_100361EDC(&v63);
      if (v42)
      {
        break;
      }

      *(v27 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v43 = v24[6] + 40 * v41;
      v44 = v63;
      v45 = v64;
      *(v43 + 32) = v65;
      *v43 = v44;
      *(v43 + 16) = v45;
      sub_10002432C(v66, (v24[7] + 32 * v41));
      v46 = v24[2];
      v32 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v9 &= v9 - 1;
      v24[2] = v47;
      sub_1000F24EC(&unk_100AD5810);
      swift_arrayDestroy();
      v48 = Dictionary._bridgeToObjectiveC()().super.isa;

      v49 = v62;
      [v62 postNotificationName:v61 object:0 userInfo:v48];

      v19 = v20;
      v6 = v51;
      v15 = v52;
      v5 = v58;
      p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
      v18 = v53;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  while (1)
  {
LABEL_9:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v20 >= v18)
    {
    }

    v9 = *(v15 + 8 * v20);
    ++v19;
    if (v9)
    {
      goto LABEL_12;
    }
  }
}

uint64_t type metadata accessor for Asset()
{
  result = qword_100ADB6E8;
  if (!qword_100ADB6E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PhotoAsset()
{
  result = qword_100AE5620;
  if (!qword_100AE5620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100038FE8(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v115 = &v95 - v5;
  v6 = sub_1000F24EC(&unk_100AEED30);
  __chkstk_darwin(v6 - 8);
  v112 = &v95 - v7;
  v8 = type metadata accessor for AssetSource();
  v113 = *(v8 - 8);
  v114 = v8;
  __chkstk_darwin(v8);
  v110 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AE4290);
  __chkstk_darwin(v10 - 8);
  v101 = &v95 - v11;
  v102 = type metadata accessor for AssetType();
  v98 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&qword_100AD1420);
  v14 = __chkstk_darwin(v13 - 8);
  v111 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v96 = &v95 - v17;
  __chkstk_darwin(v16);
  v19 = &v95 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v97 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC7Journal5Asset_sourceAttachments] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7Journal5Asset_attachments] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7Journal5Asset_attachmentIdsMissingFile] = &_swiftEmptySetSingleton;
  v23 = OBJC_IVAR____TtC7Journal5Asset_context;
  *&v1[OBJC_IVAR____TtC7Journal5Asset_context] = 0;
  v24 = OBJC_IVAR____TtC7Journal5Asset_assetMO;
  *&v1[OBJC_IVAR____TtC7Journal5Asset_assetMO] = 0;
  v99 = OBJC_IVAR____TtC7Journal5Asset_title;
  *&v1[OBJC_IVAR____TtC7Journal5Asset_title] = 0;
  v25 = *(v21 + 56);
  v104 = OBJC_IVAR____TtC7Journal5Asset_suggestionId;
  v25(&v1[OBJC_IVAR____TtC7Journal5Asset_suggestionId], 1, 1, v20);
  v26 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v108 = v27;
  v109 = v26;
  v106 = v28 + 56;
  v107 = v29;
  (v29)(&v2[v26], 1, 1);
  v30 = &v2[OBJC_IVAR____TtC7Journal5Asset_attachmentsDirectoryPath];
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC7Journal5Asset_attachmentsDirectoryURL;
  v32 = type metadata accessor for URL();
  (*(*(v32 - 8) + 56))(&v2[v31], 1, 1, v32);
  v33 = &v2[OBJC_IVAR____TtC7Journal5Asset_thumbnailCacheKey];
  *v33 = 0;
  v33[1] = 0;
  v105 = OBJC_IVAR____TtC7Journal5Asset_isHidden;
  v2[OBJC_IVAR____TtC7Journal5Asset_isHidden] = 0;
  v34 = OBJC_IVAR____TtC7Journal5Asset_delegates;
  *&v2[v34] = [objc_opt_self() weakObjectsHashTable];
  v35 = &v2[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
  *v35 = 0;
  v35[1] = 0;
  v36 = &v2[OBJC_IVAR____TtC7Journal5Asset_didUpdateMediaFile];
  *v36 = 0;
  v36[1] = 0;
  v37 = [a1 managedObjectContext];
  v38 = *&v2[v23];
  *&v2[v23] = v37;

  v39 = *&v2[v24];
  *&v2[v24] = a1;
  v40 = a1;

  v41 = *&v2[v24];
  v116 = v21 + 56;
  if (v41)
  {
    v95 = v19;
    v42 = [v41 id];
    v43 = v40;
    if (v42)
    {
      v44 = v96;
      v45 = v42;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = 0;
      v47 = v98;
      v48 = v97;
    }

    else
    {
      v46 = 1;
      v47 = v98;
      v48 = v97;
      v44 = v96;
    }

    v49 = v25;
    v25(v44, v46, 1, v20);
    v50 = v95;
    sub_100021CEC(v44, v95, &qword_100AD1420);
    v40 = v43;
    v19 = v50;
    if ((*(v21 + 48))(v50, 1, v20) != 1)
    {
      (*(v21 + 32))(v48, v50, v20);
      v52 = v113;
      goto LABEL_10;
    }
  }

  else
  {
    v25(v19, 1, 1, v20);
    v49 = v25;
    v47 = v98;
    v48 = v97;
  }

  UUID.init()();
  v51 = (*(v21 + 48))(v19, 1, v20);
  v52 = v113;
  if (v51 != 1)
  {
    sub_100004F84(v19, &qword_100AD1420);
  }

LABEL_10:
  v103 = v49;
  v53 = *(v21 + 32);
  v113 = v20;
  v53(&v2[OBJC_IVAR____TtC7Journal5Asset_id], v48, v20);
  v54 = *&v2[v24];
  if (v54)
  {
    v55 = v54;
    v56 = v101;
    JournalEntryAssetMO.type.getter();

    v57 = v102;
    v58 = (*(v47 + 48))(v56, 1, v102);
    v59 = v112;
    v60 = v110;
    v61 = v100;
    if (v58 != 1)
    {
      (*(v47 + 32))(v100, v56, v57);
      goto LABEL_16;
    }
  }

  else
  {
    v56 = v101;
    v57 = v102;
    (*(v47 + 56))(v101, 1, 1, v102);
    v59 = v112;
    v60 = v110;
    v61 = v100;
  }

  (*(v47 + 104))(v61, enum case for AssetType.unknown(_:), v57);
  if ((*(v47 + 48))(v56, 1, v57) != 1)
  {
    sub_100004F84(v56, &qword_100AE4290);
  }

LABEL_16:
  (*(v47 + 32))(&v2[OBJC_IVAR____TtC7Journal5Asset_type], v61, v57);
  v62 = *&v2[v24];
  if (v62 && (v63 = [v62 title]) != 0)
  {
    v64 = v63;
    v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    v68 = Data.getAttributedString()();
    sub_1000340DC(v65, v67);
  }

  else
  {
    v68 = 0;
  }

  v69 = *&v2[v99];
  *&v2[v99] = v68;

  v70 = *&v2[v24];
  if (v70)
  {
    v71 = [v70 source];
    v72 = v114;
    if (v71)
    {
      v73 = v71;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  else
  {
    v72 = v114;
  }

  AssetSource.init(rawValue:)();
  v74 = *(v52 + 48);
  if (v74(v59, 1, v72) == 1)
  {
    (*(v52 + 104))(v60, enum case for AssetSource.unknown(_:), v72);
    v75 = v74(v59, 1, v72);
    v76 = v115;
    if (v75 != 1)
    {
      sub_100004F84(v59, &unk_100AEED30);
    }
  }

  else
  {
    (*(v52 + 32))(v60, v59, v72);
    v76 = v115;
  }

  (*(v52 + 32))(&v2[OBJC_IVAR____TtC7Journal5Asset_source], v60, v72);
  v77 = [v40 suggestionId];
  if (v77)
  {
    v78 = v111;
    v79 = v77;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = 0;
  }

  else
  {
    v80 = 1;
    v78 = v111;
  }

  v81 = 1;
  v103(v78, v80, 1, v113);
  v82 = v104;
  swift_beginAccess();
  sub_100014318(v78, &v2[v82], &qword_100AD1420);
  swift_endAccess();
  v83 = [v40 suggestionDate];
  if (v83)
  {
    v84 = v83;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v81 = 0;
  }

  v107(v76, v81, 1, v108);
  v85 = v109;
  swift_beginAccess();
  sub_100014318(v76, &v2[v85], &unk_100AD4790);
  swift_endAccess();
  v86 = [v40 isHidden];
  v2[v105] = v86;
  v87 = type metadata accessor for Asset();
  v117.receiver = v2;
  v117.super_class = v87;
  v88 = objc_msgSendSuper2(&v117, "init");
  sub_100059FA4();
  v89 = objc_opt_self();
  v90 = [v89 defaultCenter];
  if (qword_100ACFFA8 != -1)
  {
    swift_once();
  }

  [v90 addObserver:v88 selector:? name:? object:?];

  v91 = [v89 defaultCenter];
  v92 = qword_100ACFFB8;
  v93 = v88;
  if (v92 != -1)
  {
    swift_once();
  }

  [v91 addObserver:v93 selector:"mediaFileUpdatedNotificationWithNotification:" name:qword_100B2FBA8 object:0];

  return v93;
}

uint64_t type metadata accessor for LivePhotoAsset()
{
  result = qword_100AD32B8;
  if (!qword_100AD32B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for VideoAsset()
{
  result = qword_100AD93D8;
  if (!qword_100AD93D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100039CE0()
{
  v1 = sub_1000F24EC(&qword_100AE4290);
  __chkstk_darwin(v1);
  v3 = &v14 - v2;
  JournalEntryAssetMO.type.getter();
  v4 = type metadata accessor for AssetType();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    goto LABEL_2;
  }

  v7 = (*(v5 + 88))(v3, v4);
  if (v7 == enum case for AssetType.photo(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for PhotoAsset());
    v9 = &OBJC_IVAR____TtC7Journal10PhotoAsset_metadata;
LABEL_6:
    v10 = *v9;
LABEL_9:
    *&v8[v10] = 0;
    return sub_100038FE8(v0);
  }

  if (v7 == enum case for AssetType.livePhoto(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for LivePhotoAsset());
    *&v8[OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata] = 0;
    v11 = &v8[OBJC_IVAR____TtC7Journal14LivePhotoAsset_pendingLivePhotoRequest];
    *v11 = 0;
    v11[4] = 1;
    v10 = OBJC_IVAR____TtC7Journal14LivePhotoAsset_livePhotoAttachments;
    goto LABEL_9;
  }

  if (v7 == enum case for AssetType.video(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for VideoAsset());
    v9 = &OBJC_IVAR____TtC7Journal10VideoAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.music(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for MusicAsset());
    v9 = &OBJC_IVAR____TtC7Journal10MusicAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.podcast(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for PodcastAsset());
    v9 = &OBJC_IVAR____TtC7Journal12PodcastAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.book(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for BookAsset());
    v9 = &OBJC_IVAR____TtC7Journal9BookAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.audio(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for AudioAsset());
    v9 = &OBJC_IVAR____TtC7Journal10AudioAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.visit(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for VisitAsset());
    v9 = &OBJC_IVAR____TtC7Journal10VisitAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.multiPinMap(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for MultiPinMapAsset());
    v9 = &OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.genericMap(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for GenericMapAsset());
    v9 = &OBJC_IVAR____TtC7Journal15GenericMapAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.link(_:))
  {
    v13 = objc_allocWithZone(type metadata accessor for LinkAsset());
    *&v13[OBJC_IVAR____TtC7Journal9LinkAsset_metadata] = 0;
    v13[OBJC_IVAR____TtC7Journal9LinkAsset_contentType] = 6;
    return sub_100038FE8(v0);
  }

  if (v7 == enum case for AssetType.contact(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for ContactAsset());
    v9 = &OBJC_IVAR____TtC7Journal12ContactAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.workoutIcon(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for WorkoutIconAsset());
    v9 = &OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.workoutRoute(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for WorkoutRouteAsset());
    v9 = &OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.reflection(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for ReflectionAsset());
    v9 = &OBJC_IVAR____TtC7Journal15ReflectionAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.stateOfMind(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for StateOfMindAsset());
    v9 = &OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.motionActivity(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for MotionActivityAsset());
    v9 = &OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.thirdPartyMedia(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for ThirdPartyMediaAsset());
    v9 = &OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.placeholder(_:))
  {
    v6 = type metadata accessor for PlaceholderAsset();
    goto LABEL_3;
  }

  if (v7 == enum case for AssetType.streakEvent(_:))
  {
    goto LABEL_2;
  }

  if (v7 == enum case for AssetType.drawing(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for DrawingAsset());
    v9 = &OBJC_IVAR____TtC7Journal12DrawingAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.confetti(_:))
  {
    v8 = objc_allocWithZone(type metadata accessor for ConfettiAsset());
    v9 = &OBJC_IVAR____TtC7Journal13ConfettiAsset_metadata;
    goto LABEL_6;
  }

  if (v7 == enum case for AssetType.unknown(_:))
  {
LABEL_2:
    v6 = type metadata accessor for UnknownAsset();
LABEL_3:
    objc_allocWithZone(v6);
    return sub_100038FE8(v0);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10003A264(uint64_t a1, uint64_t a2)
{
  v5 = (*((swift_isaMask & *v2) + 0x140))();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 assetMetaData];

    if (v7)
    {
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xF000000000000000;
    }

    v16 = v9;
    v17 = v11;
    __chkstk_darwin(v8);
    v15[2] = a1;
    v15[3] = a2;
    sub_1000F24EC(&qword_100AD64D8);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v12 = _s8MetadataCMa();
    sub_100049C30(sub_100052F34, v15, &type metadata for Never, v12, v13, &v18);
    sub_10003A5C8(v16, v17);
    v5 = v18;
  }

  return (*(a2 + 40))(v5, a1, a2);
}

uint64_t sub_10003A464()
{
  v1 = v0;
  v2 = JournalEntryMO.assetsArray.getter();
  v3 = v2;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

    v9 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
    swift_beginAccess();
    *(v1 + v9) = &_swiftEmptyArrayStorage;

    return sub_10003A5DC();
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      sub_100039CE0();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v4 != v6);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003A5C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000340DC(a1, a2);
  }

  return a1;
}

uint64_t sub_10003A5DC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AE94C8);
  __chkstk_darwin(v2 - 8);
  v115 = &v94[-v3];
  v4 = type metadata accessor for AssetPlacement();
  v119 = *(v4 - 8);
  v120 = v4;
  v5 = __chkstk_darwin(v4);
  v114 = &v94[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v118 = &v94[-v8];
  v9 = __chkstk_darwin(v7);
  v113 = &v94[-v10];
  __chkstk_darwin(v9);
  v121 = &v94[-v11];
  v12 = type metadata accessor for MergeableEntryAttributes();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v94[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v16 - 8);
  v18 = &v94[-v17];
  v108 = type metadata accessor for MergeableEntryAssetsPlacement();
  v107 = *(v108 - 1);
  v19 = __chkstk_darwin(v108);
  v21 = &v94[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v116 = &v94[-v22];
  v23 = type metadata accessor for JournalFeatureFlags();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v94[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = &_swiftEmptyArrayStorage;
  v128 = &_swiftEmptyArrayStorage;
  v125 = 0;
  v126 = &_swiftEmptyArrayStorage;
  v124 = 0;
  (*(v24 + 104))(v26, enum case for JournalFeatureFlags.enhancedSync(_:), v23);
  v27 = JournalFeatureFlags.isEnabled.getter();
  v29 = *(v24 + 8);
  v28 = v24 + 8;
  v29(v26, v23);
  if (v27)
  {
    v30 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_1000082B4(v1 + v30, v18, &qword_100AD6260);
    if (!(*(v13 + 48))(v18, 1, v12))
    {
      (*(v13 + 16))(v15, v18, v12);
      sub_100004F84(v18, &qword_100AD6260);
      MergeableEntryAttributes.assetPlacement.getter();
      (*(v13 + 8))(v15, v12);
      (*(v107 + 32))(v116, v21, v108);
      v62 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
      swift_beginAccess();
      v109 = v1;
      v33 = *(v1 + v62);
      if (v33 >> 62)
      {
        v63 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v63 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = v115;
      if (v63)
      {
        v64 = v33 & 0xC000000000000001;
        v118 = (v33 & 0xFFFFFFFFFFFFFF8);
        v104 = v119 + 48;
        v99 = (v119 + 32);
        LODWORD(v114) = enum case for AssetPlacement.grid(_:);
        v98 = v119 + 104;
        v103 = v119 + 16;
        v102 = v119 + 88;
        v97 = enum case for AssetPlacement.canvas(_:);
        v96 = enum case for AssetPlacement.hidden(_:);
        v95 = enum case for AssetPlacement.slim(_:);
        v100 = (v119 + 8);

        v65 = 0;
        v36 = 0;
        v119 = 0;
        v111 = 0;
        v37 = &_swiftEmptyArrayStorage;
        v112 = &_swiftEmptyArrayStorage;
        v110 = &_swiftEmptyArrayStorage;
        v105 = v33;
        v101 = v63;
        do
        {
          if (v64)
          {
            v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v65 >= *(v118 + 2))
            {
              goto LABEL_91;
            }

            v66 = *(v33 + 8 * v65 + 32);
          }

          v67 = v66;
          v28 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            goto LABEL_90;
          }

          type metadata accessor for ReflectionAsset();
          if (swift_dynamicCastClass() || (v67[OBJC_IVAR____TtC7Journal5Asset_isHidden] & 1) != 0)
          {
          }

          else
          {
            v106 = v37;
            v68 = v64;
            v69 = v31;
            MergeableEntryAssetsPlacement.assetPlacement(forAssetID:)();
            v70 = *v104;
            v71 = v120;
            if ((*v104)(v31, 1, v120) == 1)
            {
              v72 = static AssetPlacement.maxGridCount.getter();
              v73 = v121;
              *v121 = v72;
              (*v98)(v73, v114, v71);
              if (v70(v69, 1, v71) != 1)
              {
                sub_100004F84(v69, &qword_100AE94C8);
              }
            }

            else
            {
              v73 = v121;
              (*v99)(v121, v69, v71);
            }

            v74 = v113;
            (*v103)(v113, v73, v71);
            v75 = (*v102)(v74, v71);
            v64 = v68;
            if (v75 == v114)
            {
              v76 = v67;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v63 = v101;
              if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v117 = v36;
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v36 = v117;
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              (*v100)(v121, v120);
              v37 = v128;
              v33 = v105;
            }

            else
            {
              v63 = v101;
              if (v75 == v97)
              {
                v117 = v36;
                v77 = v67;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                v33 = v105;
                v37 = v106;
                if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                (*v100)(v121, v120);
                v112 = v127;
                v36 = v117;
              }

              else
              {
                v33 = v105;
                v37 = v106;
                if (v75 == v96)
                {
                  v78 = v67;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v117 = v36;
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v36 = v117;
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  (*v100)(v121, v120);
                  v110 = v126;
                }

                else
                {
                  if (v75 != v95)
                  {
LABEL_99:
                    result = _diagnoseUnexpectedEnumCase<A>(type:)();
                    __break(1u);
                    return result;
                  }

                  (*v100)(v73, v120);

                  swift_getObjectType();
                  v79 = swift_conformsToProtocol2();
                  if (v79)
                  {
                    v80 = v67;
                    v81 = v67;
                  }

                  else
                  {
                    v81 = 0;
                  }

                  v119 = v81;
                  v124 = v81;
                  v125 = v79;
                  v111 = v79;
                }
              }
            }

            type metadata accessor for MultiPinMapAsset();
            v82 = swift_dynamicCastClass();
            if (v82)
            {
              v83 = v82;

              v36 = v83;
            }

            else
            {
            }

            v31 = v115;
          }

          ++v65;
        }

        while (v28 != v63);

        (*(v107 + 8))(v116, v108);
LABEL_47:
        v33 = v109;
        v58 = v119;
        v59 = v112;
        v60 = v111;
        v61 = v110;
      }

      else
      {
        (*(v107 + 8))(v116, v108);
        v36 = 0;
        v58 = 0;
        v60 = 0;
        v61 = &_swiftEmptyArrayStorage;
        v59 = &_swiftEmptyArrayStorage;
        v37 = &_swiftEmptyArrayStorage;
        v33 = v109;
      }

      goto LABEL_94;
    }

    sub_100004F84(v18, &qword_100AD6260);
  }

  sub_1000F24EC(&qword_100AE4BA8);
  NSManagedObjectContext.performAndWait<A>(_:)();
  v31 = v123;
  v32 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v28 = *(v1 + v32);
  v33 = v1;
  if (v28 >> 62)
  {
    goto LABEL_92;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v109 = v33;
    v116 = v119 + 16;
    v115 = v119 + 88;
    LODWORD(v113) = enum case for AssetPlacement.grid(_:);
    LODWORD(v107) = enum case for AssetPlacement.canvas(_:);
    LODWORD(v106) = enum case for AssetPlacement.hidden(_:);
    LODWORD(v105) = enum case for AssetPlacement.slim(_:);
    v108 = v119 + 8;

    v35 = 0;
    v36 = 0;
    v119 = 0;
    v111 = 0;
    v37 = &_swiftEmptyArrayStorage;
    v112 = &_swiftEmptyArrayStorage;
    v110 = &_swiftEmptyArrayStorage;
    v121 = v31;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_89;
        }

        v38 = *(v28 + 8 * v35 + 32);
      }

      v33 = v38;
      v39 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      type metadata accessor for ReflectionAsset();
      if (!swift_dynamicCastClass() && (*(v33 + OBJC_IVAR____TtC7Journal5Asset_isHidden) & 1) == 0)
      {
        if (v31[2] && (v40 = sub_100361E08(v33 + OBJC_IVAR____TtC7Journal5Asset_id), (v41 & 1) != 0))
        {
          v117 = v36;
          if (!v119 && ((*((swift_isaMask & *v33) + 0x200))(v40) & 1) != 0)
          {
            swift_getObjectType();
            v42 = swift_conformsToProtocol2();
            if (v42)
            {
              v43 = v33;
              v44 = v33;
            }

            else
            {
              v44 = 0;
            }

            v36 = v117;
            v119 = v44;
            v124 = v44;
            v125 = v42;
            v111 = v42;
            goto LABEL_42;
          }

          v46 = v118;
          AssetPlacement.init(_:)();
          v47 = v114;
          v48 = v46;
          v49 = v120;
          (*v116)(v114, v48, v120);
          v50 = (*v115)(v47, v49);
          if (v50 == v113)
          {
            v51 = v33;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v36 = v117;
            if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v36 = v117;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            (*v108)(v118, v120);
            v37 = v128;
            goto LABEL_42;
          }

          if (v50 == v107)
          {
            v52 = v33;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v112 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            (*v108)(v118, v120);
            v53 = v127;
            v54 = &v130;
LABEL_37:
            *(v54 - 32) = v53;
            v36 = v117;
            goto LABEL_42;
          }

          if (v50 == v106)
          {
            v55 = v33;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v110 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            (*v108)(v118, v120);
            v53 = v126;
            v54 = &v129;
            goto LABEL_37;
          }

          v36 = v117;
          if (v50 != v105)
          {
            goto LABEL_99;
          }

          (*v108)(v118, v120);
LABEL_42:
          type metadata accessor for MultiPinMapAsset();
          v56 = swift_dynamicCastClass();
          if (v56)
          {
            v57 = v56;

            v36 = v57;
          }

          else
          {
          }
        }

        else
        {
          v45 = v33;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v33 = v36;
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v37 = v128;
        }

        v31 = v121;
        goto LABEL_8;
      }

LABEL_8:
      ++v35;
      if (v39 == i)
      {

        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    ;
  }

  v36 = 0;
  v58 = 0;
  v60 = 0;
  v61 = &_swiftEmptyArrayStorage;
  v59 = &_swiftEmptyArrayStorage;
  v37 = &_swiftEmptyArrayStorage;
LABEL_94:
  *(v33 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets) = v37;

  *(v33 + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets) = v59;

  *(v33 + OBJC_IVAR____TtC7Journal14EntryViewModel_hiddenAssets) = v61;

  v84 = (v33 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset);
  v85 = *(v33 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset);
  *v84 = v58;
  v84[1] = v60;
  v86 = v58;

  v87 = *(v33 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
  *(v33 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset) = v36;
  v88 = v36;

  if (v58)
  {
    sub_1000F24EC(&unk_100AD4780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100941D50;
    *(inited + 32) = v86;
    v122 = v37;

    v90 = v86;
    sub_1006AD688(inited);
    v91 = v122;
  }

  else
  {

    v91 = v37;
  }

  *(v33 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssetsAndSlimAsset) = v91;

  v92 = sub_100783550(&v127, &v124, &v128);

  *(v33 + OBJC_IVAR____TtC7Journal14EntryViewModel_fullScreenAssets) = v92;
}