@interface CHWorkoutSummaryDataSourceBridge
- (BOOL)areHeadphonesOff;
- (BOOL)isConfiguredWithWorkoutBuddy;
- (BOOL)isMuted;
- (CHWorkoutSummaryDataSourceBridge)init;
- (HKWorkout)hkWorkout;
- (id)customDismissHandler;
- (int64_t)workoutVoiceOutroState;
@end

@implementation CHWorkoutSummaryDataSourceBridge

- (HKWorkout)hkWorkout
{
  selfCopy = self;
  v3 = WorkoutSummaryDataSource.workout.getter();

  return v3;
}

- (id)customDismissHandler
{
  selfCopy = self;
  v3 = WorkoutSummaryDataSource.customDismissalHandler.getter();
  v5 = v4;

  if (v3)
  {
    v7[4] = v3;
    v7[5] = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1000449A8;
    v7[3] = &unk_10084B260;
    v3 = _Block_copy(v7);
  }

  return v3;
}

- (BOOL)isMuted
{
  selfCopy = self;
  v3 = WorkoutSummaryDataSource.isMuted.getter();

  return v3 & 1;
}

- (BOOL)areHeadphonesOff
{
  selfCopy = self;
  v3 = WorkoutSummaryDataSource.areHeadphonesOff.getter();

  return v3 & 1;
}

- (BOOL)isConfiguredWithWorkoutBuddy
{
  selfCopy = self;
  v3 = WorkoutSummaryDataSource.isConfiguredWithWorkoutBuddy.getter();

  return v3 & 1;
}

- (int64_t)workoutVoiceOutroState
{
  v3 = type metadata accessor for WorkoutVoiceOutroState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  dispatch thunk of WorkoutSummaryDataSource.workoutVoiceOutroState.getter();

  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == enum case for WorkoutVoiceOutroState.loaded(_:))
  {
    v9 = 2;
  }

  else
  {
    if (v8 == enum case for WorkoutVoiceOutroState.unavailable(_:))
    {
      return 0;
    }

    if (v8 == enum case for WorkoutVoiceOutroState.loading(_:))
    {
      return 1;
    }

    v9 = 0;
  }

  (*(v4 + 8))(v6, v3);
  return v9;
}

- (CHWorkoutSummaryDataSourceBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end