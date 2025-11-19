@interface _MKUserLocationView
- (BOOL)_allowedToShowCallout;
- (BOOL)shouldShowCallout;
- (UIColor)_balloonInnerStrokeColor;
- (UIColor)_balloonTintColor;
- (_MKUserLocationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (void)_dismissCallout:(BOOL)a3;
- (void)_mkObserveValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)_setBalloonImage:(id)a3;
- (void)_setBalloonImageTintColor:(id)a3;
- (void)_setCalloutStyle:(int64_t)a3;
- (void)_setShowingPreciseAuthorizedLocation:(BOOL)a3;
- (void)_showCallout:(BOOL)a3;
- (void)_startObservingAnnotation;
- (void)_stopObservingAnnotation;
- (void)_updateCalloutOffset;
- (void)_updateCalloutStyle;
- (void)_updateLegacyConfiguration;
- (void)_updateMaxRadiusToShowAccuracyRing;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAnnotation:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setDetailCalloutAccessoryView:(id)a3;
- (void)setLeftCalloutAccessoryView:(id)a3;
- (void)setRightCalloutAccessoryView:(id)a3;
@end

@implementation _MKUserLocationView

- (void)_stopObservingAnnotation
{
  v3 = [(MKAnnotationView *)self annotation];
  if (v3)
  {
    v4 = v3;
    [(_MKKVOProxy *)self->_kvoProxy removeObserverForObject:v3 forKeyPath:@"title"];
    [(_MKKVOProxy *)self->_kvoProxy removeObserverForObject:v4 forKeyPath:@"subtitle"];
    v3 = v4;
  }
}

- (void)_startObservingAnnotation
{
  v3 = [(MKAnnotationView *)self annotation];
  if (v3)
  {
    kvoProxy = self->_kvoProxy;
    v7 = v3;
    if (!kvoProxy)
    {
      v5 = [[_MKKVOProxy alloc] initWithDelegate:self];
      v6 = self->_kvoProxy;
      self->_kvoProxy = v5;

      kvoProxy = self->_kvoProxy;
    }

    [(_MKKVOProxy *)kvoProxy addObserverForObject:v7 forKeyPath:@"title" options:0 context:0];
    [(_MKKVOProxy *)self->_kvoProxy addObserverForObject:v7 forKeyPath:@"subtitle" options:0 context:0];
    v3 = v7;
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
      v4 = [(MKAnnotationView *)self _staticMapView];
      v5 = v4;
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = [(MKAnnotationView *)self _mapView];
      }

      v7 = v6;

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
      v3 = [(MKAnnotationView *)self _calloutStyle];
      v4 = [(MKAnnotationView *)self leftCalloutAccessoryView];
      if (v4)
      {
        v5 = 1;
      }

      else
      {
        v6 = [(MKAnnotationView *)self rightCalloutAccessoryView];
        if (v6)
        {
          v5 = 1;
        }

        else
        {
          v7 = [(MKAnnotationView *)self detailCalloutAccessoryView];
          v5 = v7 != 0;
        }
      }

      v8 = [(MKAnnotationView *)self canShowCallout];
      v9 = !v8 || !v5;
      if ((!v8 || !v5) && !self->_imageProvider)
      {
        v10 = [[_MKUserLocationViewImageProvider alloc] initWithUserLocationView:self];
        imageProvider = self->_imageProvider;
        self->_imageProvider = v10;
      }

      v13.receiver = self;
      v13.super_class = _MKUserLocationView;
      [(MKAnnotationView *)&v13 _setCalloutStyle:v9];
      [(_MKUserLocationView *)self _updateCalloutOffset];
      if (v3 != v9)
      {
        v12 = [(MKAnnotationView *)self _calloutView];

        if (v12)
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
    v8 = self;
    goto LABEL_7;
  }

  v7 = 0.0;
  v8 = self;
  v6 = MidY;
LABEL_7:

  [(MKAnnotationView *)v8 setCalloutOffset:v7, v6];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _MKUserLocationView;
  [(_MKPuckAnnotationView *)&v3 layoutSubviews];
  [(_MKUserLocationView *)self _updateMaxRadiusToShowAccuracyRing];
}

- (void)_mkObserveValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  if (([v7 isEqualToString:@"title"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"subtitle"))
  {
    [(_MKUserLocationView *)self _updateCalloutStyle];
  }
}

- (void)_setBalloonImageTintColor:(id)a3
{
  v4 = a3;
  [(_MKUserLocationView *)self willChangeValueForKey:@"balloonImageTintColor"];
  balloonImageTintColor = self->_balloonImageTintColor;
  self->_balloonImageTintColor = v4;

  [(_MKUserLocationView *)self didChangeValueForKey:@"balloonImageTintColor"];
}

