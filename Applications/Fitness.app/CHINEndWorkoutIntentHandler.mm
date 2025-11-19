@interface CHINEndWorkoutIntentHandler
- (void)handleEndWorkout:(INEndWorkoutIntent *)a3 completion:(id)a4;
@end

@implementation CHINEndWorkoutIntentHandler

- (void)handleEndWorkout:(INEndWorkoutIntent *)a3 completion:(id)a4
{
  v7 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006DD4A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006FDEE0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1005D7C20(0, 0, v9, &unk_1006DD4B0, v14);
}

@end