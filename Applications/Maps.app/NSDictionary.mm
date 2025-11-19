@interface NSDictionary
+ (BOOL)dictionary:(id)a3 isEqualToDictionary:(id)a4;
- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_endPoint;
- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_jumpPoint;
- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_midPoint;
- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_pointWithKeys:(id)a3;
- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_startPoint;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_mapstest_VKLocationCoordinate2D;
- (BOOL)_maps_writeBinaryPlist:(id)a3 error:(id *)a4;
- (BOOL)_mapstest_hasAltitude;
- (BOOL)_mapstest_hasEndPoint;
- (BOOL)_mapstest_hasLatitudeAndLongitude;
- (BOOL)_mapstest_hasMapRegion;
- (BOOL)_mapstest_hasMapType;
- (BOOL)_mapstest_hasMidPoint;
- (BOOL)_mapstest_hasStartPoint;
- (BOOL)_mapstest_hasViewMode;
- (BOOL)_mapstest_isUsingSampleProactiveData;
- (CLLocation)_mapstest_location;
- (CLLocationCoordinate2D)_mapstest_locationCoordinate2D;
- (GEOMapRegion)_mapstest_mapRegion;
- (MKMapItemIdentifier)_mapstest_mapItemIdentifier;
- (NSArray)_mapstest_readSubTestsFromTestSerial;
- (NSArray)_mapstest_serialSubTests;
- (NSDate)_mapstest_customDepartureDate;
- (double)_mapstest_doubleValueForKey:(id)a3 defaultValue:(double)a4;
- (id)_mapstest_addressDictionaryForKey:(id)a3;
- (id)_mapstest_arrayWithJSONForKey:(id)a3;
- (id)_mapstest_directionsPlanWithResolvedDestination:(id)a3;
- (int)_mapstest_transportType;
- (int)_maptest_lookAroundNavigationAmountToTurnInDegrees;
- (int)_maptest_lookAroundNavigationTaps;
- (int)_maptest_lookAroundOffsetTapPositionX;
- (int)_maptest_lookAroundOffsetTapPositionY;
- (int64_t)_mapstest_directionIntentType;
- (int64_t)_mapstest_guidanceStepSwipeCount;
- (int64_t)_mapstest_integerValueForKey:(id)a3 defaultValue:(int64_t)a4;
- (int64_t)_mapstest_orientation;
- (int64_t)_mapstest_viewModeWithDefaultType:(int64_t)a3;
- (unint64_t)_mapstest_flyoverTourId;
- (unint64_t)_mapstest_mapTypeWithDefaultType:(unint64_t)a3;
- (unsigned)_mapstest_searchTestACMode;
- (void)_mapstest_getSelectedFeatures:(unint64_t *)a3 disabled:(unint64_t *)a4;
@end

@implementation NSDictionary

- (BOOL)_mapstest_isUsingSampleProactiveData
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"isUsingSampleProactiveData"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isEqual:@"YES"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_mapstest_guidanceStepSwipeCount
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"swipeCount"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)_mapstest_orientation
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"orientation"];
  if ([v2 isEqualToString:@"landscape"])
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)_mapstest_directionsPlanWithResolvedDestination:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(DirectionsPlan);
  v6 = [GEOComposedWaypoint alloc];
  v7 = [[GEOLocation alloc] initWithLatitude:0.0 longitude:0.0];
  v8 = [v6 initWithLocation:v7 isCurrentLocation:1];

  [(DirectionsPlan *)v5 setDisplayMethod:1];
  v9 = objc_alloc_init(GEOStorageRouteRequestStorage);
  [(DirectionsPlan *)v5 setRouteRequestStorage:v9];

  v10 = [(NSDictionary *)self _mapstest_transportType];
  v11 = [(DirectionsPlan *)v5 routeRequestStorage];
  [v11 setTransportType:v10];

  v12 = [(NSDictionary *)self _mapstest_waypointStrings];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 count] - 1;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100792F80;
    v33[3] = &unk_101629090;
    v34 = v8;
    v37 = v14;
    v35 = v4;
    v36 = v5;
    [v13 enumerateObjectsUsingBlock:v33];

    v15 = v34;
