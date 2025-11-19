@interface PHCountdownView
- (PHCountdownView)initWithFrame:(CGRect)a3;
- (double)circleDistanceFromTitle;
- (double)countdownCircleDiameter;
- (double)countdownLabelFontSize;
- (double)sliderDistanceFromBottom;
- (double)subtitleDistanceFromCircleBottom;
- (double)titleDistanceFromTop;
- (void)commonInit;
- (void)didFinishSlideForSlidingButton:(id)a3;
- (void)pause;
- (void)restart;
- (void)setUpConstraints;
- (void)start:(id)a3 showSlider:(BOOL)a4 completion:(id)a5;
- (void)startCountdown;
- (void)stop;
- (void)stopFlash;
- (void)toggleFlash;
@end

@implementation PHCountdownView

- (PHCountdownView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PHCountdownView;
  v3 = [(PHCountdownView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v11 = [(UIView *)self->_circleView layer];
  [v11 setCornerRadius:v8 * 0.5];

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

  v18 = [v17 fontAttributes];
  v19 = [v18 mutableCopy];

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

  v29 = [(PHCountdownView *)self sosCallSlidingButton];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [(PHCountdownView *)self sosCallSlidingButton];
  [v30 setDelegate:self];

  v31 = [(PHCountdownView *)self sosCallSlidingButton];
  [(PHCountdownView *)self addSubview:v31];

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

- (void)start:(id)a3 showSlider:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  [(PHCountdownView *)self stop];
  [(PHCountdownView *)self setCountdownViewModel:v9];

  v10 = v5;
  v11 = [(PHCountdownView *)self sosCallSlidingButton];
  [v11 setAlpha:v10];

  [(PHCountdownView *)self setCompletion:v8];
  v12 = [(PHCountdownView *)self countdownViewModel];
  v13 = [v12 titleString];
  v14 = [(PHCountdownView *)self titleLabel];
  [v14 setText:v13];

  v15 = [(PHCountdownView *)self countdownViewModel];
  v16 = [v15 subtitleString];
  v17 = [(PHCountdownView *)self subtitleLabel];
  [v17 setText:v16];

  [(PHCountdownView *)self startCountdown];
}

- (void)startCountdown
{
  [(PHCountdownView *)self stop];
  v3 = [(PHCountdownView *)self countdownViewModel];
  v4 = [(PHCountdownView *)self countdownViewModel];
  v5 = [v3 countdownString:{objc_msgSend(v4, "countdown")}];
  v6 = [(PHCountdownView *)self countdownLabel];
  [v6 setText:v5];

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v7 = [(PHCountdownView *)self countdownViewModel];
  v8 = [v7 countdown];

  v34 = v8;
  v9 = [(PHCountdownView *)self countdownViewModel];
  v10 = [v9 countdownWithAudio];

  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(PHCountdownView *)self countdownViewModel];
    v13 = [(PHCountdownView *)self countdownViewModel];
    v14 = [v13 playsSound];
    *buf = 138412546;
    v36 = v12;
    v37 = 1024;
    v38 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Countdown with model: %@ shouldPlaySounds: %d", buf, 0x12u);
  }

  v15 = [(PHCountdownView *)self countdownViewModel];
  if ([v15 playsSound])
  {
  }

  else
  {
    v16 = [(PHCountdownView *)self countdownViewModel];
    v17 = [v16 playsHaptics];

    if (!v17)
    {
      goto LABEL_10;
    }
  }

  v18 = [(PHCountdownView *)self countdownViewModel];
  if ([v18 playsSound])
  {
    v19 = v32[3] <= v10;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(PHCountdownView *)self alertController];
  [v20 playAlertWithAudio:v19 alertTopic:TLAlertTopicSOSCountdownTick];

LABEL_10:
  v21 = [(PHCountdownView *)self countdownTimer];
  v22 = v21 == 0;

  if (v22)
  {
    objc_initWeak(buf, self);
    v23 = [(PHCountdownView *)self countdownViewModel];
    [v23 countdownTickDuration];
    v25 = v24;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000C74C8;
    v29[3] = &unk_100358EB8;
    objc_copyWeak(v30, buf);
    v29[4] = &v31;
    v30[1] = v10;
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
  v3 = [(PHCountdownView *)self alertController];
  [v3 stopAlert];
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
  v3 = [(PHCountdownView *)self countdownTimer];
  v4 = [v3 isValid];

  if (v4)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidating PHCountdownView timer", v8, 2u);
    }

    v6 = [(PHCountdownView *)self countdownTimer];
    [v6 invalidate];

    [(PHCountdownView *)self setCountdownTimer:0];
  }

  v7 = [(PHCountdownView *)self alertController];
  [v7 stopAlert];

  [(PHCountdownView *)self stopFlash];
}

