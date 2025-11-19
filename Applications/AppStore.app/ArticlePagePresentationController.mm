@interface ArticlePagePresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC8AppStore33ArticlePagePresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)containerViewWillLayoutSubviews;
- (void)dismissTapDidChange:(id)a3;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)edgePanDidChange:(id)a3;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
- (void)scrollPanDidChange:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ArticlePagePresentationController

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = self;
  sub_1006D2210();
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
  sub_1006D27A8(v6, a4);

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1006D2B38(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)containerViewWillLayoutSubviews
{
  v2 = self;
  sub_1006D2CEC();
}

- (void)presentationTransitionWillBegin
{
  v2 = self;
  sub_1006D2E34();
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v4 = self;
  sub_1006D3444(a3);
}

- (void)dismissalTransitionWillBegin
{
  v2 = self;
  sub_1006D365C();
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  if (a3)
  {
    v3 = *(&self->super.super.isa + OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView);
    v4 = self;
    [v3 removeFromSuperview];
    [*(&v4->super.super.isa + OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView) removeFromSuperview];
  }
}

- (void)dismissTapDidChange:(id)a3
{
  v4 = a3;
  v6 = self;
  if ([v4 state] == 3)
  {
    v5 = [(ArticlePagePresentationController *)v6 presentedViewController];
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)edgePanDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1006D3E14(v4);
}

- (void)scrollPanDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1006D4274(v4);
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_isScrollDismissActive) == 1)
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

- (_TtC8AppStore33ArticlePagePresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end