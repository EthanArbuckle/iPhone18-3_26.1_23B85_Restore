@interface ADCloudKitRetryManager
- (ADCloudKitRetryManager)initWithQueue:(id)a3;
- (BOOL)handleRateLimitedError:(id)a3 forZoneInfo:(id)a4 operationType:(int64_t)a5;
- (void)cancelRateLimitTimerForZoneInfo:(id)a3;
- (void)cancelRecordZoneSetupTimerForZoneInfo:(id)a3;
- (void)cancelShareCreationTimer:(id)a3;
- (void)cancelSubscriptionSetupTimerForZoneInfo:(id)a3;
- (void)cancelSyncRetryTimerForZoneInfo:(id)a3;
- (void)retryForType:(int64_t)a3 zoneInfo:(id)a4 error:(id)a5;
- (void)retryForTypeOnRetryManagerQueue:(int64_t)a3 zoneInfo:(id)a4 error:(id)a5 retryAfterInterval:(double)a6;
@end

@implementation ADCloudKitRetryManager

- (void)cancelShareCreationTimer:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [v6 shareCreationTimer];

  if (v4)
  {
    v5 = [v6 shareCreationTimer];
    dispatch_source_cancel(v5);

    [v6 setShareCreationTimer:0];
  }
}

- (void)cancelSubscriptionSetupTimerForZoneInfo:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [v6 subscriptionSetupTimer];

  if (v4)
  {
    v5 = [v6 subscriptionSetupTimer];
    dispatch_source_cancel(v5);

    [v6 setSubscriptionSetupTimer:0];
  }
}

- (void)cancelRecordZoneSetupTimerForZoneInfo:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [v6 zoneSetupTimer];

  if (v4)
  {
    v5 = [v6 zoneSetupTimer];
    dispatch_source_cancel(v5);

    [v6 setZoneSetupTimer:0];
  }
}

- (void)cancelSyncRetryTimerForZoneInfo:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [v6 syncRetryTimer];

  if (v4)
  {
    v5 = [v6 syncRetryTimer];
    dispatch_source_cancel(v5);

    [v6 setSyncRetryTimer:0];
  }
}

- (void)cancelRateLimitTimerForZoneInfo:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [v6 rateLimitTimer];

  if (v4)
  {
    v5 = [v6 rateLimitTimer];
    dispatch_source_cancel(v5);

    [v6 setRateLimitTimer:0];
  }
}

