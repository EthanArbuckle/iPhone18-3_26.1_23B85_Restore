@interface UsageSummaryViewController
+ (id)createControllerWith:(id)a3;
- (_TtC14BatteryUsageUI26UsageSummaryViewController)init;
@end

@implementation UsageSummaryViewController

+ (id)createControllerWith:(id)a3
{
  v3 = a3;
  v4 = sub_46E7C(v3);

  return v4;
}

- (_TtC14BatteryUsageUI26UsageSummaryViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UsageSummaryViewController();
  return [(UsageSummaryViewController *)&v3 init];
}

@end