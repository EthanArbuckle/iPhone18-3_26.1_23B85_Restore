@interface NavIndicatorsViewController
- (AudioPreferences)audioPreferences;
- (BOOL)_shouldEnableIncidentsReporting;
- (NSLayoutConstraint)speedLimitToCompassBottomConstraint;
- (NSLayoutConstraint)speedLimitToViewTopConstraint;
- (NavIndicatorsViewController)initWithDelegate:(id)a3 pedestrianARSessionStateManager:(id)a4;
- (NavIndicatorsViewControllerDelegate)delegate;
- (double)_compassViewAlpha;
- (double)_incidentReportingButtonAlpha;
- (double)_speedLimitViewAlpha;
- (id)_floatingButtonWithAction:(SEL)a3 axIdentifier:(id)a4 axLabel:(id)a5 image:(id)a6;
- (id)audioControlView;
- (id)imageConfiguration;
- (unint64_t)_guidanceLevel:(unint64_t)a3 supportingTransportType:(int)a4;
- (void)_animateInCompassIfNeededWithTimeout:(BOOL)a3;
- (void)_animateOutCompassIfNeeded;
- (void)_animateSpeedLimitViewAnimated:(BOOL)a3;
- (void)_audioControlViewButtonTapped;
- (void)_configureForForceWindshield;
- (void)_configureForUnforceWindshield;
- (void)_insertCompassView;
- (void)_pressedCompass;
- (void)_pressedForceWindshield;
- (void)_pressedPedestrianAR;
- (void)_pressedReportingButton;
- (void)_pressedTTR;
- (void)_pressedUnforceWindshield;
- (void)_pressedViewOverview;
- (void)_pressedViewTbT;
- (void)_radarAuthorizationChanged;
- (void)_removeCompassView;
- (void)_scheduleTimerToDismissCompass;
- (void)_setConstraint:(id)a3 active:(BOOL)a4;
- (void)_setIndicatorsType:(unint64_t)a3 route:(id)a4;
- (void)_updateAudioPreferences;
- (void)_updateButtonsVisibility;
- (void)_updateCompassStyling;
- (void)_updateContent;
- (void)_updateOverviewButton;
- (void)audioControlView:(id)a3 didSelectAudioType:(unint64_t)a4;
- (void)dealloc;
- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4;
- (void)insertDimmingOverlayForStaleMapEffectWithBlock:(id)a3;
- (void)loadView;
- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)a3;
- (void)mapViewNavigationCameraHasStartedPanning:(id)a3;
- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6;
- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setControlsHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setIndicatorsHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)valueChangedForGEOConfigKey:(id)a3;
- (void)viewDidLoad;
@end

@implementation NavIndicatorsViewController

- (NavIndicatorsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_radarAuthorizationChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D60230;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_animateSpeedLimitViewAnimated:(BOOL)a3
{
  v3 = a3;
  [(NavIndicatorsViewController *)self _speedLimitViewAlpha];
  v6 = v5;
  if (v5 > 0.0)
  {
    v7 = [(NavSpeedLimitView *)self->_speedLimitView superview];

    if (!v7)
    {
      [(NavIndicatorsViewController *)self _compassViewAlpha];
      v9 = v8;
      v10 = sub_100090D58();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v20 = "[NavIndicatorsViewController _animateSpeedLimitViewAnimated:]";
        v21 = 1024;
        v22 = v9 > 0.0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: Inserting speedLimitView into the view hierarchy, below compass: %d", buf, 0x12u);
      }

      v11 = [(NavIndicatorsViewController *)self view];
      [v11 addSubview:self->_speedLimitView];

      v12 = [(NavSpeedLimitView *)self->_speedLimitView leadingAnchor];
      v13 = [(NavIndicatorsViewController *)self view];
      v14 = [v13 leadingAnchor];
      v15 = [v12 constraintEqualToAnchor:v14 constant:self->_navIndicatorsPaddingHorizontal];
      [v15 setActive:1];

      if (v9 <= 0.0)
      {
        [(NavIndicatorsViewController *)self speedLimitToViewTopConstraint];
      }

      else
      {
        [(NavIndicatorsViewController *)self speedLimitToCompassBottomConstraint];
      }
      v16 = ;
      [(NavIndicatorsViewController *)self _setConstraint:v16 active:1];
    }
  }

  v17 = 0.0;
  v18[1] = 3221225472;
  v18[0] = _NSConcreteStackBlock;
  v18[2] = sub_100D60480;
  v18[3] = &unk_101661650;
  if (v3)
  {
    v17 = 0.25;
  }

  v18[4] = self;
  *&v18[5] = v6;
  [UIView animateWithDuration:4 delay:v18 options:0 animations:v17 completion:0.0];
}

- (void)_animateOutCompassIfNeeded
{
  self->_temporarilyShowingCompass = 0;
  compassDismissTimer = self->_compassDismissTimer;
  self->_compassDismissTimer = 0;

  if (![(NavIndicatorsViewController *)self _alwaysShowCompass])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100D60594;
    v5[3] = &unk_101661B18;
    v5[4] = self;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100D60618;
    v4[3] = &unk_101661738;
    v4[4] = self;
    [UIView animateWithDuration:4 delay:v5 options:v4 animations:0.25 completion:0.0];
  }
}

- (void)_scheduleTimerToDismissCompass
{
  objc_initWeak(&location, self);
  GEOConfigGetDouble();
  v4 = v3;
  v5 = &_dispatch_main_q;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100D60754;
  v8[3] = &unk_1016616E8;
  objc_copyWeak(&v9, &location);
  v6 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v8 block:v4];
  compassDismissTimer = self->_compassDismissTimer;
  self->_compassDismissTimer = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_animateInCompassIfNeededWithTimeout:(BOOL)a3
{
  self->_temporarilyShowingCompass = 1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D6090C;
  v9[3] = &unk_101661AE0;
  v10 = a3;
  v9[4] = self;
  v4 = objc_retainBlock(v9);
  (v4[2])();
  v5 = [(MKCompassView *)self->_compassView superview];

  if (!v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100D60934;
    v8[3] = &unk_101661B18;
    v8[4] = self;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100D609B8;
    v6[3] = &unk_10165F438;
    v7 = v4;
    [UIView animateWithDuration:v8 animations:v6 completion:0.25];
  }
}

- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)a3
{
  if ([(NavIndicatorsViewController *)self indicatorsType]== 1)
  {

    [(NavIndicatorsViewController *)self _animateInCompassIfNeededWithTimeout:0];
  }
}

- (void)mapViewNavigationCameraHasStartedPanning:(id)a3
{
  if ([(NavIndicatorsViewController *)self indicatorsType]== 1)
  {

    [(NavIndicatorsViewController *)self _animateInCompassIfNeededWithTimeout:0];
  }
}

- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4
{
  if ([(NavIndicatorsViewController *)self indicatorsType:a3]== 1)
  {

    [(NavIndicatorsViewController *)self _animateInCompassIfNeededWithTimeout:1];
  }
}

