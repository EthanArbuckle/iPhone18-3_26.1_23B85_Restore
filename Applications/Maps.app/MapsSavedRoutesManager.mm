@interface MapsSavedRoutesManager
+ (BOOL)didThisDeviceCreateRouteData:(id)data;
+ (id)routeDataForMapsSyncUserRoute:(id)route;
+ (unint64_t)savedRoutesCount;
+ (void)_deleteIDFromLocalListWithRoute:(id)route;
+ (void)_fetchSavedRoutesWithStorageID:(id)d handler:(id)handler;
+ (void)_saveToLocalListWithRoute:(id)route;
+ (void)_updateLocalListWithKnownRoutes:(id)routes;
+ (void)_updateUserRoute:(id)route withRouteData:(id)data;
+ (void)deleteRoute:(id)route completion:(id)completion;
+ (void)deleteRouteStorageID:(id)d completion:(id)completion;
+ (void)fetchSavedRoutesWithTourMuid:(unint64_t)muid completion:(id)completion;
+ (void)fetchSavedRoutesWithType:(int64_t)type matchingQuery:(id)query range:(id)range completion:(id)completion;
+ (void)saveRouteData:(id)data completion:(id)completion;
@end

@implementation MapsSavedRoutesManager

+ (unint64_t)savedRoutesCount
{
  v2 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:0 sortDescriptors:0 range:0];
  v3 = objc_opt_new();
  v9 = 0;
  v4 = [v3 fetchSyncWithOptions:v2 error:&v9];
  v5 = v9;
  v6 = [v4 count];

  if (v5)
  {
    v7 = sub_100C3CC40();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get route count, error: %{public}@", buf, 0xCu);
    }
  }

  return v6;
}

+ (void)_deleteIDFromLocalListWithRoute:(id)route
{
  routeCopy = route;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = GEOConfigGetArray();
  v5 = v4;
  if (!v4)
  {
    v4 = &__NSArray0__struct;
  }

  v6 = [v4 mutableCopy];

  uUIDString = [routeCopy UUIDString];

  if (uUIDString)
  {
    [v6 removeObject:uUIDString];
  }

  else
  {
    v8 = sub_100C3CC40();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Route data didn't have a storageID at deletion", v9, 2u);
    }
  }

  GEOConfigSetArray();
}

+ (void)_saveToLocalListWithRoute:(id)route
{
  routeCopy = route;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = GEOConfigGetArray();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  v7 = [NSMutableSet setWithArray:v6];

  storageID = [routeCopy storageID];

  uUIDString = [storageID UUIDString];

  if (uUIDString)
  {
    [v7 addObject:uUIDString];
  }

  else
  {
    v10 = sub_100C3CC40();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Route data didn't have a storageID at creation", v11, 2u);
    }
  }
}

+ (void)_updateLocalListWithKnownRoutes:(id)routes
{
  routesCopy = routes;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = GEOConfigGetArray();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  v7 = [NSMutableSet setWithArray:v6];

  v8 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = routesCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        storageID = [*(*(&v18 + 1) + 8 * i) storageID];
        uUIDString = [storageID UUIDString];

        if (uUIDString && [v7 containsObject:uUIDString])
        {
          [v7 removeObject:uUIDString];
          [v8 addObject:uUIDString];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v11);
  }

  if ([v7 count])
  {
    v16 = sub_100C3CC40();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "These routes were deleted: %{public}@", buf, 0xCu);
    }
  }

  allObjects = [v8 allObjects];
  GEOConfigSetArray();
}

