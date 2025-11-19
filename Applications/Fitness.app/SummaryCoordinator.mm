@interface SummaryCoordinator
- (_TtC10FitnessApp18SummaryCoordinator)init;
- (void)logCardConfigurationAnalytics;
- (void)pregnancyModelDidChangeWithProvider:(id)a3 model:(id)a4;
@end

@implementation SummaryCoordinator

- (void)pregnancyModelDidChangeWithProvider:(id)a3 model:(id)a4
{
  v4 = self;
  sub_100069D98(0x32u);
}

- (void)logCardConfigurationAnalytics
{
  v2 = self;
  sub_1003DD1E8();
}

- (_TtC10FitnessApp18SummaryCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end