- (BOOL)_shouldEnableIncidentsReporting
{
  v3 = [MapsSettings valueForConfigKey:NavigationConfig_ReportAndVerifyIncidentsWhileNavigating[0], NavigationConfig_ReportAndVerifyIncidentsWhileNavigating[1]];
  if ([v3 BOOLValue] && MapsFeature_IsEnabled_MoreReportTypes())
  {
    v4 = [(NavIndicatorsViewController *)self route];
    if ([v4 transportType])
    {
      v5 = 0;
    }

    else
    {
      v6 = +[TrafficIncidentLayoutManager sharedInstance];
      v5 = [v6 isIncidentReportingEnabled];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)audioControlView:(id)a3 didSelectAudioType:(unint64_t)a4
{
  v5 = 1;
  if (a4 != 1)
  {
    v5 = 2;
  }

  if (a4 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = [(NavIndicatorsViewController *)self audioPreferences];
  v8 = [(NavIndicatorsViewController *)self route];
  [v7 setGuidanceLevel:v6 forTransportType:{objc_msgSend(v8, "transportType")}];

  v9 = [(NavIndicatorsViewController *)self audioPreferences];
  [v9 synchronize];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10 && a6 == &off_101652C18 && [&off_1016ED778 containsObject:v10])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100D60D34;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NavIndicatorsViewController;
    [(NavIndicatorsViewController *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  if (a3.var0 == 64 && a3.var1 == &unk_10163CB98 || a3.var0 == 63 && a3.var1 == &unk_10163CB60)
  {
    [(NavIndicatorsViewController *)self _updateContent];
  }
}

- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6
{
  v6 = *&a4;
  v8 = a5;
  v9 = [(NavIndicatorsViewController *)self audioPreferences];
  v10 = [v9 guidanceLevelForTransportType:v6];

  v11 = [(NavIndicatorsViewController *)self audioPreferences];
  v12 = [(NavIndicatorsViewController *)self route];
  v13 = [v11 guidanceLevelForTransportType:{objc_msgSend(v12, "transportType")}];

  v14 = [(NavIndicatorsViewController *)self _guidanceLevel:v13 supportingTransportType:v6];
  v15 = sub_100090D58();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v10 == v14)
  {
    if (v16)
    {
      if (v6 >= 7)
      {
        v17 = [NSString stringWithFormat:@"(unknown: %i)", v6];
      }

      else
      {
        v17 = *(&off_101652C20 + v6);
      }

      v19 = v17;
      if (v10 + 1 >= 4)
      {
        v20 = [NSString stringWithFormat:@"UNKNOWN: %lu", v10];
      }

      else
      {
        v20 = *(&off_101652C58 + v10 + 1);
      }

      *buf = 138412546;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Transport type changed. Guidance level for '%@' is '%@'", buf, 0x16u);
    }

    [(NavIndicatorsViewController *)self setCurrentVoiceGuidanceLevel:v10];
    [(NavIndicatorsViewController *)self setRoute:v8];
  }

  else
  {
    if (v16)
    {
      if (v6 >= 7)
      {
        v18 = [NSString stringWithFormat:@"(unknown: %i)", v6];
      }

      else
      {
        v18 = *(&off_101652C20 + v6);
      }

      v21 = v18;
      if (v10 + 1 >= 4)
      {
        v22 = [NSString stringWithFormat:@"UNKNOWN: %lu", v10];
      }

      else
      {
        v22 = *(&off_101652C58 + v10 + 1);
      }

      v23 = v22;
      if (v14 + 1 >= 4)
      {
        v24 = [NSString stringWithFormat:@"UNKNOWN: %lu", v14];
      }

      else
      {
        v24 = *(&off_101652C58 + v14 + 1);
      }

      *buf = 138412802;
      v27 = v21;
      v28 = 2112;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Transport type changed. Updating guidance level for '%@' from '%@' to '%@'", buf, 0x20u);
    }

    [(NavIndicatorsViewController *)self setCurrentVoiceGuidanceLevel:v10];
    [(NavIndicatorsViewController *)self setRoute:v8];

    v25 = [(NavIndicatorsViewController *)self audioPreferences];
    [v25 setGuidanceLevel:v14 forTransportType:v6];

    v8 = [(NavIndicatorsViewController *)self audioPreferences];
    [v8 synchronize];
  }
}

- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4
{
  speedLimitView = self->_speedLimitView;
  v6 = a4;
  LODWORD(speedLimitView) = [(NavSpeedLimitView *)speedLimitView isVisible];
  v7 = [v6 speedLimitIsMPH] ^ 1;
  v8 = self->_speedLimitView;
  v9 = [v6 speedLimit];
  v10 = [v6 speedLimitShieldType];

  [(NavSpeedLimitView *)v8 setSpeedLimit:v9 units:v7 shieldType:v10];
  if (speedLimitView != [(NavSpeedLimitView *)self->_speedLimitView isVisible])
  {

    [(NavIndicatorsViewController *)self _updateContent];
  }
}

- (unint64_t)_guidanceLevel:(unint64_t)a3 supportingTransportType:(int)a4
{
  if (a3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  if (a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  if ((a4 - 2) >= 2)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (void)_updateAudioPreferences
{
  v3 = [(NavIndicatorsViewController *)self audioPreferences];
  [v3 loadValuesFromDefaults];

  v4 = [(NavIndicatorsViewController *)self audioPreferences];
  v5 = [(NavIndicatorsViewController *)self route];
  -[NavIndicatorsViewController setCurrentVoiceGuidanceLevel:](self, "setCurrentVoiceGuidanceLevel:", [v4 guidanceLevelForTransportType:{objc_msgSend(v5, "transportType")}]);

  v6 = sub_100090D58();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NavIndicatorsViewController *)self currentVoiceGuidanceLevel];
    if (v7 + 1 >= 4)
    {
      v8 = [NSString stringWithFormat:@"UNKNOWN: %lu", v7];
    }

    else
    {
      v8 = *(&off_101652C58 + v7 + 1);
    }

    *buf = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updated voice guidance level from audio preferences: %@", buf, 0xCu);
  }

  [(NavIndicatorsViewController *)self _updateContent];
}

- (void)_pressedCompass
{
  if ([(NavIndicatorsViewController *)self indicatorsType]== 1)
  {
    v3 = sub_100090D58();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "toggling heading mode", v5, 2u);
    }

    v4 = [(NavIndicatorsViewController *)self delegate];
    [v4 toggleHeadingMode];

    [(NavIndicatorsViewController *)self _animateOutCompassIfNeeded];
    [GEOAPPortal captureUserAction:1040 target:505 value:0];
  }
}

- (void)_pressedTTR
{
  v3 = sub_100090D58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(NavIndicatorsViewController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launching TTR from nav indicators", buf, 0xCu);
  }

  v10 = +[MapsRadarController sharedInstance];
  [v10 launchTTR];
}

- (void)_pressedReportingButton
{
  v2 = [(NavIndicatorsViewController *)self delegate];
  [v2 reportAnIncident];

  [GEOAPPortal captureUserAction:115 target:505 value:0];
}

- (void)_pressedPedestrianAR
{
  v2 = [(NavIndicatorsViewController *)self delegate];
  [v2 enterPedestrianAR];

  [GEOAPPortal captureUserAction:126 target:402 value:0];
}

- (void)_pressedViewTbT
{
  v3 = sub_100090D58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Switching to zoomed in mode", v5, 2u);
  }

  [GEOAPPortal captureUserAction:9018 target:505 value:0];
  v4 = [(NavIndicatorsViewController *)self delegate];
  [v4 switchToZoomedInMode];

  [(NavIndicatorsViewController *)self _animateOutCompassIfNeeded];
  [(NavIndicatorsViewController *)self _animateSpeedLimitViewAnimated:1];
}

