@interface StartNavigationDetailsBuilder
+ (NavigationDetailsOptions)defaultNavigationDetailsOptions;
- (GEOCountryConfiguration)countryConfiguration;
- (GEORouteAttributes)routeAttributes;
- (NavigationDetailsOptions)options;
- (StartNavigationDetailsBuilder)initWithRouteCollection:(id)a3;
- (StartNavigationDetailsBuilder)initWithTracePlaybackPath:(id)a3 routeCollection:(id)a4;
- (id)buildNavigationDetails;
- (void)setCountryConfiguration:(id)a3;
- (void)setOptions:(NavigationDetailsOptions *)a3;
- (void)setRouteAttributes:(id)a3;
@end

@implementation StartNavigationDetailsBuilder

- (void)setOptions:(NavigationDetailsOptions *)a3
{
  v3 = *&a3->shouldSimulateLocations;
  v4 = *&a3->guidanceType;
  v5 = *&a3->isReconnecting;
  self->_options.navigationModeContext = a3->navigationModeContext;
  *&self->_options.guidanceType = v4;
  *&self->_options.isReconnecting = v5;
  *&self->_options.shouldSimulateLocations = v3;
}

- (NavigationDetailsOptions)options
{
  v3 = *&self[1].navigationMode;
  *&retstr->shouldSimulateLocations = *&self[1].preferredNavigationType;
  *&retstr->guidanceType = v3;
  *&retstr->isReconnecting = *&self[1].guidanceLevelOverride;
  retstr->navigationModeContext = *&self[2].shouldSimulateLocations;
  return self;
}

- (GEORouteAttributes)routeAttributes
{
  routeAttributes = self->_routeAttributes;
  if (routeAttributes)
  {
    v3 = routeAttributes;
  }

  else
  {
    v4 = [(StartNavigationDetailsBuilder *)self routeCollection];
    v5 = [v4 currentRoute];
    v3 = [v5 routeAttributes];
  }

  return v3;
}

- (void)setRouteAttributes:(id)a3
{
  v5 = a3;
  routeAttributes = self->_routeAttributes;
  p_routeAttributes = &self->_routeAttributes;
  v8 = v5;
  if (([MNComparison isValue:routeAttributes equalTo:?]& 1) == 0)
  {
    objc_storeStrong(p_routeAttributes, a3);
  }
}

- (GEOCountryConfiguration)countryConfiguration
{
  countryConfiguration = self->_countryConfiguration;
  if (countryConfiguration)
  {
    v3 = countryConfiguration;
  }

  else
  {
    v3 = +[GEOCountryConfiguration sharedConfiguration];
  }

  return v3;
}

- (void)setCountryConfiguration:(id)a3
{
  v5 = a3;
  countryConfiguration = self->_countryConfiguration;
  p_countryConfiguration = &self->_countryConfiguration;
  if (countryConfiguration != v5)
  {
    v8 = v5;
    objc_storeStrong(p_countryConfiguration, a3);
    v5 = v8;
  }
}

- (id)buildNavigationDetails
{
  v3 = objc_alloc_init(MNStartNavigationDetails);
  [(StartNavigationDetailsBuilder *)self options];
  [v3 setGuidanceType:v58];
  v4 = [(StartNavigationDetailsBuilder *)self tracePlaybackPath];
  [v3 setTracePlaybackPath:v4];

  v5 = [(StartNavigationDetailsBuilder *)self traceRecordingNameOverride];
  [v3 setTraceRecordingNameOverride:v5];

  [(StartNavigationDetailsBuilder *)self options];
  if (v57 == 1)
  {
    Integer = GEOConfigGetInteger();
  }

  else
  {
    Integer = 0;
  }

  [v3 setSimulationType:Integer];
  [(StartNavigationDetailsBuilder *)self options];
  [v3 setIsReconnecting:v56];
  v7 = [v3 simulationType];
  if (GEOConfigGetBOOL())
  {
    [(StartNavigationDetailsBuilder *)self options];
    if (v55 == 2)
    {
      BOOL = GEOConfigGetBOOL();
    }

    else
    {
      BOOL = 1;
    }
  }

  else
  {
    BOOL = 0;
  }

  v9 = [v3 tracePlaybackPath];
  if (v9)
  {
LABEL_23:

    goto LABEL_24;
  }

  if (v7 == -1)
  {
    v10 = 1;
  }

  else
  {
    v10 = BOOL;
  }

  if (v10 == 1)
  {
    v11 = sub_100798A3C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (v7 == -1)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = v12;
      if (BOOL)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v15 = v14;
      *buf = 138543618;
      v60 = v13;
      v61 = 2114;
      v62 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "adding traceRecordingData: forceTraceRecordingForSimulation: %{public}@, shouldRecordTrace: %{public}@", buf, 0x16u);
    }

    v16 = [(StartNavigationDetailsBuilder *)self routeCollection];
    v17 = [v16 currentRoute];
    v9 = [v17 _maps_traceRecordingData];

    [v3 setTraceRecordingData:v9];
    goto LABEL_23;
  }

