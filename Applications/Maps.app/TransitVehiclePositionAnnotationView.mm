@interface TransitVehiclePositionAnnotationView
- (TransitVehiclePositionAnnotation)transitVehiclePositionAnnotation;
- (TransitVehiclePositionAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (id)_lastUpdatedTextAttributes;
- (void)_scheduleLastUpdatedLabelUpdate;
- (void)_updateFromAnnotation;
- (void)_updateHeading;
- (void)_updateLastUpdatedLabel;
- (void)didMoveToWindow;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAnnotation:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TransitVehiclePositionAnnotationView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TransitVehiclePositionAnnotationView;
  [(TransitVehiclePositionAnnotationView *)&v9 traitCollectionDidChange:v5];
  if (v5 && (v6 = [v5 userInterfaceStyle], -[TransitVehiclePositionAnnotationView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    v7 = [(TransitVehiclePositionAnnotationView *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v5)
    {
    }

    if (v8)
    {
      [(TransitVehiclePositionAnnotationView *)self updateTheme];
    }
  }
}

- (void)_updateHeading
{
  v3 = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];
  v7 = [v3 vehiclePosition];

  v4 = v7;
  if (v7)
  {
    [v7 heading];
    v6 = v5;
    [(TransitVehiclePositionAnnotationView *)self setHeading:?];
    [(TransitVehiclePositionAnnotationView *)self setShouldDisplayHeading:v6 >= 0.0];
    v4 = v7;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(TransitVehiclePositionAnnotationView *)self annotation];

  if (v13 == v11)
  {
    [(TransitVehiclePositionAnnotationView *)self _updateHeading];
    [(TransitVehiclePositionAnnotationView *)self _updateLastUpdatedLabel];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = TransitVehiclePositionAnnotationView;
    [(TransitVehiclePositionAnnotationView *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)_scheduleLastUpdatedLabelUpdate
{
  if (([(_MKUILabel *)self->_lastUpdatedLabel isHidden]& 1) == 0)
  {
    v3 = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];
    v4 = [v3 vehiclePosition];
    v5 = [v4 timestamp];

    [v5 timeIntervalSinceNow];
    v7 = fabs(v6);
    v8 = 60.0;
    if (v7 < 60.0)
    {
      v8 = 10.0;
    }

    v9 = -(v7 - ceil(v7 / v8) * v8);
    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100CE7268;
    v12[3] = &unk_101661BC8;
    objc_copyWeak(&v13, &location);
    v10 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v12 block:v9];
    labelUpdateTimer = self->_labelUpdateTimer;
    self->_labelUpdateTimer = v10;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (id)_lastUpdatedTextAttributes
{
  v5 = NSForegroundColorAttributeName;
  v2 = +[UIColor labelColor];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (void)_updateLastUpdatedLabel
{
  [(NSTimer *)self->_labelUpdateTimer invalidate];
  labelUpdateTimer = self->_labelUpdateTimer;
  self->_labelUpdateTimer = 0;

  v4 = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];
  if ([v4 allowsTimestampLabel])
  {
    v5 = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];
    v6 = [v5 vehiclePosition];
    v7 = [v6 timestamp];

    if (v7)
    {
      if (!self->_lastUpdatedLabel)
      {
        v8 = [[_MKUILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        lastUpdatedLabel = self->_lastUpdatedLabel;
        self->_lastUpdatedLabel = v8;

        [(_MKUILabel *)self->_lastUpdatedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
        v10 = [UIFont systemFontOfSize:11.0 weight:UIFontWeightSemibold];
        [(_MKUILabel *)self->_lastUpdatedLabel setFont:v10];

        [(TransitVehiclePositionAnnotationView *)self addSubview:self->_lastUpdatedLabel];
        v11 = [(_MKUILabel *)self->_lastUpdatedLabel topAnchor];
        v12 = [(TransitVehiclePositionAnnotationView *)self centerYAnchor];
        [objc_opt_class() baseDiameter];
        v14 = [v11 constraintEqualToAnchor:v12 constant:v13 * 0.5 + 2.0];
        v30[0] = v14;
        v15 = [(_MKUILabel *)self->_lastUpdatedLabel centerXAnchor];
        v16 = [(TransitVehiclePositionAnnotationView *)self centerXAnchor];
        v17 = [v15 constraintEqualToAnchor:v16];
        v30[1] = v17;
        v18 = [NSArray arrayWithObjects:v30 count:2];
        [NSLayoutConstraint activateConstraints:v18];
      }

      v19 = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];
      v20 = [v19 vehiclePosition];
      v21 = [v20 timestamp];

      if (v21)
      {
        [v21 timeIntervalSinceNow];
        v23 = [NSDate dateWithTimeIntervalSinceNow:round(v22 * 0.1) * 10.0];

        v24 = +[NSDate date];
        v25 = [NSDateComponentsFormatter _mapkit_descriptionForTimeSinceDate:v23 referenceDate:v24 smallestUnit:128];

        if (v25)
        {
          v26 = [NSAttributedString alloc];
          v27 = [(TransitVehiclePositionAnnotationView *)self _lastUpdatedTextAttributes];
          v28 = [v26 initWithString:v25 attributes:v27];
          [(_MKUILabel *)self->_lastUpdatedLabel setAttributedText:v28];
        }

        else
        {
          [(_MKUILabel *)self->_lastUpdatedLabel setAttributedText:0];
        }

        [(TransitVehiclePositionAnnotationView *)self _scheduleLastUpdatedLabelUpdate];
        [(_MKUILabel *)self->_lastUpdatedLabel setHidden:0];
      }

      else
      {
        [(_MKUILabel *)self->_lastUpdatedLabel setAttributedText:0];
        [(_MKUILabel *)self->_lastUpdatedLabel setHidden:1];
      }

      return;
    }
  }

  else
  {
  }

  v29 = self->_lastUpdatedLabel;

  [(_MKUILabel *)v29 setHidden:1];
}

- (void)_updateFromAnnotation
{
  v3 = [(TransitVehiclePositionAnnotationView *)self transitVehicleAnnotation];
  -[TransitVehiclePositionAnnotationView setAllowsAccuracyRing:](self, "setAllowsAccuracyRing:", [v3 allowsAccuracyRing]);

  v4 = [(TransitVehiclePositionAnnotationView *)self transitVehicleAnnotation];
  v5 = [v4 color];
  [(TransitVehiclePositionAnnotationView *)self setTintColor:v5];

  [(TransitVehiclePositionAnnotationView *)self _updateHeading];
  [(TransitVehiclePositionAnnotationView *)self _updateLastUpdatedLabel];
  v6 = [(TransitVehiclePositionAnnotationView *)self traitCollection];
  [v6 displayScale];
  v8 = v7;

  v9 = [(TransitVehiclePositionAnnotationView *)self transitVehicleAnnotation];
  v10 = [v9 imageWithScale:-[TransitVehiclePositionAnnotationView _mapkit_isDarkModeEnabled](self nightMode:{"_mapkit_isDarkModeEnabled"), v8}];

  [(TransitVehiclePositionAnnotationView *)self setGlyphImage:v10];
}

- (void)setAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];

  if (v5)
  {
    v6 = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];
    [v6 removeObserver:self forKeyPath:@"vehiclePosition"];
  }

  v9.receiver = self;
  v9.super_class = TransitVehiclePositionAnnotationView;
  [(TransitVehiclePositionAnnotationView *)&v9 setAnnotation:v4];
  v7 = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];

  if (v7)
  {
    v8 = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];
    [v8 addObserver:self forKeyPath:@"vehiclePosition" options:1 context:0];
  }

  [(TransitVehiclePositionAnnotationView *)self _updateFromAnnotation];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = TransitVehiclePositionAnnotationView;
  [(TransitVehiclePositionAnnotationView *)&v5 didMoveToWindow];
  v3 = [(TransitVehiclePositionAnnotationView *)self window];

  if (v3)
  {
    [(TransitVehiclePositionAnnotationView *)self updateTheme];
  }

  else
  {
    [(NSTimer *)self->_labelUpdateTimer invalidate];
    [(_MKUILabel *)self->_lastUpdatedLabel removeFromSuperview];
    lastUpdatedLabel = self->_lastUpdatedLabel;
    self->_lastUpdatedLabel = 0;
  }
}

- (TransitVehiclePositionAnnotation)transitVehiclePositionAnnotation
{
  v3 = [(TransitVehiclePositionAnnotationView *)self annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(TransitVehiclePositionAnnotationView *)self annotation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TransitVehiclePositionAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = TransitVehiclePositionAnnotationView;
  v4 = [(TransitVehiclePositionAnnotationView *)&v7 initWithAnnotation:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(TransitVehiclePositionAnnotationView *)v4 setCanShowCallout:0];
    [(TransitVehiclePositionAnnotationView *)v5 setClipsToBounds:0];
    [(TransitVehiclePositionAnnotationView *)v5 setShouldInnerPulse:0];
    [(TransitVehiclePositionAnnotationView *)v5 setHeadingIndicatorStyle:1];
    [(TransitVehiclePositionAnnotationView *)v5 _updateFromAnnotation];
  }

  return v5;
}

@end