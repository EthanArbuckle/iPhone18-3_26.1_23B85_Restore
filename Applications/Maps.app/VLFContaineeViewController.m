@interface VLFContaineeViewController
- (VLFContaineeViewController)init;
- (VLFContaineeViewController)initWithCoder:(id)a3;
- (VLFContaineeViewController)initWithEntryPoint:(int64_t)a3;
- (VLFContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)heightForLayout:(unint64_t)a3;
- (unint64_t)defaultLayoutForContainerStyle:(unint64_t)a3 traitCollection:(id)a4;
- (void)VLFSessionLocalizationFailedWithError:(id)a3;
- (void)VLFSessionLocalizationSucceeded;
- (void)_hideFailureWithCompletion:(id)a3;
- (void)_presentInternalErrorAlert:(id)a3 onViewController:(id)a4;
- (void)_retryVLFSession;
- (void)_showFailure;
- (void)_startVLFSession;
- (void)_updateBackgroundColor;
- (void)_updateForCurrentState;
- (void)_updateForLayout:(unint64_t)a3;
- (void)dealloc;
- (void)didChangeLayout:(unint64_t)a3;
- (void)failureViewDismissButtonTapped:(id)a3;
- (void)failureViewRetryButtonTapped:(id)a3;
- (void)handleDismissAction:(id)a3;
- (void)handleVLFPuckTapped;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)scanningStateManager:(id)a3 didChangeState:(int64_t)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)a3;
- (void)willResignCurrent:(BOOL)a3;
@end

@implementation VLFContaineeViewController

- (void)failureViewRetryButtonTapped:(id)a3
{
  v4 = sub_100F8DCEC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Failure view retry button tapped", v5, 2u);
  }

  [(VLFContaineeViewController *)self _retryVLFSession];
}

- (void)failureViewDismissButtonTapped:(id)a3
{
  v4 = sub_100F8DCEC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Failure view dismiss button tapped; dismissing ourselves", v5, 2u);
  }

  [(VLFContaineeViewController *)self handleDismissAction:0];
}

- (void)scanningStateManager:(id)a3 didChangeState:(int64_t)a4
{
  v6 = sub_100F8DCEC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if ((a4 - 2) > 3)
    {
      v7 = @"VLFScanningStateInitializing";
    }

    else
    {
      v7 = off_10165F478[a4 - 2];
    }

    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "State manager updated its state to %@", &v8, 0xCu);
  }

  [(VLFContaineeViewController *)self _updateForCurrentState];
}

- (void)VLFSessionLocalizationFailedWithError:(id)a3
{
  v4 = a3;
  v5 = sub_100F8DCEC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Localization failed with error %@", &v16, 0xCu);
  }

  v6 = [v4 domain];
  v7 = [v6 isEqualToString:@"com.apple.Maps.VLFSession"];

  if (!v7)
  {
    v11 = +[GEOPlatform sharedPlatform];
    v12 = [v11 isInternalInstall];

    if (v12)
    {
      v13 = sub_100F8DCEC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Showing internal-only failure alert which displays more info about what went wrong", &v16, 2u);
      }

      [(VLFContaineeViewController *)self _presentInternalErrorAlert:v4 onViewController:self];
    }

    v14 = 130;
    goto LABEL_16;
  }

  v8 = [v4 code];
  v9 = sub_100F8DCEC();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8 != 2)
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

- (unint64_t)defaultLayoutForContainerStyle:(unint64_t)a3 traitCollection:(id)a4
{
  if (a3 > 7)
  {
    return 4;
  }

  else
  {
    return qword_101216160[a3];
  }
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v5 = a3;
  v6 = sub_100F8DCEC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Header button tapped; dismissing ourselves", v7, 2u);
  }

  [(VLFContaineeViewController *)self handleDismissAction:v5];
}

- (void)_presentInternalErrorAlert:(id)a3 onViewController:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 domain];
  v8 = [v7 isEqualToString:ARErrorDomain];

  if (v8)
  {
    v9 = @"VLF+ localization failed due to an ARKit error: %@";
  }

  else
  {
    v9 = @"VLF+ localization failed due to an unknown error: %@";
  }

  v12 = [NSString stringWithFormat:v9, v6];

  v10 = [UIAlertController alertControllerWithTitle:@"Localization failed [Internal Only]" message:v12 preferredStyle:1];
  v11 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
  [v10 addAction:v11];

  [v5 presentViewController:v10 animated:1 completion:0];
}

