@interface VLFContaineeViewController
- (VLFContaineeViewController)init;
- (VLFContaineeViewController)initWithCoder:(id)coder;
- (VLFContaineeViewController)initWithEntryPoint:(int64_t)point;
- (VLFContaineeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)heightForLayout:(unint64_t)layout;
- (unint64_t)defaultLayoutForContainerStyle:(unint64_t)style traitCollection:(id)collection;
- (void)VLFSessionLocalizationFailedWithError:(id)error;
- (void)VLFSessionLocalizationSucceeded;
- (void)_hideFailureWithCompletion:(id)completion;
- (void)_presentInternalErrorAlert:(id)alert onViewController:(id)controller;
- (void)_retryVLFSession;
- (void)_showFailure;
- (void)_startVLFSession;
- (void)_updateBackgroundColor;
- (void)_updateForCurrentState;
- (void)_updateForLayout:(unint64_t)layout;
- (void)dealloc;
- (void)didChangeLayout:(unint64_t)layout;
- (void)failureViewDismissButtonTapped:(id)tapped;
- (void)failureViewRetryButtonTapped:(id)tapped;
- (void)handleDismissAction:(id)action;
- (void)handleVLFPuckTapped;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)scanningStateManager:(id)manager didChangeState:(int64_t)state;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)current;
- (void)willResignCurrent:(BOOL)current;
@end

@implementation VLFContaineeViewController

- (void)failureViewRetryButtonTapped:(id)tapped
{
  v4 = sub_100F8DCEC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Failure view retry button tapped", v5, 2u);
  }

  [(VLFContaineeViewController *)self _retryVLFSession];
}

- (void)failureViewDismissButtonTapped:(id)tapped
{
  v4 = sub_100F8DCEC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Failure view dismiss button tapped; dismissing ourselves", v5, 2u);
  }

  [(VLFContaineeViewController *)self handleDismissAction:0];
}

- (void)scanningStateManager:(id)manager didChangeState:(int64_t)state
{
  v6 = sub_100F8DCEC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if ((state - 2) > 3)
    {
      v7 = @"VLFScanningStateInitializing";
    }

    else
    {
      v7 = off_10165F478[state - 2];
    }

    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "State manager updated its state to %@", &v8, 0xCu);
  }

  [(VLFContaineeViewController *)self _updateForCurrentState];
}

- (void)VLFSessionLocalizationFailedWithError:(id)error
{
  errorCopy = error;
  v5 = sub_100F8DCEC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Localization failed with error %@", &v16, 0xCu);
  }

  domain = [errorCopy domain];
  v7 = [domain isEqualToString:@"com.apple.Maps.VLFSession"];

  if (!v7)
  {
    v11 = +[GEOPlatform sharedPlatform];
    isInternalInstall = [v11 isInternalInstall];

    if (isInternalInstall)
    {
      v13 = sub_100F8DCEC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Showing internal-only failure alert which displays more info about what went wrong", &v16, 2u);
      }

      [(VLFContaineeViewController *)self _presentInternalErrorAlert:errorCopy onViewController:self];
    }

    v14 = 130;
    goto LABEL_16;
  }

  code = [errorCopy code];
  v9 = sub_100F8DCEC();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (code != 2)
  {
    if (v10)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Localization timed out; showing failure UI", &v16, 2u);
    }

    v14 = 2160;
LABEL_16:
    [GEOAPPortal captureUserAction:v14 target:669 value:0];
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:@"VLFContaineeViewControllerWillShowFailureViewNotification" object:self];

    [(VLFContaineeViewController *)self _showFailure];
    goto LABEL_17;
  }

  if (v10)
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "User canceled; dismissing ourselves", &v16, 2u);
  }

  [GEOAPPortal captureUserAction:131 target:669 value:0];
  [(VLFContaineeViewController *)self handleDismissAction:0];
LABEL_17:
}

- (void)VLFSessionLocalizationSucceeded
{
  v3 = sub_100F8DCEC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Localization succeeded; dismissing ourselves", v5, 2u);
  }

  v4 = +[VLFSessionUsageTracker sharedInstance];
  [v4 registerLocalizationSuccess];

  [(VLFContaineeViewController *)self handleDismissAction:0];
}

