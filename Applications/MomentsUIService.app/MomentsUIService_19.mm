uint64_t specialized MOProcessingServer.keepUIActive()()
{
  v1 = type metadata accessor for ContinuousClock();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v0[9] = v3;
  v0[10] = *(v3 - 8);
  v0[11] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.keepUIActive(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 96) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  UUID.init()();
  *(v0 + 104) = type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[keepUIActive] keeping MomentsUIService up for 300 seconds with UIActive retention.", v4, 2u);
  }

  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);

  (*(v10 + 8))(v8, v9);
  *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  *(v0 + 120) = *(v6 + 72);
  v11 = *(v6 + 80);
  *(v0 + 184) = v11;
  v12 = (v11 + 32) & ~v11;
  v13 = swift_allocObject();
  *(v0 + 128) = v13;
  *(v13 + 16) = xmmword_1002A48B0;
  v14 = *(v6 + 16);
  *(v0 + 136) = v14;
  *(v0 + 144) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v13 + v12, v5, v7);
  v15 = swift_task_alloc();
  *(v0 + 152) = v15;
  *v15 = v0;
  v15[1] = specialized MOProcessingServer.keepUIActive();

  return CloudManager.retainUIActive(_:_:_:)(v13, "keepUIActive()", 14, 2, 114);
}

{

  return _swift_task_switch(specialized MOProcessingServer.keepUIActive(), 0, 0);
}

{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = specialized MOProcessingServer.keepUIActive();

  return specialized Clock.sleep(for:tolerance:)(v1, v3, 0, 0, 1);
}

{
  v2 = *v1;

  v3 = v2[4];
  v4 = v2[3];
  v5 = v2[2];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = specialized MOProcessingServer.keepUIActive();
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = specialized MOProcessingServer.keepUIActive();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = (*(v0 + 184) + 32) & ~*(v0 + 184);
  v5 = swift_allocObject();
  *(v0 + 168) = v5;
  *(v5 + 16) = xmmword_1002A48B0;
  v1(v5 + v4, v2, v3);
  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  *v6 = v0;
  v6[1] = specialized MOProcessingServer.keepUIActive();

  return CloudManager.releaseUIActive(_:_:_:)(v5, "keepUIActive()", 14, 2, 116);
}

{

  return _swift_task_switch(specialized MOProcessingServer.keepUIActive(), 0, 0);
}

{
  static CommonLogger.processing.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[keepUIActive] exiting after 300 seconds.", v3, 2u);
  }

  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[5];
  v9 = v0[6];

  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);

  v10 = v0[1];

  return v10();
}

uint64_t specialized MOProcessingServer.testInjectBadRecordChange()()
{
  v1 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.testInjectBadRecordChange(), 0, 0);
}

{
  v0[9] = type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[testInjectBadRecordChange] Injecting bad record change to test infinite loop fix", v3, 2u);
  }

  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  v10 = *(v6 + 8);
  v0[10] = v10;
  v10(v4, v5);
  type metadata accessor for MomentsUIManager();
  v11 = static MomentsUIManager.shared.getter();
  v0[11] = dispatch thunk of MomentsUIManager.cloudManager.getter();

  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CKRecordZoneID);
  v12._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12._object = v13;
  v14._countAndFlagsBits = 0x5A74736554646142;
  v14._object = 0xEB00000000656E6FLL;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v14, v12).super.isa;
  v0[12] = isa;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CKRecordID);
  v16 = isa;
  v17._countAndFlagsBits = 0x5274736554646142;
  v17._object = 0xED000064726F6365;
  v18 = CKRecordID.init(recordName:zoneID:)(v17, v16).super.isa;
  v0[13] = v18;
  *v7 = v18;
  (*(v8 + 104))(v7, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd);
  v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v20 = swift_allocObject();
  v0[14] = v20;
  *(v20 + 16) = xmmword_1002A48B0;
  (*(v8 + 16))(v20 + v19, v7, v9);
  v21 = v18;
  v22 = swift_task_alloc();
  v0[15] = v22;
  *v22 = v0;
  v22[1] = specialized MOProcessingServer.testInjectBadRecordChange();

  return CloudManager.add(pendingRecordZoneChanges:_:_:)(v20, 0xD00000000000001BLL, 0x80000001002B9C90, 133);
}

{

  return _swift_task_switch(specialized MOProcessingServer.testInjectBadRecordChange(), 0, 0);
}

{
  static CommonLogger.processing.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[testInjectBadRecordChange] Successfully injected bad record change with invalid zone", v3, 2u);
  }

  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[7];
  v13 = v0[10];
  v7 = v0[5];
  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  v13(v6, v7);
  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11(0);
}

uint64_t specialized MOProcessingServer.runFullProcessing()()
{
  return _swift_task_switch(specialized MOProcessingServer.runFullProcessing(), 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v0 + 48) = *(static MOPresenterServer.shared + OBJC_IVAR____TtC16MomentsUIService17MOPresenterServer_session);

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = specialized MOProcessingServer.runFullProcessing();

  return specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:)();
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = specialized MOProcessingServer.runFullProcessing();
  }

  else
  {
    v2 = specialized MOProcessingServer.runFullProcessing();
  }

  return _swift_task_switch(v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

{
  v13 = v0;

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static MOAngelLogger.shared);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v9 = *(v0 + 64);
  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t specialized MOProcessingServer.databaseWipe()()
{
  return _swift_task_switch(specialized MOProcessingServer.databaseWipe(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 16) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = specialized MOProcessingServer.databaseWipe();

  return CloudManager.getDBManager()();
}

{
  if (*(v0 + 32))
  {
    type metadata accessor for DBManager();
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type DBManager and conformance DBManager, &type metadata accessor for DBManager);

    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(specialized MOProcessingServer.databaseWipe(), v2, v1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(0);
  }
}

{
  dispatch thunk of DBManager.deleteAll()();
  *(v0 + 40) = 0;

  return _swift_task_switch(specialized MOProcessingServer.databaseWipe(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t specialized MOProcessingServer.databaseWipe()(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(specialized MOProcessingServer.databaseWipe(), 0, 0);
}

uint64_t specialized MOProcessingServer.databaseSnapshotList()()
{
  v1 = type metadata accessor for Logger();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.databaseSnapshotList(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 88) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = specialized MOProcessingServer.databaseSnapshotList();

  return CloudManager.getDBManager()();
}

{
  v22 = v0;
  if (v0[13])
  {
    v0[14] = type metadata accessor for MainActor();

    v0[15] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(specialized MOProcessingServer.databaseSnapshotList(), v2, v1);
  }

  else
  {
    _StringGuts.grow(_:)(23);

    v20 = 0xD000000000000011;
    v21 = 0x80000001002B9C50;
    outlined consume of (String?, UInt64, UInt64?)?(0, 1);
    v3._countAndFlagsBits = 7104878;
    v3._object = 0xE300000000000000;
    String.append(_:)(v3);

    v4._countAndFlagsBits = 46;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    v0[7] = -1;
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 10;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);

    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    String.append(_:)(v7);

    v8 = v20;
    v9 = v21;
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[10];
    v15 = v0[8];
    v14 = v0[9];
    if (v12)
    {
      v19 = v0[10];
      v16 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v16 = 136446466;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x80000001002B9C70, &v20);
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v20);
      _os_log_impl(&_mh_execute_header, v10, v11, "MOProcessingServer.%{public}s result = %s", v16, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v19, v15);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v17 = v0[1];

    return v17(v8, v9);
  }
}

{

  *(v0 + 128) = dispatch thunk of DBManager.mainWriter.getter();

  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = specialized MOProcessingServer.databaseSnapshotList();

  return DBWriter.latestSnapshotSequenceWithGeneration()(v0 + 16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(v2 + 152) = *(v2 + 16);
  *(v2 + 144) = v0;
  *(v2 + 168) = v3;
  *(v2 + 49) = *(v2 + 48);

  if (v0)
  {
    v4 = specialized MOProcessingServer.databaseSnapshotList();
  }

  else
  {

    v4 = specialized MOProcessingServer.databaseSnapshotList();
  }

  return _swift_task_switch(v4, 0, 0);
}

{

  *(v0 + 184) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(specialized MOProcessingServer.databaseSnapshotList(), v2, v1);
}

{

  *(v0 + 192) = dispatch thunk of DBManager.mainWriter.getter();

  return _swift_task_switch(specialized MOProcessingServer.databaseSnapshotList(), 0, 0);
}

{
  *(v0 + 200) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(specialized MOProcessingServer.databaseSnapshotList(), v2, v1);
}

{
  v1 = v0[18];

  v0[26] = DBWriter.latestSnapshots()();
  v0[27] = v1;

  if (v1)
  {

    v2 = specialized MOProcessingServer.databaseSnapshotList();
  }

  else
  {
    v2 = specialized MOProcessingServer.databaseSnapshotList();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v41 = v0;
  v2 = *(v0 + 208);
  v37 = 0xE000000000000000;
  if (v2 >> 62)
  {
LABEL_14:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v34[26];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v2;
    if (v3)
    {
LABEL_3:
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      v7 = v2 & 0xFFFFFFFFFFFFFF8;
      v8 = v4 + 32;
      v2 = 0xE000000000000000;
      while (1)
      {
        if (v6)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            v11 = v34;
            goto LABEL_16;
          }
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            __break(1u);
            goto LABEL_14;
          }

          v9 = *(v8 + 8 * v5);

          v10 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_11;
          }
        }

        v38 = v9;
        closure #1 in MOProcessingServer.databaseSnapshotList()(&v36, &v39);

        v1 = v39;
        v2 = v40;
        v36 = v39;
        v37 = v40;
        ++v5;
        if (v10 == v3)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v1 = 0;
  v2 = 0xE000000000000000;
  v11 = v34;
LABEL_16:

  v12 = v11[21];
  v14 = v11[19];
  v13 = v11[20];
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v39 = 0xD000000000000011;
  v40 = 0x80000001002B9C50;
  if (v13 >= 2)
  {

    v16 = v14;
    v15 = v13;
  }

  else
  {
    outlined consume of (String?, UInt64, UInt64?)?(v14, v13);
    v15 = 0xE300000000000000;
    v16 = 7104878;
  }

  v17 = v15;
  String.append(_:)(*&v16);

  v18._countAndFlagsBits = 46;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  if (v13 == 1)
  {
    v12 = -1;
  }

  else
  {
    outlined consume of (String?, UInt64, UInt64?)?(v14, v13);
  }

  v11[7] = v12;
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 10;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  if (v2)
  {
    v21 = v1;
  }

  else
  {
    v21 = 0;
  }

  if (!v2)
  {
    v2 = 0xE000000000000000;
  }

  v22._countAndFlagsBits = v21;
  v22._object = v2;
  String.append(_:)(v22);

  v23 = v39;
  v24 = v40;
  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v11[10];
  v30 = v11[8];
  v29 = v11[9];
  if (v27)
  {
    v35 = v11[8];
    v31 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v31 = 136446466;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x80000001002B9C70, &v39);
    *(v31 + 12) = 2080;
    *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v39);
    _os_log_impl(&_mh_execute_header, v25, v26, "MOProcessingServer.%{public}s result = %s", v31, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v28, v35);
  }

  else
  {

    (*(v29 + 8))(v28, v30);
  }

  v32 = v11[1];

  return v32(v23, v24);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized MOProcessingServer.databaseSnapshotList()(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(specialized MOProcessingServer.databaseSnapshotList(), 0, 0);
}

uint64_t specialized MOProcessingServer.deviceList()()
{
  v1 = type metadata accessor for CharacterSet();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();
  v2 = type metadata accessor for CloudDevice.Capability();
  v0[11] = v2;
  v0[12] = *(v2 - 8);
  v0[13] = swift_task_alloc();
  v0[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd);
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v3 = type metadata accessor for CloudManagerAccountState();
  v0[17] = v3;
  v0[18] = *(v3 - 8);
  v0[19] = swift_task_alloc();
  v4 = type metadata accessor for CloudDevice();
  v0[20] = v4;
  v0[21] = *(v4 - 8);
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v0[25] = v5;
  v0[26] = *(v5 - 8);
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI24CloudManagerAccountStateOSgMd);
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.deviceList(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 296) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 304) = v2;
  *v2 = v0;
  v2[1] = specialized MOProcessingServer.deviceList();

  return CloudManager.getDeviceDB()();
}

{
  if (v0[39])
  {
    v1 = swift_task_alloc();
    v0[40] = v1;
    *v1 = v0;
    v1[1] = specialized MOProcessingServer.deviceList();
    v2 = v0[36];

    return CloudManager.getAccountState()(v2);
  }

  else
  {

    v3 = v0[1];

    return v3(0, 0xE000000000000000);
  }
}

{

  return _swift_task_switch(specialized MOProcessingServer.deviceList(), 0, 0);
}

{
  type metadata accessor for CloudManager();
  v0[41] = static CloudManager.currentID.getter();
  v0[42] = v1;
  type metadata accessor for CloudDevicesDB();
  lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[43] = v3;
  v0[44] = v2;

  return _swift_task_switch(specialized MOProcessingServer.deviceList(), v3, v2);
}

{
  CloudDevicesDB.primaryDevice.getter();
  CloudDevicesDB.nominatedDevice.getter();

  return _swift_task_switch(specialized MOProcessingServer.deviceList(), 0, 0);
}

{
  v17 = v0;
  v0[45] = type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[41];
    v3 = v0[42];
    v5 = v0[28];
    v6 = v0[25];
    v7 = v0[26];
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x694C656369766564, 0xEC00000029287473, &v16);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v16);
    _os_log_impl(&_mh_execute_header, v1, v2, "MOProcessingServer.%{public}s currentDeviceID = %s", v8, 0x16u);
    swift_arrayDestroy();

    v9 = *(v7 + 8);
    v9(v5, v6);
  }

  else
  {
    v10 = v0[28];
    v11 = v0[25];
    v12 = v0[26];

    v9 = *(v12 + 8);
    v9(v10, v11);
  }

  v0[46] = v9;
  v13 = v0[43];
  v14 = v0[44];

  return _swift_task_switch(specialized MOProcessingServer.deviceList(), v13, v14);
}

{
  *(v0 + 376) = dispatch thunk of CloudDevicesDB.devices.getter();

  return _swift_task_switch(specialized MOProcessingServer.deviceList(), 0, 0);
}

uint64_t specialized MOProcessingServer.deviceList()(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return _swift_task_switch(specialized MOProcessingServer.deviceList(), 0, 0);
}

void specialized MOProcessingServer.deviceList()()
{
  v191 = v0;
  v1 = 0;
  v2 = v0[47];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v169 = v0[47];
  v7 = -1 << *(v169 + 32);
  v8 = v0[21];
  v9 = v0[18];
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v10 = v6 & v3;
  v177 = v0[14];
  v11 = (63 - v7) >> 6;
  v165 = (v9 + 48);
  v161 = (v9 + 8);
  v162 = (v9 + 32);
  v176 = (v8 + 56);
  v171 = (v8 + 48);
  v167 = v0[21];
  v178 = (v8 + 8);
  v163 = v0[12];
  v12 = _swiftEmptyArrayStorage;
  v164 = (v0[9] + 8);
  v168 = v4;
  v166 = v11;
  if ((v6 & v3) != 0)
  {
    while (1)
    {
      v181 = v10;
LABEL_9:
      v15 = v0[23];
      v14 = v0[24];
      v16 = v0[20];
      v174 = v1;
      v179 = v167[2];
      v179(v14, *(v169 + 56) + v167[9] * (__clz(__rbit64(v181)) | (v1 << 6)), v16);
      v170 = v167[4];
      v170(v15, v14, v16);
      v17 = CloudDevice.systemIdiomString.getter();
      v19 = v18;
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      v23 = v20;
      if (v22 >= v21 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
      }

      v25 = v0[41];
      v24 = v0[42];
      *(v23 + 2) = v22 + 1;
      v26 = v23;
      v27 = &v23[16 * v22];
      *(v27 + 4) = v17;
      *(v27 + 5) = v19;
      if (CloudDevice.id.getter() == v25 && v28 == v24)
      {

        v29 = v171;
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v29 = v171;
        if ((v30 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v32 = *(v26 + 2);
      v31 = *(v26 + 3);
      if (v32 >= v31 >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v26);
      }

      v34 = v0[35];
      v33 = v0[36];
      v35 = v0[17];
      *(v26 + 2) = v32 + 1;
      v36 = &v26[16 * v32];
      *(v36 + 4) = 0x7665442073696854;
      *(v36 + 5) = 0xEB00000000656369;
      outlined init with copy of (String, Date?)(v33, v34, &_s9MomentsUI24CloudManagerAccountStateOSgMd);
      if ((*v165)(v34, 1, v35) == 1)
      {
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[35], &_s9MomentsUI24CloudManagerAccountStateOSgMd);
      }

      else
      {
        (*v162)(v0[19], v0[35], v0[17]);
        v190._countAndFlagsBits = 46;
        v190._object = 0xE100000000000000;
        v37._countAndFlagsBits = CloudManagerAccountState.rawValue.getter();
        String.append(_:)(v37);

        v39 = *(v26 + 2);
        v38 = *(v26 + 3);
        if (v39 >= v38 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v26);
        }

        (*v161)(v0[19], v0[17]);
        *(v26 + 2) = v39 + 1;
        v40 = &v26[16 * v39];
        *(v40 + 4) = 46;
        *(v40 + 5) = 0xE100000000000000;
        v29 = v171;
      }

LABEL_22:
      if (CloudDevice.onboarded.getter())
      {
        v42 = *(v26 + 2);
        v41 = *(v26 + 3);
        if (v42 >= v41 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v26);
        }

        *(v26 + 2) = v42 + 1;
        v182 = v26;
        v43 = &v26[16 * v42];
        *(v43 + 4) = 0x656472616F626E4FLL;
        *(v43 + 5) = 0xE900000000000064;
      }

      else
      {
        v182 = v26;
      }

      v44 = v0[34];
      v45 = v0[32];
      v46 = v0[20];
      v47 = v0[16];
      v179(v45, v0[23], v46);
      v172 = *v176;
      (*v176)(v45, 0, 1, v46);
      v48 = *(v177 + 48);
      outlined init with copy of (String, Date?)(v45, v47, &_s9MomentsUI11CloudDeviceVSgMd);
      outlined init with copy of (String, Date?)(v44, v47 + v48, &_s9MomentsUI11CloudDeviceVSgMd);
      v49 = *v29;
      v50 = (*v29)(v47, 1, v46);
      v51 = v0[20];
      v175 = v12;
      v173 = v49;
      if (v50 == 1)
      {
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[32], &_s9MomentsUI11CloudDeviceVSgMd);
        v52 = v49(v47 + v48, 1, v51);
        v53 = v172;
        if (v52 != 1)
        {
          goto LABEL_32;
        }

        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[16], &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_34:
        v64 = *(v182 + 2);
        v63 = *(v182 + 3);
        if (v64 >= v63 >> 1)
        {
          v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v182);
        }

        *(v182 + 2) = v64 + 1;
        v65 = &v182[16 * v64];
        *(v65 + 4) = 0x7972616D697250;
        *(v65 + 5) = 0xE700000000000000;
        goto LABEL_37;
      }

      outlined init with copy of (String, Date?)(v0[16], v0[31], &_s9MomentsUI11CloudDeviceVSgMd);
      v54 = v49(v47 + v48, 1, v51);
      v55 = v0[31];
      v56 = v0[32];
      if (v54 == 1)
      {
        v57 = v0[20];
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[32], &_s9MomentsUI11CloudDeviceVSgMd);
        (*v178)(v55, v57);
        v53 = v172;
LABEL_32:
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[16], &_s9MomentsUI11CloudDeviceVSg_ADtMd);
        goto LABEL_37;
      }

      v58 = v0[22];
      v59 = v0[20];
      v160 = v0[16];
      v170(v58, v47 + v48, v59);
      lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, &type metadata accessor for CloudDevice);
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      v61 = *v178;
      (*v178)(v58, v59);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v56, &_s9MomentsUI11CloudDeviceVSgMd);
      v62 = v59;
      v12 = v175;
      v61(v55, v62);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v160, &_s9MomentsUI11CloudDeviceVSgMd);
      v53 = v172;
      if (v60)
      {
        goto LABEL_34;
      }

LABEL_37:
      v66 = v0[33];
      v67 = v0[30];
      v68 = v0[20];
      v69 = v0[15];
      v179(v67, v0[23], v68);
      v53(v67, 0, 1, v68);
      v70 = *(v177 + 48);
      outlined init with copy of (String, Date?)(v67, v69, &_s9MomentsUI11CloudDeviceVSgMd);
      outlined init with copy of (String, Date?)(v66, v69 + v70, &_s9MomentsUI11CloudDeviceVSgMd);
      v71 = v173(v69, 1, v68);
      v72 = v0[20];
      if (v71 == 1)
      {
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[30], &_s9MomentsUI11CloudDeviceVSgMd);
        if (v173(v69 + v70, 1, v72) == 1)
        {
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[15], &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_45:
          v77 = v182;
          v83 = *(v182 + 2);
          v82 = *(v182 + 3);
          if (v83 >= v82 >> 1)
          {
            v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v182);
          }

          *(v77 + 2) = v83 + 1;
          v84 = &v77[16 * v83];
          *(v84 + 4) = 0x6574616E696D6F4ELL;
          *(v84 + 5) = 0xE900000000000064;
          goto LABEL_48;
        }

        goto LABEL_42;
      }

      outlined init with copy of (String, Date?)(v0[15], v0[29], &_s9MomentsUI11CloudDeviceVSgMd);
      v73 = v173(v69 + v70, 1, v72);
      v74 = v0[29];
      v75 = v0[30];
      if (v73 == 1)
      {
        v76 = v0[20];
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[30], &_s9MomentsUI11CloudDeviceVSgMd);
        (*v178)(v74, v76);
        v12 = v175;
