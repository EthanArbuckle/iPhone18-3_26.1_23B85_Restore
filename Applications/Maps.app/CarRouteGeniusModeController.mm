@interface CarRouteGeniusModeController
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration;
- (BOOL)_needsCardUpdateForTransitionFromState:(int64_t)a3 toState:(int64_t)a4;
- (BOOL)_zoomButtonPressed;
- (CarRouteGeniusModeController)initWithSuggestion:(id)a3;
- (id)_detailCardTitle;
- (id)_guidanceETAFromEntry:(id)a3;
- (id)carFocusOrderSequences;
- (id)desiredCards;
- (id)mapView;
- (id)preferredCarFocusEnvironments;
- (id)suggestionCardView;
- (id)suggestionImageFetchIdentifier;
- (id)trackingController;
- (void)_buildFocusGuidesIfNeeded;
- (void)_dismissDetailCard;
- (void)_mapViewGestured;
- (void)_presentRoutePlanningForCurrentSuggestion;
- (void)_startNavigation;
- (void)_startNavigationIfNeededOrFail;
- (void)_suggestionsCardTapped;
- (void)_tearDownFocusGuides;
- (void)_updateCurrentSuggestionImage;
- (void)_updateFocusGuides;
- (void)_updateForCurrentRoute;
- (void)_updateHardwareBackButtonBehavior;
- (void)_updateTraffic;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)carCardViewCloseButtonTapped:(id)a3;
- (void)chromeDidEndConfiguringCards:(id)a3;
- (void)chromeDidStartConfiguringCards:(id)a3;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)detailCardDidAccept:(id)a3 navigationType:(unint64_t)a4;
- (void)detailCardDidHandOff:(id)a3;
- (void)didUpdateRouteGenius:(id)a3;
- (void)frameRouteAnimated:(BOOL)a3;
- (void)handleHardwareBackButtonPressed;
- (void)hideAutohidingContentWithAnimation:(id)a3;
- (void)incidentsReportingEnablementDidUpdate;
- (void)recenterCameraOnRouteAnimated:(BOOL)a3;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)setCurrentSuggestion:(id)a3;
- (void)setCurrentSuggestionImage:(id)a3;
- (void)setShouldRecenterOnRoute:(BOOL)a3;
- (void)setState:(int64_t)a3;
- (void)showAutohidingContentWithAnimation:(id)a3;
- (void)trackingController:(id)a3 changedToForcedTrackingMode:(int64_t)a4;
@end

@implementation CarRouteGeniusModeController

- (void)didUpdateRouteGenius:(id)a3
{
  v4 = a3;
  v5 = [(CarRouteGeniusModeController *)self _guidanceETAFromEntry:v4];
  v6 = [(CarRouteGeniusModeController *)self suggestionsCard];
  v7 = [v6 currentETA];
  if (v7)
  {
    v8 = v7;
    v9 = [(CarRouteGeniusModeController *)self suggestionsCard];
    v10 = [v9 currentETA];
    v11 = [v10 isVisuallyDistinctFromGuidanceETA:v5];

    if (!v11)
    {
      v12 = sub_100F86B2C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "didUpdateRouteGenius: Will not update the UI because there is no visual update available", buf, 2u);
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v17.receiver = self;
  v17.super_class = CarRouteGeniusModeController;
  [(CarBasicRouteGeniusModeController *)&v17 didUpdateRouteGenius:v4];
  v13 = [(CarRouteGeniusModeController *)self suggestionsCard];
  [v13 setCurrentSuggestion:v4];

  v14 = sub_100F86B2C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 134349570;
    v19 = self;
    v20 = 2112;
    v21 = v4;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] didUpdateRouteGenius: %@\nETA:%@", buf, 0x20u);
  }

  v15 = [(CarRouteGeniusModeController *)self suggestionsCard];
  [v15 setCurrentETA:v5];

  v16 = [(CarRouteGeniusModeController *)self detailCard];
  [v16 setCurrentETA:v5];

  [(CarRouteGeniusModeController *)self _updateCurrentSuggestionImage];
  [(CarRouteGeniusModeController *)self _updateForCurrentRoute];
  [(CarRouteGeniusModeController *)self _startNavigationIfNeededOrFail];
LABEL_10:
}

