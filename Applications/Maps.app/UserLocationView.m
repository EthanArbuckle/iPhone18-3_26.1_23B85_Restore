@interface UserLocationView
- (BOOL)_shouldUseNavPuck;
- (UserLocationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (void)_setAnimatingToCoordinate:(BOOL)a3;
- (void)_setPresentationCoordinate:(CLLocationCoordinate2D)a3;
- (void)_setPresentationCourse:(double)a3;
- (void)_setTracking:(BOOL)a3;
- (void)_setVKNavigationPuckMarker:(id)a3;
- (void)_transitionTo:(int64_t)a3;
- (void)_transitionToNavPuckWithDuration:(double)a3;
- (void)_transitionToNormalPuckWithDuration:(double)a3;
- (void)_updateForMode:(int64_t)a3 animated:(BOOL)a4;
- (void)_updateNavPuckAnimated:(BOOL)a3;
- (void)_updateVKNavigationPuckMarkerFromCurrentState;
- (void)locationManagerFailedToUpdateLocation;
- (void)setAnnotation:(id)a3;
- (void)setInNavMode:(BOOL)a3 animated:(BOOL)a4;
- (void)setMode:(int64_t)a3 animated:(BOOL)a4;
- (void)setViewMode:(int64_t)a3;
- (void)updateStateFromLocation:(id)a3 duration:(double)a4;
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
  v3 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v3 setStale:{-[UserLocationView isStale](self, "isStale")}];
}

- (void)updateStateFromLocation:(id)a3 duration:(double)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = UserLocationView;
  [(UserLocationView *)&v14 updateStateFromLocation:v6 duration:a4];
  v7 = +[MKLocationManager sharedLocationManager];
  [v7 currentVehicleHeading];
  v9 = v8;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = [(UserLocationView *)self isStale];
  if (isKindOfClass)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_5:
    [(UserLocationView *)self locationManagerFailedToUpdateLocation];
    v12 = 1;
    goto LABEL_11;
  }

  if (v11)
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
  if (([v6 _navigation_hasValidCourse] & 1) == 0 && v9 < 0.0)
  {
    goto LABEL_5;
  }

LABEL_11:
  v13 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v13 setStale:v12];
}

- (void)_transitionTo:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = UserLocationView;
  [(UserLocationView *)&v8 _transitionTo:?];
  v5 = sub_10000EBC4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if ((a3 + 1) > 5)
    {
      v6 = &stru_1016631F0;
    }

    else
    {
      v6 = off_1016573D8[a3 + 1];
    }

    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Transitioning to VKMapMode: %@", buf, 0xCu);
  }

  v7 = a3 == 1;
  if (self->_inNavigationMapMode != v7)
  {
    self->_inNavigationMapMode = v7;
    [(UserLocationView *)self _updateNavPuckAnimated:1];
  }
}

- (void)_transitionToNormalPuckWithDuration:(double)a3
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
    if (a3 <= 0.0 || ([(UserLocationView *)self superview], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v9))
    {
      v16 = sub_10000EBC4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Transitioning to normal puck un-animated", buf, 2u);
      }

      v17 = [(UserLocationView *)self _vkNavigationPuckMarker];
      [v17 setScale:0.0];

      v18 = [(UserLocationView *)self _vkNavigationPuckMarker];
      [v18 setEnabled:0];

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
      v10 = [[VKTimedAnimation alloc] initWithDuration:a3];
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
      [UIView animateWithDuration:v20 animations:a3];

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

- (void)_transitionToNavPuckWithDuration:(double)a3
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
      v18 = [(UserLocationView *)self _vkNavigationPuckMarker];
      LODWORD(buf.a) = 138412546;
      *(&buf.a + 4) = v17;
      WORD2(buf.b) = 2048;
      *(&buf.b + 6) = v18;
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
    v7 = [(UserLocationView *)self _vkNavigationPuckMarker];
    [v7 setEnabled:1];

    if (a3 <= 0.0 || ([(UserLocationView *)self superview], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v9))
    {
      v19 = sub_10000EBC4();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.a) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Transitioning to navigation puck un-animated", &buf, 2u);
      }

      v20 = [(UserLocationView *)self _vkNavigationPuckMarker];
      LODWORD(v21) = 1.0;
      [v20 setScale:v21];

      CGAffineTransformMakeScale(&v22, 0.0, 0.0);
      buf = v22;
      [(UserLocationView *)self setTransform:&buf];
      [(UserLocationView *)self setAlpha:0.0];
    }

    else
    {
      objc_initWeak(&location, self);
      v10 = [[VKTimedAnimation alloc] initWithDuration:a3];
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
      [UIView animateWithDuration:v23 animations:a3];
      objc_destroyWeak(&v25);

      objc_destroyWeak(&location);
    }
  }
}

