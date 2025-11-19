@interface HKWorkoutMetric
- (_TtC9HealthKit15HKWorkoutMetric)init;
- (_TtC9HealthKit15HKWorkoutMetric)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKWorkoutMetric

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  HKWorkoutMetric.encode(with:)(v4);
}

- (_TtC9HealthKit15HKWorkoutMetric)initWithCoder:(id)a3
{
  v3 = a3;
  sub_191C3DB74(v3);
  v5 = v4;

  return v5;
}

- (_TtC9HealthKit15HKWorkoutMetric)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end