@interface TransitVehiclePositionAnnotationView
- (TransitVehiclePositionAnnotation)transitVehiclePositionAnnotation;
- (TransitVehiclePositionAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (id)_lastUpdatedTextAttributes;
- (void)_scheduleLastUpdatedLabelUpdate;
- (void)_updateFromAnnotation;
- (void)_updateHeading;
- (void)_updateLastUpdatedLabel;
- (void)didMoveToWindow;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAnnotation:(id)annotation;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TransitVehiclePositionAnnotationView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = TransitVehiclePositionAnnotationView;
  [(TransitVehiclePositionAnnotationView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[TransitVehiclePositionAnnotationView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(TransitVehiclePositionAnnotationView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
    {
      [(TransitVehiclePositionAnnotationView *)self updateTheme];
    }
  }
}

- (void)_updateHeading
{
  transitVehiclePositionAnnotation = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];
  vehiclePosition = [transitVehiclePositionAnnotation vehiclePosition];

  v4 = vehiclePosition;
  if (vehiclePosition)
  {
    [vehiclePosition heading];
    v6 = v5;
    [(TransitVehiclePositionAnnotationView *)self setHeading:?];
    [(TransitVehiclePositionAnnotationView *)self setShouldDisplayHeading:v6 >= 0.0];
    v4 = vehiclePosition;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  annotation = [(TransitVehiclePositionAnnotationView *)self annotation];

  if (annotation == objectCopy)
  {
    [(TransitVehiclePositionAnnotationView *)self _updateHeading];
    [(TransitVehiclePositionAnnotationView *)self _updateLastUpdatedLabel];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = TransitVehiclePositionAnnotationView;
    [(TransitVehiclePositionAnnotationView *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_scheduleLastUpdatedLabelUpdate
{
  if (([(_MKUILabel *)self->_lastUpdatedLabel isHidden]& 1) == 0)
  {
    transitVehiclePositionAnnotation = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];
    vehiclePosition = [transitVehiclePositionAnnotation vehiclePosition];
    timestamp = [vehiclePosition timestamp];

    [timestamp timeIntervalSinceNow];
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

  transitVehiclePositionAnnotation = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];
  if ([transitVehiclePositionAnnotation allowsTimestampLabel])
  {
    transitVehiclePositionAnnotation2 = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];
    vehiclePosition = [transitVehiclePositionAnnotation2 vehiclePosition];
    timestamp = [vehiclePosition timestamp];

    if (timestamp)
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
        topAnchor = [(_MKUILabel *)self->_lastUpdatedLabel topAnchor];
        centerYAnchor = [(TransitVehiclePositionAnnotationView *)self centerYAnchor];
        [objc_opt_class() baseDiameter];
        v14 = [topAnchor constraintEqualToAnchor:centerYAnchor constant:v13 * 0.5 + 2.0];
        v30[0] = v14;
        centerXAnchor = [(_MKUILabel *)self->_lastUpdatedLabel centerXAnchor];
        centerXAnchor2 = [(TransitVehiclePositionAnnotationView *)self centerXAnchor];
        v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v30[1] = v17;
        v18 = [NSArray arrayWithObjects:v30 count:2];
        [NSLayoutConstraint activateConstraints:v18];
      }

      transitVehiclePositionAnnotation3 = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];
      vehiclePosition2 = [transitVehiclePositionAnnotation3 vehiclePosition];
      timestamp2 = [vehiclePosition2 timestamp];

      if (timestamp2)
      {
        [timestamp2 timeIntervalSinceNow];
        v23 = [NSDate dateWithTimeIntervalSinceNow:round(v22 * 0.1) * 10.0];

        v24 = +[NSDate date];
        v25 = [NSDateComponentsFormatter _mapkit_descriptionForTimeSinceDate:v23 referenceDate:v24 smallestUnit:128];

        if (v25)
        {
          v26 = [NSAttributedString alloc];
          _lastUpdatedTextAttributes = [(TransitVehiclePositionAnnotationView *)self _lastUpdatedTextAttributes];
          v28 = [v26 initWithString:v25 attributes:_lastUpdatedTextAttributes];
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
  transitVehicleAnnotation = [(TransitVehiclePositionAnnotationView *)self transitVehicleAnnotation];
  -[TransitVehiclePositionAnnotationView setAllowsAccuracyRing:](self, "setAllowsAccuracyRing:", [transitVehicleAnnotation allowsAccuracyRing]);

  transitVehicleAnnotation2 = [(TransitVehiclePositionAnnotationView *)self transitVehicleAnnotation];
  color = [transitVehicleAnnotation2 color];
  [(TransitVehiclePositionAnnotationView *)self setTintColor:color];

  [(TransitVehiclePositionAnnotationView *)self _updateHeading];
  [(TransitVehiclePositionAnnotationView *)self _updateLastUpdatedLabel];
  traitCollection = [(TransitVehiclePositionAnnotationView *)self traitCollection];
  [traitCollection displayScale];
  v8 = v7;

  transitVehicleAnnotation3 = [(TransitVehiclePositionAnnotationView *)self transitVehicleAnnotation];
  v10 = [transitVehicleAnnotation3 imageWithScale:-[TransitVehiclePositionAnnotationView _mapkit_isDarkModeEnabled](self nightMode:{"_mapkit_isDarkModeEnabled"), v8}];

  [(TransitVehiclePositionAnnotationView *)self setGlyphImage:v10];
}

- (void)setAnnotation:(id)annotation
{
  annotationCopy = annotation;
  transitVehiclePositionAnnotation = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];

  if (transitVehiclePositionAnnotation)
  {
    transitVehiclePositionAnnotation2 = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];
    [transitVehiclePositionAnnotation2 removeObserver:self forKeyPath:@"vehiclePosition"];
  }

  v9.receiver = self;
  v9.super_class = TransitVehiclePositionAnnotationView;
  [(TransitVehiclePositionAnnotationView *)&v9 setAnnotation:annotationCopy];
  transitVehiclePositionAnnotation3 = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];

  if (transitVehiclePositionAnnotation3)
  {
    transitVehiclePositionAnnotation4 = [(TransitVehiclePositionAnnotationView *)self transitVehiclePositionAnnotation];
    [transitVehiclePositionAnnotation4 addObserver:self forKeyPath:@"vehiclePosition" options:1 context:0];
  }

  [(TransitVehiclePositionAnnotationView *)self _updateFromAnnotation];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = TransitVehiclePositionAnnotationView;
  [(TransitVehiclePositionAnnotationView *)&v5 didMoveToWindow];
  window = [(TransitVehiclePositionAnnotationView *)self window];

  if (window)
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
  annotation = [(TransitVehiclePositionAnnotationView *)self annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    annotation2 = [(TransitVehiclePositionAnnotationView *)self annotation];
  }

  else
  {
    annotation2 = 0;
  }

  return annotation2;
}

- (TransitVehiclePositionAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = TransitVehiclePositionAnnotationView;
  v4 = [(TransitVehiclePositionAnnotationView *)&v7 initWithAnnotation:annotation reuseIdentifier:identifier];
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