- (void)_pressedViewOverview
{
  v3 = sub_100090D58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Switching to overview mode", v5, 2u);
  }

  [GEOAPPortal captureUserAction:9017 target:505 value:0];
  v4 = [(NavIndicatorsViewController *)self delegate];
  [v4 switchToOverviewMode];

  [(NavIndicatorsViewController *)self _animateInCompassIfNeededWithTimeout:1];
  [(NavIndicatorsViewController *)self _animateSpeedLimitViewAnimated:1];
}

- (void)_pressedUnforceWindshield
{
  [(NavIndicatorsViewController *)self _configureForForceWindshield];
  v2 = +[VKDebugSettings sharedSettingsExt];
  [v2 setShouldForceWindshieldMode:0];
}

- (void)_pressedForceWindshield
{
  [(NavIndicatorsViewController *)self _configureForUnforceWindshield];
  v2 = +[VKDebugSettings sharedSettingsExt];
  [v2 setShouldForceWindshieldMode:1];
}

- (void)_configureForUnforceWindshield
{
  [(UIButton *)self->_toggleForceWindshield removeTarget:self action:"_pressedForceWindshield" forControlEvents:64];
  [(UIButton *)self->_toggleForceWindshield addTarget:self action:"_pressedUnforceWindshield" forControlEvents:64];
  v5 = [(NavIndicatorsViewController *)self imageConfiguration];
  toggleForceWindshield = self->_toggleForceWindshield;
  v4 = [UIImage systemImageNamed:@"w.circle.fill" withConfiguration:v5];
  [(UIButton *)toggleForceWindshield setImage:v4 forState:0];
}

- (void)_configureForForceWindshield
{
  [(UIButton *)self->_toggleForceWindshield removeTarget:self action:"_pressedUnforceWindshield" forControlEvents:64];
  [(UIButton *)self->_toggleForceWindshield addTarget:self action:"_pressedForceWindshield" forControlEvents:64];
  v5 = [(NavIndicatorsViewController *)self imageConfiguration];
  toggleForceWindshield = self->_toggleForceWindshield;
  v4 = [UIImage systemImageNamed:@"w.circle" withConfiguration:v5];
  [(UIButton *)toggleForceWindshield setImage:v4 forState:0];
}

- (void)_updateOverviewButton
{
  if (!_UISolariumEnabled())
  {
    v3 = +[UIButtonConfiguration borderlessButtonConfiguration];
    v4 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:22.0];
    [v3 setPreferredSymbolConfigurationForImage:v4];

    v5 = [UIColor colorNamed:@"NavigationMaterialColor"];
    v6 = [v3 background];
    [v6 setBackgroundColor:v5];

    v7 = [v3 background];
    [v7 setCornerRadius:30.0];

    [v3 setCornerStyle:-1];
    v8 = [(NavIndicatorsViewController *)self imageConfiguration];
    [v3 setPreferredSymbolConfigurationForImage:v8];

    if ([(NavIndicatorsViewController *)self indicatorsType]== 1)
    {
      goto LABEL_5;
    }

    v10 = [UIImage imageNamed:@"CameraModeOverview"];
LABEL_10:
    v17 = @"[Overview] Overview Mode";
    v18 = &selRef__pressedViewOverview;
    v19 = &selRef__pressedViewTbT;
    goto LABEL_11;
  }

  if ([(NavIndicatorsViewController *)self indicatorsType]!= 1)
  {
    v20 = [(NavIndicatorsViewController *)self imageConfiguration];
    v10 = [UIImage systemImageNamed:@"point.topleft.down.to.point.bottomright.filled.curvepath" withConfiguration:v20];

    v3 = 0;
    goto LABEL_10;
  }

  v3 = 0;
LABEL_5:
  v9 = [(NavIndicatorsViewController *)self imageConfiguration];
  v10 = [UIImage systemImageNamed:@"location.north.line.fill" withConfiguration:v9];

  if (v3)
  {
    [v3 contentInsets];
    v12 = v11;
    [v3 contentInsets];
    v14 = v13;
    [v3 contentInsets];
    v16 = v15 + 3.0;
    [v3 contentInsets];
    [v3 setContentInsets:{v12, v14, v16}];
  }

  v17 = @"[Overview] Turn-by-Turn Mode";
  v18 = &selRef__pressedViewTbT;
  v19 = &selRef__pressedViewOverview;
LABEL_11:
  [(UIButton *)self->_overviewButton removeTarget:self action:*v19 forControlEvents:64];
  [(UIButton *)self->_overviewButton addTarget:self action:*v18 forControlEvents:64];
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:v17 value:@"localized string not found" table:0];
  [(UIButton *)self->_overviewButton setAccessibilityLabel:v22];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100D61CD0;
  v25[3] = &unk_101661A40;
  v26 = v3;
  v27 = v10;
  v28 = self;
  v23 = v10;
  v24 = v3;
  [UIView performWithoutAnimation:v25];
}

- (void)_updateCompassStyling
{
  v3 = [(NavIndicatorsViewController *)self traitCollection];
  v4 = [v3 userInterfaceStyle] != 2;

  compassView = self->_compassView;

  [(MKCompassView *)compassView setCompassViewSize:2 style:v4];
}

- (void)_updateButtonsVisibility
{
  v3 = [(NavIndicatorsViewController *)self audioControlView];
  if ([(PedestrianARSessionStateManager *)self->_pedestrianARSessionStateManager shouldShowPedestrianAR])
  {
    p_pedestrianARButton = &self->_pedestrianARButton;
    [(UIButton *)self->_pedestrianARButton setHidden:0];
  }

  else
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    p_pedestrianARButton = &self->_pedestrianARButton;
    -[UIButton setHidden:](self->_pedestrianARButton, "setHidden:", [v5 BOOLForKey:@"PedestrianARForceShowAffordanceKey"] ^ 1);
  }

  if (([(UIButton *)*p_pedestrianARButton isHidden]& 1) != 0)
  {
    v6 = [(NavIndicatorsViewController *)self audioControlView];
  }

  else
  {
    v6 = *p_pedestrianARButton;
  }

  v14 = v6;

  if ([(NavIndicatorsViewController *)self _shouldEnableIncidentsReporting])
  {
    [(UIButton *)self->_reportingButton setHidden:[(NavIndicatorsViewController *)self _shouldEnableIncidentsReporting]^ 1];
    v7 = self->_reportingButton;

    v14 = v7;
  }

  v8 = +[MapsRadarButtonHelper shouldShowButton];
  [(UIButton *)self->_ttrButton setHidden:v8 ^ 1];
  v9 = [(UIButton *)self->_ttrButton heightAnchor];
  v10 = v9;
  v11 = 60.0;
  if (!v8)
  {
    v11 = 0.0;
  }

  v12 = [v9 constraintEqualToConstant:v11];
  ttrButtonHeightConstraint = self->_ttrButtonHeightConstraint;
  self->_ttrButtonHeightConstraint = v12;
}

