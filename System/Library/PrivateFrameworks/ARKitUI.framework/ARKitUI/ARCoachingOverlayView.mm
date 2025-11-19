@interface ARCoachingOverlayView
- (ARCoachingOverlayView)initWithCoder:(id)a3;
- (ARCoachingOverlayView)initWithFrame:(CGRect)a3;
- (BOOL)checkActivationHeuristics;
- (BOOL)isRelocalizing;
- (CGSize)intrinsicContentSize;
- (NSObject)sessionProvider;
- (double)calcFadeDurationIn:(BOOL)a3 withButton:(BOOL)a4;
- (id)delegate;
- (id)frameWithOverrides:(id)a3;
- (int64_t)currentDeviceOrientation;
- (void)buttonPress:(id)a3;
- (void)createConstraintsForDeviceOrientation:(int64_t)a3;
- (void)crossFadeCoachingMessage:(int64_t)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)doStateAction:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fadeOut;
- (void)finishAllUIAnimations;
- (void)generateHeuristicsForActive:(BOOL)a3;
- (void)killUIAnimations;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)orientationChanged;
- (void)resolveCoachingMessageWithFrame:(id)a3;
- (void)restartIfActive;
- (void)session:(id)a3 didAddAnchors:(id)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didRemoveAnchors:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)session:(id)a3 willRunWithConfiguration:(id)a4;
- (void)setActive:(BOOL)active animated:(BOOL)animated;
- (void)setCoachingMessage:(int64_t)a3 animationState:(int64_t)a4;
- (void)setGoal:(ARCoachingGoal)goal;
- (void)setResetButtonLandscapeVerticalOffset:(float)a3;
- (void)setResetButtonPortraitVerticalOffset:(float)a3;
- (void)setSession:(ARSession *)session;
- (void)setSessionProvider:(NSObject *)sessionProvider;
- (void)setupView;
- (void)startup;
- (void)swapState:(id)a3;
- (void)teardown;
- (void)updateCoachingMessagingWithMotionTracker:(BOOL)a3 frame:(id)a4;
- (void)updateConstraints;
- (void)updateFromDisplayLink;
- (void)updateUIAnimations;
- (void)updateWithFrame:(id)a3;
@end

@implementation ARCoachingOverlayView

- (ARCoachingOverlayView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ARCoachingOverlayView;
  v3 = [(ARCoachingOverlayView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ARCoachingOverlayView *)v3 setupView];
  }

  return v4;
}

