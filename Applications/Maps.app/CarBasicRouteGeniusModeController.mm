@interface CarBasicRouteGeniusModeController
- (BOOL)wantsNavigationDisplay;
- (CarBasicRouteGeniusModeController)initWithSuggestion:(id)suggestion;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (id)personalizedItemSources;
- (id)routeAnnotationsProvider;
- (void)_clearAnnotations;
- (void)_externalDeviceUpdated:(id)updated;
- (void)_updateForCurrentRoute;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)configureNavigationDisplay:(id)display;
- (void)dealloc;
- (void)didUpdateRouteGenius:(id)genius;
- (void)frameRouteAnimated:(BOOL)animated;
- (void)poiShapeLoader:(id)loader didLoadStartPOIShape:(id)shape endPOIShapes:(id)shapes;
- (void)recenterCameraOnRouteAnimated:(BOOL)animated;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)setCurrentSuggestion:(id)suggestion;
- (void)setNavigationAidedDrivingEnabled:(BOOL)enabled;
- (void)setState:(int64_t)state;
- (void)updateRouteAnnotations;
- (void)updateSearchPins;
@end

@implementation CarBasicRouteGeniusModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)didUpdateRouteGenius:(id)genius
{
  geniusCopy = genius;
  v5 = sub_100E093E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v15 = 134349314;
    selfCopy2 = self;
    v17 = 2112;
    v18 = geniusCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating route genius entry: %@", &v15, 0x16u);
  }

  [(CarBasicRouteGeniusModeController *)self setCurrentSuggestion:geniusCopy];
  [(CarBasicRouteGeniusModeController *)self _updateForCurrentRoute];
  route = [geniusCopy route];
  if ([route isFamiliarRoute])
  {
    entry = [geniusCopy entry];
    uniqueIdentifier = [entry uniqueIdentifier];
    currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    entry2 = [currentSuggestion entry];
    uniqueIdentifier2 = [entry2 uniqueIdentifier];
    v12 = [uniqueIdentifier isEqualToString:uniqueIdentifier2];

    if ((v12 & 1) == 0)
    {
      chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
      routeAnnotationsController = [chromeViewController routeAnnotationsController];
      [routeAnnotationsController updateRouteGeniusFamiliarRoutes:geniusCopy];

      goto LABEL_9;
    }
  }

  else
  {
  }

  chromeViewController = sub_100E093E0();
  if (os_log_type_enabled(chromeViewController, OS_LOG_TYPE_INFO))
  {
    v15 = 134349314;
    selfCopy2 = self;
    v17 = 2112;
    v18 = geniusCopy;
    _os_log_impl(&_mh_execute_header, chromeViewController, OS_LOG_TYPE_INFO, "[%{public}p] Not Updating the route genius because the entry is same: %@", &v15, 0x16u);
  }

LABEL_9:
}

- (NSArray)carFocusOrderSequences
{
  v2 = sub_10006D178();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315650;
    v7 = "[CarBasicRouteGeniusModeController carFocusOrderSequences]";
    v8 = 2080;
    v9 = "CarBasicRouteGeniusModeController.m";
    v10 = 1024;
    v11 = 468;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v6, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v3 = sub_10006D178();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = +[NSThread callStackSymbols];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@", &v6, 0xCu);
    }
  }

  return &__NSArray0__struct;
}

