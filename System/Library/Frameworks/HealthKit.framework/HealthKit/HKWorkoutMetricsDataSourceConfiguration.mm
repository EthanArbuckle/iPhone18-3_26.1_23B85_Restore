@interface HKWorkoutMetricsDataSourceConfiguration
- (_TtC9HealthKit39HKWorkoutMetricsDataSourceConfiguration)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKWorkoutMetricsDataSourceConfiguration

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for HKWorkoutMetricsDataSourceConfiguration();
  coderCopy = coder;
  v5 = v8.receiver;
  [(HKTaskConfiguration *)&v8 encodeWithCoder:coderCopy];
  v6 = *&v5[OBJC_IVAR____TtC9HealthKit39HKWorkoutMetricsDataSourceConfiguration_workoutConfiguration];
  v7 = sub_191CC6778();
  [coderCopy encodeObject:v6 forKey:{v7, v8.receiver, v8.super_class}];
}

- (_TtC9HealthKit39HKWorkoutMetricsDataSourceConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end