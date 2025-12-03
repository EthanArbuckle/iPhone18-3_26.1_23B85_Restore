@interface CarRouteGeniusModeController
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration;
- (BOOL)_needsCardUpdateForTransitionFromState:(int64_t)state toState:(int64_t)toState;
- (BOOL)_zoomButtonPressed;
- (CarRouteGeniusModeController)initWithSuggestion:(id)suggestion;
- (id)_detailCardTitle;
- (id)_guidanceETAFromEntry:(id)entry;
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
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)carCardViewCloseButtonTapped:(id)tapped;
- (void)chromeDidEndConfiguringCards:(id)cards;
- (void)chromeDidStartConfiguringCards:(id)cards;
- (void)configureCard:(id)card forKey:(id)key;
- (void)dealloc;
- (void)detailCardDidAccept:(id)accept navigationType:(unint64_t)type;
- (void)detailCardDidHandOff:(id)off;
- (void)didUpdateRouteGenius:(id)genius;
- (void)frameRouteAnimated:(BOOL)animated;
- (void)handleHardwareBackButtonPressed;
- (void)hideAutohidingContentWithAnimation:(id)animation;
- (void)incidentsReportingEnablementDidUpdate;
- (void)recenterCameraOnRouteAnimated:(BOOL)animated;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)setCurrentSuggestion:(id)suggestion;
- (void)setCurrentSuggestionImage:(id)image;
- (void)setShouldRecenterOnRoute:(BOOL)route;
- (void)setState:(int64_t)state;
- (void)showAutohidingContentWithAnimation:(id)animation;
- (void)trackingController:(id)controller changedToForcedTrackingMode:(int64_t)mode;
@end

@implementation CarRouteGeniusModeController

- (void)didUpdateRouteGenius:(id)genius
{
  geniusCopy = genius;
  v5 = [(CarRouteGeniusModeController *)self _guidanceETAFromEntry:geniusCopy];
  suggestionsCard = [(CarRouteGeniusModeController *)self suggestionsCard];
  currentETA = [suggestionsCard currentETA];
  if (currentETA)
  {
    v8 = currentETA;
    suggestionsCard2 = [(CarRouteGeniusModeController *)self suggestionsCard];
    currentETA2 = [suggestionsCard2 currentETA];
    v11 = [currentETA2 isVisuallyDistinctFromGuidanceETA:v5];

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
  [(CarBasicRouteGeniusModeController *)&v17 didUpdateRouteGenius:geniusCopy];
  suggestionsCard3 = [(CarRouteGeniusModeController *)self suggestionsCard];
  [suggestionsCard3 setCurrentSuggestion:geniusCopy];

  v14 = sub_100F86B2C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 134349570;
    selfCopy = self;
    v20 = 2112;
    v21 = geniusCopy;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] didUpdateRouteGenius: %@\nETA:%@", buf, 0x20u);
  }

  suggestionsCard4 = [(CarRouteGeniusModeController *)self suggestionsCard];
  [suggestionsCard4 setCurrentETA:v5];

  detailCard = [(CarRouteGeniusModeController *)self detailCard];
  [detailCard setCurrentETA:v5];

  [(CarRouteGeniusModeController *)self _updateCurrentSuggestionImage];
  [(CarRouteGeniusModeController *)self _updateForCurrentRoute];
  [(CarRouteGeniusModeController *)self _startNavigationIfNeededOrFail];
LABEL_10:
}

