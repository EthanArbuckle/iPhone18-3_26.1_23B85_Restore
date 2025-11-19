@interface WOCyclingPowerZone
- (BOOL)isEmpty;
- (BOOL)isFTPRange;
- (HKQuantity)lowerBound;
- (HKQuantity)upperBound;
- (WOCyclingPowerZone)init;
- (double)percentageLowerBound;
- (double)percentageUpperBound;
- (int64_t)index;
@end

@implementation WOCyclingPowerZone

- (HKQuantity)lowerBound
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZone_zone);
  v3 = self;
  v4 = sub_223F4();

  return v4;
}

- (HKQuantity)upperBound
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZone_zone);
  v3 = self;
  v4 = sub_22404();

  return v4;
}

- (double)percentageLowerBound
{
  sub_22714();
  v3 = *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZone_zone);
  v4 = self;
  sub_22414();
  sub_22704();
  v6 = v5;

  return v6;
}

- (double)percentageUpperBound
{
  sub_22714();
  v3 = *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZone_zone);
  v4 = self;
  sub_22414();
  sub_22704();
  v6 = v5;

  return v6;
}

- (int64_t)index
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZone_zone);
  v3 = self;
  v4 = sub_22734();

  return v4;
}

- (BOOL)isEmpty
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZone_zone);
  v3 = self;
  LOBYTE(v2) = sub_22424();

  return v2 & 1;
}

- (BOOL)isFTPRange
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZone_zone);
  v3 = self;
  sub_22414();
  v5 = v4;
  v7 = v6;

  return v7 > 1.0 && v5 <= 1.0;
}

- (WOCyclingPowerZone)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end