@interface RAPWebBundleRouteStepContext
- (RAPWebBundleRouteStepContext)initWithRouteStep:(id)step isMissedStep:(BOOL)missedStep aggregatedData:(id)data locales:(id)locales mapSnapshotId:(id)id routeIndex:(unint64_t)index;
- (id)context;
@end

@implementation RAPWebBundleRouteStepContext

- (id)context
{
  v34.receiver = self;
  v34.super_class = RAPWebBundleRouteStepContext;
  context = [(RAPWebBundleBaseContext *)&v34 context];
  v4 = [context mutableCopy];

  [v4 setObject:self->_aggregatedData forKeyedSubscript:@"initialData"];
  v5 = +[NSMutableDictionary dictionary];
  v6 = [NSNumber numberWithUnsignedInt:[(GEOComposedRouteStep *)self->_step stepID]];
  [v5 setObject:v6 forKeyedSubscript:@"stepId"];

  v7 = [NSNumber numberWithUnsignedInteger:self->_routeIndex];
  [v5 setObject:v7 forKeyedSubscript:@"routeIndex"];

  v8 = [(GEOComposedRouteStep *)self->_step contentsForContext:2];
  instruction = [v8 instruction];
  [v5 setObject:instruction forKeyedSubscript:@"title"];

  v10 = [v8 stringForDistance:-1.0];
  [v5 setObject:v10 forKeyedSubscript:@"subtitle"];

  [v5 setObject:@"RAPManeuverIconIdentifier" forKeyedSubscript:@"icon"];
  [v5 setObject:self->_mapSnapshotId forKeyedSubscript:@"map"];
  [v5 setObject:self->_mapSnapshotId forKeyedSubscript:@"routeStepImageId"];
  composedRoute = [(GEOComposedRouteStep *)self->_step composedRoute];
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [composedRoute indexInResponse]);
  [v5 setObject:v12 forKeyedSubscript:@"directionsResponseIndex"];

  waypoint = [(GEOComposedRouteStep *)self->_step waypoint];
  findMyHandleID = [waypoint findMyHandleID];
  v15 = [NSNumber numberWithInt:findMyHandleID != 0];
  [v5 setObject:v15 forKeyedSubscript:@"isRouteToPerson"];

  [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:@"checked"];
  v37 = @"focused";
  v16 = [v5 copy];
  v38 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  [v4 setObject:v17 forKeyedSubscript:@"navigation"];

  if (self->_isMissedStep)
  {
    [v4 setObject:@"navigation.missed.title" forKeyedSubscript:@"titleOverrideKey"];
  }

  composedRoute2 = [(GEOComposedRouteStep *)self->_step composedRoute];
  v19 = [composedRoute2 legIndexForStepIndex:{-[GEOComposedRouteStep stepIndex](self->_step, "stepIndex")}];

  composedRoute3 = [(GEOComposedRouteStep *)self->_step composedRoute];
  legs = [composedRoute3 legs];
  v22 = [legs count];

  if (v19 >= v22)
  {
    v35[0] = @"entityName";
  }

  else
  {
    composedRoute4 = [(GEOComposedRouteStep *)self->_step composedRoute];
    legs2 = [composedRoute4 legs];
    v25 = [legs2 objectAtIndexedSubscript:v19];
    destination = [v25 destination];
    navDisplayName = [destination navDisplayName];

    v35[0] = @"entityName";
    if (navDisplayName)
    {
      v28 = 0;
      rapDestinationTitle = navDisplayName;
      goto LABEL_8;
    }
  }

  composedRoute4 = [(GEOComposedRouteStep *)self->_step composedRoute];
  rapDestinationTitle = [composedRoute4 rapDestinationTitle];
  navDisplayName = 0;
  v28 = 1;
LABEL_8:
  v35[1] = @"structuredAddressThoroughfare";
  v36[0] = rapDestinationTitle;
  maneuverRoadName = [(GEOComposedRouteStep *)self->_step maneuverRoadName];
  v36[1] = maneuverRoadName;
  v31 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
  [v4 setObject:v31 forKeyedSubscript:@"place"];

  if (v28)
  {
  }

  v32 = [v4 copy];

  return v32;
}

- (RAPWebBundleRouteStepContext)initWithRouteStep:(id)step isMissedStep:(BOOL)missedStep aggregatedData:(id)data locales:(id)locales mapSnapshotId:(id)id routeIndex:(unint64_t)index
{
  stepCopy = step;
  dataCopy = data;
  localesCopy = locales;
  idCopy = id;
  v19 = stepCopy;
  transportType = [v19 transportType];
  switch(transportType)
  {
    case 3u:
      isArrivalStep = [v19 isArrivalStep];
      v22 = @"navigationCyclingStep";
      v23 = @"navigationCyclingArrival";
      goto LABEL_7;
    case 2u:
      isArrivalStep = [v19 isArrivalStep];
      v22 = @"navigationWalkingStep";
      v23 = @"navigationWalkingArrival";
      goto LABEL_7;
    case 0u:
      isArrivalStep = [v19 isArrivalStep];
      v22 = @"navigationDrivingStep";
      v23 = @"navigationDrivingArrival";
LABEL_7:
      if (isArrivalStep)
      {
        v22 = v23;
      }

      v24 = v22;

      v33.receiver = self;
      v33.super_class = RAPWebBundleRouteStepContext;
      v25 = [(RAPWebBundleBaseContext *)&v33 initWithType:v24 locales:localesCopy];
      v26 = v25;
      if (v25)
      {
        objc_storeStrong(&v25->_step, step);
        v26->_isMissedStep = missedStep;
        v27 = [dataCopy copy];
        aggregatedData = v26->_aggregatedData;
        v26->_aggregatedData = v27;

        v29 = [idCopy copy];
        mapSnapshotId = v26->_mapSnapshotId;
        v26->_mapSnapshotId = v29;

        v26->_routeIndex = index;
      }

      self = v26;
      selfCopy = self;
      goto LABEL_15;
  }

  v24 = sub_100798874();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v35 = v19;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "Tried to create RAPWebBundleRouteStepContext for unsupported transportType: %@", buf, 0xCu);
  }

  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

@end