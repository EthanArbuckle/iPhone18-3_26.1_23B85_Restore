@interface MapsUserLocationView
- (BOOL)_isSelectable;
- (BOOL)isVLFBannerVisible;
- (BOOL)isVLFPuckVisible;
- (BOOL)shouldShowVLFBanner;
- (BOOL)shouldShowVLFPuck;
- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)animated;
- (CGPoint)_bottomCalloutOffset;
- (CGRect)_significantBounds;
- (MapsUserLocationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (UIEdgeInsets)_annotationTrackingInsets;
- (VLFCalloutView)vlfCalloutView;
- (VLFPuckModeCircleView)vlfPuckModeCircleView;
- (double)maxVLFCalloutWidth;
- (float)_selectionPriority;
- (id)detailCalloutAccessoryView;
- (id)vlfSessionAnalyticsTracker;
- (id)vlfSessionTask;
- (unint64_t)_allowedCalloutEdges;
- (void)_mapVisibleCenteringRectChanged;
- (void)_setIsOnAnotherFloorInVenue:(BOOL)venue;
- (void)_setMapPitchRadians:(double)radians;
- (void)_updateFromMap;
- (void)adjustVLFUIVisibility;
- (void)animateVLFPuckOnce;
- (void)calloutViewWasDismissed:(id)dismissed;
- (void)checkIsWithinEdgeInsets;
- (void)dealloc;
- (void)deselectOrUpdateCalloutViewIfNeeded;
- (void)selectOrUpdateCalloutViewIfNeeded;
- (void)setIsPedestrianARAvailable:(BOOL)available;
- (void)setVlfMode:(int64_t)mode;
- (void)setVlfOutsideEdgeInsets:(BOOL)insets;
- (void)setVlfOverlappingFloatingControls:(BOOL)controls;
- (void)updateStateFromLocation:(id)location duration:(double)duration;
- (void)updateVLFCalloutWidth;
- (void)updateVlfCalloutAlpha;
- (void)vlfContaineeViewControllerDidDisappearNotification:(id)notification;
- (void)vlfContaineeViewControllerWillHideFailureViewNotification:(id)notification;
- (void)vlfContaineeViewControllerWillShowFailureViewNotification:(id)notification;
- (void)vlfSessionDidStartNotification:(id)notification;
- (void)vlfSessionDidStopNotification:(id)notification;
- (void)vlfSessionTaskWillShowVLFUINotification:(id)notification;
@end

@implementation MapsUserLocationView

- (id)detailCalloutAccessoryView
{
  if ([(MapsUserLocationView *)self vlfMode]== 2)
  {
    vlfCalloutView = [(MapsUserLocationView *)self vlfCalloutView];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MapsUserLocationView;
    vlfCalloutView = [(MapsUserLocationView *)&v5 detailCalloutAccessoryView];
  }

  return vlfCalloutView;
}

- (VLFPuckModeCircleView)vlfPuckModeCircleView
{
  if (!+[VLFSessionTask isVLFModeSupported])
  {
    v20 = sub_10006D178();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.m11) = 136315906;
      *(&buf.m11 + 4) = "[MapsUserLocationView vlfPuckModeCircleView]";
      WORD2(buf.m12) = 2080;
      *(&buf.m12 + 6) = "MapsUserLocationView.m";
      HIWORD(buf.m13) = 1024;
      LODWORD(buf.m14) = 290;
      WORD2(buf.m14) = 2080;
      *(&buf.m14 + 6) = "VLFSessionTask.isVLFModeSupported";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = +[NSThread callStackSymbols];
        LODWORD(buf.m11) = 138412290;
        *(&buf.m11 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }
    }
  }

  vlfPuckModeCircleView = self->_vlfPuckModeCircleView;
  if (!vlfPuckModeCircleView)
  {
    v4 = [[VLFPuckModeCircleView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_vlfPuckModeCircleView;
    self->_vlfPuckModeCircleView = v4;

    [(MapsUserLocationView *)self addSubview:self->_vlfPuckModeCircleView];
    centerXAnchor = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView centerXAnchor];
    centerXAnchor2 = [(MapsUserLocationView *)self centerXAnchor];
    v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v25[0] = v8;
    centerYAnchor = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView centerYAnchor];
    centerYAnchor2 = [(MapsUserLocationView *)self centerYAnchor];
    v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v25[1] = v11;
    v12 = [NSArray arrayWithObjects:v25 count:2];
    [NSLayoutConstraint activateConstraints:v12];

    [*&self->super._MKUserLocationView_opaque[OBJC_IVAR____MKPuckAnnotationView__puckLayer] zPosition];
    v14 = v13 + 1.0;
    layer = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView layer];
    [layer setZPosition:v14];

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(MapsUserLocationView *)self _mapPitchRadians];
    CATransform3DMakeRotation(&v23, v16, 1.0, 0.0, 0.0);
    backgroundView = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView backgroundView];
    layer2 = [backgroundView layer];
    buf = v23;
    [layer2 setTransform:&buf];

    +[CATransaction commit];
    vlfPuckModeCircleView = self->_vlfPuckModeCircleView;
  }

  return vlfPuckModeCircleView;
}

