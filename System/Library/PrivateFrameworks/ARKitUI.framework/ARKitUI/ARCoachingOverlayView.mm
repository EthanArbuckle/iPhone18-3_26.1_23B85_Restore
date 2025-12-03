@interface ARCoachingOverlayView
- (ARCoachingOverlayView)initWithCoder:(id)coder;
- (ARCoachingOverlayView)initWithFrame:(CGRect)frame;
- (BOOL)checkActivationHeuristics;
- (BOOL)isRelocalizing;
- (CGSize)intrinsicContentSize;
- (NSObject)sessionProvider;
- (double)calcFadeDurationIn:(BOOL)in withButton:(BOOL)button;
- (id)delegate;
- (id)frameWithOverrides:(id)overrides;
- (int64_t)currentDeviceOrientation;
- (void)buttonPress:(id)press;
- (void)createConstraintsForDeviceOrientation:(int64_t)orientation;
- (void)crossFadeCoachingMessage:(int64_t)message;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)doStateAction:(int64_t)action;
- (void)encodeWithCoder:(id)coder;
- (void)fadeOut;
- (void)finishAllUIAnimations;
- (void)generateHeuristicsForActive:(BOOL)active;
- (void)killUIAnimations;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)orientationChanged;
- (void)resolveCoachingMessageWithFrame:(id)frame;
- (void)restartIfActive;
- (void)session:(id)session didAddAnchors:(id)anchors;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didRemoveAnchors:(id)anchors;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)session:(id)session willRunWithConfiguration:(id)configuration;
- (void)setActive:(BOOL)active animated:(BOOL)animated;
- (void)setCoachingMessage:(int64_t)message animationState:(int64_t)state;
- (void)setGoal:(ARCoachingGoal)goal;
- (void)setResetButtonLandscapeVerticalOffset:(float)offset;
- (void)setResetButtonPortraitVerticalOffset:(float)offset;
- (void)setSession:(ARSession *)session;
- (void)setSessionProvider:(NSObject *)sessionProvider;
- (void)setupView;
- (void)startup;
- (void)swapState:(id)state;
- (void)teardown;
- (void)updateCoachingMessagingWithMotionTracker:(BOOL)tracker frame:(id)frame;
- (void)updateConstraints;
- (void)updateFromDisplayLink;
- (void)updateUIAnimations;
- (void)updateWithFrame:(id)frame;
@end

@implementation ARCoachingOverlayView

- (ARCoachingOverlayView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ARCoachingOverlayView;
  v3 = [(ARCoachingOverlayView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ARCoachingOverlayView *)v3 setupView];
  }

  return v4;
}

