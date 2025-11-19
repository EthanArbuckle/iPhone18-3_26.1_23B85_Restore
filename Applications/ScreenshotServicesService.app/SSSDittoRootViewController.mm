@interface SSSDittoRootViewController
- (SSSDittoRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SSSDittoRootViewControllerDelegate)delegate;
- (SSSDittoViewController)hostingViewController;
- (SSSViewControllerManager)viewControllerManager;
- (unint64_t)supportedInterfaceOrientations;
- (void)_createAndParentContainerViewControllerIfPossible;
- (void)_dismissAnimated:(BOOL)a3 completion:(id)a4;
- (void)_postNotificationForDidChangeToState:(unint64_t)a3;
- (void)_postNotificationForWillChangeToState:(unint64_t)a3;
- (void)_postNotificationName:(id)a3;
- (void)_updateForCurrentSize;
- (void)_updateForSize:(CGSize)a3;
- (void)containerViewController:(id)a3 didTransitionToState:(unint64_t)a4;
- (void)containerViewController:(id)a3 isDraggingVISheetDidChange:(BOOL)a4;
- (void)containerViewController:(id)a3 willBeginDismissAnimationWithSettings:(id)a4;
- (void)containerViewController:(id)a3 willShowSharingUIWithBlock:(id)a4;
- (void)containerViewController:(id)a3 willShowTestFlightUIWithBlock:(id)a4;
- (void)containerViewController:(id)a3 willTransitionToState:(unint64_t)a4 animated:(BOOL)a5 changeBlock:(id)a6;
- (void)containerViewControllerDidEndDismissAnimation:(id)a3;
- (void)containerViewControllerEndedDragAndDrop:(id)a3 shouldDismiss:(BOOL)a4;
- (void)containerViewControllerEndedShowingSharingUI:(id)a3 inStateTransition:(BOOL)a4;
- (void)dittoDismissTimerFired:(id)a3;
- (void)pipifyWithCompletion:(id)a3;
- (void)screenshotReceived:(id)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SSSDittoRootViewController

- (SSSDittoRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = SSSDittoRootViewController;
  v4 = [(SSSDittoRootViewController *)&v8 initWithNibName:a3 bundle:a4];
  v5 = objc_alloc_init(SSSDittoDismissTimer);
  dismissTimer = v4->_dismissTimer;
  v4->_dismissTimer = v5;

  [(SSSDittoDismissTimer *)v4->_dismissTimer setDelegate:v4];
  return v4;
}

- (void)screenshotReceived:(id)a3 completion:(id)a4
{
  dismissTimer = self->_dismissTimer;
  v7 = a4;
  v8 = a3;
  [(SSSDittoDismissTimer *)dismissTimer newScreenshotReceived];
  [(SSSDittoRootViewController *)self _createAndParentContainerViewControllerIfPossible];
  [(SSSContainerViewController *)self->_containerViewController addScreenshot:v8 completion:v7];
}

- (void)_createAndParentContainerViewControllerIfPossible
{
  containerViewController = self->_containerViewController;
  if (!containerViewController)
  {
    v4 = objc_alloc_init(SSSContainerViewController);
    v5 = self->_containerViewController;
    self->_containerViewController = v4;

    [(SSSContainerViewController *)self->_containerViewController setDelegate:self];
    [(SSSDittoRootViewController *)self _updateForCurrentSize];
    containerViewController = self->_containerViewController;
  }

  v6 = [(SSSContainerViewController *)containerViewController parentViewController];

  if (v6 != self)
  {
    [(SSSDittoRootViewController *)self addChildViewController:self->_containerViewController];
    v7 = [(SSSDittoRootViewController *)self view];
    v8 = [(SSSContainerViewController *)self->_containerViewController view];
    [v7 addSubview:v8];

    [(SSSContainerViewController *)self->_containerViewController didMoveToParentViewController:self];
    dismissTimer = self->_dismissTimer;

    [(SSSDittoDismissTimer *)dismissTimer setUserInterfaceHidden:0];
  }
}

- (void)containerViewController:(id)a3 willTransitionToState:(unint64_t)a4 animated:(BOOL)a5 changeBlock:(id)a6
{
  v9 = a6;
  if (a4 == 1)
  {
    [(SSSDittoDismissTimer *)self->_dismissTimer setViewState:1];
  }

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10001FF64;
  v16 = &unk_1000BA830;
  v18 = v9;
  v19 = a4;
  v20 = a5;
  v17 = self;
  v10 = v9;
  v11 = objc_retainBlock(&v13);
  self->_containerViewControllerTargetState = a4;
  v12 = [(SSSDittoRootViewController *)self delegate:v13];
  [v12 dittoRootViewController:self willTransitionToState:a4 changeBlock:v11];

  [(SSSDittoRootViewController *)self _postNotificationForWillChangeToState:a4];
}