- (void)setCurrentSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  state = [(CarBasicRouteGeniusModeController *)self state];
  v7 = sub_100E093E0();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (state < 1)
  {
    if (v8)
    {
      entry = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
      title = [entry title];
      entry2 = [suggestionCopy entry];
      title2 = [entry2 title];
      v19 = 134349571;
      selfCopy2 = self;
      v21 = 2113;
      v22 = title;
      v23 = 2113;
      v24 = title2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] setting currentCommute destination. _currentCommuteDestination: %{private}@, currentCommuteDestination: %{private}@", &v19, 0x20u);
    }

    objc_storeStrong(&self->_currentSuggestion, suggestion);
    chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
    v16 = [chromeViewController isTopContext:self];

    if (v16)
    {
      carChromeViewController = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
      [carChromeViewController setNeedsUpdateComponent:@"navigationDisplay" animated:1];
    }

    [(CarBasicRouteGeniusModeController *)self _updateForCurrentRoute];
  }

  else
  {
    if (v8)
    {
      state2 = [(CarBasicRouteGeniusModeController *)self state];
      if (state2 > 4)
      {
        v10 = @"Unknown";
      }

      else
      {
        v10 = off_101655810[state2];
      }

      currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
      v19 = 134349827;
      selfCopy2 = self;
      v21 = 2112;
      v22 = v10;
      v23 = 2113;
      v24 = suggestionCopy;
      v25 = 2113;
      v26 = currentSuggestion;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] ignoring changed prediction, state=%@ currentCommuteDestination=%{private}@ _currentCommuteDestination=%{private}@", &v19, 0x2Au);
    }
  }
}

- (void)recenterCameraOnRouteAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(CarBasicRouteGeniusModeController *)self wantsNavigationDisplay])
  {
    carChromeViewController = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
    routeGeniusAnnotationsManager = [carChromeViewController routeGeniusAnnotationsManager];
    destination = [routeGeniusAnnotationsManager destination];

    if (destination)
    {
      v8 = sub_100E093E0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v14 = 134349056;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] recentering on route.", &v14, 0xCu);
      }

      carChromeViewController2 = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
      routeGeniusAnnotationsManager2 = [carChromeViewController2 routeGeniusAnnotationsManager];
      [routeGeniusAnnotationsManager2 recenterCameraOnRouteAnimated:animatedCopy];
    }

    else
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315650;
        selfCopy2 = "[CarBasicRouteGeniusModeController recenterCameraOnRouteAnimated:]";
        v16 = 2080;
        v17 = "CarBasicRouteGeniusModeController.m";
        v18 = 1024;
        v19 = 419;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v14, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v12 = sub_10006D178();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = +[NSThread callStackSymbols];
          v14 = 138412290;
          selfCopy2 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
        }
      }

      carChromeViewController2 = sub_100E093E0();
      if (os_log_type_enabled(carChromeViewController2, OS_LOG_TYPE_ERROR))
      {
        v14 = 134349056;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, carChromeViewController2, OS_LOG_TYPE_ERROR, "[%{public}p] new routeGeniusAnnotationsManager.destination is nil. won't be recentering on route.", &v14, 0xCu);
      }
    }
  }
}

- (void)frameRouteAnimated:(BOOL)animated
{
  animatedCopy = animated;
  carChromeViewController = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
  routeGeniusAnnotationsManager = [carChromeViewController routeGeniusAnnotationsManager];
  destination = [routeGeniusAnnotationsManager destination];

  if (destination)
  {
    v8 = sub_100E093E0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] framing route.", &v14, 0xCu);
    }

    carChromeViewController2 = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
    routeGeniusAnnotationsManager2 = [carChromeViewController2 routeGeniusAnnotationsManager];
    [routeGeniusAnnotationsManager2 frameRouteAnimated:animatedCopy];
  }

  else
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      selfCopy2 = "[CarBasicRouteGeniusModeController frameRouteAnimated:]";
      v16 = 2080;
      v17 = "CarBasicRouteGeniusModeController.m";
      v18 = 1024;
      v19 = 403;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v14, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        v14 = 138412290;
        selfCopy2 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
      }
    }

    carChromeViewController2 = sub_100E093E0();
    if (os_log_type_enabled(carChromeViewController2, OS_LOG_TYPE_ERROR))
    {
      v14 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, carChromeViewController2, OS_LOG_TYPE_ERROR, "[%{public}p] new routeGeniusAnnotationsManager.destination is nil. won't be framing on route.", &v14, 0xCu);
    }
  }
}

- (void)setNavigationAidedDrivingEnabled:(BOOL)enabled
{
  if (self->_navigationAidedDrivingEnabled != enabled)
  {
    self->_navigationAidedDrivingEnabled = enabled;
    [(CarBasicRouteGeniusModeController *)self updateRouteAnnotations];
  }
}

