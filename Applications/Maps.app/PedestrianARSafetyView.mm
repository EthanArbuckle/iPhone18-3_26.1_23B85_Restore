@interface PedestrianARSafetyView
- (PedestrianARSafetyView)initWithFrame:(CGRect)frame;
- (double)_imageSizeForCurrentContentSizeCategory;
- (void)_deviceOrientationDidChange:(id)change;
- (void)_didStartWalkingCheck;
- (void)_hideViews:(BOOL)views;
- (void)_setupViews;
- (void)_startMonitoringDeviceMotion;
- (void)_startWalkingWarningDismissTimer;
- (void)_startWalkingWarningDisplayTimer;
- (void)_stopMonitoringDeviceMotion;
- (void)_stopWalkingWarningDismissTimer;
- (void)_stopWalkingWarningDisplayTimer;
- (void)_updateFont;
- (void)_updateNumberOflines;
- (void)dealloc;
- (void)didEndARSession;
- (void)didStartARSession;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)setState:(int64_t)state;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PedestrianARSafetyView

- (void)session:(id)session didUpdateFrame:(id)frame
{
  frameCopy = frame;
  location = [frameCopy location];

  if (location)
  {
    v6 = [GEOLocation alloc];
    location2 = [frameCopy location];
    v8 = [v6 initWithCLLocation:location2];
    lastLocation = self->_lastLocation;
    self->_lastLocation = v8;
  }
}

- (void)_stopWalkingWarningDismissTimer
{
  walkingWarningDisplayLimitTimer = [(PedestrianARSafetyView *)self walkingWarningDisplayLimitTimer];
  [walkingWarningDisplayLimitTimer invalidate];

  [(PedestrianARSafetyView *)self setWalkingWarningDisplayLimitTimer:0];
}

- (void)_startWalkingWarningDismissTimer
{
  GEOConfigGetDouble();
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_didExceedWalkingWarningDismissLimit" selector:0 userInfo:0 repeats:?];
  [(PedestrianARSafetyView *)self setWalkingWarningDisplayLimitTimer:v3];
}

- (void)_stopWalkingWarningDisplayTimer
{
  walkingWarningDisplayLimitTimer = [(PedestrianARSafetyView *)self walkingWarningDisplayLimitTimer];
  [walkingWarningDisplayLimitTimer invalidate];

  [(PedestrianARSafetyView *)self setWalkingWarningDisplayLimitTimer:0];
}

- (void)_startWalkingWarningDisplayTimer
{
  GEOConfigGetDouble();
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_didExceedWalkingWarningDisplayLimit" selector:0 userInfo:0 repeats:?];
  [(PedestrianARSafetyView *)self setWalkingWarningDisplayLimitTimer:v3];
}

- (void)_didStartWalkingCheck
{
  lastLocation = self->_lastLocation;
  if (lastLocation && self->_startWalkingLocation)
  {
    [(GEOLocation *)lastLocation coordinate];
    [(GEOLocation *)self->_startWalkingLocation coordinate];
    GEOCalculateDistance();
    v5 = v4;
    GEOConfigGetDouble();
    if (v5 >= v6)
    {
      [(PedestrianARSafetyView *)self setState:3];
      v8 = sub_100956464();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 134349312;
        selfCopy3 = self;
        v14 = 2048;
        v15 = v5;
        v9 = "[%{public}p] DeviceMotion - %f - walking";
        goto LABEL_10;
      }
    }

    else
    {
      startWalkingLocation = self->_startWalkingLocation;
      self->_startWalkingLocation = 0;

      [(PedestrianARSafetyView *)self setState:2];
      v8 = sub_100956464();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 134349312;
        selfCopy3 = self;
        v14 = 2048;
        v15 = v5;
        v9 = "[%{public}p] DeviceMotion - %f - not walking";
LABEL_10:
        v10 = v8;
        v11 = 22;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v8 = sub_100956464();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 134349056;
      selfCopy3 = self;
      v9 = "[%{public}p] DeviceMotion no location";
      v10 = v8;
      v11 = 12;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, &v12, v11);
    }
  }

  [(PedestrianARSafetyView *)self _startMonitoringDeviceMotion];
}

