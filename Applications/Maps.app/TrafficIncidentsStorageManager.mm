@interface TrafficIncidentsStorageManager
+ (id)sharedInstance;
- (TrafficIncidentsStorageManager)init;
- (id)_reports;
- (id)_trafficIncidentFeaturesUniqueIds;
- (id)observers;
- (id)removedTrafficIncidentFeaturesIds;
- (id)visibleReports;
- (void)_addReport:(id)a3;
- (void)_deleteExpiredReports;
- (void)_didModifyExistingReport:(id)a3;
- (void)_removeReport:(id)a3;
- (void)_startExpirationRefresh;
- (void)_updateTrafficIncidentFeatures;
- (void)addObserver:(id)a3;
- (void)addReport:(id)a3;
- (void)clearCache;
- (void)dealloc;
- (void)hideReport:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removeReport:(id)a3;
- (void)removeTrafficIncidentFeature:(id)a3;
- (void)resubmitLastReport;
@end

@implementation TrafficIncidentsStorageManager

+ (id)sharedInstance
{
  if (qword_10195CAF8 != -1)
  {
    dispatch_once(&qword_10195CAF8, &stru_101622AD8);
  }

  v3 = qword_10195CAF0;

  return v3;
}

- (TrafficIncidentsStorageManager)init
{
  v6.receiver = self;
  v6.super_class = TrafficIncidentsStorageManager;
  v2 = [(TrafficIncidentsStorageManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(TrafficIncidentsStorageManager *)v2 _deleteExpiredReports];
    [(TrafficIncidentsStorageManager *)v3 _startExpirationRefresh];
    v4 = v3;
  }

  return v3;
}

- (void)_deleteExpiredReports
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = [(TrafficIncidentsStorageManager *)self _reports];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        [v10 timestamp];
        v12 = Current - v11;
        GEOConfigGetDouble();
        if (v12 > v13)
        {
          [(TrafficIncidentsStorageManager *)self _removeReport:v10];
          v7 = 1;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
    if ((([v4 count] != 0) & v7) == 1)
    {
      v14 = [(TrafficIncidentsStorageManager *)self observers];
      [v14 incidentsStorageManagerDidUpdate];

      v15 = sub_1005B0030();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "TrafficIncidentsStorageManager deleted expired reports : %@", buf, 0xCu);
      }
    }
  }

  else
  {
    [v4 count];
  }
}

- (id)_reports
{
  v2 = [(TrafficIncidentsStorageManager *)self _sharedUserDefaults];
  v3 = [v2 dictionaryForKey:@"TrafficIncidentsStorageDictionaryKey"];
  v4 = [v3 allValues];

  v5 = [[NSSortDescriptor alloc] initWithKey:@"timestamp" ascending:1];
  v6 = sub_100021DB0(v4, &stru_101622B58);
  v10 = v5;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [v6 sortedArrayUsingDescriptors:v7];

  return v8;
}

- (void)_startExpirationRefresh
{
  GEOConfigGetDouble();
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_deleteExpiredReports" selector:0 userInfo:1 repeats:?];
  [(TrafficIncidentsStorageManager *)self setReportsExpirationTimer:v3];
}

