@interface BKMainContentViewController
- (BKDockableMiniPlayer)miniPlayerViewController;
- (void)setContentNavigationController:(id)a3;
- (void)syncLayoutControllerNeedsFlushing:(id)a3;
- (void)undockMiniPlayer;
- (void)viewDidLayoutSubviews;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation BKMainContentViewController

- (void)setContentNavigationController:(id)a3
{
  v5 = a3;
  v6 = self;
  MainContentViewController.contentNavigationController.setter(a3);
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(BKMainContentViewController *)&v3 viewDidLayoutSubviews];
  [*&v2[OBJC_IVAR___BKMainContentViewController_syncLayoutController] flush];
}

- (BKDockableMiniPlayer)miniPlayerViewController
{
  v3 = OBJC_IVAR___BKMainContentViewController_miniPlayerViewController;
  swift_beginAccess();
  return *&self->BSUIRootBarWrapperViewController_opaque[v3];
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  MainContentViewController.viewSafeAreaInsetsDidChange()();
}

- (void)undockMiniPlayer
{
  v3 = OBJC_IVAR___BKMainContentViewController_miniPlayerViewController;
  swift_beginAccess();
  v4 = *&self->BSUIRootBarWrapperViewController_opaque[v3];
  *&self->BSUIRootBarWrapperViewController_opaque[v3] = 0;
  v5 = self;
  sub_1005D9694(v4);
}

- (void)syncLayoutControllerNeedsFlushing:(id)a3
{
  v4 = self;
  v3 = [(BKMainContentViewController *)v4 view];
  [v3 setNeedsLayout];
}

@end