- (void)_updateContent
{
  v3 = objc_opt_new();
  [(NavIndicatorsViewController *)self _compassViewAlpha];
  v5 = v4;
  [(NavIndicatorsViewController *)self _speedLimitViewAlpha];
  v7 = v6;
  v8 = sub_100090D58();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v42 = 67109376;
    *v43 = v5 > 0.0;
    *&v43[4] = 1024;
    *&v43[6] = v7 > 0.0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Drawing content with compass: %d speed limit: %d", &v42, 0xEu);
  }

  [(NavIndicatorsViewController *)self _incidentReportingButtonAlpha];
  v10 = v9;
  compassView = self->_compassView;
  if (v5 <= 0.0)
  {
    [(MKCompassView *)compassView removeFromSuperview];
  }

  else
  {
    v12 = [(MKCompassView *)compassView superview];

    if (!v12)
    {
      v13 = [(NavIndicatorsViewController *)self view];
      [v13 addSubview:self->_compassView];

      v14 = [(MKCompassView *)self->_compassView leadingAnchor];
      v15 = [(NavIndicatorsViewController *)self view];
      v16 = [v15 leadingAnchor];
      v17 = [v14 constraintEqualToAnchor:v16 constant:self->_navIndicatorsPaddingHorizontal];
      [v3 addObject:v17];

      v18 = [(MKCompassView *)self->_compassView topAnchor];
      v19 = [(NavIndicatorsViewController *)self view];
      v20 = [v19 topAnchor];
      v21 = [v18 constraintEqualToAnchor:v20 constant:self->_navIndicatorsPaddingVertical];
      [v3 addObject:v21];
    }
  }

  [(MKCompassView *)self->_compassView setAlpha:v5];
  v22 = [(NavSpeedLimitView *)self->_speedLimitView superview];
  v23 = v22;
  if (v7 <= 0.0)
  {

    if (v23)
    {
      v31 = sub_100090D58();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        LOWORD(v42) = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Removing speedLimitView from the view hierarchy", &v42, 2u);
      }

      [(NavSpeedLimitView *)self->_speedLimitView removeFromSuperview];
    }
  }

  else
  {

    if (!v23)
    {
      v24 = sub_100090D58();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v42 = 136315394;
        *v43 = "[NavIndicatorsViewController _updateContent]";
        *&v43[8] = 1024;
        v44 = v5 > 0.0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s: Inserting speedLimitView into the view hierarchy, below compass: %d", &v42, 0x12u);
      }

      v25 = [(NavIndicatorsViewController *)self view];
      [v25 addSubview:self->_speedLimitView];

      v26 = [(NavSpeedLimitView *)self->_speedLimitView leadingAnchor];
      v27 = [(NavIndicatorsViewController *)self view];
      v28 = [v27 leadingAnchor];
      v29 = [v26 constraintEqualToAnchor:v28 constant:self->_navIndicatorsPaddingHorizontal];
      [v3 addObject:v29];
    }

    if (v5 <= 0.0)
    {
      v32 = [(NavIndicatorsViewController *)self speedLimitToCompassBottomConstraint];
      [(NavIndicatorsViewController *)self _setConstraint:v32 active:0];

      [(NavIndicatorsViewController *)self speedLimitToViewTopConstraint];
    }

    else
    {
      v30 = [(NavIndicatorsViewController *)self speedLimitToViewTopConstraint];
      [(NavIndicatorsViewController *)self _setConstraint:v30 active:0];

      [(NavIndicatorsViewController *)self speedLimitToCompassBottomConstraint];
    }
    v33 = ;
    [(NavIndicatorsViewController *)self _setConstraint:v33 active:1];
  }

  [(NavIndicatorsViewController *)self _updateOverviewButton];
  v34 = [_TtC4Maps22NavAudioControlFactory navAudioTypeForGuidanceLevel:[(NavIndicatorsViewController *)self currentVoiceGuidanceLevel]];
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    if (self->_audioControlButton)
    {
      v35 = [(NavIndicatorsViewController *)self imageConfiguration];
      v36 = [_TtC4Maps22NavAudioControlFactory imageForNavAudioType:v34 imageConfiguration:v35];

      [(UIButton *)self->_audioControlButton setImage:v36 forState:0];
    }
  }

  else
  {
    v37 = [(NavIndicatorsViewController *)self route];
    v38 = [v37 transportType];

    if (v38)
    {
      v39 = &off_1016ED9E8;
    }

    else
    {
      v39 = &off_1016ED9D0;
    }

    [(NavAudioControlView *)self->_audioControl setAvailableAudioTypes:v39];
    [(NavAudioControlView *)self->_audioControl setCurrentAudioType:v34];
  }

  reportingButton = self->_reportingButton;
  if (v10 <= 0.0)
  {
    [(UIButton *)reportingButton removeFromSuperview];
  }

  else
  {
    v41 = [(UIButton *)reportingButton superview];

    if (!v41)
    {
      [(UIStackView *)self->_stackView addArrangedSubview:self->_reportingButton];
    }
  }

  [NSLayoutConstraint activateConstraints:v3];
  [(NavIndicatorsViewController *)self _updateButtonsVisibility];
}

- (void)_setConstraint:(id)a3 active:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (!v4)
    {
LABEL_9:
      [v6 setActive:v4];
      goto LABEL_10;
    }

    v7 = [v5 firstItem];
    v8 = [v7 superview];
    v9 = [v6 secondItem];
    v10 = [v9 superview];
    v11 = v8;
    v12 = v10;
    if (!(v11 | v12))
    {
      v13 = 0;
      v11 = 0;
LABEL_8:

      goto LABEL_9;
    }

    v13 = v12;
    v14 = [v11 isEqual:v12];

    if (v14)
    {
      goto LABEL_8;
    }

    v15 = [v6 firstItem];
    v16 = [v6 secondItem];
    if ([v15 isDescendantOfView:v16])
    {

      goto LABEL_8;
    }

    v17 = [v6 secondItem];
    v18 = [v6 firstItem];
    v20 = [v17 isDescendantOfView:v18];

    if (v20)
    {
      goto LABEL_9;
    }

    v19 = sub_100090D58();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Misuse of constraint: %@", buf, 0xCu);
    }
  }

LABEL_10:
}