- (void)detailCardDidHandOff:(id)off
{
  offCopy = off;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "RouteGenius: detailCardDidHandOff", buf, 2u);
  }

  currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  entry = [currentSuggestion entry];
  geoMapItem = [entry geoMapItem];

  objc_initWeak(buf, self);
  v9 = +[MapsExternalDevice sharedInstance];
  chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100F86D7C;
  v13[3] = &unk_10165F3F0;
  objc_copyWeak(&v16, buf);
  v11 = geoMapItem;
  v14 = v11;
  v12 = offCopy;
  v15 = v12;
  [v9 presentConfirmationAlertFrom:chromeViewController completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)detailCardDidAccept:(id)accept navigationType:(unint64_t)type
{
  v6 = sub_100F86B2C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v18 = 134349312;
    selfCopy3 = self;
    v20 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] detailCardDidAccept, navigationType: %ld", &v18, 0x16u);
  }

  if ([(CarBasicRouteGeniusModeController *)self navigationAidedDrivingEnabled])
  {
    v7 = sub_100F86B2C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v18 = 134349056;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}p] We should only expect Dismiss or Handoff when NAD is enabled", &v18, 0xCu);
    }

    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      selfCopy3 = "[CarRouteGeniusModeController detailCardDidAccept:navigationType:]";
      v20 = 2080;
      typeCopy = "CarRouteGeniusModeController.m";
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
    currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    entry = [currentSuggestion entry];
    type = [entry type];

    if (type == 10)
    {
      v13 = sub_100F86B2C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v18 = 134349056;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}p] Route genius no longer supports low fuel suggestions", &v18, 0xCu);
      }

      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315650;
        selfCopy3 = "[CarRouteGeniusModeController detailCardDidAccept:navigationType:]";
        v20 = 2080;
        typeCopy = "CarRouteGeniusModeController.m";
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
          selfCopy3 = v15;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
        }

LABEL_19:
      }
    }

    else
    {
      [(CarRouteGeniusModeController *)self setNavigationType:type];
      [(CarRouteGeniusModeController *)self setState:4];
      currentSuggestion2 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
      route = [currentSuggestion2 route];

      if (route)
      {
        [(CarRouteGeniusModeController *)self _startNavigationIfNeededOrFail];
      }
    }
  }
}

- (id)_guidanceETAFromEntry:(id)entry
{
  entryCopy = entry;
  route = [entryCopy route];
  v7 = [GuidanceETA alloc];
  [entryCopy etaInSeconds];
  v9 = v8;

  [route distance];
  v11 = v10;
  isEVRoute = [route isEVRoute];
  if (isEVRoute)
  {
    lastEVStep = [route lastEVStep];
    evInfo = [lastEVStep evInfo];
    v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [evInfo remainingBatteryPercentage]);
  }

  else
  {
    v13 = 0;
  }

  destination = [route destination];
  timezone = [destination timezone];
  v16 = -[GuidanceETA initWithRemainingTime:remainingDistance:arrivalBatteryCharge:destinationTimeZone:transportType:](v7, "initWithRemainingTime:remainingDistance:arrivalBatteryCharge:destinationTimeZone:transportType:", v13, timezone, [route transportType], v9, v11);

  if (isEVRoute)
  {
  }

  return v16;
}

- (void)_startNavigationIfNeededOrFail
{
  if ([(CarBasicRouteGeniusModeController *)self state]>= 4)
  {
    currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    route = [currentSuggestion route];

    v4 = route;
    if (route)
    {
      isNavigable = [route isNavigable];
      v4 = route;
      if (isNavigable)
      {
        [(CarRouteGeniusModeController *)self _startNavigation];
        v4 = route;
      }
    }
  }
}

- (void)setShouldRecenterOnRoute:(BOOL)route
{
  if (self->_shouldRecenterOnRoute != route)
  {
    routeCopy = route;
    self->_shouldRecenterOnRoute = route;
    wantsNavigationDisplay = [(CarBasicRouteGeniusModeController *)self wantsNavigationDisplay];
    v6 = sub_100F86B2C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (routeCopy)
      {
        v7 = @"YES";
      }

      v8 = v7;
      v16 = 134349314;
      selfCopy = self;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] shouldRecenterOnRoute set: %@", &v16, 0x16u);
    }

    v9 = ((wantsNavigationDisplay | routeCopy) & 1) == 0 && +[CarChromeViewController allowOneHandedZooming];
    mapView = [(CarRouteGeniusModeController *)self mapView];
    _oneHandedZoomGestureRecognizer = [mapView _oneHandedZoomGestureRecognizer];
    [_oneHandedZoomGestureRecognizer setEnabled:v9];

    if ((wantsNavigationDisplay & 1) == 0)
    {
      if (!self->_shouldRecenterOnRoute)
      {
        goto LABEL_14;
      }

      carChromeViewController = [(CarRouteGeniusModeController *)self carChromeViewController];
      routeGeniusAnnotationsManager = [carChromeViewController routeGeniusAnnotationsManager];
      destination = [routeGeniusAnnotationsManager destination];

      if (destination)
      {
        [(CarRouteGeniusModeController *)self frameRouteAnimated:1];
        return;
      }

      if (!self->_shouldRecenterOnRoute)
      {
LABEL_14:
        routeGeniusMapSettings = [(CarBasicRouteGeniusModeController *)self routeGeniusMapSettings];
        [routeGeniusMapSettings applyToMapViewAnimated:1 duration:0 completion:0.0];
      }
    }
  }
}