- (void)detailCardDidHandOff:(id)a3
{
  v4 = a3;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "RouteGenius: detailCardDidHandOff", buf, 2u);
  }

  v6 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  v7 = [v6 entry];
  v8 = [v7 geoMapItem];

  objc_initWeak(buf, self);
  v9 = +[MapsExternalDevice sharedInstance];
  v10 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100F86D7C;
  v13[3] = &unk_10165F3F0;
  objc_copyWeak(&v16, buf);
  v11 = v8;
  v14 = v11;
  v12 = v4;
  v15 = v12;
  [v9 presentConfirmationAlertFrom:v10 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)detailCardDidAccept:(id)a3 navigationType:(unint64_t)a4
{
  v6 = sub_100F86B2C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v18 = 134349312;
    v19 = self;
    v20 = 2048;
    v21 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] detailCardDidAccept, navigationType: %ld", &v18, 0x16u);
  }

  if ([(CarBasicRouteGeniusModeController *)self navigationAidedDrivingEnabled])
  {
    v7 = sub_100F86B2C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v18 = 134349056;
      v19 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}p] We should only expect Dismiss or Handoff when NAD is enabled", &v18, 0xCu);
    }

    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      v19 = "[CarRouteGeniusModeController detailCardDidAccept:navigationType:]";
      v20 = 2080;
      v21 = "CarRouteGeniusModeController.m";
      v22 = 1024;
      v23 = 804;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v18, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v10 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    v11 = [v10 entry];
    v12 = [v11 type];

    if (v12 == 10)
    {
      v13 = sub_100F86B2C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v18 = 134349056;
        v19 = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}p] Route genius no longer supports low fuel suggestions", &v18, 0xCu);
      }

      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315650;
        v19 = "[CarRouteGeniusModeController detailCardDidAccept:navigationType:]";
        v20 = 2080;
        v21 = "CarRouteGeniusModeController.m";
        v22 = 1024;
        v23 = 809;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v18, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v9 = sub_10006D178();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
LABEL_18:
          v15 = +[NSThread callStackSymbols];
          v18 = 138412290;
          v19 = v15;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
        }

LABEL_19:
      }
    }

    else
    {
      [(CarRouteGeniusModeController *)self setNavigationType:a4];
      [(CarRouteGeniusModeController *)self setState:4];
      v16 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
      v17 = [v16 route];

      if (v17)
      {
        [(CarRouteGeniusModeController *)self _startNavigationIfNeededOrFail];
      }
    }
  }
}

- (id)_guidanceETAFromEntry:(id)a3
{
  v5 = a3;
  v6 = [v5 route];
  v7 = [GuidanceETA alloc];
  [v5 etaInSeconds];
  v9 = v8;

  [v6 distance];
  v11 = v10;
  v12 = [v6 isEVRoute];
  if (v12)
  {
    v3 = [v6 lastEVStep];
    v4 = [v3 evInfo];
    v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 remainingBatteryPercentage]);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 destination];
  v15 = [v14 timezone];
  v16 = -[GuidanceETA initWithRemainingTime:remainingDistance:arrivalBatteryCharge:destinationTimeZone:transportType:](v7, "initWithRemainingTime:remainingDistance:arrivalBatteryCharge:destinationTimeZone:transportType:", v13, v15, [v6 transportType], v9, v11);

  if (v12)
  {
  }

  return v16;
}

- (void)_startNavigationIfNeededOrFail
{
  if ([(CarBasicRouteGeniusModeController *)self state]>= 4)
  {
    v3 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    v6 = [v3 route];

    v4 = v6;
    if (v6)
    {
      v5 = [v6 isNavigable];
      v4 = v6;
      if (v5)
      {
        [(CarRouteGeniusModeController *)self _startNavigation];
        v4 = v6;
      }
    }
  }
}

- (void)setShouldRecenterOnRoute:(BOOL)a3
{
  if (self->_shouldRecenterOnRoute != a3)
  {
    v3 = a3;
    self->_shouldRecenterOnRoute = a3;
    v5 = [(CarBasicRouteGeniusModeController *)self wantsNavigationDisplay];
    v6 = sub_100F86B2C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (v3)
      {
        v7 = @"YES";
      }

      v8 = v7;
      v16 = 134349314;
      v17 = self;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] shouldRecenterOnRoute set: %@", &v16, 0x16u);
    }

    v9 = ((v5 | v3) & 1) == 0 && +[CarChromeViewController allowOneHandedZooming];
    v10 = [(CarRouteGeniusModeController *)self mapView];
    v11 = [v10 _oneHandedZoomGestureRecognizer];
    [v11 setEnabled:v9];

    if ((v5 & 1) == 0)
    {
      if (!self->_shouldRecenterOnRoute)
      {
        goto LABEL_14;
      }

      v12 = [(CarRouteGeniusModeController *)self carChromeViewController];
      v13 = [v12 routeGeniusAnnotationsManager];
      v14 = [v13 destination];

      if (v14)
      {
        [(CarRouteGeniusModeController *)self frameRouteAnimated:1];
        return;
      }

      if (!self->_shouldRecenterOnRoute)
      {
LABEL_14:
        v15 = [(CarBasicRouteGeniusModeController *)self routeGeniusMapSettings];
        [v15 applyToMapViewAnimated:1 duration:0 completion:0.0];
      }
    }
  }
}

- (void)setCurrentSuggestionImage:(id)a3
{
  v5 = a3;
  if (self->_currentSuggestionImage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_currentSuggestionImage, a3);
    v6 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
    [v6 setNeedsUpdateComponent:@"cards" animated:1];

    v5 = v7;
  }
}

- (id)suggestionImageFetchIdentifier
{
  v2 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  v3 = [v2 entry];
  v4 = [v3 uniqueIdentifier];
  v5 = [v4 copy];

  return v5;
}