- (unint64_t)defaultLayoutForContainerStyle:(unint64_t)style traitCollection:(id)collection
{
  if (style > 7)
  {
    return 4;
  }

  else
  {
    return qword_101216160[style];
  }
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  tappedCopy = tapped;
  v6 = sub_100F8DCEC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Header button tapped; dismissing ourselves", v7, 2u);
  }

  [(VLFContaineeViewController *)self handleDismissAction:tappedCopy];
}

- (void)_presentInternalErrorAlert:(id)alert onViewController:(id)controller
{
  controllerCopy = controller;
  alertCopy = alert;
  domain = [alertCopy domain];
  v8 = [domain isEqualToString:ARErrorDomain];

  if (v8)
  {
    v9 = @"VLF+ localization failed due to an ARKit error: %@";
  }

  else
  {
    v9 = @"VLF+ localization failed due to an unknown error: %@";
  }

  alertCopy = [NSString stringWithFormat:v9, alertCopy];

  v10 = [UIAlertController alertControllerWithTitle:@"Localization failed [Internal Only]" message:alertCopy preferredStyle:1];
  v11 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
  [v10 addAction:v11];

  [controllerCopy presentViewController:v10 animated:1 completion:0];
}

- (void)_hideFailureWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100F8DCEC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Hiding failure UI", buf, 2u);
  }

  [(VLFContaineeViewController *)self setIsFailureVisible:0];
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"VLFSessionScanningAnimationSlowDownKey"];

  if (v7)
  {
    v8 = 5.0;
  }

  else
  {
    v8 = 0.3;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100F8E52C;
  v12[3] = &unk_101661B18;
  v12[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100F8E674;
  v10[3] = &unk_10165F438;
  v11 = completionCopy;
  v9 = completionCopy;
  [UIView animateKeyframesWithDuration:4 delay:v12 options:v10 animations:v8 completion:0.0];
}

- (void)_showFailure
{
  v3 = sub_100F8DCEC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Showing failure UI", buf, 2u);
  }

  [(VLFContaineeViewController *)self setIsFailureVisible:1];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"VLFSessionScanningAnimationSlowDownKey"];

  v6 = 0.3;
  if (v5)
  {
    v6 = 5.0;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100F8E8C4;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  [UIView animateKeyframesWithDuration:4 delay:v7 options:0 animations:v6 completion:0.0];
}

