@interface UGCReviewedPlaceMapsSync
+ (UGCReviewedPlaceMapsSync)sharedInstance;
- (UGCReviewedPlaceMapsSync)init;
- (id)_fetchMSReviewedPlaceWithMuids:(id)muids error:(id)error;
- (void)_buildMapsSyncReviewedPlace:(id)place communityID:(id)d completion:(id)completion;
- (void)_dispatchToWorkQueueWithCompletion:(id)completion;
- (void)_usingOfflineMapsDidChange:(id)change;
- (void)addOrEditReviewedPlace:(id)place completion:(id)completion;
- (void)clearAllUserData;
- (void)fetchAllHistoryObjectsFromStorageWithCompletion:(id)completion;
- (void)fetchReviewedPlaceForMUID:(unint64_t)d muidHistory:(id)history completion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)removeReviewedPlaceWithMUID:(unint64_t)d completion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation UGCReviewedPlaceMapsSync

- (void)clearAllUserData
{
  v2 = +[NSDate date];
  v11 = v2;
  v3 = [NSArray arrayWithObjects:&v11 count:1];
  v4 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"createTime < %@" argumentArray:v3];

  v5 = [_TtC8MapsSync20MapsSyncQueryOptions alloc];
  v6 = [[NSSortDescriptor alloc] initWithKey:@"modificationTime" ascending:0];
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [v5 initWithPredicate:v4 sortDescriptors:v7 range:0];

  v9 = objc_alloc_init(MSReviewedPlaceRequest);
  [v9 fetchWithOptions:v8 completionHandler:&stru_101632B10];
}

- (void)_dispatchToWorkQueueWithCompletion:(id)completion
{
  completionCopy = completion;
  if (qword_10195E320 != -1)
  {
    dispatch_once(&qword_10195E320, &stru_101632AF0);
  }

  v4 = qword_10195E318;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A619B8;
  block[3] = &unk_101661760;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(v4, block);
}

- (void)_buildMapsSyncReviewedPlace:(id)place communityID:(id)d completion:(id)completion
{
  placeCopy = place;
  dCopy = d;
  completionCopy = completion;
  v11 = objc_alloc_init(NSMutableArray);
  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [placeCopy muid]);
  v32 = v12;
  v13 = [NSArray arrayWithObjects:&v32 count:1];
  v14 = [(UGCReviewedPlaceMapsSync *)self _fetchMSReviewedPlaceWithMuids:v13 error:0];

  v15 = sub_100799818();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v14)
  {
    if (v16)
    {
      *buf = 138412546;
      v29 = placeCopy;
      v30 = 2048;
      muid = [placeCopy muid];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "We found a synced reviewed place %@ with muid %llu", buf, 0x16u);
    }
  }

  else
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "We cannot find a synced reviewed place, so adding one", buf, 2u);
    }

    v14 = objc_alloc_init(MSReviewedPlace);
    v15 = objc_alloc_init(MSAnonymousCredential);
    [v14 setAnonymousCredential:v15];
    [v11 addObject:v15];
  }

  [v14 setMuid:{objc_msgSend(placeCopy, "muid")}];
  [v14 setHasUserReviewed:1];
  v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [placeCopy recommendState]);
  [v14 setRating:v17];

  [v14 setUploadedPhotosCount:{objc_msgSend(placeCopy, "numberOfPhotosAdded")}];
  [v14 setVersion:{objc_msgSend(placeCopy, "version")}];
  v18 = [[GEOMapItemIdentifier alloc] initWithMUID:objc_msgSend(placeCopy resultProviderID:"muid") coordinate:{0, -180.0, -180.0}];
  [v14 setMuid:{objc_msgSend(v18, "muid")}];
  v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 resultProviderID]);
  [v14 setResultProviderIdentifier:v19];

  [v18 coordinate];
  v20 = [NSNumber numberWithDouble:?];
  [v14 setLatitude:v20];

  [v18 coordinate];
  v22 = [NSNumber numberWithDouble:v21];
  [v14 setLongitude:v22];

  comparableRepresentation = [v18 comparableRepresentation];
  [v14 setMapItemIdComparableRepresentation:comparableRepresentation];

  [v14 setCommunityID:dCopy];
  if (v14)
  {
    [v11 addObject:v14];
  }

  if (dCopy)
  {
    [v11 addObject:dCopy];
  }

  v24 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100A61E30;
  v26[3] = &unk_1016610B8;
  v27 = completionCopy;
  v25 = completionCopy;
  [v24 saveWithObjects:v11 completionHandler:v26];
}

