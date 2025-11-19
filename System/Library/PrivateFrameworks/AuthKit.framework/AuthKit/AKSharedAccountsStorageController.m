@interface AKSharedAccountsStorageController
- (AKSharedAccountsStorageController)init;
- (AKSharedAccountsStorageController)initWithKeychainStorageController:(id)a3 keychainGroupManager:(id)a4;
- (BOOL)cleanupAllItemsFrom:(id)a3 error:(id *)a4;
- (BOOL)removeAllAccountsBelongingToParticipantWithParticipantID:(id)a3 from:(id)a4 error:(id *)a5;
- (id)shareTokenForAccount:(id)a3 inGroup:(id)a4 error:(id *)a5;
- (void)fetchAccountsSharedWithCurrentUserWithClientID:(NSString *)a3 completionHandler:(id)a4;
- (void)fetchAllAccountsSharedByCurrentUserWithCompletionHandler:(id)a3;
- (void)fetchAllSharedAccountsWithShareTokenWithCompletionHandler:(id)a3;
- (void)fetchSharedAccountsWithGroupID:(NSString *)a3 completionHandler:(id)a4;
- (void)isMemberOfGroupWithGroupID:(NSString *)a3 completion:(id)a4;
- (void)removeAllAccountsBelongingToCurrentUserFrom:(NSString *)a3 completionHandler:(id)a4;
- (void)removeSharedAccountBelongingToCurrentUserWithClientID:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation AKSharedAccountsStorageController

- (AKSharedAccountsStorageController)initWithKeychainStorageController:(id)a3 keychainGroupManager:(id)a4
{
  swift_getObjectType();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return sub_1001F1260(a3, a4, self);
}

- (void)fetchSharedAccountsWithGroupID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029E078;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029E080;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100244978(0, 0, v10, &unk_10029E088, v15);
}

- (void)fetchAllSharedAccountsWithShareTokenWithCompletionHandler:(id)a3
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029E058;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029E060;
  v13[5] = v12;
  v14 = self;
  sub_100244978(0, 0, v8, &unk_10029E3B0, v13);
}

- (void)fetchAccountsSharedWithCurrentUserWithClientID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029E038;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029E040;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100244978(0, 0, v10, &unk_10029E390, v15);
}

- (id)shareTokenForAccount:(id)a3 inGroup:(id)a4 error:(id *)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_1001EDA94(v7);

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (void)isMemberOfGroupWithGroupID:(NSString *)a3 completion:(id)a4
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029E018;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029E020;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100244978(0, 0, v10, &unk_10029E028, v15);
}

- (void)fetchAllAccountsSharedByCurrentUserWithCompletionHandler:(id)a3
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029DFF8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029E000;
  v13[5] = v12;
  v14 = self;
  sub_100244978(0, 0, v8, &unk_10029E008, v13);
}

- (void)removeSharedAccountBelongingToCurrentUserWithClientID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029DFE8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029CFF0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100244978(0, 0, v10, &unk_10029CFF8, v15);
}

- (void)removeAllAccountsBelongingToCurrentUserFrom:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029DFD8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029C6A0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100244978(0, 0, v10, &unk_10029CEE0, v15);
}

- (BOOL)removeAllAccountsBelongingToParticipantWithParticipantID:(id)a3 from:(id)a4 error:(id *)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  sub_1001F056C();

  return 1;
}

- (BOOL)cleanupAllItemsFrom:(id)a3 error:(id *)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_1001F0774();

  return 1;
}

- (AKSharedAccountsStorageController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end