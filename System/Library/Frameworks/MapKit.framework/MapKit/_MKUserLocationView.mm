@interface _MKUserLocationView
- (BOOL)_allowedToShowCallout;
- (BOOL)shouldShowCallout;
- (UIColor)_balloonInnerStrokeColor;
- (UIColor)_balloonTintColor;
- (_MKUserLocationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (void)_dismissCallout:(BOOL)callout;
- (void)_mkObserveValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_setBalloonImage:(id)image;
- (void)_setBalloonImageTintColor:(id)color;
- (void)_setCalloutStyle:(int64_t)style;
- (void)_setShowingPreciseAuthorizedLocation:(BOOL)location;
- (void)_showCallout:(BOOL)callout;
- (void)_startObservingAnnotation;
- (void)_stopObservingAnnotation;
- (void)_updateCalloutOffset;
- (void)_updateCalloutStyle;
- (void)_updateLegacyConfiguration;
- (void)_updateMaxRadiusToShowAccuracyRing;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAnnotation:(id)annotation;
- (void)setBounds:(CGRect)bounds;
- (void)setDetailCalloutAccessoryView:(id)view;
- (void)setLeftCalloutAccessoryView:(id)view;
- (void)setRightCalloutAccessoryView:(id)view;
@end

@implementation _MKUserLocationView

- (void)_stopObservingAnnotation
{
  annotation = [(MKAnnotationView *)self annotation];
  if (annotation)
  {
    v4 = annotation;
    [(_MKKVOProxy *)self->_kvoProxy removeObserverForObject:annotation forKeyPath:@"title"];
    [(_MKKVOProxy *)self->_kvoProxy removeObserverForObject:v4 forKeyPath:@"subtitle"];
    annotation = v4;
  }
}

- (void)_startObservingAnnotation
{
  annotation = [(MKAnnotationView *)self annotation];
  if (annotation)
  {
    kvoProxy = self->_kvoProxy;
    v7 = annotation;
    if (!kvoProxy)
    {
      v5 = [[_MKKVOProxy alloc] initWithDelegate:self];
      v6 = self->_kvoProxy;
      self->_kvoProxy = v5;

      kvoProxy = self->_kvoProxy;
    }

    [(_MKKVOProxy *)kvoProxy addObserverForObject:v7 forKeyPath:@"title" options:0 context:0];
    [(_MKKVOProxy *)self->_kvoProxy addObserverForObject:v7 forKeyPath:@"subtitle" options:0 context:0];
    annotation = v7;
  }
}

- (void)_updateLegacyConfiguration
{
  if (_MKModernPuckDesignEnabled_onceToken != -1)
  {
    dispatch_once(&_MKModernPuckDesignEnabled_onceToken, &__block_literal_global_25_27148);
  }

  v3 = _MKModernPuckDesignEnabled_linkedOnOrAfterGoldenAzulHunterArcher & _MKModernPuckDesignEnabled_newPuckEnabled;
  self->_radiusBasedAccuracyOpacity = _MKModernPuckDesignEnabled_linkedOnOrAfterGoldenAzulHunterArcher & _MKModernPuckDesignEnabled_newPuckEnabled;
  [(_MKPuckAnnotationView *)self _setShouldHidePuckWhenAccuracyVisible:v3 & 1];
  [(_MKUserLocationView *)self _updateMaxRadiusToShowAccuracyRing];
  [(_MKUserLocationView *)self _updateCalloutStyle];
  v4.receiver = self;
  v4.super_class = _MKUserLocationView;
  [(_MKPuckAnnotationView *)&v4 _updateLegacyConfiguration];
}

- (void)_updateMaxRadiusToShowAccuracyRing
{
  externalMaxAccuracyRadius = self->_externalMaxAccuracyRadius;
  if (externalMaxAccuracyRadius <= 0.0)
  {
    if (self->_radiusBasedAccuracyOpacity)
    {
      _staticMapView = [(MKAnnotationView *)self _staticMapView];
      v5 = _staticMapView;
      if (_staticMapView)
      {
        _mapView = _staticMapView;
      }

      else
      {
        _mapView = [(MKAnnotationView *)self _mapView];
      }

      v7 = _mapView;

      [v7 bounds];
      v9 = v8;
      [v7 bounds];
      v11 = v10;
      [v7 bounds];
      if (v9 >= v11)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      v15 = 940.0 / v14;
      v16 = 940.0 / v14 >= 2.5;
      v17 = 940.0 / v14 > 1.5 || 940.0 / v14 >= 2.5;
      if (v15 <= 1.5)
      {
        v16 = 1;
      }

      v18 = 0.75;
      if (v17)
      {
        v18 = 1.25;
      }

      v19 = v15 * 0.5;
      if (v16)
      {
        v19 = v18;
      }

      v20 = v14 * v19;
      v22.receiver = self;
      v22.super_class = _MKUserLocationView;
      [(_MKPuckAnnotationView *)&v22 setMaxRadiusToShowAccuracyRing:v14 * v19];
      [(_MKPuckAnnotationView *)self _setAccuracyRingStrokeOpacityThreshold:v20 * 0.800000012];
    }

    else
    {
      [(_MKPuckAnnotationView *)&v21 setMaxRadiusToShowAccuracyRing:0.0, self, _MKUserLocationView];
    }
  }

  else
  {
    v23.receiver = self;
    v23.super_class = _MKUserLocationView;
    [(_MKPuckAnnotationView *)&v23 setMaxRadiusToShowAccuracyRing:externalMaxAccuracyRadius, v21.receiver, v21.super_class];
  }
}

- (void)_updateCalloutStyle
{
  if (!self->_hasExplicitCalloutStyle)
  {
    if (_MKModernPuckDesignEnabled_onceToken != -1)
    {
      dispatch_once(&_MKModernPuckDesignEnabled_onceToken, &__block_literal_global_25_27148);
    }

    if (_MKModernPuckDesignEnabled_linkedOnOrAfterGoldenAzulHunterArcher == 1 && (_MKModernPuckDesignEnabled_newPuckEnabled & 1) != 0)
    {
      _calloutStyle = [(MKAnnotationView *)self _calloutStyle];
      leftCalloutAccessoryView = [(MKAnnotationView *)self leftCalloutAccessoryView];
      if (leftCalloutAccessoryView)
      {
        v5 = 1;
      }

      else
      {
        rightCalloutAccessoryView = [(MKAnnotationView *)self rightCalloutAccessoryView];
        if (rightCalloutAccessoryView)
        {
          v5 = 1;
        }

        else
        {
          detailCalloutAccessoryView = [(MKAnnotationView *)self detailCalloutAccessoryView];
          v5 = detailCalloutAccessoryView != 0;
        }
      }

      canShowCallout = [(MKAnnotationView *)self canShowCallout];
      v9 = !canShowCallout || !v5;
      if ((!canShowCallout || !v5) && !self->_imageProvider)
      {
        v10 = [[_MKUserLocationViewImageProvider alloc] initWithUserLocationView:self];
        imageProvider = self->_imageProvider;
        self->_imageProvider = v10;
      }

      v13.receiver = self;
      v13.super_class = _MKUserLocationView;
      [(MKAnnotationView *)&v13 _setCalloutStyle:v9];
      [(_MKUserLocationView *)self _updateCalloutOffset];
      if (_calloutStyle != v9)
      {
        _calloutView = [(MKAnnotationView *)self _calloutView];

        if (_calloutView)
        {
          [(_MKUserLocationView *)self _dismissCallout:1];
          [(MKAnnotationView *)self updateCalloutViewIfNeededAnimated:1];
        }
      }
    }

    else
    {
      v14.receiver = self;
      v14.super_class = _MKUserLocationView;
      [(MKAnnotationView *)&v14 _setCalloutStyle:0];
    }
  }
}

- (void)_updateCalloutOffset
{
  if ([(MKAnnotationView *)self _calloutStyle]!= 1)
  {
    [objc_opt_class() _calloutOffset];
    goto LABEL_5;
  }

  showingPreciseAuthorizedLocation = self->_showingPreciseAuthorizedLocation;
  [(_MKUserLocationView *)self bounds];
  MidY = CGRectGetMidY(v10);
  if (showingPreciseAuthorizedLocation)
  {
    [objc_opt_class() baseDiameter];
    v6 = MidY + v5 * -0.5 * 0.5;
    v7 = 0.0;
LABEL_5:
    selfCopy2 = self;
    goto LABEL_7;
  }

  v7 = 0.0;
  selfCopy2 = self;
  v6 = MidY;
LABEL_7:

  [(MKAnnotationView *)selfCopy2 setCalloutOffset:v7, v6];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _MKUserLocationView;
  [(_MKPuckAnnotationView *)&v3 layoutSubviews];
  [(_MKUserLocationView *)self _updateMaxRadiusToShowAccuracyRing];
}

- (void)_mkObserveValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (([pathCopy isEqualToString:@"title"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"subtitle"))
  {
    [(_MKUserLocationView *)self _updateCalloutStyle];
  }
}

- (void)_setBalloonImageTintColor:(id)color
{
  colorCopy = color;
  [(_MKUserLocationView *)self willChangeValueForKey:@"balloonImageTintColor"];
  balloonImageTintColor = self->_balloonImageTintColor;
  self->_balloonImageTintColor = colorCopy;

  [(_MKUserLocationView *)self didChangeValueForKey:@"balloonImageTintColor"];
}

- (UIColor)_balloonInnerStrokeColor
{
  _mapType = [(MKAnnotationView *)self _mapType];

  return _MKPuckAnnotationViewBaseColor(_mapType, 0);
}

- (UIColor)_balloonTintColor
{
  _mapType = [(MKAnnotationView *)self _mapType];

  return _MKPuckAnnotationViewBaseColor(_mapType, 0);
}

- (void)_setBalloonImage:(id)image
{
  imageCopy = image;
  [(_MKUserLocationView *)self willChangeValueForKey:@"balloonImage"];
  balloonImage = self->_balloonImage;
  self->_balloonImage = imageCopy;

  [(_MKUserLocationView *)self didChangeValueForKey:@"balloonImage"];
}

- (void)_dismissCallout:(BOOL)callout
{
  calloutCopy = callout;
  [(_MKPuckAnnotationView *)self setPuckScale:1.0];
  [(_MKPuckAnnotationView *)self setShouldInnerPulse:1];
  [(_MKPuckAnnotationView *)self setCanShowHeadingIndicator:1];
  v5.receiver = self;
  v5.super_class = _MKUserLocationView;
  [(MKAnnotationView *)&v5 _dismissCallout:calloutCopy];
}

- (void)_showCallout:(BOOL)callout
{
  calloutCopy = callout;
  if ([(MKAnnotationView *)self _calloutStyle]== 1)
  {
    [(_MKPuckAnnotationView *)self setShouldInnerPulse:0];
    [(_MKPuckAnnotationView *)self setCanShowHeadingIndicator:0];
    if (self->_showingPreciseAuthorizedLocation)
    {
      [(_MKPuckAnnotationView *)self setPuckScale:0.5];
    }
  }

  else
  {
    [(_MKPuckAnnotationView *)self setPuckScale:1.0];
    [(_MKPuckAnnotationView *)self setShouldInnerPulse:1];
    [(_MKPuckAnnotationView *)self setCanShowHeadingIndicator:1];
  }

  v5.receiver = self;
  v5.super_class = _MKUserLocationView;
  [(MKAnnotationView *)&v5 _showCallout:calloutCopy];
}

- (BOOL)shouldShowCallout
{
  _calloutStyle = [(MKAnnotationView *)self _calloutStyle];
  if (_calloutStyle != 1)
  {
    v5.receiver = self;
    v5.super_class = _MKUserLocationView;
    LOBYTE(_calloutStyle) = [(MKAnnotationView *)&v5 shouldShowCallout];
  }

  return _calloutStyle;
}

- (BOOL)_allowedToShowCallout
{
  if (([(MKAnnotationView *)self _calloutStyle]| 2) != 2)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = _MKUserLocationView;
  return [(MKAnnotationView *)&v4 _allowedToShowCallout];
}

- (void)setDetailCalloutAccessoryView:(id)view
{
  v4.receiver = self;
  v4.super_class = _MKUserLocationView;
  [(MKAnnotationView *)&v4 setDetailCalloutAccessoryView:view];
  [(_MKUserLocationView *)self _updateCalloutStyle];
}

- (void)setRightCalloutAccessoryView:(id)view
{
  v4.receiver = self;
  v4.super_class = _MKUserLocationView;
  [(MKAnnotationView *)&v4 setRightCalloutAccessoryView:view];
  [(_MKUserLocationView *)self _updateCalloutStyle];
}

- (void)setLeftCalloutAccessoryView:(id)view
{
  v4.receiver = self;
  v4.super_class = _MKUserLocationView;
  [(MKAnnotationView *)&v4 setLeftCalloutAccessoryView:view];
  [(_MKUserLocationView *)self _updateCalloutStyle];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _MKUserLocationView;
  [(MKAnnotationView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(_MKUserLocationView *)self _updateCalloutOffset];
}

- (void)_setCalloutStyle:(int64_t)style
{
  self->_hasExplicitCalloutStyle = 1;
  v3.receiver = self;
  v3.super_class = _MKUserLocationView;
  [(MKAnnotationView *)&v3 _setCalloutStyle:style];
}

- (void)_setShowingPreciseAuthorizedLocation:(BOOL)location
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_showingPreciseAuthorizedLocation != location)
  {
    self->_showingPreciseAuthorizedLocation = location;
    if (_MKModernPuckDesignEnabled_onceToken != -1)
    {
      dispatch_once(&_MKModernPuckDesignEnabled_onceToken, &__block_literal_global_25_27148);
    }

    if (_MKModernPuckDesignEnabled_linkedOnOrAfterGoldenAzulHunterArcher == 1 && (_MKModernPuckDesignEnabled_newPuckEnabled & 1) != 0)
    {
      [(_MKPuckAnnotationView *)self _setShouldShowDynamicLocationAnimations:self->_showingPreciseAuthorizedLocation];
      [(_MKPuckAnnotationView *)self _setDisplaysPuckAsAccuracy:!self->_showingPreciseAuthorizedLocation];
      v4 = MKGetUserLocationViewLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        if (self->_showingPreciseAuthorizedLocation)
        {
          v5 = @"YES";
        }

        else
        {
          v5 = @"NO";
        }

        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "Showing precise location: %@", &v9, 0xCu);
      }

      if (self->_showingPreciseAuthorizedLocation)
      {
        GEOConfigGetDouble();
        [(_MKPuckAnnotationView *)self _setMinimumAccuracyRadius:?];
        GEOConfigGetDouble();
      }

      else
      {
        [objc_opt_class() baseDiameter];
        [(_MKPuckAnnotationView *)self _setMinimumAccuracyRadius:v7 * 0.5 + 1.0];
        v6 = 0.0;
      }

      [(_MKPuckAnnotationView *)self _setMinimumAccuracyUncertainty:v6];
      [(_MKUserLocationView *)self _updateCalloutOffset];
      _calloutView = [(MKAnnotationView *)self _calloutView];

      if (_calloutView)
      {
        [(_MKUserLocationView *)self _dismissCallout:1];
        [(MKAnnotationView *)self updateCalloutViewIfNeededAnimated:1];
      }
    }
  }
}

