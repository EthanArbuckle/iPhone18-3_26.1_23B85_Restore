@interface SiriQuickTypeGestureActivationManager
- (void)canActivateWithCompletionHandler:(id)handler;
- (void)cancelPrewarmForFirstTapOfQuickTypeToSiriGestureWithCompletionHandler:(id)handler;
- (void)prewarmForFirstTapOfQuickTypeToSiriGestureWithCompletionHandler:(id)handler;
@end

@implementation SiriQuickTypeGestureActivationManager

- (void)prewarmForFirstTapOfQuickTypeToSiriGestureWithCompletionHandler:(id)handler
{
  v5 = sub_100093B6C(&qword_10018DFE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000F7930;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000F7938;
  v12[5] = v11;

  sub_1000A80AC(0, 0, v7, &unk_1000F7940, v12);
}

- (void)cancelPrewarmForFirstTapOfQuickTypeToSiriGestureWithCompletionHandler:(id)handler
{
  v5 = sub_100093B6C(&qword_10018DFE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000F7910;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000F7918;
  v12[5] = v11;

  sub_1000A80AC(0, 0, v7, &unk_1000F7920, v12);
}

- (void)canActivateWithCompletionHandler:(id)handler
{
  v5 = sub_100093B6C(&qword_10018DFE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000F78C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000F7160;
  v12[5] = v11;

  sub_1000A80AC(0, 0, v7, &unk_1000F7550, v12);
}

@end