- (void)updateVlfCalloutAlpha
{
  _calloutView = [(MapsUserLocationView *)self _calloutView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([(MapsUserLocationView *)self isVLFOverlappingFloatingControls]|| [(MapsUserLocationView *)self isVLFOutsideEdgeInsets])
    {
      _calloutView2 = [(MapsUserLocationView *)self _calloutView];
      [_calloutView2 setAlpha:0.0];
    }

    else
    {
      _calloutView3 = [(MapsUserLocationView *)self _calloutView];
      [_calloutView3 alpha];
      v18 = v17;

      [(MapsUserLocationView *)self vlfCalloutAlpha];
      v20 = v19;
      _calloutView4 = [(MapsUserLocationView *)self _calloutView];
      [_calloutView4 setAlpha:v20];

      if (fabs(v18) <= 2.22044605e-16)
      {
        _calloutView5 = [(MapsUserLocationView *)self _calloutView];
        [_calloutView5 alpha];
        v24 = v23;

        if (v24 > 0.0)
        {
          vlfSessionAnalyticsTracker = [(MapsUserLocationView *)self vlfSessionAnalyticsTracker];
          [vlfSessionAnalyticsTracker registerVLFCalloutWasShown];
        }
      }

      [(MapsUserLocationView *)self vlfCalloutAlpha];
      if (v26 > 0.0)
      {
        v27 = +[VLFSessionUsageTracker sharedInstance];
        hasUserSeenVLFCallout = [v27 hasUserSeenVLFCallout];

        if ((hasUserSeenVLFCallout & 1) == 0)
        {
          v29 = +[VLFSessionUsageTracker sharedInstance];
          [v29 registerUserWasShownCallout];

          v30 = sub_100E107A8();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *v31 = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Detected that user was just shown the VLF callout for the first time; updating VLF UI visibility", v31, 2u);
          }

          [(MapsUserLocationView *)self adjustVLFUIVisibility];
        }
      }
    }

    _calloutView6 = [(MapsUserLocationView *)self _calloutView];
    [_calloutView6 alpha];
    v8 = v7;

    if (v8 <= 0.0)
    {
      [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView stopPulsing];
    }

    else
    {
      vlfPuckModeCircleView = [(MapsUserLocationView *)self vlfPuckModeCircleView];
      [vlfPuckModeCircleView startPulsing];
    }
  }

  else
  {
    _calloutView7 = [(MapsUserLocationView *)self _calloutView];
    layer = [_calloutView7 layer];
    animationKeys = [layer animationKeys];
    v13 = [animationKeys count];

    if (!v13)
    {
      _calloutView8 = [(MapsUserLocationView *)self _calloutView];
      [_calloutView8 setAlpha:1.0];

      vlfPuckModeCircleView = self->_vlfPuckModeCircleView;

      [(VLFPuckModeCircleView *)vlfPuckModeCircleView stopPulsing];
    }
  }
}