+ (BOOL)didThisDeviceCreateRouteData:(id)data
{
  dataCopy = data;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = GEOConfigGetArray();
  v5 = v4;
  v6 = &__NSArray0__struct;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        storageID = [dataCopy storageID];
        uUIDString = [storageID UUIDString];
        LOBYTE(v12) = [uUIDString isEqualToString:v12];

        if (v12)
        {
          LOBYTE(v9) = 1;
          goto LABEL_13;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v9;
}

+ (id)routeDataForMapsSyncUserRoute:(id)route
{
  routeCopy = route;
  if (routeCopy)
  {
    v4 = objc_opt_class();
    routeGeometry = [routeCopy routeGeometry];
    v21 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:v4 fromData:routeGeometry error:&v21];
    v7 = v21;

    if (v7 || !v6)
    {
      v19 = sub_100C3CC40();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v7;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error converting MSUserRoute to GEOComposedGeometryRoutePersistentData: %@", buf, 0xCu);
      }

      v18 = 0;
    }

    else
    {
      version = [v6 version];
      if (version != [v6 originalVersion])
      {
        v9 = sub_100C3CC40();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          originalVersion = [v6 originalVersion];
          version2 = [v6 version];
          *buf = 134218240;
          v23 = originalVersion;
          v24 = 2048;
          v25 = version2;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Updated route data from version %llu to %llu.", buf, 0x16u);
        }
      }

      identifier = [routeCopy identifier];
      [v6 setStorageID:identifier];

      storageID = [v6 storageID];

      if (!storageID)
      {
        v14 = sub_100C3CC40();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = routeCopy;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "didn't get an identifier from %@", buf, 0xCu);
        }

        v15 = objc_opt_new();
        [v6 setStorageID:v15];
      }

      if (![v6 source])
      {
        tourIdentifier = [v6 tourIdentifier];

        if (tourIdentifier)
        {
          v17 = 2;
        }

        else
        {
          v17 = 3;
        }

        [v6 setSource:v17];
      }

      v18 = v6;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (void)_updateUserRoute:(id)route withRouteData:(id)data
{
  routeCopy = route;
  dataCopy = data;
  userProvidedName = [dataCopy userProvidedName];
  [routeCopy setCustomName:userProvidedName];

  userProvidedNotes = [dataCopy userProvidedNotes];
  [routeCopy setCustomNote:userProvidedNotes];

  [routeCopy setTourIdentifier:{objc_msgSend(dataCopy, "tourMuid")}];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [dataCopy transportType]);
  [routeCopy setTransportType:v8];

  [dataCopy distance];
  v9 = [NSNumber numberWithDouble:?];
  [routeCopy setLength:v9];

  address = [dataCopy address];
  v11 = [NSKeyedArchiver archivedDataWithRootObject:address requiringSecureCoding:1 error:0];
  [routeCopy setAddressObject:v11];

  anchorPoints = [dataCopy anchorPoints];
  v13 = [anchorPoints count];

  if (v13)
  {
    anchorPoints2 = [dataCopy anchorPoints];
    firstObject = [anchorPoints2 firstObject];

    [firstObject coordinate];
    v16 = [NSNumber numberWithDouble:?];
    [routeCopy setOriginLatitude:v16];

    [firstObject coordinate];
    v18 = [NSNumber numberWithDouble:v17];
    [routeCopy setOriginLongitude:v18];
  }

  elevationProfile = [dataCopy elevationProfile];

  if (elevationProfile)
  {
    elevationProfile2 = [dataCopy elevationProfile];
    v21 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [elevationProfile2 sumElevationGainCm] * 0.01);
    [routeCopy setTotalAscent:v21];

    elevationProfile3 = [dataCopy elevationProfile];
    v23 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [elevationProfile3 sumElevationLossCm] * 0.01);
    [routeCopy setTotalDescent:v23];
  }

  boundingMapRegion = [dataCopy boundingMapRegion];
  v25 = boundingMapRegion;
  if (boundingMapRegion)
  {
    [boundingMapRegion northLat];
    v26 = [NSNumber numberWithDouble:?];
    [routeCopy setNorthLatitude:v26];

    [v25 southLat];
    v27 = [NSNumber numberWithDouble:?];
    [routeCopy setSouthLatitude:v27];

    [v25 eastLng];
    v28 = [NSNumber numberWithDouble:?];
    [routeCopy setEastLongitude:v28];

    [v25 westLng];
    v29 = [NSNumber numberWithDouble:?];
    [routeCopy setWestLongitude:v29];
  }

  v30 = [NSKeyedArchiver archivedDataWithRootObject:dataCopy requiringSecureCoding:1 error:0];
  [routeCopy setRouteGeometry:v30];
}

+ (void)_fetchSavedRoutesWithStorageID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (dCopy)
    {
      v7 = objc_opt_new();
      v18 = dCopy;
      v8 = [NSArray arrayWithObjects:&v18 count:1];
      v9 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"identifier == %@" argumentArray:v8];

      v10 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v9 sortDescriptors:0 range:0];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100C3DC84;
      v15[3] = &unk_1016601F0;
      v16 = dCopy;
      v17 = handlerCopy;
      [v7 fetchWithOptions:v10 completionHandler:v15];

      goto LABEL_4;
    }

    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v20 = "+[MapsSavedRoutesManager _fetchSavedRoutesWithStorageID:handler:]";
      v21 = 2080;
      v22 = "MapsSavedRoutesManager.m";
      v23 = 1024;
      v24 = 385;
      v25 = 2080;
      v26 = "storageID != nil";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v20 = "+[MapsSavedRoutesManager _fetchSavedRoutesWithStorageID:handler:]";
      v21 = 2080;
      v22 = "MapsSavedRoutesManager.m";
      v23 = 1024;
      v24 = 380;
      v25 = 2080;
      v26 = "handler != nil";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      v9 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
