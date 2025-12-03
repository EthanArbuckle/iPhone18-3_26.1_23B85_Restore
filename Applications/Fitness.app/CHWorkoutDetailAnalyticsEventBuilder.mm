@interface CHWorkoutDetailAnalyticsEventBuilder
- (CHWorkoutDetailAnalyticsEventBuilder)init;
- (CHWorkoutDetailAnalyticsEventBuilder)initWithWorkout:(id)workout workoutActivity:(id)activity;
- (NSDictionary)analyticsPayload;
- (NSString)analyticsEventName;
- (void)didEndMirroredWorkoutWith:(double)with;
- (void)didExpandDetailSection:(int64_t)section;
@end

@implementation CHWorkoutDetailAnalyticsEventBuilder

- (CHWorkoutDetailAnalyticsEventBuilder)initWithWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  v7 = sub_1003F7E10(workoutCopy, activity);

  return v7;
}

- (NSString)analyticsEventName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSDictionary)analyticsPayload
{
  selfCopy = self;
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

- (void)didExpandDetailSection:(int64_t)section
{
  v4 = sub_1003F359C();
  v6 = v5;
  swift_beginAccess();
  selfCopy = self;
  sub_1001A45BC(&v8, v4, v6);
  swift_endAccess();
}

- (void)didEndMirroredWorkoutWith:(double)with
{
  v5[3] = &type metadata for Double;
  *v5 = with;
  swift_beginAccess();
  selfCopy = self;
  sub_10055A82C(v5, 0xD000000000000018, 0x800000010075BD80);
  swift_endAccess();
}

@end