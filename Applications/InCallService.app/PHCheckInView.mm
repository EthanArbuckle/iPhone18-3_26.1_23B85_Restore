@interface PHCheckInView
- (PHCheckInView)initWithFrame:(CGRect)a3;
- (double)distanceFromBottom;
- (double)distanceFromTop;
- (void)commonInit;
- (void)didFinishSlideForSlidingButton:(id)a3;
- (void)pause;
- (void)restart;
- (void)setUpConstraints;
- (void)start:(id)a3 completion:(id)a4;
- (void)startCountdown;
- (void)stop;
- (void)stopAndNotifyResult:(unint64_t)a3;
- (void)stopCheckInTimer;
- (void)stopFlash;
- (void)stopVoiceLoopMessagePlayback;
- (void)toggleFlash;
@end

@implementation PHCheckInView

- (PHCheckInView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PHCheckInView;
  v3 = [(PHCheckInView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v4 = [(PHCheckInView *)self titleLabel];
  [v4 setTextAlignment:1];

  v5 = [(PHCheckInView *)self titleLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [UIFont boldSystemFontOfSize:34.0];
  v7 = [(PHCheckInView *)self titleLabel];
  [v7 setFont:v6];

  v8 = +[UIColor whiteColor];
  v9 = [(PHCheckInView *)self titleLabel];
  [v9 setTextColor:v8];

  v10 = [(PHCheckInView *)self titleLabel];
  [v10 setNumberOfLines:0];

  v11 = [(PHCheckInView *)self titleLabel];
  [(PHCheckInView *)self addSubview:v11];

  v12 = objc_alloc_init(UILabel);
  [(PHCheckInView *)self setSubtitleLabel:v12];

  v13 = [(PHCheckInView *)self subtitleLabel];
  [v13 setTextAlignment:1];

  v14 = [(PHCheckInView *)self subtitleLabel];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [UIFont systemFontOfSize:22.0];
  v16 = [(PHCheckInView *)self subtitleLabel];
  [v16 setFont:v15];

  v17 = +[UIColor whiteColor];
  v18 = [(PHCheckInView *)self subtitleLabel];
  [v18 setTextColor:v17];

  v19 = [(PHCheckInView *)self subtitleLabel];
  [v19 setNumberOfLines:0];

  v20 = [(PHCheckInView *)self subtitleLabel];
  [(PHCheckInView *)self addSubview:v20];

  v21 = [[PHSlidingButton alloc] initWithSlidingButtonType:7 appearanceType:0 callState:2];
  [(PHCheckInView *)self setSosCallSlidingButton:v21];

  v22 = [(PHCheckInView *)self sosCallSlidingButton];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [(PHCheckInView *)self sosCallSlidingButton];
  [v23 setDelegate:self];

  v24 = [(PHCheckInView *)self sosCallSlidingButton];
  [(PHCheckInView *)self addSubview:v24];

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
  v3 = [(PHCheckInView *)self titleLabel];
  v4 = [v3 leadingAnchor];
  v5 = [(PHCheckInView *)self leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [v46 addObject:v6];

  v7 = [(PHCheckInView *)self titleLabel];
  v8 = [v7 trailingAnchor];
  v9 = [(PHCheckInView *)self trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v46 addObject:v10];

  v11 = [(PHCheckInView *)self titleLabel];
  v12 = [v11 topAnchor];
  v13 = [(PHCheckInView *)self safeAreaLayoutGuide];
  v14 = [v13 topAnchor];
  [(PHCheckInView *)self distanceFromTop];
  v15 = [v12 constraintEqualToAnchor:v14 constant:?];
  [v46 addObject:v15];

  v16 = [(PHCheckInView *)self titleLabel];
  v17 = [v16 centerXAnchor];
  v18 = [(PHCheckInView *)self centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v46 addObject:v19];

  v20 = [(PHCheckInView *)self subtitleLabel];
  v21 = [v20 leadingAnchor];
  v22 = [(PHCheckInView *)self leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v46 addObject:v23];

  v24 = [(PHCheckInView *)self subtitleLabel];
  v25 = [v24 trailingAnchor];
  v26 = [(PHCheckInView *)self trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  [v46 addObject:v27];

  v28 = [(PHCheckInView *)self subtitleLabel];
  v29 = [v28 topAnchor];
  v30 = [(PHCheckInView *)self titleLabel];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31 constant:22.0];
  [v46 addObject:v32];

  v33 = [(PHCheckInView *)self subtitleLabel];
  v34 = [v33 centerXAnchor];
  v35 = [(PHCheckInView *)self centerXAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  [v46 addObject:v36];

  v37 = [(PHCheckInView *)self sosCallSlidingButton];
  v38 = [v37 centerXAnchor];
  v39 = [(PHCheckInView *)self centerXAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  [v46 addObject:v40];

  v41 = [(PHCheckInView *)self sosCallSlidingButton];
  v42 = [v41 bottomAnchor];
  v43 = [(PHCheckInView *)self bottomAnchor];
  [(PHCheckInView *)self distanceFromBottom];
  v45 = [v42 constraintEqualToAnchor:v43 constant:-v44];
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

- (void)start:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PHCheckInView *)self setCheckInViewModel:v7];
  v8 = [v7 titleString];
  v9 = [(PHCheckInView *)self titleLabel];
  [v9 setText:v8];

  v10 = [v7 subtitleString];

  v11 = [(PHCheckInView *)self subtitleLabel];
  [v11 setText:v10];

  [(PHCheckInView *)self setCompletion:v6];

  [(PHCheckInView *)self startCountdown];
}

- (void)startCountdown
{
  [(PHCheckInView *)self stopCheckInTimer];
  [(PHCheckInView *)self stopVoiceLoopMessagePlayback];
  v3 = [(PHCheckInView *)self checkInViewModel];
  v4 = [v3 sosVoiceMessageType];

  if (v4 && (+[SOSUtilities shouldSilenceSOSFlow]& 1) == 0)
  {
    v5 = [[SOSVoiceMessageManager alloc] initWithMessageType:v4];
    [(PHCheckInView *)self setVoiceMessageManager:v5];

    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHCheckInView,starting check-in voice message", buf, 2u);
    }

    v7 = [(PHCheckInView *)self voiceMessageManager];
    [v7 startMessagePlayback];
  }

  v8 = [(PHCheckInView *)self checkInTimer];

  if (!v8)
  {
    objc_initWeak(&location, self);
    *buf = 0;
    v23 = buf;
    v24 = 0x2020000000;
    v9 = [(PHCheckInView *)self checkInViewModel];
    [v9 timeout];
    v11 = v10;

    v25 = v11;
    v12 = [(PHCheckInView *)self checkInViewModel];
    [v12 countdownTickDuration];
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
  v3 = [(PHCheckInView *)self checkInTimer];
  v4 = [v3 isValid];

  if (v4)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidating PHCheckInView timer", v7, 2u);
    }

    v6 = [(PHCheckInView *)self checkInTimer];
    [v6 invalidate];

    [(PHCheckInView *)self setCheckInTimer:0];
  }
}

- (void)stopVoiceLoopMessagePlayback
{
  v3 = [(PHCheckInView *)self voiceMessageManager];

  if (v3)
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHCheckInView,stopping check-in voice message", v6, 2u);
    }

    v5 = [(PHCheckInView *)self voiceMessageManager];
    [v5 stopMessagePlayback];

    [(PHCheckInView *)self setVoiceMessageManager:0];
  }
}

