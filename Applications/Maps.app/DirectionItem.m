@interface DirectionItem
+ (DirectionItem)directionItemWithNanoRoutePlanningRequest:(id)a3;
+ (DirectionItem)directionItemWithRideBookingSession:(id)a3;
+ (DirectionItem)directionItemWithRoutePlanningSession:(id)a3;
- (BOOL)canAddStop;
- (BOOL)hasCurrentLocationOnlyAsOriginWaypoint;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDirectionItem:(id)a3;
- (BOOL)isEquivalentAsWaypointToDirectionItem:(id)a3;
- (BOOL)isVenueItem;
- (DirectionItem)initWithItems:(id)a3 ignoreMapType:(BOOL)a4 transportType:(int64_t)a5;
- (MKMapItem)endMapItem;
- (MKMapItem)startMapItem;
- (id)copyWithItems:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)editRequired:(unint64_t *)a3;
- (unint64_t)numberOfCurrentLocationWaypoints:(id *)a3;
- (unint64_t)numberOfUserRequestedWaypoints;
- (unint64_t)venueID;
@end

@implementation DirectionItem

- (unint64_t)venueID
{
  v3 = [(DirectionItem *)self endMapItem];
  v4 = [v3 _venueInfo];
  v5 = [v4 venueIdentifier];
  v6 = [v5 _hasVenueID];

  if (v6)
  {
    v7 = [(DirectionItem *)self endMapItem];
LABEL_5:
    v12 = v7;
    v13 = [v7 _venueInfo];
    v14 = [v13 venueIdentifier];
    v15 = [v14 venueID];

    return v15;
  }

  v8 = [(DirectionItem *)self startMapItem];
  v9 = [v8 _venueInfo];
  v10 = [v9 venueIdentifier];
  v11 = [v10 _hasVenueID];

  if (v11)
  {
    v7 = [(DirectionItem *)self startMapItem];
    goto LABEL_5;
  }

  return 0;
}

- (BOOL)isVenueItem
{
  v3 = [(DirectionItem *)self startMapItem];
  v4 = [v3 _venueInfo];
  v5 = [v4 venueIdentifier];
  if ([v5 _hasVenueID])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(DirectionItem *)self endMapItem];
    v8 = [v7 _venueInfo];
    v9 = [v8 venueIdentifier];
    v6 = [v9 _hasVenueID];
  }

  return v6;
}

- (BOOL)canAddStop
{
  v3 = [(DirectionItem *)self transportType];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
    }

    else
    {
      if (v3 != 5)
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

  if (v3)
  {
    if (v3 == 1)
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
  v2 = [(DirectionItem *)self items];
  v3 = sub_1000282CC(v2, &stru_10162C010);
  v4 = [v3 count];

  return v4;
}

- (unint64_t)numberOfCurrentLocationWaypoints:(id *)a3
{
  if (a3)
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
    v6 = [(DirectionItem *)self items];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10085FC7C;
    v9[3] = &unk_10162E978;
    v10 = v5;
    v11 = &v12;
    [v6 enumerateObjectsUsingBlock:v9];

    self->_numberOfCurrentLocationWaypoints = v13[3];
    _Block_object_dispose(&v12, 8);
  }

  if (a3)
  {
    *a3 = [v5 copy];
  }

  numberOfCurrentLocationWaypoints = self->_numberOfCurrentLocationWaypoints;

  return numberOfCurrentLocationWaypoints;
}

- (BOOL)hasCurrentLocationOnlyAsOriginWaypoint
{
  v3 = [(DirectionItem *)self numberOfCurrentLocationWaypoints:0];
  if (v3)
  {
    v4 = [(DirectionItem *)self items];
    v5 = [v4 firstObject];
    v6 = [v5 searchResult];
    v7 = [v6 isDynamicCurrentLocation];

    LOBYTE(v3) = v7;
  }

  return v3;
}

