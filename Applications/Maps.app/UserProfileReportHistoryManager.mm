@interface UserProfileReportHistoryManager
+ (id)sharedInstance;
- (BOOL)_shouldShowReportOrIncidentCreatedInCountry:(id)a3;
- (BOOL)isChinaUserOutsideOfChina;
- (GEOObserverHashTable)observers;
- (NSArray)rapHistory;
- (UserProfileReportHistoryManager)init;
- (int64_t)_daysBetweenDates:(id)a3 currentDate:(id)a4;
- (int64_t)countForGEOTrafficIncidentType:(int)a3;
- (void)_cancelMapItemTicket;
- (void)_fetchMapItemsForRAPHistoryIfNeeded;
- (void)_loadReportsAndIncidents;
- (void)_updateReports:(id)a3 incidents:(id)a4;
- (void)countryConfigurationDidChange:(id)a3;
- (void)refineRAPHistory;
@end

@implementation UserProfileReportHistoryManager

- (void)countryConfigurationDidChange:(id)a3
{
  v4 = +[GEOCountryConfiguration sharedConfiguration];
  v5 = [v4 countryCode];
  countryCode = self->_countryCode;
  self->_countryCode = v5;

  [(UserProfileReportHistoryManager *)self _loadReportsAndIncidents];
}

- (void)_cancelMapItemTicket
{
  [(MKMapServiceTicket *)self->_mapItemTicket cancel];
  mapItemTicket = self->_mapItemTicket;
  self->_mapItemTicket = 0;
}

- (void)_fetchMapItemsForRAPHistoryIfNeeded
{
  [(UserProfileReportHistoryManager *)self _cancelMapItemTicket];
  val = self;
  if (self->_wantsRefinedRAPHistory)
  {
    v26 = +[NSMutableDictionary dictionary];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v3 = self->_filteredRAPReports;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v4)
    {
      v5 = *v32;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v32 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v31 + 1) + 8 * i);
          v8 = [v7 mapItem];

          if (!v8)
          {
            v9 = [v7 contentData];
            v10 = [v9 mapItemStorage];
            v11 = v10;
            if (v10)
            {
              v12 = [v10 _identifier];
              if (v12)
              {
                v13 = [[MKMapItemIdentifier alloc] initWithGEOMapItemIdentifier:v12];
                v14 = [v26 objectForKeyedSubscript:v13];
                if (!v14)
                {
                  v14 = +[NSMutableArray array];
                  [v26 setObject:v14 forKeyedSubscript:v13];
                }

                [v14 addObject:v7];
              }
            }
          }
        }

        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v4);
    }

    v15 = [v26 allKeys];
    v16 = [v15 count];
    v17 = sub_100026868();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v16)
    {
      if (v18)
      {
        v19 = [v26 count];
        *buf = 67109120;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Refining map items for %d RAPs", buf, 8u);
      }

      v20 = +[MKMapService sharedService];
      v21 = [v20 ticketForIdentifiers:v15 traits:0];
      mapItemTicket = val->_mapItemTicket;
      val->_mapItemTicket = v21;

      objc_initWeak(buf, val);
      v23 = val->_mapItemTicket;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100ADACA8;
      v27[3] = &unk_10165D328;
      objc_copyWeak(&v30, buf);
      v28 = v15;
      v29 = v26;
      [(MKMapServiceTicket *)v23 submitWithHandler:v27 networkActivity:0];

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v18)
      {
        v24 = [(NSArray *)val->_filteredRAPReports count];
        *buf = 67109120;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "No map item refinements needed for %d RAPs. Skipping.", buf, 8u);
      }
    }
  }
}

- (void)refineRAPHistory
{
  if (!self->_wantsRefinedRAPHistory)
  {
    self->_wantsRefinedRAPHistory = 1;
    if (!self->_mapItemTicket)
    {
      [(UserProfileReportHistoryManager *)self _fetchMapItemsForRAPHistoryIfNeeded];
    }
  }
}

- (NSArray)rapHistory
{
  if (self->_filteredRAPReports)
  {
    return self->_filteredRAPReports;
  }

  else
  {
    return &__NSArray0__struct;
  }
}

- (int64_t)_daysBetweenDates:(id)a3 currentDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 components:16 fromDate:v6 toDate:v5 options:0];

  v9 = [v8 day];
  return v9;
}

