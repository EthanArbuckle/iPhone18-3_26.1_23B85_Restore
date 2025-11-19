@interface PedestrianARSafetyView
- (PedestrianARSafetyView)initWithFrame:(CGRect)a3;
- (double)_imageSizeForCurrentContentSizeCategory;
- (void)_deviceOrientationDidChange:(id)a3;
- (void)_didStartWalkingCheck;
- (void)_hideViews:(BOOL)a3;
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
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)setState:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PedestrianARSafetyView

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v10 = a4;
  v5 = [v10 location];

  if (v5)
  {
    v6 = [GEOLocation alloc];
    v7 = [v10 location];
    v8 = [v6 initWithCLLocation:v7];
    lastLocation = self->_lastLocation;
    self->_lastLocation = v8;
  }
}

- (void)_stopWalkingWarningDismissTimer
{
  v3 = [(PedestrianARSafetyView *)self walkingWarningDisplayLimitTimer];
  [v3 invalidate];

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
  v3 = [(PedestrianARSafetyView *)self walkingWarningDisplayLimitTimer];
  [v3 invalidate];

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
        v13 = self;
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
        v13 = self;
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
      v13 = self;
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
  v3 = [(PedestrianARSafetyView *)self deviceMotionTimer];
  [v3 invalidate];

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

- (void)_hideViews:(BOOL)a3
{
  if (a3)
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

- (void)setState:(int64_t)a3
{
  state = self->_state;
  if (state != a3 && (a3 != 3 || state != 4))
  {
    self->_state = a3;
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
      v11 = self;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] state %@", &v10, 0x16u);
    }

    if (a3 <= 2)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          return;
        }

        [(PedestrianARSafetyView *)self _stopWalkingWarningDisplayTimer];
        [(PedestrianARSafetyView *)self _stopWalkingWarningDismissTimer];
      }

      goto LABEL_19;
    }

    if (a3 == 3)
    {
      [(PedestrianARSafetyView *)self _startWalkingWarningDisplayTimer];
LABEL_19:
      [(PedestrianARSafetyView *)self _hideViews:1];
      return;
    }

    if (a3 == 4)
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
  v4 = [(PedestrianARSafetyView *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  if ([v3 containsObject:v5])
  {
    v6 = 60.0;
  }

  else
  {
    v6 = 54.0;
  }

  return v6;
}

- (void)_deviceOrientationDidChange:(id)a3
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
  v3 = [(PedestrianARSafetyView *)self traitCollection];
  v5 = [v3 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];

  v4 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle2 weight:v5 compatibleWithTraitCollection:UIFontWeightBold];
  [(UILabel *)self->_instructionLabel setFont:v4];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PedestrianARSafetyView;
  [(PedestrianARSafetyView *)&v9 traitCollectionDidChange:v4];
  if (!v4 || (-[PedestrianARSafetyView traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), [v5 preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v5, v8))
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
  v21 = [(UILabel *)self->_instructionLabel font];
  [v21 pointSize];
  v23 = self->_instructionLabel;
  if (10.0 / v22 > 1.0)
  {
    [(UILabel *)v23 setMinimumScaleFactor:1.0];
  }

  else
  {
    v24 = [(UILabel *)v23 font];
    [v24 pointSize];
    [(UILabel *)self->_instructionLabel setMinimumScaleFactor:10.0 / v25];
  }

  v26 = +[UIColor systemWhiteColor];
  [(UILabel *)self->_instructionLabel setTextColor:v26];

  v27 = +[NSBundle mainBundle];
  v28 = [v27 localizedStringForKey:@"PedestrianARSafetyView [instruction]" value:@"localized string not found" table:0];
  [(UILabel *)self->_instructionLabel setText:v28];

  [(UILabel *)self->_instructionLabel setTextAlignment:1];
  [(PedestrianARSafetyView *)self addSubview:self->_instructionLabel];
  v29 = [(UIImageView *)self->_stopImageView heightAnchor];
  [(PedestrianARSafetyView *)self _imageSizeForCurrentContentSizeCategory];
  v30 = [v29 constraintEqualToConstant:?];
  imageViewHeightConstraint = self->_imageViewHeightConstraint;
  self->_imageViewHeightConstraint = v30;

  v65 = [(PedestrianARGradientOverlay *)self->_gradientOverlay leadingAnchor];
  v64 = [(PedestrianARSafetyView *)self leadingAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v67[0] = v63;
  v62 = [(PedestrianARGradientOverlay *)self->_gradientOverlay trailingAnchor];
  v61 = [(PedestrianARSafetyView *)self trailingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v67[1] = v60;
  v59 = [(PedestrianARGradientOverlay *)self->_gradientOverlay bottomAnchor];
  v58 = [(PedestrianARSafetyView *)self bottomAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v67[2] = v57;
  v56 = [(PedestrianARGradientOverlay *)self->_gradientOverlay topAnchor];
  v55 = [(PedestrianARSafetyView *)self topAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v67[3] = v54;
  v52 = [(UILabel *)self->_instructionLabel leadingAnchor];
  v53 = [(PedestrianARSafetyView *)self safeAreaLayoutGuide];
  v51 = [v53 leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51 constant:26.0];
  v67[4] = v50;
  v48 = [(UILabel *)self->_instructionLabel trailingAnchor];
  v49 = [(PedestrianARSafetyView *)self safeAreaLayoutGuide];
  v47 = [v49 trailingAnchor];
  v46 = [v48 constraintEqualToAnchor:v47 constant:-26.0];
  v67[5] = v46;
  v45 = [(UILabel *)self->_instructionLabel centerYAnchor];
  v44 = [(PedestrianARSafetyView *)self centerYAnchor];
  v43 = [v45 constraintEqualToAnchor:v44 constant:6.5];
  v67[6] = v43;
  v42 = [(UIImageView *)self->_stopImageView bottomAnchor];
  v32 = [(UILabel *)self->_instructionLabel topAnchor];
  v33 = [v42 constraintEqualToAnchor:v32 constant:-13.0];
  v34 = self->_imageViewHeightConstraint;
  v67[7] = v33;
  v67[8] = v34;
  v35 = [(UIImageView *)self->_stopImageView widthAnchor];
  v36 = [(UIImageView *)self->_stopImageView heightAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  v67[9] = v37;
  v38 = [(UIImageView *)self->_stopImageView centerXAnchor];
  v39 = [(PedestrianARSafetyView *)self centerXAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
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
  v3 = [(PedestrianARSafetyView *)self session];
  [v3 _removeObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIDeviceOrientationDidChangeNotification object:0];

  v5.receiver = self;
  v5.super_class = PedestrianARSafetyView;
  [(PedestrianARSafetyView *)&v5 dealloc];
}

- (PedestrianARSafetyView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = PedestrianARSafetyView;
  v3 = [(PedestrianARSafetyView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PedestrianARSafetyView *)v3 _setupViews];
    v4->_numberOfSafetyUIPerSession = 0;
    v4->_showSafetyUI = 1;
    v5 = +[MapsARSessionManager sharedManager];
    v6 = [v5 session];
    session = v4->_session;
    v4->_session = v6;

    v8 = [(PedestrianARSafetyView *)v4 session];
    [v8 _addObserver:v4];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v4 selector:"_deviceOrientationDidChange:" name:UIDeviceOrientationDidChangeNotification object:0];
  }

  return v4;
}

@end