- (void)_externalDeviceUpdated:(id)updated
{
  v4 = +[MapsExternalDevice sharedInstance];
  -[CarBasicRouteGeniusModeController setNavigationAidedDrivingEnabled:](self, "setNavigationAidedDrivingEnabled:", [v4 isNavigationAidedDrivingEnabled]);
}

- (void)poiShapeLoader:(id)loader didLoadStartPOIShape:(id)shape endPOIShapes:(id)shapes
{
  shapeCopy = shape;
  shapesCopy = shapes;
  chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  v10 = [chromeViewController isCurrentContext:self];

  if (v10)
  {
    v11 = sub_100E093E0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = shapesCopy;
      v13 = v12;
      if (v12)
      {
        if ([v12 count])
        {
          v30 = v11;
          selfCopy = self;
          v32 = shapeCopy;
          v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v29 = v13;
          v15 = v13;
          v16 = [v15 countByEnumeratingWithState:&v33 objects:buf count:16];
          if (!v16)
          {
            goto LABEL_22;
          }

          v17 = v16;
          v18 = *v34;
          while (1)
          {
            v19 = 0;
            do
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v33 + 1) + 8 * v19);
              if (v20)
              {
                v21 = objc_opt_class();
                v22 = NSStringFromClass(v21);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_15;
                }

                v23 = [v20 performSelector:"accessibilityIdentifier"];
                v24 = v23;
                if (v23 && ![v23 isEqualToString:v22])
                {
                  v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];
                }

                else
                {

LABEL_15:
                  v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
                }

                goto LABEL_18;
              }

              v25 = @"<nil>";
LABEL_18:

              [v14 addObject:v25];
              v19 = v19 + 1;
            }

            while (v17 != v19);
            v26 = [v15 countByEnumeratingWithState:&v33 objects:buf count:16];
            v17 = v26;
            if (!v26)
            {
LABEL_22:

              v27 = [v15 componentsJoinedByString:{@", "}];
              v28 = [NSString stringWithFormat:@"<%p> [%@]", v15, v27];

              self = selfCopy;
              shapeCopy = v32;
              v11 = v30;
              v13 = v29;
              goto LABEL_25;
            }
          }
        }

        v28 = [NSString stringWithFormat:@"<%p> (empty)", v13];
      }

      else
      {
        v28 = @"<nil>";
      }

LABEL_25:

      *buf = 134349570;
      selfCopy2 = self;
      v39 = 2112;
      v40 = shapeCopy;
      v41 = 2112;
      v42 = v28;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] poiShapeLoader:didLoadStartPOIShape: %@, endPOIShapes: %@", buf, 0x20u);
    }

    [(CarBasicRouteGeniusModeController *)self frameRouteAnimated:1];
  }
}

- (id)routeAnnotationsProvider
{
  carChromeViewController = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
  routeGeniusAnnotationsManager = [carChromeViewController routeGeniusAnnotationsManager];

  return routeGeniusAnnotationsManager;
}

- (void)_clearAnnotations
{
  carChromeViewController = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
  routeGeniusAnnotationsManager = [carChromeViewController routeGeniusAnnotationsManager];
  [routeGeniusAnnotationsManager clearAnnotations];

  currentlyDisplayedRoute = self->_currentlyDisplayedRoute;
  self->_currentlyDisplayedRoute = 0;

  carChromeViewController2 = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
  searchPinsManager = [carChromeViewController2 searchPinsManager];
  [searchPinsManager clearDirectionsPins];
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100E0A214;
  v6[3] = &unk_101661A90;
  v6[4] = self;
  controllerCopy = controller;
  v5 = controllerCopy;
  [animation addPreparation:v6];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];

  if (currentSuggestion)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100E0A530;
    v15[3] = &unk_101661B18;
    v15[4] = self;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100E0A7B8;
    v12[3] = &unk_101661A90;
    v13 = controllerCopy;
    selfCopy = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100E0A898;
    v10[3] = &unk_101661570;
    v10[4] = self;
    v11 = v13;
    [animationCopy addPreparation:v15 animations:v12 completion:v10];
  }

  else
  {
    v9 = +[CarChromeModeCoordinator sharedInstance];
    [v9 endRouteGenius];
  }
}

