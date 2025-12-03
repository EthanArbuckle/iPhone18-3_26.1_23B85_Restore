@interface PickerPresentationHandler
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (_TtC7JournalP33_5C692566AD29E277CBCA17308A33F5D425PickerPresentationHandler)init;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier;
@end

@implementation PickerPresentationHandler

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  swift_unownedRetainStrong();
  selfCopy = self;
  sub_1001744FC();
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  swift_unownedRetainStrong();
  selfCopy = self;
  sub_1001748CC();
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  LOBYTE(self) = sub_100177988();

  return self & 1;
}

- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_100175050(identifierCopy);
}

- (_TtC7JournalP33_5C692566AD29E277CBCA17308A33F5D425PickerPresentationHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end