- (void)setCurrentSuggestionImage:(id)image
{
  imageCopy = image;
  if (self->_currentSuggestionImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_currentSuggestionImage, image);
    chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
    [chromeViewController setNeedsUpdateComponent:@"cards" animated:1];

    imageCopy = v7;
  }
}

- (id)suggestionImageFetchIdentifier
{
  currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  entry = [currentSuggestion entry];
  uniqueIdentifier = [entry uniqueIdentifier];
  v5 = [uniqueIdentifier copy];

  return v5;
}

- (void)_updateCurrentSuggestionImage
{
  currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  entry = [currentSuggestion entry];
  shortDescription = [entry shortDescription];

  suggestionImageFetchIdentifier = [(CarRouteGeniusModeController *)self suggestionImageFetchIdentifier];
  if ([(NSString *)self->_suggestionImageIdentifier isEqualToString:suggestionImageFetchIdentifier])
  {
    v7 = sub_100F86B2C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349570;
      selfCopy2 = self;
      v18 = 2112;
      v19 = suggestionImageFetchIdentifier;
      v20 = 2112;
      v21 = shortDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] _updateCurrentSuggestionImage: Will not update the image because the image with identifier %@ is already updated. Entity Description: %@", buf, 0x20u);
    }
  }

  else
  {
    objc_storeStrong(&self->_suggestionImageIdentifier, suggestionImageFetchIdentifier);
    v8 = sub_100F86B2C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349570;
      selfCopy2 = self;
      v18 = 2114;
      v19 = suggestionImageFetchIdentifier;
      v20 = 2112;
      v21 = shortDescription;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] _updateCurrentSuggestionImage started fetching (%{public}@) image for suggestion: %@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    v9 = +[MapsUIImageCache sharedCarCache];
    currentSuggestion2 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    entry2 = [currentSuggestion2 entry];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100F87CCC;
    v12[3] = &unk_10165F370;
    objc_copyWeak(&v15, buf);
    v13 = suggestionImageFetchIdentifier;
    v14 = shortDescription;
    [v9 getImageForSuggestion:entry2 completion:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

- (void)setCurrentSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v11.receiver = self;
  v11.super_class = CarRouteGeniusModeController;
  [(CarBasicRouteGeniusModeController *)&v11 setCurrentSuggestion:suggestionCopy];
  if (suggestionCopy)
  {
    [(CarRouteGeniusModeController *)self _updateCurrentSuggestionImage];
    suggestionsCard = [(CarRouteGeniusModeController *)self suggestionsCard];
    [suggestionsCard setCurrentSuggestion:suggestionCopy];

    detailCard = [(CarRouteGeniusModeController *)self detailCard];
    [detailCard setCurrentSuggestion:suggestionCopy];

    currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    v8 = [(CarRouteGeniusModeController *)self _guidanceETAFromEntry:currentSuggestion];

    suggestionsCard2 = [(CarRouteGeniusModeController *)self suggestionsCard];
    [suggestionsCard2 setCurrentETA:v8];

    detailCard2 = [(CarRouteGeniusModeController *)self detailCard];
    [detailCard2 setCurrentETA:v8];
  }
}

