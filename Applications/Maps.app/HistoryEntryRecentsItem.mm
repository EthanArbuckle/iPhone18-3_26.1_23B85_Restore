@interface HistoryEntryRecentsItem
+ (id)historyItemForIdentifier:(id)a3;
+ (id)saveCustomRoute:(id)a3 asWaypoint:(id)a4 withOriginalHistoryIdentifier:(id)a5;
+ (id)saveRoute:(id)a3 withOriginalHistoryIdentifier:(id)a4 editBlock:(id)a5 completionBlock:(id)a6;
+ (void)fetchHistoryItemMatchingIdentifier:(id)a3 completionHandler:(id)a4;
+ (void)fetchHistoryItemsMatchingWaypoints:(id)a3 completion:(id)a4;
+ (void)markRouteAsComplete:(id)a3;
+ (void)removeEntries:(id)a3 completion:(id)a4;
+ (void)saveCuratedCollection:(id)a3 completion:(id)a4;
+ (void)saveLineItem:(id)a3 completion:(id)a4;
+ (void)saveMapItem:(id)a3 superseedUUID:(id)a4 tracksRAPReportingOnly:(BOOL)a5;
+ (void)saveSearch:(id)a3 completion:(id)a4;
+ (void)saveWaypoints:(id)a3 transportType:(int)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNavigationInterrupted;
- (HistoryEntryRecentsItem)initWithHistoryEntry:(id)a3;
- (NSString)_maps_diffableDataSourceIdentifier;
- (double)timestamp;
- (id)entryForHistoryPlace:(id)a3;
- (id)entryForHistoryRoute:(id)a3;
- (id)entryForHistorySearch:(id)a3;
- (id)entryWithTicket:(id)a3;
- (unint64_t)hash;
- (void)setNavigationInterrupted:(BOOL)a3 completion:(id)a4;
- (void)setSharedETAData:(id)a3 completion:(id)a4;
- (void)updateModel:(id)a3;
- (void)updateResumeRouteHandle:(id)a3 completion:(id)a4;
@end

@implementation HistoryEntryRecentsItem

- (void)updateModel:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10080113C;
  v22 = sub_10080114C;
  v23 = &stru_1016631F0;
  v5 = [(HistoryEntryRecentsItem *)self historyEntry];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100801154;
  v15[3] = &unk_101656AC0;
  v16 = v4;
  v17 = &v18;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100801224;
  v12[3] = &unk_1016316B0;
  v13 = v16;
  v14 = &v18;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100801394;
  v9[3] = &unk_1016316D8;
  v6 = v13;
  v10 = v6;
  v11 = &v18;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100801424;
  v8[3] = &unk_10162AE48;
  v8[4] = &v18;
  [v5 ifSearch:v15 ifRoute:v12 ifPlaceDisplay:v9 ifTransitLineItem:v8];

  v7 = [NSString stringWithFormat:@"[History %@]", v19[5]];
  [v6 setDebugSubtitle:v7];

  _Block_object_dispose(&v18, 8);
}

- (id)entryForHistoryPlace:(id)a3
{
  v3 = a3;
  v4 = [[GEORPSuggestionEntry alloc] initWithType:5];
  v5 = [v3 geoMapItem];

  v6 = [MKMapItem _itemWithGeoMapItem:v5];

  v7 = [[SearchResult alloc] initWithMapItem:v6];
  v8 = [(SearchResult *)v7 title];
  v9 = [v6 _maps_placeTitleWithDefaultTitle:v8];

  if ([v6 _hasMUID])
  {
    v10 = [(SearchResult *)v7 singleLineAddress];
  }

  else
  {
    if ([v6 _maps_isLargeAreaPlace])
    {
      [v6 _maps_placeAreaNameWithDefaultName:v9];
    }

    else
    {
      [v6 _addressFormattedAsCity];
    }
    v10 = ;
  }

  v11 = v10;
  [v4 safeAddDisplayLine:v9];
  [v4 safeAddDisplayLine:v11];

  return v4;
}

