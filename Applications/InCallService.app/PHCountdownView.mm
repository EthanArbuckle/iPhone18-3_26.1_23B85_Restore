@interface PHCountdownView
- (PHCountdownView)initWithFrame:(CGRect)frame;
- (double)circleDistanceFromTitle;
- (double)countdownCircleDiameter;
- (double)countdownLabelFontSize;
- (double)sliderDistanceFromBottom;
- (double)subtitleDistanceFromCircleBottom;
- (double)titleDistanceFromTop;
- (void)commonInit;
- (void)didFinishSlideForSlidingButton:(id)button;
- (void)pause;
- (void)restart;
- (void)setUpConstraints;
- (void)start:(id)start showSlider:(BOOL)slider completion:(id)completion;
- (void)startCountdown;
- (void)stop;
- (void)stopFlash;
- (void)toggleFlash;
@end

@implementation PHCountdownView

- (PHCountdownView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PHCountdownView;
  v3 = [(PHCountdownView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHCountdownView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [UIFont boldSystemFontOfSize:34.0];
  [(UILabel *)self->_titleLabel setFont:v5];

  v6 = +[UIColor whiteColor];
  [(UILabel *)self->_titleLabel setTextColor:v6];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(PHCountdownView *)self addSubview:self->_titleLabel];
  [(PHCountdownView *)self countdownCircleDiameter];
  v8 = v7;
  v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, v8, v8}];
  circleView = self->_circleView;
  self->_circleView = v9;

  layer = [(UIView *)self->_circleView layer];
  [layer setCornerRadius:v8 * 0.5];

  v12 = +[UIColor redColor];
  [(UIView *)self->_circleView setBackgroundColor:v12];

  [(UIView *)self->_circleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PHCountdownView *)self addSubview:self->_circleView];
  v13 = objc_alloc_init(UILabel);
  countdownLabel = self->_countdownLabel;
  self->_countdownLabel = v13;

  [(UILabel *)self->_countdownLabel setTextAlignment:1];
  [(UILabel *)self->_countdownLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = +[UIColor whiteColor];
  [(UILabel *)self->_countdownLabel setTextColor:v15];

  v16 = [UIFontDescriptor alloc];
  v17 = [v16 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  fontAttributes = [v17 fontAttributes];
  v19 = [fontAttributes mutableCopy];

  v38 = UIFontWeightTrait;
  v20 = [NSNumber numberWithDouble:UIFontWeightSemibold];
  v39 = v20;
  v21 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  [v19 setObject:v21 forKey:UIFontDescriptorTraitsAttribute];

  v22 = [UIFontDescriptor fontDescriptorWithFontAttributes:v19];
  [(PHCountdownView *)self countdownLabelFontSize];
  v23 = [UIFont fontWithDescriptor:v22 size:?];
  [(UILabel *)self->_countdownLabel setFont:v23];

  [(PHCountdownView *)self addSubview:self->_countdownLabel];
  v24 = objc_alloc_init(UILabel);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v24;

  [(UILabel *)self->_subtitleLabel setTextAlignment:1];
  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [UIFont systemFontOfSize:22.0];
  [(UILabel *)self->_subtitleLabel setFont:v26];

  v27 = +[UIColor whiteColor];
  [(UILabel *)self->_subtitleLabel setTextColor:v27];

  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  [(PHCountdownView *)self addSubview:self->_subtitleLabel];
  v28 = [[PHSlidingButton alloc] initWithSlidingButtonType:7 appearanceType:0 callState:2];
  [(PHCountdownView *)self setSosCallSlidingButton:v28];

  sosCallSlidingButton = [(PHCountdownView *)self sosCallSlidingButton];
  [sosCallSlidingButton setTranslatesAutoresizingMaskIntoConstraints:0];

  sosCallSlidingButton2 = [(PHCountdownView *)self sosCallSlidingButton];
  [sosCallSlidingButton2 setDelegate:self];

  sosCallSlidingButton3 = [(PHCountdownView *)self sosCallSlidingButton];
  [(PHCountdownView *)self addSubview:sosCallSlidingButton3];

  v32 = objc_alloc_init(PHSOSAlertController);
  alertController = self->_alertController;
  self->_alertController = v32;

  v34 = dispatch_queue_create("com.apple.incallservice.countdownView.avCapture", 0);
  avCaptureDispatchQueue = self->_avCaptureDispatchQueue;
  self->_avCaptureDispatchQueue = v34;

  v36 = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
  avCaptureDevice = self->_avCaptureDevice;
  self->_avCaptureDevice = v36;

  [(PHCountdownView *)self setUpConstraints];
}

- (void)start:(id)start showSlider:(BOOL)slider completion:(id)completion
{
  sliderCopy = slider;
  completionCopy = completion;
  startCopy = start;
  [(PHCountdownView *)self stop];
  [(PHCountdownView *)self setCountdownViewModel:startCopy];

  v10 = sliderCopy;
  sosCallSlidingButton = [(PHCountdownView *)self sosCallSlidingButton];
  [sosCallSlidingButton setAlpha:v10];

  [(PHCountdownView *)self setCompletion:completionCopy];
  countdownViewModel = [(PHCountdownView *)self countdownViewModel];
  titleString = [countdownViewModel titleString];
  titleLabel = [(PHCountdownView *)self titleLabel];
  [titleLabel setText:titleString];

  countdownViewModel2 = [(PHCountdownView *)self countdownViewModel];
  subtitleString = [countdownViewModel2 subtitleString];
  subtitleLabel = [(PHCountdownView *)self subtitleLabel];
  [subtitleLabel setText:subtitleString];

  [(PHCountdownView *)self startCountdown];
}

- (void)startCountdown
{
  [(PHCountdownView *)self stop];
  countdownViewModel = [(PHCountdownView *)self countdownViewModel];
  countdownViewModel2 = [(PHCountdownView *)self countdownViewModel];
  v5 = [countdownViewModel countdownString:{objc_msgSend(countdownViewModel2, "countdown")}];
  countdownLabel = [(PHCountdownView *)self countdownLabel];
  [countdownLabel setText:v5];

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  countdownViewModel3 = [(PHCountdownView *)self countdownViewModel];
  countdown = [countdownViewModel3 countdown];

  v34 = countdown;
  countdownViewModel4 = [(PHCountdownView *)self countdownViewModel];
  countdownWithAudio = [countdownViewModel4 countdownWithAudio];

  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    countdownViewModel5 = [(PHCountdownView *)self countdownViewModel];
    countdownViewModel6 = [(PHCountdownView *)self countdownViewModel];
    playsSound = [countdownViewModel6 playsSound];
    *buf = 138412546;
    v36 = countdownViewModel5;
    v37 = 1024;
    v38 = playsSound;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Countdown with model: %@ shouldPlaySounds: %d", buf, 0x12u);
  }

  countdownViewModel7 = [(PHCountdownView *)self countdownViewModel];
  if ([countdownViewModel7 playsSound])
  {
  }

  else
  {
    countdownViewModel8 = [(PHCountdownView *)self countdownViewModel];
    playsHaptics = [countdownViewModel8 playsHaptics];

    if (!playsHaptics)
    {
      goto LABEL_10;
    }
  }

  countdownViewModel9 = [(PHCountdownView *)self countdownViewModel];
  if ([countdownViewModel9 playsSound])
  {
    v19 = v32[3] <= countdownWithAudio;
  }

  else
  {
    v19 = 0;
  }

  alertController = [(PHCountdownView *)self alertController];
  [alertController playAlertWithAudio:v19 alertTopic:TLAlertTopicSOSCountdownTick];

LABEL_10:
  countdownTimer = [(PHCountdownView *)self countdownTimer];
  v22 = countdownTimer == 0;

  if (v22)
  {
    objc_initWeak(buf, self);
    countdownViewModel10 = [(PHCountdownView *)self countdownViewModel];
    [countdownViewModel10 countdownTickDuration];
    v25 = v24;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000C74C8;
    v29[3] = &unk_100358EB8;
    objc_copyWeak(v30, buf);
    v29[4] = &v31;
    v30[1] = countdownWithAudio;
    v26 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v29 block:v25];
    [(PHCountdownView *)self setCountdownTimer:v26];

    v27 = sub_100004F84();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Created countdown timer", v28, 2u);
    }

    objc_destroyWeak(v30);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v31, 8);
}

