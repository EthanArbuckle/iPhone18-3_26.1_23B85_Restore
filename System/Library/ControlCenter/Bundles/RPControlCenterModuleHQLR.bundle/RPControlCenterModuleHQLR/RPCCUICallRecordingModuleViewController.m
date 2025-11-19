@interface RPCCUICallRecordingModuleViewController
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (NSArray)containerViewsForPlatterTreatment;
- (RPCCUICallRecordingModuleViewController)initWithClient:(id)a3;
- (_TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView)callRecordingView;
- (double)preferredExpandedContentHeight;
- (void)acquireProcessAssertionWithHandler:(id)a3;
- (void)addDismissalView;
- (void)authenticateWithCompletionHandler:(id)a3;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)cancelPreviousCountdownRequest;
- (void)cancelRecordingCountdown;
- (void)dealloc;
- (void)didChangeAvailability:(BOOL)a3;
- (void)didStartRecordingOrBroadcast;
- (void)didStopRecordingOrBroadcast;
- (void)initializeConstraints;
- (void)invalidateProcessAssertion;
- (void)performButtonAction;
- (void)performButtonActionForDynamicIslandOrExpanded;
- (void)performButtonActionForNonDynamicIslandAndCollapsed;
- (void)presentAlertWithTitle:(id)a3 message:(id)a4 completion:(id)a5;
- (void)presentCancelReadyToRecord;
- (void)presentRecordingAlertWithHandler:(id)a3;
- (void)recordButtonTapped;
- (void)recordingTimerDidUpdate;
- (void)resetCountdownState;
- (void)sessionDidFailToStart;
- (void)sessionIsStarting;
- (void)setContentModuleContext:(id)a3;
- (void)setContentRenderingMode:(unint64_t)a3;
- (void)setCountdown:(int64_t)a3;
- (void)setupLockScreenNotifications;
- (void)startHQLR;
- (void)startRecordingCountdown;
- (void)transitionToCountdownState;
- (void)updateGlyphPackageDescription;
- (void)updateGlyphState;
- (void)updatePhoneViewConstraints;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation RPCCUICallRecordingModuleViewController

- (_TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView)callRecordingView
{
  [(RPCCUICallRecordingModuleViewController *)self loadViewIfNeeded];
  callRecordingView = self->_callRecordingView;

  return callRecordingView;
}

- (RPCCUICallRecordingModuleViewController)initWithClient:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RPCCUICallRecordingModuleViewController;
  v5 = [(RPCCUICallRecordingModuleViewController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_client, v4);
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&v6->_client);
      *buf = 136446978;
      v12 = "[RPCCUICallRecordingModuleViewController initWithClient:]";
      v13 = 1024;
      v14 = 105;
      v15 = 2048;
      v16 = v6;
      v17 = 2048;
      v18 = WeakRetained;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
    }

    v8 = objc_loadWeakRetained(&v6->_client);
    [v8 addDegate:v6];

    [(RPCCUICallRecordingModuleViewController *)v6 setGlyphState:@"Base State"];
    [(RPCCUICallRecordingModuleViewController *)v6 updateGlyphState];
  }

  return v6;
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = RPCCUICallRecordingModuleViewController;
  [(RPCCUICallRecordingModuleViewController *)&v26 viewDidLoad];
  [(RPCCUICallRecordingModuleViewController *)self updateGlyphPackageDescription];
  SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
  lockStateQueue = self->_lockStateQueue;
  self->_lockStateQueue = SerialWithQoS;

  v5 = self->_lockStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6BA8;
  block[3] = &unk_30DF0;
  block[4] = self;
  dispatch_async(v5, block);
  [(RPCCUICallRecordingModuleViewController *)self setupLockScreenNotifications];
  CCUIDefaultExpandedContentModuleWidth();
  self->_currentPreferredExpandedContentWidth = v6 + -20.0;
  v7 = [_TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView alloc];
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v9 = [WeakRetained getHqlrAudioOnly];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v13 = [(RPCCUICallRecordingView *)v7 initWithFrame:self parent:v9 audioOnly:CGRectZero.origin.x, y, width, height];

  [(RPCCUICallRecordingView *)v13 setUserInteractionEnabled:0];
  [(RPCCUICallRecordingView *)v13 setGlyphVisible:0];
  [(RPCCUICallRecordingView *)v13 setHidden:1];
  [(RPCCUICallRecordingView *)v13 setAlpha:0.0];
  objc_storeStrong(&self->_callRecordingView, v13);
  if (_UISolariumEnabled())
  {
    v14 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  }

  else
  {
    v14 = +[CCUIControlCenterMaterialView controlCenterModuleBackgroundMaterial];
  }

  callRecordingBackgroundView = self->_callRecordingBackgroundView;
  self->_callRecordingBackgroundView = v14;

  [(RPCCUICallRecordingModuleViewController *)self compactContinuousCornerRadius];
  [(UIView *)self->_callRecordingBackgroundView _setContinuousCornerRadius:?];
  [(UIView *)self->_callRecordingBackgroundView setHidden:0];
  [(UIView *)self->_callRecordingBackgroundView setAlpha:1.0];
  v16 = [[_TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView alloc] initWithFrame:self parent:CGRectZero.origin.x, y, width, height];
  recordButtonView = self->_recordButtonView;
  self->_recordButtonView = v16;

  [(RPCCUICallRecordingBackgroundView *)self->_recordButtonView setHidden:1];
  [(RPCCUICallRecordingBackgroundView *)self->_recordButtonView setAlpha:0.0];
  v18 = [(RPCCUICallRecordingModuleViewController *)self view];
  callRecordingView = self->_callRecordingView;
  v20 = [(RPCCUICallRecordingModuleViewController *)self buttonView];
  [v18 insertSubview:callRecordingView belowSubview:v20];

  v21 = [(RPCCUICallRecordingModuleViewController *)self view];
  [v21 insertSubview:self->_callRecordingBackgroundView belowSubview:self->_callRecordingView];

  v22 = [(RPCCUICallRecordingModuleViewController *)self view];
  v23 = self->_recordButtonView;
  v24 = [(RPCCUICallRecordingModuleViewController *)self buttonView];
  [v22 insertSubview:v23 belowSubview:v24];

  [(RPCCUICallRecordingModuleViewController *)self initializeConstraints];
  [(RPCCUICallRecordingModuleViewController *)self setValueText:0];
  [(RPCCUICallRecordingModuleViewController *)self setSelectedValueText:0];
}

