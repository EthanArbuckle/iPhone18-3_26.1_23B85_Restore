@interface TraceRouteLoadingTaskFactory
- (GEOCountryConfiguration)countryConfiguration;
- (NSSet)supportedTransportTypes;
- (TraceRouteLoadingTask)traceLoadingTask;
- (TraceRouteLoadingTaskFactory)initWithTracePath:(id)path outError:(id *)error;
- (id)taskForRoutes:(id)routes;
- (id)taskForTransportType:(int64_t)type waypointSet:(id)set;
- (void)setCountryConfiguration:(id)configuration;
@end

@implementation TraceRouteLoadingTaskFactory

- (id)taskForRoutes:(id)routes
{
  routesCopy = routes;
  v4 = [[RouteUpdatingNavigationServiceTask alloc] initWithRoutes:routesCopy];

  return v4;
}

- (id)taskForTransportType:(int64_t)type waypointSet:(id)set
{
  v6 = [(TraceRouteLoadingTaskFactory *)self supportedTransportTypes:type];
  v7 = [NSNumber numberWithInteger:type];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    traceLoadingTask = [(TraceRouteLoadingTaskFactory *)self traceLoadingTask];
  }

  else
  {
    traceLoadingTask = 0;
  }

  return traceLoadingTask;
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

- (TraceRouteLoadingTask)traceLoadingTask
{
  traceLoadingTask = self->_traceLoadingTask;
  if (!traceLoadingTask)
  {
    tracePath = [(TraceRouteLoadingTaskFactory *)self tracePath];
    v5 = [[TraceRouteLoadingTask alloc] initWithTracePath:tracePath];
    v6 = self->_traceLoadingTask;
    self->_traceLoadingTask = v5;

    traceLoadingTask = self->_traceLoadingTask;
  }

  return traceLoadingTask;
}

- (NSSet)supportedTransportTypes
{
  v2 = [NSNumber numberWithInteger:self->_traceTransportType];
  v3 = [NSSet setWithObject:v2];

  return v3;
}

- (TraceRouteLoadingTaskFactory)initWithTracePath:(id)path outError:(id *)error
{
  pathCopy = path;
  v40.receiver = self;
  v40.super_class = TraceRouteLoadingTaskFactory;
  v8 = [(TraceRouteLoadingTaskFactory *)&v40 init];
  v9 = v8;
  if (!v8)
  {
LABEL_17:
    v20 = v9;
    goto LABEL_18;
  }

  objc_storeStrong(&v8->_tracePath, path);
  v10 = objc_opt_new();
  tracePath = v9->_tracePath;
  v39 = 0;
  v12 = [v10 loadTraceWithPath:tracePath options:8 outError:&v39];
  v13 = v39;
  if (!v13)
  {
    v21 = [v12 mainTransportType] - 1;
    v34 = pathCopy;
    if (v21 > 5)
    {
      v22 = 1;
    }

    else
    {
      v22 = qword_101216278[v21];
    }

    v9->_traceTransportType = v22;
    v23 = objc_alloc_init(NSMutableArray);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    directions = [v12 directions];
    firstObject = [directions firstObject];
    waypoints = [firstObject waypoints];

    v27 = [waypoints countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v36;
      do
      {
        v30 = 0;
        do
        {
          if (*v36 != v29)
          {
            objc_enumerationMutation(waypoints);
          }

          v31 = [[TraceWaypointRequest alloc] initWithWaypoint:*(*(&v35 + 1) + 8 * v30)];
          [(NSArray *)v23 addObject:v31];

          v30 = v30 + 1;
        }

        while (v28 != v30);
        v28 = [waypoints countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v28);
    }

    waypointRequests = v9->_waypointRequests;
    v9->_waypointRequests = v23;

    pathCopy = v34;
    goto LABEL_17;
  }

  v14 = v13;
  v9->_traceTransportType = 0;
  v15 = objc_opt_new();
  v41[0] = v15;
  v16 = objc_opt_new();
  v41[1] = v16;
  v17 = [NSArray arrayWithObjects:v41 count:2];
  v18 = v9->_waypointRequests;
  v9->_waypointRequests = v17;

  if (error)
  {
    v19 = v14;
    *error = v14;
  }

  v20 = 0;
LABEL_18:

  return v20;
}

@end