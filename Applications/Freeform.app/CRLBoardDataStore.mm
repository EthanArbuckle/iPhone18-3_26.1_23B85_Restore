@interface CRLBoardDataStore
+ (id)newTransientStoreWithQueue:(id)a3 error:(id *)a4;
- (BOOL)_addUnsupportedZonesToRefetch:(id)a3 error:(id *)a4;
- (BOOL)_addZonesToRefetch:(id)a3 version:(unint64_t)a4 error:(id *)a5;
- (BOOL)ensureOwnershipOfDataAndReturnError:(id *)a3;
- (BOOL)saveAssetEntryWithAssetUUID:(id)a3 fileExtension:(id)a4 error:(id *)a5;
- (NSSet)recordIDsToOverwrite;
- (NSURL)dataDirectory;
- (_TtC8Freeform15CRLAssetManager)assetManager;
- (_TtC8Freeform17CRLBoardDataStore)init;
- (_TtC8Freeform19CRLAssetFileManager)assetFileManager;
- (id)fetchZonesNeedingRefetchFor:(unint64_t)a3 error:(id *)a4;
- (void)addUnsupportedZonesToRefetch:(NSSet *)a3 completionHandler:(id)a4;
- (void)addZonesToRefetch:(NSSet *)a3 version:(unint64_t)a4 completionHandler:(id)a5;
- (void)clearDataClassOwnerUserDefaults;
- (void)closeDatabaseWithCompletion:(id)a3;
- (void)closeDatabaseWithCompletionHandler:(id)a3;
- (void)fetchZonesNeedingRefetchFor:(unint64_t)a3 completionHandler:(id)a4;
- (void)openDatabaseWithCompletion:(id)a3;
- (void)openDatabaseWithCompletionHandler:(id)a3;
- (void)removeUnsupportedZoneToRefetch:(CKRecordZoneID *)a3 completionHandler:(id)a4;
- (void)removeZoneToRefetch:(CKRecordZoneID *)a3 completionHandler:(id)a4;
- (void)scheduleCleanupForBoardsPastTTLOnCleanup:(id)a3;
- (void)setRecordIDsToOverwrite:(id)a3;
- (void)updateRefetchStatusAfterSuccessfulRefetchFor:(CKRecordZoneID *)a3 completionHandler:(id)a4;
- (void)upgradeForRdar_102994991;
- (void)upgradeForRdar_119152219;
- (void)upgradeSyncMetadataToNewFormat_105187224;
@end

@implementation CRLBoardDataStore

- (NSURL)dataDirectory
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_dataDirectory, v3, v5);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (NSSet)recordIDsToOverwrite
{
  swift_beginAccess();
  sub_100006370(0, &qword_1019F6E98);
  sub_10000FDE0(&qword_101A11D70, &qword_1019F6E98);

  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setRecordIDsToOverwrite:(id)a3
{
  sub_100006370(0, &qword_1019F6E98);
  sub_10000FDE0(&qword_101A11D70, &qword_1019F6E98);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_recordIDsToOverwrite;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (_TtC8Freeform15CRLAssetManager)assetManager
{
  v2 = self;
  v3 = sub_100DCC140();

  return v3;
}

- (_TtC8Freeform19CRLAssetFileManager)assetFileManager
{
  v2 = self;
  v3 = sub_100DC9FB0();

  return v3;
}

- (void)openDatabaseWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10001E534(sub_1008D02E0, v5, &OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue, &unk_1018A65F0, sub_10001E85C, &unk_1018A6608);
}

- (void)openDatabaseWithCompletionHandler:(id)a3
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1014B6A80;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1014B6A88;
  v12[5] = v11;
  v13 = self;
  sub_10119D67C(0, 0, v7, &unk_1014B6A90, v12);
}

- (void)closeDatabaseWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10001E534(sub_100685EBC, v5, &OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue, &unk_1018A64D8, sub_100EA51D4, &unk_1018A64F0);
}

- (void)closeDatabaseWithCompletionHandler:(id)a3
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1014B6A58;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1014B6A60;
  v12[5] = v11;
  v13 = self;
  sub_10119D67C(0, 0, v7, &unk_1014B6A68, v12);
}