- (void)_removeCompassView
{
  v3 = [(NavSpeedLimitView *)self->_speedLimitView superview];

  if (v3)
  {
    v4 = [(NavIndicatorsViewController *)self speedLimitToCompassBottomConstraint];
    [(NavIndicatorsViewController *)self _setConstraint:v4 active:0];

    v5 = [(NavIndicatorsViewController *)self speedLimitToViewTopConstraint];
    [(NavIndicatorsViewController *)self _setConstraint:v5 active:1];
  }
}

- (void)_insertCompassView
{
  v3 = objc_opt_new();
  [(MKCompassView *)self->_compassView removeFromSuperview];
  v4 = [(NavIndicatorsViewController *)self view];
  [v4 addSubview:self->_compassView];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100D629D8;
  v16[3] = &unk_101661B18;
  v16[4] = self;
  [UIView performWithoutAnimation:v16];
  v5 = [(MKCompassView *)self->_compassView leadingAnchor];
  v6 = [(NavIndicatorsViewController *)self view];
  v7 = [v6 leadingAnchor];
  v8 = [v5 constraintEqualToAnchor:v7 constant:self->_navIndicatorsPaddingHorizontal];
  [v3 addObject:v8];

  v9 = [(MKCompassView *)self->_compassView topAnchor];
  v10 = [(NavIndicatorsViewController *)self view];
  v11 = [v10 topAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:self->_navIndicatorsPaddingVertical];
  [v3 addObject:v12];

  v13 = [(NavSpeedLimitView *)self->_speedLimitView superview];

  if (v13)
  {
    v14 = [(NavIndicatorsViewController *)self speedLimitToViewTopConstraint];
    [(NavIndicatorsViewController *)self _setConstraint:v14 active:0];

    v15 = [(NavIndicatorsViewController *)self speedLimitToCompassBottomConstraint];
    [(NavIndicatorsViewController *)self _setConstraint:v15 active:1];
  }

  [NSLayoutConstraint activateConstraints:v3];
}

- (void)_setIndicatorsType:(unint64_t)a3 route:(id)a4
{
  v11 = a4;
  indicatorsType = self->_indicatorsType;
  v8 = self->_route;
  v9 = v8;
  if (v11 | v8)
  {
    v10 = [v8 isEqual:?];
  }

  else
  {
    v10 = 1;
  }

  if (indicatorsType != a3 || (v10 & 1) == 0)
  {
    self->_indicatorsType = a3;
    objc_storeStrong(&self->_route, a4);
    if (v10)
    {
      [(NavIndicatorsViewController *)self _updateOverviewButton];
    }

    else
    {
      [(NavIndicatorsViewController *)self _updateContent];
    }
  }
}

- (NSLayoutConstraint)speedLimitToCompassBottomConstraint
{
  speedLimitToCompassBottomConstraint = self->_speedLimitToCompassBottomConstraint;
  if (!speedLimitToCompassBottomConstraint)
  {
    v4 = [(NavSpeedLimitView *)self->_speedLimitView topAnchor];
    v5 = [(MKCompassView *)self->_compassView bottomAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:self->_navIndicatorsPaddingVertical];
    v7 = self->_speedLimitToCompassBottomConstraint;
    self->_speedLimitToCompassBottomConstraint = v6;

    speedLimitToCompassBottomConstraint = self->_speedLimitToCompassBottomConstraint;
  }

  return speedLimitToCompassBottomConstraint;
}

- (NSLayoutConstraint)speedLimitToViewTopConstraint
{
  speedLimitToViewTopConstraint = self->_speedLimitToViewTopConstraint;
  if (!speedLimitToViewTopConstraint)
  {
    v4 = [(NavSpeedLimitView *)self->_speedLimitView topAnchor];
    v5 = [(NavIndicatorsViewController *)self view];
    v6 = [v5 topAnchor];
    v7 = [v4 constraintEqualToAnchor:v6 constant:self->_navIndicatorsPaddingVertical];
    v8 = self->_speedLimitToViewTopConstraint;
    self->_speedLimitToViewTopConstraint = v7;

    speedLimitToViewTopConstraint = self->_speedLimitToViewTopConstraint;
  }

  return speedLimitToViewTopConstraint;
}

- (AudioPreferences)audioPreferences
{
  audioPreferences = self->_audioPreferences;
  if (!audioPreferences)
  {
    v4 = [AudioPreferences alloc];
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [(AudioPreferences *)v4 initWithDefaults:v5];
    v7 = self->_audioPreferences;
    self->_audioPreferences = v6;

    audioPreferences = self->_audioPreferences;
  }

  return audioPreferences;
}

- (double)_incidentReportingButtonAlpha
{
  v2 = [(NavIndicatorsViewController *)self _shouldEnableIncidentsReporting];
  result = 0.0;
  if (v2)
  {
    return 1.0;
  }

  return result;
}

- (double)_speedLimitViewAlpha
{
  result = 0.0;
  if (!self->_indicatorsHidden)
  {
    BOOL = GEOConfigGetBOOL();
    v5 = [(NavIndicatorsViewController *)self route];
    v6 = [v5 transportType];
    if (v6)
    {
      v7 = v6 == 3;
    }

    else
    {
      v7 = 1;
    }

    v8 = v7;

    result = 0.0;
    if ((BOOL & v8) != 0)
    {
      return 1.0;
    }
  }

  return result;
}

- (double)_compassViewAlpha
{
  v3 = [(NavIndicatorsViewController *)self traitCollection];
  v4 = [v3 isLuminanceReduced];

  v5 = 0.0;
  if ((v4 & 1) == 0)
  {
    if ([(NavIndicatorsViewController *)self indicatorsType]== 1)
    {
      v5 = 1.0;
      if (self->_temporarilyShowingCompass)
      {
        return v5;
      }
    }

    else if (self->_indicatorsHidden)
    {
      return v5;
    }

    if ([(NavIndicatorsViewController *)self _alwaysShowCompass])
    {
      return 1.0;
    }

    else
    {
      return 0.0;
    }
  }

  return v5;
}

- (void)setIndicatorsHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_indicatorsHidden != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_indicatorsHidden = a3;
    v7 = sub_100090D58();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = v8;
      if (v4)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = v10;
      *buf = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setIndicatorsHidden: %{public}@ animated: %@", buf, 0x16u);
    }

    v12 = 0.0;
    if (v4)
    {
      v12 = 0.25;
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100D63044;
    v13[3] = &unk_101661B18;
    v13[4] = self;
    [UIView animateWithDuration:v13 animations:v12];
    [(NavIndicatorsViewController *)self _animateSpeedLimitViewAnimated:v4];
  }
}