LABEL_42:
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[15], &_s9MomentsUI11CloudDeviceVSg_ADtMd);
        goto LABEL_43;
      }

      v78 = v0[22];
      v79 = v0[20];
      v180 = v0[15];
      v170(v78, v69 + v70, v79);
      lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, &type metadata accessor for CloudDevice);
      v80 = dispatch thunk of static Equatable.== infix(_:_:)();
      v81 = *v178;
      (*v178)(v78, v79);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v75, &_s9MomentsUI11CloudDeviceVSgMd);
      v81(v74, v79);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v180, &_s9MomentsUI11CloudDeviceVSgMd);
      v12 = v175;
      if (v80)
      {
        goto LABEL_45;
      }

LABEL_43:
      v77 = v182;
LABEL_48:
      CloudDevice.snapshotGeneration.getter();
      if (v85)
      {
        v190._countAndFlagsBits = 1030645095;
        v190._object = 0xE400000000000000;
        specialized Collection.prefix(_:)(8);

        v86 = static String._fromSubstring(_:)();
        v88 = v87;

        v89._countAndFlagsBits = v86;
        v89._object = v88;
        String.append(_:)(v89);

        v91 = *(v77 + 2);
        v90 = *(v77 + 3);
        if (v91 >= v90 >> 1)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1, v77);
        }

        *(v77 + 2) = v91 + 1;
        v92 = &v77[16 * v91];
        *(v92 + 4) = 1030645095;
        *(v92 + 5) = 0xE400000000000000;
      }

      v93 = CloudDevice.deviceCapabilities.getter();
      if (v93)
      {
        v94 = v12;
        v190._countAndFlagsBits = 0;
        v190._object = 0xE000000000000000;
        v95 = *(v93 + 16);
        if (v95)
        {
          v183 = v77;
          v96 = v93;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v95, 0);
          v97 = v96 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
          v98 = *(v163 + 72);
          v99 = *(v163 + 16);
          do
          {
            v100 = v0[13];
            v101 = v0[11];
            v99(v100, v97, v101);
            v0[4] = 0;
            v0[5] = 0xE000000000000000;
            _print_unlocked<A, B>(_:_:)();
            v103 = v0[4];
            v102 = v0[5];
            (*(v163 + 8))(v100, v101);
            v105 = _swiftEmptyArrayStorage[2];
            v104 = _swiftEmptyArrayStorage[3];
            if (v105 >= v104 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v105 + 1;
            v106 = &_swiftEmptyArrayStorage[2 * v105];
            v106[4] = v103;
            v106[5] = v102;
            v97 += v98;
            --v95;
          }

          while (v95);

          v12 = v175;
          v77 = v183;
        }

        else
        {

          v12 = v94;
        }

        v107 = Array.description.getter();
        v109 = v108;

        v110._countAndFlagsBits = v107;
        v110._object = v109;
        String.append(_:)(v110);

        countAndFlagsBits = v190._countAndFlagsBits;
        object = v190._object;
        v114 = *(v77 + 2);
        v113 = *(v77 + 3);
        if (v114 >= v113 >> 1)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v114 + 1, 1, v77);
        }

        *(v77 + 2) = v114 + 1;
        v115 = &v77[16 * v114];
        *(v115 + 4) = countAndFlagsBits;
        *(v115 + 5) = object;
      }

      v190._countAndFlagsBits = 0;
      v190._object = 0xE000000000000000;
      v116 = CloudDevice.name.getter();
      if (v117)
      {
        v118 = v117;
      }

      else
      {
        v116 = 0x6E776F6E6B6E553CLL;
        v118 = 0xE90000000000003ELL;
      }

      v119 = v118;
      String.append(_:)(*&v116);

      v189 = v190;
      CloudDevice.deviceID.getter();
      if (v120)
      {
        v190._countAndFlagsBits = 46;
        v190._object = 0xE100000000000000;
        specialized Collection.prefix(_:)(8);

        v121 = static String._fromSubstring(_:)();
        v123 = v122;

        v124._countAndFlagsBits = v121;
        v124._object = v123;
        String.append(_:)(v124);

        v125._countAndFlagsBits = 46;
        v125._object = 0xE100000000000000;
        String.append(_:)(v125);
      }

      v126 = CloudDevice.bundleID.getter();
      if (v127)
      {
        v128 = v0[10];
        v129 = v0[8];
        v0[2] = v126;
        v0[3] = v127;
        static CharacterSet.punctuationCharacters.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v130 = StringProtocol.components(separatedBy:)();
        (*v164)(v128, v129);

        v131 = *(v130 + 16);
        if (v131)
        {
          v132 = (v130 + 16 + 16 * v131);
          v133 = *v132;
          v134 = v132[1];

          v135._countAndFlagsBits = v133;
          v135._object = v134;
          String.append(_:)(v135);

          v136._countAndFlagsBits = 46;
          v136._object = 0xE100000000000000;
          String.append(_:)(v136);
        }
      }

      v190._countAndFlagsBits = 10272;
      v190._object = 0xE200000000000000;
      v0[6] = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
      v137 = BidirectionalCollection<>.joined(separator:)();
      v139 = v138;

      v140._countAndFlagsBits = v137;
      v140._object = v139;
      String.append(_:)(v140);

      v141._countAndFlagsBits = 41;
      v141._object = 0xE100000000000000;
      String.append(_:)(v141);
      String.append(_:)(v190);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v143 = *(v12 + 2);
      v142 = *(v12 + 3);
      if (v143 >= v142 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v142 > 1), v143 + 1, 1, v12);
      }

      v10 = (v181 - 1) & v181;
      (*v178)(v0[23], v0[20]);
      *(v12 + 2) = v143 + 1;
      *&v12[16 * v143 + 32] = v189;
      v1 = v174;
      v4 = v168;
      v11 = v166;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v11)
    {
      break;
    }

    ++v1;
    if (*(v4 + 8 * v13))
    {
      v181 = *(v4 + 8 * v13);
      v1 = v13;
      goto LABEL_9;
    }
  }

  static CommonLogger.processing.getter();
  v144 = Logger.logObject.getter();
  v145 = static os_log_type_t.default.getter();
  v146 = os_log_type_enabled(v144, v145);
  v147 = v0[46];
  v148 = v0[27];
  v149 = v0[25];
  if (v146)
  {
    v187 = v0[27];
    v150 = swift_slowAlloc();
    v190._countAndFlagsBits = swift_slowAlloc();
    *v150 = 136446466;
    *(v150 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x694C656369766564, 0xEC00000029287473, &v190._countAndFlagsBits);
    *(v150 + 12) = 2080;

    v185 = v147;
    v151 = Array.description.getter();
    v153 = v152;

    v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v153, &v190._countAndFlagsBits);

    *(v150 + 14) = v154;
    _os_log_impl(&_mh_execute_header, v144, v145, "MOProcessingServer.%{public}s result = %s", v150, 0x16u);
    swift_arrayDestroy();

    v185(v187, v149);
  }

  else
  {

    v147(v148, v149);
  }

  v184 = v0[36];
  v156 = v0[33];
  v155 = v0[34];
  v0[7] = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v157 = BidirectionalCollection<>.joined(separator:)();
  v186 = v158;
  v188 = v157;

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v156, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v155, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v184, &_s9MomentsUI24CloudManagerAccountStateOSgMd);

  v159 = v0[1];

  v159(v188, v186);
}

uint64_t specialized MOProcessingServer.deviceListJSON()()
{
  type metadata accessor for String.Encoding();
  v0[107] = swift_task_alloc();
  v1 = type metadata accessor for CloudDevice.Capability();
  v0[108] = v1;
  v0[109] = *(v1 - 8);
  v0[110] = swift_task_alloc();
  v0[111] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd);
  v0[112] = swift_task_alloc();
  v0[113] = swift_task_alloc();
  v2 = type metadata accessor for CloudDevice();
  v0[114] = v2;
  v0[115] = *(v2 - 8);
  v0[116] = swift_task_alloc();
  v0[117] = swift_task_alloc();
  v0[118] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v0[119] = v3;
  v0[120] = *(v3 - 8);
  v0[121] = swift_task_alloc();
  v0[122] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v0[123] = swift_task_alloc();
  v0[124] = swift_task_alloc();
  v0[125] = swift_task_alloc();
  v0[126] = swift_task_alloc();
  v0[127] = swift_task_alloc();
  v0[128] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI24CloudManagerAccountStateOSgMd);
  v0[129] = swift_task_alloc();
  v0[130] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.deviceListJSON(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 1048) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 1056) = v2;
  *v2 = v0;
  v2[1] = specialized MOProcessingServer.deviceListJSON();

  return CloudManager.getDeviceDB()();
}

{
  if (v0[133])
  {
    v1 = swift_task_alloc();
    v0[134] = v1;
    *v1 = v0;
    v1[1] = specialized MOProcessingServer.deviceListJSON();
    v2 = v0[130];

    return CloudManager.getAccountState()(v2);
  }

  else
  {

    v3 = v0[1];

    return v3(0, 0xE000000000000000);
  }
}

{

  return _swift_task_switch(specialized MOProcessingServer.deviceListJSON(), 0, 0);
}

{
  type metadata accessor for CloudManager();
  v0[135] = static CloudManager.currentID.getter();
  v0[136] = v1;
  type metadata accessor for CloudDevicesDB();
  lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[137] = v2;
  v0[138] = v3;

  return _swift_task_switch(specialized MOProcessingServer.deviceListJSON(), v2, v3);
}

{
  CloudDevicesDB.primaryDevice.getter();
  CloudDevicesDB.nominatedDevice.getter();

  return _swift_task_switch(specialized MOProcessingServer.deviceListJSON(), 0, 0);
}

{
  v17 = v0;
  v0[139] = type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[136];
    v4 = v0[135];
    v5 = v0[122];
    v6 = v0[120];
    v7 = v0[119];
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001002B9C30, &v16);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v16);
    _os_log_impl(&_mh_execute_header, v1, v2, "MOProcessingServer.%{public}s currentDeviceID = %s", v8, 0x16u);
    swift_arrayDestroy();

    v9 = *(v6 + 8);
    v9(v5, v7);
  }

  else
  {
    v10 = v0[122];
    v11 = v0[120];
    v12 = v0[119];

    v9 = *(v11 + 8);
    v9(v10, v12);
  }

  v0[140] = v9;
  v0[141] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSSe_SEpGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v13 = v0[138];
  v14 = v0[137];

  return _swift_task_switch(specialized MOProcessingServer.deviceListJSON(), v14, v13);
}

{
  *(v0 + 1136) = dispatch thunk of CloudDevicesDB.devices.getter();

  return _swift_task_switch(specialized MOProcessingServer.deviceListJSON(), 0, 0);
}

{
  v164 = v0;
  v1 = 0;
  v2 = *(v0 + 1136);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v140 = *(v0 + 1136);
  v7 = -1 << *(v140 + 32);
  v8 = *(v0 + 920);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v150 = *(v0 + 888);
  v9 = v6 & v3;
  v10 = (63 - v7) >> 6;
  v149 = (v8 + 56);
  v141 = (v8 + 48);
  v138 = *(v0 + 920);
  v152 = (v8 + 8);
  v136 = *(v0 + 872);
  v154 = *(v0 + 1128);
  v139 = v4;
  v137 = v10;
  while (v9)
  {
LABEL_11:
    v144 = *(v0 + 1088);
    v146 = v9;
    v19 = *(v0 + 1080);
    v20 = *(v0 + 944);
    v21 = *(v0 + 936);
    v22 = *(v0 + 912);
    v147 = v1;
    v23 = v138[2];
    v23(v20, *(v140 + 56) + v138[9] * (__clz(__rbit64(v9)) | (v1 << 6)), v22);
    v142 = v138[4];
    v142(v21, v20, v22);
    v24 = CloudDevice.jsonDict.getter();
    v25 = CloudDevice.systemIdiomString.getter();
    *(v0 + 40) = &type metadata for String;
    *(v0 + 48) = &protocol witness table for String;
    *(v0 + 56) = &protocol witness table for String;
    *(v0 + 16) = v25;
    *(v0 + 24) = v26;
    outlined init with take of Decodable & Encodable((v0 + 16), (v0 + 64));
    LOBYTE(v22) = swift_isUniquelyReferenced_nonNull_native();
    v163[0] = v24;
    v27 = *(v0 + 88);
    v28 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 64, v27);
    v29 = *(v27 - 8);
    v30 = swift_task_alloc();
    (*(v29 + 16))(v30, v28, v27);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v30, v30[1], 0x6D6F696469, 0xE500000000000000, v22, v163);
    __swift_destroy_boxed_opaque_existential_0(v0 + 64);

    v31 = v163[0];
    v162 = v163[0];
    if (CloudDevice.id.getter() == v19 && v32 == v144)
    {

      v33 = v141;
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v33 = v141;
      if ((v34 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v35 = *(v0 + 1040);
    v36 = *(v0 + 1032);
    *(v0 + 616) = &type metadata for Bool;
    *(v0 + 624) = &protocol witness table for Bool;
    *(v0 + 632) = &protocol witness table for Bool;
    *(v0 + 592) = 1;
    outlined init with take of Decodable & Encodable((v0 + 592), (v0 + 640));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v163[0] = v31;
    v38 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 640, *(v0 + 664));
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v38, 0x6976654473696874, 0xEA00000000006563, isUniquelyReferenced_nonNull_native, v163);
    __swift_destroy_boxed_opaque_existential_0(v0 + 640);
    v39 = v163[0];
    v162 = v163[0];
    outlined init with copy of (String, Date?)(v35, v36, &_s9MomentsUI24CloudManagerAccountStateOSgMd);
    v40 = type metadata accessor for CloudManagerAccountState();
    v41 = *(v40 - 8);
    v42 = (*(v41 + 48))(v36, 1, v40);
    v43 = *(v0 + 1032);
    if (v42 == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 1032), &_s9MomentsUI24CloudManagerAccountStateOSgMd);
      specialized Dictionary._Variant.removeValue(forKey:)(0x53746E756F636361, 0xEC00000065746174, (v0 + 736));
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0 + 736, &_sSe_SEpSgMd);
    }

    else
    {
      v44 = CloudManagerAccountState.rawValue.getter();
      *(v0 + 712) = &type metadata for String;
      *(v0 + 720) = &protocol witness table for String;
      *(v0 + 728) = &protocol witness table for String;
      *(v0 + 688) = v44;
      *(v0 + 696) = v45;
      (*(v41 + 8))(v43, v40);
      outlined init with take of Decodable & Encodable((v0 + 688), (v0 + 784));
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v163[0] = v39;
      v47 = *(v0 + 808);
      v48 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 784, v47);
      v49 = *(v47 - 8);
      v50 = swift_task_alloc();
      (*(v49 + 16))(v50, v48, v47);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50, 0x53746E756F636361, 0xEC00000065746174, v46, v163, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      __swift_destroy_boxed_opaque_existential_0(v0 + 784);

      v162 = v163[0];
    }

LABEL_18:
    if (CloudDevice.onboarded.getter())
    {
      *(v0 + 520) = &type metadata for Bool;
      *(v0 + 528) = &protocol witness table for Bool;
      *(v0 + 536) = &protocol witness table for Bool;
      *(v0 + 496) = 1;
      outlined init with take of Decodable & Encodable((v0 + 496), (v0 + 544));
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v163[0] = v162;
      v52 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 544, *(v0 + 568));
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v52, 0x656472616F626E6FLL, 0xE900000000000064, v51, v163);
      __swift_destroy_boxed_opaque_existential_0(v0 + 544);
      v162 = v163[0];
    }

    v53 = *(v0 + 1024);
    v54 = *(v0 + 1008);
    v55 = *(v0 + 912);
    v56 = *(v0 + 904);
    v23(v54, *(v0 + 936), v55);
    v143 = *v149;
    (*v149)(v54, 0, 1, v55);
    v57 = *(v150 + 48);
    outlined init with copy of (String, Date?)(v54, v56, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined init with copy of (String, Date?)(v53, v56 + v57, &_s9MomentsUI11CloudDeviceVSgMd);
    v58 = *v33;
    v59 = (*v33)(v56, 1, v55);
    v60 = *(v0 + 912);
    v145 = v58;
    if (v59 == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 1008), &_s9MomentsUI11CloudDeviceVSgMd);
      if (v58(v56 + v57, 1, v60) != 1)
      {
        goto LABEL_25;
      }

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 904), &_s9MomentsUI11CloudDeviceVSgMd);
      v61 = v23;
      v62 = v143;
LABEL_27:
      *(v0 + 424) = &type metadata for Bool;
      *(v0 + 432) = &protocol witness table for Bool;
      *(v0 + 440) = &protocol witness table for Bool;
      *(v0 + 400) = 1;
      outlined init with take of Decodable & Encodable((v0 + 400), (v0 + 448));
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v163[0] = v162;
      v72 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 448, *(v0 + 472));
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v72, 0x7972616D697270, 0xE700000000000000, v71, v163);
      __swift_destroy_boxed_opaque_existential_0(v0 + 448);
      v162 = v163[0];
      goto LABEL_28;
    }

    outlined init with copy of (String, Date?)(*(v0 + 904), *(v0 + 1000), &_s9MomentsUI11CloudDeviceVSgMd);
    v63 = v58(v56 + v57, 1, v60);
    v64 = *(v0 + 1008);
    v65 = *(v0 + 1000);
    if (v63 == 1)
    {
      v66 = *(v0 + 912);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 1008), &_s9MomentsUI11CloudDeviceVSgMd);
      (*v152)(v65, v66);
LABEL_25:
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 904), &_s9MomentsUI11CloudDeviceVSg_ADtMd);
      v61 = v23;
      v62 = v143;
      goto LABEL_28;
    }

    v67 = *(v0 + 928);
    v68 = *(v0 + 912);
    v135 = *(v0 + 904);
    v142(v67, v56 + v57, v68);
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, &type metadata accessor for CloudDevice);
    v69 = dispatch thunk of static Equatable.== infix(_:_:)();
    v70 = *v152;
    (*v152)(v67, v68);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v64, &_s9MomentsUI11CloudDeviceVSgMd);
    v70(v65, v68);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v135, &_s9MomentsUI11CloudDeviceVSgMd);
    v61 = v23;
    v62 = v143;
    if (v69)
    {
      goto LABEL_27;
    }

LABEL_28:
    v73 = *(v0 + 1016);
    v74 = *(v0 + 992);
    v75 = *(v0 + 912);
    v76 = *(v0 + 896);
    v61(v74, *(v0 + 936), v75);
    v62(v74, 0, 1, v75);
    v77 = *(v150 + 48);
    outlined init with copy of (String, Date?)(v74, v76, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined init with copy of (String, Date?)(v73, v76 + v77, &_s9MomentsUI11CloudDeviceVSgMd);
    v78 = v145(v76, 1, v75);
    v79 = *(v0 + 912);
    if (v78 == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 992), &_s9MomentsUI11CloudDeviceVSgMd);
      if (v145(v76 + v77, 1, v79) != 1)
      {
        goto LABEL_33;
      }

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 896), &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_35:
      *(v0 + 328) = &type metadata for Bool;
      *(v0 + 336) = &protocol witness table for Bool;
      *(v0 + 344) = &protocol witness table for Bool;
      *(v0 + 304) = 1;
      outlined init with take of Decodable & Encodable((v0 + 304), (v0 + 352));
      v89 = swift_isUniquelyReferenced_nonNull_native();
      v163[0] = v162;
      v90 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 352, *(v0 + 376));
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v90, 0x6574616E696D6F6ELL, 0xE900000000000064, v89, v163);
      __swift_destroy_boxed_opaque_existential_0(v0 + 352);
      v162 = v163[0];
      goto LABEL_36;
    }

    outlined init with copy of (String, Date?)(*(v0 + 896), *(v0 + 984), &_s9MomentsUI11CloudDeviceVSgMd);
    v80 = v145(v76 + v77, 1, v79);
    v81 = *(v0 + 992);
    v82 = *(v0 + 984);
    if (v80 == 1)
    {
      v83 = *(v0 + 912);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 992), &_s9MomentsUI11CloudDeviceVSgMd);
      (*v152)(v82, v83);
LABEL_33:
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 896), &_s9MomentsUI11CloudDeviceVSg_ADtMd);
      goto LABEL_36;
    }

    v84 = *(v0 + 928);
    v85 = *(v0 + 912);
    v86 = *(v0 + 896);
    v142(v84, v76 + v77, v85);
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, &type metadata accessor for CloudDevice);
    v87 = dispatch thunk of static Equatable.== infix(_:_:)();
    v88 = *v152;
    (*v152)(v84, v85);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v81, &_s9MomentsUI11CloudDeviceVSgMd);
    v88(v82, v85);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v86, &_s9MomentsUI11CloudDeviceVSgMd);
    if (v87)
    {
      goto LABEL_35;
    }

