@interface WOFunctionalThresholdPower
- (BOOL)isAvailable;
- (HKQuantity)quantity;
- (NSDate)creationDate;
- (WOFunctionalThresholdPower)init;
- (double)value;
@end

@implementation WOFunctionalThresholdPower

- (HKQuantity)quantity
{
  v3 = objc_opt_self();
  selfCopy = self;
  wattUnit = [v3 wattUnit];
  v6 = *(&selfCopy->super.isa + OBJC_IVAR___WOFunctionalThresholdPower_functionalThresholdPower);
  sub_22594();
  v8 = [objc_opt_self() quantityWithUnit:wattUnit doubleValue:v7];

  return v8;
}

- (BOOL)isAvailable
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOFunctionalThresholdPower_functionalThresholdPower);
  selfCopy = self;
  LOBYTE(v2) = sub_22564();

  return v2 & 1;
}

- (NSDate)creationDate
{
  v3 = sub_22254();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR___WOFunctionalThresholdPower_functionalThresholdPower);
  selfCopy = self;
  sub_22574();

  v10.super.isa = sub_22224().super.isa;
  (*(v4 + 8))(v7, v3);

  return v10.super.isa;
}

- (double)value
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOFunctionalThresholdPower_functionalThresholdPower);
  selfCopy = self;
  sub_22594();
  v5 = v4;

  return v5;
}

- (WOFunctionalThresholdPower)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end