- (id)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___TrafficIncidentsStorageManagerObserver queue:&_dispatch_main_q];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (id)visibleReports
{
  v2 = [(TrafficIncidentsStorageManager *)self _reports];
  v3 = [NSPredicate predicateWithBlock:&stru_101622B18];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (void)clearCache
{
  v4 = [(TrafficIncidentsStorageManager *)self _sharedUserDefaults];
  [v4 setObject:0 forKey:@"TrafficIncidentsStorageDictionaryKey"];
  [v4 synchronize];
  v3 = [(TrafficIncidentsStorageManager *)self observers];
  [v3 incidentsStorageManagerDidUpdate];
}

- (void)_updateTrafficIncidentFeatures
{
  if ([(NSMutableSet *)self->_trafficIncidentFeatures count])
  {
    v3 = +[UIApplication sharedMapsDelegate];
    v4 = [v3 appCoordinator];
    v5 = [v4 chromeViewController];
    v8 = [v5 mapView];

    v6 = [v8 _mapLayer];
    v7 = [(NSMutableSet *)self->_trafficIncidentFeatures allObjects];
    [v6 setHiddenTrafficIncidentFeatures:v7];
  }
}

- (id)_trafficIncidentFeaturesUniqueIds
{
  if ([(NSMutableSet *)self->_trafficIncidentFeatures count])
  {
    v3 = sub_100021DB0(self->_trafficIncidentFeatures, &stru_101622B98);
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (void)_removeReport:(id)a3
{
  v10 = a3;
  v4 = [(TrafficIncidentsStorageManager *)self _sharedUserDefaults];
  v5 = [v4 dictionaryForKey:@"TrafficIncidentsStorageDictionaryKey"];
  v6 = [v5 mutableCopy];

  if ([v6 count])
  {
    v7 = [v10 uniqueID];
    v8 = [v7 UUIDString];
    [v6 removeObjectForKey:v8];

    v9 = [v6 copy];
    [v4 setObject:v9 forKey:@"TrafficIncidentsStorageDictionaryKey"];

    [v4 synchronize];
  }
}

- (void)_addReport:(id)a3
{
  v4 = a3;
  v11 = [(TrafficIncidentsStorageManager *)self _sharedUserDefaults];
  v5 = [v11 dictionaryForKey:@"TrafficIncidentsStorageDictionaryKey"];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
  }

  v7 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
  v8 = [v4 uniqueID];

  v9 = [v8 UUIDString];
  [v6 setValue:v7 forKey:v9];

  v10 = [v6 copy];
  [v11 setObject:v10 forKey:@"TrafficIncidentsStorageDictionaryKey"];

  [v11 synchronize];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(TrafficIncidentsStorageManager *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(TrafficIncidentsStorageManager *)self observers];
  [v5 registerObserver:v4];
}

- (id)removedTrafficIncidentFeaturesIds
{
  v2 = [(TrafficIncidentsStorageManager *)self _trafficIncidentFeaturesUniqueIds];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (void)removeTrafficIncidentFeature:(id)a3
{
  v4 = a3;
  trafficIncidentFeatures = self->_trafficIncidentFeatures;
  v9 = v4;
  if (!trafficIncidentFeatures)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_trafficIncidentFeatures;
    self->_trafficIncidentFeatures = v6;

    v4 = v9;
    trafficIncidentFeatures = self->_trafficIncidentFeatures;
  }

  [(NSMutableSet *)trafficIncidentFeatures addObject:v4];
  v8 = [(TrafficIncidentsStorageManager *)self observers];
  [v8 incidentsStorageManagerDidUpdateVendorIncidentFeatures];

  [(TrafficIncidentsStorageManager *)self _updateTrafficIncidentFeatures];
}

- (void)resubmitLastReport
{
  v3 = [(TrafficIncidentsStorageManager *)self _reports];
  v4 = [v3 lastObject];

  [v4 setSubmissionCount:{objc_msgSend(v4, "submissionCount") + 1}];
  [v4 setSubmissionFailed:0];
  [(TrafficIncidentsStorageManager *)self _didModifyExistingReport:v4];
  v5 = [v4 submissionCount];
  if (v5 <= GEOConfigGetUInteger())
  {
    UInteger = GEOConfigGetUInteger();
    v7 = dispatch_time(0, 1000000000 * UInteger);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005B0898;
    block[3] = &unk_101661B18;
    v9 = v4;
    dispatch_after(v7, &_dispatch_main_q, block);
  }
}

- (void)_didModifyExistingReport:(id)a3
{
  v5 = a3;
  v4 = [(TrafficIncidentsStorageManager *)self _reports];
  if ([v4 containsObject:v5])
  {
    [(TrafficIncidentsStorageManager *)self _addReport:v5];
  }
}

- (void)hideReport:(id)a3
{
  v4 = a3;
  [v4 setHidden:1];
  [(TrafficIncidentsStorageManager *)self _didModifyExistingReport:v4];

  v5 = [(TrafficIncidentsStorageManager *)self observers];
  [v5 incidentsStorageManagerDidUpdate];
}

- (void)removeReport:(id)a3
{
  [(TrafficIncidentsStorageManager *)self _removeReport:a3];
  v4 = [(TrafficIncidentsStorageManager *)self observers];
  [v4 incidentsStorageManagerDidUpdate];
}

- (void)addReport:(id)a3
{
  v6 = a3;
  v4 = [(TrafficIncidentsStorageManager *)self _reports];
  if (([v4 containsObject:v6] & 1) == 0)
  {
    [(TrafficIncidentsStorageManager *)self _addReport:v6];
    v5 = [(TrafficIncidentsStorageManager *)self observers];
    [v5 incidentsStorageManagerDidAddReport:v6];
  }
}

- (void)dealloc
{
  v3 = [(TrafficIncidentsStorageManager *)self reportsExpirationTimer];
  [v3 invalidate];

  [(TrafficIncidentsStorageManager *)self setReportsExpirationTimer:0];
  v4 = [(TrafficIncidentsStorageManager *)self reportsResubmissionTimer];
  [v4 invalidate];

  [(TrafficIncidentsStorageManager *)self setReportsResubmissionTimer:0];
  v5.receiver = self;
  v5.super_class = TrafficIncidentsStorageManager;
  [(TrafficIncidentsStorageManager *)&v5 dealloc];
}

@end