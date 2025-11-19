@interface PickerPresentationHandler
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (_TtC7JournalP33_5C692566AD29E277CBCA17308A33F5D425PickerPresentationHandler)init;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)a3;
@end

@implementation PickerPresentationHandler

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  swift_unownedRetainStrong();
  v6 = self;
  sub_1001744FC();
}

- (void)presentationControllerWillDismiss:(id)a3
{
  swift_unownedRetainStrong();
  v4 = self;
  sub_1001748CC();
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100177988();

  return self & 1;
}

- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100175050(v4);
}

- (_TtC7JournalP33_5C692566AD29E277CBCA17308A33F5D425PickerPresentationHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end