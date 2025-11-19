@interface AAAgeMigrationFlowPresenter
- (AAAgeMigrationFlowPresenter)init;
- (void)presentModel:(id)a3 completion:(id)a4;
@end

@implementation AAAgeMigrationFlowPresenter

- (void)presentModel:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  v7 = self;
  sub_1B7010BB4(a3, v7, v6);
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