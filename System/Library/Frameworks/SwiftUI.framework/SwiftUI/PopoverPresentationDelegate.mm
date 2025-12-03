@interface PopoverPresentationDelegate
- (_TtC7SwiftUI27PopoverPresentationDelegate)init;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)presentationControllerWillDismiss:(id)dismiss;
@end

@implementation PopoverPresentationDelegate

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  v7 = OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_isLayoutPreventionActive;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_isLayoutPreventionActive);
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_isLayoutPreventionActive) = 1;
  selfCopy = self;
  closure #1 in PopoverPresentationDelegate.popoverPresentationController(_:willRepositionPopoverTo:in:)(selfCopy, rect);
  *(&self->super.isa + v7) = v8;
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  v4 = self + OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 24);
    selfCopy = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  controllerCopy = controller;
  collectionCopy = collection;
  selfCopy = self;
  v9 = PopoverPresentationDelegate.adaptivePresentationStyle(for:traitCollection:)(controllerCopy, collectionCopy);

  return v9;
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  specialized PopoverPresentationDelegate.presentationControllerDidAttemptToDismiss(_:)(dismissCopy);
}

- (_TtC7SwiftUI27PopoverPresentationDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end