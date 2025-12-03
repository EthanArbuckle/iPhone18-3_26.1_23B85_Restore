@interface ATXAVRoutingSessionHelper
- (ATXAVRouteInfo)predictedRouteInfo;
- (ATXAVRoutingSessionHelper)initWithAcceptThreshold:(float)threshold avRoutingSessionManager:(id)manager;
- (id)_atxAVRouteInfoWithRoute:(id)route;
- (id)_filterTopRouteFromRoutes:(id)routes withAcceptThreshold:(float)threshold;
- (id)_predictedRouteInfoWithAcceptThreshold:(float)threshold prefersLikelyDestinationsOverCurrentRoutingSession:(BOOL)session;
- (id)_predictedRouteWithAcceptThreshold:(float)threshold;
- (id)_selectedOrPendingRoute;
- (void)_selectedOrPendingRoute;
@end

@implementation ATXAVRoutingSessionHelper

- (ATXAVRoutingSessionHelper)initWithAcceptThreshold:(float)threshold avRoutingSessionManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = ATXAVRoutingSessionHelper;
  v7 = [(ATXAVRoutingSessionHelper *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_threshold = threshold;
    if (managerCopy)
    {
      longFormVideoRoutingSessionManager = managerCopy;
    }

    else
    {
      longFormVideoRoutingSessionManager = [ATXAVFoundationRoutingSessionManager() longFormVideoRoutingSessionManager];
    }

    avRoutingSessionManager = v8->_avRoutingSessionManager;
    v8->_avRoutingSessionManager = longFormVideoRoutingSessionManager;
  }

  return v8;
}

- (ATXAVRouteInfo)predictedRouteInfo
{
  internalPredictedRouteInfo = self->_internalPredictedRouteInfo;
  if (!internalPredictedRouteInfo)
  {
    threshold = self->_threshold;
    prefersLikelyDestinationsOverCurrentRoutingSession = [(AVRoutingSessionManager *)self->_avRoutingSessionManager prefersLikelyDestinationsOverCurrentRoutingSession];
    *&v6 = threshold;
    v7 = [(ATXAVRoutingSessionHelper *)self _predictedRouteInfoWithAcceptThreshold:prefersLikelyDestinationsOverCurrentRoutingSession prefersLikelyDestinationsOverCurrentRoutingSession:v6];
    v8 = self->_internalPredictedRouteInfo;
    self->_internalPredictedRouteInfo = v7;

    internalPredictedRouteInfo = self->_internalPredictedRouteInfo;
  }

  return internalPredictedRouteInfo;
}

- (id)_predictedRouteInfoWithAcceptThreshold:(float)threshold prefersLikelyDestinationsOverCurrentRoutingSession:(BOOL)session
{
  sessionCopy = session;
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXAVRoutingSessionHelper _predictedRouteInfoWithAcceptThreshold:sessionCopy prefersLikelyDestinationsOverCurrentRoutingSession:v7];
  }

  if (sessionCopy)
  {
    *&v8 = threshold;
    _selectedOrPendingRoute = [(ATXAVRoutingSessionHelper *)self _predictedRouteWithAcceptThreshold:v8];
    if (!_selectedOrPendingRoute)
    {
      _selectedOrPendingRoute = [(ATXAVRoutingSessionHelper *)self _selectedOrPendingRoute];
    }
  }

  else
  {
    _selectedOrPendingRoute = [(ATXAVRoutingSessionHelper *)self _selectedOrPendingRoute];
    if (!_selectedOrPendingRoute)
    {
      *&v10 = threshold;
      _selectedOrPendingRoute = [(ATXAVRoutingSessionHelper *)self _predictedRouteWithAcceptThreshold:v10];
    }
  }

  v11 = _selectedOrPendingRoute;
  v12 = [(ATXAVRoutingSessionHelper *)self _atxAVRouteInfoWithRoute:_selectedOrPendingRoute];

  return v12;
}

- (id)_predictedRouteWithAcceptThreshold:(float)threshold
{
  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAVRoutingSessionHelper *)v5 _predictedRouteWithAcceptThreshold:threshold];
  }

  allLikelyDestinations = [(AVRoutingSessionManager *)self->_avRoutingSessionManager allLikelyDestinations];
  *&v7 = threshold;
  v8 = [(ATXAVRoutingSessionHelper *)self _filterTopRouteFromRoutes:allLikelyDestinations withAcceptThreshold:v7];

  return v8;
}

- (id)_selectedOrPendingRoute
{
  currentRoutingSession = [(AVRoutingSessionManager *)self->_avRoutingSessionManager currentRoutingSession];
  v3 = currentRoutingSession;
  if (currentRoutingSession)
  {
    destination = [currentRoutingSession destination];

    if (destination)
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [(ATXAVRoutingSessionHelper *)v3 _selectedOrPendingRoute];
      }

      destination = [v3 destination];
    }
  }

  else
  {
    destination = 0;
  }

  return destination;
}

- (id)_filterTopRouteFromRoutes:(id)routes withAcceptThreshold:(float)threshold
{
  routesCopy = routes;
  v6 = routesCopy;
  if (routesCopy && [routesCopy count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    [v7 probability];
    v8 = 0;
    if (v9 > threshold)
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_atxAVRouteInfoWithRoute:(id)route
{
  routeCopy = route;
  v4 = routeCopy;
  if (!routeCopy)
  {
    v12 = 0;
    goto LABEL_14;
  }

  outputDeviceDescriptions = [routeCopy outputDeviceDescriptions];
  if ([outputDeviceDescriptions count])
  {
    v6 = [outputDeviceDescriptions objectAtIndexedSubscript:0];
    ATXAVFoundationOutputDevice();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [outputDeviceDescriptions objectAtIndexedSubscript:0];
      name = [v8 name];

      v10 = [outputDeviceDescriptions objectAtIndexedSubscript:0];
      deviceID = [v10 deviceID];

      if (!name)
      {
        goto LABEL_11;
      }

      v12 = 0;
      if (![name length] || !deviceID)
      {
        goto LABEL_12;
      }

      if ([deviceID length])
      {
        v12 = -[ATXAVRouteInfo initWithDeviceName:deviceID:isExternalRoute:]([ATXAVRouteInfo alloc], "initWithDeviceName:deviceID:isExternalRoute:", name, deviceID, [v4 providesExternalVideoPlayback]);
      }

      else
      {
LABEL_11:
        v12 = 0;
      }

LABEL_12:

      goto LABEL_13;
    }
  }

  v12 = 0;
LABEL_13:

LABEL_14:

  return v12;
}

- (void)_predictedRouteInfoWithAcceptThreshold:(char)a1 prefersLikelyDestinationsOverCurrentRoutingSession:(NSObject *)a2 .cold.1(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "Prefer predicted route over current seesion route: %{BOOL}d", v2, 8u);
}

- (void)_predictedRouteWithAcceptThreshold:(os_log_t)log .cold.1(os_log_t log, float a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_1BF549000, log, OS_LOG_TYPE_DEBUG, "Find predicted route with accept threshold: %fd", &v2, 0xCu);
}

- (void)_selectedOrPendingRoute
{
  v7 = *MEMORY[0x1E69E9840];
  destination = [self destination];
  outputDeviceDescriptions = [destination outputDeviceDescriptions];
  v5 = 138412290;
  v6 = outputDeviceDescriptions;
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "Found selected / pending route: %@", &v5, 0xCu);
}

@end