LABEL_36:
    v91 = CloudDevice.snapshotGeneration.getter();
    if (v92)
    {
      *(v0 + 232) = &type metadata for String;
      *(v0 + 240) = &protocol witness table for String;
      *(v0 + 248) = &protocol witness table for String;
      *(v0 + 208) = v91;
      *(v0 + 216) = v92;
      outlined init with take of Decodable & Encodable((v0 + 208), (v0 + 256));
      v93 = swift_isUniquelyReferenced_nonNull_native();
      v163[0] = v162;
      v94 = *(v0 + 280);
      v95 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 256, v94);
      v96 = *(v94 - 8);
      v97 = swift_task_alloc();
      (*(v96 + 16))(v97, v95, v94);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v97, v97[1], 0x69746172656E6567, 0xEA00000000006E6FLL, v93, v163);
      __swift_destroy_boxed_opaque_existential_0(v0 + 256);

      v162 = v163[0];
    }

    v98 = CloudDevice.deviceCapabilities.getter();
    if (v98)
    {
      v99 = *(v98 + 16);
      if (v99)
      {
        v163[0] = _swiftEmptyArrayStorage;
        v100 = v98;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99, 0);
        v101 = v163[0];
        v102 = v100 + ((*(v136 + 80) + 32) & ~*(v136 + 80));
        v159 = *(v136 + 72);
        v103 = *(v136 + 16);
        do
        {
          v104 = *(v0 + 880);
          v105 = *(v0 + 864);
          v103(v104, v102, v105);
          *(v0 + 832) = 0;
          *(v0 + 840) = 0xE000000000000000;
          _print_unlocked<A, B>(_:_:)();
          v106 = *(v0 + 832);
          v107 = *(v0 + 840);
          (*(v136 + 8))(v104, v105);
          v163[0] = v101;
          v109 = v101[2];
          v108 = v101[3];
          if (v109 >= v108 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1);
            v101 = v163[0];
          }

          v101[2] = v109 + 1;
          v110 = &v101[2 * v109];
          v110[4] = v106;
          v110[5] = v107;
          v0 = v161;
          v102 += v159;
          --v99;
        }

        while (v99);
      }

      else
      {

        v101 = _swiftEmptyArrayStorage;
      }

      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      *(v0 + 144) = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
      *(v0 + 152) = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
      *(v0 + 112) = v101;
      outlined init with take of Decodable & Encodable((v0 + 112), (v0 + 160));
      v111 = swift_isUniquelyReferenced_nonNull_native();
      v163[0] = v162;
      v112 = *(v0 + 184);
      v113 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 160, v112);
      v114 = *(v112 - 8);
      v115 = swift_task_alloc();
      (*(v114 + 16))(v115, v113, v112);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v115, 0xD000000000000012, 0x80000001002B9C10, v111, v163);
      __swift_destroy_boxed_opaque_existential_0(v0 + 160);

      v11 = v163[0];
    }

    else
    {
      v11 = v162;
    }

    v12 = *(v0 + 936);
    v13 = *(v0 + 912);
    v14 = CloudDevice.id.getter();
    v16 = v15;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v163[0] = v154;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v14, v16, v17);

    v154 = v163[0];
    (*v152)(v12, v13);
    v9 = (v146 - 1) & v146;
    v1 = v147;
    v4 = v139;
    v10 = v137;
  }

  while (1)
  {
    v18 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
    }

    if (v18 >= v10)
    {
      break;
    }

    v9 = *(v4 + 8 * v18);
    ++v1;
    if (v9)
    {
      v1 = v18;
      goto LABEL_11;
    }
  }

  v116 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSe_SEpGMd);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 848) = 0;
  v118 = [v116 dataWithJSONObject:isa options:11 error:v0 + 848];

  v119 = *(v0 + 848);
  if (v118)
  {
    v120 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v121;

    outlined copy of Data._Representation(v120, v122);
    static String.Encoding.utf8.getter();
    v160 = String.init(data:encoding:)();
    if (v123)
    {
      v124 = v123;
      outlined consume of Data._Representation(v120, v122);
    }

    else
    {
      outlined consume of Data._Representation(v120, v122);

      v124 = 0xE200000000000000;
      v160 = 32123;
    }
  }

  else
  {
    v125 = v119;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v120 = 0;
    v122 = 0xF000000000000000;
    v124 = 0xE200000000000000;
    v160 = 32123;
  }

  static CommonLogger.processing.getter();

  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.default.getter();

  v128 = os_log_type_enabled(v126, v127);
  v129 = *(v0 + 1040);
  v157 = *(v0 + 1120);
  v158 = *(v0 + 1024);
  v155 = *(v0 + 968);
  v156 = *(v0 + 1016);
  v153 = *(v0 + 952);
  v148 = v124;
  if (v128)
  {
    v151 = *(v0 + 1040);
    v130 = swift_slowAlloc();
    v163[0] = swift_slowAlloc();
    *v130 = 136446466;
    *(v130 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001002B9C30, v163);
    *(v130 + 12) = 2080;
    v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v124, v163);

    *(v130 + 14) = v131;
    _os_log_impl(&_mh_execute_header, v126, v127, "MOProcessingServer.%{public}s result = %s", v130, 0x16u);
    swift_arrayDestroy();

    outlined consume of Data?(v120, v122);
    v157(v155, v153);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v156, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v158, &_s9MomentsUI11CloudDeviceVSgMd);
    v132 = v151;
  }

  else
  {

    outlined consume of Data?(v120, v122);
    v157(v155, v153);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v156, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v158, &_s9MomentsUI11CloudDeviceVSgMd);
    v132 = v129;
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v132, &_s9MomentsUI24CloudManagerAccountStateOSgMd);

  v133 = *(v161 + 8);

  return v133(v160, v148);
}

uint64_t specialized MOProcessingServer.deviceListJSON()(uint64_t a1)
{
  *(*v1 + 1064) = a1;

  return _swift_task_switch(specialized MOProcessingServer.deviceListJSON(), 0, 0);
}

uint64_t specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v5 = type metadata accessor for CloudDevice();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:), 0, 0);
}

uint64_t specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:)()
{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 216) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:);

  return CloudManager.getDeviceDB()();
}

{
  if (v0[29])
  {
    v1 = v0[26];
    v2 = v0[20];
    v3 = v0[21];
    v4 = *(v3 + 56);
    v0[30] = v4;
    v0[31] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v4(v1, 1, 1, v2);
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:), v6, v5);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

{
  *(v0 + 256) = dispatch thunk of CloudDevicesDB.devices.getter();

  return _swift_task_switch(specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:), 0, 0);
}

{

  return _swift_task_switch(specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:), 0, 0);
}

{
  v1 = v0[26];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];

  (*(v3 + 8))(v2, v4);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1, &_s9MomentsUI11CloudDeviceVSgMd);

  v5 = v0[1];

  return v5();
}

uint64_t specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:)(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:), 0, 0);
}

{
  v2 = 0;
  v57 = 0;
  v62 = 0;
  v3 = v1[21];
  v4 = v1[32];
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v65 = v1[32];
  v8 = -1;
  v9 = -1 << *(v65 + 32);
  v60 = v1[19];
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & v5;
  v11 = (63 - v9) >> 6;
  v66 = (v3 + 32);
  v64 = v1[21];
  v12 = (v3 + 8);
  v58 = (v3 + 8);
LABEL_4:
  v54 = 0;
  while (1)
  {
    v13 = v2;
    if (!v10)
    {
      break;
    }

LABEL_10:
    v15 = v1[23];
    v14 = v1[24];
    v16 = v1[20];
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    (*(v64 + 16))(v14, *(v65 + 56) + *(v64 + 72) * (v17 | (v2 << 6)), v16);
    v63 = *(v64 + 32);
    v63(v15, v14, v16);
    v18 = CloudDevice.deviceID.getter();
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      v22 = CloudDevice.bundleID.getter();
      if (v23)
      {
        v24 = v23;
        v59 = v22;
        v25 = v1[17];
        v1[2] = v1[16];
        v1[3] = v25;
        v1[4] = v20;
        v1[5] = v21;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.commonPrefix<A>(with:options:)();
        v61 = v26;

        if (v60)
        {
          v1[6] = v1[18];
          v1[7] = v60;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd);
          v55 = String.init<A>(_:)();
          v28 = v27;
          v1[8] = v59;
          v1[9] = v24;
          v29 = String.init<A>(_:)();
          v1[10] = v55;
          v1[11] = v28;
          v1[12] = v29;
          v1[13] = v30;
          v31 = StringProtocol.commonPrefix<A>(with:options:)();
          v33 = v32;

          v1[14] = v31;
          v1[15] = v33;
          String.init<A>(_:)();
          v35 = v34;
          if (!v62)
          {
            goto LABEL_17;
          }
        }

        else
        {

          v35 = 0xE000000000000000;
          if (!v62)
          {
LABEL_17:
            v36 = 0;
            goto LABEL_18;
          }
        }

        v36 = String.count.getter();
LABEL_18:
        v37 = String.count.getter();
        if (v36 < v37)
        {
          goto LABEL_28;
        }

        if (v37 == v36)
        {
          if (v60)
          {
            if (v57)
            {
              v38 = String.count.getter();
            }

            else
            {
              v38 = 0;
            }

            v39 = String.count.getter();
            if (v38 < v39)
            {
LABEL_28:
              v56 = v1[30];
              v41 = v1[26];
              v42 = v1[23];
              v43 = v1[20];

              outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v41, &_s9MomentsUI11CloudDeviceVSgMd);
              v63(v41, v42, v43);
              a1 = v56(v41, 0, 1, v43);
              v57 = v35;
              v62 = v61;
              v12 = v58;
              goto LABEL_4;
            }

            v40 = v39;
            v12 = v58;
            (*v58)(v1[23], v1[20]);

            v54 |= v40 == v38;
          }

          else
          {
            v12 = v58;
            (*v58)(v1[23], v1[20]);

            v54 = 1;
          }
        }

        else
        {
          v12 = v58;
          (*v58)(v1[23], v1[20]);
        }
      }

      else
      {
        (*v12)(v1[23], v1[20]);
      }
    }

    else
    {
      a1 = (*v12)(v1[23], v1[20]);
    }
  }

  while (2)
  {
    v2 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return CloudDevicesDB.nominateDevice(_:)(a1);
    }

    if (v2 < v11)
    {
      v10 = *(v6 + 8 * v2);
      ++v13;
      if (v10)
      {
        goto LABEL_10;
      }

      continue;
    }

    break;
  }

  v44 = v1[25];
  v45 = v1[26];
  v46 = v1[20];
  v47 = v1[21];

  outlined init with copy of (String, Date?)(v45, v44, &_s9MomentsUI11CloudDeviceVSgMd);
  if ((*(v47 + 48))(v44, 1, v46) != 1)
  {
    (*v66)(v1[22], v1[25], v1[20]);
    if (v54)
    {
      v48 = v1[26];
      v49 = v1[22];
      v50 = v1[20];

      (*v12)(v49, v50);
      goto LABEL_33;
    }

    v53 = swift_task_alloc();
    v1[33] = v53;
    *v53 = v1;
    v53[1] = specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:);
    a1 = v1[22];

    return CloudDevicesDB.nominateDevice(_:)(a1);
  }

  v48 = v1[25];
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1[26], &_s9MomentsUI11CloudDeviceVSgMd);

LABEL_33:
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v48, &_s9MomentsUI11CloudDeviceVSgMd);

  v51 = v1[1];

  return v51();
}

uint64_t specialized MOProcessingServer.deviceNewlyOnboarded()()
{
  v1 = type metadata accessor for Logger();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.deviceNewlyOnboarded(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 72) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  type metadata accessor for CloudManager();
  lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, &type metadata accessor for CloudManager);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(specialized MOProcessingServer.deviceNewlyOnboarded(), v3, v2);
}

{
  *(v0 + 80) = CloudManager.newlyOnboardedDevices.getter();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = specialized MOProcessingServer.deviceNewlyOnboarded();

  return CloudManager.getDeviceDB()();
}

{
  if (*(v0 + 96))
  {
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB);
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(specialized MOProcessingServer.deviceNewlyOnboarded(), v2, v1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(0, 0xE000000000000000);
  }
}

{
  CloudDevicesDB.currentDevice.getter();
  CloudDevicesDB.primaryDevice.getter();
  CloudDevicesDB.nominatedDevice.getter();

  return _swift_task_switch(specialized MOProcessingServer.deviceNewlyOnboarded(), 0, 0);
}

{
  v26 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v3[1] = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  v3[2].i64[0] = v2;
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9MomentsUI11CloudDeviceVG_SSs5NeverOTg5(partial apply for closure #1 in MOProcessingServer.deviceNewlyOnboarded(), v3, v1);

  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 24);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v11 = 136446466;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x80000001002B9BF0, v25);
    *(v11 + 12) = 2080;
    v12 = Array.description.getter();
    v23 = v9;
    v13 = v4;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v25);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "MOProcessingServer.%{public}s result = %s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v8 + 8))(v23, v10);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
    v13 = v4;
  }

  v24 = *(v0 + 64);
  v17 = *(v0 + 48);
  v16 = *(v0 + 56);
  *(v0 + 16) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v17, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v24, &_s9MomentsUI11CloudDeviceVSgMd);

  v21 = *(v0 + 8);

  return v21(v18, v20);
}

uint64_t specialized MOProcessingServer.deviceNewlyOnboarded()(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(specialized MOProcessingServer.deviceNewlyOnboarded(), 0, 0);
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for CloudDevice.Capability();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      specialized Set._Variant.insert(_:)(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t specialized MOProcessingServer.cap()()
{
  v1 = type metadata accessor for Logger();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v0[6] = swift_task_alloc();
  v2 = type metadata accessor for CloudDevice.Capability();
  v0[7] = v2;
  v0[8] = *(v2 - 8);
  v0[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceV10CapabilityOSgMd);
  v0[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.cap(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 104) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = specialized MOProcessingServer.cap();

  return CloudManager.getDeviceDB()();
}

{
  v71 = v0;
  if (*(v0 + 120))
  {
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB);

    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(specialized MOProcessingServer.cap(), v2, v1);
  }

  v3 = *(v0 + 96);
  v4 = type metadata accessor for CloudDevice();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 1, 1, v4);
  v6 = *(v0 + 88);
  outlined init with copy of (String, Date?)(*(v0 + 96), v6, &_s9MomentsUI11CloudDeviceVSgMd);
  v7 = (*(v5 + 48))(v6, 1, v4);
  v8 = *(v0 + 88);
  if (v7 == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 88), &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_8:

    v9 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  v9 = CloudDevice.deviceCapabilities.getter();
  (*(v5 + 8))(v8, v4);
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = static DefaultsManager.Cloud.capabilitiesMock.getter();
  v11 = static DefaultsManager.Cloud.capabilitiesBlock.getter();
  v12 = static DefaultsManager.Cloud.capabilitiesForce.getter();
  if (v10)
  {

    v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11CloudDeviceV10CapabilityO_SayAHGTt0g5Tf4g_n(v10);
  }

  else
  {
    v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11CloudDeviceV10CapabilityO_SayAHGTt0g5Tf4g_n(v9);
  }

  v69 = v13;
  if (v11)
  {
    if (*(v13 + 16))
    {
      v14 = *(v11 + 16);
      if (v14)
      {
        v15 = *(v0 + 64);
        v16 = v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v17 = *(v15 + 72);

        do
        {
          v18 = *(v0 + 80);
          specialized Set._Variant.remove(_:)(v16, v18);
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v18, &_s9MomentsUI11CloudDeviceV10CapabilityOSgMd);
          v16 += v17;
          --v14;
        }

        while (v14);
      }
    }
  }

  if (v12)
  {

    specialized Set.formUnion<A>(_:)(v19);
  }

  v20 = *(v69 + 16);
  v21 = _swiftEmptyArrayStorage;
  v68 = v0;
  if (v20)
  {
    v22 = *(v0 + 64);
    v21 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9MomentsUI11CloudDeviceV10CapabilityO_Tt1g5(v20, 0);
    v23 = specialized Sequence._copySequenceContents(initializing:)(&v70, &v21[(*(v22 + 80) + 32) & ~*(v22 + 80)], v20, v69);

    outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant();
    if (v23 != v20)
    {
      __break(1u);
    }

    v0 = v68;
  }

  v70 = v21;
  specialized MutableCollection<>.sort(by:)(&v70);

  v24 = v70;
  v25 = v70[2];
  if (v25)
  {
    v26 = *(v0 + 64);
    v70 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    v27 = v70;
    v28 = *(v26 + 16);
    v26 += 16;
    v29 = v24 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v64 = *(v26 + 56);
    v66 = v28;
    v30 = (v26 - 8);
    do
    {
      v31 = *(v0 + 72);
      v32 = *(v0 + 56);
      v66(v31, v29, v32);
      v33 = CloudDevice.Capability.rawValue.getter();
      v35 = v34;
      (*v30)(v31, v32);
      v70 = v27;
      v37 = v27[2];
      v36 = v27[3];
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v27 = v70;
      }

      v27[2] = v37 + 1;
      v38 = &v27[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
      v29 += v64;
      --v25;
      v0 = v68;
    }

    while (v25);
  }

  v39 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v41 = [v39 dataWithJSONObject:isa options:0 error:v0 + 16];

  v42 = *(v0 + 16);
  if (v41)
  {
    v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    static String.Encoding.utf8.getter();
    v46 = String.init(data:encoding:)();
    if (v47)
    {
      v48 = v46;
    }

    else
    {
      v48 = 0;
    }

    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = 0xE000000000000000;
    }

    type metadata accessor for CommonLogger();
    static CommonLogger.cloud.getter();

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 96);
    v54 = *(v0 + 32);
    v67 = *(v0 + 40);
    v55 = *(v0 + 24);
    v65 = v48;
    if (v52)
    {
      v63 = v55;
      v56 = v48;
      v57 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v57 = 136446466;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2928706163, 0xE500000000000000, &v70);
      *(v57 + 12) = 2080;
      *(v57 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v49, &v70);
      _os_log_impl(&_mh_execute_header, v50, v51, "MOProcessingServer.%{public}s result = %s", v57, 0x16u);
      swift_arrayDestroy();

      outlined consume of Data._Representation(v43, v45);

      (*(v54 + 8))(v67, v63);
    }

    else
    {
      outlined consume of Data._Representation(v43, v45);

      (*(v54 + 8))(v67, v55);
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v53, &_s9MomentsUI11CloudDeviceVSgMd);

    v61 = *(v68 + 8);

    return v61(v65, v49);
  }

  else
  {
    v58 = *(v0 + 96);
    v59 = v42;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v58, &_s9MomentsUI11CloudDeviceVSgMd);

    v60 = *(v68 + 8);

    return v60();
  }
}

{
  CloudDevicesDB.currentDevice.getter();

  return _swift_task_switch(specialized MOProcessingServer.cap(), 0, 0);
}

{
  v68 = v0;
  v1 = *(v0 + 88);
  outlined init with copy of (String, Date?)(*(v0 + 96), v1, &_s9MomentsUI11CloudDeviceVSgMd);
  v2 = type metadata accessor for CloudDevice();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 88);
  if (v4 == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 88), &_s9MomentsUI11CloudDeviceVSgMd);
  }

  else
  {
    v6 = CloudDevice.deviceCapabilities.getter();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_5:
  v7 = static DefaultsManager.Cloud.capabilitiesMock.getter();
  v8 = static DefaultsManager.Cloud.capabilitiesBlock.getter();
  v9 = static DefaultsManager.Cloud.capabilitiesForce.getter();
  if (v7)
  {

    v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11CloudDeviceV10CapabilityO_SayAHGTt0g5Tf4g_n(v7);
  }

  else
  {
    v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11CloudDeviceV10CapabilityO_SayAHGTt0g5Tf4g_n(v6);
  }

  v66 = v10;
  if (v8)
  {
    if (*(v10 + 16))
    {
      v11 = *(v8 + 16);
      if (v11)
      {
        v12 = *(v0 + 64);
        v13 = v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v14 = *(v12 + 72);

        do
        {
          v15 = *(v0 + 80);
          specialized Set._Variant.remove(_:)(v13, v15);
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v15, &_s9MomentsUI11CloudDeviceV10CapabilityOSgMd);
          v13 += v14;
          --v11;
        }

        while (v11);
      }
    }
  }

  if (v9)
  {

    specialized Set.formUnion<A>(_:)(v16);
  }

  v17 = *(v66 + 16);
  v18 = _swiftEmptyArrayStorage;
  v65 = v0;
  if (v17)
  {
    v19 = *(v0 + 64);
    v18 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9MomentsUI11CloudDeviceV10CapabilityO_Tt1g5(v17, 0);
    v20 = specialized Sequence._copySequenceContents(initializing:)(&v67, &v18[(*(v19 + 80) + 32) & ~*(v19 + 80)], v17, v66);

    outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant();
    if (v20 != v17)
    {
      __break(1u);
    }

    v0 = v65;
  }

  v67 = v18;
  specialized MutableCollection<>.sort(by:)(&v67);

  v21 = v67;
  v22 = v67[2];
  if (v22)
  {
    v23 = *(v0 + 64);
    v67 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v24 = v67;
    v25 = *(v23 + 16);
    v23 += 16;
    v26 = v21 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v61 = *(v23 + 56);
    v63 = v25;
    v27 = (v23 - 8);
    do
    {
      v28 = *(v0 + 72);
      v29 = *(v0 + 56);
      v63(v28, v26, v29);
      v30 = CloudDevice.Capability.rawValue.getter();
      v32 = v31;
      (*v27)(v28, v29);
      v67 = v24;
      v34 = v24[2];
      v33 = v24[3];
      if (v34 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v24 = v67;
      }

      v24[2] = v34 + 1;
      v35 = &v24[2 * v34];
      v35[4] = v30;
      v35[5] = v32;
      v26 += v61;
      --v22;
      v0 = v65;
    }

    while (v22);
  }

  v36 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v38 = [v36 dataWithJSONObject:isa options:0 error:v0 + 16];

  v39 = *(v0 + 16);
  if (v38)
  {
    v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    static String.Encoding.utf8.getter();
    v43 = String.init(data:encoding:)();
    if (v44)
    {
      v45 = v43;
    }

    else
    {
      v45 = 0;
    }

    if (v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0xE000000000000000;
    }

    type metadata accessor for CommonLogger();
    static CommonLogger.cloud.getter();

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 96);
    v51 = *(v0 + 32);
    v64 = *(v0 + 40);
    v52 = *(v0 + 24);
    v62 = v45;
    if (v49)
    {
      v60 = v52;
      v53 = v45;
      v54 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v54 = 136446466;
      *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2928706163, 0xE500000000000000, &v67);
      *(v54 + 12) = 2080;
      *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v46, &v67);
      _os_log_impl(&_mh_execute_header, v47, v48, "MOProcessingServer.%{public}s result = %s", v54, 0x16u);
      swift_arrayDestroy();

      outlined consume of Data._Representation(v40, v42);

      (*(v51 + 8))(v64, v60);
    }

    else
    {
      outlined consume of Data._Representation(v40, v42);

      (*(v51 + 8))(v64, v52);
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v50, &_s9MomentsUI11CloudDeviceVSgMd);

    v59 = *(v65 + 8);

    return v59(v62, v46);
  }

  else
  {
    v55 = *(v0 + 96);
    v56 = v39;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v55, &_s9MomentsUI11CloudDeviceVSgMd);

    v57 = *(v65 + 8);

    return v57();
  }
}

