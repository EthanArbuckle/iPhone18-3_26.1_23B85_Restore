@interface DirectionItem
+ (DirectionItem)directionItemWithNanoRoutePlanningRequest:(id)request;
+ (DirectionItem)directionItemWithRideBookingSession:(id)session;
+ (DirectionItem)directionItemWithRoutePlanningSession:(id)session;
- (BOOL)canAddStop;
- (BOOL)hasCurrentLocationOnlyAsOriginWaypoint;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDirectionItem:(id)item;
- (BOOL)isEquivalentAsWaypointToDirectionItem:(id)item;
- (BOOL)isVenueItem;
- (DirectionItem)initWithItems:(id)items ignoreMapType:(BOOL)type transportType:(int64_t)transportType;
- (MKMapItem)endMapItem;
- (MKMapItem)startMapItem;
- (id)copyWithItems:(id)items;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)editRequired:(unint64_t *)required;
- (unint64_t)numberOfCurrentLocationWaypoints:(id *)waypoints;
- (unint64_t)numberOfUserRequestedWaypoints;
- (unint64_t)venueID;
@end

@implementation DirectionItem

- (unint64_t)venueID
{
  endMapItem = [(DirectionItem *)self endMapItem];
  _venueInfo = [endMapItem _venueInfo];
  venueIdentifier = [_venueInfo venueIdentifier];
  _hasVenueID = [venueIdentifier _hasVenueID];

  if (_hasVenueID)
  {
    endMapItem2 = [(DirectionItem *)self endMapItem];
LABEL_5:
    v12 = endMapItem2;
    _venueInfo2 = [endMapItem2 _venueInfo];
    venueIdentifier2 = [_venueInfo2 venueIdentifier];
    venueID = [venueIdentifier2 venueID];

    return venueID;
  }

  startMapItem = [(DirectionItem *)self startMapItem];
  _venueInfo3 = [startMapItem _venueInfo];
  venueIdentifier3 = [_venueInfo3 venueIdentifier];
  _hasVenueID2 = [venueIdentifier3 _hasVenueID];

  if (_hasVenueID2)
  {
    endMapItem2 = [(DirectionItem *)self startMapItem];
    goto LABEL_5;
  }

  return 0;
}

- (BOOL)isVenueItem
{
  startMapItem = [(DirectionItem *)self startMapItem];
  _venueInfo = [startMapItem _venueInfo];
  venueIdentifier = [_venueInfo venueIdentifier];
  if ([venueIdentifier _hasVenueID])
  {
    _hasVenueID = 1;
  }

  else
  {
    endMapItem = [(DirectionItem *)self endMapItem];
    _venueInfo2 = [endMapItem _venueInfo];
    venueIdentifier2 = [_venueInfo2 venueIdentifier];
    _hasVenueID = [venueIdentifier2 _hasVenueID];
  }

  return _hasVenueID;
}

- (BOOL)canAddStop
{
  transportType = [(DirectionItem *)self transportType];
  if (transportType > 1)
  {
    if (transportType == 2)
    {
      IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
    }

    else
    {
      if (transportType != 5)
      {
        goto LABEL_8;
      }

      IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps420();
    }

LABEL_13:
    v6 = IsEnabled_Maps182;
    UInteger = GEOConfigGetUInteger();
    if (v6)
    {
      return !UInteger || [(DirectionItem *)self numberOfUserRequestedWaypoints]< UInteger;
    }

    return 0;
  }

  if (transportType)
  {
    if (transportType == 1)
    {
      IsEnabled_Maps182 = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
      goto LABEL_13;
    }

LABEL_8:
    GEOConfigGetUInteger();
    return 0;
  }

  if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || MapsFeature_IsEnabled_Maps420())
  {
    UInteger = GEOConfigGetUInteger();
    return !UInteger || [(DirectionItem *)self numberOfUserRequestedWaypoints]< UInteger;
  }

  v8 = MapsFeature_IsEnabled_Maps182();
  UInteger = GEOConfigGetUInteger();
  if (!v8)
  {
    return 0;
  }

  return !UInteger || [(DirectionItem *)self numberOfUserRequestedWaypoints]< UInteger;
}