- (id)entryForHistoryRoute:(id)a3
{
  v3 = a3;
  v4 = [[GEORPSuggestionEntry alloc] initWithType:4];
  v19 = 0;
  v20 = 0;
  [SearchResult newStartWaypointSearchResult:&v20 endWaypointSearchResult:&v19 forRouteHistoryEntry:v3];

  v5 = v20;
  v6 = v19;
  v7 = [v6 name];
  v8 = [v5 mapItem];
  v9 = [v8 name];

  if ([v5 isDynamicCurrentLocation])
  {
    v10 = [v5 place];
    v11 = [v10 address];
    v12 = [v11 structuredAddress];

    v13 = [v12 fullThoroughfare];

    if (![v13 length])
    {
      v14 = [v12 thoroughfare];

      v13 = v14;
    }

    if (![v13 length])
    {
      v15 = [v5 mapItem];
      v16 = [v15 _addressFormattedAsCity];

      v13 = v16;
    }

    v9 = v13;
  }

  if (![v9 length])
  {
    v17 = [v5 title];

    v9 = v17;
  }

  [v4 safeAddDisplayLine:v7];
  [v4 safeAddDisplayLine:v9];

  return v4;
}

- (id)entryForHistorySearch:(id)a3
{
  v3 = a3;
  v4 = [[GEORPSuggestionEntry alloc] initWithType:6];
  v5 = [v3 query];
  [v4 safeAddDisplayLine:v5];

  v6 = [v3 locationDisplayString];

  [v4 safeAddDisplayLine:v6];

  return v4;
}

- (id)entryWithTicket:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1009E8654;
  v15 = sub_1009E8664;
  v16 = 0;
  v5 = [(HistoryEntryRecentsItem *)self historyEntry];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1009E866C;
  v10[3] = &unk_101656AC0;
  v10[4] = self;
  v10[5] = &v11;
  v8[5] = &v11;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1009E86BC;
  v9[3] = &unk_1016316B0;
  v9[4] = self;
  v9[5] = &v11;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009E870C;
  v8[3] = &unk_1016316D8;
  v8[4] = self;
  [v5 ifSearch:v10 ifRoute:v9 ifPlaceDisplay:v8 ifTransitLineItem:0];

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HistoryEntryRecentsItem *)self historyEntry];
      v7 = [(HistoryEntryRecentsItem *)v5 historyEntry];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(HistoryEntryRecentsItem *)self historyEntry];
  v3 = [v2 hash];

  return v3;
}

- (double)timestamp
{
  v2 = [(HistoryEntryRecentsItem *)self historyEntry];
  v3 = [v2 usageDate];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return v5;
}

- (HistoryEntryRecentsItem)initWithHistoryEntry:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HistoryEntryRecentsItem;
  v6 = [(HistoryEntryRecentsItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_historyEntry, a3);
  }

  return v7;
}