uint64_t specialized MOProcessingServer.cap()(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return _swift_task_switch(specialized MOProcessingServer.cap(), 0, 0);
}

uint64_t specialized MOProcessingServer.capList()()
{
  v1 = type metadata accessor for CloudDevice.Capability();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.capList(), 0, 0);
}

{
  v1 = static CloudDevice.Capability.allCases.getter();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[3];
    v4 = *(v3 + 16);
    v3 += 16;
    v35 = v4;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v34 = (v3 + 72);
    v6 = (v3 - 8);
    v33 = *(v3 + 56);
    v32 = enum case for CloudDevice.Capability.neverOnboarded(_:);
    v30 = enum case for CloudDevice.Capability.lowCloudStorage(_:);
    v31 = enum case for CloudDevice.Capability.lowLocalStorage(_:);
    v29 = enum case for CloudDevice.Capability.noProviders(_:);
    v28 = enum case for CloudDevice.Capability.iCPL(_:);
    v27 = enum case for CloudDevice.Capability.Health(_:);
    v26 = enum case for CloudDevice.Capability.assetRouteBlob(_:);
    v25 = enum case for CloudDevice.Capability.debugStale(_:);
    v7 = 1;
    do
    {
      v16 = v0[4];
      v15 = v0[5];
      v17 = v0[2];
      v35(v15, v5, v17);
      v35(v16, v15, v17);
      v18 = (*v34)(v16, v17);
      v19 = 0xD000000000000021;
      v20 = 0x80000001002B9BC0;
      if (v18 != v32)
      {
        if (v18 == v31)
        {
          v19 = 0xD000000000000018;
          v20 = 0x80000001002B9BA0;
          if ((v7 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_3;
        }

        if (v18 == v30)
        {
          v19 = 0xD000000000000039;
          v20 = 0x80000001002B9B60;
          if ((v7 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_3;
        }

        if (v18 == v29)
        {
          v19 = 0xD000000000000022;
          v20 = 0x80000001002B9B30;
          if ((v7 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_3;
        }

        v20 = 0x80000001002B9B00;
        if (v18 != v28)
        {
          if (v18 == v27)
          {
            v19 = 0xD000000000000013;
            v20 = 0x80000001002B9AE0;
            if ((v7 & 1) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_3;
          }

          if (v18 == v26)
          {
            v19 = 0xD000000000000020;
            v20 = 0x80000001002B9A60;
            if ((v7 & 1) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_3;
          }

          if (v18 != v25)
          {
            (*v6)(v0[4], v0[2]);
            v20 = 0xE90000000000003ELL;
            v19 = 0x6E776F6E6B6E753CLL;
            if (v7)
            {
              goto LABEL_3;
            }

LABEL_24:
            v21._countAndFlagsBits = 538970668;
            v21._object = 0xE400000000000000;
            String.append(_:)(v21);
            goto LABEL_3;
          }

          v19 = 0xD000000000000041;
          v20 = 0x80000001002B9A90;
        }
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_3:
      v8 = v0[5];
      v9 = v0[2];
      v10._countAndFlagsBits = CloudDevice.Capability.rawValue.getter();
      String.append(_:)(v10);

      v11._countAndFlagsBits = 0x22203A2022;
      v11._object = 0xE500000000000000;
      String.append(_:)(v11);
      v12._countAndFlagsBits = v19;
      v12._object = v20;
      String.append(_:)(v12);

      v13._countAndFlagsBits = 34;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = 34;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      (*v6)(v8, v9);
      v7 = 0;
      v5 += v33;
      --v2;
    }

    while (v2);
  }

  v22._countAndFlagsBits = 32032;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);

  v23 = v0[1];

  return v23(8315, 0xE200000000000000);
}

uint64_t specialized MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v7 = type metadata accessor for Logger();
  v6[31] = v7;
  v6[32] = *(v7 - 8);
  v6[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceV10CapabilityOSgMd);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v8 = type metadata accessor for CloudDevice.Capability();
  v6[37] = v8;
  v6[38] = *(v8 - 8);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v9 = type metadata accessor for String.Encoding();
  v6[48] = v9;
  v6[49] = *(v9 - 8);
  v6[50] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:), 0, 0);
}

uint64_t specialized MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:)()
{
  v241 = v0;
  v1 = v0[26];
  if (v1)
  {
    if (v1 == 0xE000000000000000 && !v0[25] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0[25] == 1819047278 && v0[26] == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0[25] == 7104878 && v0[26] == 0xE300000000000000)
    {
      v233 = 1;
      v2 = v0[28];
      if (v2)
      {
        goto LABEL_11;
      }

LABEL_32:
      v228 = 0;
      v3 = v0[30];
      if (v3)
      {
        goto LABEL_20;
      }

LABEL_33:
      v218 = 0;
      if (!v1)
      {
        goto LABEL_34;
      }

      goto LABEL_29;
    }

    v233 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v2 = v0[28];
    if (!v2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v233 = 0;
    v2 = v0[28];
    if (!v2)
    {
      goto LABEL_32;
    }
  }

LABEL_11:
  if ((v2 != 0xE000000000000000 || v0[27]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v0[27] != 1819047278 || v0[28] != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v0[27] != 7104878 || v0[28] != 0xE300000000000000))
  {
    v228 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v3 = v0[30];
    if (v3)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

  v228 = 1;
  v3 = v0[30];
  if (!v3)
  {
    goto LABEL_33;
  }

LABEL_20:
  if (v3 == 0xE000000000000000 && !v0[29] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0[29] == 1819047278 && v0[30] == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0[29] == 7104878 && v0[30] == 0xE300000000000000)
  {
    v218 = 1;
    if (v1)
    {
      goto LABEL_29;
    }

LABEL_34:
    v7 = 0;
    v9 = 0xF000000000000000;
    v0[51] = 0;
    v0[52] = 0xF000000000000000;
    if (v2)
    {
      goto LABEL_30;
    }

    goto LABEL_35;
  }

  v218 = _stringCompareWithSmolCheck(_:_:expecting:)();
  if (!v1)
  {
    goto LABEL_34;
  }

LABEL_29:
  v5 = v0[49];
  v4 = v0[50];
  v6 = v0[48];
  static String.Encoding.utf8.getter();
  v7 = String.data(using:allowLossyConversion:)();
  v9 = v8;
  (*(v5 + 8))(v4, v6);
  v0[51] = v7;
  v0[52] = v9;
  if (v2)
  {
LABEL_30:
    v11 = v0[49];
    v10 = v0[50];
    v12 = v0[48];
    static String.Encoding.utf8.getter();
    v13 = String.data(using:allowLossyConversion:)();
    v15 = v14;
    (*(v11 + 8))(v10, v12);
    goto LABEL_36;
  }

LABEL_35:
  v13 = 0;
  v15 = 0xF000000000000000;
LABEL_36:
  v239 = v15;
  v0[53] = v13;
  v0[54] = v15;
  if (v3)
  {
    v17 = v0[49];
    v16 = v0[50];
    v18 = v0[48];
    static String.Encoding.utf8.getter();
    v19 = String.data(using:allowLossyConversion:)();
    v21 = v20;
    (*(v17 + 8))(v16, v18);
  }

  else
  {
    v19 = 0;
    v21 = 0xF000000000000000;
  }

  v238 = v21;
  v227 = v19;
  v0[55] = v19;
  v0[56] = v21;
  if (v233 & 1 | (v9 >> 60 == 15))
  {
    countAndFlagsBits = 0;
  }

  else
  {
    v23 = objc_opt_self();
    outlined copy of Data._Representation(v7, v9);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[23] = 0;
    v25 = [v23 JSONObjectWithData:isa options:0 error:v0 + 23];

    v26 = v0[23];
    if (!v25)
    {
      v214 = v13;
      v42 = v26;
      outlined consume of Data?(v7, v9);
LABEL_66:
      _convertNSErrorToError(_:)();

      goto LABEL_67;
    }

    v27 = v26;
    _bridgeAnyObjectToAny(_:)();
    outlined consume of Data?(v7, v9);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    if (swift_dynamicCast())
    {
      countAndFlagsBits = v0[24];
    }

    else
    {
      countAndFlagsBits = 0;
    }
  }

  if (v228 & 1 | (v239 >> 60 == 15))
  {
    v28 = 0;
LABEL_51:
    if (v218 & 1 | (v238 >> 60 == 15))
    {
      v34 = 0;
      if (countAndFlagsBits)
      {
        goto LABEL_53;
      }

      goto LABEL_61;
    }

    v214 = v13;
    v37 = objc_opt_self();
    outlined copy of Data._Representation(v227, v238);
    v38 = Data._bridgeToObjectiveC()().super.isa;
    v0[19] = 0;
    v39 = [v37 JSONObjectWithData:v38 options:0 error:v0 + 19];

    v40 = v0[19];
    if (v39)
    {
      v41 = v40;
      _bridgeAnyObjectToAny(_:)();
      outlined consume of Data?(v227, v238);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      if (swift_dynamicCast())
      {
        v34 = v0[20];
      }

      else
      {
        v34 = 0;
      }

      v13 = v214;
      if (countAndFlagsBits)
      {
LABEL_53:
        v240._countAndFlagsBits = countAndFlagsBits;

        specialized MutableCollection<>.sort(by:)(&v240);

        countAndFlagsBits = v240._countAndFlagsBits;
        if (!v28)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

LABEL_61:
      if (!v28)
      {
LABEL_54:
        v35 = 0;
        v221 = 0;
        if (v34)
        {
LABEL_55:
          v240._countAndFlagsBits = v34;

          specialized MutableCollection<>.sort(by:)(&v240);

          v36 = v240._countAndFlagsBits;
          v35 = v221;
          goto LABEL_72;
        }

LABEL_71:
        v36 = 0;
LABEL_72:
        v203 = v9;
        v204 = v7;
        v215 = v13;
        v216 = v36;
        if (countAndFlagsBits)
        {
          v210 = *(countAndFlagsBits + 16);
          if (v210)
          {
            v46 = 0;
            v47 = v0[38];
            v48 = (v47 + 48);
            v205 = v47;
            v207 = (v47 + 32);
            v49 = countAndFlagsBits + 40;
            v50 = _swiftEmptyArrayStorage;
            while (v46 < *(countAndFlagsBits + 16))
            {
              v51 = countAndFlagsBits;
              v52 = v50;
              v54 = v0[36];
              v53 = v0[37];

              CloudDevice.Capability.init(rawValue:)();
              if ((*v48)(v54, 1, v53) == 1)
              {
                outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[36], &_s9MomentsUI11CloudDeviceV10CapabilityOSgMd);
                v50 = v52;
                countAndFlagsBits = v51;
              }

              else
              {
                v55 = *v207;
                (*v207)(v0[47], v0[36], v0[37]);
                v50 = v52;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1, v52);
                }

                countAndFlagsBits = v51;
                v57 = v50[2];
                v56 = v50[3];
                if (v57 >= v56 >> 1)
                {
                  v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v56 > 1, v57 + 1, 1, v50);
                }

                v58 = v0[47];
                v59 = v0[37];
                v50[2] = v57 + 1;
                v55(v50 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v57, v58, v59);
              }

              ++v46;
              v49 += 16;
              if (v210 == v46)
              {
                goto LABEL_88;
              }
            }

            __break(1u);
            goto LABEL_207;
          }

          v50 = _swiftEmptyArrayStorage;
LABEL_88:
          v206 = v50;

          v36 = v216;
          v35 = v221;
          if (v221)
          {
LABEL_89:
            v211 = *(v35 + 16);
            if (v211)
            {
              v60 = 0;
              v61 = v0[38];
              v62 = (v61 + 48);
              v209 = v61;
              v63 = (v61 + 32);
              v64 = v35 + 40;
              v65 = _swiftEmptyArrayStorage;
              while (v60 < *(v35 + 16))
              {
                v66 = v0[37];
                v67 = v0[35];

                CloudDevice.Capability.init(rawValue:)();
                if ((*v62)(v67, 1, v66) == 1)
                {
                  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[35], &_s9MomentsUI11CloudDeviceV10CapabilityOSgMd);
                }

                else
                {
                  v68 = *v63;
                  (*v63)(v0[46], v0[35], v0[37]);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
                  }

                  v70 = *(v65 + 2);
                  v69 = *(v65 + 3);
                  if (v70 >= v69 >> 1)
                  {
                    v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v69 > 1, v70 + 1, 1, v65);
                  }

                  v71 = v0[46];
                  v72 = v0[37];
                  *(v65 + 2) = v70 + 1;
                  v68(&v65[((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v70], v71, v72);
                }

                ++v60;
                v64 += 16;
                v35 = v221;
                if (v211 == v60)
                {
                  goto LABEL_101;
                }
              }

LABEL_207:
              __break(1u);
              goto LABEL_208;
            }

            v65 = _swiftEmptyArrayStorage;
LABEL_101:
            v208 = v65;

            v36 = v216;
            if (v216)
            {
              goto LABEL_102;
            }

            goto LABEL_86;
          }
        }

        else
        {
          v206 = 0;
          if (v35)
          {
            goto LABEL_89;
          }
        }

        v208 = 0;
        if (v36)
        {
LABEL_102:
          v222 = *(v36 + 16);
          if (v222)
          {
            v73 = 0;
            v74 = v0[38];
            v75 = (v74 + 48);
            v212 = v74;
            v76 = (v74 + 32);
            v77 = v36 + 40;
            v78 = _swiftEmptyArrayStorage;
            while (v73 < *(v36 + 16))
            {
              v79 = v0[37];
              v80 = v0[34];

              CloudDevice.Capability.init(rawValue:)();
              if ((*v75)(v80, 1, v79) == 1)
              {
                outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[34], &_s9MomentsUI11CloudDeviceV10CapabilityOSgMd);
              }

              else
              {
                v81 = *v76;
                (*v76)(v0[45], v0[34], v0[37]);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
                }

                v83 = *(v78 + 2);
                v82 = *(v78 + 3);
                if (v83 >= v82 >> 1)
                {
                  v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v82 > 1, v83 + 1, 1, v78);
                }

                v84 = v0[45];
                v85 = v0[37];
                *(v78 + 2) = v83 + 1;
                v81(&v78[((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v83], v84, v85);
              }

              ++v73;
              v77 += 16;
              v36 = v216;
              if (v222 == v73)
              {
                goto LABEL_114;
              }
            }

LABEL_208:
            __break(1u);
          }

          v78 = _swiftEmptyArrayStorage;
LABEL_114:
          v217 = v78;

LABEL_115:
          if (v233 & 1 | (v206 != 0))
          {

            static DefaultsManager.Cloud.capabilitiesMock.setter();
            if (v206)
            {
              v86 = v206[2];
              if (v86)
              {
                v87 = v0[38];
                v89 = *(v87 + 16);
                v88 = v87 + 16;
                v234 = v89;
                v90 = v206 + ((*(v88 + 64) + 32) & ~*(v88 + 64));
                v223 = *(v88 + 56);
                v91 = _swiftEmptyArrayStorage;
                do
                {
                  v92 = v0[44];
                  v93 = v0[37];
                  v234(v92, v90, v93);
                  v94 = CloudDevice.Capability.rawValue.getter();
                  v96 = v95;
                  (*(v88 - 8))(v92, v93);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v91 + 2) + 1, 1, v91);
                  }

                  v98 = *(v91 + 2);
                  v97 = *(v91 + 3);
                  if (v98 >= v97 >> 1)
                  {
                    v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v91);
                  }

                  *(v91 + 2) = v98 + 1;
                  v99 = &v91[16 * v98];
                  *(v99 + 4) = v94;
                  *(v99 + 5) = v96;
                  v90 += v223;
                  --v86;
                }

                while (v86);
LABEL_133:
                v213 = v91;
LABEL_136:

LABEL_137:
                if (v228 & 1 | (v208 != 0))
                {

                  static DefaultsManager.Cloud.capabilitiesBlock.setter();
                  if (v208)
                  {
                    v114 = v208[2];
                    if (v114)
                    {
                      v115 = v0[38];
                      v116 = *(v115 + 16);
                      v115 += 16;
                      v117 = v208 + ((*(v115 + 64) + 32) & ~*(v115 + 64));
                      v229 = *(v115 + 56);
                      v236 = v116;
                      v118 = (v115 - 8);
                      v119 = _swiftEmptyArrayStorage;
                      do
                      {
                        v120 = v0[42];
                        v121 = v0[37];
                        v236(v120, v117, v121);
                        v122 = CloudDevice.Capability.rawValue.getter();
                        v124 = v123;
                        (*v118)(v120, v121);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v119 + 2) + 1, 1, v119);
                        }

                        v126 = *(v119 + 2);
                        v125 = *(v119 + 3);
                        if (v126 >= v125 >> 1)
                        {
                          v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v126 + 1, 1, v119);
                        }

                        *(v119 + 2) = v126 + 1;
                        v127 = &v119[16 * v126];
                        *(v127 + 4) = v122;
                        *(v127 + 5) = v124;
                        v117 += v229;
                        --v114;
                      }

                      while (v114);
                      goto LABEL_158;
                    }

LABEL_157:
                    v119 = _swiftEmptyArrayStorage;
LABEL_158:

LABEL_159:
                    v142 = v218 | (v217 != 0);
                    if (v218 & 1 | (v217 != 0))
                    {

                      static DefaultsManager.Cloud.capabilitiesForce.setter();
                      if (v217)
                      {
                        v143 = v217[2];
                        if (v143)
                        {
                          v219 = v218 | (v217 != 0);
                          v144 = v0[38];
                          v231 = *(v144 + 16);
                          v145 = v217 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
                          v225 = *(v144 + 72);
                          v146 = (v144 + 8);
                          v147 = _swiftEmptyArrayStorage;
                          do
                          {
                            v148 = v0[40];
                            v149 = v0[37];
                            v231(v148, v145, v149);
                            v150 = CloudDevice.Capability.rawValue.getter();
                            v152 = v151;
                            (*v146)(v148, v149);
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v147 + 2) + 1, 1, v147);
                            }

                            v154 = *(v147 + 2);
                            v153 = *(v147 + 3);
                            if (v154 >= v153 >> 1)
                            {
                              v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v153 > 1), v154 + 1, 1, v147);
                            }

                            *(v147 + 2) = v154 + 1;
                            v155 = &v147[16 * v154];
                            *(v155 + 4) = v150;
                            *(v155 + 5) = v152;
                            v145 += v225;
                            --v143;
                          }

                          while (v143);
LABEL_177:
                          v142 = v219;
LABEL_180:

LABEL_181:
                          v0[14] = 8315;
                          v0[15] = 0xE200000000000000;
                          if (v213)
                          {
                            strcpy(&v240, "mock : [ ");
                            HIDWORD(v240._object) = -352321536;
                            v0[18] = v213;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
                            lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
                            v169 = BidirectionalCollection<>.joined(separator:)();
                            v171 = v170;

                            v172._countAndFlagsBits = v169;
                            v172._object = v171;
                            String.append(_:)(v172);

                            v173._countAndFlagsBits = 23840;
                            v173._object = 0xE200000000000000;
                            String.append(_:)(v173);
                            String.append(_:)(v240);

                            if (!v119)
                            {
LABEL_186:
                              if (!v147)
                              {
LABEL_189:
                                v186._countAndFlagsBits = 32032;
                                v186._object = 0xE200000000000000;
                                String.append(_:)(v186);
                                type metadata accessor for CommonLogger();
                                static CommonLogger.cloud.getter();
                                v187 = v0[14];
                                v188 = v0[15];
                                v0[57] = v187;
                                v0[58] = v188;

                                v189 = Logger.logObject.getter();
                                v190 = static os_log_type_t.default.getter();

                                v191 = os_log_type_enabled(v189, v190);
                                v193 = v0[32];
                                v192 = v0[33];
                                v194 = v0[31];
                                if (v191)
                                {
                                  v220 = v142;
                                  v195 = swift_slowAlloc();
                                  v240._countAndFlagsBits = swift_slowAlloc();
                                  *v195 = 136446466;
                                  *(v195 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001002B9A30, &v240._countAndFlagsBits);
                                  *(v195 + 12) = 2080;
                                  *(v195 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v188, &v240._countAndFlagsBits);
                                  _os_log_impl(&_mh_execute_header, v189, v190, "MOProcessingServer.%{public}s result = %s", v195, 0x16u);
                                  swift_arrayDestroy();

                                  v142 = v220;
                                }

                                (*(v193 + 8))(v192, v194);
                                if (v142)
                                {
                                  type metadata accessor for MomentsUIManager();
                                  v196 = static MomentsUIManager.shared.getter();
                                  v0[59] = dispatch thunk of MomentsUIManager.cloudManager.getter();

                                  v197 = swift_task_alloc();
                                  v0[60] = v197;
                                  v198 = type metadata accessor for CloudManager();
                                  v199 = lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, &type metadata accessor for CloudManager);
                                  *v197 = v0;
                                  v197[1] = specialized MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:);

                                  return CloudManagerProtocol.refresh(force:wait:_:_:)(1, 0, 0xD000000000000025, 0x80000001002B9A30, 689, v198, v199);
                                }

                                else
                                {
                                  outlined consume of Data?(v204, v203);
                                  outlined consume of Data?(v215, v239);
                                  outlined consume of Data?(v227, v238);

                                  v200 = v0[1];
                                  v201 = v0[57];
                                  v202 = v0[58];

                                  return v200(v201, v202);
                                }
                              }

                              v180._countAndFlagsBits = 538970668;
                              v180._object = 0xE400000000000000;
                              String.append(_:)(v180);
