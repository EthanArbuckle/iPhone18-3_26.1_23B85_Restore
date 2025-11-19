@interface RoutePlanningSessionConfiguration
- (BOOL)hasTransportType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNavigationTracePlayback;
- (BOOL)isResumingMultipointRoute;
- (BOOL)shouldAutoLaunchNavigation;
- (GEOComposedGeometryRoutePersistentData)persistentData;
- (GEOCountryConfiguration)countryConfiguration;
- (GEOResumeRouteHandle)resumeRouteHandle;
- (NSSet)supportedTransportTypes;
- (NSString)tracePlaybackPath;
- (RoutePlanningSessionConfiguration)initWithWaypointRequests:(id)a3 routeLoadingTaskFactory:(id)a4 traits:(id)a5;
- (RoutePlanningSessionConfiguration)initWithWaypointRequests:(id)a3 routeLoadingTaskFactory:(id)a4 traits:(id)a5 companionContext:(id)a6 locationManager:(id)a7;
- (RoutePlanningSessionConfiguration)initWithWaypointRequests:(id)a3 traits:(id)a4 existingTiming:(id)a5 isResumingMultipointRoute:(BOOL)a6 resumeRouteHandle:(id)a7 persistentData:(id)a8;
- (id)configurationByModifyingRouteLoadingTaskFactory:(id)a3 andDedupingWaypointRequests:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)setCountryConfiguration:(id)a3;
@end

@implementation RoutePlanningSessionConfiguration

- (id)configurationByModifyingRouteLoadingTaskFactory:(id)a3 andDedupingWaypointRequests:(id)a4
{
  v5 = a3;
  v23 = a4;
  if (!v5)
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
        [v23 enumerateKeysAndObjectsUsingBlock:v25];
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

  v11 = [(RoutePlanningSessionConfiguration *)self traits];
  v12 = [v11 copyByIncrementingSessionCounters];

  v13 = self;
  v14 = [(RoutePlanningSessionConfiguration *)v13 companionContext];
  v15 = +[MKLocationManager sharedLocationManager];
  v16 = [(RoutePlanningSessionConfiguration *)v13 initWithWaypointRequests:v24 routeLoadingTaskFactory:v5 traits:v12 companionContext:v14 locationManager:v15];

  return v16;
}

- (RoutePlanningSessionConfiguration)initWithWaypointRequests:(id)a3 routeLoadingTaskFactory:(id)a4 traits:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[GEOCompanionRouteContext context];
  v12 = +[MKLocationManager sharedLocationManager];
  v13 = [(RoutePlanningSessionConfiguration *)self initWithWaypointRequests:v10 routeLoadingTaskFactory:v9 traits:v8 companionContext:v11 locationManager:v12];

  return v13;
}

