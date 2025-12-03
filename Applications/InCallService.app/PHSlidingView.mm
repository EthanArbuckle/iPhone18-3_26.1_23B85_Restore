@interface PHSlidingView
- (BOOL)isCallDueToMountedState;
- (CGRect)lockButtonDimension;
- (CGRect)volumeButtonDimension;
- (PHSlidingView)initWithFrame:(CGRect)frame;
- (PHSlidingViewDelegate)delegate;
- (double)animatedSliderTopConstraintConstant;
- (double)distanceBetweenMiddleSliders;
- (double)medicalIDSliderBottomConstraintConstant;
- (double)sliderButtonWidth;
- (double)titleDistanceFromTop;
- (id)_createPowerDownSlider;
- (void)_animatePowerDown;
- (void)_powerOff;
- (void)_readIODeviceSupportsFindMy;
- (void)_readShouldPowerDownViewShowFindMyAlert;
- (void)_updatePowerOffSliderExclusionPath;
- (void)clearClawHoldInitialTimer;
- (void)clearMetricItems;
- (void)clearReleaseToCallState;
- (void)clearReleaseToCallTimer;
- (void)clearReleaseToCallVoiceLoopTimer;
- (void)commonInit;
- (void)createFindMyUI;
- (void)createHintView;
- (void)createPowerDownConstraints;
- (void)didFinishSOSSliding:(unint64_t)sliding;
- (void)didFinishSlideForSlidingButton:(id)button;
- (void)didSuppressFindMy;
- (void)hideHardwareButtonView;
- (void)interactiveStartWithCountdownModel:(id)model;
- (void)interactiveStop:(id)stop;
- (void)invalidateCountdownAndStopSounds;
- (void)layoutSubviews;
- (void)repeatingUpdateAnimatedSliderForCountdownNumber:(unint64_t)number forModel:(id)model;
- (void)resetAnimatedSlider;
- (void)setAnimatedSliderCompletion:(id)completion;
- (void)setMedicalIDSlidingButtonCompletionBlock:(id)block;
- (void)setSlidingViewState:(unint64_t)state;
- (void)setUpConstraints;
- (void)showHardwareButtonView;
- (void)slidingButton:(id)button didSlideToProportion:(double)proportion;
- (void)startMotionStateTracking;
- (void)startVoiceLoopMessagePlaybackWithMessageType:(int64_t)type;
- (void)stopFlash;
- (void)stopVoiceLoopMessagePlayback;
- (void)toggleFlash;
- (void)updateAnimatedSliderForCountdownNumber:(unint64_t)number forTotalCount:(double)count completion:(id)completion;
- (void)updateAnimatedSliderForCountdownNumber:(unint64_t)number forTotalCount:(unint64_t)count afterDelay:(double)delay completion:(id)completion;
- (void)updateMiddleViewSliderConstraintConstants;
@end

@implementation PHSlidingView

