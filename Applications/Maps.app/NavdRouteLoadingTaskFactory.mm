@interface NavdRouteLoadingTaskFactory
- (GEOCountryConfiguration)countryConfiguration;
- (NSSet)supportedTransportTypes;
- (NavdRouteLoadingTaskFactory)initWithTransportTypes:(id)types traits:(id)traits isResumingMultipointRoute:(BOOL)route resumeRouteHandle:(id)handle persistentData:(id)data;
- (NavdRouteLoadingTaskFactory)initWithUserDefaults:(id)defaults existingTiming:(id)timing traits:(id)traits isResumingMultipointRoute:(BOOL)route resumeRouteHandle:(id)handle persistentData:(id)data;
- (id)_configurationByModifyingTransportTypeInfoDictionary:(id)dictionary;
- (id)_timing:(id)_timing forTransportType:(int64_t)type;
- (id)factoryByModifyingCyclePreferences:(id)preferences timing:(id)timing;
- (id)factoryByModifyingDrivePreferences:(id)preferences timing:(id)timing;
- (id)factoryByModifyingTransitPreferences:(id)preferences timing:(id)timing;
- (id)factoryByModifyingWalkPreferences:(id)preferences timing:(id)timing;
- (id)taskForRoutes:(id)routes;
- (id)taskForTransportType:(int64_t)type waypointSet:(id)set;
- (void)setCountryConfiguration:(id)configuration;
- (void)setIsResumingMultipointRoute:(BOOL)route;
- (void)setPersistentData:(id)data;
- (void)setResumeRouteHandle:(id)handle;
- (void)setTraits:(id)traits;
@end

@implementation NavdRouteLoadingTaskFactory

- (NavdRouteLoadingTaskFactory)initWithUserDefaults:(id)defaults existingTiming:(id)timing traits:(id)traits isResumingMultipointRoute:(BOOL)route resumeRouteHandle:(id)handle persistentData:(id)data
{
  routeCopy = route;
  defaultsCopy = defaults;
  timingCopy = timing;
  traitsCopy = traits;
  handleCopy = handle;
  v33 = timingCopy;
  dataCopy = data;
  if (timingCopy)
  {
    v14 = timingCopy;
  }

  else
  {
    v14 = +[RoutePlanningTiming leaveNowTiming];
  }

  v15 = v14;
  v16 = [RequestTransportTypeInformation alloc];
  v39[0] = &off_1016E97D0;
  v17 = [WalkingRequestInfoProvider alloc];
  v32 = [[WalkPreferences alloc] initWithDefaults:defaultsCopy];
  v31 = [(WalkingRequestInfoProvider *)v17 initWithPreferences:v32 timing:v15];
  v40[0] = v31;
  v39[1] = &off_1016E97E8;
  v18 = [CyclingRequestInfoProvider alloc];
  v19 = [[CyclePreferences alloc] initWithDefaults:defaultsCopy];
  v20 = [(CyclingRequestInfoProvider *)v18 initWithPreferences:v19 timing:v15];
  v40[1] = v20;
  v39[2] = &off_1016E97B8;
  v21 = [DrivingRequestInfoProvider alloc];
  v22 = [[DrivePreferences alloc] initWithDefaults:defaultsCopy];
  v23 = [(DrivingRequestInfoProvider *)v21 initWithPreferences:v22 timing:v15];
  v40[2] = v23;
  v39[3] = &off_1016E97A0;
  v24 = [TransitRequestInfoProvider alloc];
  v25 = [(WatchSyncedPreferences *)[TransitPreferences alloc] initWithDefaults:defaultsCopy];
  v26 = [(TransitRequestInfoProvider *)v24 initWithPreferences:v25 timing:v15];
  v40[3] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:4];
  v28 = [(RequestTransportTypeInformation *)v16 initWithDictionary:v27];

  v29 = [(NavdRouteLoadingTaskFactory *)self initWithTransportTypes:v28 traits:traitsCopy isResumingMultipointRoute:routeCopy resumeRouteHandle:handleCopy persistentData:dataCopy];
  return v29;
}

- (id)_configurationByModifyingTransportTypeInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  transportTypeInformation = [(NavdRouteLoadingTaskFactory *)self transportTypeInformation];
  transportTypeInfoProviders = [transportTypeInformation transportTypeInfoProviders];
  v7 = [transportTypeInfoProviders mutableCopy];

  if (dictionaryCopy)
  {
    dictionaryCopy[2](dictionaryCopy, v7);
  }

  v8 = [[RequestTransportTypeInformation alloc] initWithDictionary:v7];
  v9 = [NavdRouteLoadingTaskFactory alloc];
  traits = [(NavdRouteLoadingTaskFactory *)self traits];
  isResumingMultipointRoute = [(NavdRouteLoadingTaskFactory *)self isResumingMultipointRoute];
  resumeRouteHandle = [(NavdRouteLoadingTaskFactory *)self resumeRouteHandle];
  persistentData = [(NavdRouteLoadingTaskFactory *)self persistentData];
  v14 = [(NavdRouteLoadingTaskFactory *)v9 initWithTransportTypes:v8 traits:traits isResumingMultipointRoute:isResumingMultipointRoute resumeRouteHandle:resumeRouteHandle persistentData:persistentData];

  return v14;
}

- (id)factoryByModifyingCyclePreferences:(id)preferences timing:(id)timing
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100D337FC;
  v10[3] = &unk_101651B70;
  preferencesCopy = preferences;
  selfCopy = self;
  timingCopy = timing;
  v6 = timingCopy;
  v7 = preferencesCopy;
  v8 = [(NavdRouteLoadingTaskFactory *)self _configurationByModifyingTransportTypeInfoDictionary:v10];

  return v8;
}

- (id)factoryByModifyingWalkPreferences:(id)preferences timing:(id)timing
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100D33980;
  v10[3] = &unk_101651B70;
  preferencesCopy = preferences;
  selfCopy = self;
  timingCopy = timing;
  v6 = timingCopy;
  v7 = preferencesCopy;
  v8 = [(NavdRouteLoadingTaskFactory *)self _configurationByModifyingTransportTypeInfoDictionary:v10];

  return v8;
}

- (id)factoryByModifyingDrivePreferences:(id)preferences timing:(id)timing
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100D33B04;
  v10[3] = &unk_101651B70;
  preferencesCopy = preferences;
  selfCopy = self;
  timingCopy = timing;
  v6 = timingCopy;
  v7 = preferencesCopy;
  v8 = [(NavdRouteLoadingTaskFactory *)self _configurationByModifyingTransportTypeInfoDictionary:v10];

  return v8;
}

- (id)factoryByModifyingTransitPreferences:(id)preferences timing:(id)timing
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100D33D14;
  v10[3] = &unk_101651B70;
  preferencesCopy = preferences;
  selfCopy = self;
  timingCopy = timing;
  v6 = timingCopy;
  v7 = preferencesCopy;
  v8 = [(NavdRouteLoadingTaskFactory *)self _configurationByModifyingTransportTypeInfoDictionary:v10];

  return v8;
}

- (id)_timing:(id)_timing forTransportType:(int64_t)type
{
  _timingCopy = _timing;
  if (MapsFeature_IsEnabled_Maps357RoutePlanning())
  {
    [NSSet setWithObjects:&off_1016E97A0, &off_1016E97B8, 0];
  }

  else
  {
    [NSSet setWithObjects:&off_1016E97A0, 0, v11];
  }
  v6 = ;
  v7 = [NSNumber numberWithInteger:type];
  if ([v6 containsObject:v7])
  {
    v8 = _timingCopy;
  }

  else
  {
    v8 = +[RoutePlanningTiming leaveNowTiming];
  }

  v9 = v8;

  return v9;
}

- (id)taskForRoutes:(id)routes
{
  routesCopy = routes;
  v4 = [[RouteUpdatingNavigationServiceTask alloc] initWithRoutes:routesCopy];

  return v4;
}

