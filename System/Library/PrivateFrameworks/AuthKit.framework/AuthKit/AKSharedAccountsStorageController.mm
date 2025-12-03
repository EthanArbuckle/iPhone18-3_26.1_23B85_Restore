@interface AKSharedAccountsStorageController
- (AKSharedAccountsStorageController)init;
- (AKSharedAccountsStorageController)initWithKeychainStorageController:(id)controller keychainGroupManager:(id)manager;
- (BOOL)cleanupAllItemsFrom:(id)from error:(id *)error;
- (BOOL)removeAllAccountsBelongingToParticipantWithParticipantID:(id)d from:(id)from error:(id *)error;
- (id)shareTokenForAccount:(id)account inGroup:(id)group error:(id *)error;
- (void)fetchAccountsSharedWithCurrentUserWithClientID:(NSString *)d completionHandler:(id)handler;
- (void)fetchAllAccountsSharedByCurrentUserWithCompletionHandler:(id)handler;
- (void)fetchAllSharedAccountsWithShareTokenWithCompletionHandler:(id)handler;
- (void)fetchSharedAccountsWithGroupID:(NSString *)d completionHandler:(id)handler;
- (void)isMemberOfGroupWithGroupID:(NSString *)d completion:(id)completion;
- (void)removeAllAccountsBelongingToCurrentUserFrom:(NSString *)from completionHandler:(id)handler;
- (void)removeSharedAccountBelongingToCurrentUserWithClientID:(NSString *)d completionHandler:(id)handler;
@end

@implementation AKSharedAccountsStorageController

- (AKSharedAccountsStorageController)initWithKeychainStorageController:(id)controller keychainGroupManager:(id)manager
{
  swift_getObjectType();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return sub_1001F1260(controller, manager, self);
}

- (void)fetchSharedAccountsWithGroupID:(NSString *)d completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
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
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029E088, v15);
}

- (void)fetchAllSharedAccountsWithShareTokenWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
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
  selfCopy = self;
  sub_100244978(0, 0, v8, &unk_10029E3B0, v13);
}

- (void)fetchAccountsSharedWithCurrentUserWithClientID:(NSString *)d completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
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
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029E390, v15);
}

- (id)shareTokenForAccount:(id)account inGroup:(id)group error:(id *)error
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  accountCopy = account;
  selfCopy = self;
  sub_1001EDA94(accountCopy);

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (void)isMemberOfGroupWithGroupID:(NSString *)d completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
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
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029E028, v15);
}

- (void)fetchAllAccountsSharedByCurrentUserWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
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
  selfCopy = self;
  sub_100244978(0, 0, v8, &unk_10029E008, v13);
}

- (void)removeSharedAccountBelongingToCurrentUserWithClientID:(NSString *)d completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
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
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029CFF8, v15);
}

- (void)removeAllAccountsBelongingToCurrentUserFrom:(NSString *)from completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = from;
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
  fromCopy = from;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029CEE0, v15);
}

- (BOOL)removeAllAccountsBelongingToParticipantWithParticipantID:(id)d from:(id)from error:(id *)error
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1001F056C();

  return 1;
}

- (BOOL)cleanupAllItemsFrom:(id)from error:(id *)error
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
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