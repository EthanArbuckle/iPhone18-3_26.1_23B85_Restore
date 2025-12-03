@interface SSSDittoRootViewController
- (SSSDittoRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SSSDittoRootViewControllerDelegate)delegate;
- (SSSDittoViewController)hostingViewController;
- (SSSViewControllerManager)viewControllerManager;
- (unint64_t)supportedInterfaceOrientations;
- (void)_createAndParentContainerViewControllerIfPossible;
- (void)_dismissAnimated:(BOOL)animated completion:(id)completion;
- (void)_postNotificationForDidChangeToState:(unint64_t)state;
- (void)_postNotificationForWillChangeToState:(unint64_t)state;
- (void)_postNotificationName:(id)name;
- (void)_updateForCurrentSize;
- (void)_updateForSize:(CGSize)size;
- (void)containerViewController:(id)controller didTransitionToState:(unint64_t)state;
- (void)containerViewController:(id)controller isDraggingVISheetDidChange:(BOOL)change;
- (void)containerViewController:(id)controller willBeginDismissAnimationWithSettings:(id)settings;
- (void)containerViewController:(id)controller willShowSharingUIWithBlock:(id)block;
- (void)containerViewController:(id)controller willShowTestFlightUIWithBlock:(id)block;
- (void)containerViewController:(id)controller willTransitionToState:(unint64_t)state animated:(BOOL)animated changeBlock:(id)block;
- (void)containerViewControllerDidEndDismissAnimation:(id)animation;
- (void)containerViewControllerEndedDragAndDrop:(id)drop shouldDismiss:(BOOL)dismiss;
- (void)containerViewControllerEndedShowingSharingUI:(id)i inStateTransition:(BOOL)transition;
- (void)dittoDismissTimerFired:(id)fired;
- (void)pipifyWithCompletion:(id)completion;
- (void)screenshotReceived:(id)received completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SSSDittoRootViewController

- (SSSDittoRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = SSSDittoRootViewController;
  v4 = [(SSSDittoRootViewController *)&v8 initWithNibName:name bundle:bundle];
  v5 = objc_alloc_init(SSSDittoDismissTimer);
  dismissTimer = v4->_dismissTimer;
  v4->_dismissTimer = v5;

  [(SSSDittoDismissTimer *)v4->_dismissTimer setDelegate:v4];
  return v4;
}

- (void)screenshotReceived:(id)received completion:(id)completion
{
  dismissTimer = self->_dismissTimer;
  completionCopy = completion;
  receivedCopy = received;
  [(SSSDittoDismissTimer *)dismissTimer newScreenshotReceived];
  [(SSSDittoRootViewController *)self _createAndParentContainerViewControllerIfPossible];
  [(SSSContainerViewController *)self->_containerViewController addScreenshot:receivedCopy completion:completionCopy];
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

  parentViewController = [(SSSContainerViewController *)containerViewController parentViewController];

  if (parentViewController != self)
  {
    [(SSSDittoRootViewController *)self addChildViewController:self->_containerViewController];
    view = [(SSSDittoRootViewController *)self view];
    view2 = [(SSSContainerViewController *)self->_containerViewController view];
    [view addSubview:view2];

    [(SSSContainerViewController *)self->_containerViewController didMoveToParentViewController:self];
    dismissTimer = self->_dismissTimer;

    [(SSSDittoDismissTimer *)dismissTimer setUserInterfaceHidden:0];
  }
}

- (void)containerViewController:(id)controller willTransitionToState:(unint64_t)state animated:(BOOL)animated changeBlock:(id)block
{
  blockCopy = block;
  if (state == 1)
  {
    [(SSSDittoDismissTimer *)self->_dismissTimer setViewState:1];
  }

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10001FF64;
  v16 = &unk_1000BA830;
  v18 = blockCopy;
  stateCopy = state;
  animatedCopy = animated;
  selfCopy = self;
  v10 = blockCopy;
  v11 = objc_retainBlock(&v13);
  self->_containerViewControllerTargetState = state;
  v12 = [(SSSDittoRootViewController *)self delegate:v13];
  [v12 dittoRootViewController:self willTransitionToState:state changeBlock:v11];

  [(SSSDittoRootViewController *)self _postNotificationForWillChangeToState:state];
}

