@interface MapsSavedRoutesManager
+ (BOOL)didThisDeviceCreateRouteData:(id)a3;
+ (id)routeDataForMapsSyncUserRoute:(id)a3;
+ (unint64_t)savedRoutesCount;
+ (void)_deleteIDFromLocalListWithRoute:(id)a3;
+ (void)_fetchSavedRoutesWithStorageID:(id)a3 handler:(id)a4;
+ (void)_saveToLocalListWithRoute:(id)a3;
+ (void)_updateLocalListWithKnownRoutes:(id)a3;
+ (void)_updateUserRoute:(id)a3 withRouteData:(id)a4;
+ (void)deleteRoute:(id)a3 completion:(id)a4;
+ (void)deleteRouteStorageID:(id)a3 completion:(id)a4;
+ (void)fetchSavedRoutesWithTourMuid:(unint64_t)a3 completion:(id)a4;
+ (void)fetchSavedRoutesWithType:(int64_t)a3 matchingQuery:(id)a4 range:(id)a5 completion:(id)a6;
+ (void)saveRouteData:(id)a3 completion:(id)a4;
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

+ (void)_deleteIDFromLocalListWithRoute:(id)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = GEOConfigGetArray();
  v5 = v4;
  if (!v4)
  {
    v4 = &__NSArray0__struct;
  }

  v6 = [v4 mutableCopy];

  v7 = [v3 UUIDString];

  if (v7)
  {
    [v6 removeObject:v7];
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

+ (void)_saveToLocalListWithRoute:(id)a3
{
  v3 = a3;
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

  v8 = [v3 storageID];

  v9 = [v8 UUIDString];

  if (v9)
  {
    [v7 addObject:v9];
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

+ (void)_updateLocalListWithKnownRoutes:(id)a3
{
  v3 = a3;
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
  v9 = v3;
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

        v14 = [*(*(&v18 + 1) + 8 * i) storageID];
        v15 = [v14 UUIDString];

        if (v15 && [v7 containsObject:v15])
        {
          [v7 removeObject:v15];
          [v8 addObject:v15];
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

  v17 = [v8 allObjects];
  GEOConfigSetArray();
}

+ (BOOL)didThisDeviceCreateRouteData:(id)a3
{
  v3 = a3;
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
        v13 = [v3 storageID];
        v14 = [v13 UUIDString];
        LOBYTE(v12) = [v14 isEqualToString:v12];

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

+ (id)routeDataForMapsSyncUserRoute:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [v3 routeGeometry];
    v21 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:v4 fromData:v5 error:&v21];
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
      v8 = [v6 version];
      if (v8 != [v6 originalVersion])
      {
        v9 = sub_100C3CC40();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v6 originalVersion];
          v11 = [v6 version];
          *buf = 134218240;
          v23 = v10;
          v24 = 2048;
          v25 = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Updated route data from version %llu to %llu.", buf, 0x16u);
        }
      }

      v12 = [v3 identifier];
      [v6 setStorageID:v12];

      v13 = [v6 storageID];

      if (!v13)
      {
        v14 = sub_100C3CC40();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = v3;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "didn't get an identifier from %@", buf, 0xCu);
        }

        v15 = objc_opt_new();
        [v6 setStorageID:v15];
      }

      if (![v6 source])
      {
        v16 = [v6 tourIdentifier];

        if (v16)
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

+ (void)_updateUserRoute:(id)a3 withRouteData:(id)a4
{
  v31 = a3;
  v5 = a4;
  v6 = [v5 userProvidedName];
  [v31 setCustomName:v6];

  v7 = [v5 userProvidedNotes];
  [v31 setCustomNote:v7];

  [v31 setTourIdentifier:{objc_msgSend(v5, "tourMuid")}];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 transportType]);
  [v31 setTransportType:v8];

  [v5 distance];
  v9 = [NSNumber numberWithDouble:?];
  [v31 setLength:v9];

  v10 = [v5 address];
  v11 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
  [v31 setAddressObject:v11];

  v12 = [v5 anchorPoints];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [v5 anchorPoints];
    v15 = [v14 firstObject];

    [v15 coordinate];
    v16 = [NSNumber numberWithDouble:?];
    [v31 setOriginLatitude:v16];

    [v15 coordinate];
    v18 = [NSNumber numberWithDouble:v17];
    [v31 setOriginLongitude:v18];
  }

  v19 = [v5 elevationProfile];

  if (v19)
  {
    v20 = [v5 elevationProfile];
    v21 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [v20 sumElevationGainCm] * 0.01);
    [v31 setTotalAscent:v21];

    v22 = [v5 elevationProfile];
    v23 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [v22 sumElevationLossCm] * 0.01);
    [v31 setTotalDescent:v23];
  }

  v24 = [v5 boundingMapRegion];
  v25 = v24;
  if (v24)
  {
    [v24 northLat];
    v26 = [NSNumber numberWithDouble:?];
    [v31 setNorthLatitude:v26];

    [v25 southLat];
    v27 = [NSNumber numberWithDouble:?];
    [v31 setSouthLatitude:v27];

    [v25 eastLng];
    v28 = [NSNumber numberWithDouble:?];
    [v31 setEastLongitude:v28];

    [v25 westLng];
    v29 = [NSNumber numberWithDouble:?];
    [v31 setWestLongitude:v29];
  }

  v30 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
  [v31 setRouteGeometry:v30];
}

