@interface MapsUserLocationView
- (BOOL)_isSelectable;
- (BOOL)isVLFBannerVisible;
- (BOOL)isVLFPuckVisible;
- (BOOL)shouldShowVLFBanner;
- (BOOL)shouldShowVLFPuck;
- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)a3;
- (CGPoint)_bottomCalloutOffset;
- (CGRect)_significantBounds;
- (MapsUserLocationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
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
- (void)_setIsOnAnotherFloorInVenue:(BOOL)a3;
- (void)_setMapPitchRadians:(double)a3;
- (void)_updateFromMap;
- (void)adjustVLFUIVisibility;
- (void)animateVLFPuckOnce;
- (void)calloutViewWasDismissed:(id)a3;
- (void)checkIsWithinEdgeInsets;
- (void)dealloc;
- (void)deselectOrUpdateCalloutViewIfNeeded;
- (void)selectOrUpdateCalloutViewIfNeeded;
- (void)setIsPedestrianARAvailable:(BOOL)a3;
- (void)setVlfMode:(int64_t)a3;
- (void)setVlfOutsideEdgeInsets:(BOOL)a3;
- (void)setVlfOverlappingFloatingControls:(BOOL)a3;
- (void)updateStateFromLocation:(id)a3 duration:(double)a4;
- (void)updateVLFCalloutWidth;
- (void)updateVlfCalloutAlpha;
- (void)vlfContaineeViewControllerDidDisappearNotification:(id)a3;
- (void)vlfContaineeViewControllerWillHideFailureViewNotification:(id)a3;
- (void)vlfContaineeViewControllerWillShowFailureViewNotification:(id)a3;
- (void)vlfSessionDidStartNotification:(id)a3;
- (void)vlfSessionDidStopNotification:(id)a3;
- (void)vlfSessionTaskWillShowVLFUINotification:(id)a3;
@end

@implementation MapsUserLocationView

- (id)detailCalloutAccessoryView
{
  if ([(MapsUserLocationView *)self vlfMode]== 2)
  {
    v3 = [(MapsUserLocationView *)self vlfCalloutView];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MapsUserLocationView;
    v3 = [(MapsUserLocationView *)&v5 detailCalloutAccessoryView];
  }

  return v3;
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
    v6 = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView centerXAnchor];
    v7 = [(MapsUserLocationView *)self centerXAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    v25[0] = v8;
    v9 = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView centerYAnchor];
    v10 = [(MapsUserLocationView *)self centerYAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v25[1] = v11;
    v12 = [NSArray arrayWithObjects:v25 count:2];
    [NSLayoutConstraint activateConstraints:v12];

    [*&self->super._MKUserLocationView_opaque[OBJC_IVAR____MKPuckAnnotationView__puckLayer] zPosition];
    v14 = v13 + 1.0;
    v15 = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView layer];
    [v15 setZPosition:v14];

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(MapsUserLocationView *)self _mapPitchRadians];
    CATransform3DMakeRotation(&v23, v16, 1.0, 0.0, 0.0);
    v17 = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView backgroundView];
    v18 = [v17 layer];
    buf = v23;
    [v18 setTransform:&buf];

    +[CATransaction commit];
    vlfPuckModeCircleView = self->_vlfPuckModeCircleView;
  }

  return vlfPuckModeCircleView;
}

