@interface SearchMapsSyncOperation
- (BOOL)checkIfCancelledOrFinished;
- (NSString)searchQuery;
- (_TtC4Maps23SearchMapsSyncOperation)init;
- (_TtC4Maps23SearchMapsSyncOperation)initWithSearchQuery:(id)query context:(id)context includeCustomRoutes:(BOOL)routes;
- (_TtP4Maps31SearchMapsSyncOperationDelegate_)delegate;
- (id)matchInfo;
- (void)cancel;
- (void)main;
- (void)markOperationAsComplete;
- (void)start;
@end

@implementation SearchMapsSyncOperation

- (NSString)searchQuery
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtP4Maps31SearchMapsSyncOperationDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps23SearchMapsSyncOperation)initWithSearchQuery:(id)query context:(id)context includeCustomRoutes:(BOOL)routes
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_isExecutingOperation) = 0;
  *(self + OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_isFinishedOperation) = 0;
  *(self + OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_task) = 0;
  v11 = (self + OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_searchQuery);
  *v11 = v8;
  v11[1] = v10;
  *(self + OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_context) = context;
  *(self + OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_includeCustomRoutes) = routes;
  v14.receiver = self;
  v14.super_class = type metadata accessor for SearchMapsSyncOperation();
  contextCopy = context;
  return [(SearchMapsSyncOperation *)&v14 init];
}

- (void)start
{
  selfCopy = self;
  sub_10032939C();
}

- (void)main
{
  ObjectType = swift_getObjectType();
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  selfCopy = self;
  static TaskPriority.userInitiated.getter();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = selfCopy;
  v9[5] = ObjectType;
  v10 = selfCopy;
  *(v10 + OBJC_IVAR____TtC4Maps23SearchMapsSyncOperation_task) = sub_10020AAE4(0, 0, v6, &unk_1011FB028, v9);
}

- (id)matchInfo
{
  selfCopy = self;
  v3 = sub_10032C574();

  return v3;
}

- (void)cancel
{
  selfCopy = self;
  sub_10032C7C8();
}

- (BOOL)checkIfCancelledOrFinished
{
  selfCopy = self;
  v3 = sub_10032CE3C();

  return v3 & 1;
}

- (void)markOperationAsComplete
{
  selfCopy = self;
  sub_10032D0A8();
}

- (_TtC4Maps23SearchMapsSyncOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end