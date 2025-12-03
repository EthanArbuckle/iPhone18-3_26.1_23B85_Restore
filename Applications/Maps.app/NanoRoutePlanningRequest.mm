@interface NanoRoutePlanningRequest
+ (id)requestForDirectionsToCustomRoute:(id)route currentLocation:(id)location companionRouteContext:(id)context;
+ (id)requestForDirectionsWithCompanionRouteDetails:(id)details companionRouteContext:(id)context;
+ (id)requestForPlaceholderDirections;
+ (id)requestWithTraceAtPath:(id)path;
+ (id)requestWithWaypoints:(id)waypoints viaTransportType:(int)type traits:(id)traits companionRouteContext:(id)context;
- (NSArray)waypoints;
- (NanoDirectionWaypoint)destinationWaypoint;
- (NanoDirectionWaypoint)originWaypoint;
- (NanoRoutePlanningRequest)init;
- (NanoRoutePlanningRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)requestedCompanionRouteDetails;
- (id)routeAttributes;
- (id)snapshot;
- (int)resolvedTransportType;
- (void)_addTimepointIfNeededToRouteAttributes:(id)attributes;
- (void)_populateCopy:(id)copy;
- (void)_populateRouteAttributes:(id)attributes forTransportType:(int)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NanoRoutePlanningRequest

- (void)_addTimepointIfNeededToRouteAttributes:(id)attributes
{
  attributesCopy = attributes;
  departureDate = [(NanoRoutePlanningRequest *)self departureDate];

  if (departureDate)
  {
    v18 = 0;
    v17 = 0;
    departureDate2 = [(NanoRoutePlanningRequest *)self departureDate];
    [departureDate2 timeIntervalSinceReferenceDate];
    v8 = v7;

    v13 = 0;
    v14 = v8;
    v15 = 0;
LABEL_5:
    v16 = 6;
    [attributesCopy setTimepoint:&v13];
    goto LABEL_6;
  }

  arrivalDate = [(NanoRoutePlanningRequest *)self arrivalDate];

  if (arrivalDate)
  {
    v18 = 0;
    v17 = 0;
    arrivalDate2 = [(NanoRoutePlanningRequest *)self arrivalDate];
    [arrivalDate2 timeIntervalSinceReferenceDate];
    v12 = v11;

    v13 = 0;
    v14 = v12;
    v15 = 1;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_populateRouteAttributes:(id)attributes forTransportType:(int)type
{
  attributesCopy = attributes;
  if (type > 2)
  {
    if (type <= 4)
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      cyclingOptions = [(NanoRoutePlanningRequest *)self cyclingOptions];
      [attributesCopy setCyclingOptions:cyclingOptions];
LABEL_14:

      goto LABEL_17;
    }

    if (type != 5)
    {
      if (type != 6)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

LABEL_12:
    cyclingOptions = [(NanoRoutePlanningRequest *)self walkingOptions];
    [attributesCopy setWalkingOptions:cyclingOptions];
    goto LABEL_14;
  }

  switch(type)
  {
    case 0:
LABEL_11:
      automobileOptions = [(NanoRoutePlanningRequest *)self automobileOptions];
      [attributesCopy setAutomobileOptions:automobileOptions];
LABEL_16:

      [(NanoRoutePlanningRequest *)self _addTimepointIfNeededToRouteAttributes:attributesCopy];
      break;
    case 1:
      automobileOptions = [(NanoRoutePlanningRequest *)self transitOptions];
      [attributesCopy setTransitOptions:automobileOptions];
      goto LABEL_16;
    case 2:
      goto LABEL_12;
  }

LABEL_17:
}

- (id)routeAttributes
{
  resolvedTransportType = [(NanoRoutePlanningRequest *)self resolvedTransportType];
  v4 = [GEORouteAttributes defaultRouteAttributesForTransportType:resolvedTransportType];
  [(NanoRoutePlanningRequest *)self _populateRouteAttributes:v4 forTransportType:resolvedTransportType];

  return v4;
}

- (id)debugDescription
{
  v3 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v38.receiver = self;
  v38.super_class = NanoRoutePlanningRequest;
  v4 = [(NanoRoutePlanningRequest *)&v38 debugDescription];
  transportType = [(NanoRoutePlanningRequest *)self transportType];
  if (transportType >= 7)
  {
    v6 = [NSString stringWithFormat:@"(unknown: %i)", transportType];
  }

  else
  {
    v6 = off_1016317B8[transportType];
  }

  waypoints = [(NanoRoutePlanningRequest *)self waypoints];
  v8 = [waypoints count];
  startNavigationAutomatically = [(NanoRoutePlanningRequest *)self startNavigationAutomatically];
  waypoints2 = [(NanoRoutePlanningRequest *)self waypoints];
  v11 = waypoints2;
  if (waypoints2)
  {
    if ([waypoints2 count])
    {
      v32 = startNavigationAutomatically;
      v34 = waypoints;
      v35 = v6;
      v36 = v4;
      v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v33 = v11;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = v14;
      v16 = *v40;
      v37 = v12;
      while (1)
      {
        v17 = 0;
        do
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v39 + 1) + 8 * v17);
          if (v18)
          {
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_16;
            }

            v21 = v3;
            v22 = [v18 performSelector:"accessibilityIdentifier"];
            v23 = v22;
            if (v22 && ![v22 isEqualToString:v20])
            {
              v25 = v13;
              v26 = v21;
              v24 = [v21[459] stringWithFormat:@"%@<%p, %@>", v20, v18, v23];

              v3 = v26;
              v13 = v25;
              v12 = v37;
            }

            else
            {

              v3 = v21;
LABEL_16:
              v24 = [v3[459] stringWithFormat:@"%@<%p>", v20, v18];
            }

            goto LABEL_19;
          }

          v24 = @"<nil>";
LABEL_19:

          [v12 addObject:v24];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v27 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
        v15 = v27;
        if (!v27)
        {
LABEL_23:

          v28 = [v13 componentsJoinedByString:{@", "}];
          v29 = [v3[459] stringWithFormat:@"<%p> [%@]", v13, v28];

          v4 = v36;
          waypoints = v34;
          v6 = v35;
          v11 = v33;
          startNavigationAutomatically = v32;
          goto LABEL_26;
        }
      }
    }

    v29 = [NSString stringWithFormat:@"<%p> (empty)", v11];
  }

  else
  {
    v29 = @"<nil>";
  }

