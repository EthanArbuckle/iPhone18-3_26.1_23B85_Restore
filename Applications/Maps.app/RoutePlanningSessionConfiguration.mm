@interface RoutePlanningSessionConfiguration
- (BOOL)hasTransportType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNavigationTracePlayback;
- (BOOL)isResumingMultipointRoute;
- (BOOL)shouldAutoLaunchNavigation;
- (GEOComposedGeometryRoutePersistentData)persistentData;
- (GEOCountryConfiguration)countryConfiguration;
- (GEOResumeRouteHandle)resumeRouteHandle;
- (NSSet)supportedTransportTypes;
- (NSString)tracePlaybackPath;
- (RoutePlanningSessionConfiguration)initWithWaypointRequests:(id)requests routeLoadingTaskFactory:(id)factory traits:(id)traits;
- (RoutePlanningSessionConfiguration)initWithWaypointRequests:(id)requests routeLoadingTaskFactory:(id)factory traits:(id)traits companionContext:(id)context locationManager:(id)manager;
- (RoutePlanningSessionConfiguration)initWithWaypointRequests:(id)requests traits:(id)traits existingTiming:(id)timing isResumingMultipointRoute:(BOOL)route resumeRouteHandle:(id)handle persistentData:(id)data;
- (id)configurationByModifyingRouteLoadingTaskFactory:(id)factory andDedupingWaypointRequests:(id)requests;
- (id)description;
- (unint64_t)hash;
- (void)setCountryConfiguration:(id)configuration;
@end

@implementation RoutePlanningSessionConfiguration

- (id)configurationByModifyingRouteLoadingTaskFactory:(id)factory andDedupingWaypointRequests:(id)requests
{
  factoryCopy = factory;
  requestsCopy = requests;
  if (!factoryCopy)
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "[RoutePlanningSessionConfiguration(Modification) configurationByModifyingRouteLoadingTaskFactory:andDedupingWaypointRequests:]";
      *&buf[12] = 2080;
      *&buf[14] = "RoutePlanningSessionConfiguration+Extras.m";
      *&buf[22] = 1024;
      LODWORD(v31) = 50;
      WORD2(v31) = 2080;
      *(&v31 + 6) = "newRouteLoadingTaskFactory != nil";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        *buf = 138412290;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v24 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(RoutePlanningSessionConfiguration *)self waypointRequests];
  v6 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v6)
  {
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&v31 = sub_100D024CC;
        *(&v31 + 1) = sub_100D024DC;
        v32 = 0;
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100D024E4;
        v25[3] = &unk_101652A40;
        v25[4] = v9;
        v25[5] = buf;
        [requestsCopy enumerateKeysAndObjectsUsingBlock:v25];
        if (*(*&buf[8] + 40))
        {
          v10 = *(*&buf[8] + 40);
        }

        else
        {
          v10 = v9;
        }

        [v24 addObject:v10];
        _Block_object_dispose(buf, 8);
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v6);
  }

  traits = [(RoutePlanningSessionConfiguration *)self traits];
  copyByIncrementingSessionCounters = [traits copyByIncrementingSessionCounters];

  selfCopy = self;
  companionContext = [(RoutePlanningSessionConfiguration *)selfCopy companionContext];
  v15 = +[MKLocationManager sharedLocationManager];
  v16 = [(RoutePlanningSessionConfiguration *)selfCopy initWithWaypointRequests:v24 routeLoadingTaskFactory:factoryCopy traits:copyByIncrementingSessionCounters companionContext:companionContext locationManager:v15];

  return v16;
}

- (RoutePlanningSessionConfiguration)initWithWaypointRequests:(id)requests routeLoadingTaskFactory:(id)factory traits:(id)traits
{
  traitsCopy = traits;
  factoryCopy = factory;
  requestsCopy = requests;
  v11 = +[GEOCompanionRouteContext context];
  v12 = +[MKLocationManager sharedLocationManager];
  v13 = [(RoutePlanningSessionConfiguration *)self initWithWaypointRequests:requestsCopy routeLoadingTaskFactory:factoryCopy traits:traitsCopy companionContext:v11 locationManager:v12];

  return v13;
}