- (void)stop
{
  [(PHCheckInView *)self stopAndNotifyResult:2];

  [(PHCheckInView *)self stopFlash];
}

- (void)stopAndNotifyResult:(unint64_t)a3
{
  [(PHCheckInView *)self stopVoiceLoopMessagePlayback];
  [(PHCheckInView *)self stopCheckInTimer];
  v5 = [(PHCheckInView *)self completion];

  if (v5)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHCheckInView,returning result,%d", v8, 8u);
    }

    v7 = [(PHCheckInView *)self completion];
    v7[2](v7, a3);

    [(PHCheckInView *)self setCompletion:0];
  }

  [(PHCheckInView *)self stopFlash];
}

- (void)didFinishSlideForSlidingButton:(id)a3
{
  v4 = a3;
  v5 = [(PHCheckInView *)self sosCallSlidingButton];

  if (v5 == v4)
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
      v4 = [(PHCheckInView *)self avCaptureDispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100072814;
      block[3] = &unk_100356988;
      block[4] = self;
      dispatch_async(v4, block);
    }
  }
}

- (void)stopFlash
{
  +[SOSUtilities clawReleaseToCallSupport];
  if (v3 != 0.0)
  {
    v4 = [(PHCheckInView *)self avCaptureDispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100072A28;
    block[3] = &unk_100356988;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

@end