@interface AppPromotionDetailPagePresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)containerViewWillLayoutSubviews;
- (void)didTapOverlayView:(id)view;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)edgePanDidChange:(id)change;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)scrollPanDidChange:(id)change;
- (void)traitCollectionDidChange:(id)change;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation AppPromotionDetailPagePresentationController

- (_TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sub_1006BF1DC(controllerCopy, viewController);
  return result;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  selfCopy = self;
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
  selfCopy = self;
  sub_1006BFCA8();
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006BFDE4(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006BFFA4(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  sub_1006C0158();
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  selfCopy = self;
  sub_1006C05B8(end);
}

- (void)dismissalTransitionWillBegin
{
  selfCopy = self;
  sub_1006C0708();
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    [*(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView) removeFromSuperview];
  }
}

- (void)didTapOverlayView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  if ([viewCopy state] == 3)
  {
    presentedViewController = [(AppPromotionDetailPagePresentationController *)selfCopy presentedViewController];
    [presentedViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)edgePanDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1006C0AE8(changeCopy);
}

- (void)scrollPanDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1006C0F40(changeCopy);
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_isScrollDismissActive) == 1)
  {
    if (scroll)
    {
      scrollCopy = scroll;
      selfCopy = self;
      [scrollCopy adjustedContentInset];
      [scrollCopy contentOffset];
      [scrollCopy setContentOffset:?];
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1006C1594(change);
}

@end