- (PHSlidingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PHSlidingView;
  v3 = [(PHSlidingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHSlidingView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v66 = objc_alloc_init(SPBeaconManager);
  [(PHSlidingView *)self setBeaconManager:?];
  [(PHSlidingView *)self _readIODeviceSupportsFindMy];
  [(PHSlidingView *)self _readShouldPowerDownViewShowFindMyAlert];
  v3 = dispatch_queue_create("com.apple.incallservice.slidingView.avCapture", 0);
  avCaptureDispatchQueue = self->_avCaptureDispatchQueue;
  self->_avCaptureDispatchQueue = v3;

  v5 = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
  avCaptureDevice = self->_avCaptureDevice;
  self->_avCaptureDevice = v5;

  if (+[SOSUtilities isMountStateTrackingEnabled])
  {
    v7 = objc_alloc_init(NSOperationQueue);
    motionActivityQueue = self->_motionActivityQueue;
    self->_motionActivityQueue = v7;

    v9 = objc_alloc_init(NSMutableArray);
    motionActivityList = self->_motionActivityList;
    self->_motionActivityList = v9;

    v11 = objc_alloc_init(CMMotionActivityManager);
    cmMotionActivityManager = self->_cmMotionActivityManager;
    self->_cmMotionActivityManager = v11;
  }

  v13 = [[PHSlidingButton alloc] initWithSlidingButtonType:7 appearanceType:0 callState:2];
  animatedSlidingButton = self->_animatedSlidingButton;
  self->_animatedSlidingButton = v13;

  [(PHSlidingButton *)self->_animatedSlidingButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PHSlidingButton *)self->_animatedSlidingButton setDelegate:self];
  [(PHSlidingView *)self addSubview:self->_animatedSlidingButton];
  v15 = [[PHSlidingButton alloc] initWithSlidingButtonType:9 appearanceType:0 callState:2];
  medicalIDSlidingButton = self->_medicalIDSlidingButton;
  self->_medicalIDSlidingButton = v15;

  [(PHSlidingButton *)self->_medicalIDSlidingButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PHSlidingButton *)self->_medicalIDSlidingButton setDelegate:self];
  [(PHSlidingView *)self addSubview:self->_medicalIDSlidingButton];
  _createPowerDownSlider = [(PHSlidingView *)self _createPowerDownSlider];
  powerOffSlidingButton = self->_powerOffSlidingButton;
  self->_powerOffSlidingButton = _createPowerDownSlider;

  [(PHSlidingView *)self addSubview:self->_powerOffSlidingButton];
  v19 = objc_alloc_init(UILabel);
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v19;

  [(UILabel *)self->_descriptionLabel setTextAlignment:1];
  [(UILabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [UIFont systemFontOfSize:15.0];
  [(UILabel *)self->_descriptionLabel setFont:v21];

  v22 = +[UIColor whiteColor];
  [(UILabel *)self->_descriptionLabel setTextColor:v22];

  [(UILabel *)self->_descriptionLabel setNumberOfLines:0];
  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"SOS_RELEASE_TO_CALL_SUBTITLE_INITIAL" value:&stru_100361FD0 table:@"InCallService"];
  [(UILabel *)self->_descriptionLabel setText:v24];

  +[SOSUtilities clawReleaseToCallSupport];
  if (v25 == 0.0)
  {
    [(UILabel *)self->_descriptionLabel setAlpha:0.0];
  }

  [(PHSlidingView *)self addSubview:self->_descriptionLabel];
  v26 = [SBUIShapeView alloc];
  v27 = +[UIScreen mainScreen];
  [v27 bounds];
  v28 = [v26 initWithFrame:?];
  darkeningUnderlayView = self->_darkeningUnderlayView;
  self->_darkeningUnderlayView = v28;

  v30 = self->_darkeningUnderlayView;
  v31 = +[UIColor blackColor];
  [(SBUIShapeView *)v30 setFillColor:v31];

  [(SBUIShapeView *)self->_darkeningUnderlayView setFillRule:1];
  [(SBUIShapeView *)self->_darkeningUnderlayView setAlpha:0.0];
  [(PHSlidingView *)self addSubview:self->_darkeningUnderlayView];
  v32 = [SBUIShapeView alloc];
  v33 = +[UIScreen mainScreen];
  [v33 bounds];
  v34 = [v32 initWithFrame:?];
  darkeningOverlayView = self->_darkeningOverlayView;
  self->_darkeningOverlayView = v34;

  v36 = self->_darkeningOverlayView;
  v37 = +[UIColor blackColor];
  [(SBUIShapeView *)v36 setBackgroundColor:v37];

  [(SBUIShapeView *)self->_darkeningOverlayView setAlpha:0.0];
  [(PHSlidingView *)self addSubview:self->_darkeningOverlayView];
  v38 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v38;

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = [UIFont boldSystemFontOfSize:34.0];
  [(UILabel *)self->_titleLabel setFont:v40];

  v41 = +[UIColor whiteColor];
  [(UILabel *)self->_titleLabel setTextColor:v41];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v42 = +[NSBundle mainBundle];
  v43 = [v42 localizedStringForKey:@"SOS_RELEASE_TO_CALL_LABEL" value:&stru_100361FD0 table:@"InCallService"];
  [(UILabel *)self->_titleLabel setText:v43];

  [(UILabel *)self->_titleLabel setAlpha:0.0];
  [(PHSlidingView *)self addSubview:self->_titleLabel];
  v44 = [UIView alloc];
  [(PHSlidingView *)self sliderButtonWidth];
  v46 = v45;
  [(PHSlidingView *)self volumeButtonDimension];
  v47 = [v44 initWithFrame:{0.0, 0.0, v46, CGRectGetHeight(v68)}];
  volumeButtonHighlightView = self->_volumeButtonHighlightView;
  self->_volumeButtonHighlightView = v47;

  [(UIView *)self->_volumeButtonHighlightView setTranslatesAutoresizingMaskIntoConstraints:0];
  v49 = +[UIColor systemRedColor];
  [(UIView *)self->_volumeButtonHighlightView setBackgroundColor:v49];

  [(PHSlidingView *)self sliderButtonWidth];
  v51 = v50 * 0.5;
  layer = [(UIView *)self->_volumeButtonHighlightView layer];
  [layer setCornerRadius:v51];

  if ((SBSUIHardwareButtonHintViewsSupported() & 1) == 0)
  {
    [(UIView *)self->_volumeButtonHighlightView setAlpha:0.0];
  }

  [(PHSlidingView *)self addSubview:self->_volumeButtonHighlightView];
  v53 = [UIView alloc];
  [(PHSlidingView *)self sliderButtonWidth];
  v55 = v54;
  [(PHSlidingView *)self lockButtonDimension];
  v56 = [v53 initWithFrame:{0.0, 0.0, v55, CGRectGetHeight(v69)}];
  lockButtonHighlightView = self->_lockButtonHighlightView;
  self->_lockButtonHighlightView = v56;

  [(UIView *)self->_lockButtonHighlightView setTranslatesAutoresizingMaskIntoConstraints:0];
  v58 = +[UIColor systemRedColor];
  [(UIView *)self->_lockButtonHighlightView setBackgroundColor:v58];

  [(PHSlidingView *)self sliderButtonWidth];
  v60 = v59 * 0.5;
  layer2 = [(UIView *)self->_lockButtonHighlightView layer];
  [layer2 setCornerRadius:v60];

  if ((SBSUIHardwareButtonHintViewsSupported() & 1) == 0)
  {
    [(UIView *)self->_lockButtonHighlightView setAlpha:0.0];
  }

  [(PHSlidingView *)self addSubview:self->_lockButtonHighlightView];
  v62 = objc_alloc_init(PHSOSAlertController);
  alertController = self->_alertController;
  self->_alertController = v62;

  v64 = +[NSDate date];
  [v64 timeIntervalSince1970];
  self->_sliderViewCreationTime = v65;

  [(PHSlidingView *)self setUpConstraints];
  [(PHSlidingView *)self clearMetricItems];
  if (SBSUIHardwareButtonHintViewsSupported())
  {
    [(UIView *)self->_lockButtonHighlightView setHidden:1];
    [(UIView *)self->_volumeButtonHighlightView setHidden:1];
  }
}

- (void)createHintView
{
  v3 = +[SOSManager sharedInstance];
  currentSOSButtonPressState = [v3 currentSOSButtonPressState];

  if ([currentSOSButtonPressState volumeUpPressed] && !objc_msgSend(currentSOSButtonPressState, "volumeDownPressed") || (objc_msgSend(currentSOSButtonPressState, "volumeUpPressed") & 1) == 0 && (objc_msgSend(currentSOSButtonPressState, "volumeDownPressed") & 1) != 0 || objc_msgSend(currentSOSButtonPressState, "volumeUpPressed") && objc_msgSend(currentSOSButtonPressState, "volumeDownPressed"))
  {
    volumeButtonHintViewVisibilityControlling = [(PHSlidingView *)self volumeButtonHintViewVisibilityControlling];

    if (volumeButtonHintViewVisibilityControlling)
    {
      volumeButtonHintViewVisibilityControlling2 = [(PHSlidingView *)self volumeButtonHintViewVisibilityControlling];
      [volumeButtonHintViewVisibilityControlling2 invalidate];
    }

    v6 = SBSUIRegisterHardwareButtonHintView();
    [(PHSlidingView *)self setVolumeButtonHintViewVisibilityControlling:v6];

    volumeButtonHintViewVisibilityControlling3 = [(PHSlidingView *)self volumeButtonHintViewVisibilityControlling];
    [volumeButtonHintViewVisibilityControlling3 setContentVisibility:1 animationSettings:0];
  }

  v8 = SBSUIRegisterHardwareButtonHintView();
  [(PHSlidingView *)self setSideButtonHintViewVisibilityControlling:v8];

  sideButtonHintViewVisibilityControlling = [(PHSlidingView *)self sideButtonHintViewVisibilityControlling];
  [sideButtonHintViewVisibilityControlling setContentVisibility:1 animationSettings:0];
}

- (void)hideHardwareButtonView
{
  if (SBSUIHardwareButtonHintViewsSupported())
  {
    sideButtonHintViewVisibilityControlling = [(PHSlidingView *)self sideButtonHintViewVisibilityControlling];
    [sideButtonHintViewVisibilityControlling invalidate];

    volumeButtonHintViewVisibilityControlling = [(PHSlidingView *)self volumeButtonHintViewVisibilityControlling];
    [volumeButtonHintViewVisibilityControlling invalidate];

    [(UIView *)self->_lockButtonHighlightView setHidden:1];
    volumeButtonHighlightView = self->_volumeButtonHighlightView;

    [(UIView *)volumeButtonHighlightView setHidden:1];
  }

  else
  {
    volumeButtonHighlightView = [(PHSlidingView *)self volumeButtonHighlightView];
    [volumeButtonHighlightView setAlpha:0.0];

    lockButtonHighlightView = [(PHSlidingView *)self lockButtonHighlightView];
    [lockButtonHighlightView setAlpha:0.0];
  }
}

- (void)showHardwareButtonView
{
  if (SBSUIHardwareButtonHintViewsSupported())
  {
    [(PHSlidingView *)self createHintView];
    [(UIView *)self->_lockButtonHighlightView setHidden:0];
    volumeButtonHighlightView = self->_volumeButtonHighlightView;

    [(UIView *)volumeButtonHighlightView setHidden:0];
  }

  else
  {
    volumeButtonHighlightView = [(PHSlidingView *)self volumeButtonHighlightView];
    [volumeButtonHighlightView setAlpha:1.0];

    lockButtonHighlightView = [(PHSlidingView *)self lockButtonHighlightView];
    [lockButtonHighlightView setAlpha:1.0];
  }
}

- (void)setSlidingViewState:(unint64_t)state
{
  if (self->_slidingViewState == state)
  {
    return;
  }

  self->_slidingViewState = state;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    slidingViewState = self->_slidingViewState;
    *buf = 134217984;
    v101 = slidingViewState;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSlidingView,slidingViewState:%lu", buf, 0xCu);
  }

  if (state <= 1)
  {
    if (!state)
    {
      +[SOSUtilities clawReleaseToCallSupport];
      v74 = v73 != 0.0;
      descriptionLabel = [(PHSlidingView *)self descriptionLabel];
      descriptionLabel2 = descriptionLabel;
      if (v74)
      {
        [descriptionLabel setAlpha:1.0];

        descriptionLabel2 = [(PHSlidingView *)self descriptionLabel];
        v77 = +[NSBundle mainBundle];
        v78 = [v77 localizedStringForKey:@"SOS_RELEASE_TO_CALL_SUBTITLE_INITIAL" value:&stru_100361FD0 table:@"InCallService"];
        [descriptionLabel2 setText:v78];
      }

      else
      {
        [descriptionLabel setAlpha:0.0];
      }

      titleLabel = [(PHSlidingView *)self titleLabel];
      [titleLabel setAlpha:0.0];

      animatedSlidingButton = [(PHSlidingView *)self animatedSlidingButton];
      [animatedSlidingButton setAlpha:1.0];

      if ([(PHSlidingView *)self hasTwoMiddleSliders])
      {
        medicalIDSlidingButton = [(PHSlidingView *)self medicalIDSlidingButton];
        [medicalIDSlidingButton setAlpha:1.0];
      }

      [(PHSlidingView *)self updateMiddleViewSliderConstraintConstants];
      powerOffSlidingButton = [(PHSlidingView *)self powerOffSlidingButton];
      [powerOffSlidingButton setAlpha:1.0];

      if ([(PHSlidingView *)self deviceSupportsFindMy])
      {
        findMyButton = [(PHSlidingView *)self findMyButton];
        [findMyButton setAlpha:1.0];
      }

      goto LABEL_13;
    }

    if (state == 1)
    {
      descriptionLabel3 = [(PHSlidingView *)self descriptionLabel];
      [descriptionLabel3 setAlpha:0.0];

      titleLabel2 = [(PHSlidingView *)self titleLabel];
      [titleLabel2 setAlpha:0.0];

      animatedSlidingButton2 = [(PHSlidingView *)self animatedSlidingButton];
      [animatedSlidingButton2 setAlpha:1.0];

      +[SOSUtilities clawReleaseToCallSupport];
      if (v19 != 0.0)
      {
        medicalIDSlidingButton2 = [(PHSlidingView *)self medicalIDSlidingButton];
        [medicalIDSlidingButton2 setAlpha:0.0];

        powerOffSlidingButton2 = [(PHSlidingView *)self powerOffSlidingButton];
        [powerOffSlidingButton2 setAlpha:0.0];

        if ([(PHSlidingView *)self deviceSupportsFindMy])
        {
          findMyButton2 = [(PHSlidingView *)self findMyButton];
          [findMyButton2 setAlpha:0.0];
        }

        titleLabel3 = [(PHSlidingView *)self titleLabel];
        [titleLabel3 setAlpha:1.0];

        titleLabel4 = [(PHSlidingView *)self titleLabel];
        v25 = +[NSBundle mainBundle];
        v26 = [v25 localizedStringForKey:@"SOS_HOLDING_LABEL" value:&stru_100361FD0 table:@"InCallService"];
        [titleLabel4 setText:v26];

        v27 = +[UIColor whiteColor];
        titleLabel5 = [(PHSlidingView *)self titleLabel];
        [titleLabel5 setTextColor:v27];

        descriptionLabel4 = [(PHSlidingView *)self descriptionLabel];
        [descriptionLabel4 setAlpha:0.0];

        [(PHSlidingView *)self showHardwareButtonView];
        [(PHSlidingView *)self volumeButtonDimension];
        x = v102.origin.x;
        y = v102.origin.y;
        width = v102.size.width;
        height = v102.size.height;
        v34 = CGRectGetHeight(v102);
        volumeButtonHighlightViewCenterYConstraint = [(PHSlidingView *)self volumeButtonHighlightViewCenterYConstraint];
        [volumeButtonHighlightViewCenterYConstraint setConstant:y + v34 * 0.5];

        v103.origin.x = x;
        v103.origin.y = y;
        v103.size.width = width;
        v103.size.height = height;
        v36 = CGRectGetHeight(v103);
        volumeButtonHighlightViewHeightConstraint = [(PHSlidingView *)self volumeButtonHighlightViewHeightConstraint];
        [volumeButtonHighlightViewHeightConstraint setConstant:v36];
      }
    }
  }

  else
  {
    switch(state)
    {
      case 2uLL:
        [(PHSlidingView *)self setReleaseToCallStartTime:CFAbsoluteTimeGetCurrent()];
        descriptionLabel5 = [(PHSlidingView *)self descriptionLabel];
        [descriptionLabel5 setAlpha:0.0];

        titleLabel6 = [(PHSlidingView *)self titleLabel];
        [titleLabel6 setAlpha:1.0];

        titleLabel7 = [(PHSlidingView *)self titleLabel];
        v41 = +[NSBundle mainBundle];
        v42 = [v41 localizedStringForKey:@"SOS_RELEASE_TO_CALL_LABEL" value:&stru_100361FD0 table:@"InCallService"];
        [titleLabel7 setText:v42];

        v43 = +[UIColor systemRedColor];
        titleLabel8 = [(PHSlidingView *)self titleLabel];
        [titleLabel8 setTextColor:v43];

        animatedSlidingButton3 = [(PHSlidingView *)self animatedSlidingButton];
        [animatedSlidingButton3 setAlpha:0.0];

        medicalIDSlidingButton3 = [(PHSlidingView *)self medicalIDSlidingButton];
        [medicalIDSlidingButton3 setAlpha:0.0];

        powerOffSlidingButton3 = [(PHSlidingView *)self powerOffSlidingButton];
        [powerOffSlidingButton3 setAlpha:0.0];

        if ([(PHSlidingView *)self deviceSupportsFindMy])
        {
          findMyButton3 = [(PHSlidingView *)self findMyButton];
          [findMyButton3 setAlpha:0.0];
        }

        [(PHSlidingView *)self showHardwareButtonView];
        [(PHSlidingView *)self volumeButtonDimension];
        v49 = v104.origin.x;
        v50 = v104.origin.y;
        v51 = v104.size.width;
        v52 = v104.size.height;
        v53 = CGRectGetHeight(v104);
        volumeButtonHighlightViewCenterYConstraint2 = [(PHSlidingView *)self volumeButtonHighlightViewCenterYConstraint];
        [volumeButtonHighlightViewCenterYConstraint2 setConstant:v50 + v53 * 0.5];

        v105.origin.x = v49;
        v105.origin.y = v50;
        v105.size.width = v51;
        v105.size.height = v52;
        v55 = CGRectGetHeight(v105);
        volumeButtonHighlightViewHeightConstraint2 = [(PHSlidingView *)self volumeButtonHighlightViewHeightConstraint];
        [volumeButtonHighlightViewHeightConstraint2 setConstant:v55];

        shouldMaxVolumeCompletionBlock = [(PHSlidingView *)self shouldMaxVolumeCompletionBlock];
        LOBYTE(volumeButtonHighlightViewHeightConstraint2) = shouldMaxVolumeCompletionBlock == 0;

        if ((volumeButtonHighlightViewHeightConstraint2 & 1) == 0)
        {
          shouldMaxVolumeCompletionBlock2 = [(PHSlidingView *)self shouldMaxVolumeCompletionBlock];
          shouldMaxVolumeCompletionBlock2[2](shouldMaxVolumeCompletionBlock2, 1);
        }

        [(PHSlidingView *)self startVoiceLoopMessagePlaybackWithMessageType:102];
        releaseToCallVoiceLoopTimer = [(PHSlidingView *)self releaseToCallVoiceLoopTimer];
        if (releaseToCallVoiceLoopTimer)
        {
        }

        else
        {
          +[SOSUtilities clawReleaseToCallSupport];
          if (v84 > 0.0)
          {
            objc_initWeak(buf, self);
            v98[0] = _NSConcreteStackBlock;
            v98[1] = 3221225472;
            v98[2] = sub_100099700;
            v98[3] = &unk_100356CE8;
            objc_copyWeak(&v99, buf);
            v85 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v98 block:3.0];
            [(PHSlidingView *)self setReleaseToCallVoiceLoopTimer:v85];

            releaseToCallVoiceLoopTimer2 = [(PHSlidingView *)self releaseToCallVoiceLoopTimer];
            fireDate = [releaseToCallVoiceLoopTimer2 fireDate];
            v88 = [fireDate dateByAddingTimeInterval:1.0];
            releaseToCallVoiceLoopTimer3 = [(PHSlidingView *)self releaseToCallVoiceLoopTimer];
            [releaseToCallVoiceLoopTimer3 setFireDate:v88];

            objc_destroyWeak(&v99);
            objc_destroyWeak(buf);
          }
        }

        releaseToCallTimer = [(PHSlidingView *)self releaseToCallTimer];
        if (releaseToCallTimer)
        {
        }

        else
        {
          +[SOSUtilities clawReleaseToCallSupport];
          if (v91 > 0.0)
          {
            objc_initWeak(buf, self);
            v93 = _NSConcreteStackBlock;
            v94 = 3221225472;
            v95 = sub_100099748;
            v96 = &unk_100356CE8;
            objc_copyWeak(&v97, buf);
            v92 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v93 block:10.0];
            [(PHSlidingView *)self setReleaseToCallTimer:v92, v93, v94, v95, v96];

            objc_destroyWeak(&v97);
            objc_destroyWeak(buf);
          }
        }

        break;
      case 3uLL:
        [(PHSlidingView *)self resetAnimatedSlider];
        titleLabel9 = [(PHSlidingView *)self titleLabel];
        [titleLabel9 setAlpha:0.0];

        descriptionLabel6 = [(PHSlidingView *)self descriptionLabel];
        [descriptionLabel6 setAlpha:1.0];

        descriptionLabel7 = [(PHSlidingView *)self descriptionLabel];
        v63 = +[NSBundle mainBundle];
        v64 = [v63 localizedStringForKey:@"SOS_RELEASE_TO_CALL_SUBTITLE_INITIAL" value:&stru_100361FD0 table:@"InCallService"];
        [descriptionLabel7 setText:v64];

        animatedSlidingButton4 = [(PHSlidingView *)self animatedSlidingButton];
        [animatedSlidingButton4 setAlpha:1.0];

        if ([(PHSlidingView *)self hasTwoMiddleSliders])
        {
          medicalIDSlidingButton4 = [(PHSlidingView *)self medicalIDSlidingButton];
          [medicalIDSlidingButton4 setAlpha:1.0];
        }

        [(PHSlidingView *)self updateMiddleViewSliderConstraintConstants];
        powerOffSlidingButton4 = [(PHSlidingView *)self powerOffSlidingButton];
        [powerOffSlidingButton4 setAlpha:1.0];

        if ([(PHSlidingView *)self deviceSupportsFindMy])
        {
          findMyButton4 = [(PHSlidingView *)self findMyButton];
          [findMyButton4 setAlpha:1.0];
        }

        [(PHSlidingView *)self hideHardwareButtonView];
        [(PHSlidingView *)self stopVoiceLoopMessagePlayback];
        shouldMaxVolumeCompletionBlock3 = [(PHSlidingView *)self shouldMaxVolumeCompletionBlock];
        v70 = shouldMaxVolumeCompletionBlock3 == 0;

        if (!v70)
        {
          shouldMaxVolumeCompletionBlock4 = [(PHSlidingView *)self shouldMaxVolumeCompletionBlock];
          shouldMaxVolumeCompletionBlock4[2](shouldMaxVolumeCompletionBlock4, 0);
        }

        [(PHSlidingView *)self clearReleaseToCallVoiceLoopTimer];
        releaseToCallTimer2 = [(PHSlidingView *)self releaseToCallTimer];
        [releaseToCallTimer2 invalidate];

        [(PHSlidingView *)self setReleaseToCallTimer:0];
        break;
      case 5uLL:
        [(PHSlidingView *)self resetAnimatedSlider];
        titleLabel10 = [(PHSlidingView *)self titleLabel];
        [titleLabel10 setAlpha:0.0];

        descriptionLabel8 = [(PHSlidingView *)self descriptionLabel];
        [descriptionLabel8 setAlpha:1.0];

        descriptionLabel9 = [(PHSlidingView *)self descriptionLabel];
        v10 = +[NSBundle mainBundle];
        v11 = [v10 localizedStringForKey:@"SOS_RELEASE_TO_CALL_SUBTITLE_INITIAL" value:&stru_100361FD0 table:@"InCallService"];
        [descriptionLabel9 setText:v11];

        animatedSlidingButton5 = [(PHSlidingView *)self animatedSlidingButton];
        [animatedSlidingButton5 setAlpha:1.0];

        if ([(PHSlidingView *)self hasTwoMiddleSliders])
        {
          medicalIDSlidingButton5 = [(PHSlidingView *)self medicalIDSlidingButton];
          [medicalIDSlidingButton5 setAlpha:1.0];
        }

        [(PHSlidingView *)self updateMiddleViewSliderConstraintConstants];
        powerOffSlidingButton5 = [(PHSlidingView *)self powerOffSlidingButton];
        [powerOffSlidingButton5 setAlpha:1.0];

        if ([(PHSlidingView *)self deviceSupportsFindMy])
        {
          findMyButton5 = [(PHSlidingView *)self findMyButton];
          [findMyButton5 setAlpha:1.0];
        }

LABEL_13:
        [(PHSlidingView *)self hideHardwareButtonView];
        return;
      default:
        return;
    }
  }
}

