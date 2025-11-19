@interface RAPWebBundleRouteStepContext
- (RAPWebBundleRouteStepContext)initWithRouteStep:(id)a3 isMissedStep:(BOOL)a4 aggregatedData:(id)a5 locales:(id)a6 mapSnapshotId:(id)a7 routeIndex:(unint64_t)a8;
- (id)context;
@end

@implementation RAPWebBundleRouteStepContext

- (id)context
{
  v34.receiver = self;
  v34.super_class = RAPWebBundleRouteStepContext;
  v3 = [(RAPWebBundleBaseContext *)&v34 context];
  v4 = [v3 mutableCopy];

  [v4 setObject:self->_aggregatedData forKeyedSubscript:@"initialData"];
  v5 = +[NSMutableDictionary dictionary];
  v6 = [NSNumber numberWithUnsignedInt:[(GEOComposedRouteStep *)self->_step stepID]];
  [v5 setObject:v6 forKeyedSubscript:@"stepId"];

  v7 = [NSNumber numberWithUnsignedInteger:self->_routeIndex];
  [v5 setObject:v7 forKeyedSubscript:@"routeIndex"];

  v8 = [(GEOComposedRouteStep *)self->_step contentsForContext:2];
  v9 = [v8 instruction];
  [v5 setObject:v9 forKeyedSubscript:@"title"];

  v10 = [v8 stringForDistance:-1.0];
  [v5 setObject:v10 forKeyedSubscript:@"subtitle"];

  [v5 setObject:@"RAPManeuverIconIdentifier" forKeyedSubscript:@"icon"];
  [v5 setObject:self->_mapSnapshotId forKeyedSubscript:@"map"];
  [v5 setObject:self->_mapSnapshotId forKeyedSubscript:@"routeStepImageId"];
  v11 = [(GEOComposedRouteStep *)self->_step composedRoute];
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 indexInResponse]);
  [v5 setObject:v12 forKeyedSubscript:@"directionsResponseIndex"];

  v13 = [(GEOComposedRouteStep *)self->_step waypoint];
  v14 = [v13 findMyHandleID];
  v15 = [NSNumber numberWithInt:v14 != 0];
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

  v18 = [(GEOComposedRouteStep *)self->_step composedRoute];
  v19 = [v18 legIndexForStepIndex:{-[GEOComposedRouteStep stepIndex](self->_step, "stepIndex")}];

  v20 = [(GEOComposedRouteStep *)self->_step composedRoute];
  v21 = [v20 legs];
  v22 = [v21 count];

  if (v19 >= v22)
  {
    v35[0] = @"entityName";
  }

  else
  {
    v23 = [(GEOComposedRouteStep *)self->_step composedRoute];
    v24 = [v23 legs];
    v25 = [v24 objectAtIndexedSubscript:v19];
    v26 = [v25 destination];
    v27 = [v26 navDisplayName];

    v35[0] = @"entityName";
    if (v27)
    {
      v28 = 0;
      v29 = v27;
      goto LABEL_8;
    }
  }

  v23 = [(GEOComposedRouteStep *)self->_step composedRoute];
  v29 = [v23 rapDestinationTitle];
  v27 = 0;
  v28 = 1;
LABEL_8:
  v35[1] = @"structuredAddressThoroughfare";
  v36[0] = v29;
  v30 = [(GEOComposedRouteStep *)self->_step maneuverRoadName];
  v36[1] = v30;
  v31 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
  [v4 setObject:v31 forKeyedSubscript:@"place"];

  if (v28)
  {
  }

  v32 = [v4 copy];

  return v32;
}

- (RAPWebBundleRouteStepContext)initWithRouteStep:(id)a3 isMissedStep:(BOOL)a4 aggregatedData:(id)a5 locales:(id)a6 mapSnapshotId:(id)a7 routeIndex:(unint64_t)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = v15;
  v20 = [v19 transportType];
  switch(v20)
  {
    case 3u:
      v21 = [v19 isArrivalStep];
      v22 = @"navigationCyclingStep";
      v23 = @"navigationCyclingArrival";
      goto LABEL_7;
    case 2u:
      v21 = [v19 isArrivalStep];
      v22 = @"navigationWalkingStep";
      v23 = @"navigationWalkingArrival";
      goto LABEL_7;
    case 0u:
      v21 = [v19 isArrivalStep];
      v22 = @"navigationDrivingStep";
      v23 = @"navigationDrivingArrival";
LABEL_7:
      if (v21)
      {
        v22 = v23;
      }

      v24 = v22;

      v33.receiver = self;
      v33.super_class = RAPWebBundleRouteStepContext;
      v25 = [(RAPWebBundleBaseContext *)&v33 initWithType:v24 locales:v17];
      v26 = v25;
      if (v25)
      {
        objc_storeStrong(&v25->_step, a3);
        v26->_isMissedStep = a4;
        v27 = [v16 copy];
        aggregatedData = v26->_aggregatedData;
        v26->_aggregatedData = v27;

        v29 = [v18 copy];
        mapSnapshotId = v26->_mapSnapshotId;
        v26->_mapSnapshotId = v29;

        v26->_routeIndex = a8;
      }

      self = v26;
      v31 = self;
      goto LABEL_15;
  }

  v24 = sub_100798874();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v35 = v19;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "Tried to create RAPWebBundleRouteStepContext for unsupported transportType: %@", buf, 0xCu);
  }

  v31 = 0;
LABEL_15:

  return v31;
}

@end