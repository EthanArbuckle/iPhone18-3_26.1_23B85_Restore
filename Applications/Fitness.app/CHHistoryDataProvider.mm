@interface CHHistoryDataProvider
- (CHHistoryDataProvider)init;
- (void)setMindfulnessSessionDataProvider:(id)a3;
- (void)setWorkoutDataProvider:(id)a3;
@end

@implementation CHHistoryDataProvider

- (void)setWorkoutDataProvider:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CHHistoryDataProvider_workoutDataProvider);
  *(&self->super.isa + OBJC_IVAR___CHHistoryDataProvider_workoutDataProvider) = a3;
  v3 = a3;
}

- (void)setMindfulnessSessionDataProvider:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CHHistoryDataProvider_mindfulnessSessionDataProvider);
  *(&self->super.isa + OBJC_IVAR___CHHistoryDataProvider_mindfulnessSessionDataProvider) = a3;
  v3 = a3;
}

- (CHHistoryDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end