- (void)_updateCurrentSuggestionImage
{
  v3 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  v4 = [v3 entry];
  v5 = [v4 shortDescription];

  v6 = [(CarRouteGeniusModeController *)self suggestionImageFetchIdentifier];
  if ([(NSString *)self->_suggestionImageIdentifier isEqualToString:v6])
  {
    v7 = sub_100F86B2C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349570;
      v17 = self;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] _updateCurrentSuggestionImage: Will not update the image because the image with identifier %@ is already updated. Entity Description: %@", buf, 0x20u);
    }
  }

  else
  {
    objc_storeStrong(&self->_suggestionImageIdentifier, v6);
    v8 = sub_100F86B2C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349570;
      v17 = self;
      v18 = 2114;
      v19 = v6;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] _updateCurrentSuggestionImage started fetching (%{public}@) image for suggestion: %@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    v9 = +[MapsUIImageCache sharedCarCache];
    v10 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    v11 = [v10 entry];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100F87CCC;
    v12[3] = &unk_10165F370;
    objc_copyWeak(&v15, buf);
    v13 = v6;
    v14 = v5;
    [v9 getImageForSuggestion:v11 completion:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

- (void)setCurrentSuggestion:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CarRouteGeniusModeController;
  [(CarBasicRouteGeniusModeController *)&v11 setCurrentSuggestion:v4];
  if (v4)
  {
    [(CarRouteGeniusModeController *)self _updateCurrentSuggestionImage];
    v5 = [(CarRouteGeniusModeController *)self suggestionsCard];
    [v5 setCurrentSuggestion:v4];

    v6 = [(CarRouteGeniusModeController *)self detailCard];
    [v6 setCurrentSuggestion:v4];

    v7 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    v8 = [(CarRouteGeniusModeController *)self _guidanceETAFromEntry:v7];

    v9 = [(CarRouteGeniusModeController *)self suggestionsCard];
    [v9 setCurrentETA:v8];

    v10 = [(CarRouteGeniusModeController *)self detailCard];
    [v10 setCurrentETA:v8];
  }
}

- (void)_mapViewGestured
{
  v3 = sub_100F86B2C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] _mapViewGestured", &v5, 0xCu);
  }

  v4 = [(CarRouteGeniusModeController *)self trackingController];
  [v4 setForcedTrackingMode:0];
}

- (void)incidentsReportingEnablementDidUpdate
{
  v3 = [(CarRouteGeniusModeController *)self carChromeViewController];
  [v3 reloadAccessoriesForContext:self animated:0];
}

- (void)recenterCameraOnRouteAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CarRouteGeniusModeController *)self shouldRecenterOnRoute])
  {
    v5.receiver = self;
    v5.super_class = CarRouteGeniusModeController;
    [(CarBasicRouteGeniusModeController *)&v5 recenterCameraOnRouteAnimated:v3];
  }
}

- (void)frameRouteAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CarRouteGeniusModeController *)self shouldRecenterOnRoute])
  {
    v5.receiver = self;
    v5.super_class = CarRouteGeniusModeController;
    [(CarBasicRouteGeniusModeController *)&v5 frameRouteAnimated:v3];
  }
}

- (void)trackingController:(id)a3 changedToForcedTrackingMode:(int64_t)a4
{
  v6 = sub_100F86B2C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 134349312;
    v8 = self;
    v9 = 2048;
    v10 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] _trackingController:changedToForcedTrackingMode %ld", &v7, 0x16u);
  }

  [(CarRouteGeniusModeController *)self setShouldRecenterOnRoute:a4 == 1];
}

- (void)carCardViewCloseButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [v4 content];
  v6 = [(CarRouteGeniusModeController *)self suggestionsCard];

  if (v5 == v6)
  {
    v14 = sub_100F86B2C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = 134349056;
      v19 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] Tapped close button accessory on suggestion card. The mode will be popped.", &v18, 0xCu);
    }

    v15 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
    [v15 captureUserAction:6082];

    [(CarRouteGeniusModeController *)self setState:3];
    v16 = +[CarDisplayController sharedInstance];
    v17 = [v16 platformController];
    [v17 clearIfCurrentSessionIsKindOfClass:objc_opt_class()];

    v12 = +[CarDisplayController sharedInstance];
    v13 = [v12 routeGeniusManager];
    [(CarRouteGeniusModeController *)v13 deactivateForAllChromes];
    goto LABEL_13;
  }

  v7 = [v4 content];
  v8 = [(CarRouteGeniusModeController *)self detailCard];

  v9 = sub_100F86B2C();
  v10 = v9;
  if (v7 == v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v18 = 134349056;
      v19 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Tapped close button accessory on detail card. Will dismiss detail card and present suggestion card.", &v18, 0xCu);
    }

    [(CarRouteGeniusModeController *)self _dismissDetailCard];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = 134349056;
      v19 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}p] Tapped close button accessory on a card that is not tracked.", &v18, 0xCu);
    }

    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      v19 = "[CarRouteGeniusModeController carCardViewCloseButtonTapped:]";
      v20 = 2080;
      v21 = "CarRouteGeniusModeController.m";
      v22 = 1024;
      v23 = 635;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v18, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_14:

        goto LABEL_18;
      }

      v13 = +[NSThread callStackSymbols];
      v18 = 138412290;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
LABEL_13:

      goto LABEL_14;
    }
  }

LABEL_18:
}

