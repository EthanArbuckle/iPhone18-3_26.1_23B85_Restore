@interface CoreRoutineLocationOfInterestManager
+ (id)sharedManager;
- (BOOL)monitoringLOIsOfType:(int64_t)a3;
- (CoreRoutineLocationOfInterestManager)init;
- (id)locationsOfInterestWithType:(int64_t)a3;
- (id)monitoredLOITypes;
- (void)addNotificationObserverIfNeeded;
- (void)dealloc;
- (void)invalidateLOIs;
- (void)invalidateLOIsOfType:(int64_t)a3;
- (void)locationsOfInterestWithType:(int64_t)a3 completion:(id)a4;
- (void)monitorLOIsOfTypes:(id)a3 initialRetrievalComplete:(id)a4;
- (void)retrieveLOIsOfType:(int64_t)a3;
@end

@implementation CoreRoutineLocationOfInterestManager

+ (id)sharedManager
{
  if (qword_10195E200 != -1)
  {
    dispatch_once(&qword_10195E200, &stru_101632178);
  }

  v3 = qword_10195E1F8;

  return v3;
}

- (CoreRoutineLocationOfInterestManager)init
{
  v15.receiver = self;
  v15.super_class = CoreRoutineLocationOfInterestManager;
  v2 = [(CoreRoutineLocationOfInterestManager *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    loisByType = v2->_loisByType;
    v2->_loisByType = v3;

    v5 = objc_alloc_init(NSMutableSet);
    retrievingLOIsOfTypes = v2->_retrievingLOIsOfTypes;
    v2->_retrievingLOIsOfTypes = v5;

    v7 = objc_alloc_init(NSMutableSet);
    invalidatedLOIsOfTypes = v2->_invalidatedLOIsOfTypes;
    v2->_invalidatedLOIsOfTypes = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("CoreRoutineLocationOfInterestManager", v9);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v10;

    v12 = dispatch_group_create();
    initialRetrievalDispatchGroup = v2->_initialRetrievalDispatchGroup;
    v2->_initialRetrievalDispatchGroup = v12;
  }

  return v2;
}

- (void)addNotificationObserverIfNeeded
{
  if (!self->_notificationObserver)
  {
    objc_initWeak(&location, self);
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = RTLocationsOfInterestDidChangeNotification;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100A2AE7C;
    v7[3] = &unk_10165FBE8;
    objc_copyWeak(&v8, &location);
    v5 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v7];
    notificationObserver = self->_notificationObserver;
    self->_notificationObserver = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)retrieveLOIsOfType:(int64_t)a3
{
  v5 = [NSNumber numberWithInteger:?];
  v6 = [(CoreRoutineLocationOfInterestManager *)self retrievingLOIsOfTypes];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    v8 = [(CoreRoutineLocationOfInterestManager *)self retrievingLOIsOfTypes];
    [v8 addObject:v5];

    v9 = [(CoreRoutineLocationOfInterestManager *)self invalidatedLOIsOfTypes];
    [v9 removeObject:v5];

    v10 = [(CoreRoutineLocationOfInterestManager *)self loisByType];
    v11 = [v10 objectForKey:v5];
    v12 = v11 == 0;

    if (!v11)
    {
      v13 = [(CoreRoutineLocationOfInterestManager *)self initialRetrievalDispatchGroup];
      dispatch_group_enter(v13);
    }

    v14 = MapsSuggestionsResourceDepotForMapsProcess();
    v15 = [v14 oneRoutine];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100A2AB80;
    v16[3] = &unk_1016321E8;
    v16[4] = self;
    v19 = v12;
    v17 = v5;
    v18 = a3;
    [v15 fetchLOIsOfType:a3 handler:v16];
  }
}

- (id)monitoredLOITypes
{
  v3 = [(CoreRoutineLocationOfInterestManager *)self retrievingLOIsOfTypes];
  v4 = [(CoreRoutineLocationOfInterestManager *)self loisByType];
  v5 = [v4 allKeys];
  v6 = [v3 setByAddingObjectsFromArray:v5];

  return v6;
}

- (BOOL)monitoringLOIsOfType:(int64_t)a3
{
  v5 = [(CoreRoutineLocationOfInterestManager *)self loisByType];
  v6 = [NSNumber numberWithInteger:a3];
  v7 = [v5 objectForKey:v6];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [(CoreRoutineLocationOfInterestManager *)self retrievingLOIsOfTypes];
    v10 = [NSNumber numberWithInteger:a3];
    v8 = [v9 containsObject:v10];
  }

  return v8;
}

- (void)invalidateLOIsOfType:(int64_t)a3
{
  v5 = [(CoreRoutineLocationOfInterestManager *)self dispatchQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100A2AF50;
  v6[3] = &unk_101661650;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (void)invalidateLOIs
{
  v3 = [(CoreRoutineLocationOfInterestManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A2B070;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)monitorLOIsOfTypes:(id)a3 initialRetrievalComplete:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CoreRoutineLocationOfInterestManager *)self addNotificationObserverIfNeeded];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v8 = [(CoreRoutineLocationOfInterestManager *)self dispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100A2B2FC;
  v11[3] = &unk_101638358;
  v9 = v6;
  v12 = v9;
  v13 = self;
  v10 = v7;
  v14 = v10;
  v15 = &v16;
  dispatch_sync(v8, v11);

  if (*(v17 + 24) == 1)
  {
    v10[2](v10);
  }

  _Block_object_dispose(&v16, 8);
}

- (void)locationsOfInterestWithType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [NSNumber numberWithInteger:a3];
  v14 = v7;
  v8 = [NSArray arrayWithObjects:&v14 count:1];
  v9 = [NSSet setWithArray:v8];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100A2B5D0;
  v11[3] = &unk_1016589F8;
  v11[4] = self;
  v12 = v6;
  v13 = a3;
  v10 = v6;
  [(CoreRoutineLocationOfInterestManager *)self afterInitialRetrievalOfLOIsOfTypes:v9 perform:v11];
}

- (id)locationsOfInterestWithType:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100A2B734;
  v11 = sub_100A2B744;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A2B74C;
  block[3] = &unk_10165E540;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self->_notificationObserver];

  v4.receiver = self;
  v4.super_class = CoreRoutineLocationOfInterestManager;
  [(CoreRoutineLocationOfInterestManager *)&v4 dealloc];
}

@end