- (ARCoachingOverlayView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = ARCoachingOverlayView;
  v5 = [(ARCoachingOverlayView *)&v8 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(ARCoachingOverlayView *)v5 setupView];
    if ([coderCopy containsValueForKey:@"goal"])
    {
      -[ARCoachingOverlayView setGoal:](v6, "setGoal:", [coderCopy decodeIntegerForKey:@"goal"]);
    }

    if ([coderCopy containsValueForKey:@"activatesAutomatically"])
    {
      -[ARCoachingOverlayView setActivatesAutomatically:](v6, "setActivatesAutomatically:", [coderCopy decodeBoolForKey:@"activatesAutomatically"]);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ARCoachingOverlayView;
  coderCopy = coder;
  [(ARCoachingOverlayView *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_goal forKey:{@"goal", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_activatesAutomatically forKey:@"activatesAutomatically"];
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
    selfCopy = self;
    _os_log_impl(&dword_23D3AE000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Deallocate the overlay", buf, 0x16u);
  }

  [(ARSession *)self->_session _removeObserver:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76878] object:0];

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
    selfCopy = self;
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

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)self->_coachingText setTextColor:whiteColor];

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
  leftAnchor = [(UILabel *)self->_coachingText leftAnchor];
  centerXAnchor = [(ARCoachingOverlayView *)self centerXAnchor];
  v30 = [leftAnchor constraintEqualToAnchor:centerXAnchor constant:-154.0];
  coachingTextLeftAnchorConstraint = self->_coachingTextLeftAnchorConstraint;
  self->_coachingTextLeftAnchorConstraint = v30;

  rightAnchor = [(UILabel *)self->_coachingText rightAnchor];
  centerXAnchor2 = [(ARCoachingOverlayView *)self centerXAnchor];
  v34 = [rightAnchor constraintEqualToAnchor:centerXAnchor2 constant:154.0];
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
  centerXAnchor3 = [(UIView *)self->_background centerXAnchor];
  centerXAnchor4 = [(ARCoachingOverlayView *)self centerXAnchor];
  v67 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v70[0] = v67;
  centerYAnchor = [(UIView *)self->_background centerYAnchor];
  centerYAnchor2 = [(ARCoachingOverlayView *)self centerYAnchor];
  v64 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v70[1] = v64;
  leftAnchor2 = [(ARCoachingAnimationView *)self->_coachingAnimationView leftAnchor];
  leftAnchor3 = [(ARCoachingOverlayView *)self leftAnchor];
  v61 = [leftAnchor2 constraintEqualToAnchor:leftAnchor3];
  v70[2] = v61;
  topAnchor = [(ARCoachingAnimationView *)self->_coachingAnimationView topAnchor];
  topAnchor2 = [(ARCoachingOverlayView *)self topAnchor];
  v57 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v70[3] = v57;
  rightAnchor2 = [(ARCoachingAnimationView *)self->_coachingAnimationView rightAnchor];
  rightAnchor3 = [(ARCoachingOverlayView *)self rightAnchor];
  v54 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3];
  v70[4] = v54;
  bottomAnchor = [(ARCoachingAnimationView *)self->_coachingAnimationView bottomAnchor];
  bottomAnchor2 = [(ARCoachingOverlayView *)self bottomAnchor];
  v51 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v37 = self->_coachingTextLeftAnchorConstraint;
  v70[5] = v51;
  v70[6] = v37;
  v70[7] = self->_coachingTextRightAnchorConstraint;
  topAnchor3 = [(UILabel *)self->_coachingText topAnchor];
  centerYAnchor3 = [(ARCoachingOverlayView *)self centerYAnchor];
  v39 = [topAnchor3 constraintEqualToAnchor:centerYAnchor3 constant:v36];
  v70[8] = v39;
  centerXAnchor5 = [(ARCoachingPillButton *)self->_resetButton centerXAnchor];
  centerXAnchor6 = [(ARCoachingOverlayView *)self centerXAnchor];
  v42 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v70[9] = v42;
  topAnchor4 = [(ARCoachingPillButton *)self->_resetButton topAnchor];
  bottomAnchor3 = [(UILabel *)self->_coachingText bottomAnchor];
  v45 = [topAnchor4 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:1.0];
  v70[10] = v45;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:11];
  [v58 activateConstraints:v46];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_orientationChanged name:*MEMORY[0x277D76878] object:0];

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
        selfCopy2 = self;
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
        selfCopy2 = self;
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
      selfCopy = self;
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
        selfCopy = self;
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

- (void)setResetButtonLandscapeVerticalOffset:(float)offset
{
  self->_resetButtonLandscapeVerticalOffset = offset;
  self->_currentConstraintDeviceOrientation = 0;
  [(ARCoachingOverlayView *)self setNeedsUpdateConstraints];
}

- (void)setResetButtonPortraitVerticalOffset:(float)offset
{
  self->_resetButtonPortraitVerticalOffset = offset;
  self->_currentConstraintDeviceOrientation = 0;
  [(ARCoachingOverlayView *)self setNeedsUpdateConstraints];
}

