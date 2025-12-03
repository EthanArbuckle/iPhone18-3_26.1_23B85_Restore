@interface ACHFastestDistanceCalculator
- (ACHFastestDistanceCalculator)init;
- (ACHFastestDistanceCalculator)initWithHealthStore:(id)store;
- (id)fastestDistancesFor:(id)for;
- (id)quantityTypeIdentifierForDistance:(id)distance;
@end

@implementation ACHFastestDistanceCalculator

- (ACHFastestDistanceCalculator)initWithHealthStore:(id)store
{
  *(&self->super.isa + OBJC_IVAR___ACHFastestDistanceCalculator_healthStore) = store;
  v5.receiver = self;
  v5.super_class = ACHFastestDistanceCalculator;
  storeCopy = store;
  return [(ACHFastestDistanceCalculator *)&v5 init];
}

- (id)quantityTypeIdentifierForDistance:(id)distance
{
  distanceCopy = distance;
  workoutActivityType = [distanceCopy workoutActivityType];
  if (workoutActivityType == 37)
  {
    v5 = MEMORY[0x277CCCB40];
  }

  else
  {
    if (workoutActivityType != 71)
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

- (id)fastestDistancesFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  ACHFastestDistanceCalculator.fastestDistances(for:)(v6, forCopy);
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