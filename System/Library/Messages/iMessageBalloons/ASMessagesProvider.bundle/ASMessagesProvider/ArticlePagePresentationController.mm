@interface ArticlePagePresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC18ASMessagesProvider33ArticlePagePresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
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
  sub_6499F4();
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
  sub_649F8C(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_64A31C(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)containerViewWillLayoutSubviews
{
  selfCopy = self;
  sub_64A4D0();
}

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  sub_64A618();
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  selfCopy = self;
  sub_64AC28(end);
}

- (void)dismissalTransitionWillBegin
{
  selfCopy = self;
  sub_64AE40();
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    v3 = *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView);
    selfCopy = self;
    [v3 removeFromSuperview];
    [*(&selfCopy->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView) removeFromSuperview];
  }
}

- (void)dismissTapDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  if ([changeCopy state] == &dword_0 + 3)
  {
    presentedViewController = [(ArticlePagePresentationController *)selfCopy presentedViewController];
    [presentedViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)edgePanDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_64B5F8(changeCopy);
}

- (void)scrollPanDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_64BA58(changeCopy);
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_isScrollDismissActive) == 1)
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

- (_TtC18ASMessagesProvider33ArticlePagePresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end