- (void)initializeConstraints
{
  [(RPCCUICallRecordingView *)self->_callRecordingView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_callRecordingBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RPCCUICallRecordingBackgroundView *)self->_recordButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(UIView *)self->_callRecordingBackgroundView heightAnchor];
  v4 = [v3 constraintEqualToConstant:350.0];
  expandedCallRecordingVerticalConstraint = self->_expandedCallRecordingVerticalConstraint;
  self->_expandedCallRecordingVerticalConstraint = v4;

  v6 = [(UIView *)self->_callRecordingBackgroundView bottomAnchor];
  v7 = [(RPCCUICallRecordingModuleViewController *)self view];
  v8 = [v7 bottomAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  minimizedCallRecordingVerticalConstraint = self->_minimizedCallRecordingVerticalConstraint;
  self->_minimizedCallRecordingVerticalConstraint = v9;

  v86 = [(RPCCUICallRecordingModuleViewController *)self view];
  v84 = [v86 topAnchor];
  v82 = [(UIView *)self->_callRecordingBackgroundView topAnchor];
  v80 = [v84 constraintEqualToAnchor:v82];
  v90[0] = v80;
  v78 = [(RPCCUICallRecordingModuleViewController *)self view];
  v75 = [v78 leadingAnchor];
  v73 = [(UIView *)self->_callRecordingBackgroundView leadingAnchor];
  v71 = [v75 constraintEqualToAnchor:v73];
  v90[1] = v71;
  v69 = [(RPCCUICallRecordingModuleViewController *)self view];
  v67 = [v69 trailingAnchor];
  v65 = [(UIView *)self->_callRecordingBackgroundView trailingAnchor];
  v63 = [v67 constraintEqualToAnchor:v65];
  v90[2] = v63;
  v61 = [(UIView *)self->_callRecordingBackgroundView leadingAnchor];
  v59 = [(RPCCUICallRecordingView *)self->_callRecordingView leadingAnchor];
  v57 = [v61 constraintEqualToAnchor:v59];
  v90[3] = v57;
  v55 = [(UIView *)self->_callRecordingBackgroundView trailingAnchor];
  v53 = [(RPCCUICallRecordingView *)self->_callRecordingView trailingAnchor];
  v51 = [v55 constraintEqualToAnchor:v53];
  v90[4] = v51;
  v49 = [(UIView *)self->_callRecordingBackgroundView topAnchor];
  v47 = [(RPCCUICallRecordingView *)self->_callRecordingView topAnchor];
  v45 = [v49 constraintEqualToAnchor:v47];
  v90[5] = v45;
  v43 = [(UIView *)self->_callRecordingBackgroundView bottomAnchor];
  v41 = [(RPCCUICallRecordingView *)self->_callRecordingView bottomAnchor];
  v39 = [v43 constraintEqualToAnchor:v41];
  v90[6] = v39;
  v38 = [(RPCCUICallRecordingBackgroundView *)self->_recordButtonView topAnchor];
  v37 = [(UIView *)self->_callRecordingBackgroundView bottomAnchor];
  v36 = [v38 constraintEqualToAnchor:v37 constant:40.0];
  v90[7] = v36;
  v35 = [(RPCCUICallRecordingBackgroundView *)self->_recordButtonView heightAnchor];
  v34 = [v35 constraintEqualToConstant:50.0];
  v90[8] = v34;
  v11 = [(RPCCUICallRecordingBackgroundView *)self->_recordButtonView leadingAnchor];
  v12 = [(RPCCUICallRecordingModuleViewController *)self view];
  v13 = [v12 leadingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v90[9] = v14;
  v15 = [(RPCCUICallRecordingBackgroundView *)self->_recordButtonView trailingAnchor];
  v16 = [(RPCCUICallRecordingModuleViewController *)self view];
  v17 = [v16 trailingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v90[10] = v18;
  v19 = [NSArray arrayWithObjects:v90 count:11];
  callRecordingConstraints = self->_callRecordingConstraints;
  self->_callRecordingConstraints = v19;

  v87 = [(RPCCUICallRecordingModuleViewController *)self view];
  v85 = [v87 centerYAnchor];
  v83 = [(UIView *)self->_callRecordingBackgroundView centerYAnchor];
  v81 = [v85 constraintEqualToAnchor:v83];
  v89[0] = v81;
  v79 = [(RPCCUICallRecordingModuleViewController *)self view];
  v76 = [v79 centerXAnchor];
  v74 = [(UIView *)self->_callRecordingBackgroundView centerXAnchor];
  v72 = [v76 constraintEqualToAnchor:v74];
  v89[1] = v72;
  v70 = [(UIView *)self->_callRecordingBackgroundView widthAnchor];
  CCUIDefaultExpandedContentModuleWidth();
  v68 = [v70 constraintEqualToConstant:v21 + -20.0];
  v89[2] = v68;
  v66 = [(UIView *)self->_callRecordingBackgroundView leadingAnchor];
  v64 = [(RPCCUICallRecordingView *)self->_callRecordingView leadingAnchor];
  v62 = [v66 constraintEqualToAnchor:v64];
  v89[3] = v62;
  v60 = [(UIView *)self->_callRecordingBackgroundView trailingAnchor];
  v58 = [(RPCCUICallRecordingView *)self->_callRecordingView trailingAnchor];
  v56 = [v60 constraintEqualToAnchor:v58];
  v89[4] = v56;
  v54 = [(UIView *)self->_callRecordingBackgroundView topAnchor];
  v52 = [(RPCCUICallRecordingView *)self->_callRecordingView topAnchor];
  v50 = [v54 constraintEqualToAnchor:v52];
  v89[5] = v50;
  v48 = [(UIView *)self->_callRecordingBackgroundView bottomAnchor];
  v77 = [(RPCCUICallRecordingView *)self->_callRecordingView bottomAnchor];
  v46 = [v48 constraintEqualToAnchor:v77];
  v89[6] = v46;
  v44 = [(RPCCUICallRecordingBackgroundView *)self->_recordButtonView centerYAnchor];
  v42 = [(UIView *)self->_callRecordingBackgroundView centerYAnchor];
  v40 = [v44 constraintEqualToAnchor:v42];
  v89[7] = v40;
  v22 = [(RPCCUICallRecordingBackgroundView *)self->_recordButtonView heightAnchor];
  v23 = [v22 constraintEqualToConstant:50.0];
  v89[8] = v23;
  v24 = [(RPCCUICallRecordingBackgroundView *)self->_recordButtonView leadingAnchor];
  v25 = [(UIView *)self->_callRecordingBackgroundView trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v89[9] = v26;
  v27 = [(RPCCUICallRecordingBackgroundView *)self->_recordButtonView trailingAnchor];
  v28 = [(RPCCUICallRecordingModuleViewController *)self view];
  v29 = [v28 trailingAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  v89[10] = v30;
  v31 = [NSArray arrayWithObjects:v89 count:11];
  compactCallRecordingConstraints = self->_compactCallRecordingConstraints;
  self->_compactCallRecordingConstraints = v31;

  v88 = self->_minimizedCallRecordingVerticalConstraint;
  v33 = [NSArray arrayWithObjects:&v88 count:1];
  [NSLayoutConstraint activateConstraints:v33];

  [NSLayoutConstraint activateConstraints:self->_callRecordingConstraints];
  self->_usingCompactPhoneConstraints = 0;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = RPCCUICallRecordingModuleViewController;
  [(RPCCUICallRecordingModuleViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  minimizedCallRecordingVerticalConstraint = self->_minimizedCallRecordingVerticalConstraint;
  v14[0] = self->_expandedCallRecordingVerticalConstraint;
  v14[1] = minimizedCallRecordingVerticalConstraint;
  v9 = [NSArray arrayWithObjects:v14 count:2];
  [NSLayoutConstraint deactivateConstraints:v9];

  if ([(RPCCUICallRecordingModuleViewController *)self isExpanded])
  {
    v10 = [(RPCCUICallRecordingModuleViewController *)self callRecordingView];
    [v10 setupVideoEffectsPreviewForAppear];
  }

  v11[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_76FC;
  v12[3] = &unk_30F78;
  v12[4] = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_7870;
  v11[3] = &unk_30F78;
  [v7 animateAlongsideTransition:v12 completion:v11];
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  v4 = 0.0;
  v5 = 0.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = RPCCUICallRecordingModuleViewController;
  [(RPCCUICallRecordingModuleViewController *)&v7 viewWillLayoutSubviews];
  v3 = [(RPCCUICallRecordingModuleViewController *)self buttonView];
  v4 = [(RPCCUICallRecordingModuleViewController *)self callRecordingView];
  WeakRetained = objc_loadWeakRetained(&self->_client);
  [v4 setAudioOnly:{objc_msgSend(WeakRetained, "getHqlrAudioOnly")}];

  if ([(RPCCUICallRecordingModuleViewController *)self isExpanded])
  {
    [v3 setAlpha:0.0];
    [v4 setValueVisible:1];
    [(RPCCUICallRecordingModuleViewController *)self preferredExpandedContinuousCornerRadius];
    [v4 setContinuousSliderCornerRadius:?];
    [(RPCCUICallRecordingModuleViewController *)self preferredExpandedContinuousCornerRadius];
    v6 = 1.0;
  }

  else
  {
    [v3 setAlpha:1.0];
    [v4 setValueVisible:0];
    [(RPCCUICallRecordingModuleViewController *)self compactContinuousCornerRadius];
    v6 = 0.0;
  }

  [(UIView *)self->_callRecordingBackgroundView _setContinuousCornerRadius:?];
  [(RPCCUICallRecordingBackgroundView *)self->_recordButtonView setAlpha:v6];
}

- (void)addDismissalView
{
  compactDismissalView = self->_compactDismissalView;
  if (!compactDismissalView)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_compactDismissalView;
    self->_compactDismissalView = v4;

    [(UIView *)self->_compactDismissalView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_compactDismissalView setUserInteractionEnabled:1];
    v6 = self->_compactDismissalView;
    v7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"didTapDismissalView:"];
    [(UIView *)v6 addGestureRecognizer:v7];

    compactDismissalView = self->_compactDismissalView;
  }

  v8 = [(UIView *)compactDismissalView superview];

  if (!v8)
  {
    v9 = [(RPCCUICallRecordingModuleViewController *)self view];
    [v9 insertSubview:self->_compactDismissalView atIndex:0];

    v26 = [(RPCCUICallRecordingModuleViewController *)self view];
    v25 = [v26 leadingAnchor];
    v24 = [(UIView *)self->_compactDismissalView leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v27[0] = v23;
    v22 = [(RPCCUICallRecordingModuleViewController *)self view];
    v21 = [v22 trailingAnchor];
    v20 = [(UIView *)self->_compactDismissalView trailingAnchor];
    v10 = [v21 constraintEqualToAnchor:v20];
    v27[1] = v10;
    v11 = [(RPCCUICallRecordingModuleViewController *)self view];
    v12 = [v11 topAnchor];
    v13 = [(UIView *)self->_compactDismissalView topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v27[2] = v14;
    v15 = [(RPCCUICallRecordingModuleViewController *)self view];
    v16 = [v15 bottomAnchor];
    v17 = [(UIView *)self->_compactDismissalView bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v27[3] = v18;
    v19 = [NSArray arrayWithObjects:v27 count:4];
    [NSLayoutConstraint activateConstraints:v19];
  }
}

- (void)updatePhoneViewConstraints
{
  if (self->_usingCompactPhoneConstraints && [(RPCCUICallRecordingModuleViewController *)self isExpanded])
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [NSNumber numberWithBool:self->_usingCompactPhoneConstraints];
      v4 = [NSNumber numberWithBool:[(RPCCUICallRecordingModuleViewController *)self isExpanded]];
      v12 = 136446978;
      v13 = "[RPCCUICallRecordingModuleViewController updatePhoneViewConstraints]";
      v14 = 1024;
      v15 = 309;
      v16 = 2112;
      v17 = v3;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d using compact phone constraints: _usingCompactPhoneConstraints=%@, expanded=%@", &v12, 0x26u);
    }

    v5 = +[UIScreen mainScreen];
    [v5 bounds];
    self->_currentPreferredExpandedContentWidth = v6;

    [NSLayoutConstraint deactivateConstraints:self->_callRecordingConstraints];
    [NSLayoutConstraint activateConstraints:self->_compactCallRecordingConstraints];
    [(RPCCUICallRecordingModuleViewController *)self addDismissalView];
  }

  else
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [NSNumber numberWithBool:self->_usingCompactPhoneConstraints];
      v8 = [NSNumber numberWithBool:[(RPCCUICallRecordingModuleViewController *)self isExpanded]];
      v12 = 136446978;
      v13 = "[RPCCUICallRecordingModuleViewController updatePhoneViewConstraints]";
      v14 = 1024;
      v15 = 315;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d using regular phone constraints: _usingCompactPhoneConstraints=%@, expanded=%@", &v12, 0x26u);
    }

    CCUIDefaultExpandedContentModuleWidth();
    self->_currentPreferredExpandedContentWidth = v9 + -20.0;
    [NSLayoutConstraint deactivateConstraints:self->_compactCallRecordingConstraints];
    [NSLayoutConstraint activateConstraints:self->_callRecordingConstraints];
    [(UIView *)self->_compactDismissalView removeFromSuperview];
  }

  v10 = [(RPCCUICallRecordingModuleViewController *)self view];
  [v10 setNeedsLayout];

  v11 = [(RPCCUICallRecordingModuleViewController *)self view];
  [v11 layoutIfNeeded];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = RPCCUICallRecordingModuleViewController;
  [(RPCCUICallRecordingModuleViewController *)&v9 willTransitionToTraitCollection:v6 withTransitionCoordinator:a4];
  if (![v6 userInterfaceIdiom])
  {
    usingCompactPhoneConstraints = self->_usingCompactPhoneConstraints;
    v8 = [v6 verticalSizeClass] == &dword_0 + 1;
    self->_usingCompactPhoneConstraints = v8;
    if (usingCompactPhoneConstraints != v8)
    {
      [(RPCCUICallRecordingModuleViewController *)self updatePhoneViewConstraints];
    }
  }
}

- (void)setContentRenderingMode:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = RPCCUICallRecordingModuleViewController;
  if ([(RPCCUICallRecordingModuleViewController *)&v6 contentRenderingMode]!= a3)
  {
    v5.receiver = self;
    v5.super_class = RPCCUICallRecordingModuleViewController;
    [(RPCCUICallRecordingModuleViewController *)&v5 setContentRenderingMode:a3];
    [(RPCCUICallRecordingModuleViewController *)self updateGlyphState];
  }
}

- (void)updateGlyphState
{
  WeakRetained = objc_loadWeakRetained(&self->_client);
  -[RPCCUICallRecordingModuleViewController setSelected:](self, "setSelected:", [WeakRetained highQualityLocalRecordingOn]);

  v4 = objc_loadWeakRetained(&self->_client);
  if ([v4 isCountingDown])
  {
    v5 = objc_loadWeakRetained(&self->_client);
    v6 = [v5 hqlrCountdownStarted];

    if (v6)
    {
      v7 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_HQLR_STATUS_STARTING"];
      [(RPCCUICallRecordingModuleViewController *)self setValueText:v7];

      v8 = +[RPFeatureFlagUtility sharedInstance];
      v9 = [v8 systemBannerEnabled];

      if (v9)
      {
        [(RPCCUICallRecordingModuleViewController *)self setGlyphState:@"recording-static"];
        callRecordingView = self->_callRecordingView;
        v11 = 3;
      }

      else
      {
        [(RPCCUICallRecordingModuleViewController *)self setGlyphState:@"countdown"];
        [(RPCCUICallRecordingModuleViewController *)self setCountdown:3];
        [(RPCCUICallRecordingView *)self->_callRecordingView isCountingDown:1];
        callRecordingView = self->_callRecordingView;
        v11 = 2;
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  v12 = objc_loadWeakRetained(&self->_client);
  v13 = [v12 highQualityLocalRecordingOn];

  if (v13)
  {
    v14 = +[RPFeatureFlagUtility sharedInstance];
    v15 = [v14 systemBannerEnabled];

    if (v15)
    {
      v16 = @"recording-static";
    }

    else
    {
      v16 = @"recording";
    }

    [(RPCCUICallRecordingModuleViewController *)self setGlyphState:v16];
    v17 = self->_callRecordingView;
    v18 = 3;
    goto LABEL_14;
  }

  v19 = objc_loadWeakRetained(&self->_client);
  v20 = [v19 highQualityLocalRecordingReady];

  if (!v20)
  {
    [(RPCCUICallRecordingModuleViewController *)self setValueText:&stru_31A68];
    [(RPCCUICallRecordingModuleViewController *)self setSelectedValueText:@"00:00"];
    [(RPCCUICallRecordingModuleViewController *)self setGlyphState:@"Base State"];
    v17 = self->_callRecordingView;
    v18 = 0;
LABEL_14:
    [(RPCCUICallRecordingView *)v17 updateCallRecordingState:v18];
    [(RPCCUICallRecordingModuleViewController *)self resetCountdownState];
    goto LABEL_17;
  }

  v21 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_HQLR_STATUS_READY"];
  [(RPCCUICallRecordingModuleViewController *)self setValueText:v21];

  [(RPCCUICallRecordingModuleViewController *)self setGlyphState:@"Base State"];
  callRecordingView = self->_callRecordingView;
  v11 = 1;
LABEL_16:
  [(RPCCUICallRecordingView *)callRecordingView updateCallRecordingState:v11];
LABEL_17:
  [(RPCCUICallRecordingBackgroundView *)self->_recordButtonView updateRecordingState];
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(RPCCUICallRecordingModuleViewController *)self glyphState];
    v23 = 136447234;
    v24 = "[RPCCUICallRecordingModuleViewController updateGlyphState]";
    v25 = 1024;
    v26 = 378;
    v27 = 2048;
    v28 = self;
    v29 = 2112;
    v30 = v22;
    v31 = 1024;
    v32 = [(RPCCUICallRecordingModuleViewController *)self isSelected];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p updated glyph state %@ with selected: %d", &v23, 0x2Cu);
  }
}

- (void)resetCountdownState
{
  [(RPCCUICallRecordingView *)self->_callRecordingView isCountingDown:0];
  callRecordingView = self->_callRecordingView;

  [(RPCCUICallRecordingView *)callRecordingView setCountdownState:3];
}

- (void)transitionToCountdownState
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 136446978;
    v7 = "[RPCCUICallRecordingModuleViewController transitionToCountdownState]";
    v8 = 1024;
    v9 = 387;
    v10 = 2048;
    v11 = self;
    v12 = 2048;
    v13 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
  }

  v4 = objc_loadWeakRetained(&self->_client);
  [v4 setHqlrCountdownStarted:1];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_86A4;
  v5[3] = &unk_30DF0;
  v5[4] = self;
  [(RPCCUICallRecordingModuleViewController *)self acquireProcessAssertionWithHandler:v5];
}

- (void)startRecordingCountdown
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v5 = 136446978;
    v6 = "[RPCCUICallRecordingModuleViewController startRecordingCountdown]";
    v7 = 1024;
    v8 = 414;
    v9 = 2048;
    v10 = self;
    v11 = 2048;
    v12 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", &v5, 0x26u);
  }

  v4 = objc_loadWeakRetained(&self->_client);
  [v4 startRecordingCountdown];
}

