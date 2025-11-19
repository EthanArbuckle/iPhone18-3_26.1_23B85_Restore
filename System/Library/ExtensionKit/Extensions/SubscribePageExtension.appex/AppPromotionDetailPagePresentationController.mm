@interface AppPromotionDetailPagePresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)containerViewWillLayoutSubviews;
- (void)didTapOverlayView:(id)a3;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)edgePanDidChange:(id)a3;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
- (void)scrollPanDidChange:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AppPromotionDetailPagePresentationController

- (_TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_1006BF1DC(v5, a4);
  return result;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = self;
  sub_1006BF8F0();
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

- (void)containerViewWillLayoutSubviews
{
  v2 = self;
  sub_1006BFCA8();
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1006BFDE4(v6, a4);

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1006BFFA4(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)presentationTransitionWillBegin
{
  v2 = self;
  sub_1006C0158();
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v4 = self;
  sub_1006C05B8(a3);
}

- (void)dismissalTransitionWillBegin
{
  v2 = self;
  sub_1006C0708();
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  if (a3)
  {
    [*(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView) removeFromSuperview];
  }
}

- (void)didTapOverlayView:(id)a3
{
  v4 = a3;
  v6 = self;
  if ([v4 state] == 3)
  {
    v5 = [(AppPromotionDetailPagePresentationController *)v6 presentedViewController];
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)edgePanDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1006C0AE8(v4);
}

- (void)scrollPanDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1006C0F40(v4);
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_isScrollDismissActive) == 1)
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1006C1594(a3);
}

@end