@interface ArticlePagePresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC18ASMessagesProvider33ArticlePagePresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
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

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_649F8C(v6, a4);

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_64A31C(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)containerViewWillLayoutSubviews
{
  v2 = self;
  sub_64A4D0();
}

- (void)presentationTransitionWillBegin
{
  v2 = self;
  sub_64A618();
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v4 = self;
  sub_64AC28(a3);
}

- (void)dismissalTransitionWillBegin
{
  v2 = self;
  sub_64AE40();
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  if (a3)
  {
    v3 = *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView);
    v4 = self;
    [v3 removeFromSuperview];
    [*(&v4->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView) removeFromSuperview];
  }
}

- (void)dismissTapDidChange:(id)a3
{
  v4 = a3;
  v6 = self;
  if ([v4 state] == &dword_0 + 3)
  {
    v5 = [(ArticlePagePresentationController *)v6 presentedViewController];
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)edgePanDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_64B5F8(v4);
}

- (void)scrollPanDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_64BA58(v4);
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_isScrollDismissActive) == 1)
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

- (_TtC18ASMessagesProvider33ArticlePagePresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end