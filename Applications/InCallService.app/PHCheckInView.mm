@interface PHCheckInView
- (PHCheckInView)initWithFrame:(CGRect)frame;
- (double)distanceFromBottom;
- (double)distanceFromTop;
- (void)commonInit;
- (void)didFinishSlideForSlidingButton:(id)button;
- (void)pause;
- (void)restart;
- (void)setUpConstraints;
- (void)start:(id)start completion:(id)completion;
- (void)startCountdown;
- (void)stop;
- (void)stopAndNotifyResult:(unint64_t)result;
- (void)stopCheckInTimer;
- (void)stopFlash;
- (void)stopVoiceLoopMessagePlayback;
- (void)toggleFlash;
@end

@implementation PHCheckInView

- (PHCheckInView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PHCheckInView;
  v3 = [(PHCheckInView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHCheckInView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_alloc_init(UILabel);
  [(PHCheckInView *)self setTitleLabel:v3];

  titleLabel = [(PHCheckInView *)self titleLabel];
  [titleLabel setTextAlignment:1];

  titleLabel2 = [(PHCheckInView *)self titleLabel];
  [titleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [UIFont boldSystemFontOfSize:34.0];
  titleLabel3 = [(PHCheckInView *)self titleLabel];
  [titleLabel3 setFont:v6];

  v8 = +[UIColor whiteColor];
  titleLabel4 = [(PHCheckInView *)self titleLabel];
  [titleLabel4 setTextColor:v8];

  titleLabel5 = [(PHCheckInView *)self titleLabel];
  [titleLabel5 setNumberOfLines:0];

  titleLabel6 = [(PHCheckInView *)self titleLabel];
  [(PHCheckInView *)self addSubview:titleLabel6];

  v12 = objc_alloc_init(UILabel);
  [(PHCheckInView *)self setSubtitleLabel:v12];

  subtitleLabel = [(PHCheckInView *)self subtitleLabel];
  [subtitleLabel setTextAlignment:1];

  subtitleLabel2 = [(PHCheckInView *)self subtitleLabel];
  [subtitleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [UIFont systemFontOfSize:22.0];
  subtitleLabel3 = [(PHCheckInView *)self subtitleLabel];
  [subtitleLabel3 setFont:v15];

  v17 = +[UIColor whiteColor];
  subtitleLabel4 = [(PHCheckInView *)self subtitleLabel];
  [subtitleLabel4 setTextColor:v17];

  subtitleLabel5 = [(PHCheckInView *)self subtitleLabel];
  [subtitleLabel5 setNumberOfLines:0];

  subtitleLabel6 = [(PHCheckInView *)self subtitleLabel];
  [(PHCheckInView *)self addSubview:subtitleLabel6];

  v21 = [[PHSlidingButton alloc] initWithSlidingButtonType:7 appearanceType:0 callState:2];
  [(PHCheckInView *)self setSosCallSlidingButton:v21];

  sosCallSlidingButton = [(PHCheckInView *)self sosCallSlidingButton];
  [sosCallSlidingButton setTranslatesAutoresizingMaskIntoConstraints:0];

  sosCallSlidingButton2 = [(PHCheckInView *)self sosCallSlidingButton];
  [sosCallSlidingButton2 setDelegate:self];

  sosCallSlidingButton3 = [(PHCheckInView *)self sosCallSlidingButton];
  [(PHCheckInView *)self addSubview:sosCallSlidingButton3];

  [(PHCheckInView *)self setUpConstraints];
  v25 = dispatch_queue_create("com.apple.incallservice.checkInView.avCapture", 0);
  avCaptureDispatchQueue = self->_avCaptureDispatchQueue;
  self->_avCaptureDispatchQueue = v25;

  self->_avCaptureDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];

  _objc_release_x1();
}

- (void)setUpConstraints
{
  v46 = objc_alloc_init(NSMutableArray);
  titleLabel = [(PHCheckInView *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  leadingAnchor2 = [(PHCheckInView *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v46 addObject:v6];

  titleLabel2 = [(PHCheckInView *)self titleLabel];
  trailingAnchor = [titleLabel2 trailingAnchor];
  trailingAnchor2 = [(PHCheckInView *)self trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v46 addObject:v10];

  titleLabel3 = [(PHCheckInView *)self titleLabel];
  topAnchor = [titleLabel3 topAnchor];
  safeAreaLayoutGuide = [(PHCheckInView *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  [(PHCheckInView *)self distanceFromTop];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [v46 addObject:v15];

  titleLabel4 = [(PHCheckInView *)self titleLabel];
  centerXAnchor = [titleLabel4 centerXAnchor];
  centerXAnchor2 = [(PHCheckInView *)self centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v46 addObject:v19];

  subtitleLabel = [(PHCheckInView *)self subtitleLabel];
  leadingAnchor3 = [subtitleLabel leadingAnchor];
  leadingAnchor4 = [(PHCheckInView *)self leadingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v46 addObject:v23];

  subtitleLabel2 = [(PHCheckInView *)self subtitleLabel];
  trailingAnchor3 = [subtitleLabel2 trailingAnchor];
  trailingAnchor4 = [(PHCheckInView *)self trailingAnchor];
  v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v46 addObject:v27];

  subtitleLabel3 = [(PHCheckInView *)self subtitleLabel];
  topAnchor3 = [subtitleLabel3 topAnchor];
  titleLabel5 = [(PHCheckInView *)self titleLabel];
  bottomAnchor = [titleLabel5 bottomAnchor];
  v32 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:22.0];
  [v46 addObject:v32];

  subtitleLabel4 = [(PHCheckInView *)self subtitleLabel];
  centerXAnchor3 = [subtitleLabel4 centerXAnchor];
  centerXAnchor4 = [(PHCheckInView *)self centerXAnchor];
  v36 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v46 addObject:v36];

  sosCallSlidingButton = [(PHCheckInView *)self sosCallSlidingButton];
  centerXAnchor5 = [sosCallSlidingButton centerXAnchor];
  centerXAnchor6 = [(PHCheckInView *)self centerXAnchor];
  v40 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v46 addObject:v40];

  sosCallSlidingButton2 = [(PHCheckInView *)self sosCallSlidingButton];
  bottomAnchor2 = [sosCallSlidingButton2 bottomAnchor];
  bottomAnchor3 = [(PHCheckInView *)self bottomAnchor];
  [(PHCheckInView *)self distanceFromBottom];
  v45 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v44];
  [v46 addObject:v45];

  [NSLayoutConstraint activateConstraints:v46];
}

- (double)distanceFromTop
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

- (double)distanceFromBottom
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

- (void)start:(id)start completion:(id)completion
{
  completionCopy = completion;
  startCopy = start;
  [(PHCheckInView *)self setCheckInViewModel:startCopy];
  titleString = [startCopy titleString];
  titleLabel = [(PHCheckInView *)self titleLabel];
  [titleLabel setText:titleString];

  subtitleString = [startCopy subtitleString];

  subtitleLabel = [(PHCheckInView *)self subtitleLabel];
  [subtitleLabel setText:subtitleString];

  [(PHCheckInView *)self setCompletion:completionCopy];

  [(PHCheckInView *)self startCountdown];
}

- (void)startCountdown
{
  [(PHCheckInView *)self stopCheckInTimer];
  [(PHCheckInView *)self stopVoiceLoopMessagePlayback];
  checkInViewModel = [(PHCheckInView *)self checkInViewModel];
  sosVoiceMessageType = [checkInViewModel sosVoiceMessageType];

  if (sosVoiceMessageType && (+[SOSUtilities shouldSilenceSOSFlow]& 1) == 0)
  {
    v5 = [[SOSVoiceMessageManager alloc] initWithMessageType:sosVoiceMessageType];
    [(PHCheckInView *)self setVoiceMessageManager:v5];

    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHCheckInView,starting check-in voice message", buf, 2u);
    }

    voiceMessageManager = [(PHCheckInView *)self voiceMessageManager];
    [voiceMessageManager startMessagePlayback];
  }

  checkInTimer = [(PHCheckInView *)self checkInTimer];

  if (!checkInTimer)
  {
    objc_initWeak(&location, self);
    *buf = 0;
    v23 = buf;
    v24 = 0x2020000000;
    checkInViewModel2 = [(PHCheckInView *)self checkInViewModel];
    [checkInViewModel2 timeout];
    v11 = v10;

    v25 = v11;
    checkInViewModel3 = [(PHCheckInView *)self checkInViewModel];
    [checkInViewModel3 countdownTickDuration];
    v14 = v13;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100072264;
    v19 = &unk_1003576D0;
    objc_copyWeak(&v21, &location);
    v20 = buf;
    v15 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:&v16 block:v14];
    [(PHCheckInView *)self setCheckInTimer:v15, v16, v17, v18, v19];

    objc_destroyWeak(&v21);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&location);
  }
}

