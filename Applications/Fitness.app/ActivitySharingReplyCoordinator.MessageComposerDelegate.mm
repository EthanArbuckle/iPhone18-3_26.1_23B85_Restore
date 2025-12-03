@interface ActivitySharingReplyCoordinator.MessageComposerDelegate
- (_TtCC10FitnessApp31ActivitySharingReplyCoordinator23MessageComposerDelegate)init;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
@end

@implementation ActivitySharingReplyCoordinator.MessageComposerDelegate

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  selfCopy = self;
  sub_10013FB88(controllerCopy, result);
}

- (_TtCC10FitnessApp31ActivitySharingReplyCoordinator23MessageComposerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end