- (void)_mapViewGestured
{
  v3 = sub_100F86B2C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] _mapViewGestured", &v5, 0xCu);
  }

  trackingController = [(CarRouteGeniusModeController *)self trackingController];
  [trackingController setForcedTrackingMode:0];
}

- (void)incidentsReportingEnablementDidUpdate
{
  carChromeViewController = [(CarRouteGeniusModeController *)self carChromeViewController];
  [carChromeViewController reloadAccessoriesForContext:self animated:0];
}

- (void)recenterCameraOnRouteAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CarRouteGeniusModeController *)self shouldRecenterOnRoute])
  {
    v5.receiver = self;
    v5.super_class = CarRouteGeniusModeController;
    [(CarBasicRouteGeniusModeController *)&v5 recenterCameraOnRouteAnimated:animatedCopy];
  }
}

- (void)frameRouteAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CarRouteGeniusModeController *)self shouldRecenterOnRoute])
  {
    v5.receiver = self;
    v5.super_class = CarRouteGeniusModeController;
    [(CarBasicRouteGeniusModeController *)&v5 frameRouteAnimated:animatedCopy];
  }
}

- (void)trackingController:(id)controller changedToForcedTrackingMode:(int64_t)mode
{
  v6 = sub_100F86B2C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 134349312;
    selfCopy = self;
    v9 = 2048;
    modeCopy = mode;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] _trackingController:changedToForcedTrackingMode %ld", &v7, 0x16u);
  }

  [(CarRouteGeniusModeController *)self setShouldRecenterOnRoute:mode == 1];
}

- (void)carCardViewCloseButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  content = [tappedCopy content];
  suggestionsCard = [(CarRouteGeniusModeController *)self suggestionsCard];

  if (content == suggestionsCard)
  {
    v14 = sub_100F86B2C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = 134349056;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] Tapped close button accessory on suggestion card. The mode will be popped.", &v18, 0xCu);
    }

    chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
    [chromeViewController captureUserAction:6082];

    [(CarRouteGeniusModeController *)self setState:3];
    v16 = +[CarDisplayController sharedInstance];
    platformController = [v16 platformController];
    [platformController clearIfCurrentSessionIsKindOfClass:objc_opt_class()];

    v12 = +[CarDisplayController sharedInstance];
    routeGeniusManager = [v12 routeGeniusManager];
    [(CarRouteGeniusModeController *)routeGeniusManager deactivateForAllChromes];
    goto LABEL_13;
  }

  content2 = [tappedCopy content];
  detailCard = [(CarRouteGeniusModeController *)self detailCard];

  v9 = sub_100F86B2C();
  v10 = v9;
  if (content2 == detailCard)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v18 = 134349056;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Tapped close button accessory on detail card. Will dismiss detail card and present suggestion card.", &v18, 0xCu);
    }

    [(CarRouteGeniusModeController *)self _dismissDetailCard];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = 134349056;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}p] Tapped close button accessory on a card that is not tracked.", &v18, 0xCu);
    }

    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      selfCopy3 = "[CarRouteGeniusModeController carCardViewCloseButtonTapped:]";
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

      routeGeniusManager = +[NSThread callStackSymbols];
      v18 = 138412290;
      selfCopy3 = routeGeniusManager;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
LABEL_13:

      goto LABEL_14;
    }
  }

LABEL_18:
}

