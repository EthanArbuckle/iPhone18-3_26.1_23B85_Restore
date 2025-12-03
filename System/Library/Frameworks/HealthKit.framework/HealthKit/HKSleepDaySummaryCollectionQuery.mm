@interface HKSleepDaySummaryCollectionQuery
- (HKSleepDaySummaryCollectionQuery)init;
- (HKSleepDaySummaryCollectionQuery)initWithMorningIndexRange:(id)range resultsHandler:(id)handler;
@end

@implementation HKSleepDaySummaryCollectionQuery

- (HKSleepDaySummaryCollectionQuery)initWithMorningIndexRange:(id)range resultsHandler:(id)handler
{
  var1 = range.var1;
  var0 = range.var0;
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = sub_191C6E40C(var0, var1, sub_191C6E590, v7);

  return v8;
}

- (HKSleepDaySummaryCollectionQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end