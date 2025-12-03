@interface UserLocationView
- (BOOL)_shouldUseNavPuck;
- (UserLocationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (void)_setAnimatingToCoordinate:(BOOL)coordinate;
- (void)_setPresentationCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)_setPresentationCourse:(double)course;
- (void)_setTracking:(BOOL)tracking;
- (void)_setVKNavigationPuckMarker:(id)marker;
- (void)_transitionTo:(int64_t)to;
- (void)_transitionToNavPuckWithDuration:(double)duration;
- (void)_transitionToNormalPuckWithDuration:(double)duration;
- (void)_updateForMode:(int64_t)mode animated:(BOOL)animated;
- (void)_updateNavPuckAnimated:(BOOL)animated;
- (void)_updateVKNavigationPuckMarkerFromCurrentState;
- (void)locationManagerFailedToUpdateLocation;
- (void)setAnnotation:(id)annotation;
- (void)setInNavMode:(BOOL)mode animated:(BOOL)animated;
- (void)setMode:(int64_t)mode animated:(BOOL)animated;
- (void)setViewMode:(int64_t)mode;
- (void)updateStateFromLocation:(id)location duration:(double)duration;
@end

@implementation UserLocationView

- (BOOL)_shouldUseNavPuck
{
  mode = self->_mode;
  if (mode == 1)
  {
    return 1;
  }

  if (mode == 2)
  {
    return GEOConfigGetBOOL();
  }

  return 0;
}

- (void)locationManagerFailedToUpdateLocation
{
  v4.receiver = self;
  v4.super_class = UserLocationView;
  [(UserLocationView *)&v4 locationManagerFailedToUpdateLocation];
  _vkNavigationPuckMarker = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker setStale:{-[UserLocationView isStale](self, "isStale")}];
}

- (void)updateStateFromLocation:(id)location duration:(double)duration
{
  locationCopy = location;
  v14.receiver = self;
  v14.super_class = UserLocationView;
  [(UserLocationView *)&v14 updateStateFromLocation:locationCopy duration:duration];
  v7 = +[MKLocationManager sharedLocationManager];
  [v7 currentVehicleHeading];
  v9 = v8;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  isStale = [(UserLocationView *)self isStale];
  if (isKindOfClass)
  {
    if ((isStale & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_5:
    [(UserLocationView *)self locationManagerFailedToUpdateLocation];
    v12 = 1;
    goto LABEL_11;
  }

  if (isStale)
  {
    goto LABEL_5;
  }

  if (self->_mode != 1)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v12 = 0;
  if (([locationCopy _navigation_hasValidCourse] & 1) == 0 && v9 < 0.0)
  {
    goto LABEL_5;
  }

LABEL_11:
  _vkNavigationPuckMarker = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker setStale:v12];
}

- (void)_transitionTo:(int64_t)to
{
  v8.receiver = self;
  v8.super_class = UserLocationView;
  [(UserLocationView *)&v8 _transitionTo:?];
  v5 = sub_10000EBC4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if ((to + 1) > 5)
    {
      v6 = &stru_1016631F0;
    }

    else
    {
      v6 = off_1016573D8[to + 1];
    }

    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Transitioning to VKMapMode: %@", buf, 0xCu);
  }

  v7 = to == 1;
  if (self->_inNavigationMapMode != v7)
  {
    self->_inNavigationMapMode = v7;
    [(UserLocationView *)self _updateNavPuckAnimated:1];
  }
}