LABEL_188:
                              v240._countAndFlagsBits = 0;
                              v240._object = 0xE000000000000000;
                              _StringGuts.grow(_:)(16);

                              strcpy(&v240, "force : [ ");
                              BYTE5(v240._object) = 0;
                              HIWORD(v240._object) = -5120;
                              v0[16] = v147;
                              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
                              lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
                              v181 = BidirectionalCollection<>.joined(separator:)();
                              v183 = v182;

                              v184._countAndFlagsBits = v181;
                              v184._object = v183;
                              String.append(_:)(v184);

                              v185._countAndFlagsBits = 23840;
                              v185._object = 0xE200000000000000;
                              String.append(_:)(v185);
                              String.append(_:)(v240);

                              goto LABEL_189;
                            }

                            v174._countAndFlagsBits = 538970668;
                            v174._object = 0xE400000000000000;
                            String.append(_:)(v174);
                          }

                          else if (!v119)
                          {
                            if (!v147)
                            {
                              goto LABEL_189;
                            }

                            goto LABEL_188;
                          }

                          v240._countAndFlagsBits = 0;
                          v240._object = 0xE000000000000000;
                          _StringGuts.grow(_:)(16);

                          strcpy(&v240, "block : [ ");
                          BYTE5(v240._object) = 0;
                          HIWORD(v240._object) = -5120;
                          v0[17] = v119;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
                          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
                          v175 = BidirectionalCollection<>.joined(separator:)();
                          v177 = v176;

                          v178._countAndFlagsBits = v175;
                          v178._object = v177;
                          String.append(_:)(v178);

                          v179._countAndFlagsBits = 23840;
                          v179._object = 0xE200000000000000;
                          String.append(_:)(v179);
                          String.append(_:)(v240);

                          goto LABEL_186;
                        }

                        goto LABEL_179;
                      }
                    }

                    else
                    {
                      v156 = static DefaultsManager.Cloud.capabilitiesForce.getter();
                      if (v156)
                      {
                        v157 = *(v156 + 16);
                        if (v157)
                        {
                          v219 = v218 | (v217 != 0);
                          v158 = v0[38];
                          v232 = *(v158 + 16);
                          v159 = v156 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
                          v226 = *(v158 + 72);
                          v160 = (v158 + 8);
                          v147 = _swiftEmptyArrayStorage;
                          do
                          {
                            v161 = v0[39];
                            v162 = v0[37];
                            v232(v161, v159, v162);
                            v163 = CloudDevice.Capability.rawValue.getter();
                            v165 = v164;
                            (*v160)(v161, v162);
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v147 + 2) + 1, 1, v147);
                            }

                            v167 = *(v147 + 2);
                            v166 = *(v147 + 3);
                            if (v167 >= v166 >> 1)
                            {
                              v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v166 > 1), v167 + 1, 1, v147);
                            }

                            *(v147 + 2) = v167 + 1;
                            v168 = &v147[16 * v167];
                            *(v168 + 4) = v163;
                            *(v168 + 5) = v165;
                            v159 += v226;
                            --v157;
                          }

                          while (v157);
                          goto LABEL_177;
                        }

LABEL_179:
                        v147 = _swiftEmptyArrayStorage;
                        goto LABEL_180;
                      }
                    }

                    v147 = 0;
                    goto LABEL_181;
                  }
                }

                else
                {
                  v128 = static DefaultsManager.Cloud.capabilitiesBlock.getter();
                  if (v128)
                  {
                    v129 = *(v128 + 16);
                    if (v129)
                    {
                      v130 = v0[38];
                      v131 = *(v130 + 16);
                      v130 += 16;
                      v132 = v128 + ((*(v130 + 64) + 32) & ~*(v130 + 64));
                      v230 = *(v130 + 56);
                      v237 = v131;
                      v133 = (v130 - 8);
                      v119 = _swiftEmptyArrayStorage;
                      do
                      {
                        v134 = v0[41];
                        v135 = v0[37];
                        v237(v134, v132, v135);
                        v136 = CloudDevice.Capability.rawValue.getter();
                        v138 = v137;
                        (*v133)(v134, v135);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v119 + 2) + 1, 1, v119);
                        }

                        v140 = *(v119 + 2);
                        v139 = *(v119 + 3);
                        if (v140 >= v139 >> 1)
                        {
                          v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v139 > 1), v140 + 1, 1, v119);
                        }

                        *(v119 + 2) = v140 + 1;
                        v141 = &v119[16 * v140];
                        *(v141 + 4) = v136;
                        *(v141 + 5) = v138;
                        v132 += v230;
                        --v129;
                      }

                      while (v129);
                      goto LABEL_158;
                    }

                    goto LABEL_157;
                  }
                }

                v119 = 0;
                goto LABEL_159;
              }

              goto LABEL_135;
            }
          }

          else
          {
            v100 = static DefaultsManager.Cloud.capabilitiesMock.getter();
            if (v100)
            {
              v101 = *(v100 + 16);
              if (v101)
              {
                v102 = v0[38];
                v104 = *(v102 + 16);
                v103 = v102 + 16;
                v235 = v104;
                v105 = v100 + ((*(v103 + 64) + 32) & ~*(v103 + 64));
                v224 = *(v103 + 56);
                v91 = _swiftEmptyArrayStorage;
                do
                {
                  v106 = v0[43];
                  v107 = v0[37];
                  v235(v106, v105, v107);
                  v108 = CloudDevice.Capability.rawValue.getter();
                  v110 = v109;
                  (*(v103 - 8))(v106, v107);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v91 + 2) + 1, 1, v91);
                  }

                  v112 = *(v91 + 2);
                  v111 = *(v91 + 3);
                  if (v112 >= v111 >> 1)
                  {
                    v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v112 + 1, 1, v91);
                  }

                  *(v91 + 2) = v112 + 1;
                  v113 = &v91[16 * v112];
                  *(v113 + 4) = v108;
                  *(v113 + 5) = v110;
                  v105 += v224;
                  --v101;
                }

                while (v101);
                goto LABEL_133;
              }

LABEL_135:
              v213 = _swiftEmptyArrayStorage;
              goto LABEL_136;
            }
          }

          v213 = 0;
          goto LABEL_137;
        }

LABEL_86:
        v217 = 0;
        goto LABEL_115;
      }

LABEL_62:
      v240._countAndFlagsBits = v28;

      specialized MutableCollection<>.sort(by:)(&v240);

      v35 = v240._countAndFlagsBits;
      v221 = v240._countAndFlagsBits;
      if (v34)
      {
        goto LABEL_55;
      }

      goto LABEL_71;
    }

    v42 = v40;
    outlined consume of Data?(v227, v238);

    goto LABEL_66;
  }

  v29 = objc_opt_self();
  outlined copy of Data._Representation(v13, v239);
  v30 = Data._bridgeToObjectiveC()().super.isa;
  v0[21] = 0;
  v31 = [v29 JSONObjectWithData:v30 options:0 error:v0 + 21];

  v32 = v0[21];
  if (v31)
  {
    v33 = v32;
    _bridgeAnyObjectToAny(_:)();
    outlined consume of Data?(v13, v239);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    if (swift_dynamicCast())
    {
      v28 = v0[22];
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_51;
  }

  v43 = v32;
  v214 = v13;
  outlined consume of Data?(v13, v239);

  _convertNSErrorToError(_:)();

LABEL_67:
  swift_willThrow();
  outlined consume of Data?(v7, v9);
  outlined consume of Data?(v214, v239);
  outlined consume of Data?(v227, v238);

  v44 = v0[1];

  return v44();
}

{

  return _swift_task_switch(specialized MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:), 0, 0);
}

{
  v2 = v0[55];
  v1 = v0[56];
  v4 = v0[53];
  v3 = v0[54];
  outlined consume of Data?(v0[51], v0[52]);
  outlined consume of Data?(v4, v3);
  outlined consume of Data?(v2, v1);

  v5 = v0[1];
  v6 = v0[57];
  v7 = v0[58];

  return v5(v6, v7);
}

uint64_t specialized MOProcessingServer.capCommon()()
{
  v1 = type metadata accessor for Logger();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v0[6] = swift_task_alloc();
  v2 = type metadata accessor for CloudDevice.Capability();
  v0[7] = v2;
  v0[8] = *(v2 - 8);
  v0[9] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.capCommon(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 80) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = specialized MOProcessingServer.capCommon();

  return CloudManager.getDeviceDB()();
}

{
  if (*(v0 + 96))
  {
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB);
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(specialized MOProcessingServer.capCommon(), v2, v1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(0, 0xE000000000000000);
  }
}

{
  *(v0 + 104) = CloudDevicesDB.commonSecondaryCapabilities()();

  return _swift_task_switch(specialized MOProcessingServer.capCommon(), 0, 0);
}

{
  v49 = v0;
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0;
    v4 = *(v0 + 64);
    v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9MomentsUI11CloudDeviceV10CapabilityO_Tt1g5(*(v1 + 16), 0);
    v6 = specialized Sequence._copySequenceContents(initializing:)(&v48, &v5[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);

    outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant();
    if (v6 != v2)
    {
      __break(1u);
    }

    v0 = v3;
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v48 = v5;
  specialized MutableCollection<>.sort(by:)(&v48);
  v7 = v48;
  v8 = v48[2];
  if (v8)
  {
    v47 = v0;
    v9 = *(v0 + 64);
    v48 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v10 = v48;
    v11 = *(v9 + 16);
    v9 += 16;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v45 = *(v9 + 56);
    v46 = v11;
    v13 = (v9 - 8);
    do
    {
      v14 = *(v47 + 72);
      v15 = *(v47 + 56);
      v46(v14, v12, v15);
      v16 = CloudDevice.Capability.rawValue.getter();
      v18 = v17;
      (*v13)(v14, v15);
      v48 = v10;
      v20 = v10[2];
      v19 = v10[3];
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v10 = v48;
      }

      v10[2] = v20 + 1;
      v21 = &v10[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
      v12 += v45;
      --v8;
    }

    while (v8);

    v0 = v47;
  }

  else
  {
  }

  v22 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v24 = [v22 dataWithJSONObject:isa options:0 error:v0 + 16];

  v25 = *(v0 + 16);
  if (v24)
  {
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    static String.Encoding.utf8.getter();
    v29 = String.init(data:encoding:)();
    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0xE000000000000000;
    }

    type metadata accessor for CommonLogger();
    static CommonLogger.cloud.getter();

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    v35 = os_log_type_enabled(v33, v34);
    v37 = *(v0 + 32);
    v36 = *(v0 + 40);
    v38 = *(v0 + 24);
    if (v35)
    {
      v44 = *(v0 + 40);
      v39 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v39 = 136446466;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6F6D6D6F43706163, 0xEB0000000029286ELL, &v48);
      *(v39 + 12) = 2080;
      *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v48);
      _os_log_impl(&_mh_execute_header, v33, v34, "MOProcessingServer.%{public}s result = %s", v39, 0x16u);
      swift_arrayDestroy();

      outlined consume of Data._Representation(v26, v28);

      (*(v37 + 8))(v44, v38);
    }

    else
    {
      outlined consume of Data._Representation(v26, v28);

      (*(v37 + 8))(v36, v38);
    }

    v43 = *(v0 + 8);

    return v43(v31, v32);
  }

  else
  {
    v40 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t specialized MOProcessingServer.capCommon()(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(specialized MOProcessingServer.capCommon(), 0, 0);
}

uint64_t partial apply for closure #1 in MOProcessingServer.beginSystemTask(withTask:completionHandler:)(uint64_t a1)
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
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOProcessingServer.beginSystemTask(withTask:completionHandler:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in MOProcessingServer.continueSystemTask(withToken:completionHandler:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOProcessingServer.continueSystemTask(withToken:completionHandler:)(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t partial apply for closure #1 in MOProcessingServer.endSystemTask(withToken:completionHandler:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOProcessingServer.endSystemTask(withToken:completionHandler:)(a1, v7, v8, v9, v1 + v6, v11, v12);
}

void specialized MOProcessingServer.resetOnboardingDeferralCount(_:)(void *a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    if (v3 == 1)
    {
      [a1 integerValue];

      static DefaultsManager.SyncOnboarding.resetDeferralCount(_:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    [a1 integerValue];

    static DefaultsManager.Onboarding.resetDeferralCount(_:)();
  }
}

uint64_t partial apply for closure #1 in MOProcessingServer.setOnboarded(flag:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOProcessingServer.setOnboarded(flag:)(a1, v4, v5, v7, v6);
}

uint64_t sub_1001FE2D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t partial apply for closure #1 in MOProcessingServer.setNotificationSettingWith(_:shouldUpdateDefaults:completionHandler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOProcessingServer.setNotificationSettingWith(_:shouldUpdateDefaults:completionHandler:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001FE408()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t partial apply for closure #1 in MOProcessingServer.handleDefaultAppChange(toBundleID:handler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOProcessingServer.handleDefaultAppChange(toBundleID:handler:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in MOProcessingServer.getAuthorizedAppsForNotificationServicing(handler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOProcessingServer.getAuthorizedAppsForNotificationServicing(handler:)(a1, v4, v5, v6, v7, v8);
}

uint64_t specialized MOProcessingServer.getApplicationsWithDataAccess()()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.getApplicationsWithDataAccess(), 0, 0);
}

{
  v40 = v0;
  type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[MOProcessingServer] getApplicationsWithDataAccess", v4, 2u);
  }

  v5 = v0[6];
  v7 = v0[2];
  v6 = v0[3];

  v8 = *(v6 + 8);
  v8(v5, v7);
  v9 = specialized static MOAngelDefaultsManager.dictionaryValueFor(_:)();
  if (v9 && (v10 = v9, v11 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v9), , v11))
  {
    v37 = v8;
    v12 = 0;
    v13 = *(v11 + 64);
    v38 = _swiftEmptyArrayStorage;
    v39 = _swiftEmptyArrayStorage;
    v14 = -1;
    v15 = -1 << *(v11 + 32);
    if (-v15 < 64)
    {
      v14 = ~(-1 << -v15);
    }

    v16 = v14 & v13;
    v17 = (63 - v15) >> 6;
    if ((v14 & v13) == 0)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      while (1)
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v1 = *(*(v11 + 56) + 8 * (v18 | (v12 << 6)));
        v8 = objc_allocWithZone(type metadata accessor for ApprovedApplication());

        v10 = v8;
        v19 = ApprovedApplication.init(bundleID:timestamp:)();
        if (v19)
        {
          break;
        }

        if (!v16)
        {
          goto LABEL_10;
        }
      }

      v21 = v19;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v10 = &v39;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v38 = v39;
    }

    while (v16);
    while (1)
    {
LABEL_10:
      v20 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v20 >= v17)
      {
        break;
      }

      v16 = *(v11 + 64 + 8 * v20);
      ++v12;
      if (v16)
      {
        v12 = v20;
        goto LABEL_8;
      }
    }

    static CommonLogger.services.getter();

    v10 = Logger.logObject.getter();
    LOBYTE(v16) = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v16))
    {
      v1 = swift_slowAlloc();
      *v1 = 134217984;
      v8 = v37;
      if (!(v38 >> 62))
      {
        v29 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_24:
        v30 = v0[5];
        v31 = v0[2];
        *(v1 + 4) = v29;

        _os_log_impl(&_mh_execute_header, v10, v16, "[MOProcessingServer] result for dataAccess: %ld", v1, 0xCu);

        v8(v30, v31);
        goto LABEL_26;
      }

LABEL_31:
      v29 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_24;
    }

    v32 = v0[5];
    v33 = v0[2];

    v37(v32, v33);

LABEL_26:
    v34 = objc_allocWithZone(type metadata accessor for ApprovedApplicationList());
    v28 = ApprovedApplicationList.init(apps:)();
  }

  else
  {
    static CommonLogger.services.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[4];
    v26 = v0[2];
    if (v24)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "[MOProcessingServer] no defaults for authorizedAppsArray", v27, 2u);
    }

    v8(v25, v26);
    v28 = 0;
  }

  v35 = v0[1];

  return v35(v28);
}

void specialized MOProcessingServer.listener(_:didReceive:withContext:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v54 - v9;
  __chkstk_darwin(v8);
  v12 = &v54 - v11;
  type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[BSServiceConnectionHost] connection received", v15, 2u);
  }

  v16 = *(v5 + 8);
  v58 = v5 + 8;
  v59 = v4;
  v57 = v16;
  v16(v12, v4);
  static ViewServiceConstants.momentsUIServiceProcessorIdentifier.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = [objc_opt_self() interfaceWithIdentifier:v17];

  v19 = [objc_opt_self() protocolForProtocol:&OBJC_PROTOCOL____TtP9MomentsUI16ProcessingServer_];
  [v18 setServer:v19];

  swift_getObjectType();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v2;
  v20[4] = a1;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for closure #1 in MOProcessingServer.listener(_:didReceive:withContext:);
  *(v21 + 24) = v20;
  aBlock[4] = _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  aBlock[3] = &block_descriptor_721;
  v22 = _Block_copy(aBlock);
  v23 = v18;
  v24 = v2;
  v25 = a1;

  [v25 configureConnection:v22];
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    if (BSServiceConnectionHost.isEntitled.getter())
    {
      static CommonLogger.services.getter();
      v26 = v25;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v55 = v23;
        v29 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        aBlock[0] = v56;
        *v29 = 67109378;
        v30 = [v26 remoteToken];
        v31 = [v30 pid];

        *(v29 + 4) = v31;
        *(v29 + 8) = 2080;
        v32 = [v26 remoteToken];
        v33 = [v32 bundleID];

        if (v33)
        {
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;
        }

        else
        {
          v34 = 7104878;
          v36 = 0xE300000000000000;
        }

        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, aBlock);

        *(v29 + 10) = v51;
        _os_log_impl(&_mh_execute_header, v27, v28, "[BSServiceConnectionHost] valid connection, activating, processPID=%d, processBundleID=%s", v29, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v56);

        v57(v10, v59);
        v50 = &selRef_activate;
LABEL_17:
        v23 = v55;
        goto LABEL_18;
      }

      v57(v10, v59);
      v50 = &selRef_activate;
    }

    else
    {
      v37 = v56;
      static CommonLogger.services.getter();
      v38 = v25;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v55 = v23;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        aBlock[0] = v42;
        *v41 = 67109378;
        v43 = [v38 remoteToken];
        v44 = [v43 pid];

        *(v41 + 4) = v44;
        *(v41 + 8) = 2080;
        v45 = [v38 remoteToken];
        v46 = [v45 bundleID];

        if (v46)
        {
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;
        }

        else
        {
          v47 = 7104878;
          v49 = 0xE300000000000000;
        }

        v52 = v59;
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, aBlock);

        *(v41 + 10) = v53;
        _os_log_impl(&_mh_execute_header, v39, v40, "[BSServiceConnectionHost] invalid entitlement, processPID=%d, processBundleID=%s", v41, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v42);

        v57(v56, v52);
        v50 = &selRef_invalidate;
        goto LABEL_17;
      }

      v57(v37, v59);
      v50 = &selRef_invalidate;
    }

LABEL_18:
    [v25 *v50];

    return;
  }

  __break(1u);
}

uint64_t sub_1001FF2B0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_1001FF30C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1001FF374@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_1001FF3D0(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x98);

  return v2(v3);
}

uint64_t sub_1001FF434@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.getApplicationsWithDataAccess()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.getApplicationsWithDataAccess()(v2);
}

uint64_t sub_1001FF5A8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.runNotificationServicing(for:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.runNotificationServicing(for:)(v2, v3, v4);
}

uint64_t objectdestroy_137Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.isUIActive()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.isUIActive()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.setOnboardedAsync(flag:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.setOnboardedAsync(flag:)(v2, v3, v4);
}

uint64_t objectdestroy_124Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t objectdestroy_120Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.capCommon()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.capCommon()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.capReset()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.capReset()(v2, v3);
}

uint64_t sub_1001FFAEC()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.capList()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.capList()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.cap()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.cap()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceNewlyOnboardedClear()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceNewlyOnboardedClear()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceNewlyOnboarded()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceNewlyOnboarded()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceNominateDeclineJSON()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceNominateDeclineJSON()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceNominateDecline()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceNominateDecline()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceNominateJSON(devicePrefix:bundleSuffix:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceNominateJSON(devicePrefix:bundleSuffix:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceNominate(devicePrefix:bundleSuffix:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceNominate(devicePrefix:bundleSuffix:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceAutoNominateJSON()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceAutoNominateJSON()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceAutoNominate()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceAutoNominate()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceAbdicatePrimaryJSON()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceAbdicatePrimaryJSON()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceAbdicatePrimary()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceAbdicatePrimary()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceMakePrimaryJSON()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceMakePrimaryJSON()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceMakePrimary()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceMakePrimary()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceListJSON()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceListJSON()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceList()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return @objc closure #1 in MOProcessingServer.deviceList()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.deviceRefresh()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.deviceRefresh()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.databaseSnapshotDelete(sequence:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.databaseSnapshotDelete(sequence:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.databaseSnapshotList()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.databaseSnapshotList()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.databaseWipe()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.databaseWipe()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.cloudCancelSync()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.cloudCancelSync()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.cloudSync()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.cloudSync()(v2);
}

uint64_t objectdestroy_191Tm()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.realTimeCheckForNotification(significantLocationEnabled:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.realTimeCheckForNotification(significantLocationEnabled:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.runFullProcessing()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.runFullProcessing()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.testInjectBadRecordChange()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.testInjectBadRecordChange()(v2);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.keepUIActive()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.keepUIActive()(v2);
}

uint64_t objectdestroy_163Tm()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in MOProcessingServer.keepProcessUp()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return @objc closure #1 in MOProcessingServer.keepProcessUp()(v2);
}

uint64_t sub_100200EF4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100200F48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_2(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of (String?, UInt64, UInt64?)?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100201118()
{
  v1 = type metadata accessor for CloudDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in static MOProcessingServer.sendAlertFor(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CloudDevice() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in static MOProcessingServer.sendAlertFor(_:)(a1, v6, v7, v1 + v5);
}

uint64_t sub_1002012CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #1 in closure #1 in MOProcessingServer.subscribeToCloudOnboardingChanges()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in closure #1 in MOProcessingServer.subscribeToCloudOnboardingChanges()();
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0(a1) & 1;
}

void thunk for @escaping @callee_guaranteed (@unowned MODatabaseUpgradeStatus, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t *MOEventBundleStore.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static MOEventBundleStore.shared;
}

BOOL MOEventBundle.recommendedEligible.getter()
{
  v1 = [v0 rankingDictionary];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v5 & 1) == 0))
  {

    outlined destroy of AnyHashable(v7);
LABEL_9:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v8);
  outlined destroy of AnyHashable(v7);

  if (!*(&v9 + 1))
  {
LABEL_10:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v8, &_sypSgMd);
    return 0;
  }

  return (swift_dynamicCast() & 1) != 0 && (v7[0] - 1) < 2;
}

