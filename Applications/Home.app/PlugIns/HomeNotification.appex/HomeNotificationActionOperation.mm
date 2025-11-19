@interface HomeNotificationActionOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (HomeNotificationActionOperation)initWithAction:(id)a3 home:(id)a4 cameraProfile:(id)a5;
- (id)_itemsToInvertPrimaryStateForItems:(id)a3 preferredPrimaryState:(int64_t)a4 targetPrimaryState:(int64_t *)a5;
- (id)_toggleLightbulbsForItems:(id)a3;
- (id)_toggleMicrophoneState:(id)a3;
- (id)_unlockLocksAndDisarmSecuritySystemsForItems:(id)a3;
- (id)_writePrimaryState:(int64_t)a3 forItems:(id)a4;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation HomeNotificationActionOperation

- (HomeNotificationActionOperation)initWithAction:(id)a3 home:(id)a4 cameraProfile:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (v8 && v9 && v10)
  {
    v16.receiver = self;
    v16.super_class = HomeNotificationActionOperation;
    v13 = [(HomeNotificationActionOperation *)&v16 init];
    if (v13)
    {
      v14 = dispatch_queue_create("com.apple.home.notificationActionOperation", 0);
      [(HomeNotificationActionOperation *)v13 setAccessQueue:v14];

      [(HomeNotificationActionOperation *)v13 setAction:v8];
      [(HomeNotificationActionOperation *)v13 setHome:v9];
      [(HomeNotificationActionOperation *)v13 setCameraProfile:v11];
    }

    self = v13;
    v12 = self;
  }

  return v12;
}

- (BOOL)isFinished
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(HomeNotificationActionOperation *)self accessQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007B40;
  v5[3] = &unk_100018948;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setFinished:(BOOL)a3
{
  v3 = a3;
  if ([(HomeNotificationActionOperation *)self isFinished]!= a3)
  {
    [(HomeNotificationActionOperation *)self willChangeValueForKey:@"isFinished"];
    v5 = [(HomeNotificationActionOperation *)self accessQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100007C34;
    v6[3] = &unk_100018970;
    v6[4] = self;
    v7 = v3;
    dispatch_async(v5, v6);

    [(HomeNotificationActionOperation *)self didChangeValueForKey:@"isFinished"];
    if (v3)
    {
      [(HomeNotificationActionOperation *)self setExecuting:0];
    }
  }
}

- (BOOL)isExecuting
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(HomeNotificationActionOperation *)self accessQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007D24;
  v5[3] = &unk_100018948;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setExecuting:(BOOL)a3
{
  if ([(HomeNotificationActionOperation *)self isExecuting]!= a3)
  {
    [(HomeNotificationActionOperation *)self willChangeValueForKey:@"isExecuting"];
    v5 = [(HomeNotificationActionOperation *)self accessQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100007E08;
    v6[3] = &unk_100018970;
    v6[4] = self;
    v7 = a3;
    dispatch_async(v5, v6);

    [(HomeNotificationActionOperation *)self didChangeValueForKey:@"isExecuting"];
  }
}

- (void)start
{
  if ([(HomeNotificationActionOperation *)self isCancelled])
  {

    [(HomeNotificationActionOperation *)self setFinished:1];
  }

  else
  {
    [(HomeNotificationActionOperation *)self setExecuting:1];
    v4 = [(HomeNotificationActionOperation *)self action];
    v5 = [v4 identifier];

    if ([v5 isEqualToString:@"microphone_toggleButton"])
    {
      v6 = [(HomeNotificationActionOperation *)self cameraProfile];
      v7 = [v6 microphoneControl];
      v8 = [(HomeNotificationActionOperation *)self _toggleMicrophoneState:v7];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000802C;
      v17[3] = &unk_100018998;
      v17[4] = self;
      v9 = [v8 addCompletionBlock:v17];
    }

    else
    {
      v10 = [(HomeNotificationActionOperation *)self action];
      v11 = [v10 serviceUUIDs];

      objc_initWeak(&location, self);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000806C;
      v13[3] = &unk_100018A88;
      v13[4] = self;
      v14 = v11;
      v15[1] = a2;
      v12 = v11;
      objc_copyWeak(v15, &location);
      dispatch_async(&_dispatch_main_q, v13);
      objc_destroyWeak(v15);

      objc_destroyWeak(&location);
    }
  }
}

- (id)_toggleMicrophoneState:(id)a3
{
  if (a3)
  {
    v4 = [(HomeNotificationActionOperation *)self cameraProfile];
    v5 = [v4 streamControl];
    v6 = [v5 cameraStream];

    if (v6)
    {
      v7 = [HFCameraAudioManager alloc];
      v8 = [(HomeNotificationActionOperation *)self cameraProfile];
      v9 = [(HomeNotificationActionOperation *)self home];
      v10 = [v9 hf_characteristicValueManager];
      v11 = [v7 initWithCameraProfile:v8 cameraStream:v6 valueManager:v10];

      [v11 setOutgoingAudioEnabled:{objc_msgSend(v11, "isOutgoingAudioEnabled") ^ 1}];
    }

    else
    {
      v11 = [NSError hf_errorWithCode:35];
      [NAFuture futureWithError:v11];
    }
    v13 = ;

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000891C;
    v16[3] = &unk_100018AB0;
    v16[4] = self;
    v14 = [v13 recover:v16];
  }

  else
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000C9BC(v12);
    }

    v13 = [NSError hf_errorWithCode:38];
    v14 = [NAFuture futureWithError:v13];
  }

  return v14;
}