- (double)sliderButtonWidth
{
  v2 = SBSUIHardwareButtonHintViewsSupported();
  result = 25.0;
  if (v2)
  {
    return 5.0;
  }

  return result;
}

- (id)_createPowerDownSlider
{
  v3 = [[PHSlidingButton alloc] initWithSlidingButtonType:8 appearanceType:1 callState:2];
  v4 = +[UIColor redColor];
  [(PHSlidingButton *)v3 setTintColor:v4];

  [(PHSlidingButton *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PHSlidingButton *)v3 setDelegate:self];

  return v3;
}

- (void)createPowerDownConstraints
{
  v17 = objc_alloc_init(NSMutableArray);
  powerOffSlidingButton = [(PHSlidingView *)self powerOffSlidingButton];
  centerXAnchor = [powerOffSlidingButton centerXAnchor];
  centerXAnchor2 = [(PHSlidingView *)self centerXAnchor];
  v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v17 addObject:v6];

  powerOffSlidingButton2 = [(PHSlidingView *)self powerOffSlidingButton];
  topAnchor = [powerOffSlidingButton2 topAnchor];
  safeAreaLayoutGuide = [(PHSlidingView *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:52.0];
  [v17 addObject:v11];

  findMyButton = [(PHSlidingView *)self findMyButton];

  if (findMyButton)
  {
    findMyButton2 = [(PHSlidingView *)self findMyButton];
    topAnchor3 = [findMyButton2 topAnchor];
    bottomAnchor = [(PHSlidingButton *)self->_powerOffSlidingButton bottomAnchor];
    v16 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:4.0];
    [v17 addObject:v16];
  }

  [NSLayoutConstraint activateConstraints:v17];
}

