@interface HistoryEntryRecentsItem
+ (id)historyItemForIdentifier:(id)identifier;
+ (id)saveCustomRoute:(id)route asWaypoint:(id)waypoint withOriginalHistoryIdentifier:(id)identifier;
+ (id)saveRoute:(id)route withOriginalHistoryIdentifier:(id)identifier editBlock:(id)block completionBlock:(id)completionBlock;
+ (void)fetchHistoryItemMatchingIdentifier:(id)identifier completionHandler:(id)handler;
+ (void)fetchHistoryItemsMatchingWaypoints:(id)waypoints completion:(id)completion;
+ (void)markRouteAsComplete:(id)complete;
+ (void)removeEntries:(id)entries completion:(id)completion;
+ (void)saveCuratedCollection:(id)collection completion:(id)completion;
+ (void)saveLineItem:(id)item completion:(id)completion;
+ (void)saveMapItem:(id)item superseedUUID:(id)d tracksRAPReportingOnly:(BOOL)only;
+ (void)saveSearch:(id)search completion:(id)completion;
+ (void)saveWaypoints:(id)waypoints transportType:(int)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNavigationInterrupted;
- (HistoryEntryRecentsItem)initWithHistoryEntry:(id)entry;
- (NSString)_maps_diffableDataSourceIdentifier;
- (double)timestamp;
- (id)entryForHistoryPlace:(id)place;
- (id)entryForHistoryRoute:(id)route;
- (id)entryForHistorySearch:(id)search;
- (id)entryWithTicket:(id)ticket;
- (unint64_t)hash;
- (void)setNavigationInterrupted:(BOOL)interrupted completion:(id)completion;
- (void)setSharedETAData:(id)data completion:(id)completion;
- (void)updateModel:(id)model;
- (void)updateResumeRouteHandle:(id)handle completion:(id)completion;
@end

@implementation HistoryEntryRecentsItem

- (void)updateModel:(id)model
{
  modelCopy = model;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10080113C;
  v22 = sub_10080114C;
  v23 = &stru_1016631F0;
  historyEntry = [(HistoryEntryRecentsItem *)self historyEntry];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100801154;
  v15[3] = &unk_101656AC0;
  v16 = modelCopy;
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
  [historyEntry ifSearch:v15 ifRoute:v12 ifPlaceDisplay:v9 ifTransitLineItem:v8];

  v7 = [NSString stringWithFormat:@"[History %@]", v19[5]];
  [v6 setDebugSubtitle:v7];

  _Block_object_dispose(&v18, 8);
}

- (id)entryForHistoryPlace:(id)place
{
  placeCopy = place;
  v4 = [[GEORPSuggestionEntry alloc] initWithType:5];
  geoMapItem = [placeCopy geoMapItem];

  v6 = [MKMapItem _itemWithGeoMapItem:geoMapItem];

  v7 = [[SearchResult alloc] initWithMapItem:v6];
  title = [(SearchResult *)v7 title];
  v9 = [v6 _maps_placeTitleWithDefaultTitle:title];

  if ([v6 _hasMUID])
  {
    singleLineAddress = [(SearchResult *)v7 singleLineAddress];
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
    singleLineAddress = ;
  }

  v11 = singleLineAddress;
  [v4 safeAddDisplayLine:v9];
  [v4 safeAddDisplayLine:v11];

  return v4;
}