- (void)containerViewController:(id)a3 didTransitionToState:(unint64_t)a4
{
  if (!a4)
  {
    [(SSSDittoDismissTimer *)self->_dismissTimer setViewState:0];
  }

  v6 = [(SSSDittoRootViewController *)self delegate];
  [v6 dittoRootViewController:self didTransitionToState:a4];

  [(SSSDittoRootViewController *)self _postNotificationForDidChangeToState:a4];
}

- (void)containerViewControllerEndedDragAndDrop:(id)a3 shouldDismiss:(BOOL)a4
{
  v4 = a4;
  self->_isInDragAndDrop = 0;
  [(SSSDittoDismissTimer *)self->_dismissTimer setInDragAndDrop:0];
  if (v4)
  {

    [(SSSDittoRootViewController *)self _dismissAnimated:0];
  }
}

- (void)containerViewController:(id)a3 willShowTestFlightUIWithBlock:(id)a4
{
  dismissTimer = self->_dismissTimer;
  v6 = a4;
  [(SSSDittoDismissTimer *)dismissTimer setShowingSharingUI:1];
  v7 = [(SSSDittoRootViewController *)self delegate];
  [v7 dittoRootViewController:self willShowTestFlightUIWithBlock:v6];
}

- (void)containerViewController:(id)a3 isDraggingVISheetDidChange:(BOOL)a4
{
  [(SSSDittoRootViewController *)self setShouldInhibitReachability:a4];
  v5 = [(SSSDittoRootViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SSSDittoRootViewController *)self delegate];
    [v7 dittoRootViewController:self shouldInhibitReachabilityDidChange:{-[SSSDittoRootViewController shouldInhibitReachability](self, "shouldInhibitReachability")}];
  }
}

- (void)containerViewController:(id)a3 willShowSharingUIWithBlock:(id)a4
{
  dismissTimer = self->_dismissTimer;
  v6 = a4;
  [(SSSDittoDismissTimer *)dismissTimer setShowingSharingUI:1];
  v7 = [(SSSDittoRootViewController *)self delegate];
  [v7 dittoRootViewController:self willShowShowSharingUIWithBlock:v6];
}

- (void)containerViewControllerEndedShowingSharingUI:(id)a3 inStateTransition:(BOOL)a4
{
  v4 = a4;
  [(SSSDittoDismissTimer *)self->_dismissTimer setShowingSharingUI:0];
  v6 = [(SSSDittoRootViewController *)self delegate];
  [v6 dittoRootViewControllerFinishedShowingSharingUI:self inStateTransition:v4];
}

- (void)_postNotificationName:(id)a3
{
  v3 = a3;
  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 postNotificationName:v3 object:0];
}

- (void)_postNotificationForWillChangeToState:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    v3 = &SSScreenshotsDisplayModeWillChangeToFullscreenNotificationName;
  }

  else
  {
    v3 = &SSScreenshotsDisplayModeWillChangeToPictureInPictureNotificationName;
  }

  [(SSSDittoRootViewController *)self _postNotificationName:*v3];
}

- (void)_postNotificationForDidChangeToState:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    v3 = &SSScreenshotsDisplayModeDidChangeToFullscreenNotificationName;
  }

  else
  {
    v3 = &SSScreenshotsDisplayModeDidChangeToPictureInPictureNotificationName;
  }

  [(SSSDittoRootViewController *)self _postNotificationName:*v3];
}

- (void)_updateForCurrentSize
{
  v5 = [(SSSDittoRootViewController *)self view];
  [v5 bounds];
  [(SSSDittoRootViewController *)self _updateForSize:v3, v4];
}

- (void)_updateForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  y = CGRectZero.origin.y;
  v6 = [(SSSContainerViewController *)self->_containerViewController view];
  [v6 setFrame:{CGRectZero.origin.x, y, width, height}];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = SSSDittoRootViewController;
  v7 = a4;
  [(SSSDittoRootViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000205D8;
  v8[3] = &unk_1000BA858;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(SSSDittoRootViewController *)self parentViewController];
  v3 = [v2 supportedInterfaceOrientations];

  return v3;
}