- (ARCoachingOverlayView)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ARCoachingOverlayView;
  v5 = [(ARCoachingOverlayView *)&v8 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(ARCoachingOverlayView *)v5 setupView];
    if ([v4 containsValueForKey:@"goal"])
    {
      -[ARCoachingOverlayView setGoal:](v6, "setGoal:", [v4 decodeIntegerForKey:@"goal"]);
    }

    if ([v4 containsValueForKey:@"activatesAutomatically"])
    {
      -[ARCoachingOverlayView setActivatesAutomatically:](v6, "setActivatesAutomatically:", [v4 decodeBoolForKey:@"activatesAutomatically"]);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ARCoachingOverlayView;
  v4 = a3;
  [(ARCoachingOverlayView *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_goal forKey:{@"goal", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_activatesAutomatically forKey:@"activatesAutomatically"];
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _ARLogCoaching_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v10 = v5;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&dword_23D3AE000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Deallocate the overlay", buf, 0x16u);
  }

  [(ARSession *)self->_session _removeObserver:self];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x277D76878] object:0];

  v8.receiver = self;
  v8.super_class = ARCoachingOverlayView;
  [(ARCoachingOverlayView *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setupView
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = _ARLogCoaching_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v72 = v5;
    v73 = 2048;
    v74 = self;
    _os_log_impl(&dword_23D3AE000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Set up the overlay", buf, 0x16u);
  }

  self->_goal = 0;
  self->_requestedGoal = 0;
  self->_activatesAutomatically = 1;
  v6 = objc_alloc_init(ARCoachingHeuristicCollection);
  heuristics = self->_heuristics;
  self->_heuristics = v6;

  v8 = objc_alloc_init(ARCoachingMotionTracker);
  motionTracker = self->_motionTracker;
  self->_motionTracker = v8;

  v10 = objc_alloc_init(ARCoachingSessionCache);
  coachingSessionCache = self->_coachingSessionCache;
  self->_coachingSessionCache = v10;

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  uiAnimationQueue = self->_uiAnimationQueue;
  self->_uiAnimationQueue = v12;

  self->_currentConstraintDeviceOrientation = 0;
  self->_resetButtonLandscapeVerticalOffset = 80.0;
  self->_resetButtonPortraitVerticalOffset = 80.0;
  v14 = objc_alloc_init(MEMORY[0x277D75D18]);
  background = self->_background;
  self->_background = v14;

  v16 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.6];
  [(UIView *)self->_background setBackgroundColor:v16];

  [(UIView *)self->_background setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = objc_alloc_init(ARCoachingAnimationView);
  coachingAnimationView = self->_coachingAnimationView;
  self->_coachingAnimationView = v17;

  [(ARCoachingAnimationView *)self->_coachingAnimationView setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = objc_alloc_init(MEMORY[0x277D756B8]);
  coachingText = self->_coachingText;
  self->_coachingText = v19;

  v21 = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)self->_coachingText setTextColor:v21];

  v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [(UILabel *)self->_coachingText setFont:v22];

  [(UILabel *)self->_coachingText setTextAlignment:1];
  [(UILabel *)self->_coachingText setNumberOfLines:0];
  [(UILabel *)self->_coachingText setLineBreakMode:0];
  [(UILabel *)self->_coachingText setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [ARCoachingPillButton alloc];
  v24 = ARKitCoreBundle();
  v25 = [v24 localizedStringForKey:@"Start Over" value:&stru_284F6BB70 table:@"Localizable"];
  v26 = [(ARCoachingRoundedButton *)v23 initWithTitle:v25 buttonStyle:0 textStyle:1 controlStyle:2 adjustsFontForContentSizeCategory:1];
  resetButton = self->_resetButton;
  self->_resetButton = v26;

  [(ARCoachingPillButton *)self->_resetButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ARCoachingButton *)self->_resetButton setContentEdgeInsets:12.0, 20.0, 12.0, 20.0];
  [(ARCoachingButton *)self->_resetButton addTarget:self action:sel_buttonPress_ forControlEvents:64];
  [(ARCoachingOverlayView *)self addSubview:self->_background];
  [(ARCoachingOverlayView *)self addSubview:self->_coachingAnimationView];
  [(ARCoachingOverlayView *)self addSubview:self->_coachingText];
  [(ARCoachingOverlayView *)self addSubview:self->_resetButton];
  v28 = [(UILabel *)self->_coachingText leftAnchor];
  v29 = [(ARCoachingOverlayView *)self centerXAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-154.0];
  coachingTextLeftAnchorConstraint = self->_coachingTextLeftAnchorConstraint;
  self->_coachingTextLeftAnchorConstraint = v30;

  v32 = [(UILabel *)self->_coachingText rightAnchor];
  v33 = [(ARCoachingOverlayView *)self centerXAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:154.0];
  coachingTextRightAnchorConstraint = self->_coachingTextRightAnchorConstraint;
  self->_coachingTextRightAnchorConstraint = v34;

  if (ARDeviceIsiPad())
  {
    v36 = 100.0;
  }

  else
  {
    v36 = 75.0;
  }

  v58 = MEMORY[0x277CCAAD0];
  v69 = [(UIView *)self->_background centerXAnchor];
  v68 = [(ARCoachingOverlayView *)self centerXAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v70[0] = v67;
  v66 = [(UIView *)self->_background centerYAnchor];
  v65 = [(ARCoachingOverlayView *)self centerYAnchor];
  v64 = [v66 constraintEqualToAnchor:v65];
  v70[1] = v64;
  v63 = [(ARCoachingAnimationView *)self->_coachingAnimationView leftAnchor];
  v62 = [(ARCoachingOverlayView *)self leftAnchor];
  v61 = [v63 constraintEqualToAnchor:v62];
  v70[2] = v61;
  v60 = [(ARCoachingAnimationView *)self->_coachingAnimationView topAnchor];
  v59 = [(ARCoachingOverlayView *)self topAnchor];
  v57 = [v60 constraintEqualToAnchor:v59];
  v70[3] = v57;
  v56 = [(ARCoachingAnimationView *)self->_coachingAnimationView rightAnchor];
  v55 = [(ARCoachingOverlayView *)self rightAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v70[4] = v54;
  v53 = [(ARCoachingAnimationView *)self->_coachingAnimationView bottomAnchor];
  v52 = [(ARCoachingOverlayView *)self bottomAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v37 = self->_coachingTextLeftAnchorConstraint;
  v70[5] = v51;
  v70[6] = v37;
  v70[7] = self->_coachingTextRightAnchorConstraint;
  v50 = [(UILabel *)self->_coachingText topAnchor];
  v38 = [(ARCoachingOverlayView *)self centerYAnchor];
  v39 = [v50 constraintEqualToAnchor:v38 constant:v36];
  v70[8] = v39;
  v40 = [(ARCoachingPillButton *)self->_resetButton centerXAnchor];
  v41 = [(ARCoachingOverlayView *)self centerXAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  v70[9] = v42;
  v43 = [(ARCoachingPillButton *)self->_resetButton topAnchor];
  v44 = [(UILabel *)self->_coachingText bottomAnchor];
  v45 = [v43 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v44 multiplier:1.0];
  v70[10] = v45;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:11];
  [v58 activateConstraints:v46];

  v47 = [MEMORY[0x277CCAB98] defaultCenter];
  [v47 addObserver:self selector:sel_orientationChanged name:*MEMORY[0x277D76878] object:0];

  v48 = [[ARCoachingStateHidden alloc] initWithView:self];
  [(ARCoachingOverlayView *)self swapState:v48];

  v49 = *MEMORY[0x277D85DE8];
}

- (void)setSessionProvider:(NSObject *)sessionProvider
{
  obj = sessionProvider;
  WeakRetained = objc_loadWeakRetained(&self->_sessionProvider);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_sessionProvider);
    [v5 removeObserver:self forKeyPath:@"session" context:kARCoachingSessionProviderSessionContext];

    v6 = objc_storeWeak(&self->_sessionProvider, obj);
    [obj addObserver:self forKeyPath:@"session" options:4 context:kARCoachingSessionProviderSessionContext];
  }
}

- (void)setSession:(ARSession *)session
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = session;
  v6 = self->_session;
  if (v6 != v5)
  {
    [(ARSession *)v6 _removeObserver:self];
    objc_storeStrong(&self->_session, session);
    [(ARSession *)self->_session _addObserver:self];
    [(ARCoachingSessionCache *)self->_coachingSessionCache sessionChanged];
    if (isSessionValidForCoaching(self->_session))
    {
      self->_goal = validateCoachingGoalForSession(self->_requestedGoal, self->_session);
      v7 = _ARLogCoaching_2();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v14 = 138543618;
        v15 = v9;
        v16 = 2048;
        v17 = self;
        _os_log_impl(&dword_23D3AE000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Restarting coaching due to session change", &v14, 0x16u);
      }

      [(ARCoachingOverlayView *)self restartIfActive];
    }

    else
    {
      v10 = _ARLogCoaching_2();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v14 = 138543618;
        v15 = v12;
        v16 = 2048;
        v17 = self;
        _os_log_impl(&dword_23D3AE000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Deactivating coaching due to invalid session", &v14, 0x16u);
      }

      [(ARCoachingOverlayView *)self setActive:0 animated:0];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setGoal:(ARCoachingGoal)goal
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = self->_goal;
  self->_requestedGoal = goal;
  v5 = validateCoachingGoalForSession(goal, self->_session);
  self->_goal = v5;
  if (v4 != v5)
  {
    v6 = _ARLogCoaching_2();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138543618;
      v11 = v8;
      v12 = 2048;
      v13 = self;
      _os_log_impl(&dword_23D3AE000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Restarting coaching due to goal change", &v10, 0x16u);
    }

    [(ARCoachingOverlayView *)self restartIfActive];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setActive:(BOOL)active animated:(BOOL)animated
{
  v18 = *MEMORY[0x277D85DE8];
  if (active)
  {
    if (isSessionValidForCoaching(self->_session))
    {
      if ([(ARCoachingOverlayView *)self isRelocalizing])
      {
        v6 = 5;
      }

      else
      {
        v6 = 1;
      }

      [(ARCoachingOverlayView *)self doStateAction:v6];
      if (!animated)
      {
        [(ARCoachingOverlayView *)self doStateAction:6];
        v7 = *MEMORY[0x277D85DE8];

        [(ARCoachingOverlayView *)self finishAllUIAnimations];
        return;
      }
    }

    else
    {
      v10 = _ARLogCoaching_2();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v14 = 138543618;
        v15 = v12;
        v16 = 2048;
        v17 = self;
        _os_log_impl(&dword_23D3AE000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Coaching requires an AR session, and must be run on a supported device. Run a session with a valid configuration, and set session or sessionProvider before activation.", &v14, 0x16u);
      }
    }

    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  v8 = *MEMORY[0x277D85DE8];
  if (animated)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [(ARCoachingOverlayView *)self doStateAction:v9];
}

- (CGSize)intrinsicContentSize
{
  [(ARCoachingAnimationView *)self->_coachingAnimationView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setResetButtonLandscapeVerticalOffset:(float)a3
{
  self->_resetButtonLandscapeVerticalOffset = a3;
  self->_currentConstraintDeviceOrientation = 0;
  [(ARCoachingOverlayView *)self setNeedsUpdateConstraints];
}

- (void)setResetButtonPortraitVerticalOffset:(float)a3
{
  self->_resetButtonPortraitVerticalOffset = a3;
  self->_currentConstraintDeviceOrientation = 0;
  [(ARCoachingOverlayView *)self setNeedsUpdateConstraints];
}

- (BOOL)isRelocalizing
{
  if (self->_trackingStateReasonOverride == 4)
  {
    return 1;
  }

  v4 = [(ARSession *)self->_session currentFrame];
  v5 = v4;
  v2 = 0;
  if (!self->_isSessionRelocalizingMap && v4)
  {
    v6 = [v4 camera];
    if ([v6 trackingState] == 1)
    {
      v7 = [v5 camera];
      v2 = [v7 trackingStateReason] == 4;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (void)startup
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = _ARLogCoaching_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v15 = 138543618;
    v16 = v5;
    v17 = 2048;
    v18 = self;
    _os_log_impl(&dword_23D3AE000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Start rendering the overlay", &v15, 0x16u);
  }

  kdebug_trace();
  self->_wasEverActivated = 1;
  self->_isSessionRelocalizingMap = isSessionLoadingMap(self->_session);
  [(ARCoachingOverlayView *)self generateHeuristicsForActive:1];
  [(ARCoachingAnimationView *)self->_coachingAnimationView startCoachingAnimation:self->_goal];
  [(ARCoachingMotionTracker *)self->_motionTracker clear];
  [(ARCoachingSessionCache *)self->_coachingSessionCache clear];
  self->_nextCoachingMessageType = 0;
  v6 = [(ARSession *)self->_session metrics];
  [v6 recordCoachingOverlayUsage:LODWORD(self->_goal)];

  v7 = [ARCoachingFrame alloc];
  v8 = [(ARSession *)self->_session currentFrame];
  v9 = [(ARCoachingFrame *)v7 initWithFrame:v8];

  [(ARCoachingHeuristicCollection *)self->_heuristics updateWithFrame:v9 cache:self->_coachingSessionCache];
  [(ARCoachingMotionTracker *)self->_motionTracker updateWithFrame:v9];
  [(ARCoachingOverlayView *)self updateCoachingMessagingWithMotionTracker:1 frame:v9];
  [(ARCoachingOverlayView *)self setNeedsUpdateConstraints];
  if (!self->_displayLink)
  {
    v10 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_updateFromDisplayLink];
    displayLink = self->_displayLink;
    self->_displayLink = v10;

    v12 = self->_displayLink;
    v13 = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)v12 addToRunLoop:v13 forMode:*MEMORY[0x277CBE640]];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)didMoveToWindow
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = ARCoachingOverlayView;
  [(ARCoachingOverlayView *)&v12 didMoveToWindow];
  v3 = [(ARCoachingOverlayView *)self window];

  if (!v3)
  {
    v8 = _ARLogCoaching_2();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543618;
      v14 = v10;
      v15 = 2048;
      v16 = self;
      _os_log_impl(&dword_23D3AE000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Tearing down because the view no longer has a window.", buf, 0x16u);
    }

    [(CADisplayLink *)self->_displayLink invalidate];
    displayLink = self->_displayLink;
    self->_displayLink = 0;
    goto LABEL_7;
  }

  if (!self->_displayLink)
  {
    v4 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_updateFromDisplayLink];
    v5 = self->_displayLink;
    self->_displayLink = v4;

    v6 = self->_displayLink;
    displayLink = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)v6 addToRunLoop:displayLink forMode:*MEMORY[0x277CBE640]];
LABEL_7:
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)teardown
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = _ARLogCoaching_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v11 = 138543618;
    v12 = v5;
    v13 = 2048;
    v14 = self;
    _os_log_impl(&dword_23D3AE000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Stop rendering the overlay", &v11, 0x16u);
  }

  kdebug_trace();
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  [(ARCoachingOverlayView *)self killUIAnimations];
  [(ARCoachingOverlayView *)self generateHeuristicsForActive:0];
  [(ARCoachingAnimationView *)self->_coachingAnimationView killCoachingAnimation];
  [(UIView *)self->_background setAlpha:0.0];
  [(UILabel *)self->_coachingText setAlpha:0.0];
  [(ARCoachingPillButton *)self->_resetButton setAlpha:0.0];
  [(ARCoachingPillButton *)self->_resetButton setHidden:1];
  self->_nextCoachingMessageType = 0;
  v7 = [ARCoachingFrame alloc];
  v8 = [(ARSession *)self->_session currentFrame];
  v9 = [(ARCoachingFrame *)v7 initWithFrame:v8];

  [(ARCoachingHeuristicCollection *)self->_heuristics updateWithFrame:v9 cache:self->_coachingSessionCache];
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __42__ARCoachingOverlayView_fadeInWithButton___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setAlpha:1.0];
  result = [*(*(a1 + 32) + 416) setAlpha:1.0];
  v3 = *(a1 + 32);
  if (*(v3 + 600) == 4)
  {
    v4 = *(v3 + 536);

    return [v4 setAlpha:1.0];
  }

  return result;
}

uint64_t __42__ARCoachingOverlayView_fadeInWithButton___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setHidden:0];
  v2 = *(*(a1 + 32) + 424);

  return [v2 setAlpha:1.0];
}

