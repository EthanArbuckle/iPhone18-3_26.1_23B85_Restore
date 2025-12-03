@interface BKMainContentViewController
- (BKDockableMiniPlayer)miniPlayerViewController;
- (void)setContentNavigationController:(id)controller;
- (void)syncLayoutControllerNeedsFlushing:(id)flushing;
- (void)undockMiniPlayer;
- (void)viewDidLayoutSubviews;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation BKMainContentViewController

- (void)setContentNavigationController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  MainContentViewController.contentNavigationController.setter(controller);
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
  selfCopy = self;
  MainContentViewController.viewSafeAreaInsetsDidChange()();
}

- (void)undockMiniPlayer
{
  v3 = OBJC_IVAR___BKMainContentViewController_miniPlayerViewController;
  swift_beginAccess();
  v4 = *&self->BSUIRootBarWrapperViewController_opaque[v3];
  *&self->BSUIRootBarWrapperViewController_opaque[v3] = 0;
  selfCopy = self;
  sub_1005D9694(v4);
}

- (void)syncLayoutControllerNeedsFlushing:(id)flushing
{
  selfCopy = self;
  view = [(BKMainContentViewController *)selfCopy view];
  [view setNeedsLayout];
}

@end