- (void)pause
{
  [(PHCountdownView *)self setPauseTimer:1];
  alertController = [(PHCountdownView *)self alertController];
  [alertController stopAlert];
}

- (void)restart
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHCountdownView,restarting countdown timer", v4, 2u);
  }

  [(PHCountdownView *)self stop];
  [(PHCountdownView *)self setPauseTimer:0];
  [(PHCountdownView *)self startCountdown];
}

- (void)stop
{
  countdownTimer = [(PHCountdownView *)self countdownTimer];
  isValid = [countdownTimer isValid];

  if (isValid)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidating PHCountdownView timer", v8, 2u);
    }

    countdownTimer2 = [(PHCountdownView *)self countdownTimer];
    [countdownTimer2 invalidate];

    [(PHCountdownView *)self setCountdownTimer:0];
  }

  alertController = [(PHCountdownView *)self alertController];
  [alertController stopAlert];

  [(PHCountdownView *)self stopFlash];
}

- (void)setUpConstraints
{
  titleLabel = [(PHCountdownView *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  leadingAnchor2 = [(PHCountdownView *)self leadingAnchor];
  v72 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  titleLabel2 = [(PHCountdownView *)self titleLabel];
  trailingAnchor = [titleLabel2 trailingAnchor];
  trailingAnchor2 = [(PHCountdownView *)self trailingAnchor];
  v71 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  titleLabel3 = [(PHCountdownView *)self titleLabel];
  topAnchor = [titleLabel3 topAnchor];
  safeAreaLayoutGuide = [(PHCountdownView *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  [(PHCountdownView *)self titleDistanceFromTop];
  v70 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];

  titleLabel4 = [(PHCountdownView *)self titleLabel];
  centerXAnchor = [titleLabel4 centerXAnchor];
  centerXAnchor2 = [(PHCountdownView *)self centerXAnchor];
  v69 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  circleView = [(PHCountdownView *)self circleView];
  centerXAnchor3 = [circleView centerXAnchor];
  titleLabel5 = [(PHCountdownView *)self titleLabel];
  centerXAnchor4 = [titleLabel5 centerXAnchor];
  v68 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];

  circleView2 = [(PHCountdownView *)self circleView];
  topAnchor3 = [circleView2 topAnchor];
  titleLabel6 = [(PHCountdownView *)self titleLabel];
  bottomAnchor = [titleLabel6 bottomAnchor];
  [(PHCountdownView *)self circleDistanceFromTitle];
  v67 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:?];

  countdownLabel = [(PHCountdownView *)self countdownLabel];
  centerXAnchor5 = [countdownLabel centerXAnchor];
  circleView3 = [(PHCountdownView *)self circleView];
  centerXAnchor6 = [circleView3 centerXAnchor];
  v66 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];

  countdownLabel2 = [(PHCountdownView *)self countdownLabel];
  centerYAnchor = [countdownLabel2 centerYAnchor];
  circleView4 = [(PHCountdownView *)self circleView];
  centerYAnchor2 = [circleView4 centerYAnchor];
  v65 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  circleView5 = [(PHCountdownView *)self circleView];
  [(PHCountdownView *)self countdownCircleDiameter];
  v64 = [NSLayoutConstraint constraintWithItem:circleView5 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v33];

  circleView6 = [(PHCountdownView *)self circleView];
  [(PHCountdownView *)self countdownCircleDiameter];
  v63 = [NSLayoutConstraint constraintWithItem:circleView6 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v35];

  subtitleLabel = [(PHCountdownView *)self subtitleLabel];
  leadingAnchor3 = [subtitleLabel leadingAnchor];
  leadingAnchor4 = [(PHCountdownView *)self leadingAnchor];
  v62 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  subtitleLabel2 = [(PHCountdownView *)self subtitleLabel];
  trailingAnchor3 = [subtitleLabel2 trailingAnchor];
  trailingAnchor4 = [(PHCountdownView *)self trailingAnchor];
  v61 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

  subtitleLabel3 = [(PHCountdownView *)self subtitleLabel];
  topAnchor4 = [subtitleLabel3 topAnchor];
  circleView7 = [(PHCountdownView *)self circleView];
  bottomAnchor2 = [circleView7 bottomAnchor];
  [(PHCountdownView *)self subtitleDistanceFromCircleBottom];
  v60 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:?];

  subtitleLabel4 = [(PHCountdownView *)self subtitleLabel];
  centerXAnchor7 = [subtitleLabel4 centerXAnchor];
  centerXAnchor8 = [(PHCountdownView *)self centerXAnchor];
  v59 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];

  sosCallSlidingButton = [(PHCountdownView *)self sosCallSlidingButton];
  centerXAnchor9 = [sosCallSlidingButton centerXAnchor];
  centerXAnchor10 = [(PHCountdownView *)self centerXAnchor];
  v52 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];

  sosCallSlidingButton2 = [(PHCountdownView *)self sosCallSlidingButton];
  bottomAnchor3 = [sosCallSlidingButton2 bottomAnchor];
  bottomAnchor4 = [(PHCountdownView *)self bottomAnchor];
  [(PHCountdownView *)self sliderDistanceFromBottom];
  v57 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v56];

  v73[0] = v72;
  v73[1] = v71;
  v73[2] = v70;
  v73[3] = v69;
  v73[4] = v68;
  v73[5] = v67;
  v73[6] = v66;
  v73[7] = v65;
  v73[8] = v64;
  v73[9] = v63;
  v73[10] = v62;
  v73[11] = v61;
  v73[12] = v60;
  v73[13] = v59;
  v73[14] = v52;
  v73[15] = v57;
  v58 = [NSArray arrayWithObjects:v73 count:16];
  [NSLayoutConstraint activateConstraints:v58];
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