- (void)updateVlfCalloutAlpha
{
  v3 = [(MapsUserLocationView *)self _calloutView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([(MapsUserLocationView *)self isVLFOverlappingFloatingControls]|| [(MapsUserLocationView *)self isVLFOutsideEdgeInsets])
    {
      v5 = [(MapsUserLocationView *)self _calloutView];
      [v5 setAlpha:0.0];
    }

    else
    {
      v16 = [(MapsUserLocationView *)self _calloutView];
      [v16 alpha];
      v18 = v17;

      [(MapsUserLocationView *)self vlfCalloutAlpha];
      v20 = v19;
      v21 = [(MapsUserLocationView *)self _calloutView];
      [v21 setAlpha:v20];

      if (fabs(v18) <= 2.22044605e-16)
      {
        v22 = [(MapsUserLocationView *)self _calloutView];
        [v22 alpha];
        v24 = v23;

        if (v24 > 0.0)
        {
          v25 = [(MapsUserLocationView *)self vlfSessionAnalyticsTracker];
          [v25 registerVLFCalloutWasShown];
        }
      }

      [(MapsUserLocationView *)self vlfCalloutAlpha];
      if (v26 > 0.0)
      {
        v27 = +[VLFSessionUsageTracker sharedInstance];
        v28 = [v27 hasUserSeenVLFCallout];

        if ((v28 & 1) == 0)
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

    v6 = [(MapsUserLocationView *)self _calloutView];
    [v6 alpha];
    v8 = v7;

    if (v8 <= 0.0)
    {
      [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView stopPulsing];
    }

    else
    {
      v9 = [(MapsUserLocationView *)self vlfPuckModeCircleView];
      [v9 startPulsing];
    }
  }

  else
  {
    v10 = [(MapsUserLocationView *)self _calloutView];
    v11 = [v10 layer];
    v12 = [v11 animationKeys];
    v13 = [v12 count];

    if (!v13)
    {
      v14 = [(MapsUserLocationView *)self _calloutView];
      [v14 setAlpha:1.0];

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
    v4 = [v3 hasUserSeenVLFCallout];

    if (v4)
    {
      v5 = [(MapsUserLocationView *)self vlfPuckModeCircleView];
      v6 = [v5 isVisible];

      v7 = [(MapsUserLocationView *)self vlfPuckModeCircleView];
      [v7 show];

      if ((v6 & 1) == 0)
      {
        v8 = [(MapsUserLocationView *)self vlfSessionAnalyticsTracker];
        [v8 registerVLFPuckWasShown];

        if ([(MapsUserLocationView *)self isSelected])
        {
          v9 = [(MapsUserLocationView *)self _mapView];
          v10 = [(MapsUserLocationView *)self annotation];
          [v9 deselectAnnotation:v10 animated:1];
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
    v12 = [(MapsUserLocationView *)self _mapView];
    [(VLFPuckModeCircleView *)vlfPuckModeCircleView convertRect:v12 toView:v5, v7, v9, v11];
    v63 = v14;
    v64 = v13;
    v61 = v16;
    v62 = v15;

    v17 = [(MapsUserLocationView *)self _calloutView];
    v18 = [(MapsUserLocationView *)self _calloutView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [(MapsUserLocationView *)self _mapView];
    [v17 convertRect:v27 toView:{v20, v22, v24, v26}];
    v59 = v29;
    v60 = v28;
    v57 = v31;
    rect2 = v30;

    v32 = [(MapsUserLocationView *)self _mapView];
    [v32 _edgeInsets];
    v34 = v33;

    v35 = [(MapsUserLocationView *)self _mapView];
    [v35 bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v44 = [(MapsUserLocationView *)self _mapView];
    [v44 bounds];
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
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = [(MapsUserLocationView *)self vlfMode];
    if (v2)
    {
      if ([(MapsUserLocationView *)self isPedestrianARAvailable])
      {
        LOBYTE(v2) = 0;
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
        LOBYTE(v2) = v7 && v11 >= 44.0;
      }
    }
  }

  return v2;
}

- (BOOL)isVLFBannerVisible
{
  v3 = [(MapsUserLocationView *)self _calloutView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(MapsUserLocationView *)self _calloutView];
    v5 = [v4 isVisible];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)maxVLFCalloutWidth
{
  v3 = [(MapsUserLocationView *)self _mapView];
  [v3 bounds];
  v5 = v4;
  v6 = [(MapsUserLocationView *)self _mapView];
  [v6 bounds];
  v8 = v7;
  v9 = [(MapsUserLocationView *)self _mapView];
  [v9 bounds];
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
  v5 = [(MapsUserLocationView *)self vlfCalloutViewWidthConstraint];
  [v5 setConstant:v4];
}

- (void)vlfContaineeViewControllerWillHideFailureViewNotification:(id)a3
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

    v8 = [(MapsUserLocationView *)self vlfPuckModeCircleView];
    [v8 hideWithDuration:0 startingOpacity:1 shouldShrink:v6 suppressOtherAnimations:1.0];
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

- (void)vlfContaineeViewControllerWillShowFailureViewNotification:(id)a3
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

    v8 = [(MapsUserLocationView *)self vlfPuckModeCircleView];
    [v8 showWithDuration:0 startingOpacity:1 shouldGrow:v6 suppressOtherAnimations:0.0];
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

- (void)vlfContaineeViewControllerDidDisappearNotification:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"VLFContaineeViewControllerDidDisappearNotification" object:0];

  [(MapsUserLocationView *)self setVlfLocalizationInProgress:0];
  if (![(MapsUserLocationView *)self shouldShowVLFPuck])
  {
    v5 = [(MapsUserLocationView *)self vlfPuckModeCircleView];
    v6 = [v5 layer];
    [v6 removeAllAnimations];

    v7 = [(MapsUserLocationView *)self vlfPuckModeCircleView];
    v8 = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView layer];
    [v8 opacity];
    [v7 hideWithDuration:1 startingOpacity:0 shouldShrink:0.0 suppressOtherAnimations:v9];
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
    v13 = [(MapsUserLocationView *)self headingIndicatorStyle];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "VLFSession stopped; resetting heading indicator style: %ld", &v12, 0xCu);
  }

  [(MapsUserLocationView *)self setEnabled:1];
}

- (void)vlfSessionTaskWillShowVLFUINotification:(id)a3
{
  if ([(MapsUserLocationView *)self isVLFBannerVisible])
  {
    v4 = [(MapsUserLocationView *)self _calloutView];
    [v4 alpha];
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

- (void)vlfSessionDidStopNotification:(id)a3
{
  v4 = [(MapsUserLocationView *)self vlfPuckModeCircleView];
  [v4 setHidden:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"VLFSessionDidStopNotification" object:0];
}

- (void)vlfSessionDidStartNotification:(id)a3
{
  v4 = [(MapsUserLocationView *)self vlfPuckModeCircleView];
  [v4 setHidden:1];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"vlfSessionDidStopNotification:" name:@"VLFSessionDidStopNotification" object:0];
}

- (void)calloutViewWasDismissed:(id)a3
{
  v3 = +[VLFSessionUsageTracker sharedInstance];
  [v3 registerUserDismissedCallout];
}

- (id)vlfSessionAnalyticsTracker
{
  v2 = [(MapsUserLocationView *)self vlfSessionTask];
  v3 = [v2 analyticsTracker];

  return v3;
}

- (id)vlfSessionTask
{
  v2 = +[UIApplication _maps_keyMapsSceneDelegate];
  v3 = [v2 platformController];
  v4 = [v3 auxiliaryTasksManager];
  v5 = [v4 auxilaryTaskForClass:objc_opt_class()];

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
    v6 = [(VLFCalloutView *)self->_vlfCalloutView widthAnchor];
    [(MapsUserLocationView *)self maxVLFCalloutWidth];
    v7 = [v6 constraintEqualToConstant:?];
    vlfCalloutViewWidthConstraint = self->_vlfCalloutViewWidthConstraint;
    self->_vlfCalloutViewWidthConstraint = v7;

    v11 = self->_vlfCalloutViewWidthConstraint;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    [NSLayoutConstraint activateConstraints:v9];

    vlfCalloutView = self->_vlfCalloutView;
  }

  return vlfCalloutView;
}

- (void)setIsPedestrianARAvailable:(BOOL)a3
{
  if (self->_isPedestrianARAvailable != a3)
  {
    self->_isPedestrianARAvailable = a3;
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

- (void)setVlfMode:(int64_t)a3
{
  if (self->_vlfMode != a3)
  {
    self->_vlfMode = a3;
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
  v3 = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView isVisible];
  if (v3)
  {
    LOBYTE(v3) = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView isHidden]^ 1;
  }

  return v3;
}

- (void)animateVLFPuckOnce
{
  v2 = [(MapsUserLocationView *)self vlfPuckModeCircleView];
  [v2 pulseOnce];
}

- (void)setVlfOutsideEdgeInsets:(BOOL)a3
{
  if (self->_vlfOutsideEdgeInsets != a3)
  {
    self->_vlfOutsideEdgeInsets = a3;
    [(MapsUserLocationView *)self updateVlfCalloutAlpha];
  }
}

- (void)setVlfOverlappingFloatingControls:(BOOL)a3
{
  if (self->_vlfOverlappingFloatingControls != a3)
  {
    self->_vlfOverlappingFloatingControls = a3;
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
    v3 = [(MapsUserLocationView *)self vlfPuckModeCircleView];
    v4 = [(MapsUserLocationView *)self vlfPuckModeCircleView];
    [v4 bounds];
    [v3 convertRect:self toView:?];
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
    v3 = [(MapsUserLocationView *)self _mapView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v8 = [(MapsUserLocationView *)self _mapView];
    [v8 _edgeInsets];
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

- (void)_setIsOnAnotherFloorInVenue:(BOOL)a3
{
  if (self->_isOnAnotherFloorInVenue != a3)
  {
    v13 = v8;
    v14 = v7;
    v15 = v3;
    self->_isOnAnotherFloorInVenue = a3;
    if (a3)
    {
      v10 = 0.300000012;
    }

    else
    {
      v10 = 1.0;
    }

    if (a3)
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

- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MapsUserLocationView *)self isSelected];
  v6 = [(MapsUserLocationView *)self annotation];
  if (!v6)
  {
    goto LABEL_20;
  }

  if (v5 && ![(MapsUserLocationView *)self isVLFPuckVisible])
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
      if (v5)
      {
        v11 = @"YES";
      }

      v12 = v11;
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Updating regular callout for selected: %@", buf, 0xCu);
    }

    v13 = [v6 annotation];
    [v13 setSelected:v5];
    v21.receiver = self;
    v21.super_class = MapsUserLocationView;
    v14 = [(MapsUserLocationView *)&v21 updateCalloutViewIfNeededAnimated:v3];

    goto LABEL_21;
  }

  if ([(MapsUserLocationView *)self shouldShowVLFBanner]&& ![(MapsUserLocationView *)self isVLFBannerVisible]&& ((v5 ^ 1) & 1) == 0)
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
    v16 = [(MapsUserLocationView *)self _calloutView];
    [v16 setHideTitle:1];
    [v16 _updateCalloutAnimated:0];
    [v16 _layoutSubviews:0];
    [(MapsUserLocationView *)self _setCalloutStyle:1];

    goto LABEL_21;
  }

  if ([(MapsUserLocationView *)self shouldShowVLFBanner]|| v5 & 1 | ![(MapsUserLocationView *)self isVLFBannerVisible])
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
  v14 = [(MapsUserLocationView *)&v19 updateCalloutViewIfNeededAnimated:v3];
LABEL_21:

  return v14;
}

- (void)_setMapPitchRadians:(double)a3
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
      CATransform3DMakeRotation(&v8, a3, 1.0, 0.0, 0.0);
      v5 = [(VLFPuckModeCircleView *)self->_vlfPuckModeCircleView backgroundView];
      v6 = [v5 layer];
      v7 = v8;
      [v6 setTransform:&v7];

      +[CATransaction commit];
    }
  }
}

- (void)updateStateFromLocation:(id)a3 duration:(double)a4
{
  v5.receiver = self;
  v5.super_class = MapsUserLocationView;
  [(UserLocationView *)&v5 updateStateFromLocation:a3 duration:a4];
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

- (MapsUserLocationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = MapsUserLocationView;
  v8 = [(UserLocationView *)&v20 initWithAnnotation:v6 reuseIdentifier:v7];
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