- (void)setControlsHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_controlsHidden != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_controlsHidden = a3;
    v7 = sub_100090D58();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = v8;
      if (v4)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = v10;
      *buf = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setControlsHidden: %{public}@ animated: %@", buf, 0x16u);
    }

    if (v5)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }

    v14[1] = 3221225472;
    v13 = 0.25;
    v14[0] = _NSConcreteStackBlock;
    v14[2] = sub_100D63224;
    v14[3] = &unk_101661650;
    if (!v4)
    {
      v13 = 0.0;
    }

    v14[4] = self;
    *&v14[5] = v12;
    [UIView animateWithDuration:v14 animations:v13];
  }
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  if (self->_observingAudioKeys)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = &off_1016ED778;
    v4 = [&off_1016ED778 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(&off_1016ED778);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          v9 = +[NSUserDefaults standardUserDefaults];
          [v9 removeObserver:self forKeyPath:v8];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [&off_1016ED778 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  GEOConfigRemoveBlockListener();
  [(PedestrianARSessionStateManager *)self->_pedestrianARSessionStateManager removeObserver:self];
  v10 = +[TrafficIncidentLayoutManager sharedInstance];
  [v10 removeObserver:self];

  v11.receiver = self;
  v11.super_class = NavIndicatorsViewController;
  [(NavIndicatorsViewController *)&v11 dealloc];
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = NavIndicatorsViewController;
  v4 = a3;
  [(NavIndicatorsViewController *)&v10 traitCollectionDidChange:v4];
  [(NavIndicatorsViewController *)self _updateCompassStyling];
  v5 = [(NavIndicatorsViewController *)self traitCollection];
  v6 = sub_100017FE8(v4, v5);

  if (v6)
  {
    v7 = [(NavIndicatorsViewController *)self traitCollection];
    v8 = [v7 isLuminanceReduced];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100D634E8;
    v9[3] = &unk_101661B18;
    v9[4] = self;
    [UIView _maps_animateForAndromeda:v8 animations:v9];
  }
}

- (void)insertDimmingOverlayForStaleMapEffectWithBlock:(id)a3
{
  v4 = a3;
  [(NavIndicatorsViewController *)self loadViewIfNeeded];
  v5 = [(NavIndicatorsViewController *)self view];
  v6 = v4[2](v4, v5);

  v7 = sub_100090D58();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    speedLimitView = self->_speedLimitView;
    v9 = [(NavSpeedLimitView *)speedLimitView superview];
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = speedLimitView;
    v15 = 1024;
    v16 = v9 != 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Inserting %{public}@ below %{public}@ (hasSuperview: %d)", &v11, 0x1Cu);
  }

  v10 = [(NavIndicatorsViewController *)self view];
  [v10 insertSubview:v6 belowSubview:self->_speedLimitView];
}

- (id)_floatingButtonWithAction:(SEL)a3 axIdentifier:(id)a4 axLabel:(id)a5 image:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = objc_opt_new();
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v14) = 1148846080;
  [v13 setContentCompressionResistancePriority:1 forAxis:v14];
  v15 = [v13 layer];
  [v15 setCornerRadius:30.0];

  [v13 _setTouchInsets:{self->_navIndicatorsTouchInsets.top, self->_navIndicatorsTouchInsets.left, self->_navIndicatorsTouchInsets.bottom, self->_navIndicatorsTouchInsets.right}];
  [v13 setAccessibilityIdentifier:v12];

  [v13 setAccessibilityLabel:v11];
  if (a3)
  {
    [v13 addTarget:self action:a3 forControlEvents:64];
  }

  if (self->_disableGlass)
  {
    v16 = [v13 layer];
    LODWORD(v17) = 1045220557;
    [v16 setShadowOpacity:v17];

    height = CGSizeZero.height;
    v19 = [v13 layer];
    [v19 setShadowOffset:{CGSizeZero.width, height}];

    v20 = [v13 layer];
    [v20 setShadowRadius:1.0];

    v21 = [v13 layer];
    [v21 setShadowPathIsBounds:1];

    v22 = [UIColor colorNamed:@"NavigationMaterialColor"];
    [v13 setBackgroundColor:v22];

    if (_UISolariumEnabled())
    {
      [(NavIndicatorsViewController *)self imageConfiguration];
    }

    else
    {
      [UIImageSymbolConfiguration configurationWithPointSize:30.0];
    }
    v25 = ;
    [v13 setPreferredSymbolConfiguration:v25 forImageInState:0];

    [v13 setImage:v10 forState:0];
  }

  else
  {
    [v13 _maps_applyGlassBackgroundForButton:1 buttonBackgroundType:0];
    [v13 setImage:v10 forState:0];
    v23 = [(NavIndicatorsViewController *)self imageConfiguration];
    [v13 setPreferredSymbolConfiguration:v23 forImageInState:0];

    v24 = +[UIColor labelColor];
    [v13 setTintColor:v24];
  }

  return v13;
}

- (void)_audioControlViewButtonTapped
{
  v2 = [(NavIndicatorsViewController *)self delegate];
  [v2 showVolumeControlView];
}

- (id)audioControlView
{
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    p_audioControlButton = &self->_audioControlButton;
    audioControlButton = self->_audioControlButton;
    if (audioControlButton)
    {
      goto LABEL_7;
    }

    v5 = [_TtC4Maps22NavAudioControlFactory navAudioTypeForGuidanceLevel:[(NavIndicatorsViewController *)self currentVoiceGuidanceLevel]];
    v6 = [(NavIndicatorsViewController *)self imageConfiguration];
    v7 = [_TtC4Maps22NavAudioControlFactory imageForNavAudioType:v5 imageConfiguration:v6];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Audio Control Button [Accessibility]" value:@"localized string not found" table:0];
    v10 = [(NavIndicatorsViewController *)self _floatingButtonWithAction:"_audioControlViewButtonTapped" axIdentifier:@"AudioControlButton" axLabel:v9 image:v7];
    v11 = *p_audioControlButton;
    *p_audioControlButton = v10;

    [*p_audioControlButton setContextMenuInteractionEnabled:1];
    [*p_audioControlButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v12) = 1148846080;
    [*p_audioControlButton setContentCompressionResistancePriority:1 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [*p_audioControlButton setContentHuggingPriority:1 forAxis:v13];
  }

  else
  {
    p_audioControlButton = &self->_audioControl;
    audioControlButton = self->_audioControl;
    if (audioControlButton)
    {
      goto LABEL_7;
    }

    v14 = [[NavAudioControlView alloc] initWithDelegate:self];
    v15 = *p_audioControlButton;
    *p_audioControlButton = v14;

    [*p_audioControlButton setAvailableAudioTypes:&off_1016ED9B8];
    [*p_audioControlButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v16) = 1148846080;
    [*p_audioControlButton setContentCompressionResistancePriority:1 forAxis:v16];
    LODWORD(v17) = 1148846080;
    [*p_audioControlButton setContentHuggingPriority:1 forAxis:v17];
    [*p_audioControlButton _setTouchInsets:{self->_navIndicatorsTouchInsets.top, self->_navIndicatorsTouchInsets.left, self->_navIndicatorsTouchInsets.bottom, self->_navIndicatorsTouchInsets.right}];
  }

  audioControlButton = *p_audioControlButton;
LABEL_7:

  return audioControlButton;
}