- (void)_transitionToNormalPuckWithDuration:(double)duration
{
  isNavPuckActive = self->_isNavPuckActive;
  v6 = sub_10000EBC4();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (isNavPuckActive)
  {
    if (v7)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Transitioning to normal puck", buf, 2u);
    }

    self->_isNavPuckActive = 0;
    [(UserLocationView *)self setEnabled:1];
    [(VKTimedAnimation *)self->_transitionAnimation stop];
    if (duration <= 0.0 || ([(UserLocationView *)self superview], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v9))
    {
      v16 = sub_10000EBC4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Transitioning to normal puck un-animated", buf, 2u);
      }

      _vkNavigationPuckMarker = [(UserLocationView *)self _vkNavigationPuckMarker];
      [_vkNavigationPuckMarker setScale:0.0];

      _vkNavigationPuckMarker2 = [(UserLocationView *)self _vkNavigationPuckMarker];
      [_vkNavigationPuckMarker2 setEnabled:0];

      v19 = *&CGAffineTransformIdentity.c;
      buf[0] = *&CGAffineTransformIdentity.a;
      buf[1] = v19;
      buf[2] = *&CGAffineTransformIdentity.tx;
      [(UserLocationView *)self setTransform:buf];
      [(UserLocationView *)self setAlpha:1.0];
    }

    else
    {
      objc_initWeak(&location, self);
      v10 = [[VKTimedAnimation alloc] initWithDuration:duration];
      transitionAnimation = self->_transitionAnimation;
      self->_transitionAnimation = v10;

      v12 = sub_10000EBC4();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = self->_transitionAnimation;
        LODWORD(buf[0]) = 138412290;
        *(buf + 4) = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Transitioning to normal puck animated with animation: %@", buf, 0xCu);
      }

      [(UserLocationView *)self _vkNavigationPuckMarker];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100E9C2A0;
      v14 = v24[3] = &unk_101657398;
      v25 = v14;
      [(VKTimedAnimation *)self->_transitionAnimation setStepHandler:v24];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100E9C2B0;
      v21[3] = &unk_10165FC50;
      objc_copyWeak(&v23, &location);
      v15 = v14;
      v22 = v15;
      [(VKTimedAnimation *)self->_transitionAnimation setCompletionHandler:v21];
      [v15 runAnimation:self->_transitionAnimation];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100E9C3C4;
      v20[3] = &unk_101661B18;
      v20[4] = self;
      [UIView animateWithDuration:v20 animations:duration];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Not transitioning to normal puck because the nav puck is not currently active", buf, 2u);
    }
  }
}

- (void)_transitionToNavPuckWithDuration:(double)duration
{
  if (self->_isNavPuckActive || ([(UserLocationView *)self _vkNavigationPuckMarker], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v15 = sub_10000EBC4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      if (self->_isNavPuckActive)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v17 = v16;
      _vkNavigationPuckMarker = [(UserLocationView *)self _vkNavigationPuckMarker];
      LODWORD(buf.a) = 138412546;
      *(&buf.a + 4) = v17;
      WORD2(buf.b) = 2048;
      *(&buf.b + 6) = _vkNavigationPuckMarker;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Not transitioning to navigation puck because either the nav puck is already active (%@) or vkNavigationPuckMarker is nil (%p)", &buf, 0x16u);
    }
  }

  else
  {
    v6 = sub_10000EBC4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Transitioning to navigation puck", &buf, 2u);
    }

    self->_isNavPuckActive = 1;
    [(UserLocationView *)self setEnabled:0];
    [(VKTimedAnimation *)self->_transitionAnimation stop];
    _vkNavigationPuckMarker2 = [(UserLocationView *)self _vkNavigationPuckMarker];
    [_vkNavigationPuckMarker2 setEnabled:1];

    if (duration <= 0.0 || ([(UserLocationView *)self superview], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v9))
    {
      v19 = sub_10000EBC4();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.a) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Transitioning to navigation puck un-animated", &buf, 2u);
      }

      _vkNavigationPuckMarker3 = [(UserLocationView *)self _vkNavigationPuckMarker];
      LODWORD(v21) = 1.0;
      [_vkNavigationPuckMarker3 setScale:v21];

      CGAffineTransformMakeScale(&v22, 0.0, 0.0);
      buf = v22;
      [(UserLocationView *)self setTransform:&buf];
      [(UserLocationView *)self setAlpha:0.0];
    }

    else
    {
      objc_initWeak(&location, self);
      v10 = [[VKTimedAnimation alloc] initWithDuration:duration];
      transitionAnimation = self->_transitionAnimation;
      self->_transitionAnimation = v10;

      v12 = sub_10000EBC4();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = self->_transitionAnimation;
        LODWORD(buf.a) = 138412290;
        *(&buf.a + 4) = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Transitioning to navigation puck animated with animation: %@", &buf, 0xCu);
      }

      [(UserLocationView *)self _vkNavigationPuckMarker];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100E9C890;
      v14 = v26[3] = &unk_101657398;
      v27 = v14;
      [(VKTimedAnimation *)self->_transitionAnimation setStepHandler:v26];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100E9C8A0;
      v24[3] = &unk_1016619A8;
      objc_copyWeak(&v25, &location);
      [(VKTimedAnimation *)self->_transitionAnimation setCompletionHandler:v24];
      [v14 runAnimation:self->_transitionAnimation];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100E9C9B4;
      v23[3] = &unk_101661B18;
      v23[4] = self;
      [UIView animateWithDuration:v23 animations:duration];
      objc_destroyWeak(&v25);

      objc_destroyWeak(&location);
    }
  }
}

