@interface ComponentViewOverflowPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC8AppStore43ComponentViewOverflowPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
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

- (_TtC8AppStore43ComponentViewOverflowPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sub_100243AF0(controllerCopy, viewController);
  return result;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  selfCopy = self;
  sub_100243F9C();
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
  sub_100244650(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10024494C(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)containerViewWillLayoutSubviews
{
  selfCopy = self;
  sub_100244B00();
}

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  sub_100244DB4();
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  selfCopy = self;
  sub_100245284(end);
}

- (void)dismissalTransitionWillBegin
{
  selfCopy = self;
  sub_1002453D4();
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    [*(&self->super.super.isa + OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_overlayView) removeFromSuperview];
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
  sub_100245778(changeCopy);
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_isScrollDismissActive) == 1)
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