- (id)taskForTransportType:(int64_t)type waypointSet:(id)set
{
  setCopy = set;
  transportTypeInformation = [(NavdRouteLoadingTaskFactory *)self transportTypeInformation];
  v8 = [transportTypeInformation requestInfoProviderForTransportType:type];

  [v8 updateWithRefinedWaypoints:setCopy];
  if (v8)
  {
    routeRequestBuilderFactory = self->_routeRequestBuilderFactory;
    if (routeRequestBuilderFactory)
    {
      [(RouteRequestBuilderFactory *)routeRequestBuilderFactory setTransportTypeRequestInfoProvider:v8];
      [(RouteRequestBuilderFactory *)self->_routeRequestBuilderFactory setWaypointSet:setCopy];
    }

    else
    {
      v11 = [[RouteRequestBuilderFactory alloc] initWithTransportTypeRequestInfoProvider:v8 waypointSet:setCopy];
      v12 = self->_routeRequestBuilderFactory;
      self->_routeRequestBuilderFactory = v11;

      if (self->_countryConfiguration)
      {
        [(RouteRequestBuilderFactory *)self->_routeRequestBuilderFactory setCountryConfiguration:?];
      }
    }

    [(RouteRequestBuilderFactory *)self->_routeRequestBuilderFactory setInitiator:self->_initiator];
    traits = [(NavdRouteLoadingTaskFactory *)self traits];
    [(RouteRequestBuilderFactory *)self->_routeRequestBuilderFactory setTraits:traits];

    [(RouteRequestBuilderFactory *)self->_routeRequestBuilderFactory setIsResumingMultipointRoute:[(NavdRouteLoadingTaskFactory *)self isResumingMultipointRoute]];
    resumeRouteHandle = [(NavdRouteLoadingTaskFactory *)self resumeRouteHandle];
    [(RouteRequestBuilderFactory *)self->_routeRequestBuilderFactory setResumeRouteHandle:resumeRouteHandle];

    persistentData = [(NavdRouteLoadingTaskFactory *)self persistentData];
    [(RouteRequestBuilderFactory *)self->_routeRequestBuilderFactory setPersistentData:persistentData];

    makeRouteRequestBuilder = [(RouteRequestBuilderFactory *)self->_routeRequestBuilderFactory makeRouteRequestBuilder];
    v17 = [RouteLoadingNavigationServiceTask alloc];
    v18 = +[MNNavigationService sharedService];
    v10 = [(RouteLoadingNavigationServiceTask *)v17 initWithNavigationService:v18 routeRequestDetailsBuilder:makeRouteRequestBuilder];
  }

  else
  {
    v10 = 0;
  }

  return v10;
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

- (void)setPersistentData:(id)data
{
  dataCopy = data;
  if (self->_persistentData != dataCopy)
  {
    v6 = dataCopy;
    objc_storeStrong(&self->_persistentData, data);
    [(RouteRequestBuilderFactory *)self->_routeRequestBuilderFactory setPersistentData:v6];
    dataCopy = v6;
  }
}

- (void)setResumeRouteHandle:(id)handle
{
  handleCopy = handle;
  if (self->_resumeRouteHandle != handleCopy)
  {
    v6 = handleCopy;
    objc_storeStrong(&self->_resumeRouteHandle, handle);
    [(RouteRequestBuilderFactory *)self->_routeRequestBuilderFactory setResumeRouteHandle:v6];
    handleCopy = v6;
  }
}

- (void)setIsResumingMultipointRoute:(BOOL)route
{
  if (self->_isResumingMultipointRoute != route)
  {
    self->_isResumingMultipointRoute = route;
    [(RouteRequestBuilderFactory *)self->_routeRequestBuilderFactory setIsResumingMultipointRoute:?];
  }
}

- (void)setTraits:(id)traits
{
  traitsCopy = traits;
  if (self->_traits != traitsCopy)
  {
    v6 = traitsCopy;
    objc_storeStrong(&self->_traits, traits);
    [(RouteRequestBuilderFactory *)self->_routeRequestBuilderFactory setTraits:v6];
    traitsCopy = v6;
  }
}

- (void)setCountryConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_countryConfiguration != configurationCopy)
  {
    v6 = configurationCopy;
    objc_storeStrong(&self->_countryConfiguration, configuration);
    [(RouteRequestBuilderFactory *)self->_routeRequestBuilderFactory setCountryConfiguration:self->_countryConfiguration];
    configurationCopy = v6;
  }
}

- (NSSet)supportedTransportTypes
{
  supportedTransportTypes = self->_supportedTransportTypes;
  if (!supportedTransportTypes)
  {
    transportTypeInformation = [(NavdRouteLoadingTaskFactory *)self transportTypeInformation];
    transportTypeInfoProviders = [transportTypeInformation transportTypeInfoProviders];
    allKeys = [transportTypeInfoProviders allKeys];
    v7 = [NSSet setWithArray:allKeys];
    v8 = self->_supportedTransportTypes;
    self->_supportedTransportTypes = v7;

    supportedTransportTypes = self->_supportedTransportTypes;
  }

  return supportedTransportTypes;
}

- (NavdRouteLoadingTaskFactory)initWithTransportTypes:(id)types traits:(id)traits isResumingMultipointRoute:(BOOL)route resumeRouteHandle:(id)handle persistentData:(id)data
{
  typesCopy = types;
  traitsCopy = traits;
  handleCopy = handle;
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = NavdRouteLoadingTaskFactory;
  v17 = [(NavdRouteLoadingTaskFactory *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_transportTypeInformation, types);
    objc_storeStrong(&v18->_traits, traits);
    v18->_isResumingMultipointRoute = route;
    objc_storeStrong(&v18->_resumeRouteHandle, handle);
    objc_storeStrong(&v18->_persistentData, data);
  }

  return v18;
}

@end