- (void)createFindMyUI
{
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:13.0];
  v32 = +[UIColor systemGrayColor];
  v40 = v3;
  v41 = [UIImage _systemImageNamed:@"location.fill.radiowaves.left.and.right" withConfiguration:v3];
  v39 = [NSTextAttachment textAttachmentWithImage:v41];
  v35 = [NSAttributedString attributedStringWithAttachment:v39];
  v4 = [UIImage systemImageNamed:@"chevron.right" withConfiguration:v3];
  imageFlippedForRightToLeftLayoutDirection = [v4 imageFlippedForRightToLeftLayoutDirection];

  v37 = [NSTextAttachment textAttachmentWithImage:imageFlippedForRightToLeftLayoutDirection];
  v33 = [NSAttributedString attributedStringWithAttachment:v37];
  v5 = +[NSBundle mainBundle];
  v36 = [v5 localizedStringForKey:@"POWER_DOWN_FIND_MY_ACTIVE" value:&stru_100361FD0 table:@"InCallService"];

  v34 = [[NSAttributedString alloc] initWithString:v36];
  v6 = [[NSAttributedString alloc] initWithString:@" "];
  v7 = objc_alloc_init(NSMutableAttributedString);
  [v7 appendAttributedString:v35];
  [v7 appendAttributedString:v6];
  [v7 appendAttributedString:v34];
  [v7 appendAttributedString:v6];
  [v7 appendAttributedString:v33];
  v8 = [v7 length];
  v31 = [UIFont systemFontOfSize:13.0];
  [v7 addAttribute:NSFontAttributeName value:v31 range:{0, v8}];
  [v7 addAttribute:NSForegroundColorAttributeName value:v32 range:{0, v8}];
  v9 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(PHSlidingView *)self setFindMyButton:v9];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setAlpha:0.0];
  v10 = +[UIColor clearColor];
  [v9 setBackgroundColor:v10];

  [v9 setAttributedTitle:v7 forState:0];
  titleLabel = [v9 titleLabel];
  [titleLabel setNumberOfLines:0];

  titleLabel2 = [v9 titleLabel];
  [titleLabel2 setTextAlignment:1];

  titleLabel3 = [v9 titleLabel];
  [titleLabel3 setLineBreakMode:0];

  delegate = [(PHSlidingView *)self delegate];
  [v9 addTarget:delegate action:"didTapFindMy" forControlEvents:64];

  powerOffSlidingButton = [(PHSlidingView *)self powerOffSlidingButton];
  [(PHSlidingView *)self insertSubview:v9 above:powerOffSlidingButton];

  v16 = objc_alloc_init(NSMutableArray);
  centerXAnchor = [v9 centerXAnchor];
  centerXAnchor2 = [(PHSlidingView *)self centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v16 addObject:v19];

  leadingAnchor = [v9 leadingAnchor];
  leadingAnchor2 = [(PHSlidingView *)self leadingAnchor];
  v22 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:20.0];

  trailingAnchor = [v9 trailingAnchor];
  trailingAnchor2 = [(PHSlidingView *)self trailingAnchor];
  v25 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:20.0];

  [v16 addObject:v22];
  [v16 addObject:v25];
  topAnchor = [v9 topAnchor];
  bottomAnchor = [(PHSlidingButton *)self->_powerOffSlidingButton bottomAnchor];
  v28 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:4.0];
  [v16 addObject:v28];

  heightAnchor = [v9 heightAnchor];
  v30 = [heightAnchor constraintGreaterThanOrEqualToConstant:40.0];
  [v16 addObject:v30];

  [NSLayoutConstraint activateConstraints:v16];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100099FE4;
  v42[3] = &unk_100356988;
  v42[4] = self;
  [UIView _animateUsingDefaultTimingWithOptions:0 animations:v42 completion:0];
}

- (void)didSuppressFindMy
{
  [(PHSlidingView *)self setUserWantsFindMySuppressed:1];
  findMyButton = self->_findMyButton;

  [(UIButton *)findMyButton setAlpha:0.0];
}

