@interface AAAgeMigrationFlowPresenter
- (AAAgeMigrationFlowPresenter)init;
- (void)presentModel:(id)model completion:(id)completion;
@end

@implementation AAAgeMigrationFlowPresenter

- (void)presentModel:(id)model completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B7010BB4(model, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (AAAgeMigrationFlowPresenter)init
{
  v3.receiver = self;
  v3.super_class = AAAgeMigrationFlowPresenter;
  return [(AAAgeMigrationFlowPresenter *)&v3 init];
}

@end