- (void)addOrEditReviewedPlace:(id)place completion:(id)completion
{
  placeCopy = place;
  completionCopy = completion;
  [placeCopy communityIdentifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100A6203C;
  v12 = v11[3] = &unk_101660380;
  selfCopy = self;
  v14 = placeCopy;
  v15 = completionCopy;
  v8 = completionCopy;
  v9 = placeCopy;
  v10 = v12;
  [(UGCReviewedPlaceMapsSync *)self _dispatchToWorkQueueWithCompletion:v11];
}

- (void)removeReviewedPlaceWithMUID:(unint64_t)d completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (d && completionCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100A623A8;
    v8[3] = &unk_1016589F8;
    v8[4] = self;
    dCopy = d;
    v9 = completionCopy;
    [(UGCReviewedPlaceMapsSync *)self _dispatchToWorkQueueWithCompletion:v8];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: completion != ((void *)0) && muid != 0", buf, 2u);
  }
}

- (void)fetchAllHistoryObjectsFromStorageWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_100A6288C;
  v9[4] = sub_100A6289C;
  v10 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(MSReviewedPlaceRequest);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100A628A4;
  v6[3] = &unk_101638908;
  v8 = v9;
  v5 = completionCopy;
  v7 = v5;
  [v4 fetchWithCompletionHandler:v6];

  _Block_object_dispose(v9, 8);
}

- (id)_fetchMSReviewedPlaceWithMuids:(id)muids error:(id)error
{
  muidsCopy = muids;
  v5 = [[_TtC8MapsSync13MapsSyncRange alloc] initWithOffset:0 limit:1];
  v15 = muidsCopy;
  v6 = [NSArray arrayWithObjects:&v15 count:1];
  v7 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"muid IN %@" argumentArray:v6];

  v8 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v7 sortDescriptors:0 range:v5];
  v9 = objc_alloc_init(MSReviewedPlaceRequest);
  v14 = 0;
  v10 = [v9 fetchSyncWithOptions:v8 error:&v14];
  v11 = v14;
  firstObject = [v10 firstObject];

  if (v11)
  {
    NSLog(@"%@", v11);
  }

  return firstObject;
}

- (void)fetchReviewedPlaceForMUID:(unint64_t)d muidHistory:(id)history completion:(id)completion
{
  historyCopy = history;
  completionCopy = completion;
  v10 = completionCopy;
  if (d && completionCopy)
  {
    v11 = objc_alloc_init(NSMutableArray);
    v12 = [NSNumber numberWithUnsignedLongLong:d];
    [v11 addObject:v12];

    [v11 addObjectsFromArray:historyCopy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100A62C1C;
    v14[3] = &unk_10164E210;
    v14[4] = self;
    v15 = v11;
    v16 = v10;
    dCopy = d;
    v13 = v11;
    [(UGCReviewedPlaceMapsSync *)self _dispatchToWorkQueueWithCompletion:v14];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: completion != ((void *)0) && muid != 0", buf, 2u);
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(UGCReviewedPlaceMapsSync *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(UGCReviewedPlaceMapsSync *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)_usingOfflineMapsDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A63274;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (UGCReviewedPlaceMapsSync)init
{
  v12.receiver = self;
  v12.super_class = UGCReviewedPlaceMapsSync;
  v2 = [(UGCReviewedPlaceMapsSync *)&v12 init];
  if (v2)
  {
    v3 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___UGCReviewedPlaceMapsSyncObserver queue:0];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = +[_TtC4Maps19CommunityIDMapsSync shared];
    communityIDMapsSync = v2->_communityIDMapsSync;
    v2->_communityIDMapsSync = v5;

    v7 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    [v7 subscribe:v2];

    v13 = objc_opt_class();
    v8 = [NSArray arrayWithObjects:&v13 count:1];
    storeSubscriptionTypes = v2->storeSubscriptionTypes;
    v2->storeSubscriptionTypes = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_usingOfflineMapsDidChange:" name:@"UsingOfflineMapsStateChangedNotification" object:0];
  }

  return v2;
}

+ (UGCReviewedPlaceMapsSync)sharedInstance
{
  if (qword_10195E310 != -1)
  {
    dispatch_once(&qword_10195E310, &stru_101632AA8);
  }

  v3 = qword_10195E308;

  return v3;
}

@end