+ (void)_fetchSavedRoutesWithStorageID:(id)a3 handler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    if (v5)
    {
      v7 = objc_opt_new();
      v18 = v5;
      v8 = [NSArray arrayWithObjects:&v18 count:1];
      v9 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"identifier == %@" argumentArray:v8];

      v10 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v9 sortDescriptors:0 range:0];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100C3DC84;
      v15[3] = &unk_1016601F0;
      v16 = v5;
      v17 = v6;
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

    (*(v6 + 2))(v6, 0, 0);
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

+ (void)deleteRouteStorageID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100C3DF24;
    v10[3] = &unk_101661318;
    v12 = v7;
    v13 = a1;
    v11 = v6;
    [MapsSavedRoutesManager _fetchSavedRoutesWithStorageID:v11 handler:v10];
  }

  else if (v7)
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

+ (void)deleteRoute:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 storageID];
  [a1 deleteRouteStorageID:v7 completion:v6];
}

+ (void)saveRouteData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: routeData != nil", buf, 2u);
    }

    __break(1u);
  }

  v8 = v7;
  v9 = sub_100C3CC40();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 routeName];
    v11 = [v6 anchorPoints];
    *buf = 138478083;
    v26 = v10;
    v27 = 1024;
    v28 = [v11 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving route. Name: %{private}@, Anchors: %d", buf, 0x12u);
  }

  [v6 prepareForSaving];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100C3E6C4;
  v21[3] = &unk_10164E660;
  v12 = v6;
  v22 = v12;
  v24 = a1;
  v13 = v8;
  v23 = v13;
  v14 = objc_retainBlock(v21);
  v15 = [v12 storageID];

  if (v15)
  {
    v16 = [v12 storageID];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100C3E814;
    v18[3] = &unk_1016601F0;
    v19 = v12;
    v20 = v14;
    [MapsSavedRoutesManager _fetchSavedRoutesWithStorageID:v16 handler:v18];

    v17 = v19;
  }

  else
  {
    v17 = objc_opt_new();
    (v14[2])(v14, v17);
  }
}

+ (void)fetchSavedRoutesWithTourMuid:(unint64_t)a3 completion:(id)a4
{
  v5 = a4;
  if (v5)
  {
    if (a3)
    {
      v6 = objc_opt_new();
      v7 = [NSNumber numberWithUnsignedLongLong:a3];
      v19 = v7;
      v8 = [NSArray arrayWithObjects:&v19 count:1];
      v9 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"tourIdentifier == %@" argumentArray:v8];

      v10 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v9 sortDescriptors:0 range:0];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100C3EDC4;
      v16[3] = &unk_10164F6B8;
      v18 = a3;
      v17 = v5;
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

      (*(v5 + 2))(v5, 0, 0);
    }
  }
}

+ (void)fetchSavedRoutesWithType:(int64_t)a3 matchingQuery:(id)a4 range:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  if (v11)
  {
    v12 = a5;
    v13 = sub_100C3CC40();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "+[MapsSavedRoutesManager fetchSavedRoutesWithType:matchingQuery:range:completion:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    if ([v10 length])
    {
      v14 = [_TtC8MapsSync22MapsSyncQueryPredicate predicateWithFormat:@"customName CONTAINS[cd] %@", v10];
    }

    else
    {
      v14 = 0;
    }

    v15 = [NSSortDescriptor sortDescriptorWithKey:@"createTime" ascending:0];
    v16 = [_TtC8MapsSync20MapsSyncQueryOptions alloc];
    v24 = v15;
    v17 = [NSArray arrayWithObjects:&v24 count:1];
    v18 = [v16 initWithPredicate:v14 sortDescriptors:v17 range:v12];

    v19 = objc_opt_new();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100C3F264;
    v20[3] = &unk_10164E5A8;
    v21 = v11;
    v22 = a1;
    v23 = a3;
    [v19 fetchWithOptions:v18 completionHandler:v20];
  }
}

@end