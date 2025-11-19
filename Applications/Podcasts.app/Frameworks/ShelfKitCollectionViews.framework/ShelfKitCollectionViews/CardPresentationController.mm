@interface CardPresentationController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC23ShelfKitCollectionViews26CardPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)containerViewWillLayoutSubviews;
- (void)didTap:(id)a3;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
@end

@implementation CardPresentationController

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = self;
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_91DB8(a3);
  swift_unknownObjectRelease();
}

- (void)containerViewWillLayoutSubviews
{
  v2 = self;
  sub_91F64();
}

- (void)presentationTransitionWillBegin
{
  v2 = self;
  sub_920E8();
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(CardPresentationController *)&v5 presentationTransitionDidEnd:v3];
  if (!v3)
  {
    [*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_cardRim] removeFromSuperview];
    [*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_dimmingView] removeFromSuperview];
  }
}

- (void)dismissalTransitionWillBegin
{
  v2 = self;
  sub_92AE4();
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(CardPresentationController *)&v5 dismissalTransitionDidEnd:v3];
  if (v3)
  {
    [*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_dimmingView] removeFromSuperview];
  }
}

- (void)didTap:(id)a3
{
  v4 = self;
  v3 = [(CardPresentationController *)v4 presentedViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews26CardPresentationController_dimmingView);
  v5 = a3;
  v6 = self;
  [v5 locationInView:v4];
  v8 = v7;
  v10 = v9;
  v11 = [(CardPresentationController *)v6 presentedViewController];
  v12 = [v11 view];

  if (v12)
  {
    [v12 frame];
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

- (_TtC23ShelfKitCollectionViews26CardPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end