- (void)_updateForLayout:(unint64_t)layout
{
  if (layout == 4)
  {
    instructionViewLeadingConstraint = [(VLFContaineeViewController *)self instructionViewLeadingConstraint];
    [instructionViewLeadingConstraint setConstant:24.0];

    instructionViewTrailingConstraint = [(VLFContaineeViewController *)self instructionViewTrailingConstraint];
    [instructionViewTrailingConstraint setConstant:-48.0];

    scanningAnimationViewFlexibleTopConstraintPortrait = [(VLFContaineeViewController *)self scanningAnimationViewFlexibleTopConstraintPortrait];
    [scanningAnimationViewFlexibleTopConstraintPortrait setActive:0];

    scanningAnimationViewTopConstraintPortrait = [(VLFContaineeViewController *)self scanningAnimationViewTopConstraintPortrait];
    [scanningAnimationViewTopConstraintPortrait setActive:0];

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    containerStyle = [cardPresentationController containerStyle];

    if (containerStyle == 6)
    {
      view = [(VLFContaineeViewController *)self view];
      window = [view window];
      [window frame];
      v26 = v25 * -0.08;
      scanningAnimationViewBottomConstraint = [(VLFContaineeViewController *)self scanningAnimationViewBottomConstraint];
      [scanningAnimationViewBottomConstraint setConstant:v26];

      view2 = [(VLFContaineeViewController *)self view];
      view3 = [(VLFContaineeViewController *)self view];
      [view3 bounds];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      view4 = [(VLFContaineeViewController *)self view];
      window2 = [view4 window];
      [view2 convertRect:window2 toView:{v31, v33, v35, v37}];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      view5 = [(VLFContaineeViewController *)self view];
      window3 = [view5 window];
      [window3 frame];
      v51 = v50;
      v92.origin.x = v41;
      v92.origin.y = v43;
      v92.size.width = v45;
      v92.size.height = v47;
      MaxY = CGRectGetMaxY(v92);

      view6 = [(VLFContaineeViewController *)self view];
      window4 = [view6 window];
      [window4 frame];
      v56 = v51 - MaxY + v55 * -0.07;
    }

    else
    {
      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController2 bottomSafeOffset];
      v75 = v74;
      view7 = [(VLFContaineeViewController *)self view];
      window5 = [view7 window];
      [window5 frame];
      v79 = -(v75 + v78 * 0.08);
      scanningAnimationViewBottomConstraint2 = [(VLFContaineeViewController *)self scanningAnimationViewBottomConstraint];
      [scanningAnimationViewBottomConstraint2 setConstant:v79];

      view6 = [(VLFContaineeViewController *)self view];
      window4 = [view6 window];
      [window4 frame];
      v56 = v81 * -0.07;
    }

    failureViewBottomConstraint = [(VLFContaineeViewController *)self failureViewBottomConstraint];
    [failureViewBottomConstraint setConstant:v56];

    instructionViewFirstBaselineConstraint = [(VLFContaineeViewController *)self instructionViewFirstBaselineConstraint];
    [instructionViewFirstBaselineConstraint setActive:0];

    instructionViewTopConstraint = [(VLFContaineeViewController *)self instructionViewTopConstraint];
    v69 = instructionViewTopConstraint;
    v70 = 22.0;
    goto LABEL_18;
  }

  if (layout == 2)
  {
    instructionViewLeadingConstraint2 = [(VLFContaineeViewController *)self instructionViewLeadingConstraint];
    [instructionViewLeadingConstraint2 setConstant:28.0];

    instructionViewTrailingConstraint2 = [(VLFContaineeViewController *)self instructionViewTrailingConstraint];
    [instructionViewTrailingConstraint2 setConstant:-52.0];

    LODWORD(instructionViewTrailingConstraint2) = [(VLFContaineeViewController *)self isFailureVisible];
    scanningAnimationViewTopConstraintPortrait2 = [(VLFContaineeViewController *)self scanningAnimationViewTopConstraintPortrait];
    [scanningAnimationViewTopConstraintPortrait2 setActive:instructionViewTrailingConstraint2 ^ 1];

    isFailureVisible = [(VLFContaineeViewController *)self isFailureVisible];
    scanningAnimationViewFlexibleTopConstraintPortrait2 = [(VLFContaineeViewController *)self scanningAnimationViewFlexibleTopConstraintPortrait];
    [scanningAnimationViewFlexibleTopConstraintPortrait2 setActive:isFailureVisible];

    cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController3 bottomSafeOffset];
    v12 = v11;

    if (v12 <= 0.0)
    {
      scanningAnimationViewBottomConstraint3 = [(VLFContaineeViewController *)self scanningAnimationViewBottomConstraint];
      [scanningAnimationViewBottomConstraint3 setConstant:-10.0];
    }

    else
    {
      scanningAnimationViewBottomConstraint3 = [(ContaineeViewController *)self cardPresentationController];
      [scanningAnimationViewBottomConstraint3 bottomSafeOffset];
      v15 = -v14;
      scanningAnimationViewBottomConstraint4 = [(VLFContaineeViewController *)self scanningAnimationViewBottomConstraint];
      [scanningAnimationViewBottomConstraint4 setConstant:v15];
    }

    cardPresentationController4 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController4 bottomSafeOffset];
    v62 = -10.0 - v61;
    failureViewBottomConstraint2 = [(VLFContaineeViewController *)self failureViewBottomConstraint];
    [failureViewBottomConstraint2 setConstant:v62];

    traitCollection = [(VLFContaineeViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v66 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryLarge);

    if (v66 != NSOrderedDescending)
    {
      instructionViewTopConstraint2 = [(VLFContaineeViewController *)self instructionViewTopConstraint];
      [instructionViewTopConstraint2 setActive:0];

      instructionViewFirstBaselineConstraint2 = [(VLFContaineeViewController *)self instructionViewFirstBaselineConstraint];
LABEL_19:
      v58 = instructionViewFirstBaselineConstraint2;
      [instructionViewFirstBaselineConstraint2 setActive:1];
LABEL_20:

      goto LABEL_21;
    }

    instructionViewFirstBaselineConstraint3 = [(VLFContaineeViewController *)self instructionViewFirstBaselineConstraint];
    [instructionViewFirstBaselineConstraint3 setActive:0];

    instructionViewTopConstraint = [(VLFContaineeViewController *)self instructionViewTopConstraint];
    v69 = instructionViewTopConstraint;
    v70 = 21.0;
LABEL_18:
    [instructionViewTopConstraint setConstant:v70];

    instructionViewFirstBaselineConstraint2 = [(VLFContaineeViewController *)self instructionViewTopConstraint];
    goto LABEL_19;
  }

  v57 = sub_10006D178();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    v86 = 136315650;
    v87 = "[VLFContaineeViewController _updateForLayout:]";
    v88 = 2080;
    v89 = "VLFContaineeViewController.m";
    v90 = 1024;
    v91 = 420;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v86, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v58 = sub_10006D178();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = +[NSThread callStackSymbols];
      v86 = 138412290;
      v87 = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%@", &v86, 0xCu);
    }

    goto LABEL_20;
  }