- (void)configureNavigationDisplay:(id)display
{
  displayCopy = display;
  [displayCopy setCameraStyle:4];
  [displayCopy setCameraPaused:0];
  currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  [displayCopy setRouteGeniusEntry:currentSuggestion];
}

- (BOOL)wantsNavigationDisplay
{
  v3 = sub_10008B2E8();
  if (v3)
  {
    carChromeViewController = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
    defaultMapSettings = [carChromeViewController defaultMapSettings];
    pitched = [defaultMapSettings pitched];

    LOBYTE(v3) = pitched;
  }

  return v3;
}

- (id)personalizedItemSources
{
  chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];
  routeStartEndItemSource = [searchPinsManager routeStartEndItemSource];

  if (routeStartEndItemSource)
  {
    v7 = routeStartEndItemSource;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (void)updateRouteAnnotations
{
  v3 = [MKMapItem alloc];
  entry = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  geoMapItem = [entry geoMapItem];
  v6 = [v3 initWithGeoMapItem:geoMapItem isPlaceHolderPlace:0];
  carChromeViewController = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
  routeGeniusAnnotationsManager = [carChromeViewController routeGeniusAnnotationsManager];
  [routeGeniusAnnotationsManager setDestination:v6];

  currentRoute = [(CarBasicRouteGeniusModeController *)self currentRoute];
  if (currentRoute)
  {
    currentRoute2 = [(CarBasicRouteGeniusModeController *)self currentRoute];
    isNavigable = [currentRoute2 isNavigable];
  }

  else
  {
    isNavigable = 1;
  }

  navigationAidedDrivingEnabled = [(CarBasicRouteGeniusModeController *)self navigationAidedDrivingEnabled];
  currentRoute3 = 0;
  if ((navigationAidedDrivingEnabled & 1) == 0 && isNavigable)
  {
    currentRoute3 = [(CarBasicRouteGeniusModeController *)self currentRoute];
  }

  v111 = currentRoute3;
  currentSuggestion = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  entry2 = [currentSuggestion entry];
  v16 = [SearchFieldItem searchFieldItemsForRouteInSuggestionsEntry:entry2 excludeCurrentLocationOrigin:0];

  v110 = v16;
  if (!v16)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[CarBasicRouteGeniusModeController updateRouteAnnotations]";
      *&buf[12] = 2080;
      *&buf[14] = "CarBasicRouteGeniusModeController.m";
      v126 = 1024;
      LODWORD(v127) = 145;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        *buf = 138412290;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v20 = sub_100E093E0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}p] Unable to extract any searchFieldItems from entry", buf, 0xCu);
    }
  }

  v108 = isNavigable;
  v21 = sub_100E093E0();
  v22 = v111;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    waypoints = [v111 waypoints];
    v24 = sub_100021DB0(waypoints, &stru_1016557D0);
    *buf = 134349314;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] Updating route annotations for waypoints: %@", buf, 0x16u);

    v22 = v111;
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  obj = [v22 waypoints];
  v25 = [obj countByEnumeratingWithState:&v121 objects:v133 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v122;
    v28 = GEOMapItemEquivalenceDistanceThreshold;
    selfCopy = self;
    v112 = *v122;
    do
    {
      v29 = 0;
      v113 = v26;
      do
      {
        if (*v122 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v121 + 1) + 8 * v29);
        origin = [v22 origin];
        v32 = origin;
        if (v30 == origin)
        {
        }

        else
        {
          hasStyleAttributesData = [v30 hasStyleAttributesData];

          if ((hasStyleAttributesData & 1) == 0)
          {
            v34 = sub_100E093E0();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              currentSuggestion2 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
              uniqueID = [v30 uniqueID];
              *buf = 134349570;
              *&buf[4] = self;
              *&buf[12] = 2112;
              *&buf[14] = currentSuggestion2;
              v126 = 2112;
              v127 = uniqueID;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[%{public}p] Will try to generate style attribute from suggestion %@ for waypoint %@", buf, 0x20u);
            }

            currentSuggestion3 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
            entry3 = [currentSuggestion3 entry];
            type = [entry3 type];

            v40 = sub_100E093E0();
            v41 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);
            if (type > 6)
            {
              switch(type)
              {
                case 7:
                  if (v41)
                  {
                    uniqueID2 = [v30 uniqueID];
                    *buf = 134349314;
                    *&buf[4] = self;
                    *&buf[12] = 2112;
                    *&buf[14] = uniqueID2;
                    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}p] Using parked car style attributes for waypoint %@", buf, 0x16u);
                  }

                  v43 = +[GEOFeatureStyleAttributes parkedCarStyleAttributes];
                  goto LABEL_85;
                case 19:
                  if (v41)
                  {
                    uniqueID3 = [v30 uniqueID];
                    *buf = 134349314;
                    *&buf[4] = self;
                    *&buf[12] = 2112;
                    *&buf[14] = uniqueID3;
                    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}p] Using school style attributes for waypoint %@", buf, 0x16u);
                  }

                  v43 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
                  goto LABEL_85;
                case 24:
                  if (v41)
                  {
                    uniqueID4 = [v30 uniqueID];
                    *buf = 134349314;
                    *&buf[4] = self;
                    *&buf[12] = 2112;
                    *&buf[14] = uniqueID4;
                    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}p] Using shared location style attributes for waypoint %@", buf, 0x16u);
                  }

                  v43 = +[GEOFeatureStyleAttributes sharedLocationStyleAttributes];
                  goto LABEL_85;
              }

