@interface HKMCAdjacentFlowAnalyzer.ChangeSetDay
- (BOOL)isFetched;
- (int64_t)dayIndex;
@end

@implementation HKMCAdjacentFlowAnalyzer.ChangeSetDay

- (int64_t)dayIndex
{

  v2 = sub_29E2C3164();

  return v2;
}

- (BOOL)isFetched
{
  v2 = self + OBJC_IVAR____TtCE24MenstrualCyclesAppPluginCSo24HKMCAdjacentFlowAnalyzer12ChangeSetDay_cycleDay;
  v3 = *&v2[*(type metadata accessor for CycleDay() + 20)];

  return [v3 isFetched];
}

@end