LABEL_21:
  instructionView = [(VLFContaineeViewController *)self instructionView];
  [instructionView setCurrentLayout:layout];

  failureView = [(VLFContaineeViewController *)self failureView];
  [failureView setCurrentLayout:layout];
}

- (void)_updateForCurrentState
{
  v3 = sub_100F8DCEC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    stateManager = [(VLFContaineeViewController *)self stateManager];
    currentState = [stateManager currentState];
    if ((currentState - 2) > 3)
    {
      v6 = @"VLFScanningStateInitializing";
    }

    else
    {
      v6 = off_10165F478[(currentState - 2)];
    }

    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Updating for current state: %@", &v13, 0xCu);
  }

  stateManager2 = [(VLFContaineeViewController *)self stateManager];
  currentState2 = [stateManager2 currentState];
  instructionView = [(VLFContaineeViewController *)self instructionView];
  [instructionView setCurrentScanningState:currentState2];

  stateManager3 = [(VLFContaineeViewController *)self stateManager];
  currentState3 = [stateManager3 currentState];
  scanningAnimationView = [(VLFContaineeViewController *)self scanningAnimationView];
  [scanningAnimationView setCurrentScanningState:currentState3];
}

- (void)_retryVLFSession
{
  instructionView = [(VLFContaineeViewController *)self instructionView];
  [instructionView setCurrentScanningState:1];

  scanningAnimationView = [(VLFContaineeViewController *)self scanningAnimationView];
  [scanningAnimationView setCurrentScanningState:1];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"VLFContaineeViewControllerWillHideFailureViewNotification" object:self];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F8F3D8;
  v6[3] = &unk_101661B18;
  v6[4] = self;
  [(VLFContaineeViewController *)self _hideFailureWithCompletion:v6];
}

- (void)_startVLFSession
{
  v3 = sub_100F8DCEC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting VLF session", v9, 2u);
  }

  vlfSession = [(VLFContaineeViewController *)self vlfSession];
  [vlfSession start];

  v5 = [VLFScanningStateManager alloc];
  vlfSession2 = [(VLFContaineeViewController *)self vlfSession];
  session = [vlfSession2 session];
  v8 = [(VLFScanningStateManager *)v5 initWithSession:session delegate:self];
  [(VLFContaineeViewController *)self setStateManager:v8];
}

