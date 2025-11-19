@interface RAPRecordMapsSync
+ (RAPRecordMapsSync)sharedInstance;
- (RAPRecordMapsSync)init;
- (void)_buildMapsSyncRAPRecord:(id)a3 communityID:(id)a4 completion:(id)a5;
- (void)addRAPRecord:(id)a3 completion:(id)a4;
- (void)addTrafficIncidentReport:(id)a3 completion:(id)a4;
- (void)editStatusOfRAPRecordWithReportID:(id)a3 toStatus:(signed __int16)a4 completion:(id)a5;
- (void)fetchAllRAPHistoryObjectsWithCompletion:(id)a3;
- (void)fetchAllTrafficIncidentReportsWithCompletion:(id)a3;
- (void)fetchRAPHistoryWithReportId:(id)a3 completion:(id)a4;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation RAPRecordMapsSync

- (void)addTrafficIncidentReport:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MSIncidentReport);
  v8 = [v6 incidentType];

  [v7 setType:v8];
  v9 = +[GEOCountryConfiguration sharedConfiguration];
  v10 = [v9 countryCode];
  [v7 setCountryCode:v10];

  v11 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v16 = v7;
  v12 = [NSArray arrayWithObjects:&v16 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100ABBFF4;
  v14[3] = &unk_1016610B8;
  v15 = v5;
  v13 = v5;
  [v11 saveWithObjects:v12 completionHandler:v14];
}

- (void)fetchAllTrafficIncidentReportsWithCompletion:(id)a3
{
  v3 = a3;
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
  v5 = v3;
  v7 = v5;
  [v4 fetchWithCompletionHandler:v6];

  _Block_object_dispose(v9, 8);
}

- (void)editStatusOfRAPRecordWithReportID:(id)a3 toStatus:(signed __int16)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_100ABC244;
  v25[4] = sub_100ABC254;
  v26 = 0;
  v27 = v8;
  v10 = [NSArray arrayWithObjects:&v27 count:1];
  v11 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"reportId == %@" argumentArray:v10];

  v12 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v11 sortDescriptors:0 range:0];
  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100ABC610;
  v21[3] = &unk_10165DC78;
  objc_copyWeak(&v23, &location);
  v13 = v9;
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
  v20 = a4;
  [v15 fetchWithOptions:v12 completionHandler:v17];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  _Block_object_dispose(v25, 8);
}

- (void)fetchRAPHistoryWithReportId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_100ABC244;
  v18[4] = sub_100ABC254;
  v19 = objc_alloc_init(NSMutableArray);
  objc_initWeak(&location, self);
  v20 = v6;
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
  v12 = v7;
  v14 = v12;
  [v11 fetchWithOptions:v10 completionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  _Block_object_dispose(v18, 8);
}

- (void)_buildMapsSyncRAPRecord:(id)a3 communityID:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(MSRAPRecord);
  v11 = [v9 reportID];
  [v10 setReportId:v11];

  [v10 setType:{objc_msgSend(v9, "reportType")}];
  v12 = [v9 reportSummary];
  [v10 setSummary:v12];

  v13 = [v9 countryCodeUponCreation];
  [v10 setCountryCode:v13];

  [v10 setStatus:{objc_msgSend(v9, "reportStatus")}];
  v14 = [v9 contentData];
  v15 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:0 error:0];

  [v10 setContentData:v15];
  v16 = [v9 rapResponse];
  v17 = [NSKeyedArchiver archivedDataWithRootObject:v16 requiringSecureCoding:0 error:0];

  [v10 setRapResponse:v17];
  [v10 setCommunityID:v7];
  LOWORD(v16) = [v9 clientRevision];

  [v10 setClientRevision:v16];
  v18 = objc_alloc_init(NSMutableArray);
  [v18 addObject:v10];
  if (v7)
  {
    [v18 addObject:v7];
  }

  v19 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100ABCF64;
  v21[3] = &unk_1016610B8;
  v22 = v8;
  v20 = v8;
  [v19 saveWithObjects:v18 completionHandler:v21];
}

- (void)addRAPRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 communityIdentifier];
  v9 = [v8 length];

  if (v9)
  {
    objc_initWeak(&location, self);
    communityIDMapsSync = self->_communityIDMapsSync;
    v11 = [v6 communityIdentifier];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100ABD1EC;
    v12[3] = &unk_10165DCA0;
    objc_copyWeak(&v15, &location);
    v14 = v7;
    v13 = v6;
    [(CommunityIDMapsSync *)communityIDMapsSync fetchCommunityIDWithIdentifier:v11 completion:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    [(RAPRecordMapsSync *)self _buildMapsSyncRAPRecord:v6 communityID:0 completion:v7];
  }
}

- (void)fetchAllRAPHistoryObjectsWithCompletion:(id)a3
{
  v3 = a3;
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
  v5 = v3;
  v7 = v5;
  [v4 fetchWithCompletionHandler:v6];

  _Block_object_dispose(v9, 8);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = [(RAPRecordMapsSync *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [(RAPRecordMapsSync *)self observers];
  [v5 registerObserver:v4];
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