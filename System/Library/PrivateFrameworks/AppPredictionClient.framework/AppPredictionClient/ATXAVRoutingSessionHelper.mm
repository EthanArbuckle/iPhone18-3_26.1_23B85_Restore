@interface ATXAVRoutingSessionHelper
- (ATXAVRouteInfo)predictedRouteInfo;
- (ATXAVRoutingSessionHelper)initWithAcceptThreshold:(float)a3 avRoutingSessionManager:(id)a4;
- (id)_atxAVRouteInfoWithRoute:(id)a3;
- (id)_filterTopRouteFromRoutes:(id)a3 withAcceptThreshold:(float)a4;
- (id)_predictedRouteInfoWithAcceptThreshold:(float)a3 prefersLikelyDestinationsOverCurrentRoutingSession:(BOOL)a4;
- (id)_predictedRouteWithAcceptThreshold:(float)a3;
- (id)_selectedOrPendingRoute;
- (void)_selectedOrPendingRoute;
@end

@implementation ATXAVRoutingSessionHelper

- (ATXAVRoutingSessionHelper)initWithAcceptThreshold:(float)a3 avRoutingSessionManager:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = ATXAVRoutingSessionHelper;
  v7 = [(ATXAVRoutingSessionHelper *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_threshold = a3;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = [ATXAVFoundationRoutingSessionManager() longFormVideoRoutingSessionManager];
    }

    avRoutingSessionManager = v8->_avRoutingSessionManager;
    v8->_avRoutingSessionManager = v9;
  }

  return v8;
}

- (ATXAVRouteInfo)predictedRouteInfo
{
  internalPredictedRouteInfo = self->_internalPredictedRouteInfo;
  if (!internalPredictedRouteInfo)
  {
    threshold = self->_threshold;
    v5 = [(AVRoutingSessionManager *)self->_avRoutingSessionManager prefersLikelyDestinationsOverCurrentRoutingSession];
    *&v6 = threshold;
    v7 = [(ATXAVRoutingSessionHelper *)self _predictedRouteInfoWithAcceptThreshold:v5 prefersLikelyDestinationsOverCurrentRoutingSession:v6];
    v8 = self->_internalPredictedRouteInfo;
    self->_internalPredictedRouteInfo = v7;

    internalPredictedRouteInfo = self->_internalPredictedRouteInfo;
  }

  return internalPredictedRouteInfo;
}

- (id)_predictedRouteInfoWithAcceptThreshold:(float)a3 prefersLikelyDestinationsOverCurrentRoutingSession:(BOOL)a4
{
  v4 = a4;
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXAVRoutingSessionHelper _predictedRouteInfoWithAcceptThreshold:v4 prefersLikelyDestinationsOverCurrentRoutingSession:v7];
  }

  if (v4)
  {
    *&v8 = a3;
    v9 = [(ATXAVRoutingSessionHelper *)self _predictedRouteWithAcceptThreshold:v8];
    if (!v9)
    {
      v9 = [(ATXAVRoutingSessionHelper *)self _selectedOrPendingRoute];
    }
  }

  else
  {
    v9 = [(ATXAVRoutingSessionHelper *)self _selectedOrPendingRoute];
    if (!v9)
    {
      *&v10 = a3;
      v9 = [(ATXAVRoutingSessionHelper *)self _predictedRouteWithAcceptThreshold:v10];
    }
  }

  v11 = v9;
  v12 = [(ATXAVRoutingSessionHelper *)self _atxAVRouteInfoWithRoute:v9];

  return v12;
}

- (id)_predictedRouteWithAcceptThreshold:(float)a3
{
  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAVRoutingSessionHelper *)v5 _predictedRouteWithAcceptThreshold:a3];
  }

  v6 = [(AVRoutingSessionManager *)self->_avRoutingSessionManager allLikelyDestinations];
  *&v7 = a3;
  v8 = [(ATXAVRoutingSessionHelper *)self _filterTopRouteFromRoutes:v6 withAcceptThreshold:v7];

  return v8;
}

- (id)_selectedOrPendingRoute
{
  v2 = [(AVRoutingSessionManager *)self->_avRoutingSessionManager currentRoutingSession];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 destination];

    if (v4)
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [(ATXAVRoutingSessionHelper *)v3 _selectedOrPendingRoute];
      }

      v4 = [v3 destination];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_filterTopRouteFromRoutes:(id)a3 withAcceptThreshold:(float)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    [v7 probability];
    v8 = 0;
    if (v9 > a4)
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

- (id)_atxAVRouteInfoWithRoute:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v12 = 0;
    goto LABEL_14;
  }

  v5 = [v3 outputDeviceDescriptions];
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    ATXAVFoundationOutputDevice();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v5 objectAtIndexedSubscript:0];
      v9 = [v8 name];

      v10 = [v5 objectAtIndexedSubscript:0];
      v11 = [v10 deviceID];

      if (!v9)
      {
        goto LABEL_11;
      }

      v12 = 0;
      if (![v9 length] || !v11)
      {
        goto LABEL_12;
      }

      if ([v11 length])
      {
        v12 = -[ATXAVRouteInfo initWithDeviceName:deviceID:isExternalRoute:]([ATXAVRouteInfo alloc], "initWithDeviceName:deviceID:isExternalRoute:", v9, v11, [v4 providesExternalVideoPlayback]);
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
  v3 = [a1 destination];
  v4 = [v3 outputDeviceDescriptions];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "Found selected / pending route: %@", &v5, 0xCu);
}

@end