- (void)fadeOut
{
  v3 = CACurrentMediaTime();
  lastCoachingUpdateTime = self->_lastCoachingUpdateTime;
  v5 = [(ARCoachingAnimationView *)self->_coachingAnimationView animationState];
  v6 = v5 > 6 || ((1 << v5) & 0x52) == 0;
  v7 = fmax(lastCoachingUpdateTime - v3 + 1.0, 0.0);
  if (v6)
  {
    v8 = 0.3;
  }

  else
  {
    v8 = v7;
  }

  [(ARCoachingAnimationView *)self->_coachingAnimationView setAnimationState:6, 0.3];
  v9 = [(UIViewPropertyAnimator *)[ARCoachingDelayedAnimation alloc] initWithDuration:3 curve:&__block_literal_global_8 animations:0.0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __32__ARCoachingOverlayView_fadeOut__block_invoke_2;
  v16[3] = &unk_278BCD5C0;
  v16[4] = self;
  [(UIViewPropertyAnimator *)v9 addCompletion:v16];
  [(ARCoachingDelayedAnimation *)v9 setCoachingDelayTime:v3 + v8];
  [(ARCoachingOverlayView *)self calcFadeDurationIn:0 withButton:0];
  v11 = v10;
  v12 = objc_alloc(MEMORY[0x277D75D40]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __32__ARCoachingOverlayView_fadeOut__block_invoke_3;
  v15[3] = &unk_278BCD4A8;
  v15[4] = self;
  v13 = [v12 initWithDuration:1 curve:v15 animations:v11];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __32__ARCoachingOverlayView_fadeOut__block_invoke_4;
  v14[3] = &unk_278BCD5C0;
  v14[4] = self;
  [v13 addCompletion:v14];
  [(NSMutableArray *)self->_uiAnimationQueue addObject:v9];
  [(NSMutableArray *)self->_uiAnimationQueue addObject:v13];
}

uint64_t __32__ARCoachingOverlayView_fadeOut__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setAlpha:0.0];
  [*(*(a1 + 32) + 416) setAlpha:0.0];
  result = [*(*(a1 + 32) + 424) setAlpha:0.0];
  v3 = *(a1 + 32);
  if (*(v3 + 600) == 4)
  {
    v4 = *(v3 + 536);

    return [v4 setAlpha:0.0];
  }

  return result;
}

