@interface ArticlePagePresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC8AppStore33ArticlePagePresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)containerViewWillLayoutSubviews;
- (void)dismissTapDidChange:(id)change;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)edgePanDidChange:(id)change;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)scrollPanDidChange:(id)change;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation ArticlePagePresentationController

- (CGRect)frameOfPresentedViewInContainerView
{
  selfCopy = self;
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

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006D27A8(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006D2B38(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)containerViewWillLayoutSubviews
{
  selfCopy = self;
  sub_1006D2CEC();
}

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  sub_1006D2E34();
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  selfCopy = self;
  sub_1006D3444(end);
}

- (void)dismissalTransitionWillBegin
{
  selfCopy = self;
  sub_1006D365C();
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    v3 = *(&self->super.super.isa + OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView);
    selfCopy = self;
    [v3 removeFromSuperview];
    [*(&selfCopy->super.super.isa + OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView) removeFromSuperview];
  }
}

- (void)dismissTapDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  if ([changeCopy state] == 3)
  {
    presentedViewController = [(ArticlePagePresentationController *)selfCopy presentedViewController];
    [presentedViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)edgePanDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1006D3E14(changeCopy);
}

- (void)scrollPanDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1006D4274(changeCopy);
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_isScrollDismissActive) == 1)
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

- (_TtC8AppStore33ArticlePagePresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end