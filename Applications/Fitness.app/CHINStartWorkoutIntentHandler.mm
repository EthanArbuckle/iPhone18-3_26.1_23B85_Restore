@interface CHINStartWorkoutIntentHandler
- (void)confirmStartWorkout:(id)workout completion:(id)completion;
- (void)handleStartWorkout:(INStartWorkoutIntent *)workout completion:(id)completion;
- (void)resolveWorkoutGoalUnitTypeForStartWorkout:(id)workout withCompletion:(id)completion;
- (void)resolveWorkoutNameForStartWorkout:(id)workout withCompletion:(id)completion;
@end

@implementation CHINStartWorkoutIntentHandler

- (void)resolveWorkoutNameForStartWorkout:(id)workout withCompletion:(id)completion
{
  v5 = _Block_copy(completion);
  workoutCopy = workout;
  workoutName = [workoutCopy workoutName];
  if (workoutName)
  {
    v7 = workoutName;
    needsValue = [objc_opt_self() successWithResolvedString:workoutName];
    v5[2](v5, needsValue);
    _Block_release(v5);
  }

  else
  {
    sub_1000059F8(0, &qword_1008E1778);
    needsValue = [swift_getObjCClassFromMetadata() needsValue];
    v5[2](v5, needsValue);
    _Block_release(v5);
  }
}

- (void)resolveWorkoutGoalUnitTypeForStartWorkout:(id)workout withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  workoutCopy = workout;
  selfCopy = self;
  sub_1002040D0(workoutCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)confirmStartWorkout:(id)workout completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = [objc_allocWithZone(INStartWorkoutIntentResponse) initWithCode:1 userActivity:0];
  v4[2](v4, v5);
  _Block_release(v4);
}

- (void)handleStartWorkout:(INStartWorkoutIntent *)workout completion:(id)completion
{
  v7 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = workout;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006DD518;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006DD520;
  v14[5] = v13;
  workoutCopy = workout;
  selfCopy = self;
  sub_1005D7C20(0, 0, v9, &unk_1006DD528, v14);
}

@end