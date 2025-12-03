@interface HKWorkoutMetric
- (_TtC9HealthKit15HKWorkoutMetric)init;
- (_TtC9HealthKit15HKWorkoutMetric)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKWorkoutMetric

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  HKWorkoutMetric.encode(with:)(coderCopy);
}

- (_TtC9HealthKit15HKWorkoutMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  sub_191C3DB74(coderCopy);
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