- (void)_readIODeviceSupportsFindMy
{
  objc_initWeak(&location, self);
  beaconManager = [(PHSlidingView *)self beaconManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009A124;
  v4[3] = &unk_100356E98;
  objc_copyWeak(&v5, &location);
  [beaconManager isLPEMModeSupported:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_readShouldPowerDownViewShowFindMyAlert
{
  objc_initWeak(&location, self);
  beaconManager = [(PHSlidingView *)self beaconManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009A2E4;
  v4[3] = &unk_100356E98;
  objc_copyWeak(&v5, &location);
  [beaconManager userHasAcknowledgeFindMyWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PHSlidingView;
  [(PHSlidingView *)&v3 layoutSubviews];
  [(PHSlidingView *)self updateMiddleViewSliderConstraintConstants];
  [(PHSlidingView *)self _updatePowerOffSliderExclusionPath];
}

- (void)setAnimatedSliderCompletion:(id)completion
{
  v4 = objc_retainBlock(completion);
  animatedSlidingButtonCompletionBlock = self->_animatedSlidingButtonCompletionBlock;
  self->_animatedSlidingButtonCompletionBlock = v4;

  [(PHSlidingView *)self setSlidingViewState:0];

  [(PHSlidingView *)self updateMiddleViewSliderConstraintConstants];
}

- (void)setMedicalIDSlidingButtonCompletionBlock:(id)block
{
  v4 = objc_retainBlock(block);
  medicalIDSlidingButtonCompletionBlock = self->_medicalIDSlidingButtonCompletionBlock;
  self->_medicalIDSlidingButtonCompletionBlock = v4;

  v6 = self->_medicalIDSlidingButtonCompletionBlock;
  if (v6)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [(PHSlidingView *)self setHasTwoMiddleSliders:v6 != 0];
  medicalIDSlidingButton = [(PHSlidingView *)self medicalIDSlidingButton];
  [medicalIDSlidingButton setAlpha:v7];

  [(PHSlidingView *)self updateMiddleViewSliderConstraintConstants];
}

- (void)interactiveStartWithCountdownModel:(id)model
{
  modelCopy = model;
  if ([(PHSlidingView *)self slidingViewState])
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v24) = [(PHSlidingView *)self slidingViewState];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSlidingView,ignoring interactive start in state %d", buf, 8u);
    }

    goto LABEL_13;
  }

  +[SOSUtilities clawReleaseToCallSupport];
  v7 = v6;
  [(PHSlidingView *)self clearMetricItems];
  if (v7 <= 0.0)
  {
LABEL_12:
    [(PHSlidingView *)self setSlidingViewState:1];
    [(PHSlidingView *)self startMotionStateTracking];
    -[PHSlidingView repeatingUpdateAnimatedSliderForCountdownNumber:forModel:](self, "repeatingUpdateAnimatedSliderForCountdownNumber:forModel:", [modelCopy countdown], modelCopy);
    goto LABEL_13;
  }

  [(PHSlidingView *)self clearClawHoldInitialTimer];
  v8 = +[NSDate date];
  [v8 timeIntervalSince1970];
  v10 = v9;
  [(PHSlidingView *)self sliderViewCreationTime];
  v12 = v11;

  clawHoldInitialTimer = [(PHSlidingView *)self clawHoldInitialTimer];

  if (clawHoldInitialTimer || (v14 = v12 - v10 + 1.5, v14 <= 0.0))
  {
    [(PHSlidingView *)self clearMetricItems];
    goto LABEL_12;
  }

  v15 = sub_100004F84();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PHSlidingView,interactiveStartWithCountdownModel,wait for %f seconds before moving to slider progressing state", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10009A78C;
  v20 = &unk_100358360;
  objc_copyWeak(&v22, buf);
  v21 = modelCopy;
  v16 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v17 block:v14];
  [(PHSlidingView *)self setClawHoldInitialTimer:v16, v17, v18, v19, v20];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
LABEL_13:
}

- (void)interactiveStop:(id)stop
{
  stopCopy = stop;
  if (+[SOSUtilities isMountStateTrackingEnabled])
  {
    cmMotionActivityManager = [(PHSlidingView *)self cmMotionActivityManager];

    if (cmMotionActivityManager)
    {
      cmMotionActivityManager2 = [(PHSlidingView *)self cmMotionActivityManager];
      [cmMotionActivityManager2 stopPeriodicActivityUpdates];

      motionActivityList = [(PHSlidingView *)self motionActivityList];
      [motionActivityList removeAllObjects];
    }
  }

  if ([(PHSlidingView *)self slidingViewState])
  {
    if ([(PHSlidingView *)self slidingViewState]== 1)
    {
      animatedSlidingButton = [(PHSlidingView *)self animatedSlidingButton];
      acceptButton = [animatedSlidingButton acceptButton];
      [acceptButton knobPosition];
      v10 = v9;

      [(PHSlidingView *)self setSlidingViewState:0];
      +[SOSUtilities clawReleaseToCallSupport];
      if (v11 != 0.0)
      {
        clawHoldInitialTimer = [(PHSlidingView *)self clawHoldInitialTimer];
        [clawHoldInitialTimer invalidate];

        [(PHSlidingView *)self setClawHoldInitialTimer:0];
      }

      [(PHSlidingView *)self invalidateCountdownAndStopSounds];
      [(PHSlidingView *)self resetAnimatedSlider];
      [(PHSlidingView *)self stopFlash];
      stopCopy[2](v10);
    }

    else if ([(PHSlidingView *)self slidingViewState]== 2)
    {
      [(PHSlidingView *)self releaseToCallStartTime];
      if (v13 >= 0.0)
      {
        Current = CFAbsoluteTimeGetCurrent();
        [(PHSlidingView *)self releaseToCallStartTime];
        [(PHSlidingView *)self setTimeToReleaseClaw:vcvtpd_s64_f64(vabdd_f64(Current, v15))];
      }

      clawHoldInitialTimer2 = [(PHSlidingView *)self clawHoldInitialTimer];
      [clawHoldInitialTimer2 invalidate];

      [(PHSlidingView *)self setClawHoldInitialTimer:0];
      [(PHSlidingView *)self clearReleaseToCallState];
      [(PHSlidingView *)self setSlidingViewState:4];
      [(PHSlidingView *)self didFinishSOSSliding:4];
    }

    else if ([(PHSlidingView *)self slidingViewState]== 3 || [(PHSlidingView *)self slidingViewState]== 5)
    {
      clawHoldInitialTimer3 = [(PHSlidingView *)self clawHoldInitialTimer];
      [clawHoldInitialTimer3 invalidate];

      [(PHSlidingView *)self setClawHoldInitialTimer:0];
      [(PHSlidingView *)self setSlidingViewState:0];
    }
  }

  else
  {
    [(PHSlidingView *)self clearClawHoldInitialTimer];
  }
}

- (void)clearClawHoldInitialTimer
{
  clawHoldInitialTimer = [(PHSlidingView *)self clawHoldInitialTimer];
  isValid = [clawHoldInitialTimer isValid];

  if (isValid)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidating clawHoldInitialTimer", v7, 2u);
    }

    clawHoldInitialTimer2 = [(PHSlidingView *)self clawHoldInitialTimer];
    [clawHoldInitialTimer2 invalidate];

    [(PHSlidingView *)self setClawHoldInitialTimer:0];
  }
}

- (void)startMotionStateTracking
{
  if (+[SOSUtilities isMountStateTrackingEnabled])
  {
    cmMotionActivityManager = [(PHSlidingView *)self cmMotionActivityManager];

    if (cmMotionActivityManager)
    {
      v4 = sub_100004F84();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHSlidingView,CMMotionActivity,about to call startPeriodicActivityUpdatesToQueue", buf, 2u);
      }

      motionActivityList = [(PHSlidingView *)self motionActivityList];
      [motionActivityList removeAllObjects];

      objc_initWeak(buf, self);
      cmMotionActivityManager2 = [(PHSlidingView *)self cmMotionActivityManager];
      motionActivityQueue = [(PHSlidingView *)self motionActivityQueue];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10009AC80;
      v8[3] = &unk_100358388;
      objc_copyWeak(&v9, buf);
      [cmMotionActivityManager2 startPeriodicActivityUpdatesToQueue:motionActivityQueue withHandler:v8];

      objc_destroyWeak(&v9);
      objc_destroyWeak(buf);
    }
  }
}

- (void)invalidateCountdownAndStopSounds
{
  interactivelyAnimateSlidingButtonBlock = [(PHSlidingView *)self interactivelyAnimateSlidingButtonBlock];

  if (interactivelyAnimateSlidingButtonBlock)
  {
    interactivelyAnimateSlidingButtonBlock2 = [(PHSlidingView *)self interactivelyAnimateSlidingButtonBlock];
    dispatch_block_cancel(interactivelyAnimateSlidingButtonBlock2);

    [(PHSlidingView *)self setInteractivelyAnimateSlidingButtonBlock:0];
  }

  sliderTimingBlock = [(PHSlidingView *)self sliderTimingBlock];

  if (sliderTimingBlock)
  {
    sliderTimingBlock2 = [(PHSlidingView *)self sliderTimingBlock];
    dispatch_block_cancel(sliderTimingBlock2);

    [(PHSlidingView *)self setSliderTimingBlock:0];
  }

  sliderAnimator = [(PHSlidingView *)self sliderAnimator];

  if (sliderAnimator)
  {
    sliderAnimator2 = [(PHSlidingView *)self sliderAnimator];
    [sliderAnimator2 stopAnimation:1];
  }

  alertController = [(PHSlidingView *)self alertController];
  [alertController stopAlert];
}

- (void)repeatingUpdateAnimatedSliderForCountdownNumber:(unint64_t)number forModel:(id)model
{
  modelCopy = model;
  v7 = [modelCopy countdownWithAudio] < number;
  countdown = [modelCopy countdown];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10009B294;
  v27[3] = &unk_1003583B0;
  v27[4] = self;
  v29 = v7;
  v9 = modelCopy;
  v28 = v9;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10009B374;
  v23[3] = &unk_100358400;
  v23[4] = self;
  v25 = objc_retainBlock(v27);
  numberCopy = number;
  v10 = v9;
  v24 = v10;
  v11 = v25;
  v12 = objc_retainBlock(v23);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10009B468;
  v22[3] = &unk_100356988;
  v22[4] = self;
  v13 = objc_retainBlock(v22);
  if ([(PHSlidingView *)self slidingViewState]== 1)
  {
    [v10 countdownTickDuration];
    v15 = 0.200000003;
    if (countdown != number)
    {
      v15 = 0.0;
    }

    if (number)
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    if (number)
    {
      v17 = v15 + v14 + -0.25 + -0.280999988;
    }

    else
    {
      v17 = v14;
    }

    v18 = objc_retainBlock(v16);
    v19 = dispatch_block_create(0, v18);
    [(PHSlidingView *)self setSliderTimingBlock:v19];

    v20 = dispatch_time(0, (v17 * 1000000000.0));
    sliderTimingBlock = [(PHSlidingView *)self sliderTimingBlock];
    dispatch_after(v20, &_dispatch_main_q, sliderTimingBlock);
  }
}

- (void)updateAnimatedSliderForCountdownNumber:(unint64_t)number forTotalCount:(unint64_t)count afterDelay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009B744;
  block[3] = &unk_100358428;
  objc_copyWeak(v18, &location);
  v18[1] = number;
  v18[2] = count;
  v11 = completionCopy;
  v17 = v11;
  v12 = dispatch_block_create(0, block);
  [(PHSlidingView *)self setInteractivelyAnimateSlidingButtonBlock:v12];

  v13 = dispatch_time(0, (delay * 1000000000.0));
  v14 = &_dispatch_main_q;
  interactivelyAnimateSlidingButtonBlock = [(PHSlidingView *)self interactivelyAnimateSlidingButtonBlock];
  dispatch_after(v13, &_dispatch_main_q, interactivelyAnimateSlidingButtonBlock);

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

- (void)updateAnimatedSliderForCountdownNumber:(unint64_t)number forTotalCount:(double)count completion:(id)completion
{
  completionCopy = completion;
  if ([(PHSlidingView *)self slidingViewState]== 1)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10009B8D0;
    v13[3] = &unk_1003574B0;
    v13[4] = self;
    v13[5] = number;
    *&v13[6] = count;
    v9 = objc_retainBlock(v13);
    v10 = [[UIViewPropertyAnimator alloc] initWithDuration:v9 controlPoint1:0.25 controlPoint2:0.25 animations:{0.1, 0.25, 1.0}];
    [(PHSlidingView *)self setSliderAnimator:v10];

    if (completionCopy)
    {
      sliderAnimator = [(PHSlidingView *)self sliderAnimator];
      [sliderAnimator addCompletion:completionCopy];
    }

    sliderAnimator2 = [(PHSlidingView *)self sliderAnimator];
    [sliderAnimator2 startAnimation];
  }
}