- (void)adjustVLFUIVisibility
{
  if ([(MapsUserLocationView *)self shouldShowVLFPuck])
  {
    [(MapsUserLocationView *)self setCanShowCallout:1];
    v3 = +[VLFSessionUsageTracker sharedInstance];
    hasUserSeenVLFCallout = [v3 hasUserSeenVLFCallout];

    if (hasUserSeenVLFCallout)
    {
      vlfPuckModeCircleView = [(MapsUserLocationView *)self vlfPuckModeCircleView];
      isVisible = [vlfPuckModeCircleView isVisible];

      vlfPuckModeCircleView2 = [(MapsUserLocationView *)self vlfPuckModeCircleView];
      [vlfPuckModeCircleView2 show];

      if ((isVisible & 1) == 0)
      {
        vlfSessionAnalyticsTracker = [(MapsUserLocationView *)self vlfSessionAnalyticsTracker];
        [vlfSessionAnalyticsTracker registerVLFPuckWasShown];

        if ([(MapsUserLocationView *)self isSelected])
        {
          _mapView = [(MapsUserLocationView *)self _mapView];
          annotation = [(MapsUserLocationView *)self annotation];
          [_mapView deselectAnnotation:annotation animated:1];
        }
      }
    }

    else
    {
      [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView hide];
    }

    if ([(MapsUserLocationView *)self shouldShowVLFBanner]&& ![(MapsUserLocationView *)self isVLFBannerVisible])
    {
      [(MapsUserLocationView *)self selectOrUpdateCalloutViewIfNeeded];
    }

    else if ([(MapsUserLocationView *)self isVLFBannerVisible]&& ![(MapsUserLocationView *)self shouldShowVLFBanner])
    {
      goto LABEL_13;
    }
  }

  else
  {
    [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView hide];
    [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView stopPulsing];
    if ([(MapsUserLocationView *)self isVLFBannerVisible])
    {
LABEL_13:
      [(MapsUserLocationView *)self deselectOrUpdateCalloutViewIfNeeded];
    }
  }

  [(MapsUserLocationView *)self updateVlfCalloutAlpha];

  [(MapsUserLocationView *)self updateVLFCalloutWidth];
}

