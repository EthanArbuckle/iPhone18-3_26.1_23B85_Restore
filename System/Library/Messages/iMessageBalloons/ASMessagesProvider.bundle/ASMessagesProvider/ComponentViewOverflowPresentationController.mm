@interface ComponentViewOverflowPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC18ASMessagesProvider43ComponentViewOverflowPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
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

- (_TtC18ASMessagesProvider43ComponentViewOverflowPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sub_48B054(controllerCopy, viewController);
  return result;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  selfCopy = self;
  sub_48B500();
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
  sub_48BBB4(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_48BEB0(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)containerViewWillLayoutSubviews
{
  selfCopy = self;
  sub_48C064();
}

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  sub_48C318();
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  selfCopy = self;
  sub_48C7E8(end);
}

- (void)dismissalTransitionWillBegin
{
  selfCopy = self;
  sub_48C938();
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    [*(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_overlayView) removeFromSuperview];
  }
}

- (void)dismissTapDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  if ([changeCopy state] == &dword_0 + 3)
  {
    presentedViewController = [(ComponentViewOverflowPresentationController *)selfCopy presentedViewController];
    [presentedViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)scrollPanDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_48CCDC(changeCopy);
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_isScrollDismissActive) == 1)
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