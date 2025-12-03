@interface CardPresentationController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC23ShelfKitCollectionViews26CardPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)containerViewWillLayoutSubviews;
- (void)didTap:(id)tap;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
@end

@implementation CardPresentationController

- (CGRect)frameOfPresentedViewInContainerView
{
  selfCopy = self;
  v3 = sub_91C18();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_91DB8(container);
  swift_unknownObjectRelease();
}

- (void)containerViewWillLayoutSubviews
{
  selfCopy = self;
  sub_91F64();
}

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  sub_920E8();
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(CardPresentationController *)&v5 presentationTransitionDidEnd:endCopy];
  if (!endCopy)
  {
    [*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_cardRim] removeFromSuperview];
    [*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_dimmingView] removeFromSuperview];
  }
}

- (void)dismissalTransitionWillBegin
{
  selfCopy = self;
  sub_92AE4();
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(CardPresentationController *)&v5 dismissalTransitionDidEnd:endCopy];
  if (endCopy)
  {
    [*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_dimmingView] removeFromSuperview];
  }
}

- (void)didTap:(id)tap
{
  selfCopy = self;
  presentedViewController = [(CardPresentationController *)selfCopy presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_dimmingView);
  beginCopy = begin;
  selfCopy = self;
  [beginCopy locationInView:v4];
  v8 = v7;
  v10 = v9;
  presentedViewController = [(CardPresentationController *)selfCopy presentedViewController];
  view = [presentedViewController view];

  if (view)
  {
    [view frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v24.origin.x = v15;
    v24.origin.y = v17;
    v24.size.width = v19;
    v24.size.height = v21;
    v23.x = v8;
    v23.y = v10;
    v22 = CGRectContainsPoint(v24, v23);

    return !v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC23ShelfKitCollectionViews26CardPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end