uint64_t MOEventBundle.visibilityCategory.getter()
{
  v1 = [v0 rankingDictionary];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v8 = 0xD000000000000017;
  *(&v8 + 1) = 0x80000001002B6760;
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v5 & 1) == 0))
  {

    outlined destroy of AnyHashable(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v8);
  outlined destroy of AnyHashable(v7);

  if (!*(&v9 + 1))
  {
LABEL_9:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v8, &_sypSgMd);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v7[0];
  }

  return 0;
}

BOOL MOEventBundle.recentEligible.getter()
{
  v1 = [v0 rankingDictionary];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v5 & 1) == 0))
  {

    outlined destroy of AnyHashable(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v8);
  outlined destroy of AnyHashable(v7);

  if (!*(&v9 + 1))
  {
LABEL_9:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v8, &_sypSgMd);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return ((v7[0] - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  return 0;
}

double MOEventBundle.bundleRankingScore.getter(uint64_t a1)
{
  v3 = [v1 rankingDictionary];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v8 & 1) != 0))
    {
      outlined init with copy of Any(*(v6 + 56) + 32 * v7, v11);
      outlined destroy of AnyHashable(v10);

      if (swift_dynamicCast())
      {
        return *&a1;
      }
    }

    else
    {

      outlined destroy of AnyHashable(v10);
    }
  }

  return v4;
}

uint64_t MOEventBundleStore.__allocating_init()()
{
  v0 = swift_allocObject();
  MOEventBundleStore.init()();
  return v0;
}

uint64_t static MOEventBundleStore.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for defaultQueue()
{
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v5 - 8);
  __chkstk_darwin();
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v4[1] = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.userInteractive.getter();
  v6 = &_swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v5);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static MOEventBundleStore.defaultQueue = result;
  return result;
}

uint64_t key path getter for MOEventBundleStore.allBundles : MOEventBundleStore@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MOEventBundleStore.allBundles : MOEventBundleStore(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 200);

  return v2(v3);
}

uint64_t MOEventBundleStore.allBundles.getter()
{
  return MOEventBundleStore.allBundles.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t MOEventBundleStore.allBundles.setter()
{
  return MOEventBundleStore.allBundles.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*MOEventBundleStore.allBundles.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MOAngelControllerWrapper.isExpanded.modify;
}

uint64_t key path setter for MOEventBundleStore.$allBundles : MOEventBundleStore(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMd);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 224))(v6);
}

uint64_t MOEventBundleStore.$allBundles.setter(uint64_t a1)
{
  return MOEventBundleStore.$allBundles.setter(a1);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay16MomentsUIService22MOEventBundleWithAssetCGGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MOEventBundleStore.$allBundles.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMd);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__allBundles;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay16MomentsUIService22MOEventBundleWithAssetCGGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return MOAngelControllerWrapper.$isExpanded.modify;
}

uint64_t key path getter for MOEventBundleStore.privateUIBundles : MOEventBundleStore@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MOEventBundleStore.privateUIBundles : MOEventBundleStore(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 248);

  return v2(v3);
}

uint64_t (*MOEventBundleStore.privateUIBundles.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MOAngelControllerWrapper.isVisible.modify;
}

uint64_t key path setter for MOEventBundleStore.$privateUIBundles : MOEventBundleStore(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMd);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 272))(v6);
}

uint64_t (*MOEventBundleStore.$privateUIBundles.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMd);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__privateUIBundles;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay16MomentsUIService22MOEventBundleWithAssetCGGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return MOAngelControllerWrapper.$isExpanded.modify;
}

uint64_t key path getter for MOEventBundleStore.publicUIBundles : MOEventBundleStore@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MOEventBundleStore.publicUIBundles : MOEventBundleStore(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 296);

  return v2(v3);
}

uint64_t (*MOEventBundleStore.publicUIBundles.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MOAngelControllerWrapper.isVisible.modify;
}

uint64_t key path setter for MOEventBundleStore.$publicUIBundles : MOEventBundleStore(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMd);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 320))(v6);
}

uint64_t (*MOEventBundleStore.$publicUIBundles.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay16MomentsUIService22MOEventBundleWithAssetCG_GMd);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__publicUIBundles;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay16MomentsUIService22MOEventBundleWithAssetCGGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return MOAngelControllerWrapper.$isExpanded.modify;
}

uint64_t key path getter for MOEventBundleStore.isLoading : MOEventBundleStore@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result & 1;
  return result;
}

uint64_t MOEventBundleStore.isLoading.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t MOEventBundleStore.isLoading.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*MOEventBundleStore.isLoading.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MOAngelControllerWrapper.isVisible.modify;
}

uint64_t key path setter for MOEventBundleStore.$isLoading : MOEventBundleStore(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 368))(v6);
}

uint64_t MOEventBundleStore.$allBundles.getter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MOEventBundleStore.$isLoading.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MOEventBundleStore.$isLoading.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore__isLoading;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return MOAngelControllerWrapper.$isVisible.modify;
}

uint64_t MOEventBundleStore.isFirstRefresh.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isFirstRefresh;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOEventBundleStore.isFirstRefresh.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isFirstRefresh;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOEventBundleStore.isRunningSoftRefresh.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isRunningSoftRefresh;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOEventBundleStore.isRunningSoftRefresh.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isRunningSoftRefresh;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOEventBundleStore.isRunningDatabaseUpgrade.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isRunningDatabaseUpgrade;
  swift_beginAccess();
  return *(v0 + v1);
}

void MOEventBundleStore.isRunningDatabaseUpgrade.setter(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isRunningDatabaseUpgrade;
  swift_beginAccess();
  *(v2 + v4) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static MOAngelLogger.shared);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = *(v2 + v4);

    _os_log_impl(&_mh_execute_header, v6, v7, "Performing DB Upgrade state update: %{BOOL}d", v8, 8u);
  }

  else
  {
  }
}

void (*MOEventBundleStore.isRunningDatabaseUpgrade.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_isRunningDatabaseUpgrade;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MOEventBundleStore.isRunningDatabaseUpgrade.modify;
}

void MOEventBundleStore.isRunningDatabaseUpgrade.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static MOAngelLogger.shared);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v3[3];
      v8 = v3[4];
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = *(v7 + v8);

      _os_log_impl(&_mh_execute_header, v5, v6, "Performing DB Upgrade state update: %{BOOL}d", v9, 8u);
    }

    else
    {
    }
  }

  free(v3);
}

uint64_t MOEventBundleStore.ResourceValidationResult.thirdPartyBundleIds.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void MOEventBundleStore.serviceFetchHandlers()()
{
  v1 = (*(*v0 + 528))();
  (*(*v0 + 536))(_swiftEmptyArrayStorage);
  v2 = v1;
  v22 = *(v1 + 16);
  if (!v22)
  {
LABEL_25:

    return;
  }

  v3 = 0;
  v21 = *(*v0 + 456);
  v19 = *(*v0 + 480);
  v20 = v2 + 32;
  while (1)
  {
    v24 = v3;
    v8 = (v20 + 32 * v3);
    v9 = *v8;
    v10 = *(v8 + 1);
    v11 = *(v8 + 2);

    v5 = v21(v12);
    v6 = v5;
    v13 = v9 == 1 && (v10 & 1) == 0;
    v23 = v11;
    if (v13)
    {
      break;
    }

LABEL_5:
    v3 = v24 + 1;
    v7 = v19(v5);
    v26 = v6;
    v25 = v7;
    v23(&v26, &v25);

    if (v24 + 1 == v22)
    {
      goto LABEL_25;
    }
  }

  v26 = _swiftEmptyArrayStorage;
  if (!(v5 >> 62))
  {
    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (!v14)
  {
LABEL_24:
    v4 = _swiftEmptyArrayStorage;
LABEL_4:

    v6 = v4;
    goto LABEL_5;
  }

LABEL_13:
  v15 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v16 = *(v6 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if ([v16 interfaceType] == 11)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v15;
    if (v18 == v14)
    {
      v4 = v26;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void *static MOEventBundleStore.bundlesSubset(presentationDetails:bundles:)(char a1, char a2, unint64_t a3)
{
  if (a1)
  {
    return specialized static MOEventBundleStore.filterBundlesForPublicUI(presentationDetails:bundles:)(a2, a3);
  }

  else
  {
  }
}

uint64_t MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v23 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v14 = *(v21 - 8);
  __chkstk_darwin(v21);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = v6;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = partial apply for closure #1 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:);
  *(v18 + 64) = v17;
  aBlock[4] = partial apply for closure #2 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:);
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_36;
  v19 = _Block_copy(aBlock);
  swift_retain_n();
  swift_retain_n();

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v22 + 8))(v13, v11);
  (*(v14 + 8))(v16, v21);
}

void closure #1 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static MOAngelLogger.shared);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[Pull Refresh] soft refresh from pull finished, execute fetch.", v3, 2u);
  }

  specialized MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:)();
}

void closure #2 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = *(*a1 + 544);

  v15 = v14(aBlock);
  v17 = v16;
  v18 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    *v17 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
    *v17 = v18;
  }

  v18[2] = v21 + 1;
  v22 = &v18[4 * v21];
  *(v22 + 32) = a2 & 1;
  v22[5] = a3;
  v22[6] = thunk for @escaping @callee_guaranteed (@guaranteed [MOEventBundle], @guaranteed Set<String>?) -> ()partial apply;
  v22[7] = v13;
  v23 = v15(aBlock, 0);
  if ((*(*a1 + 408))(v23))
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static MOAngelLogger.shared);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "[Pull Refresh] existing soft refresh running during pull, wait for it to finish.", v27, 2u);
    }

    v28 = swift_allocObject();
    *(v28 + 16) = a6;
    *(v28 + 24) = a7;
    v29 = *(*a1 + 568);

    v30 = v29(aBlock);
    v32 = v31;
    v33 = *v31;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    *v32 = v33;
    if ((v34 & 1) == 0)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
      *v32 = v33;
    }

    v36 = v33[2];
    v35 = v33[3];
    if (v36 >= v35 >> 1)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v33);
      *v32 = v33;
    }

    v33[2] = v36 + 1;
    v37 = &v33[2 * v36];
    v37[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v37[5] = v28;
    v30(aBlock, 0);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static MOAngelLogger.shared);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "[Pull Refresh] no existing soft refresh during pull, trigger soft refresh.", v41, 2u);
    }

    (*(*a1 + 416))(1);
    v42 = *(a1 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_promptManager);
    v43 = swift_allocObject();
    v43[2] = a1;
    v43[3] = a6;
    v43[4] = a7;
    aBlock[4] = partial apply for closure #1 in closure #2 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:);
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_166;
    v44 = _Block_copy(aBlock);

    [v42 softRefreshEventsWithRefreshVariant:1536 andIgnoreLastTrigger:1 andHandler:v44];
    _Block_release(v44);
  }
}

void closure #1 in closure #2 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static MOAngelLogger.shared);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[MOEventBundleStore][Pull Refresh] softRefresh failed, retrying...", v10, 2u);
    }

    v11 = *(a2 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_promptManager);
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = a4;
    v25[4] = partial apply for closure #1 in closure #1 in closure #2 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:);
    v25[5] = v12;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 1107296256;
    v25[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v25[3] = &block_descriptor_179;
    v13 = _Block_copy(v25);

    [v11 softRefreshEventsWithRefreshVariant:1536 andHandler:v13];
    _Block_release(v13);
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v15 = *(*a2 + 568);

    v16 = v15(v25);
    v18 = v17;
    v19 = *v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
      *v18 = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
      *v18 = v19;
    }

    v19[2] = v22 + 1;
    v23 = &v19[2 * v22];
    v23[4] = thunk for @callee_guaranteed () -> ()partial apply;
    v23[5] = v14;
    v24 = v16(v25, 0);
    (*(*a2 + 632))(v24);
  }
}

uint64_t closure #1 in closure #1 in closure #2 in MOEventBundleStore.refreshAndFetchBundles(presentationDetails:queue:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = *(*a2 + 568);

  v9 = v8(v19);
  v11 = v10;
  v12 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    *v11 = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
    *v11 = v12;
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v16[5] = v7;
  v17 = v9(v19, 0);
  return (*(*a2 + 632))(v17);
}

uint64_t MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v32 = a4;
  v33 = a5;
  v35 = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v16 = *(v36 - 8);
  v17 = __chkstk_darwin(v36);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v7 + 336))(v17))
  {
    v32 = a2;
    v33 = v16;
    v20 = a7;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static MOAngelLogger.shared);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "A loading process is already in progress: queued", v24, 2u);
    }

    v25 = swift_allocObject();
    *(v25 + 16) = v8;
    *(v25 + 24) = a1 & 1;
    *(v25 + 32) = v32;
    *(v25 + 40) = a6;
    *(v25 + 48) = v20;
    v42 = partial apply for closure #1 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:);
    v43 = v25;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed () -> ();
    v41 = &block_descriptor_42_3;
    v26 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v37 = _swiftEmptyArrayStorage;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);
    (*(v34 + 8))(v15, v13);
    (*(v33 + 8))(v19, v36);
  }

  else
  {
    (*(*v7 + 344))(1);
    (*(*v7 + 200))(_swiftEmptyArrayStorage);
    v27 = swift_allocObject();
    *(v27 + 16) = v7;
    *(v27 + 24) = a1 & 1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a6;
    v29 = v32;
    v28 = v33;
    *(v27 + 48) = a7;
    *(v27 + 56) = v29;
    *(v27 + 64) = v28;
    v42 = partial apply for closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:);
    v43 = v27;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed () -> ();
    v41 = &block_descriptor_36_2;
    v30 = _Block_copy(&aBlock);

    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(v29);
    static DispatchQoS.unspecified.getter();
    v37 = _swiftEmptyArrayStorage;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);
    (*(v34 + 8))(v15, v13);
    (*(v16 + 8))(v19, v36);
  }
}

void closure #1 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = *(*a1 + 544);

  v12 = v11(v21);
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  v19 = &v15[4 * v18];
  *(v19 + 32) = a2 & 1;
  v19[5] = a3;
  v19[6] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [MOEventBundle], @guaranteed Set<String>?) -> ();
  v19[7] = v10;
  v20 = v12(v21, 0);
  if (((*(*a1 + 336))(v20) & 1) == 0)
  {
    MOEventBundleStore.serviceFetchHandlers()();
  }
}

void closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  v37 = a4;
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v13 = *(*a1 + 544);

  v14 = v13(aBlock);
  v16 = v15;
  v17 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *v16 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    *v16 = v17;
  }

  v17[2] = v20 + 1;
  v21 = &v17[4 * v20];
  v22 = a2 & 1;
  *(v21 + 32) = v22;
  v21[5] = a3;
  v21[6] = thunk for @escaping @callee_guaranteed (@guaranteed [MOEventBundle], @guaranteed Set<String>?) -> ()partial apply;
  v21[7] = v12;
  v14(aBlock, 0);
  v23 = [objc_opt_self() sharedInstance];
  v24 = [v23 onboardingFlowCompletionStatus];

  if (v24 >= 2 && ((*(*a1 + 384))() & 1) != 0)
  {
    (*(*a1 + 392))(0);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static MOAngelLogger.shared);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "[MOEventBundleStore] calling scheduleDatabaseUpgrade", v28, 2u);
    }

    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    *(v29 + 24) = a6;
    *(v29 + 32) = a7;
    *(v29 + 40) = v22;
    *(v29 + 48) = a3;
    *(v29 + 56) = v37;
    *(v29 + 64) = a5;
    v30 = *(a1 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_promptManager);
    v31 = swift_allocObject();
    *(v31 + 16) = partial apply for closure #1 in closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:);
    *(v31 + 24) = v29;
    aBlock[4] = partial apply for closure #2 in closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:);
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned MODatabaseUpgradeStatus, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_136;
    v32 = _Block_copy(aBlock);

    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(a6);

    [v30 scheduleDatabaseUpgradeWithHandler:v32];
    _Block_release(v32);
  }

  else if ((*(*a1 + 408))() & 1) != 0 || ((*(*a1 + 432))())
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static MOAngelLogger.shared);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "[MOEventBundleStore] softRefreshEvents still running, skipping _fetchAvailableBundles", v36, 2u);
    }

    (*(*a1 + 344))(0);
    MOEventBundleStore.serviceFetchHandlers()();
  }

  else
  {
    specialized MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:)();
  }
}

void closure #1 in closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static MOAngelLogger.shared);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "[MOEventBundleStore] returning from scheduleDatabaseUpgrade", v9, 2u);
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      goto LABEL_15;
    }

    if (a1 == 1)
    {
      v10 = (*(*a2 + 440))(0);
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v10 = (*(*a2 + 440))(0);
      LODWORD(a1) = 0;
LABEL_16:
      if (a3)
      {
        v13 = (*(*a2 + 432))(v10);
        a3(v13 & 1);
      }

      if (a1)
      {
        (*(*a2 + 416))(1);
        specialized MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:)();
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "[MOEventBundleStore] calling softRefreshEvents", v16, 2u);
        }

        v17 = *(a2 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_promptManager);
        v19[4] = partial apply for closure #1 in closure #1 in closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:);
        v19[5] = a2;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 1107296256;
        v19[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
        v19[3] = &block_descriptor_139_0;
        v18 = _Block_copy(v19);

        [v17 softRefreshEventsWithRefreshVariant:1536 andHandler:v18];
        _Block_release(v18);
      }

      else
      {
        specialized MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:)();
      }

      return;
    }

    if (a1 == 4)
    {
LABEL_15:
      v10 = (*(*a2 + 440))(0);
      LODWORD(a1) = 1;
      goto LABEL_16;
    }

LABEL_24:
    type metadata accessor for MODatabaseUpgradeStatus(0);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  v11 = (*(*a2 + 440))(1);
  if (a3)
  {
    v12 = (*(*a2 + 432))(v11);
    a3(v12 & 1);
  }
}

void closure #1 in closure #1 in closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static MOAngelLogger.shared);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "[MOEventBundleStore] softRefresh failed, retrying...", v6, 2u);
    }

    v7 = *(a2 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_promptManager);
    v9[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:);
    v9[5] = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v9[3] = &block_descriptor_142;
    v8 = _Block_copy(v9);

    [v7 softRefreshEventsWithRefreshVariant:1536 andHandler:v8];
    _Block_release(v8);
  }

  else
  {
    (*(*a2 + 632))();
  }
}

uint64_t closure #2 in closure #2 in MOEventBundleStore.fetchAvailableBundles(clientDetails:queue:databaseUpgradingStateHandler:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a2)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static MOAngelLogger.shared);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "[MOEventBundleStore] scheduleDatabaseUpgrade failed...", v7, 2u);
    }
  }

  return a3();
}

void closure #1 in MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:)(unint64_t a1)
{
  v174 = a1;
  v162 = type metadata accessor for UUID();
  v1 = *(v162 - 8);
  __chkstk_darwin(v162);
  v161 = &v143 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_123:
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = __swift_project_value_buffer(v3, static MOAngelLogger.shared);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[MOEventBundleStore] returning from fetchEventBundles", v7, 2u);
  }

  v8 = (*Strong + 344);
  v149 = *v8;
  v148 = v8;
  v149(0);
  if (!v174)
  {
    goto LABEL_125;
  }

  v9 = v174 >> 62;
  if (v174 >> 62)
  {
    v175 = _CocoaArrayWrapper.endIndex.getter();
    if (v175)
    {
      goto LABEL_8;
    }

LABEL_125:
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&_mh_execute_header, v140, v141, "[MOEventBundleStore] got nothing from fetchEventBundles", v142, 2u);
    }

    (*(*Strong + 464))(_swiftEmptyArrayStorage);
    MOEventBundleStore.serviceFetchHandlers()();
LABEL_128:

    return;
  }

  v175 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v175)
  {
    goto LABEL_125;
  }

LABEL_8:

  v165 = v4;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    if (v9)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v13;

    _os_log_impl(&_mh_execute_header, v10, v11, "[MOEventBundleStore] bundles received from fetch: count=%ld", v12, 0xCu);
  }

  else
  {
  }

  v147 = 0;
  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v173 = v174 & 0xC000000000000001;
  v182 = _swiftEmptyArrayStorage;
  v156 = v174 & 0xFFFFFFFFFFFFFF8;
  v155 = v174 + 32;
  v166 = 0x80000001002B6760;
  v154 = (v1 + 8);
  *&v14 = 134217984;
  v146 = v14;
  *&v14 = 136315138;
  v144 = v14;
  *&v14 = 134218754;
  v145 = v14;
  *&v14 = 134218242;
  v150 = v14;
  *&v14 = 136316418;
  v143 = v14;
  do
  {
    if (v173)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v156 + 16))
      {
        goto LABEL_121;
      }

      v28 = *(v155 + 8 * v15);
    }

    v1 = v28;
    if (__OFADD__(v15++, 1))
    {
      goto LABEL_119;
    }

    v30 = [v28 rankingDictionary];
    if (!v30)
    {
      goto LABEL_34;
    }

    v31 = v30;
    v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v177 = 0xD000000000000017;
    v178 = v166;
    AnyHashable.init<A>(_:)();
    if (!*(v32 + 16) || (v33 = specialized __RawDictionaryStorage.find<A>(_:)(&v179), (v34 & 1) == 0))
    {

      outlined destroy of AnyHashable(&v179);
LABEL_34:
      v180 = 0u;
      v181 = 0u;
LABEL_35:
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v180, &_sypSgMd);
      goto LABEL_36;
    }

    outlined init with copy of Any(*(v32 + 56) + 32 * v33, &v180);
    outlined destroy of AnyHashable(&v179);

    if (!*(&v181 + 1))
    {
      goto LABEL_35;
    }

    if (swift_dynamicCast() && v179 == 4)
    {
      v1 = v1;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v179 = v18;
        *v17 = v144;
        v19 = [v1 bundleIdentifier];
        v157 = v16;
        v20 = v161;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
        v21 = v162;
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v15;
        v25 = v24;
        v26 = v20;
        v16 = v157;
        (*v154)(v26, v21);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v25, &v179);
        v15 = v23;

        *(v17 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v35, v36, "[MOEventBundleStore] Filtering out bundle due to rejected ranking category id=%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);

LABEL_16:

LABEL_17:

LABEL_18:
        continue;
      }

      continue;
    }