- (void)invalidateProcessAssertion
{
  [(BKSProcessAssertion *)self->_backgroundProcessAssertion invalidate];
  backgroundProcessAssertion = self->_backgroundProcessAssertion;
  self->_backgroundProcessAssertion = 0;
}

- (void)acquireProcessAssertionWithHandler:(id)a3
{
  v4 = a3;
  v5 = [BKSProcessAssertion alloc];
  v6 = getpid();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_8B00;
  v10[3] = &unk_30FE8;
  v11 = v4;
  v7 = v4;
  v8 = [v5 initWithPID:v6 flags:1 reason:4 name:@"HomeNFCStopAssertion" withHandler:v10];
  backgroundProcessAssertion = self->_backgroundProcessAssertion;
  self->_backgroundProcessAssertion = v8;
}

- (void)startHQLR
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 136446978;
    v7 = "[RPCCUICallRecordingModuleViewController startHQLR]";
    v8 = 1024;
    v9 = 450;
    v10 = 2048;
    v11 = self;
    v12 = 2048;
    v13 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
  }

  v4 = objc_loadWeakRetained(&self->_client);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_8E0C;
  v5[3] = &unk_30DF0;
  v5[4] = self;
  [v4 startHQLRWithHandler:v5];
}

- (void)authenticateWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 136446978;
    v11 = "[RPCCUICallRecordingModuleViewController authenticateWithCompletionHandler:]";
    v12 = 1024;
    v13 = 460;
    v14 = 2048;
    v15 = self;
    v16 = 2048;
    v17 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
  }

  lockStateQueue = self->_lockStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9064;
  block[3] = &unk_30FC0;
  v9 = v4;
  v7 = v4;
  dispatch_async(lockStateQueue, block);
}