- (void)containerViewController:(id)controller didTransitionToState:(unint64_t)state
{
  if (!state)
  {
    [(SSSDittoDismissTimer *)self->_dismissTimer setViewState:0];
  }

  delegate = [(SSSDittoRootViewController *)self delegate];
  [delegate dittoRootViewController:self didTransitionToState:state];

  [(SSSDittoRootViewController *)self _postNotificationForDidChangeToState:state];
}

- (void)containerViewControllerEndedDragAndDrop:(id)drop shouldDismiss:(BOOL)dismiss
{
  dismissCopy = dismiss;
  self->_isInDragAndDrop = 0;
  [(SSSDittoDismissTimer *)self->_dismissTimer setInDragAndDrop:0];
  if (dismissCopy)
  {

    [(SSSDittoRootViewController *)self _dismissAnimated:0];
  }
}

- (void)containerViewController:(id)controller willShowTestFlightUIWithBlock:(id)block
{
  dismissTimer = self->_dismissTimer;
  blockCopy = block;
  [(SSSDittoDismissTimer *)dismissTimer setShowingSharingUI:1];
  delegate = [(SSSDittoRootViewController *)self delegate];
  [delegate dittoRootViewController:self willShowTestFlightUIWithBlock:blockCopy];
}

- (void)containerViewController:(id)controller isDraggingVISheetDidChange:(BOOL)change
{
  [(SSSDittoRootViewController *)self setShouldInhibitReachability:change];
  delegate = [(SSSDittoRootViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SSSDittoRootViewController *)self delegate];
    [delegate2 dittoRootViewController:self shouldInhibitReachabilityDidChange:{-[SSSDittoRootViewController shouldInhibitReachability](self, "shouldInhibitReachability")}];
  }
}

- (void)containerViewController:(id)controller willShowSharingUIWithBlock:(id)block
{
  dismissTimer = self->_dismissTimer;
  blockCopy = block;
  [(SSSDittoDismissTimer *)dismissTimer setShowingSharingUI:1];
  delegate = [(SSSDittoRootViewController *)self delegate];
  [delegate dittoRootViewController:self willShowShowSharingUIWithBlock:blockCopy];
}

- (void)containerViewControllerEndedShowingSharingUI:(id)i inStateTransition:(BOOL)transition
{
  transitionCopy = transition;
  [(SSSDittoDismissTimer *)self->_dismissTimer setShowingSharingUI:0];
  delegate = [(SSSDittoRootViewController *)self delegate];
  [delegate dittoRootViewControllerFinishedShowingSharingUI:self inStateTransition:transitionCopy];
}

- (void)_postNotificationName:(id)name
{
  nameCopy = name;
  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 postNotificationName:nameCopy object:0];
}