- (void)_stopMonitoringDeviceMotion
{
  deviceMotionTimer = [(PedestrianARSafetyView *)self deviceMotionTimer];
  [deviceMotionTimer invalidate];

  [(PedestrianARSafetyView *)self setDeviceMotionTimer:0];
  startWalkingLocation = self->_startWalkingLocation;
  self->_startWalkingLocation = 0;
}

- (void)_startMonitoringDeviceMotion
{
  objc_storeStrong(&self->_startWalkingLocation, self->_lastLocation);
  GEOConfigGetDouble();
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_didStartWalkingCheck" selector:0 userInfo:0 repeats:?];
  [(PedestrianARSafetyView *)self setDeviceMotionTimer:v3];
}

- (void)_hideViews:(BOOL)views
{
  if (views)
  {
    [(NSDate *)self->_lastDisplayTime timeIntervalSinceNow];
    v5 = v4;
    [(NSDate *)self->_lastDisplayTime timeIntervalSinceNow];
    if (v5 >= 0.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = -v6;
    }

    GEOConfigGetDouble();
    v8 = 0.0;
    if (v7 >= v9 || (GEOConfigGetDouble(), v10 <= v7))
    {
      v12 = 0.0;
    }

    else
    {
      GEOConfigGetDouble();
      v12 = v11 - v7;
    }
  }

  else
  {
    v13 = +[NSDate now];
    lastDisplayTime = self->_lastDisplayTime;
    self->_lastDisplayTime = v13;

    v12 = 0.0;
    v8 = 1.0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100956740;
  v15[3] = &unk_101661650;
  v15[4] = self;
  *&v15[5] = v8;
  [UIView animateWithDuration:0 delay:v15 options:0 animations:0.5 completion:v12];
}

- (void)setState:(int64_t)state
{
  state = self->_state;
  if (state != state && (state != 3 || state != 4))
  {
    self->_state = state;
    v6 = sub_100956464();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = self->_state - 1;
      if (v7 > 3)
      {
        v8 = @"PedestrianARSafetyViewUnknown";
      }

      else
      {
        v8 = *(&off_10162F7E8 + v7);
      }

      v10 = 134349314;
      selfCopy = self;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] state %@", &v10, 0x16u);
    }

    if (state <= 2)
    {
      if (state != 1)
      {
        if (state != 2)
        {
          return;
        }

        [(PedestrianARSafetyView *)self _stopWalkingWarningDisplayTimer];
        [(PedestrianARSafetyView *)self _stopWalkingWarningDismissTimer];
      }

      goto LABEL_19;
    }

    if (state == 3)
    {
      [(PedestrianARSafetyView *)self _startWalkingWarningDisplayTimer];
LABEL_19:
      [(PedestrianARSafetyView *)self _hideViews:1];
      return;
    }

    if (state == 4)
    {
      if (self->_showSafetyUI)
      {
        [(PedestrianARSafetyView *)self _hideViews:0];
      }

      v9 = self->_numberOfSafetyUIPerSession + 1;
      self->_numberOfSafetyUIPerSession = v9;
      self->_showSafetyUI = v9 < GEOConfigGetInteger();
      [(PedestrianARSafetyView *)self _startWalkingWarningDismissTimer];
    }
  }
}

- (void)didEndARSession
{
  [(PedestrianARSafetyView *)self setState:1];

  [(PedestrianARSafetyView *)self _stopMonitoringDeviceMotion];
}

- (void)didStartARSession
{
  [(PedestrianARSafetyView *)self setState:2];

  [(PedestrianARSafetyView *)self _startMonitoringDeviceMotion];
}

