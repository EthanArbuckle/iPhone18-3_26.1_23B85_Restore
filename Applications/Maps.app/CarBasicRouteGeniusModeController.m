@interface CarBasicRouteGeniusModeController
- (BOOL)wantsNavigationDisplay;
- (CarBasicRouteGeniusModeController)initWithSuggestion:(id)a3;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (id)personalizedItemSources;
- (id)routeAnnotationsProvider;
- (void)_clearAnnotations;
- (void)_externalDeviceUpdated:(id)a3;
- (void)_updateForCurrentRoute;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)configureNavigationDisplay:(id)a3;
- (void)dealloc;
- (void)didUpdateRouteGenius:(id)a3;
- (void)frameRouteAnimated:(BOOL)a3;
- (void)poiShapeLoader:(id)a3 didLoadStartPOIShape:(id)a4 endPOIShapes:(id)a5;
- (void)recenterCameraOnRouteAnimated:(BOOL)a3;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)setCurrentSuggestion:(id)a3;
- (void)setNavigationAidedDrivingEnabled:(BOOL)a3;
- (void)setState:(int64_t)a3;
- (void)updateRouteAnnotations;
- (void)updateSearchPins;
@end

@implementation CarBasicRouteGeniusModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)didUpdateRouteGenius:(id)a3
{
  v4 = a3;
  v5 = sub_100E093E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v15 = 134349314;
    v16 = self;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating route genius entry: %@", &v15, 0x16u);
  }

  [(CarBasicRouteGeniusModeController *)self setCurrentSuggestion:v4];
  [(CarBasicRouteGeniusModeController *)self _updateForCurrentRoute];
  v6 = [v4 route];
  if ([v6 isFamiliarRoute])
  {
    v7 = [v4 entry];
    v8 = [v7 uniqueIdentifier];
    v9 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
    v10 = [v9 entry];
    v11 = [v10 uniqueIdentifier];
    v12 = [v8 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      v13 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
      v14 = [v13 routeAnnotationsController];
      [v14 updateRouteGeniusFamiliarRoutes:v4];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v13 = sub_100E093E0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 134349314;
    v16 = self;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Not Updating the route genius because the entry is same: %@", &v15, 0x16u);
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

- (void)setCurrentSuggestion:(id)a3
{
  v5 = a3;
  v6 = [(CarBasicRouteGeniusModeController *)self state];
  v7 = sub_100E093E0();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6 < 1)
  {
    if (v8)
    {
      v11 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
      v12 = [v11 title];
      v13 = [v5 entry];
      v14 = [v13 title];
      v19 = 134349571;
      v20 = self;
      v21 = 2113;
      v22 = v12;
      v23 = 2113;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] setting currentCommute destination. _currentCommuteDestination: %{private}@, currentCommuteDestination: %{private}@", &v19, 0x20u);
    }

    objc_storeStrong(&self->_currentSuggestion, a3);
    v15 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
    v16 = [v15 isTopContext:self];

    if (v16)
    {
      v17 = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
      [v17 setNeedsUpdateComponent:@"navigationDisplay" animated:1];
    }

    [(CarBasicRouteGeniusModeController *)self _updateForCurrentRoute];
  }

  else
  {
    if (v8)
    {
      v9 = [(CarBasicRouteGeniusModeController *)self state];
      if (v9 > 4)
      {
        v10 = @"Unknown";
      }

      else
      {
        v10 = off_101655810[v9];
      }

      v18 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
      v19 = 134349827;
      v20 = self;
      v21 = 2112;
      v22 = v10;
      v23 = 2113;
      v24 = v5;
      v25 = 2113;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] ignoring changed prediction, state=%@ currentCommuteDestination=%{private}@ _currentCommuteDestination=%{private}@", &v19, 0x2Au);
    }
  }
}

- (void)recenterCameraOnRouteAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(CarBasicRouteGeniusModeController *)self wantsNavigationDisplay])
  {
    v5 = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
    v6 = [v5 routeGeniusAnnotationsManager];
    v7 = [v6 destination];

    if (v7)
    {
      v8 = sub_100E093E0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v14 = 134349056;
        v15 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] recentering on route.", &v14, 0xCu);
      }

      v9 = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
      v10 = [v9 routeGeniusAnnotationsManager];
      [v10 recenterCameraOnRouteAnimated:v3];
    }

    else
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315650;
        v15 = "[CarBasicRouteGeniusModeController recenterCameraOnRouteAnimated:]";
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
          v15 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
        }
      }

      v9 = sub_100E093E0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = 134349056;
        v15 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}p] new routeGeniusAnnotationsManager.destination is nil. won't be recentering on route.", &v14, 0xCu);
      }
    }
  }
}