- (BOOL)checkActivationHeuristics
{
  if (self->_activatesAutomatically)
  {
    return ![(ARCoachingHeuristic *)self->_heuristics satisfied:v2];
  }

  else
  {
    return 0;
  }
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v5 = a4;
  v6 = [[ARCoachingFrame alloc] initWithFrame:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__ARCoachingOverlayView_session_didUpdateFrame___block_invoke;
  v8[3] = &unk_278BCD520;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __48__ARCoachingOverlayView_session_didUpdateFrame___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) frameWithOverrides:*(a1 + 40)];
  [*(a1 + 32) updateWithFrame:v2];
}

- (id)frameWithOverrides:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_trackingStateNormalOverride)
  {
    v5 = _ARLogCoaching_2();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v31 = 138543618;
      v32 = v7;
      v33 = 2048;
      v34 = self;
      _os_log_impl(&dword_23D3AE000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Overriding ARFrame tracking state to be .normal", &v31, 0x16u);
    }

    v8 = [v4 camera];
    [v8 setTrackingState:2];

    trackingStateReasonOverride = 0;
  }

  else
  {
    if (!self->_trackingStateReasonOverride)
    {
      if (!self->_geoTrackingStateOverrideEnabled && !self->_geoTrackingStateReasonOverrideEnabled)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

    v10 = _ARLogCoaching_2();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v31 = 138543618;
      v32 = v12;
      v33 = 2048;
      v34 = self;
      _os_log_impl(&dword_23D3AE000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Overriding ARFrame tracking state to be .limited", &v31, 0x16u);
    }

    v13 = [v4 camera];
    [v13 setTrackingState:1];

    trackingStateReasonOverride = self->_trackingStateReasonOverride;
  }

  v14 = [v4 camera];
  [v14 setTrackingStateReason:trackingStateReasonOverride];

LABEL_10:
  v15 = [v4 geoTrackingStatus];

  if (!v15)
  {
    v16 = [MEMORY[0x277CE52A0] initialStatus];
    [v4 setGeoTrackingStatus:v16];
  }

  if (self->_geoTrackingStateOverrideEnabled)
  {
    v17 = _ARLogCoaching_2();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      geoTrackingStateOverride = self->_geoTrackingStateOverride;
      v31 = 138543874;
      v32 = v19;
      v33 = 2048;
      v34 = self;
      v35 = 2048;
      v36 = geoTrackingStateOverride;
      _os_log_impl(&dword_23D3AE000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Overriding ARFrame geo tracking state to be state %ld", &v31, 0x20u);
    }

    v21 = self->_geoTrackingStateOverride;
    v22 = [v4 geoTrackingStatus];
    [v22 setState:v21];
  }

  if (self->_geoTrackingStateReasonOverrideEnabled)
  {
    v23 = _ARLogCoaching_2();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      geoTrackingStateReasonOverride = self->_geoTrackingStateReasonOverride;
      v31 = 138543874;
      v32 = v25;
      v33 = 2048;
      v34 = self;
      v35 = 2048;
      v36 = geoTrackingStateReasonOverride;
      _os_log_impl(&dword_23D3AE000, v23, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Overriding ARFrame geo tracking state reason to be state %ld", &v31, 0x20u);
    }

    v27 = self->_geoTrackingStateReasonOverride;
    v28 = [v4 geoTrackingStatus];
    [v28 setStateReason:v27];
  }

LABEL_20:
  v29 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)session:(id)a3 willRunWithConfiguration:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ARCoachingOverlayView_session_willRunWithConfiguration___block_invoke;
  block[3] = &unk_278BCD4A8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __58__ARCoachingOverlayView_session_willRunWithConfiguration___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 600);
  result = validateCoachingGoalForSession(*(v2 + 464), *(v2 + 592));
  *(*(a1 + 32) + 600) = result;
  if (v3 != *(*(a1 + 32) + 600))
  {
    v5 = _ARLogCoaching_2();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v11 = 138543618;
      v12 = v8;
      v13 = 2048;
      v14 = v9;
      _os_log_impl(&dword_23D3AE000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Restarting coaching after configuration change resulted in goal change", &v11, 0x16u);
    }

    result = [*(a1 + 32) restartIfActive];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _ARLogCoaching_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543618;
    v14 = v8;
    v15 = 2048;
    v16 = self;
    _os_log_impl(&dword_23D3AE000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Coaching recieved session failure callback", buf, 0x16u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__ARCoachingOverlayView_session_didFailWithError___block_invoke;
  v11[3] = &unk_278BCD520;
  v11[4] = self;
  v12 = v5;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __50__ARCoachingOverlayView_session_didFailWithError___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = _ARLogCoaching_2();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v34 = 138543874;
    v35 = v5;
    v36 = 2048;
    v37 = v6;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&dword_23D3AE000, v2, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Processing session failure for coaching\n%@", &v34, 0x20u);
  }

  *(*(a1 + 32) + 600) = validateCoachingGoalForSession(*(*(a1 + 32) + 464), *(*(a1 + 32) + 592));
  v8 = [*(a1 + 32) delegate];
  v9 = objc_opt_respondsToSelector();

  v10 = _ARLogCoaching_2();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = *(a1 + 32);
      v34 = 138543618;
      v35 = v14;
      v36 = 2048;
      v37 = v15;
      _os_log_impl(&dword_23D3AE000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Asking delegate if we should show coaching session failure UI", &v34, 0x16u);
    }

    v16 = [*(a1 + 32) delegate];
    v17 = [v16 coachingOverlayViewShouldShowSessionFailure:*(a1 + 32) error:*(a1 + 40)];

    if (v17)
    {
      v18 = _ARLogCoaching_2();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 32);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = *(a1 + 32);
        v34 = 138543618;
        v35 = v21;
        v36 = 2048;
        v37 = v22;
        _os_log_impl(&dword_23D3AE000, v18, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Preparing to show coaching session failure UI", &v34, 0x16u);
      }

      result = [*(a1 + 32) doStateAction:7];
      goto LABEL_16;
    }
  }

  else
  {
    if (v11)
    {
      v24 = *(a1 + 32);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = *(a1 + 32);
      v34 = 138543618;
      v35 = v26;
      v36 = 2048;
      v37 = v27;
      _os_log_impl(&dword_23D3AE000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Coaching delegate does not implement coaching session UI callback", &v34, 0x16u);
    }
  }

  v28 = _ARLogCoaching_2();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = *(a1 + 32);
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = *(a1 + 32);
    v34 = 138543618;
    v35 = v31;
    v36 = 2048;
    v37 = v32;
    _os_log_impl(&dword_23D3AE000, v28, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Deactivating coaching due to session failure", &v34, 0x16u);
  }

  result = [*(a1 + 32) setActive:0 animated:0];
LABEL_16:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)session:(id)a3 didRemoveAnchors:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ARCoachingOverlayView_session_didRemoveAnchors___block_invoke;
  v7[3] = &unk_278BCD520;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)session:(id)a3 didAddAnchors:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ARCoachingOverlayView_session_didAddAnchors___block_invoke;
  v7[3] = &unk_278BCD520;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (kARCoachingSessionProviderSessionContext == a6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sessionProvider);
    v7 = [WeakRetained session];
    [(ARCoachingOverlayView *)self setSession:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ARCoachingOverlayView;
    [(ARCoachingOverlayView *)&v9 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)restartIfActive
{
  [(ARCoachingOverlayView *)self doStateAction:8];
  if ([(ARCoachingOverlayView *)self isActive])
  {

    [(ARCoachingOverlayView *)self startup];
  }

  else
  {

    [(ARCoachingOverlayView *)self generateHeuristicsForActive:0];
  }
}

- (void)resolveCoachingMessageWithFrame:(id)a3
{
  v4 = a3;
  goal = self->_goal;
  v6 = 4;
  v29 = v4;
  if (goal <= 2)
  {
    if (goal == 2)
    {
      v6 = 3;
    }

    if (goal < 2)
    {
      v6 = 2;
    }

    goto LABEL_13;
  }

  if (goal == 3)
  {
    v6 = 5;
  }

  else if (goal == 4)
  {
    v7 = [v4 geoTrackingStatus];

    if (!v7)
    {
      v10 = 6;
      goto LABEL_50;
    }

    v8 = [v29 geoTrackingStatus];
    v9 = [v8 stateReason];

    if (v9 == 7)
    {
      v10 = 8;
LABEL_50:
      v22 = self;
      v21 = 7;
      goto LABEL_37;
    }

    v23 = [v29 geoTrackingStatus];
    if ([v23 stateReason] == 3)
    {
      v24 = [v29 camera];
      if ([v24 trackingStateReason] == 1)
      {

LABEL_49:
        v10 = 9;
        goto LABEL_50;
      }

      v27 = [v29 camera];
      v28 = [v27 trackingStateReason];

      if (v28 == 2)
      {
        goto LABEL_49;
      }
    }

    else
    {
    }

    v25 = [v29 geoTrackingStatus];
    v26 = [v25 stateReason];

    if (v26 == 8)
    {
      v10 = 7;
    }

    else
    {
      v10 = 6;
    }

    goto LABEL_50;
  }

LABEL_13:
  coachingRequirements = self->_coachingRequirements;
  v12 = 2;
  v13 = 3;
  v14 = 4;
  v15 = 1;
  if ((coachingRequirements & 0x20) != 0)
  {
    v16 = 4;
  }

  else
  {
    v16 = v6;
  }

  if ((coachingRequirements & 0x20) != 0)
  {
    v15 = 4;
  }

  else
  {
    v14 = 2;
  }

  if ((coachingRequirements & 0x10) == 0)
  {
    v6 = v16;
    v13 = v15;
    v12 = v14;
  }

  if ((coachingRequirements & 0x40) != 0)
  {
    v17 = 6;
  }

  else
  {
    v17 = v6;
  }

  if ((coachingRequirements & 0x40) != 0)
  {
    v18 = 5;
  }

  else
  {
    v18 = v13;
  }

  if ((coachingRequirements & 0x40) != 0)
  {
    v19 = 5;
  }

  else
  {
    v19 = v12;
  }

  v20 = [(ARCoachingMotionTracker *)self->_motionTracker isMoving];
  if (v20)
  {
    v10 = v19;
  }

  else
  {
    v10 = v18;
  }

  if (v20)
  {
    v21 = 4;
  }

  else
  {
    v21 = v17;
  }

  v22 = self;
LABEL_37:
  [(ARCoachingOverlayView *)v22 setCoachingMessage:v10 animationState:v21];
}

- (void)setCoachingMessage:(int64_t)a3 animationState:(int64_t)a4
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_coachingMessageType != a3 || [(ARCoachingAnimationView *)self->_coachingAnimationView animationState]!= a4)
  {
    v7 = CACurrentMediaTime();
    if ([(ARCoachingOverlayView *)self isHidden])
    {
      self->_coachingMessageType = a3;
      v8 = getCoachingText(a3);
      [(UILabel *)self->_coachingText setText:v8];

      if ([(ARCoachingOverlayView *)self hideCoachingMessageLabel])
      {
        v9 = [(ARCoachingOverlayView *)self delegate];
        v10 = objc_opt_respondsToSelector();

        if (v10)
        {
          v11 = _ARLogCoaching_2();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            v24 = 138543618;
            v25 = v13;
            v26 = 2048;
            v27 = self;
            _os_log_impl(&dword_23D3AE000, v11, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Asking delegate to display the coaching message", &v24, 0x16u);
          }

          v14 = [(ARCoachingOverlayView *)self delegate];
          v15 = getCoachingText(a3);
          [v14 displayCoachingMessage:v15 forCoachingView:self];
        }
      }

LABEL_17:
      [(ARCoachingAnimationView *)self->_coachingAnimationView setAnimationState:a4];
      self->_nextCoachingMessageType = 0;
      self->_lastCoachingUpdateTime = v7;
      goto LABEL_18;
    }

    if (v7 - self->_lastCoachingUpdateTime >= 1.0)
    {
      [(ARCoachingOverlayView *)self crossFadeCoachingMessage:a3];
      if ([(ARCoachingOverlayView *)self hideCoachingMessageLabel])
      {
        v16 = [(ARCoachingOverlayView *)self delegate];
        v17 = objc_opt_respondsToSelector();

        if (v17)
        {
          v18 = _ARLogCoaching_2();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            v24 = 138543618;
            v25 = v20;
            v26 = 2048;
            v27 = self;
            _os_log_impl(&dword_23D3AE000, v18, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Asking delegate to display the coaching message", &v24, 0x16u);
          }

          v21 = [(ARCoachingOverlayView *)self delegate];
          v22 = getCoachingText(a3);
          [v21 displayCoachingMessage:v22 forCoachingView:self];
        }
      }

      goto LABEL_17;
    }

    self->_nextCoachingMessageType = a3;
    self->_nextCoachingAnimationState = a4;
  }