- (void)setAnnotation:(id)a3
{
  v6.receiver = self;
  v6.super_class = UserLocationView;
  v4 = a3;
  [(UserLocationView *)&v6 setAnnotation:v4];
  v5 = [(UserLocationView *)self _vkNavigationPuckMarker:v6.receiver];
  [v5 setAnnotation:v4];
}

- (void)_setAnimatingToCoordinate:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = UserLocationView;
  [(UserLocationView *)&v6 _setAnimatingToCoordinate:?];
  v5 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v5 setAnimatingToCoordinate:v3];
}

- (void)_setPresentationCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7.receiver = self;
  v7.super_class = UserLocationView;
  [(UserLocationView *)&v7 _setPresentationCoordinate:?];
  v6 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v6 setPresentationCoordinate:{latitude, longitude}];
}

- (void)_setPresentationCourse:(double)a3
{
  v6.receiver = self;
  v6.super_class = UserLocationView;
  [(UserLocationView *)&v6 _setPresentationCourse:?];
  v5 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v5 setPresentationCourse:a3];
}

- (void)_setTracking:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = UserLocationView;
  [(UserLocationView *)&v6 _setTracking:?];
  v5 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v5 setTracking:v3];
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
  v7 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v7 setMode:v6];

  v8 = [(UserLocationView *)self _shouldRotateForCourseWithMode:self->_mode];
  v9 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v9 setShowCourse:v8];

  v10 = [(UserLocationView *)self _isTracking];
  v11 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v11 setTracking:v10];

  [(UserLocationView *)self _presentationCourse];
  v13 = v12;
  v14 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v14 setPresentationCourse:v13];

  [(UserLocationView *)self _presentationCoordinate];
  v16 = v15;
  v18 = v17;
  v19 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v19 setPresentationCoordinate:{v16, v18}];

  v20 = [(UserLocationView *)self _isAnimatingToCoordinate];
  v21 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v21 setAnimatingToCoordinate:v20];

  v22 = [(UserLocationView *)self annotation];
  v23 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v23 setAnnotation:v22];

  if (self->_isNavPuckActive)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  v25 = [(UserLocationView *)self _vkNavigationPuckMarker];
  *&v26 = v24;
  [v25 setScale:v26];

  v27 = self->_isNavPuckActive;
  v28 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v28 setEnabled:v27];

  [(UserLocationView *)self _updateNavPuckAnimated:0];
}

- (void)_setVKNavigationPuckMarker:(id)a3
{
  v4 = a3;
  v5 = sub_10000EBC4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_setVKNavigationPuckMarker: %@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = UserLocationView;
  [(UserLocationView *)&v6 _setVKNavigationPuckMarker:v4];
  [(UserLocationView *)self _updateVKNavigationPuckMarkerFromCurrentState];
}

- (void)_updateNavPuckAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(UserLocationView *)self _shouldUseNavPuck];
  v6 = sub_10000EBC4();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v10 = 67109120;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "_updateNavPuckAnimated: to nav puck, animated: %d", &v10, 8u);
    }

    v8 = 0.0;
    if (v3)
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
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "_updateNavPuckAnimated: to normal puck, animated: %d", &v10, 8u);
    }

    v9 = 0.0;
    if (v3)
    {
      v9 = 1.0;
    }

    [(UserLocationView *)self _transitionToNormalPuckWithDuration:v9];
  }
}

- (void)setViewMode:(int64_t)a3
{
  if (self->_viewMode != a3)
  {
    v5 = sub_10000EBC4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting view mode: %ld", &v6, 0xCu);
    }

    self->_inNavigationMapMode = 0;
    self->_viewMode = a3;
    [(UserLocationView *)self _updateNavPuckAnimated:0];
  }
}

- (void)setInNavMode:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_inNavMode != a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = sub_10000EBC4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v5)
      {
        v8 = @"YES";
      }

      v9 = v8;
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting is in nav mode: %@", &v10, 0xCu);
    }

    self->_inNavMode = v5;
    [(UserLocationView *)self _updateNavPuckAnimated:v4];
  }
}

- (void)_updateForMode:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = sub_10000EBC4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Updating for UserLocationMarkerMode: %ld", &v11, 0xCu);
  }

  v8 = [(UserLocationView *)self _shouldRotateForCourseWithMode:a3];
  [(UserLocationView *)self setAllowsAccuracyRing:a3 != 1];
  [(UserLocationView *)self setShouldInnerPulse:a3 != 1];
  v9 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v9 setMode:a3 == 2];

  v10 = [(UserLocationView *)self _vkNavigationPuckMarker];
  [v10 setShowCourse:v8];

  [(UserLocationView *)self _updateNavPuckAnimated:v4];
}

- (void)setMode:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    [UserLocationView _updateForMode:"_updateForMode:animated:" animated:?];
  }
}

- (UserLocationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = UserLocationView;
  v4 = [(UserLocationView *)&v6 initWithAnnotation:a3 reuseIdentifier:a4];
  v4->_mode = 0;
  [(UserLocationView *)v4 _updateForMode:0 animated:0];
  return v4;
}

@end