LABEL_26:

  v30 = [NSString stringWithFormat:@"%@ (%@, %lu waypoints, auto-start: %d)\n\t%@", v4, v6, v8, startNavigationAutomatically, v29];

  return v30;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = NanoRoutePlanningRequest;
  v3 = [(NanoRoutePlanningRequest *)&v9 description];
  transportType = [(NanoRoutePlanningRequest *)self transportType];
  if (transportType >= 7)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", transportType];
  }

  else
  {
    v5 = off_1016317B8[transportType];
  }

  waypoints = [(NanoRoutePlanningRequest *)self waypoints];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (%@, %lu waypoints, auto-start: %d)", v3, v5, [waypoints count], -[NanoRoutePlanningRequest startNavigationAutomatically](self, "startNavigationAutomatically"));

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  auditToken = self->_auditToken;
  coderCopy = coder;
  [coderCopy encodeObject:auditToken forKey:@"_auditToken"];
  [coderCopy encodeObject:self->_companionRouteContext forKey:@"_companionRouteContext"];
  v5 = [NSNumber numberWithUnsignedInteger:self->_preferredMode];
  [coderCopy encodeObject:v5 forKey:@"_preferredMode"];

  [coderCopy encodeObject:self->_waypoints forKey:@"_waypoints"];
  v6 = [NSNumber numberWithInt:self->_transportType];
  [coderCopy encodeObject:v6 forKey:@"_transportType"];

  v7 = [NSNumber numberWithUnsignedInteger:self->_maximumNumberOfRoutes];
  [coderCopy encodeObject:v7 forKey:@"_maximumNumberOfRoutes"];

  [coderCopy encodeObject:self->_traits forKey:@"_traits"];
  v8 = [NSNumber numberWithBool:self->_startNavigationAutomatically];
  [coderCopy encodeObject:v8 forKey:@"_startNavigationAutomatically"];

  [coderCopy encodeObject:self->_departureDate forKey:@"_departureDate"];
  [coderCopy encodeObject:self->_arrivalDate forKey:@"_arrivalDate"];
  [coderCopy encodeObject:self->_automobileOptions forKey:@"_automobileOptions"];
  [coderCopy encodeObject:self->_transitOptions forKey:@"_transitOptions"];
  [coderCopy encodeObject:self->_walkingOptions forKey:@"_walkingOptions"];
  [coderCopy encodeObject:self->_cyclingOptions forKey:@"_cyclingOptions"];
  [coderCopy encodeObject:self->_tracePath forKey:@"_tracePath"];
}