- (void)handleHardwareBackButtonPressed
{
  v3 = [(CarBasicRouteGeniusModeController *)self state];
  if ((v3 - 2) < 3)
  {
LABEL_4:
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "[CarRouteGeniusModeController handleHardwareBackButtonPressed]";
      v14 = 2080;
      v15 = "CarRouteGeniusModeController.m";
      v16 = 1024;
      v17 = 608;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v12, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[NSThread callStackSymbols];
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
      }
    }

    v7 = sub_100F86B2C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(CarBasicRouteGeniusModeController *)self state];
      if (v8 > 4)
      {
        v9 = @"Unknown";
      }

      else
      {
        v9 = off_101655810[v8];
      }

      v11 = v9;
      v12 = 134349314;
      v13 = self;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}p] RouteGenius mode was asked to handle HW back button press, but the HW back button behavior for state %@ shouldn't be .Custom.", &v12, 0x16u);
    }

    return;
  }

  if (v3 != 1)
  {
    if (v3)
    {
      return;
    }

    goto LABEL_4;
  }

  v10 = sub_100F86B2C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 134349056;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] hw back button pressed -> dismissing detail card", &v12, 0xCu);
  }

  [(CarRouteGeniusModeController *)self _dismissDetailCard];
}

- (BOOL)_zoomButtonPressed
{
  if ([(CarBasicRouteGeniusModeController *)self wantsNavigationDisplay]|| ![(CarRouteGeniusModeController *)self shouldRecenterOnRoute])
  {
    return 0;
  }

  [(CarRouteGeniusModeController *)self setShouldRecenterOnRoute:0];
  v3 = [(CarRouteGeniusModeController *)self zoomedSettings];
  v4 = 1;
  [v3 applyToMapViewAnimated:1 duration:0 completion:-1.0];

  return v4;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration
{
  v4 = [(CarRouteGeniusModeController *)self carChromeViewController];
  v5 = [v4 navigationDisplay];
  v6 = [v5 isCameraPanning];

  v7 = +[TrafficIncidentLayoutManager sharedInstance];
  LODWORD(v5) = [v7 isIncidentReportingEnabled];

  v9 = 3;
  if (!v5)
  {
    v9 = 0;
  }

  if (v6)
  {
    v9 = 6;
  }

  retstr->var0 = 1;
  retstr->var1 = v9;
  retstr->var2 = 5;
  return result;
}

- (void)_updateFocusGuides
{
  if ([(CarBasicRouteGeniusModeController *)self state])
  {

    [(CarRouteGeniusModeController *)self _tearDownFocusGuides];
  }

  else
  {
    [(CarRouteGeniusModeController *)self _buildFocusGuidesIfNeeded];
    if ([(CarBasicRouteGeniusModeController *)self state])
    {
      isSuggestionCardFocused = 0;
    }

    else
    {
      isSuggestionCardFocused = self->_isSuggestionCardFocused;
    }

    closeButtonRedirectingFocusGuides = self->_closeButtonRedirectingFocusGuides;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100F88990;
    v5[3] = &unk_10165F348;
    v6 = isSuggestionCardFocused;
    [(NSArray *)closeButtonRedirectingFocusGuides enumerateObjectsUsingBlock:v5];
  }
}

- (void)_tearDownFocusGuides
{
  [(NSArray *)self->_closeButtonRedirectingFocusGuides enumerateObjectsUsingBlock:&stru_10165F328];
  closeButtonRedirectingFocusGuides = self->_closeButtonRedirectingFocusGuides;
  self->_closeButtonRedirectingFocusGuides = 0;
}

- (void)_buildFocusGuidesIfNeeded
{
  if (!self->_closeButtonRedirectingFocusGuides)
  {
    v3 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
    v4 = [v3 view];

    v5 = [(CarRouteGeniusModeController *)self suggestionsCard];
    v6 = [v5 view];

    v7 = [(CarRouteGeniusModeController *)self suggestionCardView];
    v8 = [v7 accessoryContainerView];

    if (v8)
    {
      if (v4 && ([v6 isDescendantOfView:v4] & 1) != 0)
      {
        v9 = +[UIApplication sharedApplication];
        v10 = [v9 userInterfaceLayoutDirection];

        v23 = v8;
        v11 = [NSArray arrayWithObjects:&v23 count:1];
        v12 = [v4 _mapsCar_insertFocusGuideWithOriginView:v8 toDestinationFocusEnvironments:v11 forDirection:1];
        v24[0] = v12;
        v22 = v8;
        v13 = [NSArray arrayWithObjects:&v22 count:1];
        if (v10 == 1)
        {
          v14 = 4;
        }

        else
        {
          v14 = 8;
        }

        v15 = [v4 _mapsCar_insertFocusGuideWithOriginView:v6 toDestinationFocusEnvironments:v13 forDirection:v14];
        v24[1] = v15;
        v16 = [NSArray arrayWithObjects:v24 count:2];
        closeButtonRedirectingFocusGuides = self->_closeButtonRedirectingFocusGuides;
        self->_closeButtonRedirectingFocusGuides = v16;

        v18 = sub_100F86B2C();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          goto LABEL_16;
        }

        *buf = 134349056;
        v26 = self;
        v19 = "[%{public}p] _buildFocusGuidesIfNeeded, successfully built focus guides";
        v20 = v18;
        v21 = OS_LOG_TYPE_INFO;
        goto LABEL_15;
      }

      v18 = sub_100F86B2C();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v26 = self;
        v19 = "[%{public}p] _buildFocusGuidesIfNeeded, failed to build focus guides because the originView isn't a descendant of the hostview.";
LABEL_14:
        v20 = v18;
        v21 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v20, v21, v19, buf, 0xCu);
      }
    }

    else
    {
      v18 = sub_100F86B2C();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v26 = self;
        v19 = "[%{public}p] _buildFocusGuidesIfNeeded, failed to build focus guides, because destination view was nil";
        goto LABEL_14;
      }
    }