- (void)handleHardwareBackButtonPressed
{
  state = [(CarBasicRouteGeniusModeController *)self state];
  if ((state - 2) < 3)
  {
LABEL_4:
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      selfCopy2 = "[CarRouteGeniusModeController handleHardwareBackButtonPressed]";
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
        selfCopy2 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
      }
    }

    v7 = sub_100F86B2C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      state2 = [(CarBasicRouteGeniusModeController *)self state];
      if (state2 > 4)
      {
        v9 = @"Unknown";
      }

      else
      {
        v9 = off_101655810[state2];
      }

      v11 = v9;
      v12 = 134349314;
      selfCopy2 = self;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}p] RouteGenius mode was asked to handle HW back button press, but the HW back button behavior for state %@ shouldn't be .Custom.", &v12, 0x16u);
    }

    return;
  }

  if (state != 1)
  {
    if (state)
    {
      return;
    }

    goto LABEL_4;
  }

  v10 = sub_100F86B2C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 134349056;
    selfCopy2 = self;
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
  zoomedSettings = [(CarRouteGeniusModeController *)self zoomedSettings];
  v4 = 1;
  [zoomedSettings applyToMapViewAnimated:1 duration:0 completion:-1.0];

  return v4;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration
{
  carChromeViewController = [(CarRouteGeniusModeController *)self carChromeViewController];
  navigationDisplay = [carChromeViewController navigationDisplay];
  isCameraPanning = [navigationDisplay isCameraPanning];

  v7 = +[TrafficIncidentLayoutManager sharedInstance];
  LODWORD(navigationDisplay) = [v7 isIncidentReportingEnabled];

  v9 = 3;
  if (!navigationDisplay)
  {
    v9 = 0;
  }

  if (isCameraPanning)
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
    chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
    view = [chromeViewController view];

    suggestionsCard = [(CarRouteGeniusModeController *)self suggestionsCard];
    view2 = [suggestionsCard view];

    suggestionCardView = [(CarRouteGeniusModeController *)self suggestionCardView];
    accessoryContainerView = [suggestionCardView accessoryContainerView];

    if (accessoryContainerView)
    {
      if (view && ([view2 isDescendantOfView:view] & 1) != 0)
      {
        v9 = +[UIApplication sharedApplication];
        userInterfaceLayoutDirection = [v9 userInterfaceLayoutDirection];

        v23 = accessoryContainerView;
        v11 = [NSArray arrayWithObjects:&v23 count:1];
        v12 = [view _mapsCar_insertFocusGuideWithOriginView:accessoryContainerView toDestinationFocusEnvironments:v11 forDirection:1];
        v24[0] = v12;
        v22 = accessoryContainerView;
        v13 = [NSArray arrayWithObjects:&v22 count:1];
        if (userInterfaceLayoutDirection == 1)
        {
          v14 = 4;
        }

        else
        {
          v14 = 8;
        }

        v15 = [view _mapsCar_insertFocusGuideWithOriginView:view2 toDestinationFocusEnvironments:v13 forDirection:v14];
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
        selfCopy3 = self;
        v19 = "[%{public}p] _buildFocusGuidesIfNeeded, successfully built focus guides";
        v20 = v18;
        v21 = OS_LOG_TYPE_INFO;
        goto LABEL_15;
      }

      v18 = sub_100F86B2C();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        selfCopy3 = self;
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
        selfCopy3 = self;
        v19 = "[%{public}p] _buildFocusGuidesIfNeeded, failed to build focus guides, because destination view was nil";
        goto LABEL_14;
      }
    }

LABEL_16:
  }
}

- (id)carFocusOrderSequences
{
  chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  itemRepresentingStatusBanner = [chromeViewController itemRepresentingStatusBanner];
  v13[0] = itemRepresentingStatusBanner;
  chromeViewController2 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  itemRepresentingOverlays = [chromeViewController2 itemRepresentingOverlays];
  v13[1] = itemRepresentingOverlays;
  chromeViewController3 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  itemRepresentingMapControls = [chromeViewController3 itemRepresentingMapControls];
  v13[2] = itemRepresentingMapControls;
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
  suggestionsCard = [(CarRouteGeniusModeController *)self suggestionsCard];
  view = [suggestionsCard view];
  superview = [view superview];

  if (superview)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4Superview = [superview superview];

      superview = v4Superview;
      if (!v4Superview)
      {
        goto LABEL_6;
      }
    }

    superview = superview;
  }

LABEL_6:

  return superview;
}

- (id)_detailCardTitle
{
  currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  entry = [currentSuggestion entry];

  if ([entry type] == 5 || objc_msgSend(entry, "type") == 11)
  {
    geoMapItem = [entry geoMapItem];
    name = [geoMapItem name];
  }

  else
  {
    name = 0;
  }

  if (!-[GEOComposedRoute isEVRoute](self->_currentlyDisplayedRoute, "isEVRoute") || [entry type] != 11)
  {
    title = [entry title];

    name = title;
  }

  if ([name length])
  {
    v8 = name;
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
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%{public}p] Tried to dismiss detail card, but was not in .Expanded state.", &v7, 0xCu);
    }

    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      selfCopy = "[CarRouteGeniusModeController _dismissDetailCard]";
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
        selfCopy = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
      }
    }
  }
}