- (unint64_t)numberOfUserRequestedWaypoints
{
  items = [(DirectionItem *)self items];
  v3 = sub_1000282CC(items, &stru_10162C010);
  v4 = [v3 count];

  return v4;
}

- (unint64_t)numberOfCurrentLocationWaypoints:(id *)waypoints
{
  if (waypoints)
  {
    v5 = objc_alloc_init(NSMutableIndexSet);
  }

  else
  {
    v5 = 0;
  }

  if (self->_numberOfCurrentLocationWaypoints == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    items = [(DirectionItem *)self items];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10085FC7C;
    v9[3] = &unk_10162E978;
    v10 = v5;
    v11 = &v12;
    [items enumerateObjectsUsingBlock:v9];

    self->_numberOfCurrentLocationWaypoints = v13[3];
    _Block_object_dispose(&v12, 8);
  }

  if (waypoints)
  {
    *waypoints = [v5 copy];
  }

  numberOfCurrentLocationWaypoints = self->_numberOfCurrentLocationWaypoints;

  return numberOfCurrentLocationWaypoints;
}

- (BOOL)hasCurrentLocationOnlyAsOriginWaypoint
{
  v3 = [(DirectionItem *)self numberOfCurrentLocationWaypoints:0];
  if (v3)
  {
    items = [(DirectionItem *)self items];
    firstObject = [items firstObject];
    searchResult = [firstObject searchResult];
    isDynamicCurrentLocation = [searchResult isDynamicCurrentLocation];

    LOBYTE(v3) = isDynamicCurrentLocation;
  }

  return v3;
}