- (void)_updateReports:(id)a3 incidents:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[NSDate date];
  UInteger = GEOConfigGetUInteger();
  objc_storeStrong(&self->_allRAPReports, a3);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100ADB484;
  v49[3] = &unk_1016376A0;
  v49[4] = self;
  v36 = v9;
  v50 = v36;
  v51 = UInteger;
  v39 = v7;
  v11 = sub_1000282CC(v7, v49);
  filteredRAPReports = self->_filteredRAPReports;
  self->_filteredRAPReports = v11;

  objc_storeStrong(&self->_allTrafficIncidentReports, a4);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100ADB524;
  v48[3] = &unk_1016376C8;
  v48[4] = self;
  v38 = v8;
  v13 = sub_1000282CC(v8, v48);
  filteredTrafficIncidentReports = self->_filteredTrafficIncidentReports;
  self->_filteredTrafficIncidentReports = v13;

  *&self->_hasTellUsMoreRAPs = 0;
  self->_hasReviewedRAPs = 0;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = self->_filteredRAPReports;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v45;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v44 + 1) + 8 * i) reportStatus];
        p_hasInReviewRAPs = &self->_hasInReviewRAPs;
        if (!v20)
        {
          goto LABEL_11;
        }

        if (v20 == 2)
        {
          p_hasInReviewRAPs = &self->_hasTellUsMoreRAPs;
LABEL_11:
          *p_hasInReviewRAPs = 1;
          continue;
        }

        p_hasInReviewRAPs = &self->_hasReviewedRAPs;
        if (v20 == 1)
        {
          goto LABEL_11;
        }
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v17);
  }

  v22 = objc_alloc_init(NSMutableDictionary);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v37 = self;
  v23 = self->_filteredTrafficIncidentReports;
  v24 = [(NSArray *)v23 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v40 + 1) + 8 * j);
        v29 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v28 incidentType]);
        v30 = [(NSDictionary *)v22 objectForKeyedSubscript:v29];
        v31 = [v30 integerValue];

        v32 = [NSNumber numberWithInteger:v31 + 1];
        v33 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v28 incidentType]);
        [(NSDictionary *)v22 setObject:v32 forKeyedSubscript:v33];
      }

      v25 = [(NSArray *)v23 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v25);
  }

  geoIncidentCounts = v37->_geoIncidentCounts;
  v37->_geoIncidentCounts = v22;
  v35 = v22;

  [(GEOObserverHashTable *)v37->_observers reportHistoryManagerDidUpdate:v37];
  [(UserProfileReportHistoryManager *)v37 _fetchMapItemsForRAPHistoryIfNeeded];
}

- (void)_loadReportsAndIncidents
{
  v3 = dispatch_group_create();
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100ADB7DC;
  v17[4] = sub_100ADB7EC;
  v18 = 0;
  dispatch_group_enter(v3);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100ADB7F4;
  v14[3] = &unk_1016565A8;
  v16 = v17;
  v4 = v3;
  v15 = v4;
  [RAPRecordManager fetchAllRAPRecordsWithCompletion:v14];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_100ADB7DC;
  v12[4] = sub_100ADB7EC;
  v13 = 0;
  dispatch_group_enter(v4);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100ADB850;
  v9[3] = &unk_1016565A8;
  v11 = v12;
  v5 = v4;
  v10 = v5;
  [RAPRecordManager fetchAllTrafficIncidentReportsWithCompletion:v9];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100ADB8AC;
  v6[3] = &unk_101637678;
  objc_copyWeak(&v7, &location);
  v6[4] = v17;
  v6[5] = v12;
  dispatch_group_notify(v5, &_dispatch_main_q, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v17, 8);
}

- (int64_t)countForGEOTrafficIncidentType:(int)a3
{
  geoIncidentCounts = self->_geoIncidentCounts;
  v4 = [NSNumber numberWithInt:*&a3];
  v5 = [(NSDictionary *)geoIncidentCounts objectForKeyedSubscript:v4];
  v6 = [v5 integerValue];

  return v6;
}

- (BOOL)_shouldShowReportOrIncidentCreatedInCountry:(id)a3
{
  v4 = a3;
  v5 = (![(UserProfileReportHistoryManager *)self inChina]|| [(UserProfileReportHistoryManager *)self _isChinaCountryCode:v4]) && (![(UserProfileReportHistoryManager *)self _inKorea]|| [(UserProfileReportHistoryManager *)self _isKoreaCountryCode:v4]) && ([(UserProfileReportHistoryManager *)self inChina]|| ![(UserProfileReportHistoryManager *)self _isChinaCountryCode:v4]) && ([(UserProfileReportHistoryManager *)self _inKorea]|| ![(UserProfileReportHistoryManager *)self _isKoreaCountryCode:v4]);

  return v5;
}

- (BOOL)isChinaUserOutsideOfChina
{
  if ([(UserProfileReportHistoryManager *)self inChina])
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_allRAPReports;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) countryCodeUponCreation];
        v10 = [(UserProfileReportHistoryManager *)self _isChinaCountryCode:v9];

        if (v10)
        {
          v3 = 1;
          goto LABEL_13;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v3 = 0;
LABEL_13:

  return v3;
}

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___UserProfileReportHistoryManagerObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (UserProfileReportHistoryManager)init
{
  v9.receiver = self;
  v9.super_class = UserProfileReportHistoryManager;
  v2 = [(UserProfileReportHistoryManager *)&v9 init];
  if (v2)
  {
    v3 = +[GEOCountryConfiguration sharedConfiguration];
    v4 = [v3 countryCode];
    countryCode = v2->_countryCode;
    v2->_countryCode = v4;

    v6 = +[RAPRecordMapsSync sharedInstance];
    [v6 registerObserver:v2];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"countryConfigurationDidChange:" name:GEOCountryConfigurationCountryCodeDidChangeNotification object:0];

    [(UserProfileReportHistoryManager *)v2 _loadReportsAndIncidents];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10195E588 != -1)
  {
    dispatch_once(&qword_10195E588, &stru_101637650);
  }

  v3 = qword_10195E580;

  return v3;
}

@end