LABEL_52:
              if (v41)
              {
                uniqueID5 = [v30 uniqueID];
                *buf = 134349314;
                *&buf[4] = self;
                *&buf[12] = 2112;
                *&buf[14] = uniqueID5;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}p] Waypoint did not have an explicit style type %@", buf, 0x16u);
              }

              destination = [v22 destination];

              if (v30 == destination)
              {
                v54 = sub_100E093E0();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                {
                  uniqueID6 = [v30 uniqueID];
                  *buf = 134349314;
                  *&buf[4] = self;
                  *&buf[12] = 2112;
                  *&buf[14] = uniqueID6;
                  _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "[%{public}p] Using entry map item style attributes for waypoint %@", buf, 0x16u);
                }

                currentSuggestion4 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
                entry4 = [currentSuggestion4 entry];
                geoMapItem2 = [entry4 geoMapItem];
                _styleAttributes = [geoMapItem2 _styleAttributes];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v52 = sub_100E093E0();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                  {
                    uniqueID7 = [v30 uniqueID];
                    *buf = 134349314;
                    *&buf[4] = self;
                    *&buf[12] = 2112;
                    *&buf[14] = uniqueID7;
                    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "[%{public}p] Using EV charger style attributes for waypoint %@", buf, 0x16u);
                  }

                  v43 = +[GEOFeatureStyleAttributes evChargerStyleAttributes];
                  goto LABEL_85;
                }

                v119 = 0u;
                v120 = 0u;
                v117 = 0u;
                v118 = 0u;
                v114 = v110;
                v60 = [v114 countByEnumeratingWithState:&v117 objects:v132 count:16];
                if (v60)
                {
                  v61 = v60;
                  v62 = *v118;
LABEL_64:
                  v63 = 0;
                  while (1)
                  {
                    if (*v118 != v62)
                    {
                      objc_enumerationMutation(v114);
                    }

                    v64 = *(*(&v117 + 1) + 8 * v63);
                    searchResult = [v64 searchResult];
                    mapItem = [searchResult mapItem];
                    _geoMapItem = [mapItem _geoMapItem];

                    geoMapItem3 = [v30 geoMapItem];
                    [_geoMapItem coordinate];
                    [geoMapItem3 coordinate];
                    GEOCalculateDistance();
                    if (v69 < v28)
                    {
                      name = [_geoMapItem name];
                      [geoMapItem3 name];
                      v116 = v64;
                      v71 = v29;
                      v72 = v61;
                      v73 = v30;
                      v75 = v74 = v62;
                      v76 = [name isEqualToString:v75];

                      v62 = v74;
                      v30 = v73;
                      v61 = v72;
                      v29 = v71;

                      if (v76)
                      {
                        break;
                      }
                    }

                    if (v61 == ++v63)
                    {
                      v61 = [v114 countByEnumeratingWithState:&v117 objects:v132 count:16];
                      if (v61)
                      {
                        goto LABEL_64;
                      }

                      goto LABEL_71;
                    }
                  }

                  v77 = v116;

                  if (!v77)
                  {
                    goto LABEL_76;
                  }

                  v78 = sub_100E093E0();
                  self = selfCopy;
                  v22 = v111;
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
                  {
                    uniqueID8 = [v30 uniqueID];
                    *buf = 134349314;
                    *&buf[4] = selfCopy;
                    *&buf[12] = 2112;
                    *&buf[14] = uniqueID8;
                    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "[%{public}p] Using matched search field item style attributes for waypoint %@", buf, 0x16u);
                  }

                  searchResult2 = [v77 searchResult];
                  _styleAttributes = [GEOFeatureStyleAttributes styleAttributesForSearchResult:searchResult2];

                  goto LABEL_86;
                }

