@interface ModelViewOverflowPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)containerViewWillLayoutSubviews;
- (void)dismissTapDidChange:(id)change;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)scrollPanDidChange:(id)change;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation ModelViewOverflowPresentationController

- (_TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sub_1D8548(controllerCopy, viewController);
  return result;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  selfCopy = self;
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

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D8C4C(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)containerViewWillLayoutSubviews
{
  selfCopy = self;
  containerView = [(ModelViewOverflowPresentationController *)selfCopy containerView];
  if (containerView)
  {
    v3 = containerView;
    [(ModelViewOverflowPresentationController *)containerView bounds];
    [*(&selfCopy->super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_overlayView) setFrame:?];
    v4 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_presentedContainerView);
    sub_1D8924();
    [v4 setFrame:?];

    v5 = v3;
  }

  else
  {
    v5 = selfCopy;
  }
}

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  sub_1D9018();
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  selfCopy = self;
  sub_1D94EC(end);
}

- (void)dismissalTransitionWillBegin
{
  selfCopy = self;
  sub_1D963C();
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    [*(&self->super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_overlayView) removeFromSuperview];
  }
}

- (void)dismissTapDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  if ([changeCopy state] == &dword_0 + 3)
  {
    presentedViewController = [(ModelViewOverflowPresentationController *)selfCopy presentedViewController];
    [presentedViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)scrollPanDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1D9AAC(changeCopy);
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews39ModelViewOverflowPresentationController_isScrollDismissActive) == 1)
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