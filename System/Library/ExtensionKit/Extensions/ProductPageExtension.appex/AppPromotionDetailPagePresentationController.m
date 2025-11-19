@interface AppPromotionDetailPagePresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC20ProductPageExtension44AppPromotionDetailPagePresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
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

- (_TtC20ProductPageExtension44AppPromotionDetailPagePresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_10002E698(v5, a4);
  return result;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = self;
  sub_10002EDAC();
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
  sub_10002F164();
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10002F2A0(v6, a4);

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_10002F460(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)presentationTransitionWillBegin
{
  v2 = self;
  sub_10002F614();
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v4 = self;
  sub_10002FA74(a3);
}

- (void)dismissalTransitionWillBegin
{
  v2 = self;
  sub_10002FBC4();
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  if (a3)
  {
    [*(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_overlayView) removeFromSuperview];
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
  sub_10002FFA4(v4);
}

- (void)scrollPanDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000303FC(v4);
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_isScrollDismissActive) == 1)
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
  sub_100030A50(a3);
}

@end