- (id)imageConfiguration
{
  imageConfiguration = self->_imageConfiguration;
  if (!imageConfiguration)
  {
    v4 = _UISolariumEnabled();
    v5 = 30.0;
    if (v4)
    {
      v5 = 28.0;
    }

    v6 = [UIFont systemFontOfSize:v5 weight:UIFontWeightRegular];
    v7 = [UIImageSymbolConfiguration configurationWithFont:v6];
    v8 = self->_imageConfiguration;
    self->_imageConfiguration = v7;

    imageConfiguration = self->_imageConfiguration;
    if (self->_disableGlass)
    {
      if (_UISolariumEnabled())
      {
        +[UIColor labelColor];
      }

      else
      {
        +[UIColor systemBlueColor];
      }
      v9 = ;
      v15 = v9;
      v10 = [NSArray arrayWithObjects:&v15 count:1];
      v11 = [UIImageSymbolConfiguration configurationWithPaletteColors:v10];
      v12 = [(UIImageSymbolConfiguration *)imageConfiguration configurationByApplyingConfiguration:v11];
      v13 = self->_imageConfiguration;
      self->_imageConfiguration = v12;

      imageConfiguration = self->_imageConfiguration;
    }
  }

  return imageConfiguration;
}

- (void)viewDidLoad
{
  v98.receiver = self;
  v98.super_class = NavIndicatorsViewController;
  [(NavIndicatorsViewController *)&v98 viewDidLoad];
  v3 = objc_alloc_init(UIStackView);
  stackView = self->_stackView;
  self->_stackView = v3;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAxis:1];
  v5 = _UISolariumEnabled();
  v6 = 16.0;
  if (v5)
  {
    v6 = 10.0;
  }

  [(UIStackView *)self->_stackView setSpacing:v6];
  [(UIStackView *)self->_stackView setAlignment:1];
  [(UIStackView *)self->_stackView setAccessibilityIdentifier:@"NavIndicatorsViewControllerStackView"];
  if (_UISolariumEnabled() && !self->_disableGlass)
  {
    [(UIStackView *)self->_stackView _maps_applyGlassGroup];
  }

  v7 = [(NavIndicatorsViewController *)self view];
  [v7 addSubview:self->_stackView];

  v8 = objc_opt_new();
  speedLimitView = self->_speedLimitView;
  self->_speedLimitView = v8;

  [(NavSpeedLimitView *)self->_speedLimitView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v10) = 1148846080;
  [(NavSpeedLimitView *)self->_speedLimitView setContentCompressionResistancePriority:1 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [(NavSpeedLimitView *)self->_speedLimitView setContentHuggingPriority:1 forAxis:v11];
  v12 = objc_opt_new();
  compassView = self->_compassView;
  self->_compassView = v12;

  [(MKCompassView *)self->_compassView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKCompassView *)self->_compassView setAlpha:0.0];
  [(MKCompassView *)self->_compassView setAccessibilityIdentifier:@"CompassView"];
  v14 = self->_compassView;
  v15 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_pressedCompass"];
  [(MKCompassView *)v14 addGestureRecognizer:v15];

  LODWORD(v16) = 1148846080;
  [(MKCompassView *)self->_compassView setContentCompressionResistancePriority:1 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [(MKCompassView *)self->_compassView setContentHuggingPriority:1 forAxis:v17];
  [(NavIndicatorsViewController *)self _updateCompassStyling];
  v18 = [(NavIndicatorsViewController *)self _floatingButtonWithAction:0 axIdentifier:@"ToggleForceWindshield" axLabel:0 image:0];
  toggleForceWindshield = self->_toggleForceWindshield;
  self->_toggleForceWindshield = v18;

  [(UIStackView *)self->_stackView addArrangedSubview:self->_toggleForceWindshield];
  v20 = +[VKDebugSettings sharedSettingsExt];
  LODWORD(v15) = [v20 shouldForceWindshieldMode];

  if (v15)
  {
    [(NavIndicatorsViewController *)self _configureForUnforceWindshield];
  }

  else
  {
    [(NavIndicatorsViewController *)self _configureForForceWindshield];
  }

  v21 = [(NavIndicatorsViewController *)self _floatingButtonWithAction:0 axIdentifier:@"OverviewButton" axLabel:0 image:0];
  overviewButton = self->_overviewButton;
  self->_overviewButton = v21;

  [(UIStackView *)self->_stackView addArrangedSubview:self->_overviewButton];
  v23 = self->_stackView;
  v24 = [(NavIndicatorsViewController *)self audioControlView];
  [(UIStackView *)v23 addArrangedSubview:v24];

  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:@"Pedestrian AR [Accessibility]" value:@"localized string not found" table:0];
  v27 = [UIImage systemImageNamed:@"arkit"];
  v28 = [(NavIndicatorsViewController *)self _floatingButtonWithAction:"_pressedPedestrianAR" axIdentifier:@"PedestrianARButton" axLabel:v26 image:v27];
  pedestrianARButton = self->_pedestrianARButton;
  self->_pedestrianARButton = v28;

  [(UIStackView *)self->_stackView addArrangedSubview:self->_pedestrianARButton];
  v30 = +[NSBundle mainBundle];
  v31 = [v30 localizedStringForKey:@"Incident reporting [Accessibility]" value:@"localized string not found" table:0];
  v32 = [UIImage systemImageNamed:@"exclamationmark.bubble.fill"];
  v33 = [(NavIndicatorsViewController *)self _floatingButtonWithAction:"_pressedReportingButton" axIdentifier:@"ReportingButton" axLabel:v31 image:v32];
  reportingButton = self->_reportingButton;
  self->_reportingButton = v33;

  [(UIButton *)self->_reportingButton imageEdgeInsets];
  UIEdgeInsetsAdd();
  [(UIButton *)self->_reportingButton setImageEdgeInsets:?];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_reportingButton];
  v35 = +[NSBundle mainBundle];
  v36 = [v35 localizedStringForKey:@"Tap-to-Radar" value:@"localized string not found" table:0];
  v37 = [(NavIndicatorsViewController *)self _floatingButtonWithAction:0 axIdentifier:@"TTRButton" axLabel:v36 image:0];
  ttrButton = self->_ttrButton;
  self->_ttrButton = v37;

  objc_initWeak(&location, self);
  v39 = self->_ttrButton;
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = sub_100D649C0;
  v95[3] = &unk_101661B98;
  objc_copyWeak(&v96, &location);
  [MapsRadarButtonHelper configureWithButton:v39 presentationViewController:self actionHandler:v95];
  v40 = self->_ttrButton;
  v41 = [(NavIndicatorsViewController *)self imageConfiguration];
  [(UIButton *)v40 setPreferredSymbolConfiguration:v41 forImageInState:0];

  [(UIStackView *)self->_stackView addArrangedSubview:self->_ttrButton];
  [(NavIndicatorsViewController *)self _updateButtonsVisibility];
  v92 = [(UIStackView *)self->_stackView topAnchor];
  v93 = [(NavIndicatorsViewController *)self view];
  v91 = [v93 topAnchor];
  v90 = [v92 constraintEqualToAnchor:v91 constant:self->_navIndicatorsPaddingVertical];
  v109[0] = v90;
  v88 = [(UIStackView *)self->_stackView trailingAnchor];
  v89 = [(NavIndicatorsViewController *)self view];
  v87 = [v89 trailingAnchor];
  v86 = [v88 constraintEqualToAnchor:v87 constant:-self->_navIndicatorsPaddingHorizontal];
  v109[1] = v86;
  v85 = [(UIStackView *)self->_stackView bottomAnchor];
  v84 = [(UIButton *)self->_ttrButton bottomAnchor];
  v83 = [v85 constraintEqualToAnchor:v84];
  v109[2] = v83;
  v82 = [(UIButton *)self->_overviewButton widthAnchor];
  v81 = [v82 constraintEqualToConstant:60.0];
  v109[3] = v81;
  v80 = [(UIButton *)self->_overviewButton heightAnchor];
  v79 = [v80 constraintEqualToConstant:60.0];
  v109[4] = v79;
  v78 = [(UIButton *)self->_pedestrianARButton widthAnchor];
  v77 = [v78 constraintEqualToConstant:60.0];
  v109[5] = v77;
  v76 = [(UIButton *)self->_pedestrianARButton heightAnchor];
  v42 = [(UIButton *)self->_pedestrianARButton widthAnchor];
  v43 = [v76 constraintEqualToAnchor:v42];
  v109[6] = v43;
  v44 = [(UIButton *)self->_ttrButton widthAnchor];
  v45 = [v44 constraintEqualToConstant:60.0];
  ttrButtonHeightConstraint = self->_ttrButtonHeightConstraint;
  v109[7] = v45;
  v109[8] = ttrButtonHeightConstraint;
  v47 = [(UIButton *)self->_reportingButton heightAnchor];
  v48 = [v47 constraintEqualToConstant:60.0];
  v109[9] = v48;
  v49 = [(UIButton *)self->_reportingButton widthAnchor];
  v50 = [v49 constraintEqualToConstant:60.0];
  v109[10] = v50;
  v51 = [NSArray arrayWithObjects:v109 count:11];
  v94 = [v51 mutableCopy];

  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    v52 = [(NavIndicatorsViewController *)self audioControlView];
    v53 = [v52 widthAnchor];
    v54 = [v53 constraintEqualToConstant:60.0];
    v108[0] = v54;
    v55 = [(NavIndicatorsViewController *)self audioControlView];
    v56 = [v55 heightAnchor];
    v57 = [(NavIndicatorsViewController *)self audioControlView];
    v58 = [v57 widthAnchor];
    v59 = [v56 constraintEqualToAnchor:v58];
    v108[1] = v59;
    v60 = [NSArray arrayWithObjects:v108 count:2];
    [v94 addObjectsFromArray:v60];
  }

  v61 = +[VKDebugSettings sharedSettingsExt];
  v62 = [v61 enableWindshieldOverrideButton];
  if (!v62)
  {
    goto LABEL_14;
  }

  v63 = sub_10078A958();

  if (v63)
  {
    v61 = [(UIButton *)self->_toggleForceWindshield widthAnchor];
    v64 = [v61 constraintEqualToConstant:60.0];
    v107[0] = v64;
    v65 = [(UIButton *)self->_toggleForceWindshield heightAnchor];
    v66 = [v65 constraintEqualToConstant:60.0];
    v107[1] = v66;
    v67 = [NSArray arrayWithObjects:v107 count:2];
    [v94 addObjectsFromArray:v67];

LABEL_14:
    v68 = v62 ^ 1;
    goto LABEL_16;
  }

  v68 = 1;