- (void)pause
{
  [(PHCheckInView *)self setPauseTimer:1];

  [(PHCheckInView *)self stopFlash];
}

- (void)restart
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHCheckInView,restarting countdown timer", v4, 2u);
  }

  [(PHCheckInView *)self setPauseTimer:0];
  [(PHCheckInView *)self startCountdown];
}

- (void)stopCheckInTimer
{
  checkInTimer = [(PHCheckInView *)self checkInTimer];
  isValid = [checkInTimer isValid];

  if (isValid)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidating PHCheckInView timer", v7, 2u);
    }

    checkInTimer2 = [(PHCheckInView *)self checkInTimer];
    [checkInTimer2 invalidate];

    [(PHCheckInView *)self setCheckInTimer:0];
  }
}

- (void)stopVoiceLoopMessagePlayback
{
  voiceMessageManager = [(PHCheckInView *)self voiceMessageManager];

  if (voiceMessageManager)
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHCheckInView,stopping check-in voice message", v6, 2u);
    }

    voiceMessageManager2 = [(PHCheckInView *)self voiceMessageManager];
    [voiceMessageManager2 stopMessagePlayback];

    [(PHCheckInView *)self setVoiceMessageManager:0];
  }
}

- (void)stop
{
  [(PHCheckInView *)self stopAndNotifyResult:2];

  [(PHCheckInView *)self stopFlash];
}