- (void)presentRecordingAlertWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_SCREEN_RECORDING_ALERT_TITLE"];
  v6 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_SCREEN_RECORDING_TO_HQLR_ALERT_DESCRIPTION"];
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];
  v8 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_RECORDING_ALERT_CANCEL"];
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:&stru_31050];

  v10 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_RECORDING_ALERT_STOP"];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_930C;
  v16 = &unk_310A0;
  v17 = self;
  v18 = v4;
  v11 = v4;
  v12 = [UIAlertAction actionWithTitle:v10 style:0 handler:&v13];

  [v7 addAction:{v9, v13, v14, v15, v16, v17}];
  [v7 addAction:v12];
  [(RPCCUICallRecordingModuleViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v5 = 136446978;
    v6 = "[RPCCUICallRecordingModuleViewController shouldBeginTransitionToExpandedContentModule]";
    v7 = 1024;
    v8 = 501;
    v9 = 2048;
    v10 = self;
    v11 = 2048;
    v12 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", &v5, 0x26u);
  }

  self->_didStartFromLongPress = 1;
  return ![(RPCCUICallRecordingModuleViewController *)self isDeviceLocked];
}

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPCCUICallRecordingModuleViewController buttonTapped:forEvent:]";
    v13 = 1024;
    v14 = 508;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (self->_didStartFromLongPress && [(RPCCUICallRecordingModuleViewController *)self isDeviceLocked])
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v9 = [WeakRetained isScreenRecorderAvailable];

    if (v9)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_972C;
      v10[3] = &unk_310C8;
      v10[4] = self;
      [(RPCCUICallRecordingModuleViewController *)self authenticateWithCompletionHandler:v10];
    }

    self->_didStartFromLongPress = 0;
  }

  else
  {
    [(RPCCUICallRecordingModuleViewController *)self recordButtonTapped];
  }
}

