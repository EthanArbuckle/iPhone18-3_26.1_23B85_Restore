@interface ChargingStatusViewFactory
+ (id)createCellWith:(id)with;
- (_TtC14BatteryUsageUI25ChargingStatusViewFactory)init;
@end

@implementation ChargingStatusViewFactory

+ (id)createCellWith:(id)with
{
  withCopy = with;
  v5 = sub_A81A4(with);

  return v5;
}

- (_TtC14BatteryUsageUI25ChargingStatusViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ChargingStatusViewFactory();
  return [(ChargingStatusViewFactory *)&v3 init];
}

@end