- (void)checkIsWithinEdgeInsets
{
  if (+[VLFSessionTask isVLFModeSupported])
  {
    vlfPuckModeCircleView = self->_vlfPuckModeCircleView;
    [(VLFPuckModeCircleView *)vlfPuckModeCircleView bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    _mapView = [(MapsUserLocationView *)self _mapView];
    [(VLFPuckModeCircleView *)vlfPuckModeCircleView convertRect:_mapView toView:v5, v7, v9, v11];
    v63 = v14;
    v64 = v13;
    v61 = v16;
    v62 = v15;

    _calloutView = [(MapsUserLocationView *)self _calloutView];
    _calloutView2 = [(MapsUserLocationView *)self _calloutView];
    [_calloutView2 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    _mapView2 = [(MapsUserLocationView *)self _mapView];
    [_calloutView convertRect:_mapView2 toView:{v20, v22, v24, v26}];
    v59 = v29;
    v60 = v28;
    v57 = v31;
    rect2 = v30;

    _mapView3 = [(MapsUserLocationView *)self _mapView];
    [_mapView3 _edgeInsets];
    v34 = v33;

    _mapView4 = [(MapsUserLocationView *)self _mapView];
    [_mapView4 bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    _mapView5 = [(MapsUserLocationView *)self _mapView];
    [_mapView5 bounds];
    v56 = v45;
    v47 = v46;
    v49 = v48;
    v51 = v50;

    if (self->_vlfPuckModeCircleView && (v66.origin.x = v37 + 22.0, v66.size.width = v41 + -44.0, v66.size.height = -22.0 - v34 + v43, v66.origin.y = v39, v68.origin.y = v63, v68.origin.x = v64, v68.size.height = v61, v68.size.width = v62, CGRectContainsRect(v66, v68)) && ([(MapsUserLocationView *)self _calloutView], (v52 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v53 = v52;
      v67.size.height = -15.0 - v34 + v51;
      v67.origin.x = v56;
      v69.size.height = v57;
      v67.origin.y = v47;
      v67.size.width = v49;
      v69.origin.y = v59;
      v69.origin.x = v60;
      v69.size.width = rect2;
      v54 = CGRectContainsRect(v67, v69);

      v55 = !v54;
    }

    else
    {
      v55 = 1;
    }

    [(MapsUserLocationView *)self setVlfOutsideEdgeInsets:v55];
  }
}

- (BOOL)shouldShowVLFPuck
{
  if (self->_alwaysShowVLFPuck)
  {
    LOBYTE(vlfMode) = 1;
  }

  else
  {
    vlfMode = [(MapsUserLocationView *)self vlfMode];
    if (vlfMode)
    {
      if ([(MapsUserLocationView *)self isPedestrianARAvailable])
      {
        LOBYTE(vlfMode) = 0;
      }

      else
      {
        [(MapsUserLocationView *)self locationAccuracy];
        v5 = v4;
        GEOConfigGetDouble();
        if (v5 >= v6)
        {
          [(MapsUserLocationView *)self _locationAccuracyInScreenPoints];
          v9 = v8;
          GEOConfigGetDouble();
          v7 = v9 >= v10;
        }

        else
        {
          v7 = 0;
        }

        [(MapsUserLocationView *)self _locationAccuracyInScreenPoints];
        LOBYTE(vlfMode) = v7 && v11 >= 44.0;
      }
    }
  }

  return vlfMode;
}

- (BOOL)isVLFBannerVisible
{
  _calloutView = [(MapsUserLocationView *)self _calloutView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _calloutView2 = [(MapsUserLocationView *)self _calloutView];
    isVisible = [_calloutView2 isVisible];
  }

  else
  {
    isVisible = 0;
  }

  return isVisible;
}

- (double)maxVLFCalloutWidth
{
  _mapView = [(MapsUserLocationView *)self _mapView];
  [_mapView bounds];
  v5 = v4;
  _mapView2 = [(MapsUserLocationView *)self _mapView];
  [_mapView2 bounds];
  v8 = v7;
  _mapView3 = [(MapsUserLocationView *)self _mapView];
  [_mapView3 bounds];
  v11 = v10;
  v13 = v12;

  if (v5 >= v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  return fmin(MKPopoverSmallCalloutDeviceIndependentMaxWidth, v14 + -32.0);
}

- (void)updateVLFCalloutWidth
{
  [(MapsUserLocationView *)self maxVLFCalloutWidth];
  v4 = v3 + -27.0;
  vlfCalloutViewWidthConstraint = [(MapsUserLocationView *)self vlfCalloutViewWidthConstraint];
  [vlfCalloutViewWidthConstraint setConstant:v4];
}

- (void)vlfContaineeViewControllerWillHideFailureViewNotification:(id)notification
{
  if ([(MapsUserLocationView *)self shouldShowVLFPuck])
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 BOOLForKey:@"VLFSessionScanningAnimationSlowDownKey"];

    if (v5)
    {
      v6 = 5.0;
    }

    else
    {
      v6 = 0.2;
    }

    vlfPuckModeCircleView = [(MapsUserLocationView *)self vlfPuckModeCircleView];
    [vlfPuckModeCircleView hideWithDuration:0 startingOpacity:1 shouldShrink:v6 suppressOtherAnimations:1.0];
  }

  else
  {
    v7 = sub_100E107A8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "VLF failure UI was hidden but we shouldn't be showing the VLF puck; ignoring", buf, 2u);
    }
  }
}

- (void)vlfContaineeViewControllerWillShowFailureViewNotification:(id)notification
{
  if ([(MapsUserLocationView *)self shouldShowVLFPuck])
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 BOOLForKey:@"VLFSessionScanningAnimationSlowDownKey"];

    if (v5)
    {
      v6 = 5.0;
    }

    else
    {
      v6 = 0.3;
    }

    vlfPuckModeCircleView = [(MapsUserLocationView *)self vlfPuckModeCircleView];
    [vlfPuckModeCircleView showWithDuration:0 startingOpacity:1 shouldGrow:v6 suppressOtherAnimations:0.0];
  }

  else
  {
    v7 = sub_100E107A8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "VLF failure UI was shown but we shouldn't be showing the VLF puck; ignoring", buf, 2u);
    }
  }
}