LABEL_71:

LABEL_76:
                v81 = sub_10006D178();
                self = selfCopy;
                v22 = v111;
                if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "[CarBasicRouteGeniusModeController updateRouteAnnotations]";
                  *&buf[12] = 2080;
                  *&buf[14] = "CarBasicRouteGeniusModeController.m";
                  v126 = 1024;
                  LODWORD(v127) = 204;
                  _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
                }

                if (sub_100E03634())
                {
                  v82 = sub_10006D178();
                  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                  {
                    v83 = +[NSThread callStackSymbols];
                    *buf = 138412290;
                    *&buf[4] = v83;
                    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                  }
                }

                v84 = sub_100E093E0();
                if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                {
                  uniqueID9 = [v30 uniqueID];
                  *buf = 134349314;
                  *&buf[4] = selfCopy;
                  *&buf[12] = 2112;
                  *&buf[14] = uniqueID9;
                  _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "[%{public}p] Failed to get styleAttributes for waypoint: %@", buf, 0x16u);
                }

                v43 = +[GEOFeatureStyleAttributes genericMarkerStyleAttributes];
LABEL_85:
                _styleAttributes = v43;
              }

LABEL_86:
              v44 = [_styleAttributes copy];

              *buf = xmmword_101212CA0;
              [v44 replaceAttributes:buf count:2];
              [v30 setStyleAttributes:v44];
              mapItemStorage = [v30 mapItemStorage];

              if (mapItemStorage)
              {
                mapItemStorage2 = [v30 mapItemStorage];
                userValues = [mapItemStorage2 userValues];
                v89 = userValues;
                if (userValues)
                {
                  v90 = userValues;
                }

                else
                {
                  v90 = objc_opt_new();
                }

                v91 = v90;

                currentSuggestion5 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
                entry5 = [currentSuggestion5 entry];
                poiTitle = [entry5 poiTitle];
                [v91 setName:poiTitle];

                mapItemStorage3 = [v30 mapItemStorage];
                [mapItemStorage3 setUserValues:v91];

                v22 = v111;
              }

              v27 = v112;
              v26 = v113;
              goto LABEL_92;
            }

            if (type == 1)
            {
              if (v41)
              {
                uniqueID10 = [v30 uniqueID];
                *buf = 134349314;
                *&buf[4] = self;
                *&buf[12] = 2112;
                *&buf[14] = uniqueID10;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}p] Using home style attributes for waypoint %@", buf, 0x16u);
              }

              v43 = +[GEOFeatureStyleAttributes homeStyleAttributes];
            }

            else
            {
              if (type != 2)
              {
                goto LABEL_52;
              }

              if (v41)
              {
                uniqueID11 = [v30 uniqueID];
                *buf = 134349314;
                *&buf[4] = self;
                *&buf[12] = 2112;
                *&buf[14] = uniqueID11;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}p] Using work style attributes for waypoint %@", buf, 0x16u);
              }

              v43 = +[GEOFeatureStyleAttributes workStyleAttributes];
            }

            goto LABEL_85;
          }
        }

        v44 = sub_100E093E0();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          uniqueID12 = [v30 uniqueID];
          *buf = 134349314;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = uniqueID12;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "[%{public}p] Skipping waypoint because it's the origin or already has style attributes: %@", buf, 0x16u);
        }