- (RoutePlanningSessionConfiguration)initWithWaypointRequests:(id)requests traits:(id)traits existingTiming:(id)timing isResumingMultipointRoute:(BOOL)route resumeRouteHandle:(id)handle persistentData:(id)data
{
  routeCopy = route;
  dataCopy = data;
  handleCopy = handle;
  timingCopy = timing;
  traitsCopy = traits;
  requestsCopy = requests;
  v19 = [NavdRouteLoadingTaskFactory alloc];
  v20 = +[NSUserDefaults standardUserDefaults];
  v21 = [(NavdRouteLoadingTaskFactory *)v19 initWithUserDefaults:v20 existingTiming:timingCopy traits:traitsCopy isResumingMultipointRoute:routeCopy resumeRouteHandle:handleCopy persistentData:dataCopy];

  v22 = [(RoutePlanningSessionConfiguration *)self initWithWaypointRequests:requestsCopy routeLoadingTaskFactory:v21 traits:traitsCopy];
  return v22;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_waypointRequests hash];
  v4 = [(RouteLoadingTaskFactory *)self->_routeLoadingTaskFactory hash]^ v3;
  v5 = [(GEOMapServiceTraits *)self->_traits hash];
  v6 = v4 ^ v5 ^ [(GEOCompanionRouteContext *)self->_companionContext hash];
  return v6 ^ [(NSNumber *)self->_navigationAutoLaunchDelay hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equalCopy;
      waypointRequests = [(RoutePlanningSessionConfiguration *)v8 waypointRequests];
      if (waypointRequests || self->_waypointRequests)
      {
        waypointRequests2 = [(RoutePlanningSessionConfiguration *)v8 waypointRequests];
        if (![waypointRequests2 isEqual:self->_waypointRequests])
        {
          v11 = 0;
          goto LABEL_48;
        }

        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      routeLoadingTaskFactory = [(RoutePlanningSessionConfiguration *)v8 routeLoadingTaskFactory];
      if (routeLoadingTaskFactory || self->_routeLoadingTaskFactory)
      {
        routeLoadingTaskFactory2 = [(RoutePlanningSessionConfiguration *)v8 routeLoadingTaskFactory];
        if (![routeLoadingTaskFactory2 isEqual:self->_routeLoadingTaskFactory])
        {
          v11 = 0;
LABEL_47:

          if ((v10 & 1) == 0)
          {
LABEL_49:

            goto LABEL_50;
          }

LABEL_48:

          goto LABEL_49;
        }

        v23 = 1;
      }

      else
      {
        v23 = 0;
      }

      traits = [(RoutePlanningSessionConfiguration *)v8 traits];
      if (traits || self->_traits)
      {
        traits2 = [(RoutePlanningSessionConfiguration *)v8 traits];
        if (![traits2 isEqual:self->_traits])
        {
          v11 = 0;
          goto LABEL_46;
        }

        v22 = 1;
      }

      else
      {
        v22 = 0;
      }

      companionContext = [(RoutePlanningSessionConfiguration *)v8 companionContext];
      if (companionContext || self->_companionContext)
      {
        companionContext2 = [(RoutePlanningSessionConfiguration *)v8 companionContext];
        if (![companionContext2 isEqual:self->_companionContext])
        {
          v11 = 0;
          goto LABEL_45;
        }

        v19 = 1;
      }

      else
      {
        v19 = 0;
      }

      navigationAutoLaunchDelay = [(RoutePlanningSessionConfiguration *)v8 navigationAutoLaunchDelay];
      if (navigationAutoLaunchDelay || self->_navigationAutoLaunchDelay)
      {
        navigationAutoLaunchDelay2 = [(RoutePlanningSessionConfiguration *)v8 navigationAutoLaunchDelay];
        if (![navigationAutoLaunchDelay2 isEqual:self->_navigationAutoLaunchDelay])
        {
          v11 = 0;
          goto LABEL_44;
        }

        v16 = 1;
      }

      else
      {
        v16 = 0;
      }

      if (self->_initialRoutesBeingFetchedExternally == [(RoutePlanningSessionConfiguration *)v8 areInitialRoutesBeingFetchedExternally]&& self->_ignoreMapType == [(RoutePlanningSessionConfiguration *)v8 ignoreMapType])
      {
        v11 = [(RoutePlanningSessionConfiguration *)v8 initialTransportType]== self->_initialTransportType;
        v14 = v11;
        if ((v16 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v11 = 0;
        v14 = 0;
        if (!v16)
        {
LABEL_38:
          v11 = v14;

          if (!v19)
          {
            goto LABEL_39;
          }

          goto LABEL_45;
        }
      }

LABEL_44:

      if ((v19 & 1) == 0)
      {
LABEL_39:

        if (!v22)
        {
          goto LABEL_40;
        }

        goto LABEL_46;
      }

LABEL_45:

      if ((v22 & 1) == 0)
      {
LABEL_40:

        if (!v23)
        {
          goto LABEL_41;
        }

        goto LABEL_47;
      }

LABEL_46:

      if ((v23 & 1) == 0)
      {
LABEL_41:

        if (!v10)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v11 = 0;
  }

LABEL_50:

  return v11;
}

- (GEOComposedGeometryRoutePersistentData)persistentData
{
  routeLoadingTaskFactory = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
  persistentData = [routeLoadingTaskFactory persistentData];

  return persistentData;
}

- (GEOResumeRouteHandle)resumeRouteHandle
{
  routeLoadingTaskFactory = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
  resumeRouteHandle = [routeLoadingTaskFactory resumeRouteHandle];

  return resumeRouteHandle;
}

- (BOOL)isResumingMultipointRoute
{
  routeLoadingTaskFactory = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
  isResumingMultipointRoute = [routeLoadingTaskFactory isResumingMultipointRoute];

  return isResumingMultipointRoute;
}

- (BOOL)shouldAutoLaunchNavigation
{
  navigationAutoLaunchDelay = [(RoutePlanningSessionConfiguration *)self navigationAutoLaunchDelay];
  v3 = navigationAutoLaunchDelay != 0;

  return v3;
}

- (BOOL)hasTransportType:(int64_t)type
{
  routeLoadingTaskFactory = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
  supportedTransportTypes = [routeLoadingTaskFactory supportedTransportTypes];
  v6 = [NSNumber numberWithInteger:type];
  v7 = [supportedTransportTypes containsObject:v6];

  return v7;
}

- (NSSet)supportedTransportTypes
{
  routeLoadingTaskFactory = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
  supportedTransportTypes = [routeLoadingTaskFactory supportedTransportTypes];

  return supportedTransportTypes;
}

- (NSString)tracePlaybackPath
{
  routeLoadingTaskFactory = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = routeLoadingTaskFactory;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  tracePath = [v4 tracePath];

  return tracePath;
}

- (BOOL)isNavigationTracePlayback
{
  routeLoadingTaskFactory = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
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
  if (self->_countryConfiguration != configurationCopy)
  {
    v8 = configurationCopy;
    objc_storeStrong(&self->_countryConfiguration, configuration);
    countryConfiguration = self->_countryConfiguration;
    routeLoadingTaskFactory = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
    [routeLoadingTaskFactory setCountryConfiguration:countryConfiguration];

    configurationCopy = v8;
  }
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v19.receiver = self;
  v19.super_class = RoutePlanningSessionConfiguration;
  v4 = [(RoutePlanningSessionConfiguration *)&v19 description];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"\nwaypointRequests:(%@)", self->_waypointRequests];
  [v5 appendFormat:@"\nrouteLoadingTaskFactory:(%@)", self->_routeLoadingTaskFactory];
  [v5 appendFormat:@"\ntraits:(%p)", self->_traits];
  [v5 appendFormat:@"\ncompanionContext:(%@)", self->_companionContext];
  [v5 appendFormat:@"\ncountryConfiguration:(%@)", self->_countryConfiguration];
  if ([(RoutePlanningSessionConfiguration *)self isNavigationTracePlayback])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v5 appendFormat:@"\nisNavigationTracePlayback:(%@)", v6];
  tracePlaybackPath = [(RoutePlanningSessionConfiguration *)self tracePlaybackPath];
  [v5 appendFormat:@"\ntracePlaybackPath:(%@)", tracePlaybackPath];

  if ([(RoutePlanningSessionConfiguration *)self shouldAutoLaunchNavigation])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v5 appendFormat:@"\nshouldAutoLaunchNavigation:(%@)", v8];
  [v5 appendFormat:@"\nnavigationAutoLaunchDelay:(%@)", self->_navigationAutoLaunchDelay];
  if ([(RoutePlanningSessionConfiguration *)self areInitialRoutesBeingFetchedExternally])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v5 appendFormat:@"\nareInitialRoutesBeingFetchedExternally:(%@)", v9];
  if ([(RoutePlanningSessionConfiguration *)self ignoreMapType])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v5 appendFormat:@"\nignoreMapType:(%@)", v10];
  v11 = self->_initialTransportType - 1;
  if (v11 > 4)
  {
    v12 = @"Undefined";
  }

  else
  {
    v12 = *(&off_101655A30 + v11);
  }

  [v5 appendFormat:@"\ninitialTransportType:(%@)", v12];
  supportedTransportTypes = [(RoutePlanningSessionConfiguration *)self supportedTransportTypes];
  [v5 appendFormat:@"\nsupportedTransportTypes:(%@)", supportedTransportTypes];

  automaticSharingContacts = [(RoutePlanningSessionConfiguration *)self automaticSharingContacts];
  [v5 appendFormat:@"\nautomatic sharing:(%@)", automaticSharingContacts];

  shortcutIdentifier = [(RoutePlanningSessionConfiguration *)self shortcutIdentifier];
  [v5 appendFormat:@"\nshortcutIdentifier:(%@)", shortcutIdentifier];

  originalHistoryEntryIdentifier = [(RoutePlanningSessionConfiguration *)self originalHistoryEntryIdentifier];
  [v5 appendFormat:@"\noriginalHistoryEntryIdentifier:(%@)", originalHistoryEntryIdentifier];

  v17 = [v5 copy];

  return v17;
}

