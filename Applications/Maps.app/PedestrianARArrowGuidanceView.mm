@interface PedestrianARArrowGuidanceView
- (PedestrianARArrowGuidanceView)initWithMapViewDelegate:(id)delegate route:(id)route activity:(id)activity;
- (PedestrianARVKMapViewMapDelegate)mapViewDelegate;
- (void)_resetState;
- (void)_setupViews;
- (void)_showInstruction;
- (void)_startArrowPulseAnimation;
- (void)_startArrowPulseAnimationTimer;
- (void)_startShowInstructionTimerIfNeeded;
- (void)_stopArrowPulseAnimationTimer;
- (void)_stopShowInstructionTimer;
- (void)_updateDynamicArrow;
- (void)_updateFont;
- (void)dealloc;
- (void)layoutSubviews;
- (void)mapLayer:(id)layer activeARWalkingFeatureDidUpdate:(id)update;
- (void)stop;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PedestrianARArrowGuidanceView

- (PedestrianARVKMapViewMapDelegate)mapViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewDelegate);

  return WeakRetained;
}

- (void)_startArrowPulseAnimation
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100763F44;
  v2[3] = &unk_101661B18;
  v2[4] = self;
  [UIView animateWithDuration:0 delay:v2 options:0 animations:0.600000024 completion:0.0];
}

- (void)_stopArrowPulseAnimationTimer
{
  [(NSTimer *)self->_arrowPulseAnimationTimer invalidate];
  arrowPulseAnimationTimer = self->_arrowPulseAnimationTimer;
  self->_arrowPulseAnimationTimer = 0;
}

- (void)_startArrowPulseAnimationTimer
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100764138;
  v5[3] = &unk_101661BC8;
  objc_copyWeak(&v6, &location);
  v3 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v5 block:0.6];
  arrowPulseAnimationTimer = self->_arrowPulseAnimationTimer;
  self->_arrowPulseAnimationTimer = v3;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_resetState
{
  self->_dynamicArrowAngle = 2.22507386e-308;
  self->_dynamicArrowLastAngle = 2.22507386e-308;
  [(PedestrianARArrowGuidanceView *)self _stopShowInstructionTimer];
  [(PedestrianARArrowGuidanceView *)self _stopArrowPulseAnimationTimer];
  [(UIImageView *)self->_dynamicArrowImageView setHidden:1];
  instructionLabel = self->_instructionLabel;

  [(UILabel *)instructionLabel setHidden:1];
}

- (void)_showInstruction
{
  if (([(UIImageView *)self->_dynamicArrowImageView isHidden]& 1) == 0)
  {
    instructionLabel = self->_instructionLabel;

    [(UILabel *)instructionLabel setHidden:0];
  }
}

- (void)_stopShowInstructionTimer
{
  [(NSTimer *)self->_showInstructionTimer invalidate];
  showInstructionTimer = self->_showInstructionTimer;
  self->_showInstructionTimer = 0;
}

