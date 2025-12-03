@interface ComposeReviewDelegate
- (_TtC18ASMessagesProviderP33_8593DF36867E5E4F61FE17D5FBD3E0CF21ComposeReviewDelegate)init;
- (void)reviewComposeViewController:(id)controller didFinishSubmitting:(BOOL)submitting;
@end

@implementation ComposeReviewDelegate

- (void)reviewComposeViewController:(id)controller didFinishSubmitting:(BOOL)submitting
{
  controllerCopy = controller;
  selfCopy = self;
  sub_470238(controller, submitting);
}

- (_TtC18ASMessagesProviderP33_8593DF36867E5E4F61FE17D5FBD3E0CF21ComposeReviewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end