LABEL_16:
  }
}

- (id)carFocusOrderSequences
{
  v3 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  v4 = [v3 itemRepresentingStatusBanner];
  v13[0] = v4;
  v5 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  v6 = [v5 itemRepresentingOverlays];
  v13[1] = v6;
  v7 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  v8 = [v7 itemRepresentingMapControls];
  v13[2] = v8;
  v9 = [NSArray arrayWithObjects:v13 count:3];
  v10 = [CarFocusOrderSequence sequenceWithItems:v9 options:5];
  v14 = v10;
  v11 = [NSArray arrayWithObjects:&v14 count:1];

  return v11;
}

- (id)preferredCarFocusEnvironments
{
  v2 = [CarFocusOrderEnvironment environmentWithRepresentativeItemType:1];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)suggestionCardView
{
  v2 = [(CarRouteGeniusModeController *)self suggestionsCard];
  v3 = [v2 view];
  v4 = [v3 superview];

  if (v4)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v5 = [v4 superview];

      v4 = v5;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v4 = v4;
  }

LABEL_6:

  return v4;
}

- (id)_detailCardTitle
{
  v3 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  v4 = [v3 entry];

  if ([v4 type] == 5 || objc_msgSend(v4, "type") == 11)
  {
    v5 = [v4 geoMapItem];
    v6 = [v5 name];
  }

  else
  {
    v6 = 0;
  }

  if (!-[GEOComposedRoute isEVRoute](self->_currentlyDisplayedRoute, "isEVRoute") || [v4 type] != 11)
  {
    v7 = [v4 title];

    v6 = v7;
  }

  if ([v6 length])
  {
    v8 = v6;
  }

  else
  {
    v9 = +[NSBundle mainBundle];
    v8 = [v9 localizedStringForKey:@"CarPlay_RouteGenius_Destination" value:@"localized string not found" table:0];
  }

  return v8;
}

- (void)_dismissDetailCard
{
  if ([(CarBasicRouteGeniusModeController *)self state]== 1)
  {

    [(CarRouteGeniusModeController *)self setState:0];
  }

  else
  {
    v3 = sub_100F86B2C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 134349056;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%{public}p] Tried to dismiss detail card, but was not in .Expanded state.", &v7, 0xCu);
    }

    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "[CarRouteGeniusModeController _dismissDetailCard]";
      v9 = 2080;
      v10 = "CarRouteGeniusModeController.m";
      v11 = 1024;
      v12 = 454;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v7, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[NSThread callStackSymbols];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
      }
    }
  }
}

- (void)_presentRoutePlanningForCurrentSuggestion
{
  v3 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  v4 = [v3 entry];

  v5 = sub_100F86B2C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134349314;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] _presentRoutePlanningForCurrentSuggestion: %@", &v7, 0x16u);
  }

  if (v4)
  {
    v6 = +[CarChromeModeCoordinator sharedInstance];
    [v6 displayRoutePlanningForDestination:v4];
  }
}

- (void)_suggestionsCardTapped
{
  if ([(CarBasicRouteGeniusModeController *)self state])
  {
    v3 = sub_100F86B2C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v15 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%{public}p] Card was tapped, but state was not CarRouteGeniusStatePending.", buf, 0xCu);
    }

    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v15 = "[CarRouteGeniusModeController _suggestionsCardTapped]";
      v16 = 2080;
      v17 = "CarRouteGeniusModeController.m";
      v18 = 1024;
      v19 = 421;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    v8 = [v7 route];
    v9 = [v8 legs];
    v10 = [v9 count];

    if (v10 < 2)
    {
      [(CarRouteGeniusModeController *)self setState:1];
    }

    else
    {
      [(CarRouteGeniusModeController *)self _presentRoutePlanningForCurrentSuggestion];
    }

    v11 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    v13 = [v11 route];

    if (v13 && [v13 isFamiliarRoute] && MapsFeature_IsEnabled_LocationIntelligenceMaps())
    {
      v12 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
      [v12 captureUserAction:501 onTarget:146 eventValue:0];
    }
  }
}

- (void)chromeDidEndConfiguringCards:(id)a3
{
  [(CarRouteGeniusModeController *)self _buildFocusGuidesIfNeeded];
  v4 = [(CarBasicRouteGeniusModeController *)self state];
  if (v4 <= 4 && ((1 << v4) & 0x16) != 0)
  {
    v5 = [(CarRouteGeniusModeController *)self detailCard];
    [v5 setHasCardFinishedTransitioning:1];
  }
}