- (void)_startShowInstructionTimerIfNeeded
{
  if ([(UILabel *)self->_instructionLabel isHidden])
  {
    if (!self->_showInstructionTimer)
    {
      objc_initWeak(&location, self);
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1007643C4;
      v5[3] = &unk_101661BC8;
      objc_copyWeak(&v6, &location);
      v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v5 block:3.0];
      showInstructionTimer = self->_showInstructionTimer;
      self->_showInstructionTimer = v3;

      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_updateDynamicArrow
{
  [(UIImageView *)self->_dynamicArrowImageView setHidden:0];
  _isFirstArrowPosition = [(PedestrianARArrowGuidanceView *)self _isFirstArrowPosition];
  if (_isFirstArrowPosition)
  {
    dynamicArrowAngle = self->_dynamicArrowAngle;
  }

  else
  {
    dynamicArrowAngle = self->_dynamicArrowAngle;
    if (vabdd_f64(self->_dynamicArrowLastAngle, dynamicArrowAngle) > 45.0)
    {
      self->_dynamicArrowLastAngle = dynamicArrowAngle;
      return;
    }
  }

  self->_dynamicArrowLastAngle = dynamicArrowAngle;
  [(PedestrianARArrowGuidanceView *)self frame];
  v6 = v5 * 0.5 + -28.5;
  [(PedestrianARArrowGuidanceView *)self frame];
  v8 = v7 * 0.5 + -28.5;
  [(PedestrianARArrowGuidanceView *)self frame];
  v10 = v9 * 0.5;
  [(PedestrianARArrowGuidanceView *)self frame];
  v12 = v11 * 0.5;
  v13 = self->_dynamicArrowAngle * 0.0174532925 + -1.57079633;
  v14 = __sincos_stret(v13);
  v15 = v10 + v14.__cosval * v6;
  v16 = v12 + v14.__sinval * v8;
  [(UILabel *)self->_instructionLabel bounds];
  v18 = v17 * 0.5 + 36.5;
  [(UILabel *)self->_instructionLabel bounds];
  v20 = self->_dynamicArrowAngle;
  if (v20 > 45.0 && v20 <= 135.0)
  {
    x = v15 - v18;
    goto LABEL_8;
  }

  v24 = v19 * 0.5 + 32.5;
  if (v20 <= 135.0 || v20 > 225.0)
  {
    if (v20 > 225.0 && v20 <= 315.0)
    {
      x = v18 + v15;
LABEL_8:
      y = v16;
      if (!_isFirstArrowPosition)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v25 = v20 <= 315.0;
    v26 = v20 > 45.0;
    if (v25 && v26)
    {
      y = CGPointZero.y;
    }

    else
    {
      y = v24 + v16;
    }

    if (v25 && v26)
    {
      x = CGPointZero.x;
    }

    else
    {
      x = v15;
    }

    if (!_isFirstArrowPosition)
    {
      goto LABEL_10;
    }

LABEL_9:
    [(UIImageView *)self->_dynamicArrowImageView setCenter:v15, v16];
    [(UILabel *)self->_instructionLabel setCenter:x, y];
    CGAffineTransformMakeRotation(&v29, v13);
    dynamicArrowImageView = self->_dynamicArrowImageView;
    v28 = v29;
    [(UIImageView *)dynamicArrowImageView setTransform:&v28];
    [(PedestrianARArrowGuidanceView *)self _startArrowPulseAnimationTimer];
    goto LABEL_10;
  }

  y = v16 - v24;
  x = v15;
  if (_isFirstArrowPosition)
  {
    goto LABEL_9;
  }

LABEL_10:
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1007646F8;
  v27[3] = &unk_1016285E0;
  v27[4] = self;
  *&v27[5] = v13;
  *&v27[6] = v15;
  *&v27[7] = v16;
  *&v27[8] = x;
  *&v27[9] = y;
  [UIView animateWithDuration:v27 animations:0.600000024];
  if (self->_isFirstArrowOfRoute)
  {
    self->_isFirstArrowOfRoute = 0;
    [(PedestrianARArrowGuidanceView *)self _showInstruction];
  }

  else
  {
    [(PedestrianARArrowGuidanceView *)self _startShowInstructionTimerIfNeeded];
  }
}

- (void)mapLayer:(id)layer activeARWalkingFeatureDidUpdate:(id)update
{
  layerCopy = layer;
  updateCopy = update;
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &v15);
  if (self->_isStopping)
  {
    v8 = sub_100799F08();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Pedestrian AR is stopping. No longer updating directional arrows", buf, 2u);
    }

    goto LABEL_4;
  }

  if ([updateCopy isVisible])
  {
    v9 = sub_100799F08();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      feature = [updateCopy feature];
      *buf = 138477827;
      v17 = feature;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Feature '%{private}@' should be visible. Hiding directional arrows", buf, 0xCu);
    }

LABEL_14:

    [(PedestrianARArrowGuidanceView *)self _resetState];
    goto LABEL_15;
  }

  feature2 = [updateCopy feature];
  v12 = feature2 == 0;

  if (v12)
  {
    v9 = sub_100799F08();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Feature is nil. Hiding directional arrows", buf, 2u);
    }

    goto LABEL_14;
  }

  if (![updateCopy isDirectlyBehind] || -[PedestrianARArrowGuidanceView _isFirstArrowPosition](self, "_isFirstArrowPosition"))
  {
    [updateCopy screenHeading];
    self->_dynamicArrowAngle = v13;
    [(PedestrianARArrowGuidanceView *)self _updateDynamicArrow];
    goto LABEL_15;
  }

  v8 = sub_100799F08();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    feature3 = [updateCopy feature];
    *buf = 138477827;
    v17 = feature3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Feature '%{private}@' is directly behind user.", buf, 0xCu);
  }

LABEL_4:

LABEL_15:
  os_activity_scope_leave(&v15);
}

