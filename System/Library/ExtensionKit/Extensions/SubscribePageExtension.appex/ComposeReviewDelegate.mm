@interface ComposeReviewDelegate
- (_TtC22SubscribePageExtensionP33_17E5165BDAD277E02C837297BEA7454621ComposeReviewDelegate)init;
- (void)reviewComposeViewController:(id)controller didFinishSubmitting:(BOOL)submitting;
@end

@implementation ComposeReviewDelegate

- (void)reviewComposeViewController:(id)controller didFinishSubmitting:(BOOL)submitting
{
  controllerCopy = controller;
  selfCopy = self;
  sub_10046F430(controller, submitting);
}

- (_TtC22SubscribePageExtensionP33_17E5165BDAD277E02C837297BEA7454621ComposeReviewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end