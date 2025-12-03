@interface RAPRecordMapsSync
+ (RAPRecordMapsSync)sharedInstance;
- (RAPRecordMapsSync)init;
- (void)_buildMapsSyncRAPRecord:(id)record communityID:(id)d completion:(id)completion;
- (void)addRAPRecord:(id)record completion:(id)completion;
- (void)addTrafficIncidentReport:(id)report completion:(id)completion;
- (void)editStatusOfRAPRecordWithReportID:(id)d toStatus:(signed __int16)status completion:(id)completion;
- (void)fetchAllRAPHistoryObjectsWithCompletion:(id)completion;
- (void)fetchAllTrafficIncidentReportsWithCompletion:(id)completion;
- (void)fetchRAPHistoryWithReportId:(id)id completion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation RAPRecordMapsSync

- (void)addTrafficIncidentReport:(id)report completion:(id)completion
{
  completionCopy = completion;
  reportCopy = report;
  v7 = objc_alloc_init(MSIncidentReport);
  incidentType = [reportCopy incidentType];

  [v7 setType:incidentType];
  v9 = +[GEOCountryConfiguration sharedConfiguration];
  countryCode = [v9 countryCode];
  [v7 setCountryCode:countryCode];

  v11 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v16 = v7;
  v12 = [NSArray arrayWithObjects:&v16 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100ABBFF4;
  v14[3] = &unk_1016610B8;
  v15 = completionCopy;
  v13 = completionCopy;
  [v11 saveWithObjects:v12 completionHandler:v14];
}

- (void)fetchAllTrafficIncidentReportsWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_100ABC244;
  v9[4] = sub_100ABC254;
  v10 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(MSIncidentReportRequest);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100ABC25C;
  v6[3] = &unk_101638908;
  v8 = v9;
  v5 = completionCopy;
  v7 = v5;
  [v4 fetchWithCompletionHandler:v6];

  _Block_object_dispose(v9, 8);
}

- (void)editStatusOfRAPRecordWithReportID:(id)d toStatus:(signed __int16)status completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_100ABC244;
  v25[4] = sub_100ABC254;
  v26 = 0;
  v27 = dCopy;
  v10 = [NSArray arrayWithObjects:&v27 count:1];
  v11 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"reportId == %@" argumentArray:v10];

  v12 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v11 sortDescriptors:0 range:0];
  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100ABC610;
  v21[3] = &unk_10165DC78;
  objc_copyWeak(&v23, &location);
  v13 = completionCopy;
  v22 = v13;
  v14 = objc_retainBlock(v21);
  v15 = objc_alloc_init(MSRAPRecordRequest);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100ABC680;
  v17[3] = &unk_101636F58;
  v16 = v14;
  v18 = v16;
  v19 = v25;
  statusCopy = status;
  [v15 fetchWithOptions:v12 completionHandler:v17];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  _Block_object_dispose(v25, 8);
}

- (void)fetchRAPHistoryWithReportId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_100ABC244;
  v18[4] = sub_100ABC254;
  v19 = objc_alloc_init(NSMutableArray);
  objc_initWeak(&location, self);
  v20 = idCopy;
  v8 = [NSArray arrayWithObjects:&v20 count:1];
  v9 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"reportId == %@" argumentArray:v8];

  v10 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v9 sortDescriptors:0 range:0];
  v11 = objc_alloc_init(MSRAPRecordRequest);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100ABCBDC;
  v13[3] = &unk_101636F30;
  objc_copyWeak(&v16, &location);
  v15 = v18;
  v12 = completionCopy;
  v14 = v12;
  [v11 fetchWithOptions:v10 completionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  _Block_object_dispose(v18, 8);
}

- (void)_buildMapsSyncRAPRecord:(id)record communityID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  recordCopy = record;
  v10 = objc_alloc_init(MSRAPRecord);
  reportID = [recordCopy reportID];
  [v10 setReportId:reportID];

  [v10 setType:{objc_msgSend(recordCopy, "reportType")}];
  reportSummary = [recordCopy reportSummary];
  [v10 setSummary:reportSummary];

  countryCodeUponCreation = [recordCopy countryCodeUponCreation];
  [v10 setCountryCode:countryCodeUponCreation];

  [v10 setStatus:{objc_msgSend(recordCopy, "reportStatus")}];
  contentData = [recordCopy contentData];
  v15 = [NSKeyedArchiver archivedDataWithRootObject:contentData requiringSecureCoding:0 error:0];

  [v10 setContentData:v15];
  rapResponse = [recordCopy rapResponse];
  v17 = [NSKeyedArchiver archivedDataWithRootObject:rapResponse requiringSecureCoding:0 error:0];

  [v10 setRapResponse:v17];
  [v10 setCommunityID:dCopy];
  LOWORD(rapResponse) = [recordCopy clientRevision];

  [v10 setClientRevision:rapResponse];
  v18 = objc_alloc_init(NSMutableArray);
  [v18 addObject:v10];
  if (dCopy)
  {
    [v18 addObject:dCopy];
  }

  v19 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100ABCF64;
  v21[3] = &unk_1016610B8;
  v22 = completionCopy;
  v20 = completionCopy;
  [v19 saveWithObjects:v18 completionHandler:v21];
}

- (void)addRAPRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  communityIdentifier = [recordCopy communityIdentifier];
  v9 = [communityIdentifier length];

  if (v9)
  {
    objc_initWeak(&location, self);
    communityIDMapsSync = self->_communityIDMapsSync;
    communityIdentifier2 = [recordCopy communityIdentifier];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100ABD1EC;
    v12[3] = &unk_10165DCA0;
    objc_copyWeak(&v15, &location);
    v14 = completionCopy;
    v13 = recordCopy;
    [(CommunityIDMapsSync *)communityIDMapsSync fetchCommunityIDWithIdentifier:communityIdentifier2 completion:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    [(RAPRecordMapsSync *)self _buildMapsSyncRAPRecord:recordCopy communityID:0 completion:completionCopy];
  }
}

- (void)fetchAllRAPHistoryObjectsWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_100ABC244;
  v9[4] = sub_100ABC254;
  v10 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(MSRAPRecordRequest);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100ABD448;
  v6[3] = &unk_101638908;
  v8 = v9;
  v5 = completionCopy;
  v7 = v5;
  [v4 fetchWithCompletionHandler:v6];

  _Block_object_dispose(v9, 8);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(RAPRecordMapsSync *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(RAPRecordMapsSync *)self observers];
  [observers registerObserver:observerCopy];
}

- (RAPRecordMapsSync)init
{
  v11.receiver = self;
  v11.super_class = RAPRecordMapsSync;
  v2 = [(RAPRecordMapsSync *)&v11 init];
  if (v2)
  {
    v3 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___RAPRecordObserver queue:0];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = +[_TtC4Maps19CommunityIDMapsSync shared];
    communityIDMapsSync = v2->_communityIDMapsSync;
    v2->_communityIDMapsSync = v5;

    v7 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    [v7 subscribe:v2];

    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v12 count:2];
    storeSubscriptionTypes = v2->storeSubscriptionTypes;
    v2->storeSubscriptionTypes = v8;
  }

  return v2;
}

+ (RAPRecordMapsSync)sharedInstance
{
  if (qword_10195E428 != -1)
  {
    dispatch_once(&qword_10195E428, &stru_101636F08);
  }

  v3 = qword_10195E420;

  return v3;
}

@end