- (double)_imageSizeForCurrentContentSizeCategory
{
  if (qword_10195DDE8 != -1)
  {
    dispatch_once(&qword_10195DDE8, &stru_10162F7A8);
  }

  v3 = qword_10195DDE0;
  traitCollection = [(PedestrianARSafetyView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if ([v3 containsObject:preferredContentSizeCategory])
  {
    v6 = 60.0;
  }

  else
  {
    v6 = 54.0;
  }

  return v6;
}

- (void)_deviceOrientationDidChange:(id)change
{
  [(PedestrianARSafetyView *)self _updateNumberOflines];
  instructionLabel = self->_instructionLabel;

  [(UILabel *)instructionLabel invalidateIntrinsicContentSize];
}

- (void)_updateNumberOflines
{
  [(PedestrianARSafetyView *)self frame];
  Width = CGRectGetWidth(v7);
  [(PedestrianARSafetyView *)self frame];
  if (Width <= CGRectGetHeight(v8))
  {
    v4 = 5;
  }

  else
  {
    v4 = 3;
  }

  instructionLabel = self->_instructionLabel;

  [(UILabel *)instructionLabel setNumberOfLines:v4];
}

- (void)_updateFont
{
  traitCollection = [(PedestrianARSafetyView *)self traitCollection];
  v5 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];

  v4 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle2 weight:v5 compatibleWithTraitCollection:UIFontWeightBold];
  [(UILabel *)self->_instructionLabel setFont:v4];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PedestrianARSafetyView;
  [(PedestrianARSafetyView *)&v9 traitCollectionDidChange:changeCopy];
  if (!changeCopy || (-[PedestrianARSafetyView traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), [v5 preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(changeCopy, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v5, v8))
  {
    [(PedestrianARSafetyView *)self _updateFont];
    [(PedestrianARSafetyView *)self _imageSizeForCurrentContentSizeCategory];
    [(NSLayoutConstraint *)self->_imageViewHeightConstraint setConstant:?];
  }
}

- (void)_setupViews
{
  [(PedestrianARSafetyView *)self setUserInteractionEnabled:0];
  v3 = [PedestrianARGradientOverlay alloc];
  v4 = +[PedestrianARGradientOverlayConfiguration safetyViewConfiguration];
  v5 = [(PedestrianARGradientOverlay *)v3 initWithConfiguration:v4];
  gradientOverlay = self->_gradientOverlay;
  self->_gradientOverlay = v5;

  [(PedestrianARGradientOverlay *)self->_gradientOverlay setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PedestrianARGradientOverlay *)self->_gradientOverlay setState:3];
  [(PedestrianARSafetyView *)self addSubview:self->_gradientOverlay];
  v7 = [UIImage systemImageNamed:@"hand.raised.fill"];
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  v9 = [UIImageSymbolConfiguration configurationWithFont:v8];
  v10 = [v7 imageWithConfiguration:v9];

  v11 = [UIImageView alloc];
  v66 = v10;
  v12 = [v10 imageWithRenderingMode:2];
  v13 = +[UIColor systemWhiteColor];
  v14 = [v12 _flatImageWithColor:v13];
  v15 = [v14 imageWithRenderingMode:1];
  v16 = [v11 initWithImage:v15];
  stopImageView = self->_stopImageView;
  self->_stopImageView = v16;

  [(UIImageView *)self->_stopImageView setContentMode:1];
  [(UIImageView *)self->_stopImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = +[UIColor clearColor];
  [(UIImageView *)self->_stopImageView setBackgroundColor:v18];

  [(PedestrianARSafetyView *)self addSubview:self->_stopImageView];
  v19 = objc_alloc_init(UILabel);
  instructionLabel = self->_instructionLabel;
  self->_instructionLabel = v19;

  [(UILabel *)self->_instructionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_instructionLabel setAdjustsFontSizeToFitWidth:1];
  font = [(UILabel *)self->_instructionLabel font];
  [font pointSize];
  v23 = self->_instructionLabel;
  if (10.0 / v22 > 1.0)
  {
    [(UILabel *)v23 setMinimumScaleFactor:1.0];
  }

  else
  {
    font2 = [(UILabel *)v23 font];
    [font2 pointSize];
    [(UILabel *)self->_instructionLabel setMinimumScaleFactor:10.0 / v25];
  }

  v26 = +[UIColor systemWhiteColor];
  [(UILabel *)self->_instructionLabel setTextColor:v26];

  v27 = +[NSBundle mainBundle];
  v28 = [v27 localizedStringForKey:@"PedestrianARSafetyView [instruction]" value:@"localized string not found" table:0];
  [(UILabel *)self->_instructionLabel setText:v28];

  [(UILabel *)self->_instructionLabel setTextAlignment:1];
  [(PedestrianARSafetyView *)self addSubview:self->_instructionLabel];
  heightAnchor = [(UIImageView *)self->_stopImageView heightAnchor];
  [(PedestrianARSafetyView *)self _imageSizeForCurrentContentSizeCategory];
  v30 = [heightAnchor constraintEqualToConstant:?];
  imageViewHeightConstraint = self->_imageViewHeightConstraint;
  self->_imageViewHeightConstraint = v30;

  leadingAnchor = [(PedestrianARGradientOverlay *)self->_gradientOverlay leadingAnchor];
  leadingAnchor2 = [(PedestrianARSafetyView *)self leadingAnchor];
  v63 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v67[0] = v63;
  trailingAnchor = [(PedestrianARGradientOverlay *)self->_gradientOverlay trailingAnchor];
  trailingAnchor2 = [(PedestrianARSafetyView *)self trailingAnchor];
  v60 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v67[1] = v60;
  bottomAnchor = [(PedestrianARGradientOverlay *)self->_gradientOverlay bottomAnchor];
  bottomAnchor2 = [(PedestrianARSafetyView *)self bottomAnchor];
  v57 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v67[2] = v57;
  topAnchor = [(PedestrianARGradientOverlay *)self->_gradientOverlay topAnchor];
  topAnchor2 = [(PedestrianARSafetyView *)self topAnchor];
  v54 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v67[3] = v54;
  leadingAnchor3 = [(UILabel *)self->_instructionLabel leadingAnchor];
  safeAreaLayoutGuide = [(PedestrianARSafetyView *)self safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
  v50 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:26.0];
  v67[4] = v50;
  trailingAnchor3 = [(UILabel *)self->_instructionLabel trailingAnchor];
  safeAreaLayoutGuide2 = [(PedestrianARSafetyView *)self safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide2 trailingAnchor];
  v46 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-26.0];
  v67[5] = v46;
  centerYAnchor = [(UILabel *)self->_instructionLabel centerYAnchor];
  centerYAnchor2 = [(PedestrianARSafetyView *)self centerYAnchor];
  v43 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:6.5];
  v67[6] = v43;
  bottomAnchor3 = [(UIImageView *)self->_stopImageView bottomAnchor];
  topAnchor3 = [(UILabel *)self->_instructionLabel topAnchor];
  v33 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:-13.0];
  v34 = self->_imageViewHeightConstraint;
  v67[7] = v33;
  v67[8] = v34;
  widthAnchor = [(UIImageView *)self->_stopImageView widthAnchor];
  heightAnchor2 = [(UIImageView *)self->_stopImageView heightAnchor];
  v37 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
  v67[9] = v37;
  centerXAnchor = [(UIImageView *)self->_stopImageView centerXAnchor];
  centerXAnchor2 = [(PedestrianARSafetyView *)self centerXAnchor];
  v40 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v67[10] = v40;
  v41 = [NSArray arrayWithObjects:v67 count:11];
  [NSLayoutConstraint activateConstraints:v41];

  [(PedestrianARSafetyView *)self setState:1];
  [(PedestrianARSafetyView *)self _updateFont];
  [(PedestrianARSafetyView *)self _updateNumberOflines];
}

- (void)dealloc
{
  [(PedestrianARSafetyView *)self didEndARSession];
  [(PedestrianARSafetyView *)self _stopWalkingWarningDismissTimer];
  [(PedestrianARSafetyView *)self _stopWalkingWarningDisplayTimer];
  session = [(PedestrianARSafetyView *)self session];
  [session _removeObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIDeviceOrientationDidChangeNotification object:0];

  v5.receiver = self;
  v5.super_class = PedestrianARSafetyView;
  [(PedestrianARSafetyView *)&v5 dealloc];
}

- (PedestrianARSafetyView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = PedestrianARSafetyView;
  v3 = [(PedestrianARSafetyView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PedestrianARSafetyView *)v3 _setupViews];
    v4->_numberOfSafetyUIPerSession = 0;
    v4->_showSafetyUI = 1;
    v5 = +[MapsARSessionManager sharedManager];
    session = [v5 session];
    session = v4->_session;
    v4->_session = session;

    session2 = [(PedestrianARSafetyView *)v4 session];
    [session2 _addObserver:v4];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v4 selector:"_deviceOrientationDidChange:" name:UIDeviceOrientationDidChangeNotification object:0];
  }

  return v4;
}

@end