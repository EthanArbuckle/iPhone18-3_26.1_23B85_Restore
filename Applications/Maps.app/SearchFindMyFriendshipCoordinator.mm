@interface SearchFindMyFriendshipCoordinator
- (_TtC4Maps33SearchFindMyFriendshipCoordinator)init;
- (_TtC4Maps33SearchFindMyFriendshipCoordinator)initWith:(id)a3;
- (_TtP4Maps30SearchFindMyFriendshipDelegate_)delegate;
- (void)getLatestLocationsFor:(id)a3 completion:(id)a4;
- (void)startMonitoringHandles;
- (void)stopMonitoringHandlesWithCompletionHandler:(id)a3;
@end

@implementation SearchFindMyFriendshipCoordinator

- (_TtP4Maps30SearchFindMyFriendshipDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps33SearchFindMyFriendshipCoordinator)initWith:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(self + OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_session) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_updateStream;
  v8 = sub_1000CE6B8(&qword_1019190B8);
  (*(*(v8 - 8) + 56))(self + v7, 1, 1, v8);
  v9 = (self + OBJC_IVAR____TtC4Maps33SearchFindMyFriendshipCoordinator_handleId);
  *v9 = v4;
  v9[1] = v6;
  v11.receiver = self;
  v11.super_class = type metadata accessor for SearchFindMyFriendshipCoordinator();
  return [(SearchFindMyFriendshipCoordinator *)&v11 init];
}

- (void)getLatestLocationsFor:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1002F8D4C(v8, sub_1000D2C9C, v7);
}

- (void)startMonitoringHandles
{
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  v8 = self;
  sub_10020AAE4(0, 0, v5, &unk_1011F97F8, v7);
}

- (void)stopMonitoringHandlesWithCompletionHandler:(id)a3
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
  v11[4] = &unk_1011F97E8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1011F9360;
  v12[5] = v11;
  v13 = self;
  sub_10054DB08(0, 0, v7, &unk_1011F66B0, v12);
}

- (_TtC4Maps33SearchFindMyFriendshipCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end