@interface ComponentViewOverflowPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC22SubscribePageExtension43ComponentViewOverflowPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)containerViewWillLayoutSubviews;
- (void)dismissTapDidChange:(id)change;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)scrollPanDidChange:(id)change;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation ComponentViewOverflowPresentationController

- (_TtC22SubscribePageExtension43ComponentViewOverflowPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sub_100442AEC(controllerCopy, viewController);
  return result;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  selfCopy = self;
  sub_100442F98();
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

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10044364C(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100443948(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)containerViewWillLayoutSubviews
{
  selfCopy = self;
  sub_100443AFC();
}

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  sub_100443DB0();
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  selfCopy = self;
  sub_100444280(end);
}

- (void)dismissalTransitionWillBegin
{
  selfCopy = self;
  sub_1004443D0();
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    [*(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView) removeFromSuperview];
  }
}

- (void)dismissTapDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  if ([changeCopy state] == 3)
  {
    presentedViewController = [(ComponentViewOverflowPresentationController *)selfCopy presentedViewController];
    [presentedViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)scrollPanDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100444954(changeCopy);
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_isScrollDismissActive) == 1)
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

@end