- (void)setSharedETAData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HistoryEntryRecentsItem *)self historyEntry];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v10 = [(HistoryEntryRecentsItem *)self historyEntry];
  v11 = v10;
  if (isKindOfClass)
  {
    v12 = [v10 sharedETAData];
    v13 = v6;
    v14 = v12;
    if (v13 | v14)
    {
      v15 = v14;
      v16 = [v13 isEqual:v14];

      if (!v16)
      {
        [v11 setSharedETAData:v13];
        v17 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
        v33 = v11;
        v18 = [NSArray arrayWithObjects:&v33 count:1];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100ADE0F4;
        v30[3] = &unk_1016610B8;
        v31 = v7;
        [v17 saveWithObjects:v18 completionHandler:v30];

        v19 = v31;
LABEL_11:

LABEL_12:
        goto LABEL_13;
      }
    }

    goto LABEL_8;
  }

  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if (v20)
  {
    v11 = [(HistoryEntryRecentsItem *)self historyEntry];
    v21 = [v11 sharedETAData];
    v22 = v6;
    v23 = v21;
    if (v22 | v23)
    {
      v24 = v23;
      v25 = [v22 isEqual:v23];

      if (!v25)
      {
        [v11 setSharedETAData:v22];
        v26 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
        v32 = v11;
        v27 = [NSArray arrayWithObjects:&v32 count:1];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100ADE10C;
        v28[3] = &unk_1016610B8;
        v29 = v7;
        [v26 saveWithObjects:v27 completionHandler:v28];

        v19 = v29;
        goto LABEL_11;
      }
    }

LABEL_8:
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)setNavigationInterrupted:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(HistoryEntryRecentsItem *)self historyEntry];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v9 = [(HistoryEntryRecentsItem *)self historyEntry];
  v10 = v9;
  if (isKindOfClass)
  {
    [v9 setNavigationInterrupted:v4];
    v11 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v21 = v10;
    v12 = [NSArray arrayWithObjects:&v21 count:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100ADE358;
    v18[3] = &unk_1016610B8;
    v13 = &v19;
    v19 = v6;
    v14 = v18;
LABEL_5:
    [v11 saveWithObjects:v12 completionHandler:v14];

    goto LABEL_6;
  }

  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v10 = [(HistoryEntryRecentsItem *)self historyEntry];
    [v10 setNavigationInterrupted:v4];
    v11 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v20 = v10;
    v12 = [NSArray arrayWithObjects:&v20 count:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100ADE370;
    v16[3] = &unk_1016610B8;
    v13 = &v17;
    v17 = v6;
    v14 = v16;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)updateResumeRouteHandle:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HistoryEntryRecentsItem *)self historyEntry];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(HistoryEntryRecentsItem *)self historyEntry];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v11 = [v10 routeRequestStorage];
      [v11 setResumeRouteHandleStorage:v6];
      [v10 setRouteRequestStorage:v11];
    }

    v12 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v16 = v10;
    v13 = [NSArray arrayWithObjects:&v16 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100ADE53C;
    v14[3] = &unk_1016610B8;
    v15 = v7;
    [v12 saveWithObjects:v13 completionHandler:v14];
  }
}

+ (void)removeEntries:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * v12) historyEntry];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100ADE720;
  v16[3] = &unk_1016610B8;
  v17 = v6;
  v15 = v6;
  [v14 deleteWithObjects:v7 completionHandler:v16];
}

+ (void)saveCuratedCollection:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MSHistoryItemRequest);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100ADE8C4;
  v10[3] = &unk_1016601F0;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 fetchWithCompletionHandler:v10];
}

+ (void)saveSearch:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MSHistoryItemRequest);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100ADEDBC;
  v10[3] = &unk_1016601F0;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 fetchWithCompletionHandler:v10];
}

+ (void)saveLineItem:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MSHistoryItemRequest);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100ADF42C;
  v10[3] = &unk_1016601F0;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 fetchWithCompletionHandler:v10];
}

+ (void)saveMapItem:(id)a3 superseedUUID:(id)a4 tracksRAPReportingOnly:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 _geoMapItem];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100ADF850;
  v12[3] = &unk_101638D38;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [a1 fetchHistoryItemsMatchingMapItem:v9 completion:v12];
}

+ (void)saveWaypoints:(id)a3 transportType:(int)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100ADFAE8;
  v7[3] = &unk_1016518E8;
  v8 = a3;
  v9 = a4;
  v6 = v8;
  [a1 fetchHistoryItemsMatchingWaypoints:v6 completion:v7];
}

+ (void)markRouteAsComplete:(id)a3
{
  v4 = a3;
  v5 = [v4 userRequestedWaypoints];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100ADFD58;
  v7[3] = &unk_101655400;
  v8 = v4;
  v6 = v4;
  [a1 fetchHistoryItemsMatchingWaypoints:v5 completion:v7];
}

+ (id)saveCustomRoute:(id)a3 asWaypoint:(id)a4 withOriginalHistoryIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100035E6C();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v9 shortDescription];
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Will try to save a waypoint-to-route: %@, originalHistoryIdentifier: %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v43 = sub_100AE05D4;
    v44 = sub_100AE05E4;
    v45 = 0;
    if (!v10)
    {
      goto LABEL_19;
    }

    v14 = sub_100035E6C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v40 = 138412290;
      v41 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Finding historyItem for identifier: %@", v40, 0xCu);
    }

    v15 = [a1 historyItemForIdentifier:v10];
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = sub_100035E6C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v40 = 138412290;
      v41 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Found historyItem matching identifier: %@", v40, 0xCu);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_20;
    }

    v17 = sub_100035E6C();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
