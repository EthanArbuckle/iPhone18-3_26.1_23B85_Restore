@interface ComposeReviewDelegate
- (_TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E421ComposeReviewDelegate)init;
- (void)reviewComposeViewController:(id)controller didFinishSubmitting:(BOOL)submitting;
@end

@implementation ComposeReviewDelegate

- (void)reviewComposeViewController:(id)controller didFinishSubmitting:(BOOL)submitting
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1003C057C(controller, submitting);
}

- (_TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E421ComposeReviewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end