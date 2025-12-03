@interface ActivitySharingFriendDetailActivitySummaryProvider
- (BOOL)isStandaloneForCacheIndex:(int64_t)index;
- (_TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider)init;
- (id)activitySummaryForCacheIndex:(int64_t)index;
- (int64_t)earliestActivitySummaryIndex;
- (int64_t)fitnessStartOfWeekOffset;
- (int64_t)latestActivitySummaryIndex;
- (int64_t)numberOfActivitySummaries;
@end

@implementation ActivitySharingFriendDetailActivitySummaryProvider

- (id)activitySummaryForCacheIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_1004F4514(index);

  return v5;
}

- (int64_t)numberOfActivitySummaries
{
  selfCopy = self;
  v3 = sub_1004F46E0();

  return v3;
}

- (int64_t)earliestActivitySummaryIndex
{
  selfCopy = self;
  v3 = sub_1004F47EC();

  return v3;
}

- (int64_t)latestActivitySummaryIndex
{
  selfCopy = self;
  v3 = sub_1004F484C();

  return v3;
}

- (int64_t)fitnessStartOfWeekOffset
{
  selfCopy = self;
  v3 = sub_1004F4A30();

  return v3;
}

- (BOOL)isStandaloneForCacheIndex:(int64_t)index
{
  v5 = objc_allocWithZone(NSNumber);
  selfCopy = self;
  v7 = [v5 initWithLongLong:index];
  LOBYTE(v5) = [*(&selfCopy->super.isa + OBJC_IVAR____TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider_friend) estimatedIsStandaloneForSnapshotIndex:v7];

  return v5;
}

- (_TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end