- (void)_updateFont
{
  traitCollection = [(PedestrianARArrowGuidanceView *)self traitCollection];
  v5 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  v4 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle2 weight:v5 compatibleWithTraitCollection:UIFontWeightBold];
  [(UILabel *)self->_instructionLabel setFont:v4];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PedestrianARArrowGuidanceView;
  [(PedestrianARArrowGuidanceView *)&v4 layoutSubviews];
  [(PedestrianARArrowGuidanceView *)self frame];
  [(NSLayoutConstraint *)self->_instructionWidthConstraint setConstant:v3 * 0.699999988];
  [(UILabel *)self->_instructionLabel setNeedsUpdateConstraints];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PedestrianARArrowGuidanceView;
  [(PedestrianARArrowGuidanceView *)&v9 traitCollectionDidChange:changeCopy];
  if (!changeCopy || (-[PedestrianARArrowGuidanceView traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), [v5 preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(changeCopy, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v5, v8))
  {
    [(PedestrianARArrowGuidanceView *)self _updateFont];
  }
}

- (void)_setupViews
{
  v3 = [UIImageView alloc];
  v4 = [UIImage imageNamed:@"PedestrianAR_feature_arrow_right"];
  v5 = [v3 initWithImage:v4];
  dynamicArrowImageView = self->_dynamicArrowImageView;
  self->_dynamicArrowImageView = v5;

  [(UIImageView *)self->_dynamicArrowImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_dynamicArrowImageView setContentMode:1];
  layer = [(UIImageView *)self->_dynamicArrowImageView layer];
  [layer setShadowOffset:{0.0, 0.0}];

  v8 = +[UIColor systemBlackColor];
  cGColor = [v8 CGColor];
  layer2 = [(UIImageView *)self->_dynamicArrowImageView layer];
  [layer2 setShadowColor:cGColor];

  layer3 = [(UIImageView *)self->_dynamicArrowImageView layer];
  LODWORD(v12) = 1053609165;
  [layer3 setShadowOpacity:v12];

  layer4 = [(UIImageView *)self->_dynamicArrowImageView layer];
  [layer4 setShadowRadius:26.0];

  [(PedestrianARArrowGuidanceView *)self addSubview:self->_dynamicArrowImageView];
  v14 = objc_alloc_init(UILabel);
  instructionLabel = self->_instructionLabel;
  self->_instructionLabel = v14;

  [(UILabel *)self->_instructionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  layer5 = [(UILabel *)self->_instructionLabel layer];
  [layer5 setShadowOffset:{0.0, 0.0}];

  v17 = +[UIColor systemBlackColor];
  cGColor2 = [v17 CGColor];
  layer6 = [(UILabel *)self->_instructionLabel layer];
  [layer6 setShadowColor:cGColor2];

  layer7 = [(UILabel *)self->_instructionLabel layer];
  LODWORD(v21) = 1061997773;
  [layer7 setShadowOpacity:v21];

  layer8 = [(UILabel *)self->_instructionLabel layer];
  [layer8 setShadowRadius:26.0];

  [(UILabel *)self->_instructionLabel setNumberOfLines:2];
  v23 = +[UIColor systemWhiteColor];
  [(UILabel *)self->_instructionLabel setTextColor:v23];

  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"PedestrianARArrowGuidanceView [instruction]" value:@"localized string not found" table:0];
  [(UILabel *)self->_instructionLabel setText:v25];

  [(PedestrianARArrowGuidanceView *)self addSubview:self->_instructionLabel];
  widthAnchor = [(UILabel *)self->_instructionLabel widthAnchor];
  v27 = +[UIScreen mainScreen];
  [v27 bounds];
  v29 = [widthAnchor constraintLessThanOrEqualToConstant:v28 * 0.699999988];
  instructionWidthConstraint = self->_instructionWidthConstraint;
  self->_instructionWidthConstraint = v29;

  heightAnchor = [(UIImageView *)self->_dynamicArrowImageView heightAnchor];
  v32 = [heightAnchor constraintEqualToConstant:57.0];
  widthAnchor2 = [(UIImageView *)self->_dynamicArrowImageView widthAnchor];
  v34 = [widthAnchor2 constraintEqualToConstant:57.0];
  v35 = self->_instructionWidthConstraint;
  v37[1] = v34;
  v37[2] = v35;
  v36 = [NSArray arrayWithObjects:v37 count:3];
  [NSLayoutConstraint activateConstraints:v36];

  [(PedestrianARArrowGuidanceView *)self _updateFont];
}

- (void)stop
{
  self->_isStopping = 1;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100765044;
  v2[3] = &unk_101661B18;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:0.2];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewDelegate);
  [WeakRetained unregisterObserver:self];

  [(PedestrianARArrowGuidanceView *)self _stopShowInstructionTimer];
  [(PedestrianARArrowGuidanceView *)self _stopArrowPulseAnimationTimer];
  v4.receiver = self;
  v4.super_class = PedestrianARArrowGuidanceView;
  [(PedestrianARArrowGuidanceView *)&v4 dealloc];
}

- (PedestrianARArrowGuidanceView)initWithMapViewDelegate:(id)delegate route:(id)route activity:(id)activity
{
  delegateCopy = delegate;
  routeCopy = route;
  activityCopy = activity;
  if (!delegateCopy)
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v23 = "[PedestrianARArrowGuidanceView initWithMapViewDelegate:route:activity:]";
      v24 = 2080;
      v25 = "PedestrianARArrowGuidanceView.m";
      v26 = 1024;
      v27 = 53;
      v28 = 2080;
      v29 = "mapViewDelegate != nil";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v23 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v21.receiver = self;
  v21.super_class = PedestrianARArrowGuidanceView;
  v11 = [(PedestrianARArrowGuidanceView *)&v21 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_mapViewDelegate, delegateCopy);
    objc_storeStrong(&v12->_activity, activity);
    v13 = +[PedestrianARSessionUsageTracker sharedInstance];
    uniqueRouteID = [routeCopy uniqueRouteID];
    uUIDString = [uniqueRouteID UUIDString];
    v12->_isFirstArrowOfRoute = [v13 hasAREverLocalizedForRoute:uUIDString] ^ 1;

    [(PedestrianARArrowGuidanceView *)v12 _setupViews];
    [(PedestrianARArrowGuidanceView *)v12 _resetState];
    WeakRetained = objc_loadWeakRetained(&v12->_mapViewDelegate);
    [WeakRetained registerObserver:v12];
  }

  return v12;
}

@end