@interface SearchFindMyFriendOperation
- (BOOL)checkIfCancelledOrFinished;
- (NSString)searchQuery;
- (_TtC4Maps27SearchFindMyFriendOperation)init;
- (_TtC4Maps27SearchFindMyFriendOperation)initWithSearchQuery:(id)a3 context:(id)a4 isOffline:(BOOL)a5 singularResults:(BOOL)a6 searchFindMySession:(id)a7;
- (_TtP4Maps35SearchFindMyFriendOperationDelegate_)delegate;
- (void)cancel;
- (void)contactsMatchingSearchQueryWithCompletionHandler:(id)a3;
- (void)createAutocompletePersonContacts;
- (void)main;
- (void)markOperationAsComplete;
- (void)markOperationAsInComplete;
- (void)start;
@end

@implementation SearchFindMyFriendOperation

- (NSString)searchQuery
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtP4Maps35SearchFindMyFriendOperationDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps27SearchFindMyFriendOperation)initWithSearchQuery:(id)a3 context:(id)a4 isOffline:(BOOL)a5 singularResults:(BOOL)a6 searchFindMySession:(id)a7
{
  v8 = a6;
  v9 = a5;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = a4;
  v15 = a7;
  v16 = sub_1003F2B7C(v11, v13, v14, v9, v8, a7);

  return v16;
}

- (void)start
{
  v2 = self;
  sub_1003E79AC();
}

- (void)main
{
  v2 = self;
  sub_1003E7D50();
}

- (void)cancel
{
  v2 = self;
  sub_1003EE244();
}

- (BOOL)checkIfCancelledOrFinished
{
  v2 = self;
  v3 = sub_1003EE850();

  return v3 & 1;
}

- (_TtC4Maps27SearchFindMyFriendOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contactsMatchingSearchQueryWithCompletionHandler:(id)a3
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
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
  v11[4] = &unk_101203FB0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1011F9360;
  v12[5] = v11;
  v13 = self;
  sub_10054DB08(0, 0, v7, &unk_1011F66B0, v12);
}

- (void)createAutocompletePersonContacts
{
  v2 = self;
  sub_1003F1C94();
}

- (void)markOperationAsComplete
{
  v2 = self;
  sub_1003F23D4(1, 0);
}

- (void)markOperationAsInComplete
{
  v2 = self;
  sub_1003F23D4(0, 1);
}

@end