- (BOOL)handleRateLimitedError:(id)a3 forZoneInfo:(id)a4 operationType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (CKCanRetryForError())
  {
    v10 = [v8 userInfo];
    v11 = [v10 objectForKey:CKErrorRetryAfterKey];

    v12 = v11 != 0;
    if (v11)
    {
      [v11 doubleValue];
      v14 = fmax(v13, 60.0);
      [(ADCloudKitRetryManager *)self retryForTypeOnRetryManagerQueue:a5 zoneInfo:v9 error:v8 retryAfterInterval:v14];
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v17 = v15;
        v18 = [v9 zone];
        v19 = 136315906;
        v20 = "[ADCloudKitRetryManager handleRateLimitedError:forZoneInfo:operationType:]";
        v21 = 2112;
        v22 = v18;
        v23 = 2112;
        v24 = v8;
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

- (void)retryForType:(int64_t)a3 zoneInfo:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001404EC;
  v13[3] = &unk_10051DBB8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)retryForTypeOnRetryManagerQueue:(int64_t)a3 zoneInfo:(id)a4 error:(id)a5 retryAfterInterval:(double)a6
{
  v10 = a4;
  v11 = a5;
  if (a6 == 0.0)
  {
    [v10 currentRetryInterval];
    a6 = v12 + v12;
  }

  if (a6 == 0.0)
  {
    a6 = 60.0;
  }

  if ([v10 retryState] == 1)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v53 = "[ADCloudKitRetryManager retryForTypeOnRetryManagerQueue:zoneInfo:error:retryAfterInterval:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Attempting retry while in retry.", buf, 0xCu);
    }
  }

  if (a3 <= 4)
  {
    switch(a3)
    {
      case 1:
        v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
        v25 = dispatch_time(0, (a6 * 1000000000.0));
        dispatch_source_set_timer(v19, v25, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        [(ADCloudKitRetryManager *)self cancelRateLimitTimerForZoneInfo:v10];
        [v10 setRateLimitTimer:v19];
        [v10 setRetryState:1];
        v26 = [v10 rateLimitTimer];
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_100140CAC;
        v48[3] = &unk_10051E010;
        v48[4] = self;
        v27 = v10;
        v49 = v27;
        dispatch_source_set_event_handler(v26, v48);

        v28 = [v27 rateLimitTimer];
        dispatch_resume(v28);

        v24 = v49;
        break;
      case 2:
        v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
        v35 = dispatch_time(0, (a6 * 1000000000.0));
        dispatch_source_set_timer(v19, v35, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        [(ADCloudKitRetryManager *)self cancelSyncRetryTimerForZoneInfo:v10];
        [v10 setSyncRetryTimer:v19];
        [v10 setRetryState:1];
        v36 = [v10 syncRetryTimer];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100140C00;
        v50[3] = &unk_10051E010;
        v50[4] = self;
        v37 = v10;
        v51 = v37;
        dispatch_source_set_event_handler(v36, v50);

        v38 = [v37 syncRetryTimer];
        dispatch_resume(v38);

        v24 = v51;
        break;
      case 3:
        v17 = [v10 dataStore];
        v18 = [v17 isMirroredDataStore];

        if (!v18)
        {
          goto LABEL_29;
        }

        v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
        v20 = dispatch_time(0, (a6 * 1000000000.0));
        dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        [(ADCloudKitRetryManager *)self cancelRecordZoneSetupTimerForZoneInfo:v10];
        [v10 setZoneSetupTimer:v19];
        [v10 setRetryState:1];
        v21 = [v10 zoneSetupTimer];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100140DAC;
        handler[3] = &unk_10051E010;
        handler[4] = self;
        v22 = v10;
        v47 = v22;
        dispatch_source_set_event_handler(v21, handler);

        v23 = [v22 zoneSetupTimer];
        dispatch_resume(v23);

        v24 = v47;
        break;
      default:
        goto LABEL_21;
    }

LABEL_28:

    goto LABEL_29;
  }

  if (a3 > 6)
  {
    if (a3 == 7)
    {
      v14 = dispatch_time(0, (a6 * 1000000000.0));
      queue = self->_queue;
      v16 = &stru_100512DA0;
      goto LABEL_26;
    }

    if (a3 == 9)
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

  if (a3 != 5)
  {
    v14 = dispatch_time(0, (a6 * 1000000000.0));
    queue = self->_queue;
    v16 = &stru_100512DC0;
LABEL_26:
    dispatch_after(v14, queue, v16);
    goto LABEL_29;
  }

  v30 = [v10 shareCreationRetryCount];
  if (v30 < 4)
  {
    [v10 setShareCreationRetryCount:v30 + 1];
    v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    v31 = dispatch_time(0, (a6 * 1000000000.0));
    dispatch_source_set_timer(v19, v31, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    [(ADCloudKitRetryManager *)self cancelShareCreationTimer:v10];
    [v10 setShareCreationTimer:v19];
    [v10 setRetryState:1];
    v32 = [v10 shareCreationTimer];
    v40 = _NSConcreteStackBlock;
    v41 = 3221225472;
    v42 = sub_100140E84;
    v43 = &unk_10051E010;
    v44 = self;
    v33 = v10;
    v45 = v33;
    dispatch_source_set_event_handler(v32, &v40);

    v34 = [v33 shareCreationTimer];
    dispatch_resume(v34);

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

  [v10 setShareCreationRetryCount:0];
LABEL_29:
}

- (ADCloudKitRetryManager)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADCloudKitRetryManager;
  v6 = [(ADCloudKitRetryManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

@end