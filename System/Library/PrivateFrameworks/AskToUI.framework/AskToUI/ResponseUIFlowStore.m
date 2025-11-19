@interface ResponseUIFlowStore
- (_TtC7AskToUI19ResponseUIFlowStore)init;
- (void)beginApprovalFlowWith:(id)a3 completion:(id)a4;
- (void)requestDismiss;
@end

@implementation ResponseUIFlowStore

- (_TtC7AskToUI19ResponseUIFlowStore)init
{
  ObjectType = swift_getObjectType();
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.isa + OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore__connection) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7AskToUI19ResponseUIFlowStore__currentQuestion) = 0;
  sub_2411AB498();
  v6.receiver = self;
  v6.super_class = ObjectType;
  v4 = [(ResponseUIFlowStore *)&v6 init];

  return v4;
}

- (void)beginApprovalFlowWith:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  ResponseUIFlowStore.beginApprovalFlow(with:completion:)(v8, sub_241191524, v7);
}

- (void)requestDismiss
{
  v2 = self;
  ResponseUIFlowStore.requestDismiss()();
}

@end