- (unint64_t)editRequired:(unint64_t *)required
{
  if (required)
  {
    *required = 0x7FFFFFFFFFFFFFFFLL;
  }

  items = [(DirectionItem *)self items];
  v6 = [items count];

  if (!v6)
  {
    return 4;
  }

  items2 = [(DirectionItem *)self items];
  v8 = [items2 count];

  if (v8 != 1)
  {
    v27 = 0;
    v10 = [(DirectionItem *)self numberOfCurrentLocationWaypoints:&v27];
    v11 = v27;
    if (!v10)
    {
LABEL_18:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0x7FFFFFFFFFFFFFFFLL;
      items3 = [(DirectionItem *)self items];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10085FFD8;
      v22[3] = &unk_10162BFF0;
      v22[4] = &v23;
      [items3 enumerateObjectsUsingBlock:v22];

      v18 = v24[3];
      if (required)
      {
        *required = v18;
      }

      v9 = 4 * (v18 != 0x7FFFFFFFFFFFFFFFLL);
      _Block_object_dispose(&v23, 8);
      goto LABEL_25;
    }

    v12 = +[MKLocationManager sharedLocationManager];
    isLocationServicesPossiblyAvailable = [v12 isLocationServicesPossiblyAvailable];

    if (isLocationServicesPossiblyAvailable)
    {
      v14 = +[MKLocationManager sharedLocationManager];
      if ([v14 isAuthorizedForPreciseLocation])
      {
      }

      else
      {
        allowApproximateUserLocation = [(DirectionItem *)self allowApproximateUserLocation];

        if (!allowApproximateUserLocation)
        {
          if (required)
          {
            *required = [v11 firstIndex];
          }

          v9 = 3;
          goto LABEL_25;
        }
      }

      v16 = +[MKLocationManager sharedLocationManager];
      if ([v16 isAuthorizedForPreciseLocation])
      {

        goto LABEL_18;
      }

      allowApproximateUserLocation2 = [(DirectionItem *)self allowApproximateUserLocation];
      bOOLValue = [allowApproximateUserLocation2 BOOLValue];

      if (!required || (bOOLValue & 1) != 0)
      {
        if (bOOLValue)
        {
          goto LABEL_18;
        }

LABEL_24:
        v9 = 2;
LABEL_25:

        return v9;
      }
    }

    else if (!required)
    {
      goto LABEL_24;
    }

    *required = [v11 firstIndex];
    goto LABEL_24;
  }

  if ([(DirectionItem *)self hasCurrentLocationOnlyAsOriginWaypoint])
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (MKMapItem)endMapItem
{
  items = [(DirectionItem *)self items];
  lastObject = [items lastObject];

  searchResult = [lastObject searchResult];
  if (searchResult)
  {
    searchResult2 = [lastObject searchResult];
    [searchResult2 mapItem];
  }

  else
  {
    searchResult2 = [lastObject address];
    [searchResult2 geocodedMapItem];
  }
  v6 = ;

  return v6;
}

- (MKMapItem)startMapItem
{
  items = [(DirectionItem *)self items];
  firstObject = [items firstObject];

  searchResult = [firstObject searchResult];
  if (searchResult)
  {
    searchResult2 = [firstObject searchResult];
    [searchResult2 mapItem];
  }

  else
  {
    searchResult2 = [firstObject address];
    [searchResult2 geocodedMapItem];
  }
  v6 = ;

  return v6;
}

- (BOOL)isEquivalentAsWaypointToDirectionItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    goto LABEL_27;
  }

  if (itemCopy == self)
  {
    v45 = 1;
    goto LABEL_29;
  }

  v6 = [(NSArray *)self->_items count];
  if (v6 != [(NSArray *)v5->_items count])
  {
    goto LABEL_27;
  }

  if ([(NSArray *)self->_items count])
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = [(NSArray *)self->_items objectAtIndexedSubscript:v7];
      v10 = [(NSArray *)v5->_items objectAtIndexedSubscript:v7];
      if (v8)
      {
        v8 = [v9 isEquivalentAsWaypointToSearchFieldItem:v10];
      }

      else
      {
        v8 = 0;
      }

      ++v7;
    }

    while (v7 < [(NSArray *)self->_items count]);
    if ((v8 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (self->_ignoreMapType == v5->_ignoreMapType && self->_transportType == v5->_transportType && ((allowApproximateUserLocation = v5->_allowApproximateUserLocation, v12 = self->_allowApproximateUserLocation, v13 = allowApproximateUserLocation, !(v12 | v13)) || (v14 = v13, v15 = [v12 isEqual:v13], v14, v12, v15)) && ((drivePreferences = v5->_drivePreferences, v17 = self->_drivePreferences, v18 = drivePreferences, !(v17 | v18)) || (v19 = v18, v20 = objc_msgSend(v17, "isEqual:", v18), v19, v17, v20)) && ((walkPreferences = v5->_walkPreferences, v22 = self->_walkPreferences, v23 = walkPreferences, !(v22 | v23)) || (v24 = v23, v25 = objc_msgSend(v22, "isEqual:", v23), v24, v22, v25)) && ((transitPreferences = v5->_transitPreferences, v27 = self->_transitPreferences, v28 = transitPreferences, !(v27 | v28)) || (v29 = v28, v30 = objc_msgSend(v27, "isEqual:", v28), v29, v27, v30)) && ((cyclePreferences = v5->_cyclePreferences, v32 = self->_cyclePreferences, v33 = cyclePreferences, !(v32 | v33)) || (v34 = v33, v35 = objc_msgSend(v32, "isEqual:", v33), v34, v32, v35)) && ((timing = v5->_timing, v37 = self->_timing, v38 = timing, !(v37 | v38)) || (v39 = v38, v40 = objc_msgSend(v37, "isEqual:", v38), v39, v37, v40)))
  {
    persistentData = self->_persistentData;
    v42 = v5->_persistentData;
    v43 = persistentData;
    v44 = v43;
    if (v43 | v42)
    {
      v45 = [v43 isEqual:v42];
    }

    else
    {
      v45 = 1;
    }
  }

  else
  {
LABEL_27:
    v45 = 0;
  }

LABEL_29:

  return v45;
}

- (BOOL)isEqualToDirectionItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    goto LABEL_21;
  }

  if (itemCopy == self)
  {
    v45 = 1;
    goto LABEL_23;
  }

  if (((items = itemCopy->_items, v7 = self->_items, v8 = items, !(v7 | v8)) || (v9 = v8, v10 = [v7 isEqual:v8], v9, v7, v10)) && self->_ignoreMapType == v5->_ignoreMapType && self->_transportType == v5->_transportType && ((allowApproximateUserLocation = v5->_allowApproximateUserLocation, v12 = self->_allowApproximateUserLocation, v13 = allowApproximateUserLocation, !(v12 | v13)) || (v14 = v13, v15 = objc_msgSend(v12, "isEqual:", v13), v14, v12, v15)) && ((drivePreferences = v5->_drivePreferences, v17 = self->_drivePreferences, v18 = drivePreferences, !(v17 | v18)) || (v19 = v18, v20 = objc_msgSend(v17, "isEqual:", v18), v19, v17, v20)) && ((walkPreferences = v5->_walkPreferences, v22 = self->_walkPreferences, v23 = walkPreferences, !(v22 | v23)) || (v24 = v23, v25 = objc_msgSend(v22, "isEqual:", v23), v24, v22, v25)) && ((transitPreferences = v5->_transitPreferences, v27 = self->_transitPreferences, v28 = transitPreferences, !(v27 | v28)) || (v29 = v28, v30 = objc_msgSend(v27, "isEqual:", v28), v29, v27, v30)) && ((cyclePreferences = v5->_cyclePreferences, v32 = self->_cyclePreferences, v33 = cyclePreferences, !(v32 | v33)) || (v34 = v33, v35 = objc_msgSend(v32, "isEqual:", v33), v34, v32, v35)) && ((timing = v5->_timing, v37 = self->_timing, v38 = timing, !(v37 | v38)) || (v39 = v38, v40 = objc_msgSend(v37, "isEqual:", v38), v39, v37, v40)))
  {
    persistentData = self->_persistentData;
    v42 = v5->_persistentData;
    v43 = persistentData;
    v44 = v43;
    if (v43 | v42)
    {
      v45 = [v43 isEqual:v42];
    }

    else
    {
      v45 = 1;
    }
  }

  else
  {
LABEL_21:
    v45 = 0;
  }

