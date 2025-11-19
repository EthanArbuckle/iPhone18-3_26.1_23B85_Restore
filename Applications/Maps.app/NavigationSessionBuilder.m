@interface NavigationSessionBuilder
- (NavigationDetailsOptions)navigationDetailsOptions;
- (NavigationSessionBuilder)initWithRouteCollection:(id)a3 navigationDetailsOptions:(NavigationDetailsOptions *)a4 mapServiceTraits:(id)a5 sessionInitiator:(unint64_t)a6 isResumingMultipointRoute:(BOOL)a7 tracePlaybackPath:(id)a8;
- (id)build;
- (void)setNavigationDetailsOptions:(NavigationDetailsOptions *)a3;
@end

@implementation NavigationSessionBuilder

- (void)setNavigationDetailsOptions:(NavigationDetailsOptions *)a3
{
  v3 = *&a3->shouldSimulateLocations;
  v4 = *&a3->guidanceType;
  v5 = *&a3->isReconnecting;
  self->_navigationDetailsOptions.navigationModeContext = a3->navigationModeContext;
  *&self->_navigationDetailsOptions.guidanceType = v4;
  *&self->_navigationDetailsOptions.isReconnecting = v5;
  *&self->_navigationDetailsOptions.shouldSimulateLocations = v3;
}

- (NavigationDetailsOptions)navigationDetailsOptions
{
  v3 = *&self[1].preferredNavigationType;
  *&retstr->shouldSimulateLocations = *&self->navigationModeContext;
  *&retstr->guidanceType = v3;
  *&retstr->isReconnecting = *&self[1].navigationMode;
  retstr->navigationModeContext = self[1].guidanceLevelOverride;
  return self;
}

- (id)build
{
  tracePlaybackPath = self->_tracePlaybackPath;
  v4 = [StartNavigationDetailsBuilder alloc];
  if (tracePlaybackPath)
  {
    v5 = [(StartNavigationDetailsBuilder *)v4 initWithTracePlaybackPath:self->_tracePlaybackPath routeCollection:self->_routeCollection];
  }

  else
  {
    v5 = [(StartNavigationDetailsBuilder *)v4 initWithRouteCollection:self->_routeCollection];
  }

  v6 = v5;
  [(GEOMapServiceTraits *)self->_mapServiceTraits useOnlineToOfflineFailoverRequestModeIfAllowed];
  [(StartNavigationDetailsBuilder *)v6 setTraits:self->_mapServiceTraits];
  v7 = [(RouteCollection *)self->_routeCollection currentRoute];
  v8 = [v7 routeAttributes];
  v9 = [v8 hasTimepoint];

  if (v9)
  {
    self->_navigationDetailsOptions.preferredNavigationType = 2;
    v10 = sub_100035E6C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Changing navigation type to stepping as this is a planned trip", v17, 2u);
    }
  }

  v11 = *&self->_navigationDetailsOptions.guidanceType;
  v17[0] = *&self->_navigationDetailsOptions.shouldSimulateLocations;
  v17[1] = v11;
  v17[2] = *&self->_navigationDetailsOptions.isReconnecting;
  navigationModeContext = self->_navigationDetailsOptions.navigationModeContext;
  [(StartNavigationDetailsBuilder *)v6 setOptions:v17];
  [(StartNavigationDetailsBuilder *)v6 setIsResumingMultipointRoute:self->_isResumingMultipointRoute];
  v12 = [NavigationSessionConfiguration alloc];
  v13 = [(StartNavigationDetailsBuilder *)v6 buildNavigationDetails];
  v14 = [(NavigationSessionConfiguration *)v12 initWithStartNavigationDetails:v13 routeCollection:self->_routeCollection traits:self->_mapServiceTraits isETAOnlyMode:self->_navigationDetailsOptions.isETAOnlyMode];

  v15 = [[NavigationSession alloc] initWithInitiator:self->_mapsSessionInitiator configuration:v14];

  return v15;
}

- (NavigationSessionBuilder)initWithRouteCollection:(id)a3 navigationDetailsOptions:(NavigationDetailsOptions *)a4 mapServiceTraits:(id)a5 sessionInitiator:(unint64_t)a6 isResumingMultipointRoute:(BOOL)a7 tracePlaybackPath:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v26.receiver = self;
  v26.super_class = NavigationSessionBuilder;
  v18 = [(NavigationSessionBuilder *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_routeCollection, a3);
    v20 = *&a4->shouldSimulateLocations;
    v21 = *&a4->guidanceType;
    v22 = *&a4->isReconnecting;
    v19->_navigationDetailsOptions.navigationModeContext = a4->navigationModeContext;
    *&v19->_navigationDetailsOptions.guidanceType = v21;
    *&v19->_navigationDetailsOptions.isReconnecting = v22;
    *&v19->_navigationDetailsOptions.shouldSimulateLocations = v20;
    objc_storeStrong(&v19->_mapServiceTraits, a5);
    v19->_mapsSessionInitiator = a6;
    v19->_isResumingMultipointRoute = a7;
    v23 = [v17 copy];
    tracePlaybackPath = v19->_tracePlaybackPath;
    v19->_tracePlaybackPath = v23;
  }

  return v19;
}

@end