- (id)entryForHistoryRoute:(id)route
{
  routeCopy = route;
  v4 = [[GEORPSuggestionEntry alloc] initWithType:4];
  v19 = 0;
  v20 = 0;
  [SearchResult newStartWaypointSearchResult:&v20 endWaypointSearchResult:&v19 forRouteHistoryEntry:routeCopy];

  v5 = v20;
  v6 = v19;
  name = [v6 name];
  mapItem = [v5 mapItem];
  name2 = [mapItem name];

  if ([v5 isDynamicCurrentLocation])
  {
    place = [v5 place];
    address = [place address];
    structuredAddress = [address structuredAddress];

    fullThoroughfare = [structuredAddress fullThoroughfare];

    if (![fullThoroughfare length])
    {
      thoroughfare = [structuredAddress thoroughfare];

      fullThoroughfare = thoroughfare;
    }

    if (![fullThoroughfare length])
    {
      mapItem2 = [v5 mapItem];
      _addressFormattedAsCity = [mapItem2 _addressFormattedAsCity];

      fullThoroughfare = _addressFormattedAsCity;
    }

    name2 = fullThoroughfare;
  }

  if (![name2 length])
  {
    title = [v5 title];

    name2 = title;
  }

  [v4 safeAddDisplayLine:name];
  [v4 safeAddDisplayLine:name2];

  return v4;
}

- (id)entryForHistorySearch:(id)search
{
  searchCopy = search;
  v4 = [[GEORPSuggestionEntry alloc] initWithType:6];
  query = [searchCopy query];
  [v4 safeAddDisplayLine:query];

  locationDisplayString = [searchCopy locationDisplayString];

  [v4 safeAddDisplayLine:locationDisplayString];

  return v4;
}

- (id)entryWithTicket:(id)ticket
{
  ticketCopy = ticket;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1009E8654;
  v15 = sub_1009E8664;
  v16 = 0;
  historyEntry = [(HistoryEntryRecentsItem *)self historyEntry];
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
  [historyEntry ifSearch:v10 ifRoute:v9 ifPlaceDisplay:v8 ifTransitLineItem:0];

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      historyEntry = [(HistoryEntryRecentsItem *)self historyEntry];
      historyEntry2 = [(HistoryEntryRecentsItem *)v5 historyEntry];

      v8 = [historyEntry isEqual:historyEntry2];
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
  historyEntry = [(HistoryEntryRecentsItem *)self historyEntry];
  v3 = [historyEntry hash];

  return v3;
}

- (double)timestamp
{
  historyEntry = [(HistoryEntryRecentsItem *)self historyEntry];
  usageDate = [historyEntry usageDate];
  [usageDate timeIntervalSinceReferenceDate];
  v5 = v4;

  return v5;
}

- (HistoryEntryRecentsItem)initWithHistoryEntry:(id)entry
{
  entryCopy = entry;
  v9.receiver = self;
  v9.super_class = HistoryEntryRecentsItem;
  v6 = [(HistoryEntryRecentsItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_historyEntry, entry);
  }

  return v7;
}