- (void)_presentRoutePlanningForCurrentSuggestion
{
  currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  entry = [currentSuggestion entry];

  v5 = sub_100F86B2C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134349314;
    selfCopy = self;
    v9 = 2112;
    v10 = entry;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] _presentRoutePlanningForCurrentSuggestion: %@", &v7, 0x16u);
  }

  if (entry)
  {
    v6 = +[CarChromeModeCoordinator sharedInstance];
    [v6 displayRoutePlanningForDestination:entry];
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
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%{public}p] Card was tapped, but state was not CarRouteGeniusStatePending.", buf, 0xCu);
    }

    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      selfCopy = "[CarRouteGeniusModeController _suggestionsCardTapped]";
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
        selfCopy = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  else
  {
    currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    route = [currentSuggestion route];
    legs = [route legs];
    v10 = [legs count];

    if (v10 < 2)
    {
      [(CarRouteGeniusModeController *)self setState:1];
    }

    else
    {
      [(CarRouteGeniusModeController *)self _presentRoutePlanningForCurrentSuggestion];
    }

    currentSuggestion2 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    route2 = [currentSuggestion2 route];

    if (route2 && [route2 isFamiliarRoute] && MapsFeature_IsEnabled_LocationIntelligenceMaps())
    {
      chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
      [chromeViewController captureUserAction:501 onTarget:146 eventValue:0];
    }
  }
}

- (void)chromeDidEndConfiguringCards:(id)cards
{
  [(CarRouteGeniusModeController *)self _buildFocusGuidesIfNeeded];
  state = [(CarBasicRouteGeniusModeController *)self state];
  if (state <= 4 && ((1 << state) & 0x16) != 0)
  {
    detailCard = [(CarRouteGeniusModeController *)self detailCard];
    [detailCard setHasCardFinishedTransitioning:1];
  }
}

- (void)chromeDidStartConfiguringCards:(id)cards
{
  state = [(CarBasicRouteGeniusModeController *)self state];
  if (state <= 4 && ((1 << state) & 0x16) != 0)
  {
    detailCard = [(CarRouteGeniusModeController *)self detailCard];
    [detailCard setHasCardFinishedTransitioning:0];
  }
}