- (void)vlfContaineeViewControllerDidDisappearNotification:(id)notification
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"VLFContaineeViewControllerDidDisappearNotification" object:0];

  [(MapsUserLocationView *)self setVlfLocalizationInProgress:0];
  if (![(MapsUserLocationView *)self shouldShowVLFPuck])
  {
    vlfPuckModeCircleView = [(MapsUserLocationView *)self vlfPuckModeCircleView];
    layer = [vlfPuckModeCircleView layer];
    [layer removeAllAnimations];

    vlfPuckModeCircleView2 = [(MapsUserLocationView *)self vlfPuckModeCircleView];
    layer2 = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView layer];
    [layer2 opacity];
    [vlfPuckModeCircleView2 hideWithDuration:1 startingOpacity:0 shouldShrink:0.0 suppressOtherAnimations:v9];
  }

  if ([(UserLocationView *)self mode])
  {
    v10 = 0;
  }

  else
  {
    v10 = GEOConfigGetBOOL() ^ 1;
  }

  [(MapsUserLocationView *)self setHeadingIndicatorStyle:v10];
  v11 = sub_100E107A8();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    headingIndicatorStyle = [(MapsUserLocationView *)self headingIndicatorStyle];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "VLFSession stopped; resetting heading indicator style: %ld", &v12, 0xCu);
  }

  [(MapsUserLocationView *)self setEnabled:1];
}

- (void)vlfSessionTaskWillShowVLFUINotification:(id)notification
{
  if ([(MapsUserLocationView *)self isVLFBannerVisible])
  {
    _calloutView = [(MapsUserLocationView *)self _calloutView];
    [_calloutView alpha];
    v6 = v5;

    if (v6 > 0.0)
    {
      v7 = +[VLFSessionUsageTracker sharedInstance];
      [v7 registerUserTappedCallout];
    }
  }

  v8 = +[VLFSessionUsageTracker sharedInstance];
  [v8 registerUserEnteredVLF];

  [(MapsUserLocationView *)self setVlfLocalizationInProgress:1];
  [(MapsUserLocationView *)self setHeadingIndicatorStyle:2];
  v9 = sub_100E107A8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "VLFSession started; setting heading indicator style to .VisualLocalizationScan", v11, 2u);
  }

  [(MapsUserLocationView *)self setEnabled:0];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"vlfContaineeViewControllerDidDisappearNotification:" name:@"VLFContaineeViewControllerDidDisappearNotification" object:0];
}

- (void)vlfSessionDidStopNotification:(id)notification
{
  vlfPuckModeCircleView = [(MapsUserLocationView *)self vlfPuckModeCircleView];
  [vlfPuckModeCircleView setHidden:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"VLFSessionDidStopNotification" object:0];
}

- (void)vlfSessionDidStartNotification:(id)notification
{
  vlfPuckModeCircleView = [(MapsUserLocationView *)self vlfPuckModeCircleView];
  [vlfPuckModeCircleView setHidden:1];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"vlfSessionDidStopNotification:" name:@"VLFSessionDidStopNotification" object:0];
}

- (void)calloutViewWasDismissed:(id)dismissed
{
  v3 = +[VLFSessionUsageTracker sharedInstance];
  [v3 registerUserDismissedCallout];
}

- (id)vlfSessionAnalyticsTracker
{
  vlfSessionTask = [(MapsUserLocationView *)self vlfSessionTask];
  analyticsTracker = [vlfSessionTask analyticsTracker];

  return analyticsTracker;
}

- (id)vlfSessionTask
{
  v2 = +[UIApplication _maps_keyMapsSceneDelegate];
  platformController = [v2 platformController];
  auxiliaryTasksManager = [platformController auxiliaryTasksManager];
  v5 = [auxiliaryTasksManager auxilaryTaskForClass:objc_opt_class()];

  return v5;
}