- (void)stopAndNotifyResult:(unint64_t)result
{
  [(PHCheckInView *)self stopVoiceLoopMessagePlayback];
  [(PHCheckInView *)self stopCheckInTimer];
  completion = [(PHCheckInView *)self completion];

  if (completion)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = result;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHCheckInView,returning result,%d", v8, 8u);
    }

    completion2 = [(PHCheckInView *)self completion];
    completion2[2](completion2, result);

    [(PHCheckInView *)self setCompletion:0];
  }

  [(PHCheckInView *)self stopFlash];
}

- (void)didFinishSlideForSlidingButton:(id)button
{
  buttonCopy = button;
  sosCallSlidingButton = [(PHCheckInView *)self sosCallSlidingButton];

  if (sosCallSlidingButton == buttonCopy)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHCheckInView,user slid SOS slider", v7, 2u);
    }

    [(PHCheckInView *)self stopAndNotifyResult:1];
  }
}

- (void)toggleFlash
{
  +[SOSUtilities clawReleaseToCallSupport];
  if (v3 != 0.0)
  {
    if (+[SOSUtilities shouldPlayAudioDuringCountdown])
    {
      avCaptureDispatchQueue = [(PHCheckInView *)self avCaptureDispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100072814;
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
    avCaptureDispatchQueue = [(PHCheckInView *)self avCaptureDispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100072A28;
    block[3] = &unk_100356988;
    block[4] = self;
    dispatch_async(avCaptureDispatchQueue, block);
  }
}

@end