LABEL_11:

    goto LABEL_12;
  }

  v16 = [(NSDictionary *)self _mapstest_originString];
  [(DirectionsPlan *)v5 setOriginString:v16];

  v17 = [(NSDictionary *)self _mapstest_destinationString];
  [(DirectionsPlan *)v5 setDestinationString:v17];

  v18 = [(DirectionsPlan *)v5 originString];
  v19 = [v18 _mapstest_isCurrentLocationString];

  if (v4)
  {
    if ((v19 & 1) == 0)
    {
      v32 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Invalid waypoint pairs" userInfo:0];
      objc_exception_throw(v32);
    }

    [(DirectionsPlan *)v5 setOriginString:0];
    [(DirectionsPlan *)v5 setDestinationString:0];
    v40[0] = v8;
    v40[1] = v4;
    v20 = v40;
    v21 = 2;
    goto LABEL_10;
  }

  if (v19)
  {
    [(DirectionsPlan *)v5 setOriginString:0];
    v39 = v8;
    v22 = [NSArray arrayWithObjects:&v39 count:1];
    v23 = [v22 mutableCopy];
    v24 = [(DirectionsPlan *)v5 routeRequestStorage];
    [v24 setWaypoints:v23];
  }

  v25 = [(DirectionsPlan *)v5 destinationString];
  v26 = [v25 _mapstest_isCurrentLocationString];

  if (v26)
  {
    [(DirectionsPlan *)v5 setDestinationString:0];
    v38 = v8;
    v20 = &v38;
    v21 = 1;
LABEL_10:
    v15 = [NSArray arrayWithObjects:v20 count:v21];
    v27 = [v15 mutableCopy];
    v28 = [(DirectionsPlan *)v5 routeRequestStorage];
    [v28 setWaypoints:v27];

    goto LABEL_11;
  }

LABEL_12:
  v29 = [(NSDictionary *)self _mapstest_customDepartureDate];
  v30 = v29;
  if (v29)
  {
    [v29 timeIntervalSinceReferenceDate];
    [(DirectionsPlan *)v5 setDepartureTime:?];
  }

  return v5;
}

- (NSDate)_mapstest_customDepartureDate
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"leaveOnNextWeekday"];
  v4 = [(NSDictionary *)self objectForKeyedSubscript:@"leaveAtHour"];
  v5 = v4;
  if (v3)
  {
    v6 = [v3 integerValue];
    if (v5)
    {
      v7 = [v5 integerValue];
    }

    else
    {
      v7 = 9;
    }

    v8 = +[NSDate date];
    v10 = +[NSTimeZone localTimeZone];
    v11 = [v8 _maps_nextWeekday:v6 atHour:v7 timeZone:v10];
    goto LABEL_8;
  }

  if (v4)
  {
    v8 = +[NSDate date];
    v9 = [v5 integerValue];
    v10 = +[NSTimeZone localTimeZone];
    v11 = [v8 _maps_nextDayAtHour:v9 timeZone:v10];
LABEL_8:
    v12 = v11;

    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (int)_mapstest_transportType
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"transportType"];
  v3 = [v2 integerValue];

  return v3;
}

- (MKMapItemIdentifier)_mapstest_mapItemIdentifier
{
  v10 = 0;
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"muid"];
  if (v3)
  {
    v4 = [NSScanner scannerWithString:v3];
    [v4 scanUnsignedLongLong:&v10];
  }

  v5 = [(NSDictionary *)self objectForKeyedSubscript:@"resultProviderID"];
  v6 = [v5 intValue];

  v7 = [MKMapItemIdentifier alloc];
  v8 = [v7 initWithMUID:v10 resultProviderID:v6 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];

  return v8;
}

- (unint64_t)_mapstest_flyoverTourId
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"tourId"];
  v3 = [v2 longLongValue];

  return v3;
}

- (BOOL)_mapstest_hasAltitude
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"altitude"];
  v3 = v2 != 0;

  return v3;
}

- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_pointWithKeys:(id)a3
{
  v4 = a3;
  if ([v4 count] > 2)
  {
    v11 = [v4 objectAtIndexedSubscript:0];
    v12 = [(NSDictionary *)self objectForKeyedSubscript:v11];
    [v12 doubleValue];
    v13 = [v4 objectAtIndexedSubscript:1];
    v14 = [(NSDictionary *)self objectForKeyedSubscript:v13];
    [v14 doubleValue];
    v15 = [v4 objectAtIndexedSubscript:2];
    v16 = [(NSDictionary *)self objectForKeyedSubscript:v15];
    [v16 doubleValue];
    VKLocationCoordinate3DMake();
    v6 = v17;
    v8 = v18;
    v10 = v19;
  }

  else
  {
    VKLocationCoordinate3DMake();
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  v20 = v6;
  v21 = v8;
  v22 = v10;
  result.var2 = v22;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_midPoint
{
  [(NSDictionary *)self _mapstest_pointWithKeys:&off_1016ECAA0];
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (BOOL)_mapstest_hasMidPoint
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"midLatitude"];
  if (v3)
  {
    v4 = [(NSDictionary *)self objectForKeyedSubscript:@"midLongitude"];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_endPoint
{
  [(NSDictionary *)self _mapstest_pointWithKeys:&off_1016ECA88];
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (BOOL)_mapstest_hasEndPoint
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"endLatitude"];
  if (v3)
  {
    v4 = [(NSDictionary *)self objectForKeyedSubscript:@"endLongitude"];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_startPoint
{
  [(NSDictionary *)self _mapstest_pointWithKeys:&off_1016ECA70];
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (BOOL)_mapstest_hasStartPoint
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"startLatitude"];
  if (v3)
  {
    v4 = [(NSDictionary *)self objectForKeyedSubscript:@"startLongitude"];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)_maptest_lookAroundNavigationAmountToTurnInDegrees
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"amountToTurnInDegrees"];
  v3 = [v2 intValue];

  return v3;
}

- (int)_maptest_lookAroundNavigationTaps
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"totalTaps"];
  v3 = [v2 intValue];

  return v3;
}

- (int)_maptest_lookAroundOffsetTapPositionY
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"offsetTapPointY"];
  v3 = [v2 intValue];

  return v3;
}

- (int)_maptest_lookAroundOffsetTapPositionX
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"offsetTapPointX"];
  v3 = [v2 intValue];

  return v3;
}

- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_jumpPoint
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"latitude"];
  [v3 doubleValue];
  v4 = [(NSDictionary *)self objectForKeyedSubscript:@"longitude"];
  [v4 doubleValue];
  [(NSDictionary *)self _mapstest_doubleValueForKey:@"regionSize" defaultValue:1.0];
  VKLocationCoordinate3DMake();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v6;
  v12 = v8;
  v13 = v10;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_mapstest_VKLocationCoordinate2D
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"latitude"];
  [v3 doubleValue];

  v4 = [(NSDictionary *)self objectForKeyedSubscript:@"longitude"];
  [v4 doubleValue];

  VKLocationCoordinate2DMake();
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (CLLocationCoordinate2D)_mapstest_locationCoordinate2D
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"latitude"];
  [v3 doubleValue];
  v5 = v4;

  v6 = [(NSDictionary *)self objectForKeyedSubscript:@"longitude"];
  [v6 doubleValue];
  v8 = v7;

  v11 = CLLocationCoordinate2DMake(v5, v8);
  longitude = v11.longitude;
  latitude = v11.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CLLocation)_mapstest_location
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"latitude"];
  [v3 doubleValue];
  v5 = v4;

  v6 = [(NSDictionary *)self objectForKeyedSubscript:@"longitude"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [[CLLocation alloc] initWithLatitude:v5 longitude:v8];

  return v9;
}

