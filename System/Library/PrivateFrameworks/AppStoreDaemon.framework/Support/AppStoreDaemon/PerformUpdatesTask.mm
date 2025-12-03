@interface PerformUpdatesTask
- (NSArray)jobResults;
- (_TtC9appstored18PerformUpdatesTask)init;
- (_TtC9appstored18PerformUpdatesTask)initWithLogKey:(id)key;
- (_TtC9appstored18PerformUpdatesTask)initWithOrderedBundleIDs:(id)ds context:(id)context bag:(id)bag;
- (_TtC9appstored18PerformUpdatesTask)initWithoutKeepAlive;
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation PerformUpdatesTask

- (NSArray)jobResults
{
  v2 = (self + OBJC_IVAR____TtC9appstored18PerformUpdatesTask_output);
  selfCopy = self;
  os_unfair_lock_lock(v2);

  os_unfair_lock_unlock(v2);

  sub_10009FAD4(0, &qword_10059C4D0);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (_TtC9appstored18PerformUpdatesTask)initWithOrderedBundleIDs:(id)ds context:(id)context bag:(id)bag
{
  if (ds)
  {
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  return sub_1000A81D4(v7, context, bag);
}

- (void)mainWithCompletionHandler:(id)handler
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1004353B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (_TtC9appstored18PerformUpdatesTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored18PerformUpdatesTask)initWithLogKey:(id)key
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored18PerformUpdatesTask)initWithoutKeepAlive
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end