LABEL_18:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)crossFadeCoachingMessage:(int64_t)a3
{
  if (self->_coachingMessageType != a3)
  {
    v14[5] = v6;
    v14[6] = v5;
    v14[11] = v3;
    v14[12] = v4;
    self->_coachingMessageType = a3;
    v9 = objc_alloc(MEMORY[0x277D75D40]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__ARCoachingOverlayView_crossFadeCoachingMessage___block_invoke;
    v14[3] = &unk_278BCD4A8;
    v14[4] = self;
    v10 = [v9 initWithDuration:1 curve:v14 animations:0.15];
    v11 = objc_alloc(MEMORY[0x277D75D40]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__ARCoachingOverlayView_crossFadeCoachingMessage___block_invoke_2;
    v13[3] = &unk_278BCD5E8;
    v13[4] = self;
    v13[5] = a3;
    v12 = [v11 initWithDuration:2 curve:v13 animations:0.15];
    [(NSMutableArray *)self->_uiAnimationQueue addObject:v10];
    [(NSMutableArray *)self->_uiAnimationQueue addObject:v12];
  }
}

uint64_t __50__ARCoachingOverlayView_crossFadeCoachingMessage___block_invoke_2(uint64_t a1)
{
  v2 = getCoachingText(*(a1 + 40));
  [*(*(a1 + 32) + 416) setText:v2];

  v3 = *(*(a1 + 32) + 416);

  return [v3 setAlpha:1.0];
}

- (void)doStateAction:(int64_t)a3
{
  v4 = [(ARCoachingState *)self->_state doAction:a3];
  if (v4)
  {
    v5 = v4;
    [(ARCoachingOverlayView *)self swapState:v4];
    v4 = v5;
  }
}

- (void)swapState:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(ARCoachingState *)self->_state exit];
  v6 = _ARLogCoaching_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    state = self->_state;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v20 = 138543874;
    v21 = v8;
    v22 = 2048;
    v23 = self;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_23D3AE000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Exited coaching state %@", &v20, 0x20u);
  }

  objc_storeStrong(&self->_state, a3);
  v12 = self->_state;
  objc_opt_class();
  [(ARCoachingAnimationView *)self->_coachingAnimationView setIsDeactivating:objc_opt_isKindOfClass() & 1];
  [(ARCoachingState *)self->_state enter];
  v13 = _ARLogCoaching_2();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = self->_state;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v20 = 138543874;
    v21 = v15;
    v22 = 2048;
    v23 = self;
    v24 = 2112;
    v25 = v18;
    _os_log_impl(&dword_23D3AE000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Entered coaching state %@", &v20, 0x20u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateWithFrame:(id)a3
{
  v4 = a3;
  coachingSessionCache = self->_coachingSessionCache;
  v6 = v4;
  [ARCoachingHeuristicCollection updateWithFrame:"updateWithFrame:cache:" cache:?];
  [(ARCoachingOverlayView *)self doStateAction:4];
  if ([(ARCoachingOverlayView *)self isActive])
  {
    [(ARCoachingAnimationView *)self->_coachingAnimationView updateWithFrame:v6 motionTracker:self->_motionTracker];
    [(ARCoachingMotionTracker *)self->_motionTracker updateWithFrame:v6];
    [(ARCoachingOverlayView *)self updateCoachingMessagingWithMotionTracker:1 frame:v6];
  }
}

- (void)updateFromDisplayLink
{
  if (self->_wasEverActivated)
  {
    [(ARCoachingOverlayView *)self doStateAction:3];
    v4 = [ARCoachingFrame alloc];
    v5 = [(ARSession *)self->_session currentFrame];
    v7 = [(ARCoachingFrame *)v4 initWithFrame:v5];

    v6 = [(ARCoachingOverlayView *)self frameWithOverrides:v7];
    [(ARCoachingOverlayView *)self updateCoachingMessagingWithMotionTracker:0 frame:v6];
    [(ARCoachingOverlayView *)self updateUIAnimations];
  }
}

- (void)updateCoachingMessagingWithMotionTracker:(BOOL)a3 frame:(id)a4
{
  v4 = a3;
  v12 = a4;
  coachingRequirements = self->_coachingRequirements;
  v7 = [(ARCoachingState *)self->_state requirements];
  v8 = [(ARCoachingHeuristicCollection *)self->_heuristics requirements]| v7;
  self->_coachingRequirements = v8;
  if (v4 && ([(ARCoachingMotionTracker *)self->_motionTracker didStartMoving]|| [(ARCoachingMotionTracker *)self->_motionTracker didStopMoving]) || v8 != coachingRequirements || self->_goal == 4)
  {
    [(ARCoachingOverlayView *)self resolveCoachingMessageWithFrame:v12];
  }

  nextCoachingMessageType = self->_nextCoachingMessageType;
  if (nextCoachingMessageType)
  {
    [(ARCoachingOverlayView *)self setCoachingMessage:nextCoachingMessageType animationState:self->_nextCoachingAnimationState];
  }

  if ([(ARCoachingOverlayView *)self hideCoachingMessageLabel])
  {
    p_coachingText = &self->_coachingText;
    if (![(UILabel *)self->_coachingText isHidden])
    {
      v11 = 1;
      goto LABEL_15;
    }
  }

  if (![(ARCoachingOverlayView *)self hideCoachingMessageLabel])
  {
    p_coachingText = &self->_coachingText;
    if ([(UILabel *)self->_coachingText isHidden])
    {
      v11 = 0;
LABEL_15:
      [(UILabel *)*p_coachingText setHidden:v11];
    }
  }
}

- (double)calcFadeDurationIn:(BOOL)a3 withButton:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(UIView *)self->_background alpha];
  if (v5)
  {
    v8 = fmax(1.0 - v7, 0.0);
    [(UILabel *)self->_coachingText alpha];
    v10 = fmax(v8, 1.0 - v9);
    if (v4)
    {
      [(ARCoachingPillButton *)self->_resetButton alpha];
      v12 = 1.0 - v11;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = fmax(v7, 0.0);
    [(UILabel *)self->_coachingText alpha];
    v10 = fmax(v13, v14);
  }

  [(ARCoachingPillButton *)self->_resetButton alpha];
LABEL_6:
  v15 = fmax(v10, v12);
  v16 = 0.3;
  if (!v5)
  {
    v16 = 0.75;
  }

  return v16 * v15;
}

