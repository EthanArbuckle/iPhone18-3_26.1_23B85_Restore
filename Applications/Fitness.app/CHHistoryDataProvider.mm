@interface CHHistoryDataProvider
- (CHHistoryDataProvider)init;
- (void)setMindfulnessSessionDataProvider:(id)provider;
- (void)setWorkoutDataProvider:(id)provider;
@end

@implementation CHHistoryDataProvider

- (void)setWorkoutDataProvider:(id)provider
{
  v4 = *(&self->super.isa + OBJC_IVAR___CHHistoryDataProvider_workoutDataProvider);
  *(&self->super.isa + OBJC_IVAR___CHHistoryDataProvider_workoutDataProvider) = provider;
  providerCopy = provider;
}

- (void)setMindfulnessSessionDataProvider:(id)provider
{
  v4 = *(&self->super.isa + OBJC_IVAR___CHHistoryDataProvider_mindfulnessSessionDataProvider);
  *(&self->super.isa + OBJC_IVAR___CHHistoryDataProvider_mindfulnessSessionDataProvider) = provider;
  providerCopy = provider;
}

- (CHHistoryDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end