- (void)cancelPreviousCountdownRequest
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v5 = 136446978;
    v6 = "[RPCCUICallRecordingModuleViewController cancelPreviousCountdownRequest]";
    v7 = 1024;
    v8 = 528;
    v9 = 2048;
    v10 = self;
    v11 = 2048;
    v12 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", &v5, 0x26u);
  }

  v4 = objc_loadWeakRetained(&self->_client);
  [v4 notifyClientDelegatesStart:0];

  [(RPCCUICallRecordingModuleViewController *)self cancelRecordingCountdown];
}

- (void)updateGlyphPackageDescription
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [CCUICAPackageDescription descriptionForPackageNamed:@"replaykit-localCapture-v01" inBundle:v4];
  [(RPCCUICallRecordingModuleViewController *)self setGlyphPackageDescription:v3];
}

- (void)cancelRecordingCountdown
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v5 = 136446978;
    v6 = "[RPCCUICallRecordingModuleViewController cancelRecordingCountdown]";
    v7 = 1024;
    v8 = 540;
    v9 = 2048;
    v10 = self;
    v11 = 2048;
    v12 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", &v5, 0x26u);
  }

  [(RPCCUICallRecordingModuleViewController *)self resetCountdownState];
  v4 = objc_loadWeakRetained(&self->_client);
  [v4 cancelRecordingCountdown];
}

