@interface UsageSummaryViewController
+ (id)createControllerWith:(id)with;
- (_TtC14BatteryUsageUI26UsageSummaryViewController)init;
@end

@implementation UsageSummaryViewController

+ (id)createControllerWith:(id)with
{
  withCopy = with;
  v4 = sub_46E7C(withCopy);

  return v4;
}

- (_TtC14BatteryUsageUI26UsageSummaryViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UsageSummaryViewController();
  return [(UsageSummaryViewController *)&v3 init];
}

@end