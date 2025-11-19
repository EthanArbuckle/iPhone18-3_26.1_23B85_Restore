@interface UpdatesDatabaseMergeResult
- (NSArray)bundleIDs;
- (_TtC9appstored26UpdatesDatabaseMergeResult)init;
- (_TtC9appstored26UpdatesDatabaseMergeResult)initWithAvailableUpdateCount:(int64_t)a3 shouldNotifyOfChanges:(BOOL)a4 bundleIDs:(id)a5 result:(BOOL)a6;
@end

@implementation UpdatesDatabaseMergeResult

- (NSArray)bundleIDs
{

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (_TtC9appstored26UpdatesDatabaseMergeResult)initWithAvailableUpdateCount:(int64_t)a3 shouldNotifyOfChanges:(BOOL)a4 bundleIDs:(id)a5 result:(BOOL)a6
{
  ObjectType = swift_getObjectType();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_availableUpdateCount) = a3;
  *(self + OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_shouldNotifyOfChanges) = a4;
  *(self + OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_bundleIDs) = v11;
  *(self + OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_result) = a6;
  v13.receiver = self;
  v13.super_class = ObjectType;
  return [(UpdatesDatabaseMergeResult *)&v13 init];
}

- (_TtC9appstored26UpdatesDatabaseMergeResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end