LABEL_92:

        v29 = v29 + 1;
      }

      while (v29 != v26);
      v26 = [obj countByEnumeratingWithState:&v121 objects:v133 count:16];
    }

    while (v26);
  }

  carChromeViewController2 = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
  routeGeniusAnnotationsManager2 = [carChromeViewController2 routeGeniusAnnotationsManager];
  [routeGeniusAnnotationsManager2 setComposedRoute:v22];

  if (v22)
  {
    chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
    [chromeViewController captureUserAction:3072];
  }

  if (![(CarBasicRouteGeniusModeController *)self wantsNavigationDisplay])
  {
    currentRoute4 = [(CarBasicRouteGeniusModeController *)self currentRoute];

    if (currentRoute4)
    {
      [(CarBasicRouteGeniusModeController *)self recenterCameraOnRouteAnimated:1];
    }

    else
    {
      routeGeniusMapSettings = [(CarBasicRouteGeniusModeController *)self routeGeniusMapSettings];
      [routeGeniusMapSettings applyToMapViewAnimated:1 duration:0 completion:0.0];
    }
  }

  v101 = sub_100E093E0();
  if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
  {
    name2 = [v22 name];
    uniqueRouteID = [v22 uniqueRouteID];
    uUIDString = [uniqueRouteID UUIDString];
    pointCount = [v111 pointCount];
    *buf = 134350082;
    *&buf[4] = self;
    v106 = @"NO";
    *&buf[12] = 2112;
    *&buf[14] = name2;
    if (v108)
    {
      v106 = @"YES";
    }

    v126 = 2112;
    v127 = uUIDString;
    v128 = 2048;
    v129 = pointCount;
    v130 = 2112;
    v131 = v106;
    v107 = v106;
    _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_INFO, "[%{public}p] updating route annotations for route: %@, id: %@, points: %lu, isNavigable: %@", buf, 0x34u);

    v22 = v111;
  }
}

- (void)updateSearchPins
{
  entry = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  v4 = [SearchResult carSearchResultFromDestination:entry];
  [(CarBasicRouteGeniusModeController *)self setDestinationPin:v4];

  v5 = sub_100E093E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    destinationPin = [(CarBasicRouteGeniusModeController *)self destinationPin];
    v7 = @"updating";
    if (!destinationPin)
    {
      v7 = @"clearing";
    }

    v20 = 134349314;
    selfCopy = self;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] %@ pins.", &v20, 0x16u);
  }

  currentRoute = [(CarBasicRouteGeniusModeController *)self currentRoute];
  v9 = currentRoute != 0;

  chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];
  [searchPinsManager setDisableStartPin:v9];

  chromeViewController2 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  searchPinsManager2 = [chromeViewController2 searchPinsManager];
  [searchPinsManager2 setDisableEndPins:v9];

  destinationPin2 = [(CarBasicRouteGeniusModeController *)self destinationPin];

  chromeViewController3 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  searchPinsManager3 = [chromeViewController3 searchPinsManager];
  v17 = searchPinsManager3;
  if (destinationPin2)
  {
    v18 = +[SearchResult currentLocationSearchResult];
    destinationPin3 = [(CarBasicRouteGeniusModeController *)self destinationPin];
    [v17 setStartPin:v18 endPin:destinationPin3];
  }

  else
  {
    [searchPinsManager3 clearDirectionsPins];
  }
}

