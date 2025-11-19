@interface PopoverPresentationDelegate
- (_TtC7SwiftUI27PopoverPresentationDelegate)init;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
@end

@implementation PopoverPresentationDelegate

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  v7 = OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_isLayoutPreventionActive;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_isLayoutPreventionActive);
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_isLayoutPreventionActive) = 1;
  v9 = self;
  closure #1 in PopoverPresentationDelegate.popoverPresentationController(_:willRepositionPopoverTo:in:)(v9, a4);
  *(&self->super.isa + v7) = v8;
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = self + OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 24);
    v7 = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = PopoverPresentationDelegate.adaptivePresentationStyle(for:traitCollection:)(v6, v7);

  return v9;
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized PopoverPresentationDelegate.presentationControllerDidAttemptToDismiss(_:)(v4);
}

- (_TtC7SwiftUI27PopoverPresentationDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end