- (void)setUpConstraints
{
  v3 = [(PHCountdownView *)self titleLabel];
  v4 = [v3 leadingAnchor];
  v5 = [(PHCountdownView *)self leadingAnchor];
  v72 = [v4 constraintEqualToAnchor:v5];

  v6 = [(PHCountdownView *)self titleLabel];
  v7 = [v6 trailingAnchor];
  v8 = [(PHCountdownView *)self trailingAnchor];
  v71 = [v7 constraintEqualToAnchor:v8];

  v9 = [(PHCountdownView *)self titleLabel];
  v10 = [v9 topAnchor];
  v11 = [(PHCountdownView *)self safeAreaLayoutGuide];
  v12 = [v11 topAnchor];
  [(PHCountdownView *)self titleDistanceFromTop];
  v70 = [v10 constraintEqualToAnchor:v12 constant:?];

  v13 = [(PHCountdownView *)self titleLabel];
  v14 = [v13 centerXAnchor];
  v15 = [(PHCountdownView *)self centerXAnchor];
  v69 = [v14 constraintEqualToAnchor:v15];

  v16 = [(PHCountdownView *)self circleView];
  v17 = [v16 centerXAnchor];
  v18 = [(PHCountdownView *)self titleLabel];
  v19 = [v18 centerXAnchor];
  v68 = [v17 constraintEqualToAnchor:v19];

  v20 = [(PHCountdownView *)self circleView];
  v21 = [v20 topAnchor];
  v22 = [(PHCountdownView *)self titleLabel];
  v23 = [v22 bottomAnchor];
  [(PHCountdownView *)self circleDistanceFromTitle];
  v67 = [v21 constraintEqualToAnchor:v23 constant:?];

  v24 = [(PHCountdownView *)self countdownLabel];
  v25 = [v24 centerXAnchor];
  v26 = [(PHCountdownView *)self circleView];
  v27 = [v26 centerXAnchor];
  v66 = [v25 constraintEqualToAnchor:v27];

  v28 = [(PHCountdownView *)self countdownLabel];
  v29 = [v28 centerYAnchor];
  v30 = [(PHCountdownView *)self circleView];
  v31 = [v30 centerYAnchor];
  v65 = [v29 constraintEqualToAnchor:v31];

  v32 = [(PHCountdownView *)self circleView];
  [(PHCountdownView *)self countdownCircleDiameter];
  v64 = [NSLayoutConstraint constraintWithItem:v32 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v33];

  v34 = [(PHCountdownView *)self circleView];
  [(PHCountdownView *)self countdownCircleDiameter];
  v63 = [NSLayoutConstraint constraintWithItem:v34 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v35];

  v36 = [(PHCountdownView *)self subtitleLabel];
  v37 = [v36 leadingAnchor];
  v38 = [(PHCountdownView *)self leadingAnchor];
  v62 = [v37 constraintEqualToAnchor:v38];

  v39 = [(PHCountdownView *)self subtitleLabel];
  v40 = [v39 trailingAnchor];
  v41 = [(PHCountdownView *)self trailingAnchor];
  v61 = [v40 constraintEqualToAnchor:v41];

  v42 = [(PHCountdownView *)self subtitleLabel];
  v43 = [v42 topAnchor];
  v44 = [(PHCountdownView *)self circleView];
  v45 = [v44 bottomAnchor];
  [(PHCountdownView *)self subtitleDistanceFromCircleBottom];
  v60 = [v43 constraintEqualToAnchor:v45 constant:?];

  v46 = [(PHCountdownView *)self subtitleLabel];
  v47 = [v46 centerXAnchor];
  v48 = [(PHCountdownView *)self centerXAnchor];
  v59 = [v47 constraintEqualToAnchor:v48];

  v49 = [(PHCountdownView *)self sosCallSlidingButton];
  v50 = [v49 centerXAnchor];
  v51 = [(PHCountdownView *)self centerXAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  v53 = [(PHCountdownView *)self sosCallSlidingButton];
  v54 = [v53 bottomAnchor];
  v55 = [(PHCountdownView *)self bottomAnchor];
  [(PHCountdownView *)self sliderDistanceFromBottom];
  v57 = [v54 constraintEqualToAnchor:v55 constant:-v56];

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

- (void)didFinishSlideForSlidingButton:(id)a3
{
  v4 = a3;
  v5 = [(PHCountdownView *)self sosCallSlidingButton];

  if (v5 == v4)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHCountdownView,user slid SOS slider", v9, 2u);
    }

    [(PHCountdownView *)self stop];
    v7 = [(PHCountdownView *)self completion];

    if (v7)
    {
      v8 = [(PHCountdownView *)self completion];
      v8[2](v8, 1);
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
      v4 = [(PHCountdownView *)self avCaptureDispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C8398;
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
    v4 = [(PHCountdownView *)self avCaptureDispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C85AC;
    block[3] = &unk_100356988;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

@end