- (void)setAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [(_MKUserLocationView *)self _stopObservingAnnotation];
  v5.receiver = self;
  v5.super_class = _MKUserLocationView;
  [(MKAnnotationView *)&v5 setAnnotation:annotationCopy];

  [(_MKUserLocationView *)self _startObservingAnnotation];
}

- (void)dealloc
{
  [(_MKUserLocationView *)self _stopObservingAnnotation];
  v3.receiver = self;
  v3.super_class = _MKUserLocationView;
  [(_MKPuckAnnotationView *)&v3 dealloc];
}

- (_MKUserLocationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  annotationCopy = annotation;
  identifierCopy = identifier;
  v8 = MKGetUserLocationViewLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Initialization", &unk_1A30FEA0E, buf, 2u);
  }

  v13.receiver = self;
  v13.super_class = _MKUserLocationView;
  v9 = [(_MKPuckAnnotationView *)&v13 initWithAnnotation:annotationCopy reuseIdentifier:identifierCopy];

  if (v9)
  {
    v9->_showingPreciseAuthorizedLocation = 1;
    [(_MKPuckAnnotationView *)v9 setShouldDisplayInaccurateHeading:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      location = [annotationCopy location];
      [(_MKPuckAnnotationView *)v9 updateStateFromLocation:location duration:0.0];
    }

    [(_MKUserLocationView *)v9 _updateCalloutOffset];
  }

  v11 = MKGetUserLocationViewLog();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Initialization", &unk_1A30FEA0E, buf, 2u);
  }

  return v9;
}

@end