- (BOOL)isRelocalizing
{
  if (self->_trackingStateReasonOverride == 4)
  {
    return 1;
  }

  currentFrame = [(ARSession *)self->_session currentFrame];
  v5 = currentFrame;
  v2 = 0;
  if (!self->_isSessionRelocalizingMap && currentFrame)
  {
    camera = [currentFrame camera];
    if ([camera trackingState] == 1)
    {
      camera2 = [v5 camera];
      v2 = [camera2 trackingStateReason] == 4;
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
    selfCopy = self;
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
  metrics = [(ARSession *)self->_session metrics];
  [metrics recordCoachingOverlayUsage:LODWORD(self->_goal)];

  v7 = [ARCoachingFrame alloc];
  currentFrame = [(ARSession *)self->_session currentFrame];
  v9 = [(ARCoachingFrame *)v7 initWithFrame:currentFrame];

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
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)v12 addToRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)didMoveToWindow
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = ARCoachingOverlayView;
  [(ARCoachingOverlayView *)&v12 didMoveToWindow];
  window = [(ARCoachingOverlayView *)self window];

  if (!window)
  {
    v8 = _ARLogCoaching_2();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543618;
      v14 = v10;
      v15 = 2048;
      selfCopy = self;
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
    selfCopy = self;
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
  currentFrame = [(ARSession *)self->_session currentFrame];
  v9 = [(ARCoachingFrame *)v7 initWithFrame:currentFrame];

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
  animationState = [(ARCoachingAnimationView *)self->_coachingAnimationView animationState];
  v6 = animationState > 6 || ((1 << animationState) & 0x52) == 0;
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

- (void)session:(id)session didUpdateFrame:(id)frame
{
  frameCopy = frame;
  v6 = [[ARCoachingFrame alloc] initWithFrame:frameCopy];

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

- (id)frameWithOverrides:(id)overrides
{
  v37 = *MEMORY[0x277D85DE8];
  overridesCopy = overrides;
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
      selfCopy4 = self;
      _os_log_impl(&dword_23D3AE000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Overriding ARFrame tracking state to be .normal", &v31, 0x16u);
    }

    camera = [overridesCopy camera];
    [camera setTrackingState:2];

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
      selfCopy4 = self;
      _os_log_impl(&dword_23D3AE000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Overriding ARFrame tracking state to be .limited", &v31, 0x16u);
    }

    camera2 = [overridesCopy camera];
    [camera2 setTrackingState:1];

    trackingStateReasonOverride = self->_trackingStateReasonOverride;
  }

  camera3 = [overridesCopy camera];
  [camera3 setTrackingStateReason:trackingStateReasonOverride];

LABEL_10:
  geoTrackingStatus = [overridesCopy geoTrackingStatus];

  if (!geoTrackingStatus)
  {
    initialStatus = [MEMORY[0x277CE52A0] initialStatus];
    [overridesCopy setGeoTrackingStatus:initialStatus];
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
      selfCopy4 = self;
      v35 = 2048;
      v36 = geoTrackingStateOverride;
      _os_log_impl(&dword_23D3AE000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Overriding ARFrame geo tracking state to be state %ld", &v31, 0x20u);
    }

    v21 = self->_geoTrackingStateOverride;
    geoTrackingStatus2 = [overridesCopy geoTrackingStatus];
    [geoTrackingStatus2 setState:v21];
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
      selfCopy4 = self;
      v35 = 2048;
      v36 = geoTrackingStateReasonOverride;
      _os_log_impl(&dword_23D3AE000, v23, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Overriding ARFrame geo tracking state reason to be state %ld", &v31, 0x20u);
    }

    v27 = self->_geoTrackingStateReasonOverride;
    geoTrackingStatus3 = [overridesCopy geoTrackingStatus];
    [geoTrackingStatus3 setStateReason:v27];
  }

LABEL_20:
  v29 = *MEMORY[0x277D85DE8];

  return overridesCopy;
}

- (void)session:(id)session willRunWithConfiguration:(id)configuration
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

- (void)session:(id)session didFailWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = _ARLogCoaching_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543618;
    v14 = v8;
    v15 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23D3AE000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Coaching recieved session failure callback", buf, 0x16u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__ARCoachingOverlayView_session_didFailWithError___block_invoke;
  v11[3] = &unk_278BCD520;
  v11[4] = self;
  v12 = errorCopy;
  v9 = errorCopy;
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

- (void)session:(id)session didRemoveAnchors:(id)anchors
{
  anchorsCopy = anchors;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ARCoachingOverlayView_session_didRemoveAnchors___block_invoke;
  v7[3] = &unk_278BCD520;
  v7[4] = self;
  v8 = anchorsCopy;
  v6 = anchorsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)session:(id)session didAddAnchors:(id)anchors
{
  anchorsCopy = anchors;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ARCoachingOverlayView_session_didAddAnchors___block_invoke;
  v7[3] = &unk_278BCD520;
  v7[4] = self;
  v8 = anchorsCopy;
  v6 = anchorsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (kARCoachingSessionProviderSessionContext == context)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sessionProvider);
    session = [WeakRetained session];
    [(ARCoachingOverlayView *)self setSession:session];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ARCoachingOverlayView;
    [(ARCoachingOverlayView *)&v9 observeValueForKeyPath:path ofObject:object change:change context:?];
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

- (void)resolveCoachingMessageWithFrame:(id)frame
{
  frameCopy = frame;
  goal = self->_goal;
  v6 = 4;
  v29 = frameCopy;
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
    geoTrackingStatus = [frameCopy geoTrackingStatus];

    if (!geoTrackingStatus)
    {
      v10 = 6;
      goto LABEL_50;
    }

    geoTrackingStatus2 = [v29 geoTrackingStatus];
    stateReason = [geoTrackingStatus2 stateReason];

    if (stateReason == 7)
    {
      v10 = 8;
LABEL_50:
      selfCopy2 = self;
      v21 = 7;
      goto LABEL_37;
    }

    geoTrackingStatus3 = [v29 geoTrackingStatus];
    if ([geoTrackingStatus3 stateReason] == 3)
    {
      camera = [v29 camera];
      if ([camera trackingStateReason] == 1)
      {

LABEL_49:
        v10 = 9;
        goto LABEL_50;
      }

      camera2 = [v29 camera];
      trackingStateReason = [camera2 trackingStateReason];

      if (trackingStateReason == 2)
      {
        goto LABEL_49;
      }
    }

    else
    {
    }

    geoTrackingStatus4 = [v29 geoTrackingStatus];
    stateReason2 = [geoTrackingStatus4 stateReason];

    if (stateReason2 == 8)
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

  isMoving = [(ARCoachingMotionTracker *)self->_motionTracker isMoving];
  if (isMoving)
  {
    v10 = v19;
  }

  else
  {
    v10 = v18;
  }

  if (isMoving)
  {
    v21 = 4;
  }

  else
  {
    v21 = v17;
  }

  selfCopy2 = self;
LABEL_37:
  [(ARCoachingOverlayView *)selfCopy2 setCoachingMessage:v10 animationState:v21];
}

- (void)setCoachingMessage:(int64_t)message animationState:(int64_t)state
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_coachingMessageType != message || [(ARCoachingAnimationView *)self->_coachingAnimationView animationState]!= state)
  {
    v7 = CACurrentMediaTime();
    if ([(ARCoachingOverlayView *)self isHidden])
    {
      self->_coachingMessageType = message;
      v8 = getCoachingText(message);
      [(UILabel *)self->_coachingText setText:v8];

      if ([(ARCoachingOverlayView *)self hideCoachingMessageLabel])
      {
        delegate = [(ARCoachingOverlayView *)self delegate];
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
            selfCopy2 = self;
            _os_log_impl(&dword_23D3AE000, v11, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Asking delegate to display the coaching message", &v24, 0x16u);
          }

          delegate2 = [(ARCoachingOverlayView *)self delegate];
          v15 = getCoachingText(message);
          [delegate2 displayCoachingMessage:v15 forCoachingView:self];
        }
      }

LABEL_17:
      [(ARCoachingAnimationView *)self->_coachingAnimationView setAnimationState:state];
      self->_nextCoachingMessageType = 0;
      self->_lastCoachingUpdateTime = v7;
      goto LABEL_18;
    }

    if (v7 - self->_lastCoachingUpdateTime >= 1.0)
    {
      [(ARCoachingOverlayView *)self crossFadeCoachingMessage:message];
      if ([(ARCoachingOverlayView *)self hideCoachingMessageLabel])
      {
        delegate3 = [(ARCoachingOverlayView *)self delegate];
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
            selfCopy2 = self;
            _os_log_impl(&dword_23D3AE000, v18, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Asking delegate to display the coaching message", &v24, 0x16u);
          }

          delegate4 = [(ARCoachingOverlayView *)self delegate];
          v22 = getCoachingText(message);
          [delegate4 displayCoachingMessage:v22 forCoachingView:self];
        }
      }

      goto LABEL_17;
    }

    self->_nextCoachingMessageType = message;
    self->_nextCoachingAnimationState = state;
  }

