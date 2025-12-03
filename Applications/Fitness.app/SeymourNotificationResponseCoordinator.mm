@interface SeymourNotificationResponseCoordinator
- (_TtC10FitnessApp38SeymourNotificationResponseCoordinator)init;
- (void)handleNotificationResponse:(id)response completion:(id)completion;
@end

@implementation SeymourNotificationResponseCoordinator

- (void)handleNotificationResponse:(id)response completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  responseCopy = response;
  selfCopy = self;
  sub_10053F6B0(responseCopy, selfCopy, v6);
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