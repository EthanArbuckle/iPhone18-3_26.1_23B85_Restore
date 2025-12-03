@interface ADCloudKitSharedZoneUpdater
- (ADCloudKitSharedZoneUpdater)initWithQueue:(id)queue container:(id)container sharedZone:(id)zone zoneOwner:(BOOL)owner delegate:(id)delegate;
- (void)_notifyFailure:(id)failure;
- (void)_retryRecordSave;
- (void)_startRetryTimer;
- (void)addDictionaryToSharedStore:(id)store recordKeysForDeletion:(id)deletion completion:(id)completion;
- (void)addKeyToSharedStore:(id)store value:(id)value completion:(id)completion;
- (void)dealloc;
- (void)fetchValueForKeyFromSharedStore:(id)store withQOS:(int64_t)s completion:(id)completion;
- (void)fetchValuesForKeysFromSharedStore:(id)store withQOS:(int64_t)s completion:(id)completion;
@end

@implementation ADCloudKitSharedZoneUpdater

- (void)_notifyFailure:(id)failure
{
  failureCopy = failure;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 adCloudKitSharedZoneUpdater:self didEncounterError:failureCopy];
  }
}

- (void)_retryRecordSave
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableDictionary *)self->_unsavedRecords count])
  {
    objc_initWeak(&location, self);
    allValues = [(NSMutableDictionary *)self->_unsavedRecords allValues];
    container = self->_container;
    isOwner = self->_isOwner;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100231668;
    v6[3] = &unk_100517428;
    objc_copyWeak(&v7, &location);
    v6[4] = self;
    sub_100125F7C(allValues, 0, 17, container, isOwner, 0, v6);

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

- (void)fetchValuesForKeysFromSharedStore:(id)store withQOS:(int64_t)s completion:(id)completion
{
  storeCopy = store;
  completionCopy = completion;
  if (completionCopy)
  {
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100231B7C;
    v11[3] = &unk_10051C0D8;
    v12 = storeCopy;
    selfCopy = self;
    v14 = completionCopy;
    sCopy = s;
    dispatch_async(queue, v11);
  }
}

- (void)fetchValueForKeyFromSharedStore:(id)store withQOS:(int64_t)s completion:(id)completion
{
  storeCopy = store;
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1002322B8;
    v12[3] = &unk_10051C0D8;
    v12[4] = self;
    v14 = completionCopy;
    v13 = storeCopy;
    sCopy = s;
    dispatch_async(queue, v12);
  }
}

- (void)addDictionaryToSharedStore:(id)store recordKeysForDeletion:(id)deletion completion:(id)completion
{
  storeCopy = store;
  deletionCopy = deletion;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002329DC;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = storeCopy;
  v17 = deletionCopy;
  v18 = completionCopy;
  v12 = deletionCopy;
  v13 = storeCopy;
  v14 = completionCopy;
  dispatch_async(queue, v15);
}

- (void)addKeyToSharedStore:(id)store value:(id)value completion:(id)completion
{
  storeCopy = store;
  valueCopy = value;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100233088;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = storeCopy;
  v17 = valueCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = valueCopy;
  v14 = storeCopy;
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

- (ADCloudKitSharedZoneUpdater)initWithQueue:(id)queue container:(id)container sharedZone:(id)zone zoneOwner:(BOOL)owner delegate:(id)delegate
{
  queueCopy = queue;
  containerCopy = container;
  zoneCopy = zone;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = ADCloudKitSharedZoneUpdater;
  v17 = [(ADCloudKitSharedZoneUpdater *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_queue, queue);
    v18->_isOwner = owner;
    objc_storeStrong(&v18->_container, container);
    objc_storeStrong(&v18->_sharedZone, zone);
    objc_storeWeak(&v18->_delegate, delegateCopy);
    v19 = objc_alloc_init(NSMutableDictionary);
    unsavedRecords = v18->_unsavedRecords;
    v18->_unsavedRecords = v19;
  }

  return v18;
}

@end