- (BOOL)_mapstest_hasLatitudeAndLongitude
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"latitude"];
  if (v3)
  {
    v4 = [(NSDictionary *)self objectForKeyedSubscript:@"longitude"];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (GEOMapRegion)_mapstest_mapRegion
{
  v3 = objc_opt_new();
  v4 = [(NSDictionary *)self valueForKey:@"westLng"];
  [v4 doubleValue];
  [v3 setWestLng:?];

  v5 = [(NSDictionary *)self valueForKey:@"eastLng"];
  [v5 doubleValue];
  [v3 setEastLng:?];

  v6 = [(NSDictionary *)self valueForKey:@"southLat"];
  [v6 doubleValue];
  [v3 setSouthLat:?];

  v7 = [(NSDictionary *)self valueForKey:@"northLat"];
  [v7 doubleValue];
  [v3 setNorthLat:?];

  return v3;
}

- (BOOL)_mapstest_hasMapRegion
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"westLng"];
  if (v3)
  {
    v4 = [(NSDictionary *)self objectForKeyedSubscript:@"eastLng"];
    if (v4)
    {
      v5 = [(NSDictionary *)self objectForKeyedSubscript:@"southLat"];
      if (v5)
      {
        v6 = [(NSDictionary *)self objectForKeyedSubscript:@"northLat"];
        v7 = v6 != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_mapstest_directionIntentType
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"directionIntentMode"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v2 isEqualToString:@"Directions"])
    {
      v3 = 1;
    }

    else if ([v2 isEqualToString:@"DirectionsTo"])
    {
      v3 = 2;
    }

    else if ([v2 isEqualToString:@"DirectionsToFrom"])
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unsigned)_mapstest_searchTestACMode
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"searchTestACMode"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v2 isEqualToString:@"SearchTestFullAC"] & 1) == 0)
  {
    if ([v2 isEqualToString:@"SearchTestMiniAC"])
    {
      v3 = 1;
    }

    else if ([v2 isEqualToString:@"SearchTestNoAC"])
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_mapstest_hasMapType
{
  v2 = [(NSDictionary *)self objectForKey:@"mapType"];
  if (v2)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)_mapstest_hasViewMode
{
  v2 = [(NSDictionary *)self objectForKey:@"viewMode"];
  if (v2)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (unint64_t)_mapstest_mapTypeWithDefaultType:(unint64_t)a3
{
  v4 = [(NSDictionary *)self objectForKeyedSubscript:@"mapType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 isEqualToString:@"standard"])
    {
      a3 = 0;
    }

    else if ([v4 isEqualToString:@"transit"])
    {
      a3 = 104;
    }

    else if ([v4 isEqualToString:@"satellite"])
    {
      a3 = 1;
    }

    else if ([v4 isEqualToString:@"satelliteFlyover"])
    {
      a3 = 3;
    }

    else if ([v4 isEqualToString:@"hybrid"])
    {
      a3 = 2;
    }
  }

  return a3;
}

- (int64_t)_mapstest_viewModeWithDefaultType:(int64_t)a3
{
  v4 = [(NSDictionary *)self objectForKeyedSubscript:@"viewMode"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 isEqualToString:@"standard"])
    {
      a3 = 0;
    }

    else if ([v4 isEqualToString:@"driving"])
    {
      a3 = 7;
    }

    else if ([v4 isEqualToString:@"transit"])
    {
      a3 = 3;
    }

    else if ([v4 isEqualToString:@"satelliteFlyover"])
    {
      a3 = 6;
    }

    else if ([v4 isEqualToString:@"satellite"])
    {
      a3 = 2;
    }

    else if ([v4 isEqualToString:@"hybrid"])
    {
      a3 = 1;
    }
  }

  return a3;
}

- (void)_mapstest_getSelectedFeatures:(unint64_t *)a3 disabled:(unint64_t *)a4
{
  v8 = [(NSDictionary *)self objectForKeyedSubscript:@"enable"];
  v7 = [(NSDictionary *)self objectForKeyedSubscript:@"disable"];
  if (v7 | v8)
  {
    if (a3)
    {
      *a3 = sub_10079403C(v8);
    }

    if (a4)
    {
      *a4 = sub_10079403C(v7);
    }
  }
}

- (double)_mapstest_doubleValueForKey:(id)a3 defaultValue:(double)a4
{
  v5 = [(NSDictionary *)self objectForKeyedSubscript:a3];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    a4 = v7;
  }

  return a4;
}

- (int64_t)_mapstest_integerValueForKey:(id)a3 defaultValue:(int64_t)a4
{
  v5 = [(NSDictionary *)self objectForKeyedSubscript:a3];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 integerValue];
  }

  return a4;
}

- (id)_mapstest_addressDictionaryForKey:(id)a3
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:a3];
  v4 = [v3 dataUsingEncoding:4];
  v5 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:0];

  return v5;
}