- (void)performButtonActionForNonDynamicIslandAndCollapsed
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[RPCCUICallRecordingModuleViewController performButtonActionForNonDynamicIslandAndCollapsed]";
    v11 = 1024;
    v12 = 551;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Expand for non dynamic island", &v9, 0x12u);
  }

  [(CCUIContentModuleContext *)self->_contentModuleContext requestExpandModule];
  WeakRetained = objc_loadWeakRetained(&self->_client);
  if ([WeakRetained isCountingDown])
  {
    goto LABEL_13;
  }

  v4 = objc_loadWeakRetained(&self->_client);
  if ([v4 highQualityLocalRecordingOn])
  {
LABEL_12:

LABEL_13:
    return;
  }

  v5 = objc_loadWeakRetained(&self->_client);
  if ([v5 recordingOn])
  {
LABEL_11:

    goto LABEL_12;
  }

  v6 = objc_loadWeakRetained(&self->_client);
  if (![v6 fetchIsCallActive])
  {

    goto LABEL_11;
  }

  v7 = objc_loadWeakRetained(&self->_client);
  v8 = [v7 highQualityLocalRecordingReady];

  if ((v8 & 1) == 0)
  {
    [(RPCCUICallRecordingModuleViewController *)self transitionToCountdownState];
  }
}