- (void)_updateForCurrentRoute
{
  chromeViewController = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  v4 = [chromeViewController isCurrentContext:self];

  if (v4)
  {
    currentlyDisplayedRoute = self->_currentlyDisplayedRoute;
    currentRoute = [(CarBasicRouteGeniusModeController *)self currentRoute];
    v7 = [(GEOComposedRoute *)currentlyDisplayedRoute _MapsCarPlay_isEqual:currentRoute];

    v8 = sub_100E093E0();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        currentRoute2 = [(CarBasicRouteGeniusModeController *)self currentRoute];
        name = [currentRoute2 name];
        currentRoute3 = [(CarBasicRouteGeniusModeController *)self currentRoute];
        uniqueRouteID = [currentRoute3 uniqueRouteID];
        uUIDString = [uniqueRouteID UUIDString];
        currentRoute4 = [(CarBasicRouteGeniusModeController *)self currentRoute];
        pointCount = [currentRoute4 pointCount];
        name2 = [(GEOComposedRoute *)self->_currentlyDisplayedRoute name];
        uniqueRouteID2 = [(GEOComposedRoute *)self->_currentlyDisplayedRoute uniqueRouteID];
        uUIDString2 = [uniqueRouteID2 UUIDString];
        pointCount2 = [(GEOComposedRoute *)self->_currentlyDisplayedRoute pointCount];
        *buf = 134350594;
        selfCopy3 = self;
        v31 = 2112;
        v32 = name;
        v33 = 2112;
        v34 = uUIDString;
        v35 = 2048;
        v36 = pointCount;
        v37 = 2112;
        pointCount4 = name2;
        v39 = 2112;
        v40 = uUIDString2;
        v41 = 2048;
        v42 = pointCount2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] setRoute, new route (name: %@, id: %@, points: %lu) was considered equal to current route (name: %@, id: %@, points: %lu), just recenter instead.", buf, 0x48u);
      }

      [(CarBasicRouteGeniusModeController *)self recenterCameraOnRouteAnimated:1];
    }

    else
    {
      if (v9)
      {
        name3 = [(GEOComposedRoute *)self->_currentlyDisplayedRoute name];
        pointCount3 = [(GEOComposedRoute *)self->_currentlyDisplayedRoute pointCount];
        currentRoute5 = [(CarBasicRouteGeniusModeController *)self currentRoute];
        name4 = [currentRoute5 name];
        currentRoute6 = [(CarBasicRouteGeniusModeController *)self currentRoute];
        *buf = 134350082;
        selfCopy3 = self;
        v31 = 2112;
        v32 = name3;
        v33 = 2048;
        v34 = pointCount3;
        v35 = 2112;
        v36 = name4;
        v37 = 2048;
        pointCount4 = [currentRoute6 pointCount];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] _updateForCurrentRoute route changed, updating pins and route annotations, previous: (%@, points: %lu), new: (%@, points: %lu)", buf, 0x34u);
      }

      currentRoute7 = [(CarBasicRouteGeniusModeController *)self currentRoute];
      v26 = self->_currentlyDisplayedRoute;
      self->_currentlyDisplayedRoute = currentRoute7;

      [(CarBasicRouteGeniusModeController *)self updateRouteAnnotations];
      [(CarBasicRouteGeniusModeController *)self updateSearchPins];
    }
  }

  else
  {
    v19 = sub_100E093E0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] _updateForCurrentRoute route changed, but we are not the current context; ignoring", buf, 0xCu);
    }
  }
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
  }
}

- (void)dealloc
{
  v3 = sub_100E093E0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CarBasicRouteGeniusModeController;
  [(CarBasicRouteGeniusModeController *)&v4 dealloc];
}

- (CarBasicRouteGeniusModeController)initWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v10.receiver = self;
  v10.super_class = CarBasicRouteGeniusModeController;
  v6 = [(CarBasicRouteGeniusModeController *)&v10 init];
  if (v6)
  {
    v7 = sub_100E093E0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v12 = v6;
      v13 = 2112;
      v14 = suggestionCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with suggestion: %@", buf, 0x16u);
    }

    v6->_state = 0;
    objc_storeStrong(&v6->_currentSuggestion, suggestion);
    v8 = +[CarRouteGeniusService sharedService];
    [v8 registerObserver:v6];
  }

  return v6;
}

@end