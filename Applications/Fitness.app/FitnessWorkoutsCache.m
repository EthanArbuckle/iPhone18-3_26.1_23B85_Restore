@interface FitnessWorkoutsCache
- (BOOL)_queue_workoutsExistForCacheKey:(int64_t)a3;
- (FitnessWorkoutsCache)initWithDataProvider:(id)a3;
- (void)_queue_refreshCacheWithCompletion:(id)a3;
- (void)_refreshCache;
@end

@implementation FitnessWorkoutsCache

- (FitnessWorkoutsCache)initWithDataProvider:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = FitnessWorkoutsCache;
  v6 = [(FitnessWorkoutsCache *)&v21 init];
  if (v6)
  {
    v7 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    gregorianCalendar = v6->_gregorianCalendar;
    v6->_gregorianCalendar = v7;

    v9 = +[NSCalendar autoupdatingCurrentCalendar];
    currentCalendar = v6->_currentCalendar;
    v6->_currentCalendar = v9;

    objc_storeStrong(&v6->_dataProvider, a3);
    v11 = HKCreateSerialDispatchQueue();
    cacheQueue = v6->_cacheQueue;
    v6->_cacheQueue = v11;

    objc_initWeak(&location, v6);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10013A290;
    v18 = &unk_10083A710;
    objc_copyWeak(&v19, &location);
    v13 = objc_retainBlock(&v15);
    [(CHWorkoutDataProvider *)v6->_dataProvider addUpdateHandler:v13, v15, v16, v17, v18];
    [(CHWorkoutDataProvider *)v6->_dataProvider addAnimatedUpdateHandler:v13];
    if ([(CHWorkoutDataProvider *)v6->_dataProvider dataAvailable])
    {
      [(FitnessWorkoutsCache *)v6 _refreshCache];
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)_refreshCache
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10013A33C;
  v2[3] = &unk_10083A8B0;
  v2[4] = self;
  [(FitnessWorkoutsCache *)self _queue_refreshCacheWithCompletion:v2];
}

- (void)_queue_refreshCacheWithCompletion:(id)a3
{
  v4 = a3;
  cacheQueue = self->_cacheQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013A438;
  v7[3] = &unk_10083C7F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(cacheQueue, v7);
}

- (BOOL)_queue_workoutsExistForCacheKey:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  cacheQueue = self->_cacheQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013A7C4;
  block[3] = &unk_10083C920;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(cacheQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

@end