- (RoutePlanningSessionConfiguration)initWithWaypointRequests:(id)a3 traits:(id)a4 existingTiming:(id)a5 isResumingMultipointRoute:(BOOL)a6 resumeRouteHandle:(id)a7 persistentData:(id)a8
{
  v9 = a6;
  v14 = a8;
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [NavdRouteLoadingTaskFactory alloc];
  v20 = +[NSUserDefaults standardUserDefaults];
  v21 = [(NavdRouteLoadingTaskFactory *)v19 initWithUserDefaults:v20 existingTiming:v16 traits:v17 isResumingMultipointRoute:v9 resumeRouteHandle:v15 persistentData:v14];

  v22 = [(RoutePlanningSessionConfiguration *)self initWithWaypointRequests:v18 routeLoadingTaskFactory:v21 traits:v17];
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

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (v7 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [(RoutePlanningSessionConfiguration *)v8 waypointRequests];
      if (v9 || self->_waypointRequests)
      {
        v3 = [(RoutePlanningSessionConfiguration *)v8 waypointRequests];
        if (![v3 isEqual:self->_waypointRequests])
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

      v12 = [(RoutePlanningSessionConfiguration *)v8 routeLoadingTaskFactory];
      if (v12 || self->_routeLoadingTaskFactory)
      {
        v4 = [(RoutePlanningSessionConfiguration *)v8 routeLoadingTaskFactory];
        if (![v4 isEqual:self->_routeLoadingTaskFactory])
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

      v13 = [(RoutePlanningSessionConfiguration *)v8 traits];
      if (v13 || self->_traits)
      {
        v5 = [(RoutePlanningSessionConfiguration *)v8 traits];
        if (![v5 isEqual:self->_traits])
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

      v21 = [(RoutePlanningSessionConfiguration *)v8 companionContext];
      if (v21 || self->_companionContext)
      {
        v20 = [(RoutePlanningSessionConfiguration *)v8 companionContext];
        if (![v20 isEqual:self->_companionContext])
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

      v18 = [(RoutePlanningSessionConfiguration *)v8 navigationAutoLaunchDelay];
      if (v18 || self->_navigationAutoLaunchDelay)
      {
        v17 = [(RoutePlanningSessionConfiguration *)v8 navigationAutoLaunchDelay];
        if (![v17 isEqual:self->_navigationAutoLaunchDelay])
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
  v2 = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
  v3 = [v2 persistentData];

  return v3;
}

- (GEOResumeRouteHandle)resumeRouteHandle
{
  v2 = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
  v3 = [v2 resumeRouteHandle];

  return v3;
}

- (BOOL)isResumingMultipointRoute
{
  v2 = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
  v3 = [v2 isResumingMultipointRoute];

  return v3;
}

- (BOOL)shouldAutoLaunchNavigation
{
  v2 = [(RoutePlanningSessionConfiguration *)self navigationAutoLaunchDelay];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasTransportType:(int64_t)a3
{
  v4 = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
  v5 = [v4 supportedTransportTypes];
  v6 = [NSNumber numberWithInteger:a3];
  v7 = [v5 containsObject:v6];

  return v7;
}

- (NSSet)supportedTransportTypes
{
  v2 = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
  v3 = [v2 supportedTransportTypes];

  return v3;
}

- (NSString)tracePlaybackPath
{
  v2 = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 tracePath];

  return v5;
}

- (BOOL)isNavigationTracePlayback
{
  v2 = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
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

- (void)setCountryConfiguration:(id)a3
{
  v5 = a3;
  if (self->_countryConfiguration != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_countryConfiguration, a3);
    countryConfiguration = self->_countryConfiguration;
    v7 = [(RoutePlanningSessionConfiguration *)self routeLoadingTaskFactory];
    [v7 setCountryConfiguration:countryConfiguration];

    v5 = v8;
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
  v7 = [(RoutePlanningSessionConfiguration *)self tracePlaybackPath];
  [v5 appendFormat:@"\ntracePlaybackPath:(%@)", v7];

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
  v13 = [(RoutePlanningSessionConfiguration *)self supportedTransportTypes];
  [v5 appendFormat:@"\nsupportedTransportTypes:(%@)", v13];

  v14 = [(RoutePlanningSessionConfiguration *)self automaticSharingContacts];
  [v5 appendFormat:@"\nautomatic sharing:(%@)", v14];

  v15 = [(RoutePlanningSessionConfiguration *)self shortcutIdentifier];
  [v5 appendFormat:@"\nshortcutIdentifier:(%@)", v15];

  v16 = [(RoutePlanningSessionConfiguration *)self originalHistoryEntryIdentifier];
  [v5 appendFormat:@"\noriginalHistoryEntryIdentifier:(%@)", v16];

  v17 = [v5 copy];

  return v17;
}

- (RoutePlanningSessionConfiguration)initWithWaypointRequests:(id)a3 routeLoadingTaskFactory:(id)a4 traits:(id)a5 companionContext:(id)a6 locationManager:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v12 count] <= 1)
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

  if (!v13)
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

  if (!v14)
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

  if (!v15)
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

  if (!v16)
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
    v18 = [v12 copy];
    waypointRequests = v17->_waypointRequests;
    v17->_waypointRequests = v18;

    objc_storeStrong(&v17->_routeLoadingTaskFactory, a4);
    v20 = [v14 copy];
    traits = v17->_traits;
    v17->_traits = v20;

    v22 = [v15 copy];
    companionContext = v17->_companionContext;
    v17->_companionContext = v22;

    v17->_ignoreMapType = 1;
    v17->_initialTransportType = 0;
    objc_storeStrong(&v17->_locationManager, a7);
  }

  return v17;
}

@end