- (void)_hideFailureWithCompletion:(id)a3
{
  v4 = a3;
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
  v11 = v4;
  v9 = v4;
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

- (void)_updateForLayout:(unint64_t)a3
{
  if (a3 == 4)
  {
    v17 = [(VLFContaineeViewController *)self instructionViewLeadingConstraint];
    [v17 setConstant:24.0];

    v18 = [(VLFContaineeViewController *)self instructionViewTrailingConstraint];
    [v18 setConstant:-48.0];

    v19 = [(VLFContaineeViewController *)self scanningAnimationViewFlexibleTopConstraintPortrait];
    [v19 setActive:0];

    v20 = [(VLFContaineeViewController *)self scanningAnimationViewTopConstraintPortrait];
    [v20 setActive:0];

    v21 = [(ContaineeViewController *)self cardPresentationController];
    v22 = [v21 containerStyle];

    if (v22 == 6)
    {
      v23 = [(VLFContaineeViewController *)self view];
      v24 = [v23 window];
      [v24 frame];
      v26 = v25 * -0.08;
      v27 = [(VLFContaineeViewController *)self scanningAnimationViewBottomConstraint];
      [v27 setConstant:v26];

      v28 = [(VLFContaineeViewController *)self view];
      v29 = [(VLFContaineeViewController *)self view];
      [v29 bounds];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = [(VLFContaineeViewController *)self view];
      v39 = [v38 window];
      [v28 convertRect:v39 toView:{v31, v33, v35, v37}];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v48 = [(VLFContaineeViewController *)self view];
      v49 = [v48 window];
      [v49 frame];
      v51 = v50;
      v92.origin.x = v41;
      v92.origin.y = v43;
      v92.size.width = v45;
      v92.size.height = v47;
      MaxY = CGRectGetMaxY(v92);

      v53 = [(VLFContaineeViewController *)self view];
      v54 = [v53 window];
      [v54 frame];
      v56 = v51 - MaxY + v55 * -0.07;
    }

    else
    {
      v73 = [(ContaineeViewController *)self cardPresentationController];
      [v73 bottomSafeOffset];
      v75 = v74;
      v76 = [(VLFContaineeViewController *)self view];
      v77 = [v76 window];
      [v77 frame];
      v79 = -(v75 + v78 * 0.08);
      v80 = [(VLFContaineeViewController *)self scanningAnimationViewBottomConstraint];
      [v80 setConstant:v79];

      v53 = [(VLFContaineeViewController *)self view];
      v54 = [v53 window];
      [v54 frame];
      v56 = v81 * -0.07;
    }

    v82 = [(VLFContaineeViewController *)self failureViewBottomConstraint];
    [v82 setConstant:v56];

    v83 = [(VLFContaineeViewController *)self instructionViewFirstBaselineConstraint];
    [v83 setActive:0];

    v68 = [(VLFContaineeViewController *)self instructionViewTopConstraint];
    v69 = v68;
    v70 = 22.0;
    goto LABEL_18;
  }

  if (a3 == 2)
  {
    v5 = [(VLFContaineeViewController *)self instructionViewLeadingConstraint];
    [v5 setConstant:28.0];

    v6 = [(VLFContaineeViewController *)self instructionViewTrailingConstraint];
    [v6 setConstant:-52.0];

    LODWORD(v6) = [(VLFContaineeViewController *)self isFailureVisible];
    v7 = [(VLFContaineeViewController *)self scanningAnimationViewTopConstraintPortrait];
    [v7 setActive:v6 ^ 1];

    v8 = [(VLFContaineeViewController *)self isFailureVisible];
    v9 = [(VLFContaineeViewController *)self scanningAnimationViewFlexibleTopConstraintPortrait];
    [v9 setActive:v8];

    v10 = [(ContaineeViewController *)self cardPresentationController];
    [v10 bottomSafeOffset];
    v12 = v11;

    if (v12 <= 0.0)
    {
      v13 = [(VLFContaineeViewController *)self scanningAnimationViewBottomConstraint];
      [v13 setConstant:-10.0];
    }

    else
    {
      v13 = [(ContaineeViewController *)self cardPresentationController];
      [v13 bottomSafeOffset];
      v15 = -v14;
      v16 = [(VLFContaineeViewController *)self scanningAnimationViewBottomConstraint];
      [v16 setConstant:v15];
    }

    v60 = [(ContaineeViewController *)self cardPresentationController];
    [v60 bottomSafeOffset];
    v62 = -10.0 - v61;
    v63 = [(VLFContaineeViewController *)self failureViewBottomConstraint];
    [v63 setConstant:v62];

    v64 = [(VLFContaineeViewController *)self traitCollection];
    v65 = [v64 preferredContentSizeCategory];
    v66 = UIContentSizeCategoryCompareToCategory(v65, UIContentSizeCategoryLarge);

    if (v66 != NSOrderedDescending)
    {
      v71 = [(VLFContaineeViewController *)self instructionViewTopConstraint];
      [v71 setActive:0];

      v72 = [(VLFContaineeViewController *)self instructionViewFirstBaselineConstraint];
LABEL_19:
      v58 = v72;
      [v72 setActive:1];
LABEL_20:

      goto LABEL_21;
    }

    v67 = [(VLFContaineeViewController *)self instructionViewFirstBaselineConstraint];
    [v67 setActive:0];

    v68 = [(VLFContaineeViewController *)self instructionViewTopConstraint];
    v69 = v68;
    v70 = 21.0;
LABEL_18:
    [v68 setConstant:v70];

    v72 = [(VLFContaineeViewController *)self instructionViewTopConstraint];
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
  v84 = [(VLFContaineeViewController *)self instructionView];
  [v84 setCurrentLayout:a3];

  v85 = [(VLFContaineeViewController *)self failureView];
  [v85 setCurrentLayout:a3];
}

- (void)_updateForCurrentState
{
  v3 = sub_100F8DCEC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(VLFContaineeViewController *)self stateManager];
    v5 = [v4 currentState];
    if ((v5 - 2) > 3)
    {
      v6 = @"VLFScanningStateInitializing";
    }

    else
    {
      v6 = off_10165F478[(v5 - 2)];
    }

    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Updating for current state: %@", &v13, 0xCu);
  }

  v7 = [(VLFContaineeViewController *)self stateManager];
  v8 = [v7 currentState];
  v9 = [(VLFContaineeViewController *)self instructionView];
  [v9 setCurrentScanningState:v8];

  v10 = [(VLFContaineeViewController *)self stateManager];
  v11 = [v10 currentState];
  v12 = [(VLFContaineeViewController *)self scanningAnimationView];
  [v12 setCurrentScanningState:v11];
}

