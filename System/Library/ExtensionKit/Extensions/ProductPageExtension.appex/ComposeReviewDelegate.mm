@interface ComposeReviewDelegate
- (_TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF121ComposeReviewDelegate)init;
- (void)reviewComposeViewController:(id)controller didFinishSubmitting:(BOOL)submitting;
@end

@implementation ComposeReviewDelegate

- (void)reviewComposeViewController:(id)controller didFinishSubmitting:(BOOL)submitting
{
  controllerCopy = controller;
  selfCopy = self;
  sub_10048A0AC(controller, submitting);
}

- (_TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF121ComposeReviewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end