LABEL_18:

      v23 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v15;

LABEL_19:
      v15 = objc_opt_new();
LABEL_20:
      v24 = [GEOComposedWaypoint alloc];
      v25 = +[MKMapItem mapItemForCurrentLocation];
      v26 = [v25 _geoMapItem];
      v27 = [v24 initWithMapItem:v26];

      v39[0] = v27;
      v39[1] = v9;
      v28 = [NSArray arrayWithObjects:v39 count:2];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100AE05EC;
      v33[3] = &unk_101637808;
      v12 = v15;
      v34 = v12;
      v38 = buf;
      v29 = v27;
      v35 = v29;
      v36 = v9;
      v37 = v8;
      [a1 fetchHistoryItemsMatchingWaypoints:v28 completion:v33];

      v30 = [[HistoryEntryRecentsItem alloc] initWithHistoryEntry:v12];
      _Block_object_dispose(buf, 8);

      goto LABEL_24;
    }

    v18 = v15;
    v19 = objc_opt_class();
    v32 = NSStringFromClass(v19);
    if (objc_opt_respondsToSelector())
    {
      v20 = [v18 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ([v20 isEqualToString:v32] & 1) == 0)
      {
        v22 = [NSString stringWithFormat:@"%@<%p, %@>", v32, v18, v21];

        goto LABEL_17;
      }
    }

    v22 = [NSString stringWithFormat:@"%@<%p>", v32, v18];
LABEL_17:

    *v40 = 138412290;
    v41 = v22;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Existing directionItem %@ is not of correct type MSHistoryDirectionsItem, will create a new one", v40, 0xCu);

    goto LABEL_18;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    *&buf[4] = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Will not save route as required property is missing (waypoint: %@)", buf, 0xCu);
  }

  v30 = 0;
LABEL_24:

  return v30;
}

+ (id)saveRoute:(id)a3 withOriginalHistoryIdentifier:(id)a4 editBlock:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = [v10 origin];
    if (v14)
    {
      v15 = [v10 destination];

      if (v15)
      {
        v16 = [v10 userRequestedWaypoints];
        v49 = [v16 count] > 2;
        v17 = +[VGVirtualGarageService sharedService];
        v52 = [v17 activeVehicleIdentifier];

        v18 = [v10 chargingStationInfos];
        v51 = [v18 firstObject];

        v19 = [v10 isEVRoute];
        if (v51)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        if (!v52)
        {
          v20 = 0;
        }

        v50 = v20;
        v21 = sub_100035E6C();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v10 description];
          v23 = [v11 UUIDString];
          *buf = 138412802;
          *&buf[4] = v22;
          *&buf[12] = 2112;
          *&buf[14] = v23;
          *&buf[22] = 2048;
          v71 = [v16 count];
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Will try to save a route: %@,\noriginalHistoryIdentifier: %@, \nuserRequestedWaypoints: %lu", buf, 0x20u);
        }

        v24 = objc_opt_class();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v71 = sub_100AE05D4;
        v72 = sub_100AE05E4;
        v73 = 0;
        if (!v11)
        {
          goto LABEL_26;
        }

        v25 = sub_100035E6C();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *v66 = 138412290;
          v67 = v11;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Finding historyItem for identifier: %@", v66, 0xCu);
        }

        v26 = [objc_opt_class() historyItemForIdentifier:v11];
        if (!v26)
        {
          goto LABEL_26;
        }

        v27 = sub_100035E6C();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *v66 = 138412290;
          v67 = v11;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Found historyItem matching identifier: %@", v66, 0xCu);
        }

        if ([objc_opt_class() isEqual:v24])
        {
          goto LABEL_38;
        }

        v28 = sub_100035E6C();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
LABEL_25:

          v35 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v26;

LABEL_26:
          v26 = objc_alloc_init(v24);
          if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
          {
            v36 = [*(*&buf[8] + 40) sharedETAData];
            if (v36 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              v37 = sub_100035E6C();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *v66 = 0;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Migrating sharedETAData from original item to new item", v66, 2u);
              }

              [v26 setSharedETAData:v36];
            }
          }

          else
          {
            v36 = 0;
          }