- (void)pipifyWithCompletion:(id)a3
{
  v4 = a3;
  containerViewController = self->_containerViewController;
  if (containerViewController)
  {
    v6 = [(SSSContainerViewController *)containerViewController screenshotsViewController];
    [v6 setDismissalType:10];

    if (self->_containerViewControllerTargetState && [(SSSContainerViewController *)self->_containerViewController state])
    {
      v7 = [(SSSContainerViewController *)self->_containerViewController didInvokeVICard];
      v8 = self->_containerViewController;
      if (v7)
      {
        v9 = [(SSSContainerViewController *)v8 deleteReason];
        v10 = self->_containerViewController;
        if (v9 == 2)
        {
          [(SSSContainerViewController *)v10 dismissScreenshotsAnimated:1 completion:0];
        }

        else
        {
          [(SSSContainerViewController *)v10 setDidDeleteDismissDueToVI:1];
          [(SSSContainerViewController *)self->_containerViewController dismissScreenshotsAndDelete];
        }
      }

      else
      {
        [(SSSContainerViewController *)v8 commitInflightEditsIfNecessary];
        [(SSSContainerViewController *)self->_containerViewController setState:0 animated:1 completion:v4];
      }

      goto LABEL_15;
    }

    [(SSSContainerViewController *)self->_containerViewController removeDescendantViewControllers];
  }

  else
  {
    v11 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100074988(v11);
    }

    if (os_variant_has_internal_diagnostics())
    {
      sub_1000749CC();
    }
  }

  if (v4)
  {
    v4[2](v4);
  }

LABEL_15:
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SSSDittoRootViewController;
  [(SSSDittoRootViewController *)&v5 viewDidLoad];
  v3 = [(SSSDittoRootViewController *)self view];
  v4 = +[UIColor whiteColor];
  [v3 setTintColor:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SSSDittoRootViewController;
  [(SSSDittoRootViewController *)&v4 viewDidAppear:a3];
  [(SSSDittoRootViewController *)self _createAndParentContainerViewControllerIfPossible];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SSSDittoRootViewController;
  [(SSSDittoRootViewController *)&v5 viewDidDisappear:?];
  [(SSSContainerViewController *)self->_containerViewController viewDidDisappear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SSSDittoRootViewController;
  [(SSSDittoRootViewController *)&v4 viewWillDisappear:a3];
  [(SSSDittoRootViewController *)self resignFirstResponder];
}

- (void)dittoDismissTimerFired:(id)a3
{
  v4 = +[SSStatisticsManager sharedStatisticsManager];
  [v4 pipSlidOffscreenDueToTimeout];

  [(SSSDittoRootViewController *)self _dismissAnimated:1];
}

- (void)containerViewController:(id)a3 willBeginDismissAnimationWithSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    containerViewController = self->_containerViewController;
    v13 = 134218240;
    v14 = v6;
    v15 = 2048;
    v16 = containerViewController;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "container view controller: %p, will being dismiss animation, current container vc: %p", &v13, 0x16u);
  }

  [(SSSDittoDismissTimer *)self->_dismissTimer setPerformingDismissAnimation:1];
  v10 = [(SSSDittoRootViewController *)self delegate];
  [v7 duration];
  v12 = v11;

  [v10 dittoRootViewController:self wantsBackground:0 duration:v12];
}

- (void)containerViewControllerDidEndDismissAnimation:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    containerViewController = self->_containerViewController;
    v12 = 134218240;
    v13 = v4;
    v14 = 2048;
    v15 = containerViewController;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "container view controller: %p, did end dismiss animation, current container vc: %p", &v12, 0x16u);
  }

  [(SSSDittoDismissTimer *)self->_dismissTimer setPerformingDismissAnimation:0];
  [(SSSContainerViewController *)v4 willMoveToParentViewController:0];
  v7 = [(SSSContainerViewController *)v4 view];
  [v7 removeFromSuperview];

  [(SSSContainerViewController *)v4 setDelegate:0];
  [(SSSContainerViewController *)v4 removeFromParentViewController];
  v8 = self->_containerViewController;
  if (v8 == v4)
  {
    self->_containerViewController = 0;

    [(SSSDittoDismissTimer *)self->_dismissTimer setUserInterfaceHidden:1];
  }

  v9 = [(SSSDittoRootViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(SSSDittoRootViewController *)self delegate];
    [v11 dittoRootViewControllerDidDismiss:self];
  }
}

- (void)_dismissAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "dismiss animated: %{BOOL}d", v8, 8u);
  }

  [(SSSContainerViewController *)self->_containerViewController dismissScreenshotsAnimated:v4 completion:v6];
}

- (SSSDittoRootViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SSSDittoViewController)hostingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);

  return WeakRetained;
}

- (SSSViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerManager);

  return WeakRetained;
}

@end