- (void)setAnnotation:(id)annotation
{
  v6.receiver = self;
  v6.super_class = UserLocationView;
  annotationCopy = annotation;
  [(UserLocationView *)&v6 setAnnotation:annotationCopy];
  v5 = [(UserLocationView *)self _vkNavigationPuckMarker:v6.receiver];
  [v5 setAnnotation:annotationCopy];
}

- (void)_setAnimatingToCoordinate:(BOOL)coordinate
{
  coordinateCopy = coordinate;
  v6.receiver = self;
  v6.super_class = UserLocationView;
  [(UserLocationView *)&v6 _setAnimatingToCoordinate:?];
  _vkNavigationPuckMarker = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker setAnimatingToCoordinate:coordinateCopy];
}

- (void)_setPresentationCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v7.receiver = self;
  v7.super_class = UserLocationView;
  [(UserLocationView *)&v7 _setPresentationCoordinate:?];
  _vkNavigationPuckMarker = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker setPresentationCoordinate:{latitude, longitude}];
}

- (void)_setPresentationCourse:(double)course
{
  v6.receiver = self;
  v6.super_class = UserLocationView;
  [(UserLocationView *)&v6 _setPresentationCourse:?];
  _vkNavigationPuckMarker = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker setPresentationCourse:course];
}

- (void)_setTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  v6.receiver = self;
  v6.super_class = UserLocationView;
  [(UserLocationView *)&v6 _setTracking:?];
  _vkNavigationPuckMarker = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker setTracking:trackingCopy];
}

- (void)_updateVKNavigationPuckMarkerFromCurrentState
{
  v3 = sub_10000EBC4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    mode = self->_mode;
    isNavPuckActive = self->_isNavPuckActive;
    v29 = 134218240;
    v30 = mode;
    v31 = 1024;
    v32 = isNavPuckActive;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_updateVKNavigationPuckMarkerFromCurrentState _mode: %ld _isNavPuckActive: %d", &v29, 0x12u);
  }

  v6 = self->_mode == 2;
  _vkNavigationPuckMarker = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker setMode:v6];

  v8 = [(UserLocationView *)self _shouldRotateForCourseWithMode:self->_mode];
  _vkNavigationPuckMarker2 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker2 setShowCourse:v8];

  _isTracking = [(UserLocationView *)self _isTracking];
  _vkNavigationPuckMarker3 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker3 setTracking:_isTracking];

  [(UserLocationView *)self _presentationCourse];
  v13 = v12;
  _vkNavigationPuckMarker4 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker4 setPresentationCourse:v13];

  [(UserLocationView *)self _presentationCoordinate];
  v16 = v15;
  v18 = v17;
  _vkNavigationPuckMarker5 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker5 setPresentationCoordinate:{v16, v18}];

  _isAnimatingToCoordinate = [(UserLocationView *)self _isAnimatingToCoordinate];
  _vkNavigationPuckMarker6 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker6 setAnimatingToCoordinate:_isAnimatingToCoordinate];

  annotation = [(UserLocationView *)self annotation];
  _vkNavigationPuckMarker7 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker7 setAnnotation:annotation];

  if (self->_isNavPuckActive)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  _vkNavigationPuckMarker8 = [(UserLocationView *)self _vkNavigationPuckMarker];
  *&v26 = v24;
  [_vkNavigationPuckMarker8 setScale:v26];

  v27 = self->_isNavPuckActive;
  _vkNavigationPuckMarker9 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker9 setEnabled:v27];

  [(UserLocationView *)self _updateNavPuckAnimated:0];
}