- (_TtC8Freeform17CRLBoardDataStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)newTransientStoreWithQueue:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_100E980B4(v4);

  return v5;
}

- (BOOL)ensureOwnershipOfDataAndReturnError:(id *)a3
{
  v3 = self;
  OS_dispatch_queue.sync<A>(execute:)();

  return 1;
}

- (void)upgradeForRdar_102994991
{
  v2 = self;
  sub_100DE08EC();
}

- (void)upgradeForRdar_119152219
{
  v2 = self;
  sub_100DE0BD8();
}

- (void)upgradeSyncMetadataToNewFormat_105187224
{
  v2 = qword_1019F22A0;
  v6 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.upgrade;
  v4 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v4, "Running upgrade code for rdar://105187224", 41, 2, _swiftEmptyArrayStorage);
  sub_100DE12E0(0);
  sub_100DE12E0(1);
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v5, "Finished running upgrade code for rdar://105187224", 50, 2, _swiftEmptyArrayStorage);
}

- (void)clearDataClassOwnerUserDefaults
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_userDefaults);
  v3 = self;
  [v2 removeObjectForKey:@"CRLUserHasDataUserDefault"];
  [v2 removeObjectForKey:@"CRLUserHasUnsyncedDataUserDefault"];
}

- (void)scheduleCleanupForBoardsPastTTLOnCleanup:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1008CDF48;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_10002E43C(v7, v6);
  sub_1000C1014(v7);
}

- (id)fetchZonesNeedingRefetchFor:(unint64_t)a3 error:(id *)a4
{
  v4 = self;
  sub_1005B981C(&unk_1019F52B0);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_100006370(0, &qword_1019F69D0);
  sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)fetchZonesNeedingRefetchFor:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1014B6A10;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1014B6A18;
  v14[5] = v13;
  v15 = self;
  sub_10119D67C(0, 0, v9, &unk_1014B6A20, v14);
}

- (void)addZonesToRefetch:(NSSet *)a3 version:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1014B69E8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1014B69F0;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_10119D67C(0, 0, v11, &unk_1014B69F8, v16);
}

- (BOOL)_addZonesToRefetch:(id)a3 version:(unint64_t)a4 error:(id *)a5
{
  sub_100006370(0, &qword_1019F69D0);
  sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100E2863C(v7, a4);

  return 1;
}

- (void)removeZoneToRefetch:(CKRecordZoneID *)a3 completionHandler:(id)a4
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1014B69C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1014B69D0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10119D67C(0, 0, v9, &unk_1014B69D8, v14);
}

- (void)updateRefetchStatusAfterSuccessfulRefetchFor:(CKRecordZoneID *)a3 completionHandler:(id)a4
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1014B69A8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1014B69B0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10119D67C(0, 0, v9, &unk_1014B69B8, v14);
}

- (void)addUnsupportedZonesToRefetch:(NSSet *)a3 completionHandler:(id)a4
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1014B6988;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1014B6990;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10119D67C(0, 0, v9, &unk_1014B6998, v14);
}

- (BOOL)_addUnsupportedZonesToRefetch:(id)a3 error:(id *)a4
{
  sub_100006370(0, &qword_1019F69D0);
  sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  sub_100E2B4E8(v5);

  return 1;
}

- (void)removeUnsupportedZoneToRefetch:(CKRecordZoneID *)a3 completionHandler:(id)a4
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1014B6978;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1014938A0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10119D67C(0, 0, v9, &unk_101470870, v14);
}

- (BOOL)saveAssetEntryWithAssetUUID:(id)a3 fileExtension:(id)a4 error:(id *)a5
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  __chkstk_darwin(v11);
  *&v17[-32] = self;
  *&v17[-24] = v10;
  *&v17[-16] = v14;
  *&v17[-8] = v13;
  v15 = self;
  OS_dispatch_queue.sync<A>(execute:)();

  (*(v8 + 8))(v10, v7);
  return 1;
}

@end