- (void)frameRouteAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
  v6 = [v5 routeGeniusAnnotationsManager];
  v7 = [v6 destination];

  if (v7)
  {
    v8 = sub_100E093E0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 134349056;
      v15 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] framing route.", &v14, 0xCu);
    }

    v9 = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
    v10 = [v9 routeGeniusAnnotationsManager];
    [v10 frameRouteAnimated:v3];
  }

  else
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "[CarBasicRouteGeniusModeController frameRouteAnimated:]";
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
        v15 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
      }
    }

    v9 = sub_100E093E0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 134349056;
      v15 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}p] new routeGeniusAnnotationsManager.destination is nil. won't be framing on route.", &v14, 0xCu);
    }
  }
}

- (void)setNavigationAidedDrivingEnabled:(BOOL)a3
{
  if (self->_navigationAidedDrivingEnabled != a3)
  {
    self->_navigationAidedDrivingEnabled = a3;
    [(CarBasicRouteGeniusModeController *)self updateRouteAnnotations];
  }
}

- (void)_externalDeviceUpdated:(id)a3
{
  v4 = +[MapsExternalDevice sharedInstance];
  -[CarBasicRouteGeniusModeController setNavigationAidedDrivingEnabled:](self, "setNavigationAidedDrivingEnabled:", [v4 isNavigationAidedDrivingEnabled]);
}

- (void)poiShapeLoader:(id)a3 didLoadStartPOIShape:(id)a4 endPOIShapes:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  v10 = [v9 isCurrentContext:self];

  if (v10)
  {
    v11 = sub_100E093E0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = v8;
      v13 = v12;
      if (v12)
      {
        if ([v12 count])
        {
          v30 = v11;
          v31 = self;
          v32 = v7;
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

              self = v31;
              v7 = v32;
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
      v38 = self;
      v39 = 2112;
      v40 = v7;
      v41 = 2112;
      v42 = v28;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] poiShapeLoader:didLoadStartPOIShape: %@, endPOIShapes: %@", buf, 0x20u);
    }

    [(CarBasicRouteGeniusModeController *)self frameRouteAnimated:1];
  }
}

- (id)routeAnnotationsProvider
{
  v2 = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
  v3 = [v2 routeGeniusAnnotationsManager];

  return v3;
}

- (void)_clearAnnotations
{
  v3 = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
  v4 = [v3 routeGeniusAnnotationsManager];
  [v4 clearAnnotations];

  currentlyDisplayedRoute = self->_currentlyDisplayedRoute;
  self->_currentlyDisplayedRoute = 0;

  v7 = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
  v6 = [v7 searchPinsManager];
  [v6 clearDirectionsPins];
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100E0A214;
  v6[3] = &unk_101661A90;
  v6[4] = self;
  v7 = a3;
  v5 = v7;
  [a4 addPreparation:v6];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];

  if (v8)
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
    v13 = v6;
    v14 = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100E0A898;
    v10[3] = &unk_101661570;
    v10[4] = self;
    v11 = v13;
    [v7 addPreparation:v15 animations:v12 completion:v10];
  }

  else
  {
    v9 = +[CarChromeModeCoordinator sharedInstance];
    [v9 endRouteGenius];
  }
}

- (void)configureNavigationDisplay:(id)a3
{
  v4 = a3;
  [v4 setCameraStyle:4];
  [v4 setCameraPaused:0];
  v5 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  [v4 setRouteGeniusEntry:v5];
}

