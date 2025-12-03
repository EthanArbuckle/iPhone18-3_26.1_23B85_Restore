@interface StartNavigationDetailsBuilder
+ (NavigationDetailsOptions)defaultNavigationDetailsOptions;
- (GEOCountryConfiguration)countryConfiguration;
- (GEORouteAttributes)routeAttributes;
- (NavigationDetailsOptions)options;
- (StartNavigationDetailsBuilder)initWithRouteCollection:(id)collection;
- (StartNavigationDetailsBuilder)initWithTracePlaybackPath:(id)path routeCollection:(id)collection;
- (id)buildNavigationDetails;
- (void)setCountryConfiguration:(id)configuration;
- (void)setOptions:(NavigationDetailsOptions *)options;
- (void)setRouteAttributes:(id)attributes;
@end

@implementation StartNavigationDetailsBuilder

- (void)setOptions:(NavigationDetailsOptions *)options
{
  v3 = *&options->shouldSimulateLocations;
  v4 = *&options->guidanceType;
  v5 = *&options->isReconnecting;
  self->_options.navigationModeContext = options->navigationModeContext;
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
    routeAttributes = routeAttributes;
  }

  else
  {
    routeCollection = [(StartNavigationDetailsBuilder *)self routeCollection];
    currentRoute = [routeCollection currentRoute];
    routeAttributes = [currentRoute routeAttributes];
  }

  return routeAttributes;
}

- (void)setRouteAttributes:(id)attributes
{
  attributesCopy = attributes;
  routeAttributes = self->_routeAttributes;
  p_routeAttributes = &self->_routeAttributes;
  v8 = attributesCopy;
  if (([MNComparison isValue:routeAttributes equalTo:?]& 1) == 0)
  {
    objc_storeStrong(p_routeAttributes, attributes);
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

- (void)setCountryConfiguration:(id)configuration
{
  configurationCopy = configuration;
  countryConfiguration = self->_countryConfiguration;
  p_countryConfiguration = &self->_countryConfiguration;
  if (countryConfiguration != configurationCopy)
  {
    v8 = configurationCopy;
    objc_storeStrong(p_countryConfiguration, configuration);
    configurationCopy = v8;
  }
}

- (id)buildNavigationDetails
{
  v3 = objc_alloc_init(MNStartNavigationDetails);
  [(StartNavigationDetailsBuilder *)self options];
  [v3 setGuidanceType:v58];
  tracePlaybackPath = [(StartNavigationDetailsBuilder *)self tracePlaybackPath];
  [v3 setTracePlaybackPath:tracePlaybackPath];

  traceRecordingNameOverride = [(StartNavigationDetailsBuilder *)self traceRecordingNameOverride];
  [v3 setTraceRecordingNameOverride:traceRecordingNameOverride];

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
  simulationType = [v3 simulationType];
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

  tracePlaybackPath2 = [v3 tracePlaybackPath];
  if (tracePlaybackPath2)
  {
LABEL_23:

    goto LABEL_24;
  }

  if (simulationType == -1)
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
      if (simulationType == -1)
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

    routeCollection = [(StartNavigationDetailsBuilder *)self routeCollection];
    currentRoute = [routeCollection currentRoute];
    tracePlaybackPath2 = [currentRoute _maps_traceRecordingData];

    [v3 setTraceRecordingData:tracePlaybackPath2];
    goto LABEL_23;
  }

LABEL_24:
  routeCollection2 = [(StartNavigationDetailsBuilder *)self routeCollection];
  routes = [routeCollection2 routes];
  [v3 setRoutes:routes];

  routeCollection3 = [(StartNavigationDetailsBuilder *)self routeCollection];
  [v3 setSelectedRouteIndex:{objc_msgSend(routeCollection3, "currentRouteIndex")}];

  v21 = +[MKLocationManager sharedLocationManager];
  lastLocation = [v21 lastLocation];

  if (lastLocation)
  {
    v23 = [[MNLocation alloc] initWithCLLocation:lastLocation];
    [v3 setInitialUserLocation:v23];
  }

  else
  {
    [v3 setInitialUserLocation:0];
  }

  routeAttributes = [(StartNavigationDetailsBuilder *)self routeAttributes];
  [v3 setRouteAttributes:routeAttributes];

  routeCollection4 = [(StartNavigationDetailsBuilder *)self routeCollection];
  currentRoute2 = [routeCollection4 currentRoute];
  routeInitializerData = [currentRoute2 routeInitializerData];
  directionsRequest = [routeInitializerData directionsRequest];
  [v3 setDirectionsRequest:directionsRequest];

  routeCollection5 = [(StartNavigationDetailsBuilder *)self routeCollection];
  currentRoute3 = [routeCollection5 currentRoute];
  routeInitializerData2 = [currentRoute3 routeInitializerData];
  directionsResponse = [routeInitializerData2 directionsResponse];
  [v3 setDirectionsResponse:directionsResponse];

  traits = [(StartNavigationDetailsBuilder *)self traits];
  [v3 setTraits:traits];

  v34 = +[NSBundle mainBundle];
  bundleIdentifier = [v34 bundleIdentifier];
  [v3 setRequestingAppIdentifier:bundleIdentifier];

  [(StartNavigationDetailsBuilder *)self options];
  v36 = v54;
  if (!v54)
  {
    routeCollection6 = [(StartNavigationDetailsBuilder *)self routeCollection];
    currentRoute4 = [routeCollection6 currentRoute];
    [(StartNavigationDetailsBuilder *)self options];
    v36 = [currentRoute4 suggestedNavigationModeForLocation:lastLocation context:v53];
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
      routeCollection7 = [(StartNavigationDetailsBuilder *)self routeCollection];
      currentRoute5 = [routeCollection7 currentRoute];

      [currentRoute5 transportType];
      if (MNTransportTypeSupportsTurnByTurn())
      {
        if ([currentRoute5 isWalkingOnlyTransitRoute])
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
        routeCollection8 = [(StartNavigationDetailsBuilder *)self routeCollection];
        currentRoute6 = [routeCollection8 currentRoute];
        [currentRoute6 transportType];
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

- (StartNavigationDetailsBuilder)initWithTracePlaybackPath:(id)path routeCollection:(id)collection
{
  pathCopy = path;
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = StartNavigationDetailsBuilder;
  v9 = [(StartNavigationDetailsBuilder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tracePlaybackPath, path);
    v10->_options.preferredNavigationType = 0;
    v10->_options.guidanceType = 0;
    *&v10->_options.isReconnecting = 0;
    v10->_options.navigationMode = 0;
    *&v10->_options.guidanceLevelOverride = xmmword_101212800;
    v10->_options.shouldSimulateLocations = 1;
    objc_storeStrong(&v10->_routeCollection, collection);
  }

  return v10;
}

- (StartNavigationDetailsBuilder)initWithRouteCollection:(id)collection
{
  collectionCopy = collection;
  v13.receiver = self;
  v13.super_class = StartNavigationDetailsBuilder;
  v6 = [(StartNavigationDetailsBuilder *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routeCollection, collection);
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
  isAuthorizedForPreciseLocation = [v4 isAuthorizedForPreciseLocation];

  if ((isAuthorizedForPreciseLocation & 1) == 0)
  {
    *&retstr->preferredNavigationType = xmmword_101212810;
  }

  v6 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v6 isInternalInstall];

  if (isInternalInstall)
  {
    BOOL = GEOConfigGetBOOL();
    result = GEOConfigGetBOOL();
    retstr->shouldSimulateLocations = BOOL & (result ^ 1);
  }

  return result;
}

@end