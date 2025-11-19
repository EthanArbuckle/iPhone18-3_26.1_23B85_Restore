@interface ActivitySharingFriendDetailActivitySummaryProvider
- (BOOL)isStandaloneForCacheIndex:(int64_t)a3;
- (_TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider)init;
- (id)activitySummaryForCacheIndex:(int64_t)a3;
- (int64_t)earliestActivitySummaryIndex;
- (int64_t)fitnessStartOfWeekOffset;
- (int64_t)latestActivitySummaryIndex;
- (int64_t)numberOfActivitySummaries;
@end

@implementation ActivitySharingFriendDetailActivitySummaryProvider

- (id)activitySummaryForCacheIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_1004F4514(a3);

  return v5;
}

- (int64_t)numberOfActivitySummaries
{
  v2 = self;
  v3 = sub_1004F46E0();

  return v3;
}

- (int64_t)earliestActivitySummaryIndex
{
  v2 = self;
  v3 = sub_1004F47EC();

  return v3;
}

- (int64_t)latestActivitySummaryIndex
{
  v2 = self;
  v3 = sub_1004F484C();

  return v3;
}

- (int64_t)fitnessStartOfWeekOffset
{
  v2 = self;
  v3 = sub_1004F4A30();

  return v3;
}

- (BOOL)isStandaloneForCacheIndex:(int64_t)a3
{
  v5 = objc_allocWithZone(NSNumber);
  v6 = self;
  v7 = [v5 initWithLongLong:a3];
  LOBYTE(v5) = [*(&v6->super.isa + OBJC_IVAR____TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider_friend) estimatedIsStandaloneForSnapshotIndex:v7];

  return v5;
}

- (_TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end