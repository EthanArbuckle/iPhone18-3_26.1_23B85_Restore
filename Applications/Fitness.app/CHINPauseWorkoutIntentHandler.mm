@interface CHINPauseWorkoutIntentHandler
- (void)handlePauseWorkout:(INPauseWorkoutIntent *)workout completion:(id)completion;
@end

@implementation CHINPauseWorkoutIntentHandler

- (void)handlePauseWorkout:(INPauseWorkoutIntent *)workout completion:(id)completion
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
  v13[4] = &unk_1006DD4F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006DD4F8;
  v14[5] = v13;
  workoutCopy = workout;
  selfCopy = self;
  sub_1005D7C20(0, 0, v9, &unk_1006DD500, v14);
}

@end