- (void)_setVKNavigationPuckMarker:(id)marker
{
  markerCopy = marker;
  v5 = sub_10000EBC4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = markerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_setVKNavigationPuckMarker: %@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = UserLocationView;
  [(UserLocationView *)&v6 _setVKNavigationPuckMarker:markerCopy];
  [(UserLocationView *)self _updateVKNavigationPuckMarkerFromCurrentState];
}

- (void)_updateNavPuckAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _shouldUseNavPuck = [(UserLocationView *)self _shouldUseNavPuck];
  v6 = sub_10000EBC4();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (_shouldUseNavPuck)
  {
    if (v7)
    {
      v10 = 67109120;
      v11 = animatedCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "_updateNavPuckAnimated: to nav puck, animated: %d", &v10, 8u);
    }

    v8 = 0.0;
    if (animatedCopy)
    {
      v8 = 1.0;
    }

    [(UserLocationView *)self _transitionToNavPuckWithDuration:v8];
  }

  else
  {
    if (v7)
    {
      v10 = 67109120;
      v11 = animatedCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "_updateNavPuckAnimated: to normal puck, animated: %d", &v10, 8u);
    }

    v9 = 0.0;
    if (animatedCopy)
    {
      v9 = 1.0;
    }

    [(UserLocationView *)self _transitionToNormalPuckWithDuration:v9];
  }
}

- (void)setViewMode:(int64_t)mode
{
  if (self->_viewMode != mode)
  {
    v5 = sub_10000EBC4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      modeCopy = mode;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting view mode: %ld", &v6, 0xCu);
    }

    self->_inNavigationMapMode = 0;
    self->_viewMode = mode;
    [(UserLocationView *)self _updateNavPuckAnimated:0];
  }
}

- (void)setInNavMode:(BOOL)mode animated:(BOOL)animated
{
  if (self->_inNavMode != mode)
  {
    animatedCopy = animated;
    modeCopy = mode;
    v7 = sub_10000EBC4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (modeCopy)
      {
        v8 = @"YES";
      }

      v9 = v8;
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting is in nav mode: %@", &v10, 0xCu);
    }

    self->_inNavMode = modeCopy;
    [(UserLocationView *)self _updateNavPuckAnimated:animatedCopy];
  }
}

- (void)_updateForMode:(int64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = sub_10000EBC4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    modeCopy = mode;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Updating for UserLocationMarkerMode: %ld", &v11, 0xCu);
  }

  v8 = [(UserLocationView *)self _shouldRotateForCourseWithMode:mode];
  [(UserLocationView *)self setAllowsAccuracyRing:mode != 1];
  [(UserLocationView *)self setShouldInnerPulse:mode != 1];
  _vkNavigationPuckMarker = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker setMode:mode == 2];

  _vkNavigationPuckMarker2 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [_vkNavigationPuckMarker2 setShowCourse:v8];

  [(UserLocationView *)self _updateNavPuckAnimated:animatedCopy];
}

- (void)setMode:(int64_t)mode animated:(BOOL)animated
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [UserLocationView _updateForMode:"_updateForMode:animated:" animated:?];
  }
}

- (UserLocationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = UserLocationView;
  v4 = [(UserLocationView *)&v6 initWithAnnotation:annotation reuseIdentifier:identifier];
  v4->_mode = 0;
  [(UserLocationView *)v4 _updateForMode:0 animated:0];
  return v4;
}

@end