- (id)_toggleLightbulbsForItems:(id)a3
{
  v18 = 2;
  v4 = [a3 na_filter:&stru_100018AF0];
  v5 = [(HomeNotificationActionOperation *)self _itemsToInvertPrimaryStateForItems:v4 preferredPrimaryState:2 targetPrimaryState:&v18];
  v6 = [(HomeNotificationActionOperation *)self _writePrimaryState:v18 forItems:v5];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100008C08;
  v15[3] = &unk_100018B18;
  v17 = v18;
  v15[4] = self;
  v7 = v4;
  v16 = v7;
  v8 = [v6 flatMap:v15];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100008D08;
  v12[3] = &unk_100018B40;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = [v8 recover:v12];

  return v10;
}

- (id)_unlockLocksAndDisarmSecuritySystemsForItems:(id)a3
{
  v4 = a3;
  v5 = [v4 na_filter:&stru_100018B60];
  v6 = [v4 na_filter:&stru_100018B80];
  if (![v5 count] && !objc_msgSend(v6, "count"))
  {
    NSLog(@"Attempted to unlock doors and disarm security systems when no such accessories were found! Items: %@", v4);
  }

  v19 = [v5 na_filter:&stru_100018BA0];
  v20 = [v6 na_filter:&stru_100018BC0];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100009248;
  v29[3] = &unk_100018C08;
  v29[4] = self;
  v7 = [v20 na_map:v29];
  v8 = [(HomeNotificationActionOperation *)self _writePrimaryState:2 forItems:v19];
  v9 = [v7 allObjects];
  v10 = [v9 arrayByAddingObject:v8];

  v11 = [NAFuture combineAllFutures:v10];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000093E8;
  v25[3] = &unk_100018C30;
  v12 = v5;
  v26 = v12;
  v13 = v6;
  v27 = v13;
  v28 = self;
  v14 = [v11 flatMap:v25];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100009564;
  v21[3] = &unk_100018C58;
  v22 = v12;
  v23 = v13;
  v24 = self;
  v15 = v13;
  v16 = v12;
  v17 = [v14 recover:v21];

  return v17;
}

- (id)_writePrimaryState:(int64_t)a3 forItems:(id)a4
{
  v6 = a4;
  if ([v6 count])
  {
    v7 = [(HomeNotificationActionOperation *)self home];
    v8 = [v7 hf_characteristicValueManager];
    [v8 beginTransactionWithReason:@"Long Look notification light toggle"];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100009900;
    v16[3] = &unk_100018C80;
    v16[4] = self;
    v16[5] = a3;
    v9 = [v6 na_map:v16];
    v10 = [(HomeNotificationActionOperation *)self home];
    v11 = [v10 hf_characteristicValueManager];
    [v11 commitTransactionWithReason:@"Long Look notification light toggle"];

    v12 = [v9 allObjects];
    v13 = +[NAScheduler mainThreadScheduler];
    v14 = [NAFuture combineAllFutures:v12 ignoringErrors:0 scheduler:v13];
  }

  else
  {
    v14 = +[NAFuture futureWithNoResult];
  }

  return v14;
}

- (id)_itemsToInvertPrimaryStateForItems:(id)a3 preferredPrimaryState:(int64_t)a4 targetPrimaryState:(int64_t *)a5
{
  v6 = a4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100009B20;
  v20[3] = &unk_100018CA0;
  v20[4] = a4;
  v7 = a3;
  v8 = objc_retainBlock(v20);
  v9 = [v7 na_filter:v8];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100009B8C;
  v18 = &unk_100018CC8;
  v19 = v8;
  v10 = v8;
  v11 = [v7 na_filter:&v15];

  if ([v11 count])
  {
    v12 = v11;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = v9;
  if (a5)
  {
    v6 = HFToggledPrimaryState();
    v12 = v9;
LABEL_6:
    *a5 = v6;
  }

LABEL_7:
  v13 = v12;

  return v12;
}

@end