- (void)_updateBackgroundColor
{
  traitCollection = [(VLFContaineeViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    +[UIColor secondarySystemBackgroundColor];
  }

  else
  {
    +[UIColor systemWhiteColor];
  }
  v6 = ;
  view = [(VLFContaineeViewController *)self view];
  [view setBackgroundColor:v6];
}

- (void)handleVLFPuckTapped
{
  vlfSession = [(VLFContaineeViewController *)self vlfSession];
  isRunning = [vlfSession isRunning];

  if (isRunning)
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315906;
      v13 = "[VLFContaineeViewController handleVLFPuckTapped]";
      v14 = 2080;
      v15 = "VLFContaineeViewController.m";
      v16 = 1024;
      v17 = 313;
      v18 = 2080;
      v19 = "!self.vlfSession.isRunning";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v12, 0x26u);
    }

    if (sub_100E03634())
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = +[NSThread callStackSymbols];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
      }
    }
  }

  vlfSession2 = [(VLFContaineeViewController *)self vlfSession];
  isRunning2 = [vlfSession2 isRunning];

  v7 = sub_100F8DCEC();
  v8 = v7;
  if (isRunning2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "VLF puck was tapped while a VLF session is running. This should never happen.", &v12, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "VLF puck was tapped; retrying VLF", &v12, 2u);
    }

    [(VLFContaineeViewController *)self _retryVLFSession];
  }
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"VLFContaineeViewControllerWillCancelNotification" object:self];

  v6.receiver = self;
  v6.super_class = VLFContaineeViewController;
  [(ContaineeViewController *)&v6 handleDismissAction:actionCopy];
}

- (void)didChangeLayout:(unint64_t)layout
{
  v6.receiver = self;
  v6.super_class = VLFContaineeViewController;
  [(ContaineeViewController *)&v6 didChangeLayout:?];
  v5 = sub_100F8DCEC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    layoutCopy = layout;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Did change layout to: %lu", buf, 0xCu);
  }

  [(VLFContaineeViewController *)self _updateForLayout:layout];
}

- (double)heightForLayout:(unint64_t)layout
{
  v5 = -1.0;
  if (layout == 4 || layout == 2)
  {
    [(VLFContaineeViewController *)self _updateForLayout:layout];
    if (layout == 2)
    {
      isFailureVisible = [(VLFContaineeViewController *)self isFailureVisible];
      v9 = &UILayoutFittingCompressedSize;
      if (!isFailureVisible)
      {
        v9 = &UILayoutFittingExpandedSize;
      }

      height = v9->height;
      view = [(VLFContaineeViewController *)self view];
      view2 = [(VLFContaineeViewController *)self view];
      [view2 frame];
      v13 = v12;
      LODWORD(v12) = 1148846080;
      LODWORD(v14) = 1112014848;
      [view systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:height verticalFittingPriority:{v12, v14}];
      v5 = v15;

      goto LABEL_9;
    }

    if (layout == 4)
    {
      view = [(ContaineeViewController *)self cardPresentationController];
      [view availableHeight];
      v5 = v7;
LABEL_9:
    }
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v14.receiver = self;
  v14.super_class = VLFContaineeViewController;
  [(MapsThemeViewController *)&v14 traitCollectionDidChange:changeCopy];
  [(VLFContaineeViewController *)self _updateBackgroundColor];
  if (changeCopy)
  {
    traitCollection = [(VLFContaineeViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);

    if (v8)
    {
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      containeeLayout = [cardPresentationController containeeLayout];

      if (containeeLayout)
      {
        cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
        -[VLFContaineeViewController _updateForLayout:](self, "_updateForLayout:", [cardPresentationController2 containeeLayout]);
      }

      view = [(VLFContaineeViewController *)self view];
      [view layoutIfNeeded];

      cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController3 updateHeightForCurrentLayout];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = VLFContaineeViewController;
  [(ContaineeViewController *)&v6 viewDidLayoutSubviews];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if (containeeLayout)
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    -[VLFContaineeViewController _updateForLayout:](self, "_updateForLayout:", [cardPresentationController2 containeeLayout]);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = VLFContaineeViewController;
  [(VLFContaineeViewController *)&v8 viewDidDisappear:disappear];
  instructionView = [(VLFContaineeViewController *)self instructionView];
  layer = [instructionView layer];
  [layer removeAllAnimations];

  scanningAnimationView = [(VLFContaineeViewController *)self scanningAnimationView];
  layer2 = [scanningAnimationView layer];
  [layer2 removeAllAnimations];

  [(VLFContaineeViewController *)self _hideFailureWithCompletion:0];
}

- (void)willBecomeCurrent:(BOOL)current
{
  v7.receiver = self;
  v7.super_class = VLFContaineeViewController;
  [(ContaineeViewController *)&v7 willBecomeCurrent:current];
  v4 = sub_100F8DCEC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Will become current", v6, 2u);
  }

  [(VLFContaineeViewController *)self _startVLFSession];
  [(VLFContaineeViewController *)self _updateForCurrentState];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"VLFContaineeViewControllerDidAppearNotification" object:self];
}

- (void)willResignCurrent:(BOOL)current
{
  v8.receiver = self;
  v8.super_class = VLFContaineeViewController;
  [(ContaineeViewController *)&v8 willResignCurrent:current];
  v4 = sub_100F8DCEC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Will resign current", v7, 2u);
  }

  [(VLFContaineeViewController *)self setStateManager:0];
  vlfSession = [(VLFContaineeViewController *)self vlfSession];
  [vlfSession stop];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"VLFContaineeViewControllerDidDisappearNotification" object:self];
}