- (void)setSharedETAData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  historyEntry = [(HistoryEntryRecentsItem *)self historyEntry];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  historyEntry2 = [(HistoryEntryRecentsItem *)self historyEntry];
  historyEntry3 = historyEntry2;
  if (isKindOfClass)
  {
    sharedETAData = [historyEntry2 sharedETAData];
    v13 = dataCopy;
    v14 = sharedETAData;
    if (v13 | v14)
    {
      v15 = v14;
      v16 = [v13 isEqual:v14];

      if (!v16)
      {
        [historyEntry3 setSharedETAData:v13];
        v17 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
        v33 = historyEntry3;
        v18 = [NSArray arrayWithObjects:&v33 count:1];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100ADE0F4;
        v30[3] = &unk_1016610B8;
        v31 = completionCopy;
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
    historyEntry3 = [(HistoryEntryRecentsItem *)self historyEntry];
    sharedETAData2 = [historyEntry3 sharedETAData];
    v22 = dataCopy;
    v23 = sharedETAData2;
    if (v22 | v23)
    {
      v24 = v23;
      v25 = [v22 isEqual:v23];

      if (!v25)
      {
        [historyEntry3 setSharedETAData:v22];
        v26 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
        v32 = historyEntry3;
        v27 = [NSArray arrayWithObjects:&v32 count:1];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100ADE10C;
        v28[3] = &unk_1016610B8;
        v29 = completionCopy;
        [v26 saveWithObjects:v27 completionHandler:v28];

        v19 = v29;
        goto LABEL_11;
      }
    }

LABEL_8:
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)setNavigationInterrupted:(BOOL)interrupted completion:(id)completion
{
  interruptedCopy = interrupted;
  completionCopy = completion;
  historyEntry = [(HistoryEntryRecentsItem *)self historyEntry];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  historyEntry2 = [(HistoryEntryRecentsItem *)self historyEntry];
  historyEntry3 = historyEntry2;
  if (isKindOfClass)
  {
    [historyEntry2 setNavigationInterrupted:interruptedCopy];
    v11 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v21 = historyEntry3;
    v12 = [NSArray arrayWithObjects:&v21 count:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100ADE358;
    v18[3] = &unk_1016610B8;
    v13 = &v19;
    v19 = completionCopy;
    v14 = v18;
LABEL_5:
    [v11 saveWithObjects:v12 completionHandler:v14];

    goto LABEL_6;
  }

  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    historyEntry3 = [(HistoryEntryRecentsItem *)self historyEntry];
    [historyEntry3 setNavigationInterrupted:interruptedCopy];
    v11 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v20 = historyEntry3;
    v12 = [NSArray arrayWithObjects:&v20 count:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100ADE370;
    v16[3] = &unk_1016610B8;
    v13 = &v17;
    v17 = completionCopy;
    v14 = v16;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)updateResumeRouteHandle:(id)handle completion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
  historyEntry = [(HistoryEntryRecentsItem *)self historyEntry];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    historyEntry2 = [(HistoryEntryRecentsItem *)self historyEntry];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      routeRequestStorage = [historyEntry2 routeRequestStorage];
      [routeRequestStorage setResumeRouteHandleStorage:handleCopy];
      [historyEntry2 setRouteRequestStorage:routeRequestStorage];
    }

    v12 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v16 = historyEntry2;
    v13 = [NSArray arrayWithObjects:&v16 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100ADE53C;
    v14[3] = &unk_1016610B8;
    v15 = completionCopy;
    [v12 saveWithObjects:v13 completionHandler:v14];
  }
}

+ (void)removeEntries:(id)entries completion:(id)completion
{
  entriesCopy = entries;
  completionCopy = completion;
  v7 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = entriesCopy;
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

        historyEntry = [*(*(&v18 + 1) + 8 * v12) historyEntry];
        [v7 addObject:historyEntry];

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
  v17 = completionCopy;
  v15 = completionCopy;
  [v14 deleteWithObjects:v7 completionHandler:v16];
}

+ (void)saveCuratedCollection:(id)collection completion:(id)completion
{
  collectionCopy = collection;
  completionCopy = completion;
  v7 = objc_alloc_init(MSHistoryItemRequest);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100ADE8C4;
  v10[3] = &unk_1016601F0;
  v11 = collectionCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = collectionCopy;
  [v7 fetchWithCompletionHandler:v10];
}

+ (void)saveSearch:(id)search completion:(id)completion
{
  searchCopy = search;
  completionCopy = completion;
  v7 = objc_alloc_init(MSHistoryItemRequest);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100ADEDBC;
  v10[3] = &unk_1016601F0;
  v11 = searchCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = searchCopy;
  [v7 fetchWithCompletionHandler:v10];
}

+ (void)saveLineItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  v7 = objc_alloc_init(MSHistoryItemRequest);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100ADF42C;
  v10[3] = &unk_1016601F0;
  v11 = itemCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = itemCopy;
  [v7 fetchWithCompletionHandler:v10];
}

+ (void)saveMapItem:(id)item superseedUUID:(id)d tracksRAPReportingOnly:(BOOL)only
{
  itemCopy = item;
  dCopy = d;
  _geoMapItem = [itemCopy _geoMapItem];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100ADF850;
  v12[3] = &unk_101638D38;
  v13 = itemCopy;
  v14 = dCopy;
  v10 = dCopy;
  v11 = itemCopy;
  [self fetchHistoryItemsMatchingMapItem:_geoMapItem completion:v12];
}

+ (void)saveWaypoints:(id)waypoints transportType:(int)type
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100ADFAE8;
  v7[3] = &unk_1016518E8;
  waypointsCopy = waypoints;
  typeCopy = type;
  v6 = waypointsCopy;
  [self fetchHistoryItemsMatchingWaypoints:v6 completion:v7];
}

