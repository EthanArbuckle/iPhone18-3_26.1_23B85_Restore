@interface ActivitySharingReplyMessageComposerView.Coordinator
- (_TtCV10FitnessApp39ActivitySharingReplyMessageComposerView11Coordinator)init;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
@end

@implementation ActivitySharingReplyMessageComposerView.Coordinator

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1001B086C(result);
}

- (_TtCV10FitnessApp39ActivitySharingReplyMessageComposerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end