- (void)viewDidLoad
{
  v103.receiver = self;
  v103.super_class = VLFContaineeViewController;
  [(ContaineeViewController *)&v103 viewDidLoad];
  [(VLFContaineeViewController *)self _updateBackgroundColor];
  view = [(VLFContaineeViewController *)self view];
  layer = [view layer];
  [layer setMaskedCorners:3];

  view2 = [(VLFContaineeViewController *)self view];
  layer2 = [view2 layer];
  [layer2 setMasksToBounds:1];

  v102 = +[NSMutableArray array];
  view3 = [(VLFContaineeViewController *)self view];
  [view3 addSubview:self->_titleHeaderView];

  leadingAnchor = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
  view4 = [(VLFContaineeViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v90 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v108[0] = v90;
  trailingAnchor = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
  view5 = [(VLFContaineeViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v108[1] = v11;
  topAnchor = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
  view6 = [(VLFContaineeViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v108[2] = v15;
  v16 = [NSArray arrayWithObjects:v108 count:3];
  [v102 addObjectsFromArray:v16];

  view7 = [(VLFContaineeViewController *)self view];
  [view7 addSubview:self->_scanningContainerView];

  leadingAnchor3 = [(UIView *)self->_scanningContainerView leadingAnchor];
  view8 = [(VLFContaineeViewController *)self view];
  leadingAnchor4 = [view8 leadingAnchor];
  v91 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v107[0] = v91;
  trailingAnchor3 = [(UIView *)self->_scanningContainerView trailingAnchor];
  view9 = [(VLFContaineeViewController *)self view];
  trailingAnchor4 = [view9 trailingAnchor];
  v83 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v107[1] = v83;
  topAnchor3 = [(UIView *)self->_scanningContainerView topAnchor];
  view10 = [(VLFContaineeViewController *)self view];
  topAnchor4 = [view10 topAnchor];
  v20 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v107[2] = v20;
  bottomAnchor = [(UIView *)self->_scanningContainerView bottomAnchor];
  view11 = [(VLFContaineeViewController *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v107[3] = v24;
  v25 = [NSArray arrayWithObjects:v107 count:4];
  [v102 addObjectsFromArray:v25];

  [(UIView *)self->_scanningContainerView addSubview:self->_instructionView];
  leadingAnchor5 = [(VLFScanningInstructionView *)self->_instructionView leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_scanningContainerView leadingAnchor];
  v28 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:28.0];
  instructionViewLeadingConstraint = self->_instructionViewLeadingConstraint;
  self->_instructionViewLeadingConstraint = v28;

  trailingAnchor5 = [(VLFScanningInstructionView *)self->_instructionView trailingAnchor];
  trailingAnchor6 = [(UIView *)self->_scanningContainerView trailingAnchor];
  v32 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-52.0];
  instructionViewTrailingConstraint = self->_instructionViewTrailingConstraint;
  self->_instructionViewTrailingConstraint = v32;

  firstBaselineAnchor = [(VLFScanningInstructionView *)self->_instructionView firstBaselineAnchor];
  topAnchor5 = [(UIView *)self->_scanningContainerView topAnchor];
  v36 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor5 constant:48.0];
  instructionViewFirstBaselineConstraint = self->_instructionViewFirstBaselineConstraint;
  self->_instructionViewFirstBaselineConstraint = v36;

  topAnchor6 = [(VLFScanningInstructionView *)self->_instructionView topAnchor];
  topAnchor7 = [(UIView *)self->_scanningContainerView topAnchor];
  v40 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:21.0];
  instructionViewTopConstraint = self->_instructionViewTopConstraint;
  self->_instructionViewTopConstraint = v40;

  v42 = self->_instructionViewTrailingConstraint;
  v106[0] = self->_instructionViewLeadingConstraint;
  v106[1] = v42;
  v106[2] = self->_instructionViewFirstBaselineConstraint;
  v43 = [NSArray arrayWithObjects:v106 count:3];
  [v102 addObjectsFromArray:v43];

  [(UIView *)self->_scanningContainerView addSubview:self->_scanningAnimationView];
  topAnchor8 = [(VLFScanningAnimationView *)self->_scanningAnimationView topAnchor];
  lastBaselineAnchor = [(VLFScanningInstructionView *)self->_instructionView lastBaselineAnchor];
  v46 = [topAnchor8 constraintEqualToAnchor:lastBaselineAnchor];
  scanningAnimationViewTopConstraintPortrait = self->_scanningAnimationViewTopConstraintPortrait;
  self->_scanningAnimationViewTopConstraintPortrait = v46;

  topAnchor9 = [(VLFScanningAnimationView *)self->_scanningAnimationView topAnchor];
  lastBaselineAnchor2 = [(VLFScanningInstructionView *)self->_instructionView lastBaselineAnchor];
  v50 = [topAnchor9 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor2];
  scanningAnimationViewFlexibleTopConstraintPortrait = self->_scanningAnimationViewFlexibleTopConstraintPortrait;
  self->_scanningAnimationViewFlexibleTopConstraintPortrait = v50;

  bottomAnchor3 = [(VLFScanningAnimationView *)self->_scanningAnimationView bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_scanningContainerView bottomAnchor];
  v54 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  scanningAnimationViewBottomConstraint = self->_scanningAnimationViewBottomConstraint;
  self->_scanningAnimationViewBottomConstraint = v54;

  leadingAnchor7 = [(VLFScanningAnimationView *)self->_scanningAnimationView leadingAnchor];
  leadingAnchor8 = [(UIView *)self->_scanningContainerView leadingAnchor];
  v57 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v105[0] = v57;
  trailingAnchor7 = [(VLFScanningAnimationView *)self->_scanningAnimationView trailingAnchor];
  trailingAnchor8 = [(UIView *)self->_scanningContainerView trailingAnchor];
  v60 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v61 = self->_scanningAnimationViewTopConstraintPortrait;
  v105[1] = v60;
  v105[2] = v61;
  v105[3] = self->_scanningAnimationViewBottomConstraint;
  heightAnchor = [(VLFScanningAnimationView *)self->_scanningAnimationView heightAnchor];
  widthAnchor = [(VLFScanningAnimationView *)self->_scanningAnimationView widthAnchor];
  v64 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:0.565333307 constant:0.0];
  v105[4] = v64;
  v65 = [NSArray arrayWithObjects:v105 count:5];
  [v102 addObjectsFromArray:v65];

  view12 = [(VLFContaineeViewController *)self view];
  [view12 addSubview:self->_failureView];

  bottomAnchor5 = [(VLFFailureView *)self->_failureView bottomAnchor];
  view13 = [(VLFContaineeViewController *)self view];
  bottomAnchor6 = [view13 bottomAnchor];
  v70 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  failureViewBottomConstraint = self->_failureViewBottomConstraint;
  self->_failureViewBottomConstraint = v70;

  leadingAnchor9 = [(VLFFailureView *)self->_failureView leadingAnchor];
  view14 = [(VLFContaineeViewController *)self view];
  leadingAnchor10 = [view14 leadingAnchor];
  v89 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v104[0] = v89;
  trailingAnchor9 = [(VLFFailureView *)self->_failureView trailingAnchor];
  view15 = [(VLFContaineeViewController *)self view];
  trailingAnchor10 = [view15 trailingAnchor];
  v73 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v104[1] = v73;
  topAnchor10 = [(VLFFailureView *)self->_failureView topAnchor];
  view16 = [(VLFContaineeViewController *)self view];
  topAnchor11 = [view16 topAnchor];
  v77 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
  v78 = self->_failureViewBottomConstraint;
  v104[2] = v77;
  v104[3] = v78;
  v79 = [NSArray arrayWithObjects:v104 count:4];
  [v102 addObjectsFromArray:v79];

  [NSLayoutConstraint activateConstraints:v102];
  fontProvider = [(VLFScanningInstructionView *)self->_instructionView fontProvider];
  [fontProvider addFontObserver:self->_failureView];

  view17 = [(VLFContaineeViewController *)self view];
  [view17 layoutIfNeeded];
}

- (void)dealloc
{
  vlfSession = [(VLFContaineeViewController *)self vlfSession];
  [vlfSession stop];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"VLFContaineeViewControllerDidDisappearNotification" object:self];

  v5.receiver = self;
  v5.super_class = VLFContaineeViewController;
  [(VLFContaineeViewController *)&v5 dealloc];
}

- (VLFContaineeViewController)initWithEntryPoint:(int64_t)point
{
  v24.receiver = self;
  v24.super_class = VLFContaineeViewController;
  v4 = [(VLFContaineeViewController *)&v24 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = [[ContainerHeaderView alloc] initWithCardButtonType:1];
    titleHeaderView = v4->_titleHeaderView;
    v4->_titleHeaderView = v5;

    [(ContainerHeaderView *)v4->_titleHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ContainerHeaderView *)v4->_titleHeaderView setPreservesSuperviewLayoutMargins:1];
    [(ContainerHeaderView *)v4->_titleHeaderView setHairLineAlpha:0.0];
    [(ContainerHeaderView *)v4->_titleHeaderView setHeaderSize:1];
    [(ContainerHeaderView *)v4->_titleHeaderView setDelegate:v4];
    v7 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    scanningContainerView = v4->_scanningContainerView;
    v4->_scanningContainerView = v11;

    [(UIView *)v4->_scanningContainerView setUserInteractionEnabled:0];
    [(UIView *)v4->_scanningContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [[VLFScanningInstructionView alloc] initWithLayout:2];
    instructionView = v4->_instructionView;
    v4->_instructionView = v13;

    [(VLFScanningInstructionView *)v4->_instructionView setTranslatesAutoresizingMaskIntoConstraints:0];
    height = [[VLFScanningAnimationView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    scanningAnimationView = v4->_scanningAnimationView;
    v4->_scanningAnimationView = height;

    [(VLFScanningAnimationView *)v4->_scanningAnimationView setTranslatesAutoresizingMaskIntoConstraints:0];
    height2 = [[VLFFailureView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    failureView = v4->_failureView;
    v4->_failureView = height2;

    [(VLFFailureView *)v4->_failureView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VLFFailureView *)v4->_failureView setAlpha:0.0];
    [(VLFFailureView *)v4->_failureView setDelegate:v4];
    cardPresentationController = [(ContaineeViewController *)v4 cardPresentationController];
    [cardPresentationController setHideGrabber:1];

    cardPresentationController2 = [(ContaineeViewController *)v4 cardPresentationController];
    [cardPresentationController2 setAllowsSwipeToDismiss:0];

    v21 = [[VLFSession alloc] initWithMode:1];
    vlfSession = v4->_vlfSession;
    v4->_vlfSession = v21;

    [(VLFSession *)v4->_vlfSession setEntryPoint:point];
    [(VLFSession *)v4->_vlfSession setDelegate:v4];
  }

  return v4;
}

- (VLFContaineeViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (VLFContaineeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (VLFContaineeViewController)init
{
  result = [NSException raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end