+ (void)markRouteAsComplete:(id)complete
{
  completeCopy = complete;
  userRequestedWaypoints = [completeCopy userRequestedWaypoints];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100ADFD58;
  v7[3] = &unk_101655400;
  v8 = completeCopy;
  v6 = completeCopy;
  [self fetchHistoryItemsMatchingWaypoints:userRequestedWaypoints completion:v7];
}

+ (id)saveCustomRoute:(id)route asWaypoint:(id)waypoint withOriginalHistoryIdentifier:(id)identifier
{
  routeCopy = route;
  waypointCopy = waypoint;
  identifierCopy = identifier;
  v11 = sub_100035E6C();
  v12 = v11;
  if (waypointCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [waypointCopy shortDescription];
      *buf = 138412546;
      *&buf[4] = shortDescription;
      *&buf[12] = 2112;
      *&buf[14] = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Will try to save a waypoint-to-route: %@, originalHistoryIdentifier: %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v43 = sub_100AE05D4;
    v44 = sub_100AE05E4;
    v45 = 0;
    if (!identifierCopy)
    {
      goto LABEL_19;
    }

    v14 = sub_100035E6C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v40 = 138412290;
      v41 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Finding historyItem for identifier: %@", v40, 0xCu);
    }

    v15 = [self historyItemForIdentifier:identifierCopy];
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = sub_100035E6C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v40 = 138412290;
      v41 = identifierCopy;
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
      _geoMapItem = [v25 _geoMapItem];
      v27 = [v24 initWithMapItem:_geoMapItem];

      v39[0] = v27;
      v39[1] = waypointCopy;
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
      v36 = waypointCopy;
      v37 = routeCopy;
      [self fetchHistoryItemsMatchingWaypoints:v28 completion:v33];

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

+ (id)saveRoute:(id)route withOriginalHistoryIdentifier:(id)identifier editBlock:(id)block completionBlock:(id)completionBlock
{
  routeCopy = route;
  identifierCopy = identifier;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if (routeCopy)
  {
    origin = [routeCopy origin];
    if (origin)
    {
      destination = [routeCopy destination];

      if (destination)
      {
        userRequestedWaypoints = [routeCopy userRequestedWaypoints];
        v49 = [userRequestedWaypoints count] > 2;
        v17 = +[VGVirtualGarageService sharedService];
        activeVehicleIdentifier = [v17 activeVehicleIdentifier];

        chargingStationInfos = [routeCopy chargingStationInfos];
        firstObject = [chargingStationInfos firstObject];

        isEVRoute = [routeCopy isEVRoute];
        if (firstObject)
        {
          v20 = isEVRoute;
        }

        else
        {
          v20 = 0;
        }

        if (!activeVehicleIdentifier)
        {
          v20 = 0;
        }

        v50 = v20;
        v21 = sub_100035E6C();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [routeCopy description];
          uUIDString = [identifierCopy UUIDString];
          *buf = 138412802;
          *&buf[4] = v22;
          *&buf[12] = 2112;
          *&buf[14] = uUIDString;
          *&buf[22] = 2048;
          v71 = [userRequestedWaypoints count];
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Will try to save a route: %@,\noriginalHistoryIdentifier: %@, \nuserRequestedWaypoints: %lu", buf, 0x20u);
        }

        v24 = objc_opt_class();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v71 = sub_100AE05D4;
        v72 = sub_100AE05E4;
        v73 = 0;
        if (!identifierCopy)
        {
          goto LABEL_26;
        }

        v25 = sub_100035E6C();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *v66 = 138412290;
          v67 = identifierCopy;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Finding historyItem for identifier: %@", v66, 0xCu);
        }

        v26 = [objc_opt_class() historyItemForIdentifier:identifierCopy];
        if (!v26)
        {
          goto LABEL_26;
        }

        v27 = sub_100035E6C();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *v66 = 138412290;
          v67 = identifierCopy;
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
            sharedETAData = [*(*&buf[8] + 40) sharedETAData];
            if (sharedETAData && (objc_opt_respondsToSelector() & 1) != 0)
            {
              v37 = sub_100035E6C();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *v66 = 0;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Migrating sharedETAData from original item to new item", v66, 2u);
              }

              [v26 setSharedETAData:sharedETAData];
            }
          }

          else
          {
            sharedETAData = 0;
          }

LABEL_38:
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_100AE1598;
          v54[3] = &unk_1016377A0;
          v42 = v26;
          v55 = v42;
          v56 = routeCopy;
          v62 = buf;
          v38 = userRequestedWaypoints;
          v57 = v38;
          v63 = !v49 & v50;
          v43 = firstObject;
          v58 = v43;
          v53 = activeVehicleIdentifier;
          v59 = v53;
          v64 = v49;
          v65 = v50;
          v60 = blockCopy;
          v61 = completionBlockCopy;
          [self fetchHistoryItemsMatchingWaypoints:v38 completion:v54];
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
    origin2 = [routeCopy origin];
    destination2 = [routeCopy destination];
    *buf = 138412802;
    *&buf[4] = origin2;
    *&buf[12] = 2112;
    *&buf[14] = destination2;
    *&buf[22] = 2112;
    v71 = routeCopy;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "Will not save route as required properties are missing (origin: %@, destination: %@, route: %@)", buf, 0x20u);
  }

  v41 = 0;