- (void)generateHeuristicsForActive:(BOOL)a3
{
  v3 = a3;
  [(ARCoachingHeuristicCollection *)self->_heuristics clear];
  if (v3)
  {
    heuristics = self->_heuristics;
    v6 = [[ARCoachingHeuristicDelay alloc] initWithDuration:1.0];
    [(ARCoachingHeuristicCollection *)heuristics addHeuristic:v6];
  }

  goal = self->_goal;
  if (goal <= 1)
  {
    if (goal)
    {
      if (goal != 1)
      {
        return;
      }

      v9 = self->_heuristics;
      v10 = objc_alloc_init(ARCoachingHeuristicTracking);
      [(ARCoachingHeuristicCollection *)v9 addHeuristic:v10];

      v8 = off_278BCCED0;
    }

    else
    {
      v8 = off_278BCCED8;
    }
  }

  else
  {
    switch(goal)
    {
      case 2:
        v11 = self->_heuristics;
        v12 = objc_alloc_init(ARCoachingHeuristicTracking);
        [(ARCoachingHeuristicCollection *)v11 addHeuristic:v12];

        v8 = off_278BCCEE0;
        break;
      case 3:
        v13 = self->_heuristics;
        v14 = objc_alloc_init(ARCoachingHeuristicTracking);
        [(ARCoachingHeuristicCollection *)v13 addHeuristic:v14];

        v8 = off_278BCCEA8;
        break;
      case 4:
        v8 = off_278BCCEC0;
        break;
      default:
        return;
    }
  }

  v15 = self->_heuristics;
  v16 = objc_alloc_init(*v8);
  [(ARCoachingHeuristicCollection *)v15 addHeuristic:v16];
}