- (VLFCalloutView)vlfCalloutView
{
  vlfCalloutView = self->_vlfCalloutView;
  if (!vlfCalloutView)
  {
    v4 = [[VLFCalloutView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_vlfCalloutView;
    self->_vlfCalloutView = v4;

    [(VLFCalloutView *)self->_vlfCalloutView setDelegate:self];
    widthAnchor = [(VLFCalloutView *)self->_vlfCalloutView widthAnchor];
    [(MapsUserLocationView *)self maxVLFCalloutWidth];
    v7 = [widthAnchor constraintEqualToConstant:?];
    vlfCalloutViewWidthConstraint = self->_vlfCalloutViewWidthConstraint;
    self->_vlfCalloutViewWidthConstraint = v7;

    v11 = self->_vlfCalloutViewWidthConstraint;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    [NSLayoutConstraint activateConstraints:v9];

    vlfCalloutView = self->_vlfCalloutView;
  }

  return vlfCalloutView;
}

- (void)setIsPedestrianARAvailable:(BOOL)available
{
  if (self->_isPedestrianARAvailable != available)
  {
    self->_isPedestrianARAvailable = available;
    v4 = sub_100E107A8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (self->_isPedestrianARAvailable)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = v5;
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Updating pedestrian AR availability: %@", &v7, 0xCu);
    }

    [(MapsUserLocationView *)self checkIsWithinEdgeInsets];
    [(MapsUserLocationView *)self adjustVLFUIVisibility];
  }
}

- (void)setVlfMode:(int64_t)mode
{
  if (self->_vlfMode != mode)
  {
    self->_vlfMode = mode;
    v4 = sub_100E107A8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      vlfMode = self->_vlfMode;
      v6 = 134217984;
      v7 = vlfMode;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting VLF Mode: %ld", &v6, 0xCu);
    }

    [(MapsUserLocationView *)self checkIsWithinEdgeInsets];
    [(MapsUserLocationView *)self adjustVLFUIVisibility];
  }
}

- (void)deselectOrUpdateCalloutViewIfNeeded
{
  if ([(MapsUserLocationView *)self isSelected])
  {

    [(MapsUserLocationView *)self setSelected:0 animated:1];
  }

  else
  {

    [(MapsUserLocationView *)self updateCalloutViewIfNeededAnimated:0];
  }
}

- (void)selectOrUpdateCalloutViewIfNeeded
{
  if (([(MapsUserLocationView *)self isSelected]& 1) != 0)
  {

    [(MapsUserLocationView *)self updateCalloutViewIfNeededAnimated:0];
  }

  else
  {

    [(MapsUserLocationView *)self setSelected:1 animated:1];
  }
}

- (BOOL)shouldShowVLFBanner
{
  if ([(MapsUserLocationView *)self vlfMode]!= 2 || ![(MapsUserLocationView *)self shouldShowVLFPuck]|| [(MapsUserLocationView *)self isVLFLocalizationInProgress])
  {
    return 0;
  }

  return GEOConfigGetBOOL();
}

- (BOOL)isVLFPuckVisible
{
  isVisible = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView isVisible];
  if (isVisible)
  {
    LOBYTE(isVisible) = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView isHidden]^ 1;
  }

  return isVisible;
}

- (void)animateVLFPuckOnce
{
  vlfPuckModeCircleView = [(MapsUserLocationView *)self vlfPuckModeCircleView];
  [vlfPuckModeCircleView pulseOnce];
}

- (void)setVlfOutsideEdgeInsets:(BOOL)insets
{
  if (self->_vlfOutsideEdgeInsets != insets)
  {
    self->_vlfOutsideEdgeInsets = insets;
    [(MapsUserLocationView *)self updateVlfCalloutAlpha];
  }
}

- (void)setVlfOverlappingFloatingControls:(BOOL)controls
{
  if (self->_vlfOverlappingFloatingControls != controls)
  {
    self->_vlfOverlappingFloatingControls = controls;
    [(MapsUserLocationView *)self updateVlfCalloutAlpha];
  }
}

- (BOOL)_isSelectable
{
  if ([(MapsUserLocationView *)self isVLFPuckVisible])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = MapsUserLocationView;
  return [(MapsUserLocationView *)&v4 _isSelectable];
}

- (float)_selectionPriority
{
  if ([(MapsUserLocationView *)self isVLFPuckVisible])
  {
    return 1000.0;
  }

  v4.receiver = self;
  v4.super_class = MapsUserLocationView;
  [(MapsUserLocationView *)&v4 _selectionPriority];
  return result;
}