LABEL_39:

  return v41;
}

+ (id)historyItemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  [self fetchHistoryItemMatchingIdentifier:identifierCopy completionHandler:v9];
  v6 = dispatch_time(0, 1000000000);
  v7 = 0;
  if (!dispatch_semaphore_wait(v5, v6))
  {
    v7 = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

+ (void)fetchHistoryItemMatchingIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v7 = [[_TtC8MapsSync13MapsSyncRange alloc] initWithOffset:0 limit:1];
  v15 = identifierCopy;
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  v9 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"identifier == %@" argumentArray:v8];

  v10 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v9 sortDescriptors:0 range:v7];
  v11 = objc_alloc_init(MSHistoryItemRequest);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100AE2604;
  v13[3] = &unk_10165EB78;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [v11 fetchWithOptions:v10 completionHandler:v13];
}

+ (void)fetchHistoryItemsMatchingWaypoints:(id)waypoints completion:(id)completion
{
  waypointsCopy = waypoints;
  completionCopy = completion;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(MSHistoryItemRequest);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100AE275C;
  v12[3] = &unk_10165FB28;
  v13 = waypointsCopy;
  v14 = v7;
  v15 = completionCopy;
  v9 = completionCopy;
  v10 = v7;
  v11 = waypointsCopy;
  [v8 fetchWithCompletionHandler:v12];
}

- (BOOL)isNavigationInterrupted
{
  historyEntry = [(HistoryEntryRecentsItem *)self historyEntry];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  historyEntry2 = [(HistoryEntryRecentsItem *)self historyEntry];
  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  if (v6)
  {
    historyEntry2 = [(HistoryEntryRecentsItem *)self historyEntry];
LABEL_4:
    navigationInterrupted = [historyEntry2 navigationInterrupted];

    return navigationInterrupted;
  }

  return 0;
}

- (NSString)_maps_diffableDataSourceIdentifier
{
  historyEntry = [(HistoryEntryRecentsItem *)self historyEntry];
  storageIdentifier = [historyEntry storageIdentifier];
  uUIDString = [storageIdentifier UUIDString];

  return uUIDString;
}

@end