LABEL_24:
  v18 = [(StartNavigationDetailsBuilder *)self routeCollection];
  v19 = [v18 routes];
  [v3 setRoutes:v19];

  v20 = [(StartNavigationDetailsBuilder *)self routeCollection];
  [v3 setSelectedRouteIndex:{objc_msgSend(v20, "currentRouteIndex")}];

  v21 = +[MKLocationManager sharedLocationManager];
  v22 = [v21 lastLocation];

  if (v22)
  {
    v23 = [[MNLocation alloc] initWithCLLocation:v22];
    [v3 setInitialUserLocation:v23];
  }

  else
  {
    [v3 setInitialUserLocation:0];
  }

  v24 = [(StartNavigationDetailsBuilder *)self routeAttributes];
  [v3 setRouteAttributes:v24];

  v25 = [(StartNavigationDetailsBuilder *)self routeCollection];
  v26 = [v25 currentRoute];
  v27 = [v26 routeInitializerData];
  v28 = [v27 directionsRequest];
  [v3 setDirectionsRequest:v28];

  v29 = [(StartNavigationDetailsBuilder *)self routeCollection];
  v30 = [v29 currentRoute];
  v31 = [v30 routeInitializerData];
  v32 = [v31 directionsResponse];
  [v3 setDirectionsResponse:v32];

  v33 = [(StartNavigationDetailsBuilder *)self traits];
  [v3 setTraits:v33];

  v34 = +[NSBundle mainBundle];
  v35 = [v34 bundleIdentifier];
  [v3 setRequestingAppIdentifier:v35];

  [(StartNavigationDetailsBuilder *)self options];
  v36 = v54;
  if (!v54)
  {
    v37 = [(StartNavigationDetailsBuilder *)self routeCollection];
    v38 = [v37 currentRoute];
    [(StartNavigationDetailsBuilder *)self options];
    v36 = [v38 suggestedNavigationModeForLocation:v22 context:v53];
  }

  v39 = 4;
  if (v36 == 2)
  {
    v39 = 2;
  }

  if (v36 == 1)
  {
    v40 = 3;
  }

  else
  {
    v40 = v39;
  }

  [(StartNavigationDetailsBuilder *)self options];
  if (v52 == 1)
  {
    [(StartNavigationDetailsBuilder *)self options];
    v40 = v51;
    if (!v51)
    {
      v41 = [(StartNavigationDetailsBuilder *)self routeCollection];
      v42 = [v41 currentRoute];

      [v42 transportType];
      if (MNTransportTypeSupportsTurnByTurn())
      {
        if ([v42 isWalkingOnlyTransitRoute])
        {
          v40 = 2;
        }

        else
        {
          v40 = 3;
        }
      }

      else
      {
        v40 = 2;
      }
    }
  }

  [(StartNavigationDetailsBuilder *)self options];
  if (v50)
  {
    [(StartNavigationDetailsBuilder *)self options];
    if (v49 != 1)
    {
      [(StartNavigationDetailsBuilder *)self options];
      v40 = v48;
      if (v48 == 3)
      {
        v43 = [(StartNavigationDetailsBuilder *)self routeCollection];
        v44 = [v43 currentRoute];
        [v44 transportType];
        v45 = MNTransportTypeSupportsTurnByTurn();

        if (v45)
        {
          v40 = 3;
        }

        else
        {
          v40 = 2;
        }
      }
    }
  }

  [v3 setNavigationType:v40];
  [(StartNavigationDetailsBuilder *)self options];
  [v3 setGuidanceLevelOverride:v47];
  [v3 setIsResumingMultipointRoute:{-[StartNavigationDetailsBuilder isResumingMultipointRoute](self, "isResumingMultipointRoute")}];

  return v3;
}

- (StartNavigationDetailsBuilder)initWithTracePlaybackPath:(id)a3 routeCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = StartNavigationDetailsBuilder;
  v9 = [(StartNavigationDetailsBuilder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tracePlaybackPath, a3);
    v10->_options.preferredNavigationType = 0;
    v10->_options.guidanceType = 0;
    *&v10->_options.isReconnecting = 0;
    v10->_options.navigationMode = 0;
    *&v10->_options.guidanceLevelOverride = xmmword_101212800;
    v10->_options.shouldSimulateLocations = 1;
    objc_storeStrong(&v10->_routeCollection, a4);
  }

  return v10;
}

- (StartNavigationDetailsBuilder)initWithRouteCollection:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = StartNavigationDetailsBuilder;
  v6 = [(StartNavigationDetailsBuilder *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routeCollection, a3);
    +[StartNavigationDetailsBuilder defaultNavigationDetailsOptions];
    *&v7->_options.shouldSimulateLocations = v9;
    *&v7->_options.guidanceType = v10;
    *&v7->_options.isReconnecting = v11;
    v7->_options.navigationModeContext = v12;
  }

  return v7;
}

+ (NavigationDetailsOptions)defaultNavigationDetailsOptions
{
  *&retstr->isReconnecting = 0;
  *&retstr->shouldSimulateLocations = 0u;
  *&retstr->guidanceType = 0u;
  *&retstr->guidanceLevelOverride = xmmword_101212800;
  v4 = +[MKLocationManager sharedLocationManager];
  v5 = [v4 isAuthorizedForPreciseLocation];

  if ((v5 & 1) == 0)
  {
    *&retstr->preferredNavigationType = xmmword_101212810;
  }

  v6 = +[GEOPlatform sharedPlatform];
  v7 = [v6 isInternalInstall];

  if (v7)
  {
    BOOL = GEOConfigGetBOOL();
    result = GEOConfigGetBOOL();
    retstr->shouldSimulateLocations = BOOL & (result ^ 1);
  }

  return result;
}

@end