- (void)configureCard:(id)card forKey:(id)key
{
  cardCopy = card;
  keyCopy = key;
  if (![keyCopy isEqualToString:@"primary"])
  {
    goto LABEL_63;
  }

  state = [(CarBasicRouteGeniusModeController *)self state];
  if (state <= 2)
  {
    if ((state - 1) >= 2)
    {
      if (!state)
      {
        currentSuggestionImage = [(CarRouteGeniusModeController *)self currentSuggestionImage];
        [cardCopy setAccessoryImage:currentSuggestionImage];

        suggestionsCard = [(CarRouteGeniusModeController *)self suggestionsCard];
        [cardCopy setContent:suggestionsCard];

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
        primaryAxis = [(CarCardLayout *)v14 primaryAxis];
        cornerPosition = [(CarCardLayout *)v14 cornerPosition];
        if (primaryAxis == 1)
        {
          if (cornerPosition == 4 || [(CarCardLayout *)v14 cornerPosition]== 1 || [(CarCardLayout *)v14 edgePosition]== 2)
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
          v18 = cornerPosition == 4 || [(CarCardLayout *)v14 cornerPosition]== 8 || [(CarCardLayout *)v14 edgePosition]== 4;
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
        [cardCopy setLayout:v14];

        [cardCopy setAccessoryType:2];
        objc_initWeak(location, self);
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100F89E18;
        v33[3] = &unk_10165F2E8;
        objc_copyWeak(&v34, location);
        [cardCopy setSelectionHandler:v33];
        objc_destroyWeak(&v34);
        objc_destroyWeak(location);
      }

      goto LABEL_63;
    }

    goto LABEL_19;
  }

  if (state != 3)
  {
    if (state != 4)
    {
      goto LABEL_63;
    }

LABEL_19:
    _detailCardTitle = [(CarRouteGeniusModeController *)self _detailCardTitle];
    [cardCopy setTitle:_detailCardTitle];

    detailCard = [(CarRouteGeniusModeController *)self detailCard];
    [cardCopy setContent:detailCard];

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
    primaryAxis2 = [(CarCardLayout *)v24 primaryAxis];
    cornerPosition2 = [(CarCardLayout *)v24 cornerPosition];
    if (primaryAxis2 == 1)
    {
      if (cornerPosition2 == 4 || [(CarCardLayout *)v24 cornerPosition]== 1 || [(CarCardLayout *)v24 edgePosition]== 2)
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
      v28 = cornerPosition2 == 4 || [(CarCardLayout *)v24 cornerPosition]== 8 || [(CarCardLayout *)v24 edgePosition]== 4;
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
    [cardCopy setLayout:v24];

    [cardCopy setAccessoryType:1];
    [cardCopy setSelectionHandler:0];
    goto LABEL_63;
  }

  v29 = sub_100F86B2C();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    state2 = [(CarBasicRouteGeniusModeController *)self state];
    if (state2 > 4)
    {
      v31 = @"Unknown";
    }

    else
    {
      v31 = off_101655810[state2];
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
  state = [(CarBasicRouteGeniusModeController *)self state];
  if (state > 4 || state == 3)
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

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v10.receiver = self;
  v10.super_class = CarRouteGeniusModeController;
  [(CarBasicRouteGeniusModeController *)&v10 resignTopContextInChromeViewController:controller withAnimation:animation];
  trackingController = [(CarRouteGeniusModeController *)self trackingController];
  [trackingController setUseForcedTrackingMode:0];

  trackingController2 = [(CarRouteGeniusModeController *)self trackingController];
  [trackingController2 setMapView:0];

  carChromeViewController = [(CarRouteGeniusModeController *)self carChromeViewController];
  nudgerizer = [carChromeViewController nudgerizer];
  [nudgerizer setDelegate:0];

  [(CarRouteGeniusModeController *)self setZoomedSettings:0];
  self->_shouldRecenterOnRoute = 0;
  suggestionsCard = [(CarRouteGeniusModeController *)self suggestionsCard];
  [suggestionsCard resignCurrent];

  [(CarRouteGeniusModeController *)self _tearDownFocusGuides];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = CarRouteGeniusModeController;
  animationCopy = animation;
  [(CarBasicRouteGeniusModeController *)&v14 becomeTopContextInChromeViewController:controllerCopy withAnimation:animationCopy];
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
  v11 = controllerCopy;
  selfCopy = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F8A3DC;
  v9[3] = &unk_101661738;
  v8 = controllerCopy;
  [animationCopy addPreparation:v13 animations:v10 completion:v9];
}

- (void)hideAutohidingContentWithAnimation:(id)animation
{
  chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  [chromeViewController updateCardsForContext:self animated:1];
}

- (void)showAutohidingContentWithAnimation:(id)animation
{
  if (![(CarBasicRouteGeniusModeController *)self state])
  {
    chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
    [chromeViewController updateCardsForContext:self animated:1];
  }
}

- (void)_startNavigation
{
  if ([(CarBasicRouteGeniusModeController *)self state]>= 4)
  {
    currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    route = [currentSuggestion route];
    if (route)
    {
      v4 = route;
      currentSuggestion2 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
      route2 = [currentSuggestion2 route];
      isNavigable = [route2 isNavigable];

      if (isNavigable)
      {
        v8 = sub_100F86B2C();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 134349056;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] showing prompt to start nav", buf, 0xCu);
        }

        [(CarRouteGeniusModeController *)self setState:2];
        currentSuggestion3 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
        route3 = [currentSuggestion3 route];

        objc_initWeak(buf, self);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100F8A7C8;
        block[3] = &unk_101661340;
        objc_copyWeak(&v15, buf);
        v14 = route3;
        v11 = route3;
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
  carChromeViewController = [(CarRouteGeniusModeController *)self carChromeViewController];
  routeGeniusAnnotationsManager = [carChromeViewController routeGeniusAnnotationsManager];
  currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  route = [currentSuggestion route];
  [routeGeniusAnnotationsManager updateTrafficForRoute:route];
}

- (void)_updateForCurrentRoute
{
  currentlyDisplayedRoute = self->_currentlyDisplayedRoute;
  currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  route = [currentSuggestion route];
  v6 = [(GEOComposedRoute *)currentlyDisplayedRoute _MapsCarPlay_isEqual:route];

  v7 = sub_100F86B2C();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      currentSuggestion2 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
      route2 = [currentSuggestion2 route];
      v11 = [route2 description];
      v12 = [(GEOComposedRoute *)self->_currentlyDisplayedRoute description];
      v28 = 134349570;
      selfCopy2 = self;
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
      currentSuggestion3 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
      route3 = [currentSuggestion3 route];
      v16 = [route3 description];
      v28 = 134349570;
      selfCopy2 = self;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] _updateForCurrentRoute route changed, updating pins and route annotations, previous: (%@), new: (%@)", &v28, 0x20u);
    }

    currentSuggestion4 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    route4 = [currentSuggestion4 route];
    v19 = self->_currentlyDisplayedRoute;
    self->_currentlyDisplayedRoute = route4;

    currentSuggestion5 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    route5 = [currentSuggestion5 route];
    if (route5)
    {
      currentSuggestion6 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
      route6 = [currentSuggestion6 route];
      isNavigable = [route6 isNavigable];
    }

    else
    {
      isNavigable = 0;
    }

    suggestionsCard = [(CarRouteGeniusModeController *)self suggestionsCard];
    [suggestionsCard setRouteIsNavigable:isNavigable];

    detailCard = [(CarRouteGeniusModeController *)self detailCard];
    [detailCard setRouteIsNavigable:isNavigable];

    detailCard2 = [(CarRouteGeniusModeController *)self detailCard];
    [detailCard2 updateRouteAdvisories];

    [(CarBasicRouteGeniusModeController *)self updateRouteAnnotations];
    [(CarBasicRouteGeniusModeController *)self updateSearchPins];
    [(CarRouteGeniusModeController *)self _updateTraffic];
  }
}

- (void)_updateHardwareBackButtonBehavior
{
  state = [(CarBasicRouteGeniusModeController *)self state];
  if (state > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_101216138[state];
  }

  chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  [chromeViewController setHardwareBackButtonBehavior:v4 forContext:self];
}

- (BOOL)_needsCardUpdateForTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  v5 = state == 4 || (state - 1) < 2;
  v7 = toState == 4 || (toState - 1) < 2;
  v8 = v5 ^ v7;
  if (state)
  {
    v9 = toState == 0;
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

- (void)setState:(int64_t)state
{
  state = [(CarBasicRouteGeniusModeController *)self state];
  v7.receiver = self;
  v7.super_class = CarRouteGeniusModeController;
  [(CarBasicRouteGeniusModeController *)&v7 setState:state];
  [(CarRouteGeniusModeController *)self _updateFocusGuides];
  [(CarRouteGeniusModeController *)self _updateHardwareBackButtonBehavior];
  if ([(CarRouteGeniusModeController *)self _needsCardUpdateForTransitionFromState:state toState:state])
  {
    chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
    [chromeViewController updateCardsForContext:self animated:1];
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
  chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (void)dealloc
{
  v3 = sub_100F86B2C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CarRouteGeniusModeController;
  [(CarBasicRouteGeniusModeController *)&v4 dealloc];
}

- (CarRouteGeniusModeController)initWithSuggestion:(id)suggestion
{
  v10.receiver = self;
  v10.super_class = CarRouteGeniusModeController;
  v3 = [(CarBasicRouteGeniusModeController *)&v10 initWithSuggestion:suggestion];
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