LABEL_23:

  return v45;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(DirectionItem *)self isEqualToDirectionItem:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSArray *)self->_items copyWithZone:zone];
  v7 = *(v5 + 3);
  *(v5 + 3) = v6;

  *(v5 + 16) = self->_ignoreMapType;
  *(v5 + 4) = self->_allowApproximateUserLocation;
  *(v5 + 5) = self->_transportType;
  objc_storeStrong(v5 + 7, self->_drivePreferences);
  objc_storeStrong(v5 + 8, self->_walkPreferences);
  objc_storeStrong(v5 + 9, self->_transitPreferences);
  objc_storeStrong(v5 + 10, self->_cyclePreferences);
  objc_storeStrong(v5 + 6, self->_timing);
  objc_storeStrong(v5 + 11, self->_persistentData);
  return v5;
}

- (id)copyWithItems:(id)items
{
  itemsCopy = items;
  v5 = [(DirectionItem *)self copy];
  v6 = [itemsCopy copy];

  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

- (DirectionItem)initWithItems:(id)items ignoreMapType:(BOOL)type transportType:(int64_t)transportType
{
  itemsCopy = items;
  v13.receiver = self;
  v13.super_class = DirectionItem;
  v10 = [(DirectionItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_numberOfCurrentLocationWaypoints = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v10->_items, items);
    v11->_ignoreMapType = type;
    v11->_transportType = transportType;
  }

  return v11;
}

+ (DirectionItem)directionItemWithNanoRoutePlanningRequest:(id)request
{
  requestCopy = request;
  waypoints = [requestCopy waypoints];
  v5 = sub_100021DB0(waypoints, &stru_10162DBD8);

  v6 = [DirectionItem alloc];
  resolvedTransportType = [requestCopy resolvedTransportType];

  if (resolvedTransportType - 1 > 5)
  {
    v8 = 1;
  }

  else
  {
    v8 = qword_101216278[resolvedTransportType - 1];
  }

  v9 = [(DirectionItem *)v6 initWithItems:v5 transportType:v8];

  return v9;
}

+ (DirectionItem)directionItemWithRideBookingSession:(id)session
{
  sessionCopy = session;
  if (!sessionCopy)
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v21 = "+[DirectionItem(RoutePlanningSession) directionItemWithRideBookingSession:]";
      v22 = 2080;
      v23 = "DirectionItem+RoutePlanningSession.m";
      v24 = 1024;
      v25 = 54;
      v26 = 2080;
      v27 = "rideBookingSession != nil";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  originRequest = [sessionCopy originRequest];
  destinationRequest = [sessionCopy destinationRequest];
  v7 = destinationRequest;
  if (!originRequest || !destinationRequest)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [NSString stringWithFormat:@"We should have both origin and destination here"];
      *buf = 136316162;
      v21 = "+[DirectionItem(RoutePlanningSession) directionItemWithRideBookingSession:]";
      v22 = 2080;
      v23 = "DirectionItem+RoutePlanningSession.m";
      v24 = 1024;
      v25 = 58;
      v26 = 2080;
      v27 = "origin && destination";
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v21 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100C66064;
  v18[3] = &unk_10164F1B8;
  v19 = objc_opt_new();
  v8 = v19;
  [sessionCopy enumerateRequestsOrWaypointsUsingBlock:v18];
  v9 = [[self alloc] initWithItems:v8 transportType:4];

  return v9;
}

+ (DirectionItem)directionItemWithRoutePlanningSession:(id)session
{
  sessionCopy = session;
  if (!sessionCopy)
  {
    v16 = sub_10006D178();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v26 = "+[DirectionItem(RoutePlanningSession) directionItemWithRoutePlanningSession:]";
      v27 = 2080;
      v28 = "DirectionItem+RoutePlanningSession.m";
      v29 = 1024;
      v30 = 31;
      v31 = 2080;
      v32 = "routePlanningSession != nil";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v26 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  configuration = [sessionCopy configuration];
  originWaypointRequest = [configuration originWaypointRequest];

  configuration2 = [sessionCopy configuration];
  destinationWaypointRequest = [configuration2 destinationWaypointRequest];

  if (!originWaypointRequest || !destinationWaypointRequest)
  {
    v19 = sub_10006D178();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [NSString stringWithFormat:@"We should have both origin and destination here"];
      *buf = 136316162;
      v26 = "+[DirectionItem(RoutePlanningSession) directionItemWithRoutePlanningSession:]";
      v27 = 2080;
      v28 = "DirectionItem+RoutePlanningSession.m";
      v29 = 1024;
      v30 = 35;
      v31 = 2080;
      v32 = "origin && destination";
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100C664E8;
  v23[3] = &unk_10164F1B8;
  v24 = objc_opt_new();
  v9 = v24;
  [sessionCopy enumerateRequestsOrWaypointsUsingBlock:v23];
  v10 = [[self alloc] initWithItems:v9 transportType:{objc_msgSend(sessionCopy, "currentTransportType")}];
  timing = [sessionCopy timing];
  [v10 setTiming:timing];

  drivePreferences = [sessionCopy drivePreferences];
  [v10 setDrivePreferences:drivePreferences];

  transitPreferences = [sessionCopy transitPreferences];
  [v10 setTransitPreferences:transitPreferences];

  cyclePreferences = [sessionCopy cyclePreferences];
  [v10 setCyclePreferences:cyclePreferences];

  return v10;
}

@end