LABEL_36:
    v37 = [v1 resources];
    if (!v37)
    {
      goto LABEL_18;
    }

    v38 = v37;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOResource);
    v176 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = [v1 promptLanguages];
    if (!v39 || (v40 = v39, v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v40, v42 = *(v41 + 16), , !v42))
    {

      v35 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v35, v64))
      {
        goto LABEL_17;
      }

      v65 = v1;
      v1 = swift_slowAlloc();
      *v1 = 0;
      _os_log_impl(&_mh_execute_header, v35, v64, "[MOEventBundleStore] Filtering out bundle due to missing prompts", v1, 2u);

      continue;
    }

    v160 = v38;
    v43 = v176;
    v44 = (*(*Strong + 616))(v176);
    v170 = v1;
    if (v44)
    {
      v47 = v44;
      v171 = v46;
      v168 = v45;
      v157 = v16;
      v48 = v1;

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v172 = v48;

      v51 = os_log_type_enabled(v49, v50);
      v169 = v43 >> 62;
      if (v51)
      {
        v52 = v15;
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v179 = v54;
        *v53 = v145;
        *(v53 + 4) = *(v47 + 16);
        *(v53 + 12) = 2048;
        if (v43 >> 62)
        {
          *(v53 + 14) = _CocoaArrayWrapper.endIndex.getter();
          *(v53 + 22) = 2048;
          v55 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          *(v53 + 14) = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          *(v53 + 22) = 2048;
          v55 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v53 + 24) = v55 / 2;

        *(v53 + 32) = 2080;
        v56 = [v172 bundleIdentifier];
        v57 = v161;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
        v58 = v162;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        v62 = v57;
        v43 = v176;
        (*v154)(v62, v58);
        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v179);

        *(v53 + 34) = v63;
        _os_log_impl(&_mh_execute_header, v49, v50, "[MOEventBundleStore.failedResources] failed resource count=%ld, totalCount=%ld, threshold=%ld, bundleId: %s", v53, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0(v54);

        v15 = v52;
      }

      else
      {
      }

      v66 = *(v47 + 16);
      v163 = v15;
      if (v169)
      {
        v67 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v67 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (*(v47 + 16))
      {
        v68 = v67 < 4;
      }

      else
      {
        v68 = 0;
      }

      v69 = v68;
      if ([v172 interfaceType] == 11 || (v67 > 3 ? (v70 = v66 < v67 / 2) : (v70 = 1), v70 ? (v71 = 0) : (v71 = 1), ((v71 | v168 | v69) & 1) == 0))
      {
        v85 = v47;
        v86 = 0;
        v168 = v85;
        v89 = *(v85 + 56);
        v88 = v85 + 56;
        v87 = v89;
        v90 = 1 << *(v88 - 24);
        if (v90 < 64)
        {
          v91 = ~(-1 << v90);
        }

        else
        {
          v91 = -1;
        }

        v92 = v91 & v87;
        v1 = (v90 + 63) >> 6;
        v93 = v176 & 0xFFFFFFFFFFFFFF8;
        v164 = v176 & 0xFFFFFFFFFFFFFF8;
        if (v176 < 0)
        {
          v93 = v176;
        }

        v153 = v93;
        v152 = v176 & 0xC000000000000001;
        v151 = v176 + 32;
        v15 = v163;
        while (v92)
        {
LABEL_78:
          v95 = *(*(v168 + 48) + ((v86 << 9) | (8 * __clz(__rbit64(v92)))));
          v96 = v172;
          v97 = Logger.logObject.getter();
          v98 = static os_log_type_t.default.getter();

          v99 = os_log_type_enabled(v97, v98);
          v171 = v95;
          if (v99)
          {
            v100 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            v179 = v159;
            *v100 = v150;
            *(v100 + 4) = v95;
            *(v100 + 12) = 2080;
            v101 = [v96 bundleIdentifier];
            v158 = v98;
            v102 = v101;
            v103 = v161;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
            v104 = v162;
            v105 = dispatch thunk of CustomStringConvertible.description.getter();
            v107 = v106;
            v108 = v103;
            v15 = v163;
            (*v154)(v108, v104);
            v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v107, &v179);

            *(v100 + 14) = v109;
            _os_log_impl(&_mh_execute_header, v97, v158, "[MOEventBundleStore.failedResources] hiding resource at index=%ld, bundleId: %s", v100, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v159);
          }

          if (v169)
          {
            v110 = _CocoaArrayWrapper.endIndex.getter();
            if ((v110 & 0x8000000000000000) != 0)
            {
              goto LABEL_120;
            }
          }

          else
          {
            v110 = *(v164 + 16);
          }

          v92 &= v92 - 1;
          if (v171 < v110)
          {
            if (v152)
            {
              v111 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v171 >= *(v164 + 16))
              {
                goto LABEL_122;
              }

              v111 = *(v151 + 8 * v171);
            }

            v112 = v111;
            [v111 setPriorityScore:20000.0];
          }
        }

        while (1)
        {
          v94 = v86 + 1;
          if (__OFADD__(v86, 1))
          {
            break;
          }

          if (v94 >= v1)
          {

            v113 = v160;
            [v172 setResources:v160];

            v1 = 1;
            v16 = v157;
            goto LABEL_94;
          }

          v92 = *(v88 + 8 * v94);
          ++v86;
          if (v92)
          {
            v86 = v94;
            goto LABEL_78;
          }
        }

        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v72 = v172;

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v179 = v172;
        *v75 = v143;
        v76 = [v72 bundleIdentifier];
        v77 = v161;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
        v78 = v162;
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        v81 = v80;
        (*v154)(v77, v78);
        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v179);

        *(v75 + 4) = v82;
        *(v75 + 12) = 2048;
        v83 = *(v47 + 16);

        *(v75 + 14) = v83;

        *(v75 + 22) = 2048;
        if (v169)
        {
          v84 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v84 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v75 + 24) = v84;

        *(v75 + 32) = 1024;
        *(v75 + 34) = v71;
        *(v75 + 38) = 1024;
        *(v75 + 40) = v168 & 1;
        *(v75 + 44) = 1024;
        *(v75 + 46) = v69;
        _os_log_impl(&_mh_execute_header, v73, v74, "[BundleEventStore.failedResources] exceeded resource prevalidation failure count, removing bundle id: %s, resource failure count:%ld out of total resource count:%ld, hasMoreInvalidsThanValids=%{BOOL}d, shouldForceDropBundle=%{BOOL}d, hasNotEnoughVariety=%{BOOL}d", v75, 0x32u);
        __swift_destroy_boxed_opaque_existential_0(v172);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v1 = 0;
      v16 = v157;
      v15 = v163;
    }

    else
    {

      v1 = 1;
    }

LABEL_94:
    v114 = MOEventBundle._orderedAssetReferences()();
    if (v114)
    {
      if (v114 >> 62)
      {
        v117 = _CocoaArrayWrapper.endIndex.getter();

        if (!v117)
        {
LABEL_103:
          v157 = v16;
          v118 = v170;
          v119 = Logger.logObject.getter();
          v1 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v119, v1))
          {
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v179 = v121;
            *v120 = v144;
            v122 = [v118 bundleIdentifier];
            v123 = v161;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
            v124 = v15;
            v125 = v162;
            v126 = dispatch thunk of CustomStringConvertible.description.getter();
            v128 = v127;
            v129 = v125;
            v15 = v124;
            (*v154)(v123, v129);
            v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v128, &v179);

            *(v120 + 4) = v130;
            _os_log_impl(&_mh_execute_header, v119, v1, "[BundleEventStore] Dropping bundleId: %s due to no renderable resources", v120, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v121);
          }

          v16 = v157;
          goto LABEL_106;
        }
      }

      else
      {
        v115 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v115)
        {
          goto LABEL_103;
        }
      }
    }

    if (v1)
    {
      swift_beginAccess();
      v116 = v170;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v182 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16 = v182;
      swift_endAccess();
      v149(0);
      v147 = 1;
    }

LABEL_106:
    v35 = Logger.logObject.getter();
    v131 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = v146;
      v1 = v170;
      if (v16 >> 62)
      {
        v134 = v132;
        v133 = _CocoaArrayWrapper.endIndex.getter();
        v132 = v134;
        v1 = v170;
      }

      else
      {
        v133 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v132 + 4) = v133;
      _os_log_impl(&_mh_execute_header, v35, v131, "[BundleEventStore] Added n=%ld allowed bundles to store", v132, 0xCu);
      goto LABEL_16;
    }
  }

  while (v15 != v175);
  v135 = *(*Strong + 464);

  v135(v136);
  MOEventBundleStore.serviceFetchHandlers()();
  if (v147)
  {

    goto LABEL_128;
  }

  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    *v139 = 0;
    _os_log_impl(&_mh_execute_header, v137, v138, "[BundleEventStore] No bundles added as suggestions", v139, 2u);
  }
}

BOOL MOEventBundle.rejected.getter()
{
  v1 = [v0 rankingDictionary];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v5 & 1) == 0))
  {

    outlined destroy of AnyHashable(v7);
LABEL_9:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v8);
  outlined destroy of AnyHashable(v7);

  if (!*(&v9 + 1))
  {
LABEL_10:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v8, &_sypSgMd);
    return 0;
  }

  return (swift_dynamicCast() & 1) != 0 && v7[0] == 4;
}

void closure #2 in MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static MOAngelLogger.shared);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "[BundleEventStore] fetchEventBundles failed, retring...", v14, 2u);
      }

      v15 = *(v10 + OBJC_IVAR____TtC16MomentsUIService18MOEventBundleStore_promptManager);
      specialized MOBundleProcessingSession.allowedSourceTypes.getter();
      type metadata accessor for MOEventBundleSourceType(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type MOEventBundleSourceType and conformance MOEventBundleSourceType, type metadata accessor for MOEventBundleSourceType);
      isa = Set._bridgeToObjectiveC()().super.isa;

      v17 = swift_allocObject();
      v17[2] = v10;
      v17[3] = a4;
      v17[4] = a5;
      aBlock[4] = partial apply for closure #1 in closure #2 in MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:);
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed _HKCurrentWorkoutSnapshot?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_156;
      v18 = _Block_copy(aBlock);

      [v15 fetchEventBundlesWithAllowedSourceTypes:isa respectOnboardingDates:1 respectLearnFromThisApp:1 handler:v18];

      _Block_release(v18);
    }

    else
    {
      if (a1)
      {
        v19 = [a1 sourceAppBundleIds];
        if (v19)
        {
          v20 = v19;
          v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          (*(*v10 + 488))(v21);
        }

        v22 = [a1 processedBundles];
        if (v22)
        {
          v23 = v22;
          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOEventBundle);
          a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          a1 = 0;
        }
      }

      a4(a1);
    }
  }
}

uint64_t closure #1 in closure #2 in MOEventBundleStore._fetchAvailableBundles(presentationDetails:completionHandler:)(id a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  v5 = a1;
  if (a1)
  {
    v7 = [a1 sourceAppBundleIds];
    if (v7)
    {
      v8 = v7;
      v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      (*(*a3 + 488))(v9);
    }

    v10 = [v5 processedBundles];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOEventBundle);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v5 = 0;
    }
  }

  a4(v5);
}

uint64_t MOEventBundleStore._failedResources(resources:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchTime();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = __chkstk_darwin(v2);
  v32 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v33 = v27 - v5;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v10[2] = 0;
  v36 = v10 + 2;
  v10[3] = 0;
  v10[4] = 0;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  if (one-time initialization token for defaultQueue != -1)
  {
    swift_once();
  }

  v27[1] = static MOEventBundleStore.defaultQueue;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = v11;
  v13[5] = v10;
  aBlock[4] = partial apply for closure #1 in MOEventBundleStore._failedResources(resources:);
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_54_0;
  v14 = _Block_copy(aBlock);

  v15 = v11;

  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v16 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v31 + 8))(v7, v16);
  (*(v28 + 8))(v9, v30);

  v17 = v32;
  static DispatchTime.now()();
  v18 = v33;
  + infix(_:_:)();
  v19 = v35;
  v20 = *(v34 + 8);
  v20(v17, v35);
  OS_dispatch_group.wait(timeout:)();
  v20(v18, v19);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static MOAngelLogger.shared);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "[BundleEventStore.failedResources] timed out while validating assets", v24, 2u);
    }
  }

  swift_beginAccess();
  v25 = v10[2];
  outlined copy of MOEventBundleStore.ResourceValidationResult?(v25);

  return v25;
}

uint64_t closure #1 in MOEventBundleStore._failedResources(resources:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v10 = *(*v8 + 624);
    v11 = a3;

    v10(a2, partial apply for closure #1 in closure #1 in MOEventBundleStore._failedResources(resources:), v9);
  }

  return result;
}

uint64_t closure #1 in closure #1 in MOEventBundleStore._failedResources(resources:)(uint64_t a1, char a2, uint64_t a3, dispatch_group_t group, void *a5)
{
  dispatch_group_leave(group);
  swift_beginAccess();
  v9 = a5[2];
  a5[2] = a1;
  a5[3] = a2 & 1;
  a5[4] = a3;
  outlined consume of MOEventBundleStore.ResourceValidationResult?(v9);
}

uint64_t MOEventBundleStore._failedResourcesAsync(resources:completion:)(unint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v7 = __chkstk_darwin(v6 - 8);
  v245 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v247 = &v200 - v9;
  v240 = type metadata accessor for UUID();
  v229 = *(v240 - 8);
  v10 = *(v229 + 64);
  v11 = __chkstk_darwin(v240);
  v218 = &v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v220 = &v200 - v13;
  v14 = __chkstk_darwin(v12);
  v221 = &v200 - v15;
  v16 = __chkstk_darwin(v14);
  v217 = &v200 - v17;
  __chkstk_darwin(v16);
  v219 = &v200 - v18;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  v239 = (v19 + 16);
  v20 = swift_allocObject();
  *(v20 + 16) = &_swiftEmptySetSingleton;
  v228 = (v20 + 16);
  v21 = swift_allocObject();
  v244 = v21;
  *(v21 + 16) = 0;
  v22 = v21 + 16;
  v23 = swift_allocObject();
  v243 = v23;
  *(v23 + 16) = 0;
  v241 = (v23 + 16);
  v24 = swift_allocObject();
  v242 = v24;
  *(v24 + 16) = 0;
  v248 = (v24 + 16);
  *&address.sa_len = 528;
  *&address.sa_data[6] = 0;
  v25 = SCNetworkReachabilityCreateWithAddress(0, &address);
  v28 = v25 && (flags[0] = 0, v26 = v25, v27 = SCNetworkReachabilityGetFlags(v25, flags), v26, v27) && (flags[0] & 6) == 2;
  v225 = v22;
  v234 = v28;
  v29 = !v28;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v238 = (v30 + 16);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v231 = (v31 + 16);
  v32 = swift_allocObject();
  v236 = v30;
  v237 = v31;
  *(v32 + 16) = v31;
  *(v32 + 24) = v30;
  v33 = v242;
  *(v32 + 32) = v243;
  v222 = v29;
  *(v32 + 40) = v29;
  *(v32 + 48) = v33;
  *(v32 + 56) = a1;
  v34 = v244;
  *(v32 + 64) = v19;
  *(v32 + 72) = v34;
  *(v32 + 80) = a2;
  *(v32 + 88) = a3;
  v232 = v32;
  *(v32 + 96) = v20;
  v224 = a1 >> 62;
  v227 = a2;
  if (a1 >> 62)
  {
    goto LABEL_144;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v226 = a3;

    v230 = v20;

    v233 = v19;

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v19 = v245;
    v37 = v247;
    if (!i)
    {
      break;
    }

    v20 = 0;
    v38 = a1 & 0xC000000000000001;
    v216 = @"MOStateOfMindMetaDataKeyStateOfMindID";
    v213 = (v229 + 32);
    v214 = (v229 + 48);
    v211 = (v229 + 8);
    v212 = (v229 + 16);
    v210 = v10 + 7;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v235 = (v229 + 56);
    v215 = @"MOWorkoutMetaDataKeyWorkoutID";
    *&v36 = 136315394;
    v208 = v36;
    *&v36 = 136315138;
    v209 = v36;
    v246 = a1 & 0xC000000000000001;
    v249 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v38)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v10 + 16))
        {
          goto LABEL_141;
        }

        v39 = *(a1 + 8 * v20 + 32);
      }

      v40 = v39;
      a3 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      switch([v39 type])
      {
        case 2uLL:
          if (__OFADD__(*v241, 1))
          {
            goto LABEL_143;
          }

          ++*v241;
          v91 = MOResource.photoLocalIdentifier.getter();
          if (!v92)
          {

            v10 = v249;
            goto LABEL_10;
          }

          v93 = specialized static MOSuggestionAssetPhotoLivePhotoVideosProvider.assetTypeFromIdentifier(_:)(v91, v92);

          if (v93 == 3)
          {
            goto LABEL_65;
          }

          goto LABEL_66;
        case 3uLL:
          if (!v234)
          {
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            v94 = type metadata accessor for Logger();
            __swift_project_value_buffer(v94, static MOAngelLogger.shared);
            v95 = Logger.logObject.getter();
            v96 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              *v97 = 0;
              v98 = v96;
              v99 = v95;
              v100 = "[BundleEventStore.failedResources] no internet";
              goto LABEL_63;
            }

LABEL_64:

LABEL_65:
            swift_beginAccess();
            specialized Set._Variant.insert(_:)(v250, v20);
            swift_endAccess();
LABEL_66:

LABEL_67:
            v38 = v246;
            v10 = v249;
            goto LABEL_10;
          }

          MOResource.bundleId.getter();
          if (!v82)
          {
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            v104 = type metadata accessor for Logger();
            __swift_project_value_buffer(v104, static MOAngelLogger.shared);
            v95 = Logger.logObject.getter();
            v105 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v95, v105))
            {
              v97 = swift_slowAlloc();
              *v97 = 0;
              v98 = v105;
              v99 = v95;
              v100 = "[BundleEventStore.failedResources] bundleId is null";
LABEL_63:
              _os_log_impl(&_mh_execute_header, v99, v98, v100, v97, 2u);
              v37 = v247;
            }

            goto LABEL_64;
          }

          v83 = MOResource.bundleId.getter();
          if (!v84)
          {

LABEL_69:
            v19 = v245;
            v10 = v249;
            goto LABEL_10;
          }

          v10 = v249;
          if (v83 == *(v223 + 16) && v84 == *(v223 + 24))
          {

            v19 = v245;
            goto LABEL_10;
          }

          v106 = v84;
          v107 = v83;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v108 = objc_allocWithZone(LSApplicationRecord);
            v207 = v107;
            v109 = String._bridgeToObjectiveC()();
            *&address.sa_len = 0;
            v110 = [v108 initWithBundleIdentifier:v109 allowPlaceholder:1 error:&address];

            v206 = v110;
            v111 = v106;
            if (v110)
            {
              v112 = *&address.sa_len;
              v113 = [v110 localizedName];
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v205 = v114;
            }

            else
            {
              v115 = *&address.sa_len;
              _convertNSErrorToError(_:)();

              swift_willThrow();

              v205 = 0;
            }

            v37 = v247;
            v116 = v207;
            *&address.sa_len = v207;
            *&address.sa_data[6] = v111;
            v250[0] = 0x6C7070612E6D6F63;
            v250[1] = 0xEA00000000002E65;
            lazy protocol witness table accessor for type String and conformance String();
            if ((StringProtocol.contains<A>(_:)() & 1) == 0)
            {
              swift_beginAccess();

              specialized Set._Variant.insert(_:)(v250, v116, v111);
              swift_endAccess();
            }

            v117 = objc_opt_self();
            v118 = String._bridgeToObjectiveC()();
            v119 = [v117 applicationWithBundleIdentifier:v118];

            LODWORD(v118) = [v119 isHidden];
            if (v118)
            {
              swift_beginAccess();
              specialized Set._Variant.insert(_:)(v250, v20);
              swift_endAccess();
              if (one-time initialization token for shared != -1)
              {
                swift_once();
              }

              v120 = type metadata accessor for Logger();
              __swift_project_value_buffer(v120, static MOAngelLogger.shared);

              v121 = Logger.logObject.getter();
              v122 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v121, v122))
              {
                v123 = swift_slowAlloc();
                v124 = swift_slowAlloc();
                v204 = v121;
                v125 = v124;
                *&address.sa_len = v124;
                *v123 = v208;
                *(v123 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v207, v111, &address);
                *(v123 + 12) = 1024;
                *(v123 + 14) = 1;
                v126 = v122;
                v127 = v204;
                _os_log_impl(&_mh_execute_header, v204, v126, "[BundleEventStore.failedResources] bundleId %s, shouldDropApp=%{BOOL}d", v123, 0x12u);
                __swift_destroy_boxed_opaque_existential_0(v125);

                v37 = v247;
              }

              else
              {
              }
            }

            if (!v205)
            {
              if (one-time initialization token for shared != -1)
              {
                swift_once();
              }

              v153 = type metadata accessor for Logger();
              __swift_project_value_buffer(v153, static MOAngelLogger.shared);

              v154 = Logger.logObject.getter();
              v155 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v154, v155))
              {
                v156 = swift_slowAlloc();
                v157 = swift_slowAlloc();
                v205 = v154;
                v158 = v157;
                *&address.sa_len = v157;
                *v156 = v209;
                v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v207, v111, &address);

                *(v156 + 4) = v207;
                v159 = v155;
                v160 = v205;
                _os_log_impl(&_mh_execute_header, v205, v159, "[BundleEventStore.failedResources] app name is nil for bundleId %s", v156, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v158);

                v37 = v247;
              }

              else
              {
              }

              v38 = v246;
              swift_beginAccess();
              specialized Set._Variant.insert(_:)(v250, v20);
              swift_endAccess();

              goto LABEL_69;
            }

            v19 = v245;
            goto LABEL_67;
          }

          v19 = v245;
          v37 = v247;