LABEL_38:
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_100AE1598;
          v54[3] = &unk_1016377A0;
          v42 = v26;
          v55 = v42;
          v56 = v10;
          v62 = buf;
          v38 = v16;
          v57 = v38;
          v63 = !v49 & v50;
          v43 = v51;
          v58 = v43;
          v53 = v52;
          v59 = v53;
          v64 = v49;
          v65 = v50;
          v60 = v12;
          v61 = v13;
          [a1 fetchHistoryItemsMatchingWaypoints:v38 completion:v54];
          v41 = [[HistoryEntryRecentsItem alloc] initWithHistoryEntry:v42];

          _Block_object_dispose(buf, 8);
          goto LABEL_39;
        }

        v48 = v26;
        v29 = objc_opt_class();
        v47 = NSStringFromClass(v29);
        if (objc_opt_respondsToSelector())
        {
          v30 = [v48 performSelector:"accessibilityIdentifier"];
          v31 = v30;
          if (v30)
          {
            v32 = v30;
            v33 = [v30 isEqualToString:v47];
            v31 = v32;
            if ((v33 & 1) == 0)
            {
              v45 = [NSString stringWithFormat:@"%@<%p, %@>", v47, v48, v32];
              v46 = v32;
              v34 = v45;

              goto LABEL_24;
            }
          }
        }

        v34 = [NSString stringWithFormat:@"%@<%p>", v47, v48];
LABEL_24:

        *v66 = 138412546;
        v67 = v34;
        v68 = 2112;
        v69 = v24;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Existing directionItem %@ is not of correct type for saving %@, will create a new one", v66, 0x16u);

        goto LABEL_25;
      }
    }
  }

  v38 = sub_100035E6C();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
  {
    v39 = [v10 origin];
    v40 = [v10 destination];
    *buf = 138412802;
    *&buf[4] = v39;
    *&buf[12] = 2112;
    *&buf[14] = v40;
    *&buf[22] = 2112;
    v71 = v10;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "Will not save route as required properties are missing (origin: %@, destination: %@, route: %@)", buf, 0x20u);
  }

  v41 = 0;
LABEL_39:

  return v41;
}

+ (id)historyItemForIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100AE05D4;
  v16 = sub_100AE05E4;
  v17 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100AE2418;
  v9[3] = &unk_101637730;
  v11 = &v12;
  v5 = dispatch_semaphore_create(0);
  v10 = v5;
  [a1 fetchHistoryItemMatchingIdentifier:v4 completionHandler:v9];
  v6 = dispatch_time(0, 1000000000);
  v7 = 0;
  if (!dispatch_semaphore_wait(v5, v6))
  {
    v7 = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

+ (void)fetchHistoryItemMatchingIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_TtC8MapsSync13MapsSyncRange alloc] initWithOffset:0 limit:1];
  v15 = v6;
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  v9 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"identifier == %@" argumentArray:v8];

  v10 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v9 sortDescriptors:0 range:v7];
  v11 = objc_alloc_init(MSHistoryItemRequest);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100AE2604;
  v13[3] = &unk_10165EB78;
  v14 = v5;
  v12 = v5;
  [v11 fetchWithOptions:v10 completionHandler:v13];
}

+ (void)fetchHistoryItemsMatchingWaypoints:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(MSHistoryItemRequest);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100AE275C;
  v12[3] = &unk_10165FB28;
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = v5;
  [v8 fetchWithCompletionHandler:v12];
}

- (BOOL)isNavigationInterrupted
{
  v3 = [(HistoryEntryRecentsItem *)self historyEntry];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(HistoryEntryRecentsItem *)self historyEntry];
  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  if (v6)
  {
    v5 = [(HistoryEntryRecentsItem *)self historyEntry];
LABEL_4:
    v7 = [v5 navigationInterrupted];

    return v7;
  }

  return 0;
}

- (NSString)_maps_diffableDataSourceIdentifier
{
  v2 = [(HistoryEntryRecentsItem *)self historyEntry];
  v3 = [v2 storageIdentifier];
  v4 = [v3 UUIDString];

  return v4;
}

@end