- (void)chromeDidStartConfiguringCards:(id)a3
{
  v4 = [(CarBasicRouteGeniusModeController *)self state];
  if (v4 <= 4 && ((1 << v4) & 0x16) != 0)
  {
    v5 = [(CarRouteGeniusModeController *)self detailCard];
    [v5 setHasCardFinishedTransitioning:0];
  }
}

- (void)configureCard:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 isEqualToString:@"primary"])
  {
    goto LABEL_63;
  }

  v8 = [(CarBasicRouteGeniusModeController *)self state];
  if (v8 <= 2)
  {
    if ((v8 - 1) >= 2)
    {
      if (!v8)
      {
        v9 = [(CarRouteGeniusModeController *)self currentSuggestionImage];
        [v6 setAccessoryImage:v9];

        v10 = [(CarRouteGeniusModeController *)self suggestionsCard];
        [v6 setContent:v10];

        v11 = objc_alloc_init(CarCardLayout);
        [(CarCardLayout *)v11 setEdgePosition:0];
        [(CarCardLayout *)v11 setCornerPosition:1];
        [(CarCardLayout *)v11 setPrimaryAxis:1];
        [(CarCardLayout *)v11 setPinnedEdges:0];
        [(CarCardLayout *)v11 setPrimaryAxisFillMode:0];
        LODWORD(v12) = 1.0;
        [(CarCardLayout *)v11 setPrimaryAxisFillModePriority:v12];
        [(CarCardLayout *)v11 setSecondaryAxisFillMode:2];
        LODWORD(v13) = 1148846080;
        [(CarCardLayout *)v11 setSecondaryAxisFillModePriority:v13];
        [(CarCardLayout *)v11 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
        [(CarCardLayout *)v11 setFlipForRightHandDrive:1];
        v14 = v11;
        v15 = [(CarCardLayout *)v14 primaryAxis];
        v16 = [(CarCardLayout *)v14 cornerPosition];
        if (v15 == 1)
        {
          if (v16 == 4 || [(CarCardLayout *)v14 cornerPosition]== 1 || [(CarCardLayout *)v14 edgePosition]== 2)
          {
            v17 = 8;
          }

          else
          {
            v17 = 0;
          }

          if ([(CarCardLayout *)v14 cornerPosition]== 8 || [(CarCardLayout *)v14 cornerPosition]== 2 || [(CarCardLayout *)v14 edgePosition]== 8)
          {
            v17 |= 2uLL;
          }

          if ([(CarCardLayout *)v14 edgePosition]== 1)
          {
            v17 |= 4uLL;
          }

          v18 = v17 | ([(CarCardLayout *)v14 edgePosition]== 4);
        }

        else
        {
          v18 = v16 == 4 || [(CarCardLayout *)v14 cornerPosition]== 8 || [(CarCardLayout *)v14 edgePosition]== 4;
          if ([(CarCardLayout *)v14 cornerPosition]== 1 || [(CarCardLayout *)v14 cornerPosition]== 2 || [(CarCardLayout *)v14 edgePosition]== 1)
          {
            v18 |= 4uLL;
          }

          if ([(CarCardLayout *)v14 edgePosition]== 2)
          {
            v18 |= 8uLL;
          }

          if ([(CarCardLayout *)v14 edgePosition]== 8)
          {
            v18 |= 2uLL;
          }
        }

        [(CarCardLayout *)v14 setEdgesAffectingMapInsets:v18];
        [(CarCardLayout *)v14 setHorizontallyCenterMapInsets:0];
        [v6 setLayout:v14];

        [v6 setAccessoryType:2];
        objc_initWeak(location, self);
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100F89E18;
        v33[3] = &unk_10165F2E8;
        objc_copyWeak(&v34, location);
        [v6 setSelectionHandler:v33];
        objc_destroyWeak(&v34);
        objc_destroyWeak(location);
      }

      goto LABEL_63;
    }

    goto LABEL_19;
  }

  if (v8 != 3)
  {
    if (v8 != 4)
    {
      goto LABEL_63;
    }

LABEL_19:
    v19 = [(CarRouteGeniusModeController *)self _detailCardTitle];
    [v6 setTitle:v19];

    v20 = [(CarRouteGeniusModeController *)self detailCard];
    [v6 setContent:v20];

    v21 = objc_alloc_init(CarCardLayout);
    [(CarCardLayout *)v21 setEdgePosition:0];
    [(CarCardLayout *)v21 setCornerPosition:1];
    [(CarCardLayout *)v21 setPrimaryAxis:1];
    [(CarCardLayout *)v21 setPinnedEdges:0];
    [(CarCardLayout *)v21 setPrimaryAxisFillMode:0];
    LODWORD(v22) = 1.0;
    [(CarCardLayout *)v21 setPrimaryAxisFillModePriority:v22];
    [(CarCardLayout *)v21 setSecondaryAxisFillMode:2];
    LODWORD(v23) = 1148846080;
    [(CarCardLayout *)v21 setSecondaryAxisFillModePriority:v23];
    [(CarCardLayout *)v21 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
    [(CarCardLayout *)v21 setFlipForRightHandDrive:1];
    v24 = v21;
    v25 = [(CarCardLayout *)v24 primaryAxis];
    v26 = [(CarCardLayout *)v24 cornerPosition];
    if (v25 == 1)
    {
      if (v26 == 4 || [(CarCardLayout *)v24 cornerPosition]== 1 || [(CarCardLayout *)v24 edgePosition]== 2)
      {
        v27 = 8;
      }

      else
      {
        v27 = 0;
      }

      if ([(CarCardLayout *)v24 cornerPosition]== 8 || [(CarCardLayout *)v24 cornerPosition]== 2 || [(CarCardLayout *)v24 edgePosition]== 8)
      {
        v27 |= 2uLL;
      }

      if ([(CarCardLayout *)v24 edgePosition]== 1)
      {
        v27 |= 4uLL;
      }

      v28 = v27 | ([(CarCardLayout *)v24 edgePosition]== 4);
    }

    else
    {
      v28 = v26 == 4 || [(CarCardLayout *)v24 cornerPosition]== 8 || [(CarCardLayout *)v24 edgePosition]== 4;
      if ([(CarCardLayout *)v24 cornerPosition]== 1 || [(CarCardLayout *)v24 cornerPosition]== 2 || [(CarCardLayout *)v24 edgePosition]== 1)
      {
        v28 |= 4uLL;
      }

      if ([(CarCardLayout *)v24 edgePosition]== 2)
      {
        v28 |= 8uLL;
      }

      if ([(CarCardLayout *)v24 edgePosition]== 8)
      {
        v28 |= 2uLL;
      }
    }

    [(CarCardLayout *)v24 setEdgesAffectingMapInsets:v28];
    [(CarCardLayout *)v24 setHorizontallyCenterMapInsets:0];
    [v6 setLayout:v24];

    [v6 setAccessoryType:1];
    [v6 setSelectionHandler:0];
    goto LABEL_63;
  }

  v29 = sub_100F86B2C();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = [(CarBasicRouteGeniusModeController *)self state];
    if (v30 > 4)
    {
      v31 = @"Unknown";
    }

    else
    {
      v31 = off_101655810[v30];
    }

    v32 = v31;
    *location = 134349314;
    *&location[4] = self;
    v36 = 2112;
    v37 = v32;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%{public}p] Tried to configure primary card, but was in %@ state.", location, 0x16u);
  }