- (CGRect)_significantBounds
{
  if ([(MapsUserLocationView *)self isVLFPuckVisible])
  {
    vlfPuckModeCircleView = [(MapsUserLocationView *)self vlfPuckModeCircleView];
    vlfPuckModeCircleView2 = [(MapsUserLocationView *)self vlfPuckModeCircleView];
    [vlfPuckModeCircleView2 bounds];
    [vlfPuckModeCircleView convertRect:self toView:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = MapsUserLocationView;
    [(MapsUserLocationView *)&v21 _significantBounds];
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = v16;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (UIEdgeInsets)_annotationTrackingInsets
{
  if ([(MapsUserLocationView *)self isVLFLocalizationInProgress])
  {
    _mapView = [(MapsUserLocationView *)self _mapView];
    [_mapView bounds];
    v5 = v4;
    v7 = v6;
    _mapView2 = [(MapsUserLocationView *)self _mapView];
    [_mapView2 _edgeInsets];
    v11 = v5 - (v9 + v10);
    v14 = v7 - (v12 + v13);

    v15 = fmin(v11, v14) * 0.6;
    v16 = (v14 - v15) * 0.5;
    v17 = (v11 - v15) * 0.5;
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = MapsUserLocationView;
    [(MapsUserLocationView *)&v20 _annotationTrackingInsets];
  }

  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (void)_setIsOnAnotherFloorInVenue:(BOOL)venue
{
  if (self->_isOnAnotherFloorInVenue != venue)
  {
    v13 = v8;
    v14 = v7;
    v15 = v3;
    self->_isOnAnotherFloorInVenue = venue;
    if (venue)
    {
      v10 = 0.300000012;
    }

    else
    {
      v10 = 1.0;
    }

    if (venue)
    {
      v11 = 249.0;
    }

    else
    {
      v11 = 1000.0;
    }

    [(MapsUserLocationView *)self setPuckAlpha:v10, v13, v14, v4, v15, v5];
    [(MapsUserLocationView *)self setAccuracyRingAlpha:v10];
    *&v12 = v11;

    [(MapsUserLocationView *)self _setSelectionPriority:v12];
  }
}

- (CGPoint)_bottomCalloutOffset
{
  if ([(MapsUserLocationView *)self shouldShowVLFBanner])
  {
    v3 = 5.0;
    v4 = 0.0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MapsUserLocationView;
    [(MapsUserLocationView *)&v5 _bottomCalloutOffset];
  }

  result.y = v3;
  result.x = v4;
  return result;
}

- (unint64_t)_allowedCalloutEdges
{
  if ([(MapsUserLocationView *)self shouldShowVLFBanner])
  {
    return 4;
  }

  v4.receiver = self;
  v4.super_class = MapsUserLocationView;
  return [(MapsUserLocationView *)&v4 _allowedCalloutEdges];
}

- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  isSelected = [(MapsUserLocationView *)self isSelected];
  annotation = [(MapsUserLocationView *)self annotation];
  if (!annotation)
  {
    goto LABEL_20;
  }

  if (isSelected && ![(MapsUserLocationView *)self isVLFPuckVisible])
  {
    v7 = +[MKMapService sharedService];
    [v7 captureUserAction:1034 onTarget:0 eventValue:0];
  }

  if (![(MapsUserLocationView *)self shouldShowVLFPuck]|| ([(MapsUserLocationView *)self _calloutView], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
  {
    v10 = sub_100E107A8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"NO";
      if (isSelected)
      {
        v11 = @"YES";
      }

      v12 = v11;
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Updating regular callout for selected: %@", buf, 0xCu);
    }

    v6Annotation = [annotation annotation];
    [v6Annotation setSelected:isSelected];
    v21.receiver = self;
    v21.super_class = MapsUserLocationView;
    v14 = [(MapsUserLocationView *)&v21 updateCalloutViewIfNeededAnimated:animatedCopy];

    goto LABEL_21;
  }

  if ([(MapsUserLocationView *)self shouldShowVLFBanner]&& ![(MapsUserLocationView *)self isVLFBannerVisible]&& ((isSelected ^ 1) & 1) == 0)
  {
    v15 = sub_100E107A8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Showing VLF banner", buf, 2u);
    }

    [(MapsUserLocationView *)self _setCalloutStyle:2];
    v20.receiver = self;
    v20.super_class = MapsUserLocationView;
    v14 = [(MapsUserLocationView *)&v20 updateCalloutViewIfNeededAnimated:0];
    _calloutView = [(MapsUserLocationView *)self _calloutView];
    [_calloutView setHideTitle:1];
    [_calloutView _updateCalloutAnimated:0];
    [_calloutView _layoutSubviews:0];
    [(MapsUserLocationView *)self _setCalloutStyle:1];

    goto LABEL_21;
  }

  if ([(MapsUserLocationView *)self shouldShowVLFBanner]|| isSelected & 1 | ![(MapsUserLocationView *)self isVLFBannerVisible])
  {
LABEL_20:
    v14 = 0;
    goto LABEL_21;
  }

  v18 = sub_100E107A8();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Hiding VLF banner", buf, 2u);
  }

  v19.receiver = self;
  v19.super_class = MapsUserLocationView;
  v14 = [(MapsUserLocationView *)&v19 updateCalloutViewIfNeededAnimated:animatedCopy];
LABEL_21:

  return v14;
}

- (void)_setMapPitchRadians:(double)radians
{
  v9.receiver = self;
  v9.super_class = MapsUserLocationView;
  [(MapsUserLocationView *)&v9 _setMapPitchRadians:?];
  if (+[VLFSessionTask isVLFModeSupported])
  {
    if (self->_vlfPuckModeCircleView)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      CATransform3DMakeRotation(&v8, radians, 1.0, 0.0, 0.0);
      backgroundView = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView backgroundView];
      layer = [backgroundView layer];
      v7 = v8;
      [layer setTransform:&v7];

      +[CATransaction commit];
    }
  }
}