- (void)performButtonActionForDynamicIslandOrExpanded
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v18 = "[RPCCUICallRecordingModuleViewController performButtonActionForDynamicIslandOrExpanded]";
    v19 = 1024;
    v20 = 563;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_client);
  v4 = [WeakRetained isCountingDown];

  v5 = objc_loadWeakRetained(&self->_client);
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v8 = [v5 highQualityLocalRecordingOn];

    v9 = objc_loadWeakRetained(&self->_client);
    v10 = v9;
    if (v8)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_9EB0;
      v16[3] = &unk_30DF0;
      v16[4] = self;
      [v9 stopCurrentSession:v16];
    }

    else
    {
      v11 = [v9 fetchIsCallActive];

      if (v11)
      {
        [(RPCCUICallRecordingModuleViewController *)self transitionToCountdownState];
        return;
      }

      v12 = objc_loadWeakRetained(&self->_client);
      v13 = [v12 highQualityLocalRecordingReady];

      v14 = objc_loadWeakRetained(&self->_client);
      v10 = v14;
      if (v13)
      {
        [v14 endReadyToRecord];
      }

      else
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_9F30;
        v15[3] = &unk_30DF0;
        v15[4] = self;
        [v14 startHQLRReadyToRecord:v15];
      }
    }

    return;
  }

  v7 = [v5 hqlrCountdownStarted];

  if (v7)
  {
    [(RPCCUICallRecordingModuleViewController *)self cancelPreviousCountdownRequest];
  }
}

- (void)performButtonAction
{
  WeakRetained = objc_loadWeakRetained(&self->_client);
  [WeakRetained setCurrentTimerString:0];

  v4 = +[RPFeatureFlagUtility sharedInstance];
  if ([v4 systemBannerEnabled])
  {

LABEL_4:

    [(RPCCUICallRecordingModuleViewController *)self performButtonActionForDynamicIslandOrExpanded];
    return;
  }

  v5 = [(RPCCUICallRecordingModuleViewController *)self isExpanded];

  if (v5)
  {
    goto LABEL_4;
  }

  [(RPCCUICallRecordingModuleViewController *)self performButtonActionForNonDynamicIslandAndCollapsed];
}

- (void)recordButtonTapped
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 136446978;
    v8 = "[RPCCUICallRecordingModuleViewController recordButtonTapped]";
    v9 = 1024;
    v10 = 600;
    v11 = 2048;
    v12 = self;
    v13 = 2048;
    v14 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", buf, 0x26u);
  }

  v4 = objc_loadWeakRetained(&self->_client);
  v5 = [v4 isScreenRecorderAvailable];

  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_A28C;
    v6[3] = &unk_310C8;
    v6[4] = self;
    [(RPCCUICallRecordingModuleViewController *)self authenticateWithCompletionHandler:v6];
  }
}

- (void)presentAlertWithTitle:(id)a3 message:(id)a4 completion:(id)a5
{
  v8 = a5;
  v11 = [UIAlertController alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v9 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_FAILED_ALERT_OK_BUTTON"];
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:0];
  [v11 addAction:v10];

  [(RPCCUICallRecordingModuleViewController *)self presentViewController:v11 animated:1 completion:v8];
}

- (void)setCountdown:(int64_t)a3
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v10 = "[RPCCUICallRecordingModuleViewController setCountdown:]";
    v11 = 1024;
    v12 = 639;
    v13 = 2048;
    v14 = self;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p Setting countdown state to %d", buf, 0x22u);
  }

  if (a3 == 3)
  {
    v5 = dispatch_time(0, 100000000);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_A8F8;
    v8[3] = &unk_30DF0;
    v8[4] = self;
    v6 = v8;
  }

  else
  {
    v5 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_A948;
    block[3] = &unk_310F0;
    block[4] = self;
    block[5] = a3;
    v6 = block;
  }

  dispatch_after(v5, &_dispatch_main_q, v6);
}

