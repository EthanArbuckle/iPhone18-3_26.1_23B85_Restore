@interface AppStoreSystemPolicyViewModel
- (_TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel)init;
- (void)reloadSpecifiers;
- (void)showController:(id)controller animate:(BOOL)animate;
@end

@implementation AppStoreSystemPolicyViewModel

- (_TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel)init
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)reloadSpecifiers
{
  sub_3A7F8();
  v4[2] = self;
  selfCopy = self;
  sub_2F638(sub_30D0C, v4);
}

- (void)showController:(id)controller animate:(BOOL)animate
{
  sub_3A7F8();
  v7[2] = controller;
  animateCopy = animate;
  controllerCopy = controller;
  sub_2F638(sub_30568, v7);
}

@end