- (void)updateStateFromLocation:(id)location duration:(double)duration
{
  v5.receiver = self;
  v5.super_class = MapsUserLocationView;
  [(UserLocationView *)&v5 updateStateFromLocation:location duration:duration];
  if (+[VLFSessionTask isVLFModeSupported])
  {
    [(MapsUserLocationView *)self checkIsWithinEdgeInsets];
    [(MapsUserLocationView *)self adjustVLFUIVisibility];
  }
}

- (void)_updateFromMap
{
  v3.receiver = self;
  v3.super_class = MapsUserLocationView;
  [(MapsUserLocationView *)&v3 _updateFromMap];
  if (+[VLFSessionTask isVLFModeSupported])
  {
    [(MapsUserLocationView *)self checkIsWithinEdgeInsets];
    [(MapsUserLocationView *)self adjustVLFUIVisibility];
  }
}

- (void)_mapVisibleCenteringRectChanged
{
  v3.receiver = self;
  v3.super_class = MapsUserLocationView;
  [(MapsUserLocationView *)&v3 _mapVisibleCenteringRectChanged];
  if (+[VLFSessionTask isVLFModeSupported])
  {
    [(MapsUserLocationView *)self checkIsWithinEdgeInsets];
    [(MapsUserLocationView *)self adjustVLFUIVisibility];
  }
}

- (void)dealloc
{
  GEOConfigRemoveBlockListener();
  v3.receiver = self;
  v3.super_class = MapsUserLocationView;
  [(MapsUserLocationView *)&v3 dealloc];
}

- (MapsUserLocationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  annotationCopy = annotation;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = MapsUserLocationView;
  v8 = [(UserLocationView *)&v20 initWithAnnotation:annotationCopy reuseIdentifier:identifierCopy];
  v9 = v8;
  if (v8)
  {
    [(MapsUserLocationView *)v8 _setCalloutStyle:1];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v9 selector:"vlfSessionDidStartNotification:" name:@"VLFSessionDidStartNotification" object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v9 selector:"vlfSessionTaskWillShowVLFUINotification:" name:@"VLFSessionTaskWillShowVLFUINotification" object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v9 selector:"vlfContaineeViewControllerWillShowFailureViewNotification:" name:@"VLFContaineeViewControllerWillShowFailureViewNotification" object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v9 selector:"vlfContaineeViewControllerWillHideFailureViewNotification:" name:@"VLFContaineeViewControllerWillHideFailureViewNotification" object:0];

    objc_initWeak(&location, v9);
    v9->_alwaysShowVLFPuck = GEOConfigGetBOOL();
    v14 = &_dispatch_main_q;
    objc_copyWeak(&v18, &location);
    v15 = _GEOConfigAddBlockListenerForKey();
    alwaysShowVLFPuckListener = v9->_alwaysShowVLFPuckListener;
    v9->_alwaysShowVLFPuckListener = v15;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v9;
}

@end