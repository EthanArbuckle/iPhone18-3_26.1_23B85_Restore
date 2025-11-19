@interface ICTrailingSidebarSplitViewController
- (BOOL)shouldRenderAsOverlay;
- (ICTrailingSidebarSplitViewController)initWithViewControllerManager:(id)a3;
- (ICViewControllerManager)viewControllerManager;
- (void)setSidebarHidden:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ICTrailingSidebarSplitViewController

- (ICTrailingSidebarSplitViewController)initWithViewControllerManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICTrailingSidebarSplitViewController;
  v5 = [(ICTrailingSidebarSplitViewController *)&v8 initWithStyle:1];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewControllerManager, v4);
  }

  return v6;
}

- (void)setSidebarHidden:(BOOL)a3
{
  v3 = a3;
  [(ICTrailingSidebarSplitViewController *)self setTransitioning:1];
  if (v3)
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = ICTrailingSidebarSplitViewController;
  [(ICSplitViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AD160;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)shouldRenderAsOverlay
{
  v3 = [(ICTrailingSidebarSplitViewController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  if (v7 > v5)
  {
    return 1;
  }

  v8 = [(ICTrailingSidebarSplitViewController *)self view];
  v9 = [v8 ic_hasCompactSize];

  return v9;
}

- (ICViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerManager);

  return WeakRetained;
}

@end