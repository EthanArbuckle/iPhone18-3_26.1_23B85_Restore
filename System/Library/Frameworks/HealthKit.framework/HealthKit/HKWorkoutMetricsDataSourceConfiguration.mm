@interface HKWorkoutMetricsDataSourceConfiguration
- (_TtC9HealthKit39HKWorkoutMetricsDataSourceConfiguration)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKWorkoutMetricsDataSourceConfiguration

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for HKWorkoutMetricsDataSourceConfiguration();
  v4 = a3;
  v5 = v8.receiver;
  [(HKTaskConfiguration *)&v8 encodeWithCoder:v4];
  v6 = *&v5[OBJC_IVAR____TtC9HealthKit39HKWorkoutMetricsDataSourceConfiguration_workoutConfiguration];
  v7 = sub_191CC6778();
  [v4 encodeObject:v6 forKey:{v7, v8.receiver, v8.super_class}];
}

- (_TtC9HealthKit39HKWorkoutMetricsDataSourceConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end