- (RoutePlanningSessionConfiguration)initWithWaypointRequests:(id)requests routeLoadingTaskFactory:(id)factory traits:(id)traits companionContext:(id)context locationManager:(id)manager
{
  requestsCopy = requests;
  factoryCopy = factory;
  traitsCopy = traits;
  contextCopy = context;
  managerCopy = manager;
  if ([requestsCopy count] <= 1)
  {
    v25 = sub_10006D178();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v42 = "[RoutePlanningSessionConfiguration initWithWaypointRequests:routeLoadingTaskFactory:traits:companionContext:locationManager:]";
      v43 = 2080;
      v44 = "RoutePlanningSessionConfiguration.m";
      v45 = 1024;
      v46 = 35;
      v47 = 2080;
      v48 = "waypointRequests.count >= 2";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v26 = sub_10006D178();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v42 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!factoryCopy)
  {
    v28 = sub_10006D178();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v42 = "[RoutePlanningSessionConfiguration initWithWaypointRequests:routeLoadingTaskFactory:traits:companionContext:locationManager:]";
      v43 = 2080;
      v44 = "RoutePlanningSessionConfiguration.m";
      v45 = 1024;
      v46 = 36;
      v47 = 2080;
      v48 = "taskFactory != nil";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v29 = sub_10006D178();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v42 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!traitsCopy)
  {
    v31 = sub_10006D178();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v42 = "[RoutePlanningSessionConfiguration initWithWaypointRequests:routeLoadingTaskFactory:traits:companionContext:locationManager:]";
      v43 = 2080;
      v44 = "RoutePlanningSessionConfiguration.m";
      v45 = 1024;
      v46 = 37;
      v47 = 2080;
      v48 = "traits != nil";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v32 = sub_10006D178();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v42 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!contextCopy)
  {
    v34 = sub_10006D178();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v42 = "[RoutePlanningSessionConfiguration initWithWaypointRequests:routeLoadingTaskFactory:traits:companionContext:locationManager:]";
      v43 = 2080;
      v44 = "RoutePlanningSessionConfiguration.m";
      v45 = 1024;
      v46 = 38;
      v47 = 2080;
      v48 = "companionContext != nil";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v35 = sub_10006D178();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v42 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!managerCopy)
  {
    v37 = sub_10006D178();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v42 = "[RoutePlanningSessionConfiguration initWithWaypointRequests:routeLoadingTaskFactory:traits:companionContext:locationManager:]";
      v43 = 2080;
      v44 = "RoutePlanningSessionConfiguration.m";
      v45 = 1024;
      v46 = 39;
      v47 = 2080;
      v48 = "locationManager != nil";
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v38 = sub_10006D178();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v42 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v40.receiver = self;
  v40.super_class = RoutePlanningSessionConfiguration;
  v17 = [(RoutePlanningSessionConfiguration *)&v40 init];
  if (v17)
  {
    v18 = [requestsCopy copy];
    waypointRequests = v17->_waypointRequests;
    v17->_waypointRequests = v18;

    objc_storeStrong(&v17->_routeLoadingTaskFactory, factory);
    v20 = [traitsCopy copy];
    traits = v17->_traits;
    v17->_traits = v20;

    v22 = [contextCopy copy];
    companionContext = v17->_companionContext;
    v17->_companionContext = v22;

    v17->_ignoreMapType = 1;
    v17->_initialTransportType = 0;
    objc_storeStrong(&v17->_locationManager, manager);
  }

  return v17;
}

@end