LABEL_16:
  [(UIButton *)self->_toggleForceWindshield setHidden:v68];
  [NSLayoutConstraint activateConstraints:v94];
  [(NavIndicatorsViewController *)self _updateContent];
  v69 = +[MNNavigationService sharedService];
  v70 = [v69 route];

  if (!v70)
  {
    v73 = sub_10006D178();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v100 = "[NavIndicatorsViewController viewDidLoad]";
      v101 = 2080;
      v102 = "NavIndicatorsViewController.m";
      v103 = 1024;
      v104 = 297;
      v105 = 2080;
      v106 = "route != nil";
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v74 = sub_10006D178();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v75 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v100 = v75;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v71 = [(NavIndicatorsViewController *)self audioPreferences];
  -[NavIndicatorsViewController setCurrentVoiceGuidanceLevel:](self, "setCurrentVoiceGuidanceLevel:", [v71 guidanceLevelForTransportType:{objc_msgSend(v70, "transportType")}]);

  [(NavIndicatorsViewController *)self setRoute:v70];
  v72 = &_dispatch_main_q;
  _GEOConfigAddDelegateListenerForKey();

  _GEOConfigAddDelegateListenerForKey();
  objc_destroyWeak(&v96);
  objc_destroyWeak(&location);
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(NavIndicatorsViewController *)self setView:v3];
}

- (NavIndicatorsViewController)initWithDelegate:(id)a3 pedestrianARSessionStateManager:(id)a4
{
  v6 = a3;
  v26 = a4;
  v33.receiver = self;
  v33.super_class = NavIndicatorsViewController;
  v7 = [(NavIndicatorsViewController *)&v33 initWithNibName:0 bundle:0];
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(NavIndicatorsViewController *)v7 setAccessibilityIdentifier:v9];

    objc_storeWeak(&v7->_delegate, v6);
    v10 = +[MNNavigationService sharedService];
    [v10 registerObserver:v7];

    objc_storeStrong(&v7->_pedestrianARSessionStateManager, a4);
    [(PedestrianARSessionStateManager *)v7->_pedestrianARSessionStateManager addObserver:v7];
    v7->_observingAudioKeys = 1;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [&off_1016ED778 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(&off_1016ED778);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = +[NSUserDefaults standardUserDefaults];
          [v15 addObserver:v7 forKeyPath:v14 options:0 context:&off_101652C18];
        }

        v11 = [&off_1016ED778 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }

    v7->_observingIncidentsReportKey = 1;
    objc_initWeak(&location, v7);
    v16 = &_dispatch_main_q;
    objc_copyWeak(&v27, &location);
    v17 = _GEOConfigAddBlockListenerForKey();
    geoConfigIncidentReportingListener = v7->_geoConfigIncidentReportingListener;
    v7->_geoConfigIncidentReportingListener = v17;

    v19 = +[TrafficIncidentLayoutManager sharedInstance];
    [v19 addObserver:v7];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v7 selector:"_radarAuthorizationChanged" name:@"TapToRadarAuthorizationChangedNotification" object:0];

    v21 = _UISolariumEnabled();
    v22 = 16.0;
    if (v21)
    {
      v22 = 10.0;
    }

    v7->_navIndicatorsPaddingVertical = v22;
    v7->_navIndicatorsPaddingHorizontal = 16.0;
    v23 = _UISolariumEnabled();
    v24 = -8.0;
    if (v23)
    {
      v24 = -5.0;
    }

    v7->_navIndicatorsTouchInsets.top = v24;
    v7->_navIndicatorsTouchInsets.left = -16.0;
    v7->_navIndicatorsTouchInsets.bottom = v24;
    v7->_navIndicatorsTouchInsets.right = -16.0;
    v7->_disableGlass = GEOConfigGetBOOL();
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v7;
}

@end