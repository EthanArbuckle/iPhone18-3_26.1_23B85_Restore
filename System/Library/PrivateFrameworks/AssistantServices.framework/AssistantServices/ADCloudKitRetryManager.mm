@interface ADCloudKitRetryManager
- (ADCloudKitRetryManager)initWithQueue:(id)queue;
- (BOOL)handleRateLimitedError:(id)error forZoneInfo:(id)info operationType:(int64_t)type;
- (void)cancelRateLimitTimerForZoneInfo:(id)info;
- (void)cancelRecordZoneSetupTimerForZoneInfo:(id)info;
- (void)cancelShareCreationTimer:(id)timer;
- (void)cancelSubscriptionSetupTimerForZoneInfo:(id)info;
- (void)cancelSyncRetryTimerForZoneInfo:(id)info;
- (void)retryForType:(int64_t)type zoneInfo:(id)info error:(id)error;
- (void)retryForTypeOnRetryManagerQueue:(int64_t)queue zoneInfo:(id)info error:(id)error retryAfterInterval:(double)interval;
@end

@implementation ADCloudKitRetryManager

- (void)cancelShareCreationTimer:(id)timer
{
  timerCopy = timer;
  dispatch_assert_queue_V2(self->_queue);
  shareCreationTimer = [timerCopy shareCreationTimer];

  if (shareCreationTimer)
  {
    shareCreationTimer2 = [timerCopy shareCreationTimer];
    dispatch_source_cancel(shareCreationTimer2);

    [timerCopy setShareCreationTimer:0];
  }
}

- (void)cancelSubscriptionSetupTimerForZoneInfo:(id)info
{
  infoCopy = info;
  dispatch_assert_queue_V2(self->_queue);
  subscriptionSetupTimer = [infoCopy subscriptionSetupTimer];

  if (subscriptionSetupTimer)
  {
    subscriptionSetupTimer2 = [infoCopy subscriptionSetupTimer];
    dispatch_source_cancel(subscriptionSetupTimer2);

    [infoCopy setSubscriptionSetupTimer:0];
  }
}

- (void)cancelRecordZoneSetupTimerForZoneInfo:(id)info
{
  infoCopy = info;
  dispatch_assert_queue_V2(self->_queue);
  zoneSetupTimer = [infoCopy zoneSetupTimer];

  if (zoneSetupTimer)
  {
    zoneSetupTimer2 = [infoCopy zoneSetupTimer];
    dispatch_source_cancel(zoneSetupTimer2);

    [infoCopy setZoneSetupTimer:0];
  }
}

- (void)cancelSyncRetryTimerForZoneInfo:(id)info
{
  infoCopy = info;
  dispatch_assert_queue_V2(self->_queue);
  syncRetryTimer = [infoCopy syncRetryTimer];

  if (syncRetryTimer)
  {
    syncRetryTimer2 = [infoCopy syncRetryTimer];
    dispatch_source_cancel(syncRetryTimer2);

    [infoCopy setSyncRetryTimer:0];
  }
}

- (void)cancelRateLimitTimerForZoneInfo:(id)info
{
  infoCopy = info;
  dispatch_assert_queue_V2(self->_queue);
  rateLimitTimer = [infoCopy rateLimitTimer];

  if (rateLimitTimer)
  {
    rateLimitTimer2 = [infoCopy rateLimitTimer];
    dispatch_source_cancel(rateLimitTimer2);

    [infoCopy setRateLimitTimer:0];
  }
}