- (void)buttonPress:(id)a3
{
  v4 = a3;
  if (self->_resetButton == v4)
  {
    v9 = v4;
    if (self->_activatesAutomatically)
    {
      [(ARCoachingOverlayView *)self setActive:0 animated:1];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 coachingOverlayViewDidRequestSessionReset:self];
    }

    else
    {
      session = self->_session;
      v7 = [(ARSession *)session configuration];
      [(ARSession *)session runWithConfiguration:v7 options:3];
    }

    v4 = v9;
  }
}

- (void)updateUIAnimations
{
  if ([(NSMutableArray *)self->_uiAnimationQueue count])
  {
    while (1)
    {
      v7 = [(NSMutableArray *)self->_uiAnimationQueue objectAtIndexedSubscript:0];
      if ([v7 isRunning])
      {
        break;
      }

      if (!self->_uiAnimationQueueRunning)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (v3 = v7, v4 = CACurrentMediaTime(), [v3 coachingDelayTime], v6 = v5, v3, v6 <= v4))
        {
          [v7 startAnimation];
          self->_uiAnimationQueueRunning = 1;
        }

        break;
      }

      [(NSMutableArray *)self->_uiAnimationQueue removeObjectAtIndex:0];
      self->_uiAnimationQueueRunning = 0;

      if (![(NSMutableArray *)self->_uiAnimationQueue count])
      {
        return;
      }
    }
  }
}