- (void)resetAnimatedSlider
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009BA60;
  v4[3] = &unk_100356988;
  v4[4] = self;
  v2 = objc_retainBlock(v4);
  v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v2 controlPoint1:0.25 controlPoint2:0.25 animations:{0.1, 0.25, 1.0}];
  [v3 startAnimation];
}

- (void)setUpConstraints
{
  [(PHSlidingView *)self createPowerDownConstraints];
  medicalIDSlidingButton = [(PHSlidingView *)self medicalIDSlidingButton];
  bottomAnchor = [medicalIDSlidingButton bottomAnchor];
  centerYAnchor = [(PHSlidingView *)self centerYAnchor];
  [(PHSlidingView *)self medicalIDSliderBottomConstraintConstant];
  v6 = [bottomAnchor constraintEqualToAnchor:centerYAnchor constant:?];
  medicalIDSliderBottomConstraint = self->_medicalIDSliderBottomConstraint;
  self->_medicalIDSliderBottomConstraint = v6;

  animatedSlidingButton = [(PHSlidingView *)self animatedSlidingButton];
  topAnchor = [animatedSlidingButton topAnchor];
  centerYAnchor2 = [(PHSlidingView *)self centerYAnchor];
  [(PHSlidingView *)self animatedSliderTopConstraintConstant];
  v11 = [topAnchor constraintEqualToAnchor:centerYAnchor2 constant:?];
  animatedSliderTopConstraint = self->_animatedSliderTopConstraint;
  self->_animatedSliderTopConstraint = v11;

  medicalIDSlidingButton2 = [(PHSlidingView *)self medicalIDSlidingButton];
  centerXAnchor = [medicalIDSlidingButton2 centerXAnchor];
  centerXAnchor2 = [(PHSlidingView *)self centerXAnchor];
  v100 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  animatedSlidingButton2 = [(PHSlidingView *)self animatedSlidingButton];
  centerXAnchor3 = [animatedSlidingButton2 centerXAnchor];
  centerXAnchor4 = [(PHSlidingView *)self centerXAnchor];
  v99 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];

  descriptionLabel = [(PHSlidingView *)self descriptionLabel];
  leadingAnchor = [descriptionLabel leadingAnchor];
  leadingAnchor2 = [(PHSlidingView *)self leadingAnchor];
  v98 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  descriptionLabel2 = [(PHSlidingView *)self descriptionLabel];
  trailingAnchor = [descriptionLabel2 trailingAnchor];
  trailingAnchor2 = [(PHSlidingView *)self trailingAnchor];
  v97 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  descriptionLabel3 = [(PHSlidingView *)self descriptionLabel];
  topAnchor2 = [descriptionLabel3 topAnchor];
  animatedSlidingButton3 = [(PHSlidingView *)self animatedSlidingButton];
  bottomAnchor2 = [animatedSlidingButton3 bottomAnchor];
  v96 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:15.0];

  descriptionLabel4 = [(PHSlidingView *)self descriptionLabel];
  centerXAnchor5 = [descriptionLabel4 centerXAnchor];
  centerXAnchor6 = [(PHSlidingView *)self centerXAnchor];
  v95 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];

  titleLabel = [(PHSlidingView *)self titleLabel];
  leadingAnchor3 = [titleLabel leadingAnchor];
  leadingAnchor4 = [(PHSlidingView *)self leadingAnchor];
  [(PHSlidingView *)self sliderButtonWidth];
  v94 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v35 * 0.5 + 16.0];

  titleLabel2 = [(PHSlidingView *)self titleLabel];
  trailingAnchor3 = [titleLabel2 trailingAnchor];
  trailingAnchor4 = [(PHSlidingView *)self trailingAnchor];
  [(PHSlidingView *)self sliderButtonWidth];
  v93 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-(v39 * 0.5 + 16.0)];

  titleLabel3 = [(PHSlidingView *)self titleLabel];
  centerXAnchor7 = [titleLabel3 centerXAnchor];
  centerXAnchor8 = [(PHSlidingView *)self centerXAnchor];
  v92 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];

  titleLabel4 = [(PHSlidingView *)self titleLabel];
  topAnchor3 = [titleLabel4 topAnchor];
  safeAreaLayoutGuide = [(PHSlidingView *)self safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide topAnchor];
  [(PHSlidingView *)self titleDistanceFromTop];
  v47 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];

  [(PHSlidingView *)self volumeButtonDimension];
  x = v102.origin.x;
  y = v102.origin.y;
  width = v102.size.width;
  height = v102.size.height;
  v52 = v102.origin.y + CGRectGetHeight(v102) * 0.5;
  volumeButtonHighlightView = [(PHSlidingView *)self volumeButtonHighlightView];
  centerXAnchor9 = [volumeButtonHighlightView centerXAnchor];
  leftAnchor = [(PHSlidingView *)self leftAnchor];
  v91 = [centerXAnchor9 constraintEqualToAnchor:leftAnchor];

  volumeButtonHighlightView2 = [(PHSlidingView *)self volumeButtonHighlightView];
  centerYAnchor3 = [volumeButtonHighlightView2 centerYAnchor];
  topAnchor5 = [(PHSlidingView *)self topAnchor];
  v59 = [centerYAnchor3 constraintEqualToAnchor:topAnchor5 constant:v52];
  volumeButtonHighlightViewCenterYConstraint = self->_volumeButtonHighlightViewCenterYConstraint;
  self->_volumeButtonHighlightViewCenterYConstraint = v59;

  volumeButtonHighlightView3 = [(PHSlidingView *)self volumeButtonHighlightView];
  widthAnchor = [volumeButtonHighlightView3 widthAnchor];
  [(PHSlidingView *)self sliderButtonWidth];
  v90 = [widthAnchor constraintEqualToConstant:?];

  volumeButtonHighlightView4 = [(PHSlidingView *)self volumeButtonHighlightView];
  heightAnchor = [volumeButtonHighlightView4 heightAnchor];
  v103.origin.x = x;
  v103.origin.y = y;
  v103.size.width = width;
  v103.size.height = height;
  v65 = [heightAnchor constraintEqualToConstant:CGRectGetHeight(v103)];
  volumeButtonHighlightViewHeightConstraint = self->_volumeButtonHighlightViewHeightConstraint;
  self->_volumeButtonHighlightViewHeightConstraint = v65;

  [(PHSlidingView *)self lockButtonDimension];
  v67 = v104.origin.x;
  v68 = v104.origin.y;
  v69 = v104.size.width;
  v70 = v104.size.height;
  v71 = v104.origin.y + CGRectGetHeight(v104) * 0.5;
  lockButtonHighlightView = [(PHSlidingView *)self lockButtonHighlightView];
  centerXAnchor10 = [lockButtonHighlightView centerXAnchor];
  rightAnchor = [(PHSlidingView *)self rightAnchor];
  v75 = [centerXAnchor10 constraintEqualToAnchor:rightAnchor];

  lockButtonHighlightView2 = [(PHSlidingView *)self lockButtonHighlightView];
  centerYAnchor4 = [lockButtonHighlightView2 centerYAnchor];
  topAnchor6 = [(PHSlidingView *)self topAnchor];
  v89 = [centerYAnchor4 constraintEqualToAnchor:topAnchor6 constant:v71];

  lockButtonHighlightView3 = [(PHSlidingView *)self lockButtonHighlightView];
  widthAnchor2 = [lockButtonHighlightView3 widthAnchor];
  [(PHSlidingView *)self sliderButtonWidth];
  v88 = [widthAnchor2 constraintEqualToConstant:?];

  lockButtonHighlightView4 = [(PHSlidingView *)self lockButtonHighlightView];
  heightAnchor2 = [lockButtonHighlightView4 heightAnchor];
  v105.origin.x = v67;
  v105.origin.y = v68;
  v105.size.width = v69;
  v105.size.height = v70;
  v83 = [heightAnchor2 constraintEqualToConstant:CGRectGetHeight(v105)];

  v84 = self->_animatedSliderTopConstraint;
  v101[0] = self->_medicalIDSliderBottomConstraint;
  v101[1] = v84;
  v101[2] = v100;
  v101[3] = v99;
  v101[4] = v98;
  v101[5] = v97;
  v101[6] = v96;
  v101[7] = v95;
  v101[8] = v92;
  v101[9] = v47;
  v101[10] = v94;
  v101[11] = v93;
  v85 = self->_volumeButtonHighlightViewCenterYConstraint;
  v101[12] = v91;
  v101[13] = v85;
  v86 = self->_volumeButtonHighlightViewHeightConstraint;
  v101[14] = v90;
  v101[15] = v86;
  v101[16] = v75;
  v101[17] = v89;
  v101[18] = v88;
  v101[19] = v83;
  v87 = [NSArray arrayWithObjects:v101 count:20];
  [NSLayoutConstraint activateConstraints:v87];
}

- (double)titleDistanceFromTop
{
  v2 = 27.0;
  if ((+[PHUIConfiguration shouldUseSOSTightSpacing]& 1) == 0)
  {
    v3 = +[UIScreen mainScreen];
    [v3 bounds];
    v2 = v4 * 0.0599999987;
  }

  return v2;
}

