@interface ACHFastestDistanceCalculator
- (ACHFastestDistanceCalculator)init;
- (ACHFastestDistanceCalculator)initWithHealthStore:(id)a3;
- (id)fastestDistancesFor:(id)a3;
- (id)quantityTypeIdentifierForDistance:(id)a3;
@end

@implementation ACHFastestDistanceCalculator

- (ACHFastestDistanceCalculator)initWithHealthStore:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___ACHFastestDistanceCalculator_healthStore) = a3;
  v5.receiver = self;
  v5.super_class = ACHFastestDistanceCalculator;
  v3 = a3;
  return [(ACHFastestDistanceCalculator *)&v5 init];
}

- (id)quantityTypeIdentifierForDistance:(id)a3
{
  v3 = a3;
  v4 = [v3 workoutActivityType];
  if (v4 == 37)
  {
    v5 = MEMORY[0x277CCCB40];
  }

  else
  {
    if (v4 != 71)
    {
      result = sub_221E57060();
      __break(1u);
      return result;
    }

    v5 = MEMORY[0x277CCCB48];
  }

  sub_221E511E8(0, &qword_27CFEA898, 0x277CCD830);
  v6 = MEMORY[0x223DAA730](*v5);

  return v6;
}

- (id)fastestDistancesFor:(id)a3
{
  v4 = a3;
  v5 = self;
  ACHFastestDistanceCalculator.fastestDistances(for:)(v6, v4);
  v8 = v7;

  return v8;
}

- (ACHFastestDistanceCalculator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end