- (void)killUIAnimations
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_uiAnimationQueue;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isRunning])
        {
          [v8 stopAnimation:1];
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_uiAnimationQueue removeAllObjects];
  self->_uiAnimationQueueRunning = 0;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)finishAllUIAnimations
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_uiAnimationQueue;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isRunning])
        {
          [v8 stopAnimation:1];
        }

        else
        {
          [v8 startAnimation];
          [v8 stopAnimation:0];
          [v8 finishAnimationAtPosition:0];
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_uiAnimationQueue removeAllObjects];
  self->_uiAnimationQueueRunning = 0;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)orientationChanged
{
  [(ARCoachingAnimationView *)self->_coachingAnimationView orientationChanged];

  [(ARCoachingOverlayView *)self setNeedsUpdateConstraints];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = ARCoachingOverlayView;
  [(ARCoachingOverlayView *)&v7 layoutSubviews];
  [(ARCoachingOverlayView *)self setNeedsUpdateConstraints];
  [(ARCoachingOverlayView *)self bounds];
  v4 = v3;
  [(ARCoachingOverlayView *)self bounds];
  if (v4 >= v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  [(UIView *)self->_background setBounds:0.0, 0.0, v6 * 1.25, v6 * 1.25];
}

- (int64_t)currentDeviceOrientation
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75418] currentDevice];
  currentConstraintDeviceOrientation = [v3 orientation];

  if ((currentConstraintDeviceOrientation - 1) >= 4)
  {
    currentConstraintDeviceOrientation = self->_currentConstraintDeviceOrientation;
    if ((currentConstraintDeviceOrientation - 1) >= 4)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = [MEMORY[0x277D75128] sharedApplication];
      v6 = [v5 connectedScenes];

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v16;
        while (2)
        {
          v10 = 0;
          do
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v15 + 1) + 8 * v10);
            if ([v11 isMemberOfClass:objc_opt_class()])
            {
              v12 = [v11 interfaceOrientation];
              if ((v12 - 1) < 4)
              {
                currentConstraintDeviceOrientation = v12;
                goto LABEL_14;
              }
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      currentConstraintDeviceOrientation = 1;
LABEL_14:
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return currentConstraintDeviceOrientation;
}

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = ARCoachingOverlayView;
  [(ARCoachingOverlayView *)&v4 updateConstraints];
  v3 = [(ARCoachingOverlayView *)self currentDeviceOrientation];
  if (v3 != self->_currentConstraintDeviceOrientation)
  {
    [(ARCoachingOverlayView *)self createConstraintsForDeviceOrientation:v3];
  }
}

- (void)createConstraintsForDeviceOrientation:(int64_t)a3
{
  v5 = [(ARCoachingOverlayView *)self safeAreaLayoutGuide];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __63__ARCoachingOverlayView_createConstraintsForDeviceOrientation___block_invoke;
  v15 = &unk_278BCD5E8;
  v16 = self;
  v17 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32((a3 - 3) < 2), 0x1FuLL)), 0x43670000C3670000, 0x431A0000C31A0000);
  if ((a3 - 3) >= 2)
  {
    v6 = &OBJC_IVAR___ARCoachingOverlayView__resetButtonPortraitVerticalOffset;
  }

  else
  {
    v6 = &OBJC_IVAR___ARCoachingOverlayView__resetButtonLandscapeVerticalOffset;
  }

  dispatch_async(MEMORY[0x277D85CD0], &v12);
  v7 = *(&self->super.super.super.isa + *v6);
  [(NSLayoutConstraint *)self->_resetButtonBottomLayoutConstraint setActive:0, v12, v13, v14, v15, v16, *&v17];
  v8 = [(ARCoachingPillButton *)self->_resetButton bottomAnchor];
  v9 = [v5 bottomAnchor];
  v10 = [v8 constraintGreaterThanOrEqualToAnchor:v9 constant:-v7];
  resetButtonBottomLayoutConstraint = self->_resetButtonBottomLayoutConstraint;
  self->_resetButtonBottomLayoutConstraint = v10;

  [(NSLayoutConstraint *)self->_resetButtonBottomLayoutConstraint setActive:1];
  self->_currentConstraintDeviceOrientation = a3;
}

uint64_t __63__ARCoachingOverlayView_createConstraintsForDeviceOrientation___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 520) setActive:0];
  [*(*(a1 + 32) + 528) setActive:0];
  v2 = [*(*(a1 + 32) + 416) leftAnchor];
  v3 = [*(a1 + 32) centerXAnchor];
  v4 = [v2 constraintEqualToAnchor:v3 constant:*(a1 + 40)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 520);
  *(v5 + 520) = v4;

  v7 = [*(*(a1 + 32) + 416) rightAnchor];
  v8 = [*(a1 + 32) centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:*(a1 + 44)];
  v10 = *(a1 + 32);
  v11 = *(v10 + 528);
  *(v10 + 528) = v9;

  [*(*(a1 + 32) + 520) setActive:1];
  v12 = *(*(a1 + 32) + 528);

  return [v12 setActive:1];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSObject)sessionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionProvider);

  return WeakRetained;
}

@end