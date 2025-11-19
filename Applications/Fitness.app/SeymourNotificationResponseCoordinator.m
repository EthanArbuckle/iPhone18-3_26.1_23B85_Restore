@interface SeymourNotificationResponseCoordinator
- (_TtC10FitnessApp38SeymourNotificationResponseCoordinator)init;
- (void)handleNotificationResponse:(id)a3 completion:(id)a4;
@end

@implementation SeymourNotificationResponseCoordinator

- (void)handleNotificationResponse:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10053F6B0(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC10FitnessApp38SeymourNotificationResponseCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end