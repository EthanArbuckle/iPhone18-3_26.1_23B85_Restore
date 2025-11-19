@interface CHWorkoutDetailAnalyticsEventBuilder
- (CHWorkoutDetailAnalyticsEventBuilder)init;
- (CHWorkoutDetailAnalyticsEventBuilder)initWithWorkout:(id)a3 workoutActivity:(id)a4;
- (NSDictionary)analyticsPayload;
- (NSString)analyticsEventName;
- (void)didEndMirroredWorkoutWith:(double)a3;
- (void)didExpandDetailSection:(int64_t)a3;
@end

@implementation CHWorkoutDetailAnalyticsEventBuilder

- (CHWorkoutDetailAnalyticsEventBuilder)initWithWorkout:(id)a3 workoutActivity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1003F7E10(v5, a4);

  return v7;
}

- (NSString)analyticsEventName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSDictionary)analyticsPayload
{
  v2 = self;
  v3 = sub_1003F776C();

  if (v3)
  {
    sub_1001AC3CC();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (CHWorkoutDetailAnalyticsEventBuilder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didExpandDetailSection:(int64_t)a3
{
  v4 = sub_1003F359C();
  v6 = v5;
  swift_beginAccess();
  v7 = self;
  sub_1001A45BC(&v8, v4, v6);
  swift_endAccess();
}

- (void)didEndMirroredWorkoutWith:(double)a3
{
  v5[3] = &type metadata for Double;
  *v5 = a3;
  swift_beginAccess();
  v4 = self;
  sub_10055A82C(v5, 0xD000000000000018, 0x800000010075BD80);
  swift_endAccess();
}

@end