LABEL_10:
          ++v20;
          if (a3 == i)
          {
            goto LABEL_123;
          }

          break;
        case 6uLL:
        case 0xCuLL:

          if (__OFADD__(*v248, 1))
          {
            goto LABEL_142;
          }

          ++*v248;
          goto LABEL_10;
        case 0xAuLL:
          v62 = [v40 data];
          if (!v62)
          {

            goto LABEL_83;
          }

          v63 = v62;
          v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = v65;

          v67 = objc_opt_self();
          isa = Data._bridgeToObjectiveC()().super.isa;
          *&address.sa_len = 0;
          v69 = [v67 JSONObjectWithData:isa options:0 error:&address];

          if (!v69)
          {
            v102 = *&address.sa_len;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            outlined consume of Data._Representation(v64, v66);

LABEL_81:
            v19 = v245;
            v37 = v247;
            goto LABEL_82;
          }

          v70 = *&address.sa_len;
          _bridgeAnyObjectToAny(_:)();
          outlined consume of Data._Representation(v64, v66);
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_80;
          }

          v71 = v250[0];
          v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!*(v71 + 16))
          {

LABEL_79:

LABEL_80:

            goto LABEL_81;
          }

          v74 = specialized __RawDictionaryStorage.find<A>(_:)(v72, v73);
          v76 = v75;

          if ((v76 & 1) == 0)
          {
            goto LABEL_79;
          }

          v77 = *(*(v71 + 56) + 8 * v74);
          swift_unknownObjectRetain();

          v250[0] = v77;
          v78 = swift_dynamicCast();
          v37 = v247;
          if ((v78 & 1) == 0)
          {

            v19 = v245;
LABEL_82:
            v38 = v246;
            v10 = v249;
LABEL_83:
            (*v235)(v37, 1, 1, v240);
LABEL_84:
            v61 = v37;
            goto LABEL_85;
          }

          UUID.init(uuidString:)();

          v79 = v240;
          v80 = (*v214)(v37, 1, v240);
          v19 = v245;
          v81 = v217;
          if (v80 == 1)
          {

            v38 = v246;
            v10 = v249;
            goto LABEL_84;
          }

          v140 = v219;
          v205 = *v213;
          (v205)(v219, v37, v79);
          type metadata accessor for MOSuggestionAssetWorkoutProvider();
          inited = swift_initStackObject();
          v206 = [objc_allocWithZone(HKHealthStore) init];
          v207 = inited;
          *(inited + 24) = v206;
          v142 = v79;
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          v143 = type metadata accessor for Logger();
          __swift_project_value_buffer(v143, static MOAngelLogger.shared);
          v203 = *v212;
          v203(v81, v140, v79);
          v144 = v81;
          v145 = Logger.logObject.getter();
          LODWORD(v202) = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v145, v202))
          {
            v146 = swift_slowAlloc();
            v201 = v146;
            v200 = swift_slowAlloc();
            *&address.sa_len = v200;
            *v146 = v209;
            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
            v147 = dispatch thunk of CustomStringConvertible.description.getter();
            v149 = v148;
            v204 = *v211;
            (v204)(v144, v240);
            v150 = v147;
            v140 = v219;
            v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v149, &address);
            v142 = v240;

            v152 = v201;
            *(v201 + 1) = v151;
            _os_log_impl(&_mh_execute_header, v145, v202, "[MOEventBundleStore.failedResources] calling HK, id=%s", v152, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v200);
          }

          else
          {

            v204 = *v211;
            (v204)(v144, v142);
          }

          if (__OFADD__(*v238, 1))
          {
            __break(1u);
LABEL_148:
            __break(1u);
          }

          ++*v238;
          v203(v221, v140, v142);
          v169 = (*(v229 + 80) + 16) & ~*(v229 + 80);
          v203 = ((v210 + v169) & 0xFFFFFFFFFFFFFFF8);
          v170 = (v203 + 15) & 0xFFFFFFFFFFFFFFF8;
          v201 = ((v170 + 31) & 0xFFFFFFFFFFFFFFF8);
          v202 = (v170 + 15) & 0xFFFFFFFFFFFFFFF8;
          v200 = ((v201 + 15) & 0xFFFFFFFFFFFFFFF8);
          v171 = swift_allocObject();
          (v205)(v171 + v169, v221, v142);
          v172 = v202;
          *(v203 + v171) = v244;
          v173 = v232;
          *(v171 + v170) = v233;
          v174 = v171 + v172;
          *v174 = v20;
          *(v174 + 8) = v222;
          v175 = v200;
          *(v201 + v171) = v237;
          v176 = (v171 + v175);
          *v176 = partial apply for closure #1 in MOEventBundleStore._failedResourcesAsync(resources:completion:);
          v176[1] = v173;

          v168 = v219;
          MOSuggestionAssetWorkoutProvider.getWorkout(workoutUUID:completion:)(v219, partial apply for closure #2 in MOEventBundleStore._failedResourcesAsync(resources:completion:), v171);
          goto LABEL_122;
        case 0xBuLL:
          v85 = [v40 contactIdentifier];
          if (!v85)
          {

            v38 = v246;
            goto LABEL_10;
          }

          v86 = v85;
          v87 = [objc_allocWithZone(CNContactStore) init];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
          v88 = Array._bridgeToObjectiveC()().super.isa;
          *&address.sa_len = 0;
          v89 = [v87 unifiedContactWithIdentifier:v86 keysToFetch:v88 error:&address];

          if (v89)
          {
            v90 = *&address.sa_len;
          }

          else
          {
            v103 = *&address.sa_len;
            _convertNSErrorToError(_:)();

            swift_willThrow();

            swift_beginAccess();
            specialized Set._Variant.insert(_:)(v250, v20);
            swift_endAccess();
          }

          goto LABEL_58;
        case 0x10uLL:
          v41 = [v40 data];
          if (!v41)
          {

            goto LABEL_77;
          }

          v42 = v41;
          v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          v46 = objc_opt_self();
          v47 = Data._bridgeToObjectiveC()().super.isa;
          *&address.sa_len = 0;
          v48 = [v46 JSONObjectWithData:v47 options:0 error:&address];

          if (!v48)
          {
            v101 = *&address.sa_len;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            outlined consume of Data._Representation(v43, v45);

LABEL_75:
            v19 = v245;
            v37 = v247;
            goto LABEL_76;
          }

          v49 = *&address.sa_len;
          _bridgeAnyObjectToAny(_:)();
          outlined consume of Data._Representation(v43, v45);
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_74;
          }

          v50 = v250[0];
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!*(v50 + 16))
          {

LABEL_73:

LABEL_74:

            goto LABEL_75;
          }

          v53 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v52);
          v55 = v54;

          if ((v55 & 1) == 0)
          {
            goto LABEL_73;
          }

          v56 = *(*(v50 + 56) + 8 * v53);
          swift_unknownObjectRetain();

          v250[0] = v56;
          v57 = swift_dynamicCast();
          v37 = v247;
          if ((v57 & 1) == 0)
          {

            v19 = v245;
LABEL_76:
            v38 = v246;
            v10 = v249;
LABEL_77:
            (*v235)(v19, 1, 1, v240);
            v61 = v19;
LABEL_85:
            outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v61, &_s10Foundation4UUIDVSgMd);
            goto LABEL_10;
          }

          v19 = v245;
          UUID.init(uuidString:)();

          v58 = v240;
          v59 = (*v214)(v19, 1, v240);
          v60 = v218;
          if (v59 == 1)
          {

            v38 = v246;
            v10 = v249;
            v61 = v19;
            goto LABEL_85;
          }

          v128 = v220;
          v205 = *v213;
          (v205)(v220, v19, v58);
          type metadata accessor for MOSuggestionAssetStateOfMindProvider();
          v129 = swift_initStackObject();
          v206 = [objc_allocWithZone(HKHealthStore) init];
          v207 = v129;
          *(v129 + 16) = v206;
          v130 = v58;
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          v131 = type metadata accessor for Logger();
          __swift_project_value_buffer(v131, static MOAngelLogger.shared);
          v203 = *v212;
          v203(v60, v128, v58);
          v132 = v60;
          v133 = Logger.logObject.getter();
          LODWORD(v202) = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v133, v202))
          {
            v134 = swift_slowAlloc();
            v200 = v134;
            v201 = swift_slowAlloc();
            *&address.sa_len = v201;
            *v134 = v209;
            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
            v135 = dispatch thunk of CustomStringConvertible.description.getter();
            v137 = v136;
            v204 = *v211;
            (v204)(v132, v240);
            v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v137, &address);
            v130 = v240;

            v139 = v200;
            *(v200 + 1) = v138;
            _os_log_impl(&_mh_execute_header, v133, v202, "[MOEventBundleStore.failedResources] calling HK for state of mind, id=%s", v139, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v201);
          }

          else
          {

            v204 = *v211;
            (v204)(v132, v130);
          }

          if (__OFADD__(*v238, 1))
          {
            goto LABEL_148;
          }

          ++*v238;
          v203(v221, v220, v130);
          v161 = (*(v229 + 80) + 16) & ~*(v229 + 80);
          v203 = ((v210 + v161) & 0xFFFFFFFFFFFFFFF8);
          v202 = (v203 + 15) & 0xFFFFFFFFFFFFFFF8;
          v201 = ((v202 + 15) & 0xFFFFFFFFFFFFFFF8);
          v200 = ((v201 + 15) & 0xFFFFFFFFFFFFFFF8);
          v162 = (v200 + 15) & 0xFFFFFFFFFFFFFFF8;
          v163 = swift_allocObject();
          (v205)(v163 + v161, v221, v130);
          v164 = v202;
          *(v203 + v163) = v244;
          *(v163 + v164) = v233;
          v165 = v200;
          *(v201 + v163) = v20;
          *(v163 + v165) = v237;
          v166 = (v163 + v162);
          v167 = v232;
          *v166 = partial apply for closure #1 in MOEventBundleStore._failedResourcesAsync(resources:completion:);
          v166[1] = v167;

          v168 = v220;
          MOSuggestionAssetStateOfMindProvider.getStateOfMind(stateOfMindUUID:completion:)(v220, partial apply for closure #3 in MOEventBundleStore._failedResourcesAsync(resources:completion:), v163);
LABEL_122:

          (v204)(v168, v240);
LABEL_58:
          v19 = v245;
          v37 = v247;
          goto LABEL_67;
        default:

          goto LABEL_10;
      }
    }

    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    ;
  }

LABEL_123:
  v177 = v231;
  swift_beginAccess();
  v178 = *v177;
  v179 = v238;
  swift_beginAccess();
  if (v178 == *v179)
  {
    v180 = v241;
    swift_beginAccess();
    v181 = *v180 != 1;
    v182 = v248;
    swift_beginAccess();
    v183 = *v182;
    if (v224)
    {
      v184 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v184 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v185 = v227;
    v186 = v225;
    v187 = v239;
    swift_beginAccess();
    v188 = *v187;
    v189 = *(v188 + 16);
    v190 = __OFSUB__(v184, v189);
    v191 = v184 - v189;
    if (v190)
    {
      __break(1u);
      goto LABEL_146;
    }

    v181 |= v234;
    if (v183 == v191)
    {
      if (!v234)
      {
        LOBYTE(v183) = v181 | v222;
        goto LABEL_134;
      }
    }

    else if ((v181 & 1) == 0)
    {
      LOBYTE(v183) = 0;
LABEL_134:
      if (one-time initialization token for shared == -1)
      {
LABEL_135:
        v192 = type metadata accessor for Logger();
        __swift_project_value_buffer(v192, static MOAngelLogger.shared);
        v193 = Logger.logObject.getter();
        v194 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          *v195 = 67109376;
          *(v195 + 4) = (v181 & 1) == 0;
          *(v195 + 8) = 1024;
          *(v195 + 10) = v183 & 1;
          _os_log_impl(&_mh_execute_header, v193, v194, "[BundleEventStore.failedResources] forceDrop, shouldForceDropPhoto=%{BOOL}d, shouldForceDropSingleMap=%{BOOL}d", v195, 0xEu);
        }

        swift_beginAccess();
        *v186 = 1;
        v188 = *v239;
        goto LABEL_138;
      }

LABEL_146:
      swift_once();
      goto LABEL_135;
    }

LABEL_138:
    swift_beginAccess();
    v196 = *v186;
    v197 = v228;
    swift_beginAccess();
    v198 = *v197;

    v185(v188, v196, v198);

    goto LABEL_139;
  }

LABEL_139:
}

uint64_t closure #1 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  swift_beginAccess();
  v20 = *(a1 + 16);
  result = swift_beginAccess();
  if (v20 == *(a2 + 16))
  {
    swift_beginAccess();
    v22 = *(a3 + 16) == 1;
    swift_beginAccess();
    v23 = *(a5 + 16);
    if (a6 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    v25 = *(*(a7 + 16) + 16);
    v26 = v24 - v25;
    if (__OFSUB__(v24, v25))
    {
      __break(1u);
    }

    else
    {
      a2 = a9;
      v11 = v22 & a4;
      v22 = a11;
      if (v23 == v26)
      {
        if ((a4 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((v11 & 1) == 0)
      {
LABEL_13:
        swift_beginAccess();
        v31 = *(a7 + 16);
        swift_beginAccess();
        v32 = *(a8 + 16);
        swift_beginAccess();
        v33 = *(v22 + 16);

        (a2)(v31, v32, v33);
      }

      if (one-time initialization token for shared == -1)
      {
LABEL_10:
        v27 = type metadata accessor for Logger();
        __swift_project_value_buffer(v27, static MOAngelLogger.shared);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 67109376;
          *(v30 + 4) = v11;
          *(v30 + 8) = 1024;
          *(v30 + 10) = v23 == v26;
          _os_log_impl(&_mh_execute_header, v28, v29, "[BundleEventStore.failedResources] forceDrop, shouldForceDropPhoto=%{BOOL}d, shouldForceDropSingleMap=%{BOOL}d", v30, 0xEu);
        }

        swift_beginAccess();
        *(a8 + 16) = 1;
        goto LABEL_13;
      }
    }

    swift_once();
    goto LABEL_10;
  }

  return result;
}

uint64_t closure #2 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v56 = a8;
  v57 = a1;
  v59 = a4;
  v60 = a7;
  v55 = a6;
  v54 = a5;
  v58 = a3;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v10 - 8);
  v66 = v10;
  __chkstk_darwin(v10);
  v63 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static MOAngelLogger.shared);
  v52 = *(v14 + 16);
  v52(v18, a2, v13);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v50 = v15;
    v23 = v22;
    v24 = swift_slowAlloc();
    v51 = a2;
    v25 = v24;
    aBlock[0] = v24;
    *v23 = 136315138;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v13;
    v29 = v28;
    (*(v14 + 8))(v18, v27);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v29, aBlock);
    v13 = v27;

    *(v23 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v20, v21, "[MOEventBundleStore.failedResources] returning from HK, id=%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    a2 = v51;

    v15 = v50;
  }

  else
  {

    (*(v14 + 8))(v18, v13);
  }

  v50 = a9;
  if (one-time initialization token for defaultQueue != -1)
  {
    swift_once();
  }

  v51 = static MOEventBundleStore.defaultQueue;
  v31 = v53;
  v52(v53, a2, v13);
  v32 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v52 = v13;
  v33 = (v15 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 31) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v14 + 32))(v37 + v32, v31, v52);
  v38 = v57;
  *(v37 + v33) = v57;
  v39 = v59;
  *(v37 + v34) = v58;
  *(v37 + v35) = v39;
  v40 = v37 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v40 = v54;
  *(v40 + 8) = v55 & 1;
  *(v37 + v36) = v60;
  v41 = (v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8));
  v42 = v50;
  *v41 = v56;
  v41[1] = v42;
  aBlock[4] = partial apply for closure #1 in closure #2 in MOEventBundleStore._failedResourcesAsync(resources:completion:);
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_111;
  v43 = _Block_copy(aBlock);
  v44 = v38;

  v45 = v61;
  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v46 = v63;
  v47 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);
  (*(v65 + 8))(v46, v47);
  (*(v62 + 8))(v45, v64);
}

uint64_t closure #1 in closure #2 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t (*a8)(void))
{
  v39 = a6;
  v38 = a3;
  v40 = a2;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static MOAngelLogger.shared);
  (*(v13 + 16))(v15, a1, v12);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = a5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v37 = a8;
    v35 = v21;
    v43[0] = v21;
    *v20 = 136315138;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v13 + 8))(v15, v12);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v43);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "[MOEventBundleStore.failedResources] back on queue, id=%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    a8 = v37;

    a5 = v36;

    v26 = v40;
    if (v40)
    {
      goto LABEL_5;
    }

LABEL_10:
    v29 = v38;
    swift_beginAccess();
    *(v29 + 16) = 1;
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(&v42, a5);
    swift_endAccess();
    goto LABEL_11;
  }

  (*(v13 + 8))(v15, v12);
  v26 = v40;
  if (!v40)
  {
    goto LABEL_10;
  }

LABEL_5:
  v27 = v26;
  v28 = HKWorkout.distanceQuantityTypeForWorkoutType()();
  if (v28)
  {

    if (v39)
    {
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(v41, a5);
      swift_endAccess();
    }
  }

LABEL_11:
  result = swift_beginAccess();
  v31 = *(a7 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(a7 + 16) = v33;
    return a8(result);
  }

  return result;
}

uint64_t closure #3 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = a6;
  v61 = a8;
  v55 = a5;
  v56 = a7;
  v58 = a3;
  v59 = a4;
  v57 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v64 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v54 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static MOAngelLogger.shared);
  v53 = *(v13 + 16);
  v53(v17, a2, v12);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52 = a2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v51 = v14;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v12;
    v28 = v27;
    (*(v13 + 8))(v17, v26);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, aBlock);
    v12 = v26;

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "[MOEventBundleStore.failedResources] returning from HK for state of mind, id=%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v14 = v51;

    a2 = v52;
  }

  else
  {

    (*(v13 + 8))(v17, v12);
  }

  if (one-time initialization token for defaultQueue != -1)
  {
    swift_once();
  }

  v52 = static MOEventBundleStore.defaultQueue;
  v30 = v54;
  v53(v54, a2, v12);
  v31 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v32 = (v14 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = v12;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v13 + 32))(v37 + v31, v30, v53);
  v39 = v57;
  v38 = v58;
  *(v37 + v32) = v57;
  *(v37 + v33) = v38;
  v40 = v60;
  *(v37 + v34) = v59;
  v41 = v56;
  *(v37 + v35) = v55;
  *(v37 + v36) = v40;
  v42 = (v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8));
  v43 = v61;
  *v42 = v41;
  v42[1] = v43;
  aBlock[4] = partial apply for closure #1 in closure #3 in MOEventBundleStore._failedResourcesAsync(resources:completion:);
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_117;
  v44 = _Block_copy(aBlock);
  v45 = v39;

  v46 = v62;
  static DispatchQoS.unspecified.getter();
  v68 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v47 = v64;
  v48 = v67;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);
  (*(v66 + 8))(v47, v48);
  (*(v63 + 8))(v46, v65);
}

uint64_t closure #1 in closure #3 in MOEventBundleStore._failedResourcesAsync(resources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v38 = a3;
  v39 = a4;
  v40 = a2;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static MOAngelLogger.shared);
  (*(v14 + 16))(v16, a1, v13);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = a8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v37 = a7;
    v35 = v22;
    v42[0] = v22;
    *v21 = 136315138;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = a6;
    v25 = a5;
    v27 = v26;
    (*(v14 + 8))(v16, v13);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v27, v42);
    a5 = v25;
    a6 = v24;

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "[MOEventBundleStore.failedResources] back on queue for state of mind, id=%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    a7 = v37;

    if (v40)
    {
      goto LABEL_8;
    }
  }

  else
  {

    (*(v14 + 8))(v16, v13);
    if (v40)
    {
      goto LABEL_8;
    }
  }

  v29 = v38;
  swift_beginAccess();
  *(v29 + 16) = 1;
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v41, a5);
  swift_endAccess();
LABEL_8:
  result = swift_beginAccess();
  v31 = *(a6 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(a6 + 16) = v33;
    return a7(result);
  }

  return result;
}

Swift::Void __swiftcall MOEventBundleStore.softRefreshDidComplete()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static MOAngelLogger.shared);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[MOEventBundleStore] returning from softRefreshEvents", v5, 2u);
    }

    v6 = (*(*v1 + 416))(0);
    v17 = v1;
    v7 = (*(*v1 + 552))(v6);
    v8 = v7;
    v9 = *(v7 + 16);
    if (!v9)
    {
      break;
    }

    v1 = 0;
    v10 = v7 + 40;
    while (v1 < *(v8 + 16))
    {
      v11 = *(v10 - 8);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "[MOEventBundleStore] executing completions that rely on soft refresh finish", v14, 2u);
      }

      ++v1;

      v11();

      v10 += 16;
      if (v9 == v1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_10:

  v15 = (*(*v17 + 568))(v18);
  *v16 = _swiftEmptyArrayStorage;

  v15(v18, 0);
}