- (NanoRoutePlanningRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = NanoRoutePlanningRequest;
  v5 = [(NanoRoutePlanningRequest *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_auditToken"];
    auditToken = v5->_auditToken;
    v5->_auditToken = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_companionRouteContext"];
    companionRouteContext = v5->_companionRouteContext;
    v5->_companionRouteContext = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_preferredMode"];
    v5->_preferredMode = [v10 unsignedIntegerValue];

    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_waypoints"];
    waypoints = v5->_waypoints;
    v5->_waypoints = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_transportType"];
    v5->_transportType = [v15 integerValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_maximumNumberOfRoutes"];
    v5->_maximumNumberOfRoutes = [v16 unsignedIntegerValue];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_traits"];
    traits = v5->_traits;
    v5->_traits = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_startNavigationAutomatically"];
    v5->_startNavigationAutomatically = [v19 BOOLValue];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_departureDate"];
    departureDate = v5->_departureDate;
    v5->_departureDate = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_arrivalDate"];
    arrivalDate = v5->_arrivalDate;
    v5->_arrivalDate = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_automobileOptions"];
    automobileOptions = v5->_automobileOptions;
    v5->_automobileOptions = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_transitOptions"];
    transitOptions = v5->_transitOptions;
    v5->_transitOptions = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_walkingOptions"];
    walkingOptions = v5->_walkingOptions;
    v5->_walkingOptions = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_cyclingOptions"];
    cyclingOptions = v5->_cyclingOptions;
    v5->_cyclingOptions = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_tracePath"];
    tracePath = v5->_tracePath;
    v5->_tracePath = v32;
  }

  return v5;
}

- (void)_populateCopy:(id)copy
{
  objc_storeStrong(copy + 2, self->_auditToken);
  copyCopy = copy;
  objc_storeStrong(copyCopy + 3, self->_companionRouteContext);
  copyCopy[4] = self->_preferredMode;
  objc_storeStrong(copyCopy + 5, self->_waypoints);
  *(copyCopy + 3) = self->_transportType;
  copyCopy[6] = self->_maximumNumberOfRoutes;
  objc_storeStrong(copyCopy + 7, self->_traits);
  *(copyCopy + 8) = self->_startNavigationAutomatically;
  objc_storeStrong(copyCopy + 8, self->_departureDate);
  objc_storeStrong(copyCopy + 9, self->_arrivalDate);
  objc_storeStrong(copyCopy + 10, self->_automobileOptions);
  objc_storeStrong(copyCopy + 11, self->_transitOptions);
  objc_storeStrong(copyCopy + 12, self->_walkingOptions);
  objc_storeStrong(copyCopy + 13, self->_cyclingOptions);
  objc_storeStrong(copyCopy + 14, self->_tracePath);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NanoRoutePlanningMutableRequest);
  [(NanoRoutePlanningRequest *)self _populateCopy:v4];
  return v4;
}

+ (id)requestWithTraceAtPath:(id)path
{
  pathCopy = path;
  v4 = objc_alloc_init(MNTraceLoader);
  v18 = 0;
  v5 = [v4 loadTraceWithPath:pathCopy outError:&v18];
  if (v5)
  {
    v6 = objc_alloc_init(NanoRoutePlanningMutableRequest);
    [(NanoRoutePlanningRequest *)v6 setPreferredMode:3];
    [(NanoRoutePlanningRequest *)v6 setTracePath:pathCopy];
    directions = [v5 directions];
    firstObject = [directions firstObject];

    waypoints = [firstObject waypoints];
    v10 = sub_100021DB0(waypoints, &stru_101631798);
    [(NanoRoutePlanningRequest *)v6 setWaypoints:v10];

    request = [firstObject request];
    routeAttributes = [request routeAttributes];

    -[NanoRoutePlanningRequest setTransportType:](v6, "setTransportType:", [routeAttributes mainTransportType]);
    automobileOptions = [routeAttributes automobileOptions];
    [(NanoRoutePlanningRequest *)v6 setAutomobileOptions:automobileOptions];

    transitOptions = [routeAttributes transitOptions];
    [(NanoRoutePlanningRequest *)v6 setTransitOptions:transitOptions];

    walkingOptions = [routeAttributes walkingOptions];
    [(NanoRoutePlanningRequest *)v6 setWalkingOptions:walkingOptions];

    cyclingOptions = [routeAttributes cyclingOptions];
    [(NanoRoutePlanningRequest *)v6 setCyclingOptions:cyclingOptions];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)requestForPlaceholderDirections
{
  v2 = objc_alloc_init(NanoRoutePlanningMutableRequest);
  [(NanoRoutePlanningRequest *)v2 setCompanionRouteContext:0];
  v3 = [(NanoRoutePlanningMutableRequest *)v2 copy];

  return v3;
}

+ (id)requestForDirectionsWithCompanionRouteDetails:(id)details companionRouteContext:(id)context
{
  contextCopy = context;
  detailsCopy = details;
  v7 = objc_alloc_init(NanoRoutePlanningMutableRequest);
  waypoints = [detailsCopy waypoints];
  v9 = sub_100021DB0(waypoints, &stru_101631718);

  [(NanoRoutePlanningRequest *)v7 setWaypoints:v9];
  destinationName = [detailsCopy destinationName];
  destinationWaypoint = [(NanoRoutePlanningRequest *)v7 destinationWaypoint];
  [destinationWaypoint setName:destinationName];

  transportType = [detailsCopy transportType];
  [(NanoRoutePlanningRequest *)v7 setTransportType:transportType];
  [(NanoRoutePlanningRequest *)v7 setCompanionRouteContext:contextCopy];

  v13 = [(NanoRoutePlanningMutableRequest *)v7 copy];

  return v13;
}

+ (id)requestForDirectionsToCustomRoute:(id)route currentLocation:(id)location companionRouteContext:(id)context
{
  contextCopy = context;
  locationCopy = location;
  routeCopy = route;
  v10 = [[GEOLocation alloc] initWithCLLocation:locationCopy];

  v11 = objc_opt_new();
  v12 = [NanoDirectionWaypoint directionWaypointForCurrentLocation:v10];
  v18[0] = v12;
  v13 = [NanoDirectionWaypoint directionWaypointToCustomRoute:routeCopy];
  v18[1] = v13;
  v14 = [NSArray arrayWithObjects:v18 count:2];
  [v11 setWaypoints:v14];

  transportType = [routeCopy transportType];
  [v11 setTransportType:transportType];
  [v11 setCompanionRouteContext:contextCopy];

  v16 = [v11 copy];

  return v16;
}

+ (id)requestWithWaypoints:(id)waypoints viaTransportType:(int)type traits:(id)traits companionRouteContext:(id)context
{
  v7 = *&type;
  contextCopy = context;
  traitsCopy = traits;
  waypointsCopy = waypoints;
  v12 = objc_alloc_init(NanoRoutePlanningMutableRequest);
  v13 = [waypointsCopy copy];

  [(NanoRoutePlanningRequest *)v12 setWaypoints:v13];
  [(NanoRoutePlanningRequest *)v12 setTransportType:v7];
  [(NanoRoutePlanningRequest *)v12 setTraits:traitsCopy];

  if (contextCopy)
  {
    [(NanoRoutePlanningRequest *)v12 setCompanionRouteContext:contextCopy];
  }

  v14 = [(NanoRoutePlanningMutableRequest *)v12 copy];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NanoRoutePlanningRequest);
  [(NanoRoutePlanningRequest *)self _populateCopy:v4];
  return v4;
}

- (id)snapshot
{
  v3 = objc_alloc_init(NanoRoutePlanningRequestSnapshot);
  [(NanoRoutePlanningRequestSnapshot *)v3 setTransportType:[(NanoRoutePlanningRequest *)self transportType]];
  waypoints = [(NanoRoutePlanningRequest *)self waypoints];
  [(NanoRoutePlanningRequestSnapshot *)v3 setWaypoints:waypoints];

  return v3;
}

- (int)resolvedTransportType
{
  if ([(NanoRoutePlanningRequest *)self transportType]== 4)
  {
    v3 = GEOGetUserTransportTypePreference();
    if ((v3 - 1) >= 4)
    {
      return 0;
    }

    else
    {
      return dword_101212C30[v3 - 1];
    }
  }

  else
  {

    return [(NanoRoutePlanningRequest *)self transportType];
  }
}

- (NSArray)waypoints
{
  waypoints = self->_waypoints;
  if (!waypoints)
  {
    self->_waypoints = &__NSArray0__struct;
    waypoints = &__NSArray0__struct;
  }

  return waypoints;
}

- (NanoDirectionWaypoint)destinationWaypoint
{
  waypoints = [(NanoRoutePlanningRequest *)self waypoints];
  lastObject = [waypoints lastObject];

  return lastObject;
}

- (NanoDirectionWaypoint)originWaypoint
{
  waypoints = [(NanoRoutePlanningRequest *)self waypoints];
  firstObject = [waypoints firstObject];

  return firstObject;
}

- (id)requestedCompanionRouteDetails
{
  destinationWaypoint = [(NanoRoutePlanningRequest *)self destinationWaypoint];
  name = [destinationWaypoint name];

  transportType = self->_transportType;
  waypoints = [(NanoRoutePlanningRequest *)self waypoints];
  v7 = sub_100021DB0(waypoints, &stru_101631758);

  v8 = [GEOCompanionRouteDetails syntheticRouteDetailsWithWaypoints:v7 transportType:transportType destinationName:name];

  return v8;
}

- (NanoRoutePlanningRequest)init
{
  v15.receiver = self;
  v15.super_class = NanoRoutePlanningRequest;
  v2 = [(NanoRoutePlanningRequest *)&v15 init];
  if (v2)
  {
    v3 = [GEOApplicationAuditToken alloc];
    v4 = [v3 initWithProxiedApplicationBundleId:MapsAppBundleId];
    auditToken = v2->_auditToken;
    v2->_auditToken = v4;

    v6 = [(GEOApplicationAuditToken *)v2->_auditToken overrideTokenWithOfflineCohortId:@"com.apple.Maps"];
    v7 = v2->_auditToken;
    v2->_auditToken = v6;

    v2->_transportType = 4;
    v8 = +[GEOCompanionRouteContext context];
    companionRouteContext = v2->_companionRouteContext;
    v2->_companionRouteContext = v8;

    v10 = 3;
    if (v2->_transportType == 1)
    {
      v10 = 5;
    }

    v2->_maximumNumberOfRoutes = v10;
    v11 = +[GEOMapService sharedService];
    defaultTraits = [v11 defaultTraits];
    traits = v2->_traits;
    v2->_traits = defaultTraits;
  }

  return v2;
}

@end