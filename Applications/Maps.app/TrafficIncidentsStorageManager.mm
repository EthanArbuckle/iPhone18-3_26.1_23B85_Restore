@interface TrafficIncidentsStorageManager
+ (id)sharedInstance;
- (TrafficIncidentsStorageManager)init;
- (id)_reports;
- (id)_trafficIncidentFeaturesUniqueIds;
- (id)observers;
- (id)removedTrafficIncidentFeaturesIds;
- (id)visibleReports;
- (void)_addReport:(id)report;
- (void)_deleteExpiredReports;
- (void)_didModifyExistingReport:(id)report;
- (void)_removeReport:(id)report;
- (void)_startExpirationRefresh;
- (void)_updateTrafficIncidentFeatures;
- (void)addObserver:(id)observer;
- (void)addReport:(id)report;
- (void)clearCache;
- (void)dealloc;
- (void)hideReport:(id)report;
- (void)removeObserver:(id)observer;
- (void)removeReport:(id)report;
- (void)removeTrafficIncidentFeature:(id)feature;
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
  _reports = [(TrafficIncidentsStorageManager *)self _reports];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [_reports countByEnumeratingWithState:&v16 objects:v22 count:16];
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
          objc_enumerationMutation(_reports);
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

      v6 = [_reports countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
    if ((([_reports count] != 0) & v7) == 1)
    {
      observers = [(TrafficIncidentsStorageManager *)self observers];
      [observers incidentsStorageManagerDidUpdate];

      v15 = sub_1005B0030();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = _reports;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "TrafficIncidentsStorageManager deleted expired reports : %@", buf, 0xCu);
      }
    }
  }

  else
  {
    [_reports count];
  }
}

- (id)_reports
{
  _sharedUserDefaults = [(TrafficIncidentsStorageManager *)self _sharedUserDefaults];
  v3 = [_sharedUserDefaults dictionaryForKey:@"TrafficIncidentsStorageDictionaryKey"];
  allValues = [v3 allValues];

  v5 = [[NSSortDescriptor alloc] initWithKey:@"timestamp" ascending:1];
  v6 = sub_100021DB0(allValues, &stru_101622B58);
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
  _reports = [(TrafficIncidentsStorageManager *)self _reports];
  v3 = [NSPredicate predicateWithBlock:&stru_101622B18];
  v4 = [_reports filteredArrayUsingPredicate:v3];

  return v4;
}

- (void)clearCache
{
  _sharedUserDefaults = [(TrafficIncidentsStorageManager *)self _sharedUserDefaults];
  [_sharedUserDefaults setObject:0 forKey:@"TrafficIncidentsStorageDictionaryKey"];
  [_sharedUserDefaults synchronize];
  observers = [(TrafficIncidentsStorageManager *)self observers];
  [observers incidentsStorageManagerDidUpdate];
}