- (BOOL)handleRateLimitedError:(id)error forZoneInfo:(id)info operationType:(int64_t)type
{
  errorCopy = error;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_queue);
  if (CKCanRetryForError())
  {
    userInfo = [errorCopy userInfo];
    v11 = [userInfo objectForKey:CKErrorRetryAfterKey];

    v12 = v11 != 0;
    if (v11)
    {
      [v11 doubleValue];
      v14 = fmax(v13, 60.0);
      [(ADCloudKitRetryManager *)self retryForTypeOnRetryManagerQueue:type zoneInfo:infoCopy error:errorCopy retryAfterInterval:v14];
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v17 = v15;
        v18 = [infoCopy zone];
        v19 = 136315906;
        v20 = "[ADCloudKitRetryManager handleRateLimitedError:forZoneInfo:operationType:]";
        v21 = 2112;
        v22 = v18;
        v23 = 2112;
        v24 = errorCopy;
        v25 = 2048;
        v26 = v14;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Rate limiting initiated for zone (%@): (%@) Retrying in %f seconds", &v19, 0x2Au);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)retryForType:(int64_t)type zoneInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001404EC;
  v13[3] = &unk_10051DBB8;
  v13[4] = self;
  v14 = infoCopy;
  v15 = errorCopy;
  typeCopy = type;
  v11 = errorCopy;
  v12 = infoCopy;
  dispatch_async(queue, v13);
}

- (void)retryForTypeOnRetryManagerQueue:(int64_t)queue zoneInfo:(id)info error:(id)error retryAfterInterval:(double)interval
{
  infoCopy = info;
  errorCopy = error;
  if (interval == 0.0)
  {
    [infoCopy currentRetryInterval];
    interval = v12 + v12;
  }

  if (interval == 0.0)
  {
    interval = 60.0;
  }

  if ([infoCopy retryState] == 1)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v53 = "[ADCloudKitRetryManager retryForTypeOnRetryManagerQueue:zoneInfo:error:retryAfterInterval:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Attempting retry while in retry.", buf, 0xCu);
    }
  }

  if (queue <= 4)
  {
    switch(queue)
    {
      case 1:
        v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
        v25 = dispatch_time(0, (interval * 1000000000.0));
        dispatch_source_set_timer(v19, v25, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        [(ADCloudKitRetryManager *)self cancelRateLimitTimerForZoneInfo:infoCopy];
        [infoCopy setRateLimitTimer:v19];
        [infoCopy setRetryState:1];
        rateLimitTimer = [infoCopy rateLimitTimer];
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_100140CAC;
        v48[3] = &unk_10051E010;
        v48[4] = self;
        v27 = infoCopy;
        v49 = v27;
        dispatch_source_set_event_handler(rateLimitTimer, v48);

        rateLimitTimer2 = [v27 rateLimitTimer];
        dispatch_resume(rateLimitTimer2);

        v24 = v49;
        break;
      case 2:
        v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
        v35 = dispatch_time(0, (interval * 1000000000.0));
        dispatch_source_set_timer(v19, v35, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        [(ADCloudKitRetryManager *)self cancelSyncRetryTimerForZoneInfo:infoCopy];
        [infoCopy setSyncRetryTimer:v19];
        [infoCopy setRetryState:1];
        syncRetryTimer = [infoCopy syncRetryTimer];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100140C00;
        v50[3] = &unk_10051E010;
        v50[4] = self;
        v37 = infoCopy;
        v51 = v37;
        dispatch_source_set_event_handler(syncRetryTimer, v50);

        syncRetryTimer2 = [v37 syncRetryTimer];
        dispatch_resume(syncRetryTimer2);

        v24 = v51;
        break;
      case 3:
        dataStore = [infoCopy dataStore];
        isMirroredDataStore = [dataStore isMirroredDataStore];

        if (!isMirroredDataStore)
        {
          goto LABEL_29;
        }

        v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
        v20 = dispatch_time(0, (interval * 1000000000.0));
        dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        [(ADCloudKitRetryManager *)self cancelRecordZoneSetupTimerForZoneInfo:infoCopy];
        [infoCopy setZoneSetupTimer:v19];
        [infoCopy setRetryState:1];
        zoneSetupTimer = [infoCopy zoneSetupTimer];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100140DAC;
        handler[3] = &unk_10051E010;
        handler[4] = self;
        v22 = infoCopy;
        v47 = v22;
        dispatch_source_set_event_handler(zoneSetupTimer, handler);

        zoneSetupTimer2 = [v22 zoneSetupTimer];
        dispatch_resume(zoneSetupTimer2);

        v24 = v47;
        break;
      default:
        goto LABEL_21;
    }

LABEL_28:

    goto LABEL_29;
  }

  if (queue > 6)
  {
    if (queue == 7)
    {
      v14 = dispatch_time(0, (interval * 1000000000.0));
      queue = self->_queue;
      v16 = &stru_100512DA0;
      goto LABEL_26;
    }

    if (queue == 9)
    {
      v14 = dispatch_time(0, 60000000000);
      queue = self->_queue;
      v16 = &stru_100512DE0;
      goto LABEL_26;
    }

LABEL_21:
    v29 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v53 = "[ADCloudKitRetryManager retryForTypeOnRetryManagerQueue:zoneInfo:error:retryAfterInterval:]";
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s Unhandled type. File bug.", buf, 0xCu);
    }

    goto LABEL_29;
  }

  if (queue != 5)
  {
    v14 = dispatch_time(0, (interval * 1000000000.0));
    queue = self->_queue;
    v16 = &stru_100512DC0;
LABEL_26:
    dispatch_after(v14, queue, v16);
    goto LABEL_29;
  }

  shareCreationRetryCount = [infoCopy shareCreationRetryCount];
  if (shareCreationRetryCount < 4)
  {
    [infoCopy setShareCreationRetryCount:shareCreationRetryCount + 1];
    v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    v31 = dispatch_time(0, (interval * 1000000000.0));
    dispatch_source_set_timer(v19, v31, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    [(ADCloudKitRetryManager *)self cancelShareCreationTimer:infoCopy];
    [infoCopy setShareCreationTimer:v19];
    [infoCopy setRetryState:1];
    shareCreationTimer = [infoCopy shareCreationTimer];
    v40 = _NSConcreteStackBlock;
    v41 = 3221225472;
    v42 = sub_100140E84;
    v43 = &unk_10051E010;
    selfCopy = self;
    v33 = infoCopy;
    v45 = v33;
    dispatch_source_set_event_handler(shareCreationTimer, &v40);

    shareCreationTimer2 = [v33 shareCreationTimer];
    dispatch_resume(shareCreationTimer2);

    v24 = v45;
    goto LABEL_28;
  }

  v39 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v53 = "[ADCloudKitRetryManager retryForTypeOnRetryManagerQueue:zoneInfo:error:retryAfterInterval:]";
    _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s Ignoring failure as tried share creation too many times.", buf, 0xCu);
  }

  [infoCopy setShareCreationRetryCount:0];
LABEL_29:
}

- (ADCloudKitRetryManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = ADCloudKitRetryManager;
  v6 = [(ADCloudKitRetryManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end