- (unint64_t)editRequired:(unint64_t *)a3
{
  if (a3)
  {
    *a3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [(DirectionItem *)self items];
  v6 = [v5 count];

  if (!v6)
  {
    return 4;
  }

  v7 = [(DirectionItem *)self items];
  v8 = [v7 count];

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
      v17 = [(DirectionItem *)self items];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10085FFD8;
      v22[3] = &unk_10162BFF0;
      v22[4] = &v23;
      [v17 enumerateObjectsUsingBlock:v22];

      v18 = v24[3];
      if (a3)
      {
        *a3 = v18;
      }

      v9 = 4 * (v18 != 0x7FFFFFFFFFFFFFFFLL);
      _Block_object_dispose(&v23, 8);
      goto LABEL_25;
    }

    v12 = +[MKLocationManager sharedLocationManager];
    v13 = [v12 isLocationServicesPossiblyAvailable];

    if (v13)
    {
      v14 = +[MKLocationManager sharedLocationManager];
      if ([v14 isAuthorizedForPreciseLocation])
      {
      }

      else
      {
        v15 = [(DirectionItem *)self allowApproximateUserLocation];

        if (!v15)
        {
          if (a3)
          {
            *a3 = [v11 firstIndex];
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

      v19 = [(DirectionItem *)self allowApproximateUserLocation];
      v20 = [v19 BOOLValue];

      if (!a3 || (v20 & 1) != 0)
      {
        if (v20)
        {
          goto LABEL_18;
        }

LABEL_24:
        v9 = 2;
LABEL_25:

        return v9;
      }
    }

    else if (!a3)
    {
      goto LABEL_24;
    }

    *a3 = [v11 firstIndex];
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
  v2 = [(DirectionItem *)self items];
  v3 = [v2 lastObject];

  v4 = [v3 searchResult];
  if (v4)
  {
    v5 = [v3 searchResult];
    [v5 mapItem];
  }

  else
  {
    v5 = [v3 address];
    [v5 geocodedMapItem];
  }
  v6 = ;

  return v6;
}

- (MKMapItem)startMapItem
{
  v2 = [(DirectionItem *)self items];
  v3 = [v2 firstObject];

  v4 = [v3 searchResult];
  if (v4)
  {
    v5 = [v3 searchResult];
    [v5 mapItem];
  }

  else
  {
    v5 = [v3 address];
    [v5 geocodedMapItem];
  }
  v6 = ;

  return v6;
}

- (BOOL)isEquivalentAsWaypointToDirectionItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_27;
  }

  if (v4 == self)
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

- (BOOL)isEqualToDirectionItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_21;
  }

  if (v4 == self)
  {
    v45 = 1;
    goto LABEL_23;
  }

  if (((items = v4->_items, v7 = self->_items, v8 = items, !(v7 | v8)) || (v9 = v8, v10 = [v7 isEqual:v8], v9, v7, v10)) && self->_ignoreMapType == v5->_ignoreMapType && self->_transportType == v5->_transportType && ((allowApproximateUserLocation = v5->_allowApproximateUserLocation, v12 = self->_allowApproximateUserLocation, v13 = allowApproximateUserLocation, !(v12 | v13)) || (v14 = v13, v15 = objc_msgSend(v12, "isEqual:", v13), v14, v12, v15)) && ((drivePreferences = v5->_drivePreferences, v17 = self->_drivePreferences, v18 = drivePreferences, !(v17 | v18)) || (v19 = v18, v20 = objc_msgSend(v17, "isEqual:", v18), v19, v17, v20)) && ((walkPreferences = v5->_walkPreferences, v22 = self->_walkPreferences, v23 = walkPreferences, !(v22 | v23)) || (v24 = v23, v25 = objc_msgSend(v22, "isEqual:", v23), v24, v22, v25)) && ((transitPreferences = v5->_transitPreferences, v27 = self->_transitPreferences, v28 = transitPreferences, !(v27 | v28)) || (v29 = v28, v30 = objc_msgSend(v27, "isEqual:", v28), v29, v27, v30)) && ((cyclePreferences = v5->_cyclePreferences, v32 = self->_cyclePreferences, v33 = cyclePreferences, !(v32 | v33)) || (v34 = v33, v35 = objc_msgSend(v32, "isEqual:", v33), v34, v32, v35)) && ((timing = v5->_timing, v37 = self->_timing, v38 = timing, !(v37 | v38)) || (v39 = v38, v40 = objc_msgSend(v37, "isEqual:", v38), v39, v37, v40)))
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSArray *)self->_items copyWithZone:a3];
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

- (id)copyWithItems:(id)a3
{
  v4 = a3;
  v5 = [(DirectionItem *)self copy];
  v6 = [v4 copy];

  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

- (DirectionItem)initWithItems:(id)a3 ignoreMapType:(BOOL)a4 transportType:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = DirectionItem;
  v10 = [(DirectionItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_numberOfCurrentLocationWaypoints = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v10->_items, a3);
    v11->_ignoreMapType = a4;
    v11->_transportType = a5;
  }

  return v11;
}

+ (DirectionItem)directionItemWithNanoRoutePlanningRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 waypoints];
  v5 = sub_100021DB0(v4, &stru_10162DBD8);

  v6 = [DirectionItem alloc];
  v7 = [v3 resolvedTransportType];

  if (v7 - 1 > 5)
  {
    v8 = 1;
  }

  else
  {
    v8 = qword_101216278[v7 - 1];
  }

  v9 = [(DirectionItem *)v6 initWithItems:v5 transportType:v8];

  return v9;
}

+ (DirectionItem)directionItemWithRideBookingSession:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v5 = [v4 originRequest];
  v6 = [v4 destinationRequest];
  v7 = v6;
  if (!v5 || !v6)
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
  [v4 enumerateRequestsOrWaypointsUsingBlock:v18];
  v9 = [[a1 alloc] initWithItems:v8 transportType:4];

  return v9;
}

+ (DirectionItem)directionItemWithRoutePlanningSession:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v5 = [v4 configuration];
  v6 = [v5 originWaypointRequest];

  v7 = [v4 configuration];
  v8 = [v7 destinationWaypointRequest];

  if (!v6 || !v8)
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
  [v4 enumerateRequestsOrWaypointsUsingBlock:v23];
  v10 = [[a1 alloc] initWithItems:v9 transportType:{objc_msgSend(v4, "currentTransportType")}];
  v11 = [v4 timing];
  [v10 setTiming:v11];

  v12 = [v4 drivePreferences];
  [v10 setDrivePreferences:v12];

  v13 = [v4 transitPreferences];
  [v10 setTransitPreferences:v13];

  v14 = [v4 cyclePreferences];
  [v10 setCyclePreferences:v14];

  return v10;
}

@end