- (void)_updateTrafficIncidentFeatures
{
  if ([(NSMutableSet *)self->_trafficIncidentFeatures count])
  {
    v3 = +[UIApplication sharedMapsDelegate];
    appCoordinator = [v3 appCoordinator];
    chromeViewController = [appCoordinator chromeViewController];
    mapView = [chromeViewController mapView];

    _mapLayer = [mapView _mapLayer];
    allObjects = [(NSMutableSet *)self->_trafficIncidentFeatures allObjects];
    [_mapLayer setHiddenTrafficIncidentFeatures:allObjects];
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

- (void)_removeReport:(id)report
{
  reportCopy = report;
  _sharedUserDefaults = [(TrafficIncidentsStorageManager *)self _sharedUserDefaults];
  v5 = [_sharedUserDefaults dictionaryForKey:@"TrafficIncidentsStorageDictionaryKey"];
  v6 = [v5 mutableCopy];

  if ([v6 count])
  {
    uniqueID = [reportCopy uniqueID];
    uUIDString = [uniqueID UUIDString];
    [v6 removeObjectForKey:uUIDString];

    v9 = [v6 copy];
    [_sharedUserDefaults setObject:v9 forKey:@"TrafficIncidentsStorageDictionaryKey"];

    [_sharedUserDefaults synchronize];
  }
}

- (void)_addReport:(id)report
{
  reportCopy = report;
  _sharedUserDefaults = [(TrafficIncidentsStorageManager *)self _sharedUserDefaults];
  v5 = [_sharedUserDefaults dictionaryForKey:@"TrafficIncidentsStorageDictionaryKey"];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
  }

  v7 = [NSKeyedArchiver archivedDataWithRootObject:reportCopy requiringSecureCoding:1 error:0];
  uniqueID = [reportCopy uniqueID];

  uUIDString = [uniqueID UUIDString];
  [v6 setValue:v7 forKey:uUIDString];

  v10 = [v6 copy];
  [_sharedUserDefaults setObject:v10 forKey:@"TrafficIncidentsStorageDictionaryKey"];

  [_sharedUserDefaults synchronize];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(TrafficIncidentsStorageManager *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(TrafficIncidentsStorageManager *)self observers];
  [observers registerObserver:observerCopy];
}

- (id)removedTrafficIncidentFeaturesIds
{
  _trafficIncidentFeaturesUniqueIds = [(TrafficIncidentsStorageManager *)self _trafficIncidentFeaturesUniqueIds];
  v3 = [NSSet setWithArray:_trafficIncidentFeaturesUniqueIds];

  return v3;
}

- (void)removeTrafficIncidentFeature:(id)feature
{
  featureCopy = feature;
  trafficIncidentFeatures = self->_trafficIncidentFeatures;
  v9 = featureCopy;
  if (!trafficIncidentFeatures)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_trafficIncidentFeatures;
    self->_trafficIncidentFeatures = v6;

    featureCopy = v9;
    trafficIncidentFeatures = self->_trafficIncidentFeatures;
  }

  [(NSMutableSet *)trafficIncidentFeatures addObject:featureCopy];
  observers = [(TrafficIncidentsStorageManager *)self observers];
  [observers incidentsStorageManagerDidUpdateVendorIncidentFeatures];

  [(TrafficIncidentsStorageManager *)self _updateTrafficIncidentFeatures];
}

- (void)resubmitLastReport
{
  _reports = [(TrafficIncidentsStorageManager *)self _reports];
  lastObject = [_reports lastObject];

  [lastObject setSubmissionCount:{objc_msgSend(lastObject, "submissionCount") + 1}];
  [lastObject setSubmissionFailed:0];
  [(TrafficIncidentsStorageManager *)self _didModifyExistingReport:lastObject];
  submissionCount = [lastObject submissionCount];
  if (submissionCount <= GEOConfigGetUInteger())
  {
    UInteger = GEOConfigGetUInteger();
    v7 = dispatch_time(0, 1000000000 * UInteger);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005B0898;
    block[3] = &unk_101661B18;
    v9 = lastObject;
    dispatch_after(v7, &_dispatch_main_q, block);
  }
}

- (void)_didModifyExistingReport:(id)report
{
  reportCopy = report;
  _reports = [(TrafficIncidentsStorageManager *)self _reports];
  if ([_reports containsObject:reportCopy])
  {
    [(TrafficIncidentsStorageManager *)self _addReport:reportCopy];
  }
}

- (void)hideReport:(id)report
{
  reportCopy = report;
  [reportCopy setHidden:1];
  [(TrafficIncidentsStorageManager *)self _didModifyExistingReport:reportCopy];

  observers = [(TrafficIncidentsStorageManager *)self observers];
  [observers incidentsStorageManagerDidUpdate];
}

- (void)removeReport:(id)report
{
  [(TrafficIncidentsStorageManager *)self _removeReport:report];
  observers = [(TrafficIncidentsStorageManager *)self observers];
  [observers incidentsStorageManagerDidUpdate];
}

- (void)addReport:(id)report
{
  reportCopy = report;
  _reports = [(TrafficIncidentsStorageManager *)self _reports];
  if (([_reports containsObject:reportCopy] & 1) == 0)
  {
    [(TrafficIncidentsStorageManager *)self _addReport:reportCopy];
    observers = [(TrafficIncidentsStorageManager *)self observers];
    [observers incidentsStorageManagerDidAddReport:reportCopy];
  }
}

- (void)dealloc
{
  reportsExpirationTimer = [(TrafficIncidentsStorageManager *)self reportsExpirationTimer];
  [reportsExpirationTimer invalidate];

  [(TrafficIncidentsStorageManager *)self setReportsExpirationTimer:0];
  reportsResubmissionTimer = [(TrafficIncidentsStorageManager *)self reportsResubmissionTimer];
  [reportsResubmissionTimer invalidate];

  [(TrafficIncidentsStorageManager *)self setReportsResubmissionTimer:0];
  v5.receiver = self;
  v5.super_class = TrafficIncidentsStorageManager;
  [(TrafficIncidentsStorageManager *)&v5 dealloc];
}

@end