- (double)circleDistanceFromTitle
{
  v2 = 20.0;
  if ((+[PHUIConfiguration shouldUseSOSTightSpacing]& 1) == 0)
  {
    v3 = +[UIScreen mainScreen];
    [v3 bounds];
    v2 = v4 * 0.0599999987;
  }

  return v2;
}

- (double)countdownCircleDiameter
{
  v2 = +[PHUIConfiguration shouldUseSOSTightSpacing];
  result = 122.0;
  if (v2)
  {
    return 90.0;
  }

  return result;
}

- (double)countdownLabelFontSize
{
  v2 = +[PHUIConfiguration shouldUseSOSTightSpacing];
  result = 70.0;
  if (v2)
  {
    return 54.0;
  }

  return result;
}

- (double)subtitleDistanceFromCircleBottom
{
  v2 = 20.0;
  if ((+[PHUIConfiguration shouldUseSOSTightSpacing]& 1) == 0)
  {
    v3 = +[UIScreen mainScreen];
    [v3 bounds];
    v2 = v4 * 0.0599999987;
  }

  return v2;
}

- (double)sliderDistanceFromBottom
{
  v2 = 30.0;
  if ((+[PHUIConfiguration shouldUseSOSTightSpacing]& 1) == 0)
  {
    v3 = +[UIScreen mainScreen];
    [v3 bounds];
    v2 = v4 * 0.0500000007;
  }

  return v2;
}

- (void)didFinishSlideForSlidingButton:(id)button
{
  buttonCopy = button;
  sosCallSlidingButton = [(PHCountdownView *)self sosCallSlidingButton];

  if (sosCallSlidingButton == buttonCopy)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHCountdownView,user slid SOS slider", v9, 2u);
    }

    [(PHCountdownView *)self stop];
    completion = [(PHCountdownView *)self completion];

    if (completion)
    {
      completion2 = [(PHCountdownView *)self completion];
      completion2[2](completion2, 1);
    }
  }
}

- (void)toggleFlash
{
  +[SOSUtilities clawReleaseToCallSupport];
  if (v3 != 0.0)
  {
    if (+[SOSUtilities shouldPlayAudioDuringCountdown])
    {
      avCaptureDispatchQueue = [(PHCountdownView *)self avCaptureDispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C8398;
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
    avCaptureDispatchQueue = [(PHCountdownView *)self avCaptureDispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C85AC;
    block[3] = &unk_100356988;
    block[4] = self;
    dispatch_async(avCaptureDispatchQueue, block);
  }
}

@end