- (void)_postNotificationForWillChangeToState:(unint64_t)state
{
  if (state)
  {
    if (state != 1)
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

- (void)_postNotificationForDidChangeToState:(unint64_t)state
{
  if (state)
  {
    if (state != 1)
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
  view = [(SSSDittoRootViewController *)self view];
  [view bounds];
  [(SSSDittoRootViewController *)self _updateForSize:v3, v4];
}

- (void)_updateForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = CGRectZero.origin.y;
  view = [(SSSContainerViewController *)self->_containerViewController view];
  [view setFrame:{CGRectZero.origin.x, y, width, height}];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SSSDittoRootViewController;
  coordinatorCopy = coordinator;
  [(SSSDittoRootViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000205D8;
  v8[3] = &unk_1000BA858;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  parentViewController = [(SSSDittoRootViewController *)self parentViewController];
  supportedInterfaceOrientations = [parentViewController supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (void)pipifyWithCompletion:(id)completion
{
  completionCopy = completion;
  containerViewController = self->_containerViewController;
  if (containerViewController)
  {
    screenshotsViewController = [(SSSContainerViewController *)containerViewController screenshotsViewController];
    [screenshotsViewController setDismissalType:10];

    if (self->_containerViewControllerTargetState && [(SSSContainerViewController *)self->_containerViewController state])
    {
      didInvokeVICard = [(SSSContainerViewController *)self->_containerViewController didInvokeVICard];
      v8 = self->_containerViewController;
      if (didInvokeVICard)
      {
        deleteReason = [(SSSContainerViewController *)v8 deleteReason];
        v10 = self->_containerViewController;
        if (deleteReason == 2)
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
        [(SSSContainerViewController *)self->_containerViewController setState:0 animated:1 completion:completionCopy];
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_15:
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SSSDittoRootViewController;
  [(SSSDittoRootViewController *)&v5 viewDidLoad];
  view = [(SSSDittoRootViewController *)self view];
  v4 = +[UIColor whiteColor];
  [view setTintColor:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SSSDittoRootViewController;
  [(SSSDittoRootViewController *)&v4 viewDidAppear:appear];
  [(SSSDittoRootViewController *)self _createAndParentContainerViewControllerIfPossible];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = SSSDittoRootViewController;
  [(SSSDittoRootViewController *)&v5 viewDidDisappear:?];
  [(SSSContainerViewController *)self->_containerViewController viewDidDisappear:disappearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SSSDittoRootViewController;
  [(SSSDittoRootViewController *)&v4 viewWillDisappear:disappear];
  [(SSSDittoRootViewController *)self resignFirstResponder];
}

- (void)dittoDismissTimerFired:(id)fired
{
  v4 = +[SSStatisticsManager sharedStatisticsManager];
  [v4 pipSlidOffscreenDueToTimeout];

  [(SSSDittoRootViewController *)self _dismissAnimated:1];
}

- (void)containerViewController:(id)controller willBeginDismissAnimationWithSettings:(id)settings
{
  controllerCopy = controller;
  settingsCopy = settings;
  v8 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    containerViewController = self->_containerViewController;
    v13 = 134218240;
    v14 = controllerCopy;
    v15 = 2048;
    v16 = containerViewController;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "container view controller: %p, will being dismiss animation, current container vc: %p", &v13, 0x16u);
  }

  [(SSSDittoDismissTimer *)self->_dismissTimer setPerformingDismissAnimation:1];
  delegate = [(SSSDittoRootViewController *)self delegate];
  [settingsCopy duration];
  v12 = v11;

  [delegate dittoRootViewController:self wantsBackground:0 duration:v12];
}

- (void)containerViewControllerDidEndDismissAnimation:(id)animation
{
  animationCopy = animation;
  v5 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    containerViewController = self->_containerViewController;
    v12 = 134218240;
    v13 = animationCopy;
    v14 = 2048;
    v15 = containerViewController;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "container view controller: %p, did end dismiss animation, current container vc: %p", &v12, 0x16u);
  }

  [(SSSDittoDismissTimer *)self->_dismissTimer setPerformingDismissAnimation:0];
  [(SSSContainerViewController *)animationCopy willMoveToParentViewController:0];
  view = [(SSSContainerViewController *)animationCopy view];
  [view removeFromSuperview];

  [(SSSContainerViewController *)animationCopy setDelegate:0];
  [(SSSContainerViewController *)animationCopy removeFromParentViewController];
  v8 = self->_containerViewController;
  if (v8 == animationCopy)
  {
    self->_containerViewController = 0;

    [(SSSDittoDismissTimer *)self->_dismissTimer setUserInterfaceHidden:1];
  }

  delegate = [(SSSDittoRootViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(SSSDittoRootViewController *)self delegate];
    [delegate2 dittoRootViewControllerDidDismiss:self];
  }
}

- (void)_dismissAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = os_log_create("com.apple.screenshotservices", "ViewControllerManager");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = animatedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "dismiss animated: %{BOOL}d", v8, 8u);
  }

  [(SSSContainerViewController *)self->_containerViewController dismissScreenshotsAnimated:animatedCopy completion:completionCopy];
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