LABEL_63:
}

- (id)desiredCards
{
  v2 = [(CarBasicRouteGeniusModeController *)self state];
  if (v2 > 4 || v2 == 3)
  {
    v4 = &__NSArray0__struct;
  }

  else
  {
    v6 = @"primary";
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  return v4;
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v10.receiver = self;
  v10.super_class = CarRouteGeniusModeController;
  [(CarBasicRouteGeniusModeController *)&v10 resignTopContextInChromeViewController:a3 withAnimation:a4];
  v5 = [(CarRouteGeniusModeController *)self trackingController];
  [v5 setUseForcedTrackingMode:0];

  v6 = [(CarRouteGeniusModeController *)self trackingController];
  [v6 setMapView:0];

  v7 = [(CarRouteGeniusModeController *)self carChromeViewController];
  v8 = [v7 nudgerizer];
  [v8 setDelegate:0];

  [(CarRouteGeniusModeController *)self setZoomedSettings:0];
  self->_shouldRecenterOnRoute = 0;
  v9 = [(CarRouteGeniusModeController *)self suggestionsCard];
  [v9 resignCurrent];

  [(CarRouteGeniusModeController *)self _tearDownFocusGuides];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = CarRouteGeniusModeController;
  v7 = a4;
  [(CarBasicRouteGeniusModeController *)&v14 becomeTopContextInChromeViewController:v6 withAnimation:v7];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100F8A134;
  v13[3] = &unk_101661B18;
  v13[4] = self;
  v9[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100F8A320;
  v10[3] = &unk_101661A90;
  v11 = v6;
  v12 = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F8A3DC;
  v9[3] = &unk_101661738;
  v8 = v6;
  [v7 addPreparation:v13 animations:v10 completion:v9];
}

- (void)hideAutohidingContentWithAnimation:(id)a3
{
  v4 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  [v4 updateCardsForContext:self animated:1];
}

- (void)showAutohidingContentWithAnimation:(id)a3
{
  if (![(CarBasicRouteGeniusModeController *)self state])
  {
    v4 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
    [v4 updateCardsForContext:self animated:1];
  }
}

- (void)_startNavigation
{
  if ([(CarBasicRouteGeniusModeController *)self state]>= 4)
  {
    v12 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    v3 = [v12 route];
    if (v3)
    {
      v4 = v3;
      v5 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
      v6 = [v5 route];
      v7 = [v6 isNavigable];

      if (v7)
      {
        v8 = sub_100F86B2C();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 134349056;
          v17 = self;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] showing prompt to start nav", buf, 0xCu);
        }

        [(CarRouteGeniusModeController *)self setState:2];
        v9 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
        v10 = [v9 route];

        objc_initWeak(buf, self);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100F8A7C8;
        block[3] = &unk_101661340;
        objc_copyWeak(&v15, buf);
        v14 = v10;
        v11 = v10;
        dispatch_async(&_dispatch_main_q, block);

        objc_destroyWeak(&v15);
        objc_destroyWeak(buf);
      }
    }

    else
    {
    }
  }
}