- (UIColor)_balloonInnerStrokeColor
{
  v2 = [(MKAnnotationView *)self _mapType];

  return _MKPuckAnnotationViewBaseColor(v2, 0);
}

- (UIColor)_balloonTintColor
{
  v2 = [(MKAnnotationView *)self _mapType];

  return _MKPuckAnnotationViewBaseColor(v2, 0);
}

- (void)_setBalloonImage:(id)a3
{
  v4 = a3;
  [(_MKUserLocationView *)self willChangeValueForKey:@"balloonImage"];
  balloonImage = self->_balloonImage;
  self->_balloonImage = v4;

  [(_MKUserLocationView *)self didChangeValueForKey:@"balloonImage"];
}

- (void)_dismissCallout:(BOOL)a3
{
  v3 = a3;
  [(_MKPuckAnnotationView *)self setPuckScale:1.0];
  [(_MKPuckAnnotationView *)self setShouldInnerPulse:1];
  [(_MKPuckAnnotationView *)self setCanShowHeadingIndicator:1];
  v5.receiver = self;
  v5.super_class = _MKUserLocationView;
  [(MKAnnotationView *)&v5 _dismissCallout:v3];
}

- (void)_showCallout:(BOOL)a3
{
  v3 = a3;
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
  [(MKAnnotationView *)&v5 _showCallout:v3];
}

- (BOOL)shouldShowCallout
{
  v3 = [(MKAnnotationView *)self _calloutStyle];
  if (v3 != 1)
  {
    v5.receiver = self;
    v5.super_class = _MKUserLocationView;
    LOBYTE(v3) = [(MKAnnotationView *)&v5 shouldShowCallout];
  }

  return v3;
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

- (void)setDetailCalloutAccessoryView:(id)a3
{
  v4.receiver = self;
  v4.super_class = _MKUserLocationView;
  [(MKAnnotationView *)&v4 setDetailCalloutAccessoryView:a3];
  [(_MKUserLocationView *)self _updateCalloutStyle];
}

- (void)setRightCalloutAccessoryView:(id)a3
{
  v4.receiver = self;
  v4.super_class = _MKUserLocationView;
  [(MKAnnotationView *)&v4 setRightCalloutAccessoryView:a3];
  [(_MKUserLocationView *)self _updateCalloutStyle];
}

- (void)setLeftCalloutAccessoryView:(id)a3
{
  v4.receiver = self;
  v4.super_class = _MKUserLocationView;
  [(MKAnnotationView *)&v4 setLeftCalloutAccessoryView:a3];
  [(_MKUserLocationView *)self _updateCalloutStyle];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _MKUserLocationView;
  [(MKAnnotationView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_MKUserLocationView *)self _updateCalloutOffset];
}

- (void)_setCalloutStyle:(int64_t)a3
{
  self->_hasExplicitCalloutStyle = 1;
  v3.receiver = self;
  v3.super_class = _MKUserLocationView;
  [(MKAnnotationView *)&v3 _setCalloutStyle:a3];
}

- (void)_setShowingPreciseAuthorizedLocation:(BOOL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_showingPreciseAuthorizedLocation != a3)
  {
    self->_showingPreciseAuthorizedLocation = a3;
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
      v8 = [(MKAnnotationView *)self _calloutView];

      if (v8)
      {
        [(_MKUserLocationView *)self _dismissCallout:1];
        [(MKAnnotationView *)self updateCalloutViewIfNeededAnimated:1];
      }
    }
  }
}

- (void)setAnnotation:(id)a3
{
  v4 = a3;
  [(_MKUserLocationView *)self _stopObservingAnnotation];
  v5.receiver = self;
  v5.super_class = _MKUserLocationView;
  [(MKAnnotationView *)&v5 setAnnotation:v4];

  [(_MKUserLocationView *)self _startObservingAnnotation];
}

- (void)dealloc
{
  [(_MKUserLocationView *)self _stopObservingAnnotation];
  v3.receiver = self;
  v3.super_class = _MKUserLocationView;
  [(_MKPuckAnnotationView *)&v3 dealloc];
}

- (_MKUserLocationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MKGetUserLocationViewLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Initialization", &unk_1A30FEA0E, buf, 2u);
  }

  v13.receiver = self;
  v13.super_class = _MKUserLocationView;
  v9 = [(_MKPuckAnnotationView *)&v13 initWithAnnotation:v6 reuseIdentifier:v7];

  if (v9)
  {
    v9->_showingPreciseAuthorizedLocation = 1;
    [(_MKPuckAnnotationView *)v9 setShouldDisplayInaccurateHeading:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v6 location];
      [(_MKPuckAnnotationView *)v9 updateStateFromLocation:v10 duration:0.0];
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