- (void)_retryVLFSession
{
  v3 = [(VLFContaineeViewController *)self instructionView];
  [v3 setCurrentScanningState:1];

  v4 = [(VLFContaineeViewController *)self scanningAnimationView];
  [v4 setCurrentScanningState:1];

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

  v4 = [(VLFContaineeViewController *)self vlfSession];
  [v4 start];

  v5 = [VLFScanningStateManager alloc];
  v6 = [(VLFContaineeViewController *)self vlfSession];
  v7 = [v6 session];
  v8 = [(VLFScanningStateManager *)v5 initWithSession:v7 delegate:self];
  [(VLFContaineeViewController *)self setStateManager:v8];
}

- (void)_updateBackgroundColor
{
  v3 = [(VLFContaineeViewController *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
    +[UIColor secondarySystemBackgroundColor];
  }

  else
  {
    +[UIColor systemWhiteColor];
  }
  v6 = ;
  v5 = [(VLFContaineeViewController *)self view];
  [v5 setBackgroundColor:v6];
}

- (void)handleVLFPuckTapped
{
  v3 = [(VLFContaineeViewController *)self vlfSession];
  v4 = [v3 isRunning];

  if (v4)
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

  v5 = [(VLFContaineeViewController *)self vlfSession];
  v6 = [v5 isRunning];

  v7 = sub_100F8DCEC();
  v8 = v7;
  if (v6)
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

- (void)handleDismissAction:(id)a3
{
  v4 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"VLFContaineeViewControllerWillCancelNotification" object:self];

  v6.receiver = self;
  v6.super_class = VLFContaineeViewController;
  [(ContaineeViewController *)&v6 handleDismissAction:v4];
}

- (void)didChangeLayout:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = VLFContaineeViewController;
  [(ContaineeViewController *)&v6 didChangeLayout:?];
  v5 = sub_100F8DCEC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Did change layout to: %lu", buf, 0xCu);
  }

  [(VLFContaineeViewController *)self _updateForLayout:a3];
}