- (void)setContentModuleContext:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446978;
    v9 = "[RPCCUICallRecordingModuleViewController setContentModuleContext:]";
    v10 = 1024;
    v11 = 664;
    v12 = 2048;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p, context=%@", &v8, 0x26u);
  }

  contentModuleContext = self->_contentModuleContext;
  self->_contentModuleContext = v4;
  v6 = v4;

  WeakRetained = objc_loadWeakRetained(&self->_client);
  [WeakRetained setHqlrContentModuleContext:v6];
}

- (void)dealloc
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[RPCCUICallRecordingModuleViewController dealloc]";
    v9 = 1024;
    v10 = 670;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_client);
  [WeakRetained removeDelegate:self];

  [(RPCCUICallRecordingModuleViewController *)self stopLockScreenNotifications];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  lockStateQueue = self->_lockStateQueue;
  self->_lockStateQueue = 0;

  v6.receiver = self;
  v6.super_class = RPCCUICallRecordingModuleViewController;
  [(RPCCUICallRecordingModuleViewController *)&v6 dealloc];
}

- (void)setupLockScreenNotifications
{
  objc_initWeak(&location, self);
  lockStateQueue = self->_lockStateQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_ADC0;
  v4[3] = &unk_31118;
  objc_copyWeak(&v5, &location);
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &self->_lockToResetToken, lockStateQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (double)preferredExpandedContentHeight
{
  recordButtonView = self->_recordButtonView;
  if (!recordButtonView)
  {
    return 460.0;
  }

  [(RPCCUICallRecordingBackgroundView *)recordButtonView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  return v3 + 390.0;
}

- (NSArray)containerViewsForPlatterTreatment
{
  if (_UISolariumEnabled())
  {
    callRecordingBackgroundView = self->_callRecordingBackgroundView;
    v3 = [NSArray arrayWithObjects:&callRecordingBackgroundView count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)didChangeAvailability:(BOOL)a3
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPCCUICallRecordingModuleViewController didChangeAvailability:]";
    v6 = 1024;
    v7 = 730;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v4, 0x12u);
  }

  [(RPCCUICallRecordingModuleViewController *)self updateGlyphState];
}

- (void)didStartRecordingOrBroadcast
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v7 = 136446978;
    v8 = "[RPCCUICallRecordingModuleViewController didStartRecordingOrBroadcast]";
    v9 = 1024;
    v10 = 735;
    v11 = 2048;
    v12 = self;
    v13 = 2048;
    v14 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", &v7, 0x26u);
  }

  [(RPCCUICallRecordingModuleViewController *)self updateGlyphState];
  v4 = +[RPFeatureFlagUtility sharedInstance];
  v5 = [v4 systemBannerEnabled];

  if (v5)
  {
    [(RPCCUICallRecordingModuleViewController *)self invalidateProcessAssertion];
  }

  v6 = objc_loadWeakRetained(&self->_client);
  [v6 showRecordingBanner];
}

- (void)didStopRecordingOrBroadcast
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPCCUICallRecordingModuleViewController didStopRecordingOrBroadcast]";
    v5 = 1024;
    v6 = 746;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v3, 0x12u);
  }

  [(RPCCUICallRecordingModuleViewController *)self updateGlyphState];
}

- (void)recordingTimerDidUpdate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B35C;
  block[3] = &unk_30DF0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sessionDidFailToStart
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v4 = 136446978;
    v5 = "[RPCCUICallRecordingModuleViewController sessionDidFailToStart]";
    v6 = 1024;
    v7 = 762;
    v8 = 2048;
    v9 = self;
    v10 = 2048;
    v11 = WeakRetained;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p client=%p", &v4, 0x26u);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"startHQLR" object:self];
  [(RPCCUICallRecordingModuleViewController *)self invalidateProcessAssertion];
  [(RPCCUICallRecordingModuleViewController *)self updateGlyphState];
}

- (void)sessionIsStarting
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPCCUICallRecordingModuleViewController sessionIsStarting]";
    v5 = 1024;
    v6 = 772;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v3, 0x12u);
  }

  [(RPCCUICallRecordingModuleViewController *)self updateGlyphState];
}

- (void)presentCancelReadyToRecord
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPCCUICallRecordingModuleViewController presentCancelReadyToRecord]";
    v13 = 1024;
    v14 = 777;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v3 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_CANCEL_READY_STATE_ALERT_TITLE"];
  v4 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_CANCEL_READY_STATE_ALERT_DESCRIPTION"];
  v5 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_CANCEL_READY_STATE_YES"];
  v6 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_CANCEL_READY_STATE_NO"];
  v7 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:1];
  v8 = [UIAlertAction actionWithTitle:v6 style:0 handler:&stru_31138];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_B84C;
  v10[3] = &unk_31160;
  v10[4] = self;
  v9 = [UIAlertAction actionWithTitle:v5 style:0 handler:v10];
  [v7 addAction:v8];
  [v7 addAction:v9];
  [(RPCCUICallRecordingModuleViewController *)self presentViewController:v7 animated:1 completion:0];
}

@end