@interface ICTrailingSidebarSplitViewController
- (BOOL)shouldRenderAsOverlay;
- (ICTrailingSidebarSplitViewController)initWithViewControllerManager:(id)manager;
- (ICViewControllerManager)viewControllerManager;
- (void)setSidebarHidden:(BOOL)hidden;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ICTrailingSidebarSplitViewController

- (ICTrailingSidebarSplitViewController)initWithViewControllerManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = ICTrailingSidebarSplitViewController;
  v5 = [(ICTrailingSidebarSplitViewController *)&v8 initWithStyle:1];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewControllerManager, managerCopy);
  }

  return v6;
}

- (void)setSidebarHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  [(ICTrailingSidebarSplitViewController *)self setTransitioning:1];
  if (hiddenCopy)
  {
    [(ICTrailingSidebarSplitViewController *)self hideColumn:0];
  }

  else
  {
    [(ICTrailingSidebarSplitViewController *)self showColumn:0];
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AD0B8;
  v5[3] = &unk_100645E30;
  v5[4] = self;
  [(ICTrailingSidebarSplitViewController *)self ic_performBlockAfterActiveTransition:v5];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = ICTrailingSidebarSplitViewController;
  [(ICSplitViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AD160;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)shouldRenderAsOverlay
{
  view = [(ICTrailingSidebarSplitViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;

  if (v7 > v5)
  {
    return 1;
  }

  view2 = [(ICTrailingSidebarSplitViewController *)self view];
  ic_hasCompactSize = [view2 ic_hasCompactSize];

  return ic_hasCompactSize;
}

- (ICViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerManager);

  return WeakRetained;
}

@end