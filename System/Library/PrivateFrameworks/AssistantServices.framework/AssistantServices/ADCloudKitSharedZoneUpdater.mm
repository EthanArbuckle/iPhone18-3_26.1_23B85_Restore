@interface ADCloudKitSharedZoneUpdater
- (ADCloudKitSharedZoneUpdater)initWithQueue:(id)a3 container:(id)a4 sharedZone:(id)a5 zoneOwner:(BOOL)a6 delegate:(id)a7;
- (void)_notifyFailure:(id)a3;
- (void)_retryRecordSave;
- (void)_startRetryTimer;
- (void)addDictionaryToSharedStore:(id)a3 recordKeysForDeletion:(id)a4 completion:(id)a5;
- (void)addKeyToSharedStore:(id)a3 value:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)fetchValueForKeyFromSharedStore:(id)a3 withQOS:(int64_t)a4 completion:(id)a5;
- (void)fetchValuesForKeysFromSharedStore:(id)a3 withQOS:(int64_t)a4 completion:(id)a5;
@end

@implementation ADCloudKitSharedZoneUpdater

- (void)_notifyFailure:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 adCloudKitSharedZoneUpdater:self didEncounterError:v6];
  }
}

- (void)_retryRecordSave
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableDictionary *)self->_unsavedRecords count])
  {
    objc_initWeak(&location, self);
    v3 = [(NSMutableDictionary *)self->_unsavedRecords allValues];
    container = self->_container;
    isOwner = self->_isOwner;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100231668;
    v6[3] = &unk_100517428;
    objc_copyWeak(&v7, &location);
    v6[4] = self;
    sub_100125F7C(v3, 0, 17, container, isOwner, 0, v6);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_startRetryTimer
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_retryTimer)
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    v4 = dispatch_time(0, 240000000000);
    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100231A68;
    handler[3] = &unk_10051DFE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v3, handler);
    retryTimer = self->_retryTimer;
    self->_retryTimer = v3;
    v6 = v3;

    dispatch_resume(self->_retryTimer);
  }
}

- (void)fetchValuesForKeysFromSharedStore:(id)a3 withQOS:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100231B7C;
    v11[3] = &unk_10051C0D8;
    v12 = v8;
    v13 = self;
    v14 = v9;
    v15 = a4;
    dispatch_async(queue, v11);
  }
}

- (void)fetchValueForKeyFromSharedStore:(id)a3 withQOS:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    queue = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1002322B8;
    v12[3] = &unk_10051C0D8;
    v12[4] = self;
    v14 = v9;
    v13 = v8;
    v15 = a4;
    dispatch_async(queue, v12);
  }
}

- (void)addDictionaryToSharedStore:(id)a3 recordKeysForDeletion:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002329DC;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(queue, v15);
}

- (void)addKeyToSharedStore:(id)a3 value:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100233088;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)dealloc
{
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v7 = "[ADCloudKitSharedZoneUpdater dealloc]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Cancelling timer", buf, 0xCu);
      retryTimer = self->_retryTimer;
    }

    dispatch_source_cancel(retryTimer);
  }

  v5.receiver = self;
  v5.super_class = ADCloudKitSharedZoneUpdater;
  [(ADCloudKitSharedZoneUpdater *)&v5 dealloc];
}

- (ADCloudKitSharedZoneUpdater)initWithQueue:(id)a3 container:(id)a4 sharedZone:(id)a5 zoneOwner:(BOOL)a6 delegate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = ADCloudKitSharedZoneUpdater;
  v17 = [(ADCloudKitSharedZoneUpdater *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_queue, a3);
    v18->_isOwner = a6;
    objc_storeStrong(&v18->_container, a4);
    objc_storeStrong(&v18->_sharedZone, a5);
    objc_storeWeak(&v18->_delegate, v16);
    v19 = objc_alloc_init(NSMutableDictionary);
    unsavedRecords = v18->_unsavedRecords;
    v18->_unsavedRecords = v19;
  }

  return v18;
}

@end