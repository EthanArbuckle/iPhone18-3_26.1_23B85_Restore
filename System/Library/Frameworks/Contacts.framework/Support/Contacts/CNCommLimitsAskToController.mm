@interface CNCommLimitsAskToController
+ (CNCommLimitsAskToController)shared;
- (CNCommLimitsAskToController)init;
- (void)registerAllTopics;
- (void)sendCommLimitsQuestionForHandles:(NSArray *)a3 completionHandler:(id)a4;
@end

@implementation CNCommLimitsAskToController

+ (CNCommLimitsAskToController)shared
{
  if (qword_10004D4E8 != -1)
  {
    swift_once();
  }

  v3 = static CommLimitsAskToController.shared;

  return v3;
}

- (void)sendCommLimitsQuestionForHandles:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = sub_100018CD0(&qword_10004DD40, &qword_100034200);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100034330;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100034340;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100023AB8(0, 0, v10, &unk_100034350, v15);
}

- (void)registerAllTopics
{
  v2 = self;
  CommLimitsAskToController.registerAllTopics()();
}

- (CNCommLimitsAskToController)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___CNCommLimitsAskToController_responseListener;
  type metadata accessor for CommLimitsResponseListener();
  v5 = swift_allocObject();
  sub_1000214F4();
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(CNCommLimitsAskToController *)&v7 init];
}

@end