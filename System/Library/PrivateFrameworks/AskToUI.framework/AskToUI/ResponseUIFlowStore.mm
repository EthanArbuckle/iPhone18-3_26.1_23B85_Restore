@interface ResponseUIFlowStore
- (_TtC7AskToUI19ResponseUIFlowStore)init;
- (void)beginApprovalFlowWith:(id)with completion:(id)completion;
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

- (void)beginApprovalFlowWith:(id)with completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  withCopy = with;
  selfCopy = self;
  ResponseUIFlowStore.beginApprovalFlow(with:completion:)(withCopy, sub_241191524, v7);
}

- (void)requestDismiss
{
  selfCopy = self;
  ResponseUIFlowStore.requestDismiss()();
}

@end