LABEL_18:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)crossFadeCoachingMessage:(int64_t)message
{
  if (self->_coachingMessageType != message)
  {
    v14[5] = v6;
    v14[6] = v5;
    v14[11] = v3;
    v14[12] = v4;
    self->_coachingMessageType = message;
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
    v13[5] = message;
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

- (void)doStateAction:(int64_t)action
{
  v4 = [(ARCoachingState *)self->_state doAction:action];
  if (v4)
  {
    v5 = v4;
    [(ARCoachingOverlayView *)self swapState:v4];
    v4 = v5;
  }
}

- (void)swapState:(id)state
{
  v26 = *MEMORY[0x277D85DE8];
  stateCopy = state;
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
    selfCopy2 = self;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_23D3AE000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Exited coaching state %@", &v20, 0x20u);
  }

  objc_storeStrong(&self->_state, state);
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
    selfCopy2 = self;
    v24 = 2112;
    v25 = v18;
    _os_log_impl(&dword_23D3AE000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Entered coaching state %@", &v20, 0x20u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateWithFrame:(id)frame
{
  frameCopy = frame;
  coachingSessionCache = self->_coachingSessionCache;
  v6 = frameCopy;
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
    currentFrame = [(ARSession *)self->_session currentFrame];
    v7 = [(ARCoachingFrame *)v4 initWithFrame:currentFrame];

    v6 = [(ARCoachingOverlayView *)self frameWithOverrides:v7];
    [(ARCoachingOverlayView *)self updateCoachingMessagingWithMotionTracker:0 frame:v6];
    [(ARCoachingOverlayView *)self updateUIAnimations];
  }
}

- (void)updateCoachingMessagingWithMotionTracker:(BOOL)tracker frame:(id)frame
{
  trackerCopy = tracker;
  frameCopy = frame;
  coachingRequirements = self->_coachingRequirements;
  requirements = [(ARCoachingState *)self->_state requirements];
  v8 = [(ARCoachingHeuristicCollection *)self->_heuristics requirements]| requirements;
  self->_coachingRequirements = v8;
  if (trackerCopy && ([(ARCoachingMotionTracker *)self->_motionTracker didStartMoving]|| [(ARCoachingMotionTracker *)self->_motionTracker didStopMoving]) || v8 != coachingRequirements || self->_goal == 4)
  {
    [(ARCoachingOverlayView *)self resolveCoachingMessageWithFrame:frameCopy];
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

- (double)calcFadeDurationIn:(BOOL)in withButton:(BOOL)button
{
  buttonCopy = button;
  inCopy = in;
  [(UIView *)self->_background alpha];
  if (inCopy)
  {
    v8 = fmax(1.0 - v7, 0.0);
    [(UILabel *)self->_coachingText alpha];
    v10 = fmax(v8, 1.0 - v9);
    if (buttonCopy)
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
  if (!inCopy)
  {
    v16 = 0.75;
  }

  return v16 * v15;
}

- (void)generateHeuristicsForActive:(BOOL)active
{
  activeCopy = active;
  [(ARCoachingHeuristicCollection *)self->_heuristics clear];
  if (activeCopy)
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

- (void)buttonPress:(id)press
{
  pressCopy = press;
  if (self->_resetButton == pressCopy)
  {
    v9 = pressCopy;
    if (self->_activatesAutomatically)
    {
      [(ARCoachingOverlayView *)self setActive:0 animated:1];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      configuration = objc_loadWeakRetained(&self->_delegate);
      [configuration coachingOverlayViewDidRequestSessionReset:self];
    }

    else
    {
      session = self->_session;
      configuration = [(ARSession *)session configuration];
      [(ARSession *)session runWithConfiguration:configuration options:3];
    }

    pressCopy = v9;
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  currentConstraintDeviceOrientation = [currentDevice orientation];

  if ((currentConstraintDeviceOrientation - 1) >= 4)
  {
    currentConstraintDeviceOrientation = self->_currentConstraintDeviceOrientation;
    if ((currentConstraintDeviceOrientation - 1) >= 4)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      connectedScenes = [mEMORY[0x277D75128] connectedScenes];

      v7 = [connectedScenes countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(connectedScenes);
            }

            v11 = *(*(&v15 + 1) + 8 * v10);
            if ([v11 isMemberOfClass:objc_opt_class()])
            {
              interfaceOrientation = [v11 interfaceOrientation];
              if ((interfaceOrientation - 1) < 4)
              {
                currentConstraintDeviceOrientation = interfaceOrientation;
                goto LABEL_14;
              }
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [connectedScenes countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  currentDeviceOrientation = [(ARCoachingOverlayView *)self currentDeviceOrientation];
  if (currentDeviceOrientation != self->_currentConstraintDeviceOrientation)
  {
    [(ARCoachingOverlayView *)self createConstraintsForDeviceOrientation:currentDeviceOrientation];
  }
}

- (void)createConstraintsForDeviceOrientation:(int64_t)orientation
{
  safeAreaLayoutGuide = [(ARCoachingOverlayView *)self safeAreaLayoutGuide];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __63__ARCoachingOverlayView_createConstraintsForDeviceOrientation___block_invoke;
  v15 = &unk_278BCD5E8;
  selfCopy = self;
  v17 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32((orientation - 3) < 2), 0x1FuLL)), 0x43670000C3670000, 0x431A0000C31A0000);
  if ((orientation - 3) >= 2)
  {
    v6 = &OBJC_IVAR___ARCoachingOverlayView__resetButtonPortraitVerticalOffset;
  }

  else
  {
    v6 = &OBJC_IVAR___ARCoachingOverlayView__resetButtonLandscapeVerticalOffset;
  }

  dispatch_async(MEMORY[0x277D85CD0], &v12);
  v7 = *(&self->super.super.super.isa + *v6);
  [(NSLayoutConstraint *)self->_resetButtonBottomLayoutConstraint setActive:0, v12, v13, v14, v15, selfCopy, *&v17];
  bottomAnchor = [(ARCoachingPillButton *)self->_resetButton bottomAnchor];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v10 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:-v7];
  resetButtonBottomLayoutConstraint = self->_resetButtonBottomLayoutConstraint;
  self->_resetButtonBottomLayoutConstraint = v10;

  [(NSLayoutConstraint *)self->_resetButtonBottomLayoutConstraint setActive:1];
  self->_currentConstraintDeviceOrientation = orientation;
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