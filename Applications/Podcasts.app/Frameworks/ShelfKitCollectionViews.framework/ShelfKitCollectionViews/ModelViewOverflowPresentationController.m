@interface ModelViewOverflowPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)containerViewWillLayoutSubviews;
- (void)dismissTapDidChange:(id)a3;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
- (void)scrollPanDidChange:(id)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ModelViewOverflowPresentationController

- (_TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_1D8548(v5, a4);
  return result;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = self;
  sub_1D8924();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1D8C4C(v6, a4);

  swift_unknownObjectRelease();
}

- (void)containerViewWillLayoutSubviews
{
  v6 = self;
  v2 = [(ModelViewOverflowPresentationController *)v6 containerView];
  if (v2)
  {
    v3 = v2;
    [(ModelViewOverflowPresentationController *)v2 bounds];
    [*(&v6->super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_overlayView) setFrame:?];
    v4 = *(&v6->super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_presentedContainerView);
    sub_1D8924();
    [v4 setFrame:?];

    v5 = v3;
  }

  else
  {
    v5 = v6;
  }
}

- (void)presentationTransitionWillBegin
{
  v2 = self;
  sub_1D9018();
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v4 = self;
  sub_1D94EC(a3);
}

- (void)dismissalTransitionWillBegin
{
  v2 = self;
  sub_1D963C();
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  if (a3)
  {
    [*(&self->super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_overlayView) removeFromSuperview];
  }
}

- (void)dismissTapDidChange:(id)a3
{
  v4 = a3;
  v6 = self;
  if ([v4 state] == &dword_0 + 3)
  {
    v5 = [(ModelViewOverflowPresentationController *)v6 presentedViewController];
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)scrollPanDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D9AAC(v4);
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_isScrollDismissActive) == 1)
  {
    if (a3)
    {
      v5 = a3;
      v6 = self;
      [v5 adjustedContentInset];
      [v5 contentOffset];
      [v5 setContentOffset:?];
    }

    else
    {
      __break(1u);
    }
  }
}

@end