- (BOOL)wantsNavigationDisplay
{
  v3 = sub_10008B2E8();
  if (v3)
  {
    v4 = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
    v5 = [v4 defaultMapSettings];
    v6 = [v5 pitched];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (id)personalizedItemSources
{
  v2 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  v3 = [v2 searchPinsManager];
  v4 = [v3 routeStartEndItemSource];

  if (v4)
  {
    v7 = v4;
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
  v4 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  v5 = [v4 geoMapItem];
  v6 = [v3 initWithGeoMapItem:v5 isPlaceHolderPlace:0];
  v7 = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
  v8 = [v7 routeGeniusAnnotationsManager];
  [v8 setDestination:v6];

  v9 = [(CarBasicRouteGeniusModeController *)self currentRoute];
  if (v9)
  {
    v10 = [(CarBasicRouteGeniusModeController *)self currentRoute];
    v11 = [v10 isNavigable];
  }

  else
  {
    v11 = 1;
  }

  v12 = [(CarBasicRouteGeniusModeController *)self navigationAidedDrivingEnabled];
  v13 = 0;
  if ((v12 & 1) == 0 && v11)
  {
    v13 = [(CarBasicRouteGeniusModeController *)self currentRoute];
  }

  v111 = v13;
  v14 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
  v15 = [v14 entry];
  v16 = [SearchFieldItem searchFieldItemsForRouteInSuggestionsEntry:v15 excludeCurrentLocationOrigin:0];

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

  v108 = v11;
  v21 = sub_100E093E0();
  v22 = v111;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v23 = [v111 waypoints];
    v24 = sub_100021DB0(v23, &stru_1016557D0);
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
    v109 = self;
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
        v31 = [v22 origin];
        v32 = v31;
        if (v30 == v31)
        {
        }

        else
        {
          v33 = [v30 hasStyleAttributesData];

          if ((v33 & 1) == 0)
          {
            v34 = sub_100E093E0();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v35 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
              v36 = [v30 uniqueID];
              *buf = 134349570;
              *&buf[4] = self;
              *&buf[12] = 2112;
              *&buf[14] = v35;
              v126 = 2112;
              v127 = v36;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[%{public}p] Will try to generate style attribute from suggestion %@ for waypoint %@", buf, 0x20u);
            }

            v37 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
            v38 = [v37 entry];
            v39 = [v38 type];

            v40 = sub_100E093E0();
            v41 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);
            if (v39 > 6)
            {
              switch(v39)
              {
                case 7:
                  if (v41)
                  {
                    v47 = [v30 uniqueID];
                    *buf = 134349314;
                    *&buf[4] = self;
                    *&buf[12] = 2112;
                    *&buf[14] = v47;
                    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}p] Using parked car style attributes for waypoint %@", buf, 0x16u);
                  }

                  v43 = +[GEOFeatureStyleAttributes parkedCarStyleAttributes];
                  goto LABEL_85;
                case 19:
                  if (v41)
                  {
                    v48 = [v30 uniqueID];
                    *buf = 134349314;
                    *&buf[4] = self;
                    *&buf[12] = 2112;
                    *&buf[14] = v48;
                    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}p] Using school style attributes for waypoint %@", buf, 0x16u);
                  }

                  v43 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
                  goto LABEL_85;
                case 24:
                  if (v41)
                  {
                    v42 = [v30 uniqueID];
                    *buf = 134349314;
                    *&buf[4] = self;
                    *&buf[12] = 2112;
                    *&buf[14] = v42;
                    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}p] Using shared location style attributes for waypoint %@", buf, 0x16u);
                  }

                  v43 = +[GEOFeatureStyleAttributes sharedLocationStyleAttributes];
                  goto LABEL_85;
              }

LABEL_52:
              if (v41)
              {
                v50 = [v30 uniqueID];
                *buf = 134349314;
                *&buf[4] = self;
                *&buf[12] = 2112;
                *&buf[14] = v50;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}p] Waypoint did not have an explicit style type %@", buf, 0x16u);
              }

              v51 = [v22 destination];

              if (v30 == v51)
              {
                v54 = sub_100E093E0();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                {
                  v55 = [v30 uniqueID];
                  *buf = 134349314;
                  *&buf[4] = self;
                  *&buf[12] = 2112;
                  *&buf[14] = v55;
                  _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "[%{public}p] Using entry map item style attributes for waypoint %@", buf, 0x16u);
                }

                v56 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
                v57 = [v56 entry];
                v58 = [v57 geoMapItem];
                v59 = [v58 _styleAttributes];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v52 = sub_100E093E0();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                  {
                    v53 = [v30 uniqueID];
                    *buf = 134349314;
                    *&buf[4] = self;
                    *&buf[12] = 2112;
                    *&buf[14] = v53;
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
                    v65 = [v64 searchResult];
                    v66 = [v65 mapItem];
                    v67 = [v66 _geoMapItem];

                    v68 = [v30 geoMapItem];
                    [v67 coordinate];
                    [v68 coordinate];
                    GEOCalculateDistance();
                    if (v69 < v28)
                    {
                      v70 = [v67 name];
                      [v68 name];
                      v116 = v64;
                      v71 = v29;
                      v72 = v61;
                      v73 = v30;
                      v75 = v74 = v62;
                      v76 = [v70 isEqualToString:v75];

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
                  self = v109;
                  v22 = v111;
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
                  {
                    v79 = [v30 uniqueID];
                    *buf = 134349314;
                    *&buf[4] = v109;
                    *&buf[12] = 2112;
                    *&buf[14] = v79;
                    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "[%{public}p] Using matched search field item style attributes for waypoint %@", buf, 0x16u);
                  }

                  v80 = [v77 searchResult];
                  v59 = [GEOFeatureStyleAttributes styleAttributesForSearchResult:v80];

                  goto LABEL_86;
                }