- (double)heightForLayout:(unint64_t)a3
{
  v5 = -1.0;
  if (a3 == 4 || a3 == 2)
  {
    [(VLFContaineeViewController *)self _updateForLayout:a3];
    if (a3 == 2)
    {
      v8 = [(VLFContaineeViewController *)self isFailureVisible];
      v9 = &UILayoutFittingCompressedSize;
      if (!v8)
      {
        v9 = &UILayoutFittingExpandedSize;
      }

      height = v9->height;
      v6 = [(VLFContaineeViewController *)self view];
      v11 = [(VLFContaineeViewController *)self view];
      [v11 frame];
      v13 = v12;
      LODWORD(v12) = 1148846080;
      LODWORD(v14) = 1112014848;
      [v6 systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:height verticalFittingPriority:{v12, v14}];
      v5 = v15;

      goto LABEL_9;
    }

    if (a3 == 4)
    {
      v6 = [(ContaineeViewController *)self cardPresentationController];
      [v6 availableHeight];
      v5 = v7;
LABEL_9:
    }
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = VLFContaineeViewController;
  [(MapsThemeViewController *)&v14 traitCollectionDidChange:v4];
  [(VLFContaineeViewController *)self _updateBackgroundColor];
  if (v4)
  {
    v5 = [(VLFContaineeViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = UIContentSizeCategoryCompareToCategory(v6, v7);

    if (v8)
    {
      v9 = [(ContaineeViewController *)self cardPresentationController];
      v10 = [v9 containeeLayout];

      if (v10)
      {
        v11 = [(ContaineeViewController *)self cardPresentationController];
        -[VLFContaineeViewController _updateForLayout:](self, "_updateForLayout:", [v11 containeeLayout]);
      }

      v12 = [(VLFContaineeViewController *)self view];
      [v12 layoutIfNeeded];

      v13 = [(ContaineeViewController *)self cardPresentationController];
      [v13 updateHeightForCurrentLayout];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = VLFContaineeViewController;
  [(ContaineeViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(ContaineeViewController *)self cardPresentationController];
  v4 = [v3 containeeLayout];

  if (v4)
  {
    v5 = [(ContaineeViewController *)self cardPresentationController];
    -[VLFContaineeViewController _updateForLayout:](self, "_updateForLayout:", [v5 containeeLayout]);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = VLFContaineeViewController;
  [(VLFContaineeViewController *)&v8 viewDidDisappear:a3];
  v4 = [(VLFContaineeViewController *)self instructionView];
  v5 = [v4 layer];
  [v5 removeAllAnimations];

  v6 = [(VLFContaineeViewController *)self scanningAnimationView];
  v7 = [v6 layer];
  [v7 removeAllAnimations];

  [(VLFContaineeViewController *)self _hideFailureWithCompletion:0];
}

- (void)willBecomeCurrent:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = VLFContaineeViewController;
  [(ContaineeViewController *)&v7 willBecomeCurrent:a3];
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

- (void)willResignCurrent:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = VLFContaineeViewController;
  [(ContaineeViewController *)&v8 willResignCurrent:a3];
  v4 = sub_100F8DCEC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Will resign current", v7, 2u);
  }

  [(VLFContaineeViewController *)self setStateManager:0];
  v5 = [(VLFContaineeViewController *)self vlfSession];
  [v5 stop];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"VLFContaineeViewControllerDidDisappearNotification" object:self];
}

- (void)viewDidLoad
{
  v103.receiver = self;
  v103.super_class = VLFContaineeViewController;
  [(ContaineeViewController *)&v103 viewDidLoad];
  [(VLFContaineeViewController *)self _updateBackgroundColor];
  v3 = [(VLFContaineeViewController *)self view];
  v4 = [v3 layer];
  [v4 setMaskedCorners:3];

  v5 = [(VLFContaineeViewController *)self view];
  v6 = [v5 layer];
  [v6 setMasksToBounds:1];

  v102 = +[NSMutableArray array];
  v7 = [(VLFContaineeViewController *)self view];
  [v7 addSubview:self->_titleHeaderView];

  v96 = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
  v100 = [(VLFContaineeViewController *)self view];
  v93 = [v100 leadingAnchor];
  v90 = [v96 constraintEqualToAnchor:v93];
  v108[0] = v90;
  v8 = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
  v9 = [(VLFContaineeViewController *)self view];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v108[1] = v11;
  v12 = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
  v13 = [(VLFContaineeViewController *)self view];
  v14 = [v13 topAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v108[2] = v15;
  v16 = [NSArray arrayWithObjects:v108 count:3];
  [v102 addObjectsFromArray:v16];

  v17 = [(VLFContaineeViewController *)self view];
  [v17 addSubview:self->_scanningContainerView];

  v97 = [(UIView *)self->_scanningContainerView leadingAnchor];
  v101 = [(VLFContaineeViewController *)self view];
  v94 = [v101 leadingAnchor];
  v91 = [v97 constraintEqualToAnchor:v94];
  v107[0] = v91;
  v86 = [(UIView *)self->_scanningContainerView trailingAnchor];
  v88 = [(VLFContaineeViewController *)self view];
  v84 = [v88 trailingAnchor];
  v83 = [v86 constraintEqualToAnchor:v84];
  v107[1] = v83;
  v82 = [(UIView *)self->_scanningContainerView topAnchor];
  v18 = [(VLFContaineeViewController *)self view];
  v19 = [v18 topAnchor];
  v20 = [v82 constraintEqualToAnchor:v19];
  v107[2] = v20;
  v21 = [(UIView *)self->_scanningContainerView bottomAnchor];
  v22 = [(VLFContaineeViewController *)self view];
  v23 = [v22 bottomAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v107[3] = v24;
  v25 = [NSArray arrayWithObjects:v107 count:4];
  [v102 addObjectsFromArray:v25];

  [(UIView *)self->_scanningContainerView addSubview:self->_instructionView];
  v26 = [(VLFScanningInstructionView *)self->_instructionView leadingAnchor];
  v27 = [(UIView *)self->_scanningContainerView leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:28.0];
  instructionViewLeadingConstraint = self->_instructionViewLeadingConstraint;
  self->_instructionViewLeadingConstraint = v28;

  v30 = [(VLFScanningInstructionView *)self->_instructionView trailingAnchor];
  v31 = [(UIView *)self->_scanningContainerView trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:-52.0];
  instructionViewTrailingConstraint = self->_instructionViewTrailingConstraint;
  self->_instructionViewTrailingConstraint = v32;

  v34 = [(VLFScanningInstructionView *)self->_instructionView firstBaselineAnchor];
  v35 = [(UIView *)self->_scanningContainerView topAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:48.0];
  instructionViewFirstBaselineConstraint = self->_instructionViewFirstBaselineConstraint;
  self->_instructionViewFirstBaselineConstraint = v36;

  v38 = [(VLFScanningInstructionView *)self->_instructionView topAnchor];
  v39 = [(UIView *)self->_scanningContainerView topAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:21.0];
  instructionViewTopConstraint = self->_instructionViewTopConstraint;
  self->_instructionViewTopConstraint = v40;

  v42 = self->_instructionViewTrailingConstraint;
  v106[0] = self->_instructionViewLeadingConstraint;
  v106[1] = v42;
  v106[2] = self->_instructionViewFirstBaselineConstraint;
  v43 = [NSArray arrayWithObjects:v106 count:3];
  [v102 addObjectsFromArray:v43];

  [(UIView *)self->_scanningContainerView addSubview:self->_scanningAnimationView];
  v44 = [(VLFScanningAnimationView *)self->_scanningAnimationView topAnchor];
  v45 = [(VLFScanningInstructionView *)self->_instructionView lastBaselineAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  scanningAnimationViewTopConstraintPortrait = self->_scanningAnimationViewTopConstraintPortrait;
  self->_scanningAnimationViewTopConstraintPortrait = v46;

  v48 = [(VLFScanningAnimationView *)self->_scanningAnimationView topAnchor];
  v49 = [(VLFScanningInstructionView *)self->_instructionView lastBaselineAnchor];
  v50 = [v48 constraintGreaterThanOrEqualToAnchor:v49];
  scanningAnimationViewFlexibleTopConstraintPortrait = self->_scanningAnimationViewFlexibleTopConstraintPortrait;
  self->_scanningAnimationViewFlexibleTopConstraintPortrait = v50;

  v52 = [(VLFScanningAnimationView *)self->_scanningAnimationView bottomAnchor];
  v53 = [(UIView *)self->_scanningContainerView bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  scanningAnimationViewBottomConstraint = self->_scanningAnimationViewBottomConstraint;
  self->_scanningAnimationViewBottomConstraint = v54;

  v98 = [(VLFScanningAnimationView *)self->_scanningAnimationView leadingAnchor];
  v56 = [(UIView *)self->_scanningContainerView leadingAnchor];
  v57 = [v98 constraintEqualToAnchor:v56];
  v105[0] = v57;
  v58 = [(VLFScanningAnimationView *)self->_scanningAnimationView trailingAnchor];
  v59 = [(UIView *)self->_scanningContainerView trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];
  v61 = self->_scanningAnimationViewTopConstraintPortrait;
  v105[1] = v60;
  v105[2] = v61;
  v105[3] = self->_scanningAnimationViewBottomConstraint;
  v62 = [(VLFScanningAnimationView *)self->_scanningAnimationView heightAnchor];
  v63 = [(VLFScanningAnimationView *)self->_scanningAnimationView widthAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 multiplier:0.565333307 constant:0.0];
  v105[4] = v64;
  v65 = [NSArray arrayWithObjects:v105 count:5];
  [v102 addObjectsFromArray:v65];

  v66 = [(VLFContaineeViewController *)self view];
  [v66 addSubview:self->_failureView];

  v67 = [(VLFFailureView *)self->_failureView bottomAnchor];
  v68 = [(VLFContaineeViewController *)self view];
  v69 = [v68 bottomAnchor];
  v70 = [v67 constraintEqualToAnchor:v69];
  failureViewBottomConstraint = self->_failureViewBottomConstraint;
  self->_failureViewBottomConstraint = v70;

  v95 = [(VLFFailureView *)self->_failureView leadingAnchor];
  v99 = [(VLFContaineeViewController *)self view];
  v92 = [v99 leadingAnchor];
  v89 = [v95 constraintEqualToAnchor:v92];
  v104[0] = v89;
  v85 = [(VLFFailureView *)self->_failureView trailingAnchor];
  v87 = [(VLFContaineeViewController *)self view];
  v72 = [v87 trailingAnchor];
  v73 = [v85 constraintEqualToAnchor:v72];
  v104[1] = v73;
  v74 = [(VLFFailureView *)self->_failureView topAnchor];
  v75 = [(VLFContaineeViewController *)self view];
  v76 = [v75 topAnchor];
  v77 = [v74 constraintEqualToAnchor:v76];
  v78 = self->_failureViewBottomConstraint;
  v104[2] = v77;
  v104[3] = v78;
  v79 = [NSArray arrayWithObjects:v104 count:4];
  [v102 addObjectsFromArray:v79];

  [NSLayoutConstraint activateConstraints:v102];
  v80 = [(VLFScanningInstructionView *)self->_instructionView fontProvider];
  [v80 addFontObserver:self->_failureView];

  v81 = [(VLFContaineeViewController *)self view];
  [v81 layoutIfNeeded];
}

- (void)dealloc
{
  v3 = [(VLFContaineeViewController *)self vlfSession];
  [v3 stop];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"VLFContaineeViewControllerDidDisappearNotification" object:self];

  v5.receiver = self;
  v5.super_class = VLFContaineeViewController;
  [(VLFContaineeViewController *)&v5 dealloc];
}

- (VLFContaineeViewController)initWithEntryPoint:(int64_t)a3
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
    v15 = [[VLFScanningAnimationView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    scanningAnimationView = v4->_scanningAnimationView;
    v4->_scanningAnimationView = v15;

    [(VLFScanningAnimationView *)v4->_scanningAnimationView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [[VLFFailureView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    failureView = v4->_failureView;
    v4->_failureView = v17;

    [(VLFFailureView *)v4->_failureView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VLFFailureView *)v4->_failureView setAlpha:0.0];
    [(VLFFailureView *)v4->_failureView setDelegate:v4];
    v19 = [(ContaineeViewController *)v4 cardPresentationController];
    [v19 setHideGrabber:1];

    v20 = [(ContaineeViewController *)v4 cardPresentationController];
    [v20 setAllowsSwipeToDismiss:0];

    v21 = [[VLFSession alloc] initWithMode:1];
    vlfSession = v4->_vlfSession;
    v4->_vlfSession = v21;

    [(VLFSession *)v4->_vlfSession setEntryPoint:a3];
    [(VLFSession *)v4->_vlfSession setDelegate:v4];
  }

  return v4;
}

- (VLFContaineeViewController)initWithCoder:(id)a3
{
  v3 = a3;
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (VLFContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
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