- (double)distanceBetweenMiddleSliders
{
  if (qword_1003B0D28 != -1)
  {
    sub_1002559A8();
  }

  return *&qword_1003B0D20;
}

- (double)medicalIDSliderBottomConstraintConstant
{
  powerOffSlidingButton = [(PHSlidingView *)self powerOffSlidingButton];
  [powerOffSlidingButton frame];
  v5 = v4;
  powerOffSlidingButton2 = [(PHSlidingView *)self powerOffSlidingButton];
  [powerOffSlidingButton2 frame];
  v8 = (v5 + v7) * 0.5;
  [(PHSlidingView *)self distanceBetweenMiddleSliders];
  v10 = v8 - v9 * 0.5;

  return v10;
}

- (double)animatedSliderTopConstraintConstant
{
  hasTwoMiddleSliders = [(PHSlidingView *)self hasTwoMiddleSliders];
  powerOffSlidingButton = [(PHSlidingView *)self powerOffSlidingButton];
  [powerOffSlidingButton frame];
  v6 = v5;
  powerOffSlidingButton2 = [(PHSlidingView *)self powerOffSlidingButton];
  [powerOffSlidingButton2 frame];
  v9 = (v6 + v8) * 0.5;
  if (hasTwoMiddleSliders)
  {
    [(PHSlidingView *)self distanceBetweenMiddleSliders];
    v11 = v10 * 0.5 + v9;
  }

  else
  {
    animatedSlidingButton = [(PHSlidingView *)self animatedSlidingButton];
    [animatedSlidingButton frame];
    v11 = v9 + v13 * -0.5;
  }

  return v11;
}

- (void)updateMiddleViewSliderConstraintConstants
{
  [(PHSlidingView *)self medicalIDSliderBottomConstraintConstant];
  v4 = v3;
  medicalIDSliderBottomConstraint = [(PHSlidingView *)self medicalIDSliderBottomConstraint];
  [medicalIDSliderBottomConstraint setConstant:v4];

  [(PHSlidingView *)self animatedSliderTopConstraintConstant];
  v7 = v6;
  animatedSliderTopConstraint = [(PHSlidingView *)self animatedSliderTopConstraint];
  [animatedSliderTopConstraint setConstant:v7];
}

- (void)didFinishSOSSliding:(unint64_t)sliding
{
  animatedSlidingButtonCompletionBlock = [(PHSlidingView *)self animatedSlidingButtonCompletionBlock];

  if (animatedSlidingButtonCompletionBlock)
  {
    animatedSlidingButtonCompletionBlock2 = [(PHSlidingView *)self animatedSlidingButtonCompletionBlock];
    animatedSlidingButtonCompletionBlock2[2](animatedSlidingButtonCompletionBlock2, sliding);
  }
}

- (BOOL)isCallDueToMountedState
{
  if (!+[SOSUtilities isMountStateTrackingEnabled])
  {
LABEL_16:
    LOBYTE(motionActivityList) = 0;
    return motionActivityList;
  }

  motionActivityList = [(PHSlidingView *)self motionActivityList];
  if (motionActivityList)
  {
    motionActivityList2 = [(PHSlidingView *)self motionActivityList];
    v5 = [motionActivityList2 count];

    if (!v5)
    {
      goto LABEL_16;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    motionActivityList3 = [(PHSlidingView *)self motionActivityList];
    v7 = [motionActivityList3 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(motionActivityList3);
          }

          [*(*(&v19 + 1) + 8 * i) mountedProbability];
          v10 = v10 + v12;
        }

        v8 = [motionActivityList3 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 0.0;
    }

    motionActivityList4 = [(PHSlidingView *)self motionActivityList];
    v14 = v10 / [motionActivityList4 count];

    v15 = sub_100004F84();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PHSlidingView,averageMountedProbability:%lf", buf, 0xCu);
    }

    [(PHSlidingView *)self setWasMountedProbability:vcvtpd_s64_f64(v14 * 100.0)];
    motionActivityList5 = [(PHSlidingView *)self motionActivityList];
    -[PHSlidingView setNumberOfEpochsForMountProbability:](self, "setNumberOfEpochsForMountProbability:", [motionActivityList5 count]);

    [(PHSlidingView *)self setWasMounted:0];
    +[SOSUtilities mountProbabilityThreshold];
    if (v14 < v17)
    {
      goto LABEL_16;
    }

    motionActivityList = sub_100004F84();
    if (os_log_type_enabled(motionActivityList, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, motionActivityList, OS_LOG_TYPE_DEFAULT, "PHSlidingView,device is in mounted state", buf, 2u);
    }

    LOBYTE(motionActivityList) = 1;
    [(PHSlidingView *)self setWasMounted:1];
  }

  return motionActivityList;
}

- (void)didFinishSlideForSlidingButton:(id)button
{
  buttonCopy = button;
  animatedSlidingButton = [(PHSlidingView *)self animatedSlidingButton];

  if (animatedSlidingButton == buttonCopy)
  {
    [(PHSlidingView *)self setSlidingViewState:4];
    [(PHSlidingView *)self didFinishSOSSliding:1];
  }

  else
  {
    medicalIDSlidingButton = [(PHSlidingView *)self medicalIDSlidingButton];

    if (medicalIDSlidingButton == buttonCopy)
    {
      medicalIDSlidingButtonCompletionBlock = [(PHSlidingView *)self medicalIDSlidingButtonCompletionBlock];

      if (medicalIDSlidingButtonCompletionBlock)
      {
        medicalIDSlidingButtonCompletionBlock2 = [(PHSlidingView *)self medicalIDSlidingButtonCompletionBlock];
        medicalIDSlidingButtonCompletionBlock2[2]();
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10009CAA8;
      v13[3] = &unk_100356988;
      v13[4] = self;
      [UIView animateWithDuration:v13 animations:0.3];
    }

    else
    {
      powerOffSlidingButton = [(PHSlidingView *)self powerOffSlidingButton];

      if (powerOffSlidingButton == buttonCopy)
      {
        powerDownCompletionBlock = [(PHSlidingView *)self powerDownCompletionBlock];

        if (powerDownCompletionBlock)
        {
          powerDownCompletionBlock2 = [(PHSlidingView *)self powerDownCompletionBlock];
          powerDownCompletionBlock2[2]();
        }

        v10 = +[SOSStatusReporter sharedInstance];
        [v10 updateSOSFlowState:6];

        [(PHSlidingView *)self _animatePowerDown];
      }
    }
  }
}

- (void)slidingButton:(id)button didSlideToProportion:(double)proportion
{
  buttonCopy = button;
  powerOffSlidingButton = [(PHSlidingView *)self powerOffSlidingButton];

  if (powerOffSlidingButton == buttonCopy)
  {
    [(SBUIShapeView *)self->_darkeningUnderlayView setAlpha:proportion];
    [(SBUIShapeView *)self->_darkeningOverlayView setAlpha:proportion * 0.5];

    [(PHSlidingView *)self _updatePowerOffSliderExclusionPath];
  }
}

- (void)_updatePowerOffSliderExclusionPath
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v4 = [UIBezierPath bezierPathWithRect:?];

  powerOffSlidingButton = [(PHSlidingView *)self powerOffSlidingButton];
  acceptButton = [powerOffSlidingButton acceptButton];
  knobMaskPath = [acceptButton knobMaskPath];

  powerOffSlidingButton2 = [(PHSlidingView *)self powerOffSlidingButton];
  [powerOffSlidingButton2 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v20.origin.x = v10;
  v20.origin.y = v12;
  v20.size.width = v14;
  v20.size.height = v16;
  MinX = CGRectGetMinX(v20);
  v21.origin.x = v10;
  v21.origin.y = v12;
  v21.size.width = v14;
  v21.size.height = v16;
  MinY = CGRectGetMinY(v21);
  CGAffineTransformMakeTranslation(&v19, MinX, MinY);
  [knobMaskPath applyTransform:&v19];
  [v4 appendBezierPath:knobMaskPath];
  [(SBUIShapeView *)self->_darkeningUnderlayView setPath:v4];
  [(SBUIShapeView *)self->_darkeningOverlayView setPath:v4];
}

- (void)_animatePowerDown
{
  if ([(PHSlidingView *)self deviceSupportsFindMy]&& [(PHSlidingView *)self shouldPowerDownViewShowFindMyAlert])
  {
    [(PHSlidingButton *)self->_powerOffSlidingButton removeFromSuperview];
    _createPowerDownSlider = [(PHSlidingView *)self _createPowerDownSlider];
    powerOffSlidingButton = self->_powerOffSlidingButton;
    self->_powerOffSlidingButton = _createPowerDownSlider;

    [(PHSlidingView *)self addSubview:self->_powerOffSlidingButton];
    [(PHSlidingView *)self createPowerDownConstraints];
    [(PHSlidingView *)self setNeedsLayout];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009CF48;
    v10[3] = &unk_100356988;
    v10[4] = self;
    [UIView _animateUsingDefaultTimingWithOptions:4 animations:v10 completion:0];
    delegate = [(PHSlidingView *)self delegate];
    v8[4] = self;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009CFA4;
    v9[3] = &unk_100356988;
    v9[4] = self;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10009D1F0;
    v8[3] = &unk_100356988;
    [delegate showPowerDownFindMyInfoAlertWithProceed:v9 cancelCompletion:v8];
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10009D25C;
    v7[3] = &unk_100356988;
    v7[4] = self;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10009D2B8;
    v6[3] = &unk_1003569B0;
    v6[4] = self;
    [UIView _animateUsingDefaultTimingWithOptions:0 animations:v7 completion:v6];
  }
}

- (void)_powerOff
{
  userWantsFindMySuppressed = [(PHSlidingView *)self userWantsFindMySuppressed];
  if (userWantsFindMySuppressed)
  {
    beaconManager = [(PHSlidingView *)self beaconManager];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10009D438;
    v5[3] = &unk_100356D38;
    v6 = &stru_100358488;
    [beaconManager setSuppressLPEMBeaconing:1 completion:v5];
  }

  else
  {

    sub_10009D388(userWantsFindMySuppressed);
  }
}

- (void)clearReleaseToCallState
{
  [(PHSlidingView *)self clearReleaseToCallTimer];
  [(PHSlidingView *)self stopVoiceLoopMessagePlayback];
  [(PHSlidingView *)self clearReleaseToCallVoiceLoopTimer];

  [(PHSlidingView *)self setSlidingViewState:4];
}

- (void)clearReleaseToCallTimer
{
  releaseToCallTimer = [(PHSlidingView *)self releaseToCallTimer];
  isValid = [releaseToCallTimer isValid];

  if (isValid)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidating PHSOSReleaseToCallCountdown timer", v7, 2u);
    }

    releaseToCallTimer2 = [(PHSlidingView *)self releaseToCallTimer];
    [releaseToCallTimer2 invalidate];

    [(PHSlidingView *)self setReleaseToCallTimer:0];
  }
}

