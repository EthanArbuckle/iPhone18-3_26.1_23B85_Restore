@interface ComposeReviewDelegate
- (_TtC23ShelfKitCollectionViews21ComposeReviewDelegate)init;
- (void)reviewComposeViewController:(id)controller didFinishSubmitting:(BOOL)submitting;
@end

@implementation ComposeReviewDelegate

- (void)reviewComposeViewController:(id)controller didFinishSubmitting:(BOOL)submitting
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2183EC(controller, submitting);
}

- (_TtC23ShelfKitCollectionViews21ComposeReviewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end