LABEL_71:

LABEL_76:
                v81 = sub_10006D178();
                self = v109;
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
                  v85 = [v30 uniqueID];
                  *buf = 134349314;
                  *&buf[4] = v109;
                  *&buf[12] = 2112;
                  *&buf[14] = v85;
                  _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "[%{public}p] Failed to get styleAttributes for waypoint: %@", buf, 0x16u);
                }

                v43 = +[GEOFeatureStyleAttributes genericMarkerStyleAttributes];
LABEL_85:
                v59 = v43;
              }

LABEL_86:
              v44 = [v59 copy];

              *buf = xmmword_101212CA0;
              [v44 replaceAttributes:buf count:2];
              [v30 setStyleAttributes:v44];
              v86 = [v30 mapItemStorage];

              if (v86)
              {
                v87 = [v30 mapItemStorage];
                v88 = [v87 userValues];
                v89 = v88;
                if (v88)
                {
                  v90 = v88;
                }

                else
                {
                  v90 = objc_opt_new();
                }

                v91 = v90;

                v92 = [(CarBasicRouteGeniusModeController *)self currentSuggestion];
                v93 = [v92 entry];
                v94 = [v93 poiTitle];
                [v91 setName:v94];

                v95 = [v30 mapItemStorage];
                [v95 setUserValues:v91];

                v22 = v111;
              }

              v27 = v112;
              v26 = v113;
              goto LABEL_92;
            }

            if (v39 == 1)
            {
              if (v41)
              {
                v49 = [v30 uniqueID];
                *buf = 134349314;
                *&buf[4] = self;
                *&buf[12] = 2112;
                *&buf[14] = v49;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}p] Using home style attributes for waypoint %@", buf, 0x16u);
              }

              v43 = +[GEOFeatureStyleAttributes homeStyleAttributes];
            }

            else
            {
              if (v39 != 2)
              {
                goto LABEL_52;
              }

              if (v41)
              {
                v46 = [v30 uniqueID];
                *buf = 134349314;
                *&buf[4] = self;
                *&buf[12] = 2112;
                *&buf[14] = v46;
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
          v45 = [v30 uniqueID];
          *buf = 134349314;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = v45;
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

  v96 = [(CarBasicRouteGeniusModeController *)self carChromeViewController];
  v97 = [v96 routeGeniusAnnotationsManager];
  [v97 setComposedRoute:v22];

  if (v22)
  {
    v98 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
    [v98 captureUserAction:3072];
  }

  if (![(CarBasicRouteGeniusModeController *)self wantsNavigationDisplay])
  {
    v99 = [(CarBasicRouteGeniusModeController *)self currentRoute];

    if (v99)
    {
      [(CarBasicRouteGeniusModeController *)self recenterCameraOnRouteAnimated:1];
    }

    else
    {
      v100 = [(CarBasicRouteGeniusModeController *)self routeGeniusMapSettings];
      [v100 applyToMapViewAnimated:1 duration:0 completion:0.0];
    }
  }

  v101 = sub_100E093E0();
  if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
  {
    v102 = [v22 name];
    v103 = [v22 uniqueRouteID];
    v104 = [v103 UUIDString];
    v105 = [v111 pointCount];
    *buf = 134350082;
    *&buf[4] = self;
    v106 = @"NO";
    *&buf[12] = 2112;
    *&buf[14] = v102;
    if (v108)
    {
      v106 = @"YES";
    }

    v126 = 2112;
    v127 = v104;
    v128 = 2048;
    v129 = v105;
    v130 = 2112;
    v131 = v106;
    v107 = v106;
    _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_INFO, "[%{public}p] updating route annotations for route: %@, id: %@, points: %lu, isNavigable: %@", buf, 0x34u);

    v22 = v111;
  }
}