- (void)_updateTraffic
{
  v6 = [(CarRouteGeniusModeController *)self carChromeViewController];
  v3 = [v6 routeGeniusAnnotationsManager];
  v4 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  v5 = [v4 route];
  [v3 updateTrafficForRoute:v5];
}

- (void)_updateForCurrentRoute
{
  currentlyDisplayedRoute = self->_currentlyDisplayedRoute;
  v4 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  v5 = [v4 route];
  v6 = [(GEOComposedRoute *)currentlyDisplayedRoute _MapsCarPlay_isEqual:v5];

  v7 = sub_100F86B2C();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v9 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
      v10 = [v9 route];
      v11 = [v10 description];
      v12 = [(GEOComposedRoute *)self->_currentlyDisplayedRoute description];
      v28 = 134349570;
      v29 = self;
      v30 = 2112;
      v31 = v11;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] _updateForCurrentRoute, new route (%@) was considered equal to current route (%@), we're not redrawing. ", &v28, 0x20u);
    }
  }

  else
  {
    if (v8)
    {
      v13 = [(GEOComposedRoute *)self->_currentlyDisplayedRoute description];
      v14 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
      v15 = [v14 route];
      v16 = [v15 description];
      v28 = 134349570;
      v29 = self;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] _updateForCurrentRoute route changed, updating pins and route annotations, previous: (%@), new: (%@)", &v28, 0x20u);
    }

    v17 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    v18 = [v17 route];
    v19 = self->_currentlyDisplayedRoute;
    self->_currentlyDisplayedRoute = v18;

    v20 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    v21 = [v20 route];
    if (v21)
    {
      v22 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
      v23 = [v22 route];
      v24 = [v23 isNavigable];
    }

    else
    {
      v24 = 0;
    }

    v25 = [(CarRouteGeniusModeController *)self suggestionsCard];
    [v25 setRouteIsNavigable:v24];

    v26 = [(CarRouteGeniusModeController *)self detailCard];
    [v26 setRouteIsNavigable:v24];

    v27 = [(CarRouteGeniusModeController *)self detailCard];
    [v27 updateRouteAdvisories];

    [(CarBasicRouteGeniusModeController *)self updateRouteAnnotations];
    [(CarBasicRouteGeniusModeController *)self updateSearchPins];
    [(CarRouteGeniusModeController *)self _updateTraffic];
  }
}

- (void)_updateHardwareBackButtonBehavior
{
  v3 = [(CarBasicRouteGeniusModeController *)self state];
  if (v3 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_101216138[v3];
  }

  v5 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  [v5 setHardwareBackButtonBehavior:v4 forContext:self];
}

- (BOOL)_needsCardUpdateForTransitionFromState:(int64_t)a3 toState:(int64_t)a4
{
  v5 = a3 == 4 || (a3 - 1) < 2;
  v7 = a4 == 4 || (a4 - 1) < 2;
  v8 = v5 ^ v7;
  if (a3)
  {
    v9 = a4 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v10 = 0;
  }

  return v8 | v10;
}

- (void)setState:(int64_t)a3
{
  v5 = [(CarBasicRouteGeniusModeController *)self state];
  v7.receiver = self;
  v7.super_class = CarRouteGeniusModeController;
  [(CarBasicRouteGeniusModeController *)&v7 setState:a3];
  [(CarRouteGeniusModeController *)self _updateFocusGuides];
  [(CarRouteGeniusModeController *)self _updateHardwareBackButtonBehavior];
  if ([(CarRouteGeniusModeController *)self _needsCardUpdateForTransitionFromState:v5 toState:a3])
  {
    v6 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
    [v6 updateCardsForContext:self animated:1];
  }
}

- (id)trackingController
{
  trackingController = self->_trackingController;
  if (!trackingController)
  {
    v4 = objc_alloc_init(CarMapTrackingController);
    v5 = self->_trackingController;
    self->_trackingController = v4;

    [(CarMapTrackingController *)self->_trackingController setDelegate:self];
    trackingController = self->_trackingController;
  }

  return trackingController;
}

- (id)mapView
{
  v2 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
}

- (void)dealloc
{
  v3 = sub_100F86B2C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CarRouteGeniusModeController;
  [(CarBasicRouteGeniusModeController *)&v4 dealloc];
}

- (CarRouteGeniusModeController)initWithSuggestion:(id)a3
{
  v10.receiver = self;
  v10.super_class = CarRouteGeniusModeController;
  v3 = [(CarBasicRouteGeniusModeController *)&v10 initWithSuggestion:a3];
  if (v3)
  {
    v4 = sub_100F86B2C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v3->_shouldRecenterOnRoute = 1;
    [(CarRouteGeniusModeController *)v3 _updateCurrentSuggestionImage];
    v5 = objc_alloc_init(CarRouteGeniusSuggestionsCardViewController);
    suggestionsCard = v3->_suggestionsCard;
    v3->_suggestionsCard = v5;

    v7 = [[CarRouteGeniusDetailCardViewController alloc] initWithDelegate:v3];
    detailCard = v3->_detailCard;
    v3->_detailCard = v7;
  }

  return v3;
}

@end