- (NSArray)_mapstest_readSubTestsFromTestSerial
{
  v2 = [(NSDictionary *)self _mapstest_arrayWithJSONForKey:@"testSerial"];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v47 = v2;
    v4 = v2;
    v54 = [v4 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (!v54)
    {
      goto LABEL_28;
    }

    v5 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v53 = *v56;
    v48 = v4;
    v49 = v3;
    while (1)
    {
      for (i = 0; i != v54; i = i + 1)
      {
        if (*v56 != v53)
        {
          objc_enumerationMutation(v4);
        }

        v7 = *(*(&v55 + 1) + 8 * i);
        v8 = [v4 indexOfObject:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v7 objectForKeyedSubscript:@"selector"];
          v10 = v9;
          if (v9)
          {
            v11 = v5;
            if (([v9 hasSuffix:@":"] & 1) == 0)
            {
              v12 = v3;
              v13 = [v10 stringByAppendingString:@":"];

              v10 = v13;
LABEL_17:
              v41 = objc_opt_new();
              [v41 setObject:v10 forKeyedSubscript:@"selector"];
              v42 = [v7 objectForKeyedSubscript:@"subTestName"];
              if (v42)
              {
                v43 = [v7 objectForKeyedSubscript:@"subTestName"];
              }

              else
              {
                v43 = v10;
              }

              v33 = v43;

              if ([v33 hasSuffix:@":"])
              {
                v44 = [v33 substringToIndex:{objc_msgSend(v33, "length") - 1}];

                v33 = v44;
              }

              if ([v4 count] >= 2)
              {
                v45 = [NSString stringWithFormat:@"step%lu-%@", v8 + 1, v33];

                v33 = v45;
              }

              [v7 removeObjectForKey:@"selector"];
              [v7 removeObjectForKey:@"subTestName"];
              [v7 setObject:v33 forKeyedSubscript:@"subTestName"];
              v40 = v41;
              [v41 setObject:v7 forKeyedSubscript:@"options"];
              v3 = v12;
              [v12 addObject:v40];
              v5 = v11;
              goto LABEL_25;
            }
          }

          else
          {
            v11 = v5;
          }

          v12 = v3;
          goto LABEL_17;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        v52 = v7;
        v10 = [v52 componentsSeparatedByString:@" "];
        v14 = [v10 objectAtIndexedSubscript:0];
        [v14 doubleValue];
        v16 = v15;

        v17 = [v10 objectAtIndexedSubscript:1];
        [v17 doubleValue];
        v19 = v18;

        v20 = [v10 objectAtIndexedSubscript:2];
        [v20 doubleValue];
        v22 = v21;

        v23 = [v10 objectAtIndexedSubscript:3];
        [v23 doubleValue];
        v25 = v24;

        v26 = [v10 objectAtIndexedSubscript:4];
        [v26 doubleValue];
        v28 = v27;

        v29 = cos(v28 * 0.0174532925);
        v30 = 5.0;
        if ([v10 count] == 6)
        {
          v31 = [v10 objectAtIndexedSubscript:5];
          [v31 doubleValue];
          v30 = v32;
        }

        v33 = [NSString stringWithFormat:@"step%lu", v8 + 1];
        v61[0] = @"selector";
        v61[1] = @"options";
        v62[0] = @"setCenterCoordinateFull:";
        v59[0] = @"latitude";
        v51 = [NSNumber numberWithDouble:v16];
        v60[0] = v51;
        v59[1] = @"longitude";
        v50 = [NSNumber numberWithDouble:v19];
        v60[1] = v50;
        v59[2] = @"altitude";
        v34 = [NSNumber numberWithDouble:v29 * v22];
        v60[2] = v34;
        v59[3] = @"yaw";
        v35 = [NSNumber numberWithDouble:v25];
        v60[3] = v35;
        v59[4] = @"pitch";
        v36 = [NSNumber numberWithDouble:v28];
        v60[4] = v36;
        v59[5] = @"duration";
        v37 = [NSNumber numberWithDouble:v30];
        v59[6] = @"subTestName";
        v60[5] = v37;
        v60[6] = v33;
        v5 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
        v38 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:7];
        v62[1] = v38;
        v39 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:2];

        v3 = v49;
        [v49 addObject:v39];

        v4 = v48;
        v40 = v52;
LABEL_25:
      }

      v54 = [v4 countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (!v54)
      {
LABEL_28:

        v2 = v47;
        goto LABEL_30;
      }
    }
  }

  v3 = 0;
LABEL_30:

  return v3;
}

- (NSArray)_mapstest_serialSubTests
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"serialSubTests"];
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

  return v3;
}

- (id)_mapstest_arrayWithJSONForKey:(id)a3
{
  if (a3)
  {
    v3 = [(NSDictionary *)self objectForKeyedSubscript:?];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 dataUsingEncoding:4];
      v9 = 0;
      v6 = [NSJSONSerialization JSONObjectWithData:v5 options:1 error:&v9];
      objc_opt_class();
      v7 = 0;
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)dictionary:(id)a3 isEqualToDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToDictionary:v6];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_maps_writeBinaryPlist:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v7 = [NSPropertyListSerialization dataWithPropertyList:self format:200 options:0 error:&v19];
  v8 = v19;
  v9 = v8;
  if (v8)
  {
    if (*a4)
    {
      v10 = v8;
      v11 = 0;
      *a4 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [v6 stringByDeletingLastPathComponent];
    v13 = +[NSFileManager defaultManager];
    if (([v13 fileExistsAtPath:v12 isDirectory:0] & 1) == 0)
    {
      [v13 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v18 = 0;
    v11 = [v7 writeToFile:v6 options:1 error:&v18];
    v14 = v18;
    v15 = v14;
    if (v14)
    {
      if (*a4)
      {
        v16 = v14;
        v11 = 0;
        *a4 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

@end