- (void)updateSearchPins
{
  v3 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  v4 = [SearchResult carSearchResultFromDestination:v3];
  [(CarBasicRouteGeniusModeController *)self setDestinationPin:v4];

  v5 = sub_100E093E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(CarBasicRouteGeniusModeController *)self destinationPin];
    v7 = @"updating";
    if (!v6)
    {
      v7 = @"clearing";
    }

    v20 = 134349314;
    v21 = self;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] %@ pins.", &v20, 0x16u);
  }

  v8 = [(CarBasicRouteGeniusModeController *)self currentRoute];
  v9 = v8 != 0;

  v10 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  v11 = [v10 searchPinsManager];
  [v11 setDisableStartPin:v9];

  v12 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  v13 = [v12 searchPinsManager];
  [v13 setDisableEndPins:v9];

  v14 = [(CarBasicRouteGeniusModeController *)self destinationPin];

  v15 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  v16 = [v15 searchPinsManager];
  v17 = v16;
  if (v14)
  {
    v18 = +[SearchResult currentLocationSearchResult];
    v19 = [(CarBasicRouteGeniusModeController *)self destinationPin];
    [v17 setStartPin:v18 endPin:v19];
  }

  else
  {
    [v16 clearDirectionsPins];
  }
}

- (void)_updateForCurrentRoute
{
  v3 = [(CarBasicRouteGeniusModeController *)self chromeViewController];
  v4 = [v3 isCurrentContext:self];

  if (v4)
  {
    currentlyDisplayedRoute = self->_currentlyDisplayedRoute;
    v6 = [(CarBasicRouteGeniusModeController *)self currentRoute];
    v7 = [(GEOComposedRoute *)currentlyDisplayedRoute _MapsCarPlay_isEqual:v6];

    v8 = sub_100E093E0();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        v28 = [(CarBasicRouteGeniusModeController *)self currentRoute];
        v10 = [v28 name];
        v27 = [(CarBasicRouteGeniusModeController *)self currentRoute];
        v11 = [v27 uniqueRouteID];
        v12 = [v11 UUIDString];
        v13 = [(CarBasicRouteGeniusModeController *)self currentRoute];
        v14 = [v13 pointCount];
        v15 = [(GEOComposedRoute *)self->_currentlyDisplayedRoute name];
        v16 = [(GEOComposedRoute *)self->_currentlyDisplayedRoute uniqueRouteID];
        v17 = [v16 UUIDString];
        v18 = [(GEOComposedRoute *)self->_currentlyDisplayedRoute pointCount];
        *buf = 134350594;
        v30 = self;
        v31 = 2112;
        v32 = v10;
        v33 = 2112;
        v34 = v12;
        v35 = 2048;
        v36 = v14;
        v37 = 2112;
        v38 = v15;
        v39 = 2112;
        v40 = v17;
        v41 = 2048;
        v42 = v18;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] setRoute, new route (name: %@, id: %@, points: %lu) was considered equal to current route (name: %@, id: %@, points: %lu), just recenter instead.", buf, 0x48u);
      }

      [(CarBasicRouteGeniusModeController *)self recenterCameraOnRouteAnimated:1];
    }

    else
    {
      if (v9)
      {
        v20 = [(GEOComposedRoute *)self->_currentlyDisplayedRoute name];
        v21 = [(GEOComposedRoute *)self->_currentlyDisplayedRoute pointCount];
        v22 = [(CarBasicRouteGeniusModeController *)self currentRoute];
        v23 = [v22 name];
        v24 = [(CarBasicRouteGeniusModeController *)self currentRoute];
        *buf = 134350082;
        v30 = self;
        v31 = 2112;
        v32 = v20;
        v33 = 2048;
        v34 = v21;
        v35 = 2112;
        v36 = v23;
        v37 = 2048;
        v38 = [v24 pointCount];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] _updateForCurrentRoute route changed, updating pins and route annotations, previous: (%@, points: %lu), new: (%@, points: %lu)", buf, 0x34u);
      }

      v25 = [(CarBasicRouteGeniusModeController *)self currentRoute];
      v26 = self->_currentlyDisplayedRoute;
      self->_currentlyDisplayedRoute = v25;

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
      v30 = self;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] _updateForCurrentRoute route changed, but we are not the current context; ignoring", buf, 0xCu);
    }
  }
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
  }
}

- (void)dealloc
{
  v3 = sub_100E093E0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CarBasicRouteGeniusModeController;
  [(CarBasicRouteGeniusModeController *)&v4 dealloc];
}

- (CarBasicRouteGeniusModeController)initWithSuggestion:(id)a3
{
  v5 = a3;
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
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with suggestion: %@", buf, 0x16u);
    }

    v6->_state = 0;
    objc_storeStrong(&v6->_currentSuggestion, a3);
    v8 = +[CarRouteGeniusService sharedService];
    [v8 registerObserver:v6];
  }

  return v6;
}

@end