LABEL_4:

LABEL_5:
    }
  }
}

+ (void)deleteRouteStorageID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = completionCopy;
  if (dCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100C3DF24;
    v10[3] = &unk_101661318;
    v12 = completionCopy;
    selfCopy = self;
    v11 = dCopy;
    [MapsSavedRoutesManager _fetchSavedRoutesWithStorageID:v11 handler:v10];
  }

  else if (completionCopy)
  {
    v9 = sub_100C3CC40();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Can't delete a routeData that is nil or has no storageID.", buf, 2u);
    }

    v8[2](v8, 0);
  }
}

+ (void)deleteRoute:(id)route completion:(id)completion
{
  completionCopy = completion;
  storageID = [route storageID];
  [self deleteRouteStorageID:storageID completion:completionCopy];
}

+ (void)saveRouteData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if (!dataCopy)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: routeData != nil", buf, 2u);
    }

    __break(1u);
  }

  v8 = completionCopy;
  v9 = sub_100C3CC40();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    routeName = [dataCopy routeName];
    anchorPoints = [dataCopy anchorPoints];
    *buf = 138478083;
    v26 = routeName;
    v27 = 1024;
    v28 = [anchorPoints count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving route. Name: %{private}@, Anchors: %d", buf, 0x12u);
  }

  [dataCopy prepareForSaving];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100C3E6C4;
  v21[3] = &unk_10164E660;
  v12 = dataCopy;
  v22 = v12;
  selfCopy = self;
  v13 = v8;
  v23 = v13;
  v14 = objc_retainBlock(v21);
  storageID = [v12 storageID];

  if (storageID)
  {
    storageID2 = [v12 storageID];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100C3E814;
    v18[3] = &unk_1016601F0;
    v19 = v12;
    v20 = v14;
    [MapsSavedRoutesManager _fetchSavedRoutesWithStorageID:storageID2 handler:v18];

    v17 = v19;
  }

  else
  {
    v17 = objc_opt_new();
    (v14[2])(v14, v17);
  }
}

+ (void)fetchSavedRoutesWithTourMuid:(unint64_t)muid completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (muid)
    {
      v6 = objc_opt_new();
      v7 = [NSNumber numberWithUnsignedLongLong:muid];
      v19 = v7;
      v8 = [NSArray arrayWithObjects:&v19 count:1];
      v9 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"tourIdentifier == %@" argumentArray:v8];

      v10 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v9 sortDescriptors:0 range:0];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100C3EDC4;
      v16[3] = &unk_10164F6B8;
      muidCopy = muid;
      v17 = completionCopy;
      [v6 fetchWithOptions:v10 completionHandler:v16];
    }

    else
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [NSString stringWithFormat:@"tourMuid of 0 is not valid."];
        *buf = 136316162;
        v21 = "+[MapsSavedRoutesManager fetchSavedRoutesWithTourMuid:completion:]";
        v22 = 2080;
        v23 = "MapsSavedRoutesManager.m";
        v24 = 1024;
        v25 = 262;
        v26 = 2080;
        v27 = "tourMuid != 0";
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
      }

      if (sub_100E03634())
      {
        v13 = sub_10006D178();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v21 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v15 = sub_100C3CC40();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "tourMuid of 0 is not valid.", buf, 2u);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

+ (void)fetchSavedRoutesWithType:(int64_t)type matchingQuery:(id)query range:(id)range completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  if (completionCopy)
  {
    rangeCopy = range;
    v13 = sub_100C3CC40();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "+[MapsSavedRoutesManager fetchSavedRoutesWithType:matchingQuery:range:completion:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    if ([queryCopy length])
    {
      queryCopy = [_TtC8MapsSync22MapsSyncQueryPredicate predicateWithFormat:@"customName CONTAINS[cd] %@", queryCopy];
    }

    else
    {
      queryCopy = 0;
    }

    v15 = [NSSortDescriptor sortDescriptorWithKey:@"createTime" ascending:0];
    v16 = [_TtC8MapsSync20MapsSyncQueryOptions alloc];
    v24 = v15;
    v17 = [NSArray arrayWithObjects:&v24 count:1];
    v18 = [v16 initWithPredicate:queryCopy sortDescriptors:v17 range:rangeCopy];

    v19 = objc_opt_new();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100C3F264;
    v20[3] = &unk_10164E5A8;
    v21 = completionCopy;
    selfCopy = self;
    typeCopy = type;
    [v19 fetchWithOptions:v18 completionHandler:v20];
  }
}

@end