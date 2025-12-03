@interface HomeNotificationActionOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (HomeNotificationActionOperation)initWithAction:(id)action home:(id)home cameraProfile:(id)profile;
- (id)_itemsToInvertPrimaryStateForItems:(id)items preferredPrimaryState:(int64_t)state targetPrimaryState:(int64_t *)primaryState;
- (id)_toggleLightbulbsForItems:(id)items;
- (id)_toggleMicrophoneState:(id)state;
- (id)_unlockLocksAndDisarmSecuritySystemsForItems:(id)items;
- (id)_writePrimaryState:(int64_t)state forItems:(id)items;
- (void)setExecuting:(BOOL)executing;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation HomeNotificationActionOperation

- (HomeNotificationActionOperation)initWithAction:(id)action home:(id)home cameraProfile:(id)profile
{
  actionCopy = action;
  homeCopy = home;
  profileCopy = profile;
  v11 = profileCopy;
  selfCopy = 0;
  if (actionCopy && homeCopy && profileCopy)
  {
    v16.receiver = self;
    v16.super_class = HomeNotificationActionOperation;
    v13 = [(HomeNotificationActionOperation *)&v16 init];
    if (v13)
    {
      v14 = dispatch_queue_create("com.apple.home.notificationActionOperation", 0);
      [(HomeNotificationActionOperation *)v13 setAccessQueue:v14];

      [(HomeNotificationActionOperation *)v13 setAction:actionCopy];
      [(HomeNotificationActionOperation *)v13 setHome:homeCopy];
      [(HomeNotificationActionOperation *)v13 setCameraProfile:v11];
    }

    self = v13;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isFinished
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = [(HomeNotificationActionOperation *)self accessQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007B40;
  v5[3] = &unk_100018948;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setFinished:(BOOL)finished
{
  finishedCopy = finished;
  if ([(HomeNotificationActionOperation *)self isFinished]!= finished)
  {
    [(HomeNotificationActionOperation *)self willChangeValueForKey:@"isFinished"];
    accessQueue = [(HomeNotificationActionOperation *)self accessQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100007C34;
    v6[3] = &unk_100018970;
    v6[4] = self;
    v7 = finishedCopy;
    dispatch_async(accessQueue, v6);

    [(HomeNotificationActionOperation *)self didChangeValueForKey:@"isFinished"];
    if (finishedCopy)
    {
      [(HomeNotificationActionOperation *)self setExecuting:0];
    }
  }
}

- (BOOL)isExecuting
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = [(HomeNotificationActionOperation *)self accessQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007D24;
  v5[3] = &unk_100018948;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setExecuting:(BOOL)executing
{
  if ([(HomeNotificationActionOperation *)self isExecuting]!= executing)
  {
    [(HomeNotificationActionOperation *)self willChangeValueForKey:@"isExecuting"];
    accessQueue = [(HomeNotificationActionOperation *)self accessQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100007E08;
    v6[3] = &unk_100018970;
    v6[4] = self;
    executingCopy = executing;
    dispatch_async(accessQueue, v6);

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
    action = [(HomeNotificationActionOperation *)self action];
    identifier = [action identifier];

    if ([identifier isEqualToString:@"microphone_toggleButton"])
    {
      cameraProfile = [(HomeNotificationActionOperation *)self cameraProfile];
      microphoneControl = [cameraProfile microphoneControl];
      v8 = [(HomeNotificationActionOperation *)self _toggleMicrophoneState:microphoneControl];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000802C;
      v17[3] = &unk_100018998;
      v17[4] = self;
      v9 = [v8 addCompletionBlock:v17];
    }

    else
    {
      action2 = [(HomeNotificationActionOperation *)self action];
      serviceUUIDs = [action2 serviceUUIDs];

      objc_initWeak(&location, self);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000806C;
      v13[3] = &unk_100018A88;
      v13[4] = self;
      v14 = serviceUUIDs;
      v15[1] = a2;
      v12 = serviceUUIDs;
      objc_copyWeak(v15, &location);
      dispatch_async(&_dispatch_main_q, v13);
      objc_destroyWeak(v15);

      objc_destroyWeak(&location);
    }
  }
}

- (id)_toggleMicrophoneState:(id)state
{
  if (state)
  {
    cameraProfile = [(HomeNotificationActionOperation *)self cameraProfile];
    streamControl = [cameraProfile streamControl];
    cameraStream = [streamControl cameraStream];

    if (cameraStream)
    {
      v7 = [HFCameraAudioManager alloc];
      cameraProfile2 = [(HomeNotificationActionOperation *)self cameraProfile];
      home = [(HomeNotificationActionOperation *)self home];
      hf_characteristicValueManager = [home hf_characteristicValueManager];
      v11 = [v7 initWithCameraProfile:cameraProfile2 cameraStream:cameraStream valueManager:hf_characteristicValueManager];

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

- (id)_toggleLightbulbsForItems:(id)items
{
  v18 = 2;
  v4 = [items na_filter:&stru_100018AF0];
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
  selfCopy = self;
  v9 = v7;
  v10 = [v8 recover:v12];

  return v10;
}

- (id)_unlockLocksAndDisarmSecuritySystemsForItems:(id)items
{
  itemsCopy = items;
  v5 = [itemsCopy na_filter:&stru_100018B60];
  v6 = [itemsCopy na_filter:&stru_100018B80];
  if (![v5 count] && !objc_msgSend(v6, "count"))
  {
    NSLog(@"Attempted to unlock doors and disarm security systems when no such accessories were found! Items: %@", itemsCopy);
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
  allObjects = [v7 allObjects];
  v10 = [allObjects arrayByAddingObject:v8];

  v11 = [NAFuture combineAllFutures:v10];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000093E8;
  v25[3] = &unk_100018C30;
  v12 = v5;
  v26 = v12;
  v13 = v6;
  v27 = v13;
  selfCopy = self;
  v14 = [v11 flatMap:v25];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100009564;
  v21[3] = &unk_100018C58;
  v22 = v12;
  v23 = v13;
  selfCopy2 = self;
  v15 = v13;
  v16 = v12;
  v17 = [v14 recover:v21];

  return v17;
}

- (id)_writePrimaryState:(int64_t)state forItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    home = [(HomeNotificationActionOperation *)self home];
    hf_characteristicValueManager = [home hf_characteristicValueManager];
    [hf_characteristicValueManager beginTransactionWithReason:@"Long Look notification light toggle"];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100009900;
    v16[3] = &unk_100018C80;
    v16[4] = self;
    v16[5] = state;
    v9 = [itemsCopy na_map:v16];
    home2 = [(HomeNotificationActionOperation *)self home];
    hf_characteristicValueManager2 = [home2 hf_characteristicValueManager];
    [hf_characteristicValueManager2 commitTransactionWithReason:@"Long Look notification light toggle"];

    allObjects = [v9 allObjects];
    v13 = +[NAScheduler mainThreadScheduler];
    v14 = [NAFuture combineAllFutures:allObjects ignoringErrors:0 scheduler:v13];
  }

  else
  {
    v14 = +[NAFuture futureWithNoResult];
  }

  return v14;
}

- (id)_itemsToInvertPrimaryStateForItems:(id)items preferredPrimaryState:(int64_t)state targetPrimaryState:(int64_t *)primaryState
{
  stateCopy = state;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100009B20;
  v20[3] = &unk_100018CA0;
  v20[4] = state;
  itemsCopy = items;
  v8 = objc_retainBlock(v20);
  v9 = [itemsCopy na_filter:v8];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100009B8C;
  v18 = &unk_100018CC8;
  v19 = v8;
  v10 = v8;
  v11 = [itemsCopy na_filter:&v15];

  if ([v11 count])
  {
    v12 = v11;
    if (!primaryState)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = v9;
  if (primaryState)
  {
    stateCopy = HFToggledPrimaryState();
    v12 = v9;
LABEL_6:
    *primaryState = stateCopy;
  }

LABEL_7:
  v13 = v12;

  return v12;
}

@end