- (void)startVoiceLoopMessagePlaybackWithMessageType:(int64_t)type
{
  [(PHSlidingView *)self stopVoiceLoopMessagePlayback];
  if ((type & 0xFFFFFFFFFFFFFFFELL) != 0x66)
  {
    voiceMessageManager2 = sub_100004F84();
    if (os_log_type_enabled(voiceMessageManager2, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, voiceMessageManager2, OS_LOG_TYPE_DEFAULT, "PHSlidingView,startVoiceLoopMessagePlaybackWithMessageType,unsupported message,ignoring request", v10, 2u);
    }

    goto LABEL_10;
  }

  +[SOSUtilities clawReleaseToCallSupport];
  if (v5 != 0.0)
  {
    if (+[SOSUtilities shouldPlayAudioDuringCountdown])
    {
      voiceMessageManager = [(PHSlidingView *)self voiceMessageManager];

      if (!voiceMessageManager)
      {
        v7 = [[SOSVoiceMessageManager alloc] initWithMessageType:type];
        [(PHSlidingView *)self setVoiceMessageManager:v7];

        v8 = sub_100004F84();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PHSlidingView,startVoiceLoopMessagePlaybackWithMessageType,starting release to call voice message", buf, 2u);
        }

        voiceMessageManager2 = [(PHSlidingView *)self voiceMessageManager];
        [voiceMessageManager2 startMessagePlayback];
LABEL_10:
      }
    }
  }
}

- (void)stopVoiceLoopMessagePlayback
{
  voiceMessageManager = [(PHSlidingView *)self voiceMessageManager];

  if (voiceMessageManager)
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHSlidingView,stopVoiceLoopMessagePlayback", v6, 2u);
    }

    voiceMessageManager2 = [(PHSlidingView *)self voiceMessageManager];
    [voiceMessageManager2 stopMessagePlayback];

    [(PHSlidingView *)self setVoiceMessageManager:0];
  }
}

- (void)clearReleaseToCallVoiceLoopTimer
{
  releaseToCallVoiceLoopTimer = [(PHSlidingView *)self releaseToCallVoiceLoopTimer];
  isValid = [releaseToCallVoiceLoopTimer isValid];

  if (isValid)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidating PHSOSReleaseToCallVoiceLoop timer", v7, 2u);
    }

    releaseToCallVoiceLoopTimer2 = [(PHSlidingView *)self releaseToCallVoiceLoopTimer];
    [releaseToCallVoiceLoopTimer2 invalidate];

    [(PHSlidingView *)self setReleaseToCallVoiceLoopTimer:0];
  }
}

- (void)toggleFlash
{
  +[SOSUtilities clawReleaseToCallSupport];
  if (v3 != 0.0 && [(PHSlidingView *)self slidingViewState]== 1)
  {
    if (+[SOSUtilities shouldPlayAudioDuringCountdown])
    {
      avCaptureDispatchQueue = [(PHSlidingView *)self avCaptureDispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10009D924;
      block[3] = &unk_100356988;
      block[4] = self;
      dispatch_async(avCaptureDispatchQueue, block);
    }
  }
}

- (void)stopFlash
{
  +[SOSUtilities clawReleaseToCallSupport];
  if (v3 != 0.0)
  {
    avCaptureDispatchQueue = [(PHSlidingView *)self avCaptureDispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009DB38;
    block[3] = &unk_100356988;
    block[4] = self;
    dispatch_async(avCaptureDispatchQueue, block);
  }
}

- (CGRect)lockButtonDimension
{
  if (qword_1003B0D50 != -1)
  {
    sub_1002559BC();
  }

  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromCGRect(*ymmword_1003B0D30);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PHSlidingView,lockButtonDimension,lock button frame - %@", &v8, 0xCu);
  }

  v5 = *&ymmword_1003B0D30[8];
  v4 = *ymmword_1003B0D30;
  v6 = *&ymmword_1003B0D30[16];
  v7 = *&ymmword_1003B0D30[24];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)volumeButtonDimension
{
  v2 = +[SOSManager sharedInstance];
  currentSOSButtonPressState = [v2 currentSOSButtonPressState];

  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v39 = [currentSOSButtonPressState volumeUpPressed];
    *&v39[4] = 1024;
    *&v39[6] = [currentSOSButtonPressState volumeDownPressed];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHSlidingView,volumeButtonDimension,VolumeUpPressed=%d,VolumeDownPressed=%d", buf, 0xEu);
  }

  v5 = +[UIScreen mainScreen];
  [v5 _referenceBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_10009E4F8;
  v33 = &unk_1003584E8;
  v34 = v7;
  v35 = v9;
  v36 = v11;
  v37 = v13;
  if (qword_1003B0DC0 != -1)
  {
    dispatch_once(&qword_1003B0DC0, &v30);
  }

  if ([currentSOSButtonPressState volumeUpPressed] && (objc_msgSend(currentSOSButtonPressState, "volumeDownPressed") & 1) == 0)
  {
    v14 = sub_100004F84();
    v15 = ymmword_1003B0D80;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromCGRect(*ymmword_1003B0D80);
      *buf = 138412546;
      *v39 = v16;
      *&v39[8] = 2048;
      v40 = *&ymmword_1003B0D80[8] + *&ymmword_1003B0D80[24] * 0.5;
      v17 = "PHSlidingView,volumeButtonDimension,volume UP frame - %@,CenterY - %f";
      goto LABEL_22;
    }

LABEL_23:

    v25 = *v15;
    v18 = v15[1];
    v22 = v15[2];
    v19 = v15[3];
    goto LABEL_24;
  }

  if (([currentSOSButtonPressState volumeUpPressed] & 1) == 0 && objc_msgSend(currentSOSButtonPressState, "volumeDownPressed"))
  {
    v14 = sub_100004F84();
    v15 = ymmword_1003B0DA0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromCGRect(*ymmword_1003B0DA0);
      *buf = 138412546;
      *v39 = v16;
      *&v39[8] = 2048;
      v40 = *&ymmword_1003B0DA0[8] + *&ymmword_1003B0DA0[24] * 0.5;
      v17 = "PHSlidingView,volumeButtonDimension,volume DOWN frame - %@,CenterY - %f";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if ([currentSOSButtonPressState volumeUpPressed] && objc_msgSend(currentSOSButtonPressState, "volumeDownPressed"))
  {
    v18 = *&ymmword_1003B0D80[8];
    v19 = *&ymmword_1003B0DA0[8] + *&ymmword_1003B0DA0[24] - *&ymmword_1003B0D80[8];
    v20 = sub_100004F84();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v41.origin.x = 0.0;
      v41.size.width = 0.0;
      v41.origin.y = v18;
      v41.size.height = v19;
      v21 = NSStringFromCGRect(v41);
      *buf = 138412290;
      *v39 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PHSlidingView,volumeButtonDimension,combined volume frame - %@", buf, 0xCu);
    }

    v22 = 0.0;
  }

  else
  {
    v23 = sub_100004F84();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v42.origin.x = 0.0;
      v42.origin.y = 0.0;
      v42.size.width = 0.0;
      v42.size.height = 0.0;
      v24 = NSStringFromCGRect(v42);
      *buf = 138412290;
      *v39 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "PHSlidingView,volumeButtonDimension,no button pressed frame - %@", buf, 0xCu);
    }

    v19 = 0.0;
    v22 = 0.0;
    v18 = 0.0;
  }

  v25 = 0.0;
LABEL_24:

  v26 = v25;
  v27 = v18;
  v28 = v22;
  v29 = v19;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)clearMetricItems
{
  [(PHSlidingView *)self setWasMounted:0];
  [(PHSlidingView *)self setWasMountedProbability:-1];
  [(PHSlidingView *)self setNumberOfEpochsForMountProbability:-1];
  [(PHSlidingView *)self setReleaseToCallStartTime:-1.0];

  [(PHSlidingView *)self setTimeToReleaseClaw:-1];
}

- (PHSlidingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end