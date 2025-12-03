@interface ADRemoteTimerManager
- (ADRemoteTimerManager)init;
- (id)_storageForDeviceWithIdentifier:(id)identifier;
- (void)_invalidateStorageForDeviceWithIdentifier:(id)identifier;
- (void)_sendStereoPartnerAction:(id)action timerID:(id)d changes:(id)changes completion:(id)completion;
- (void)accessStorageForDeviceWithIdentifier:(id)identifier usingBlock:(id)block;
- (void)clockItemStorageDidUpdate:(id)update insertedItemIDs:(id)ds updatedItemIDs:(id)iDs deletedItemIDs:(id)itemIDs;
- (void)finalizeStorageForDeviceWithIdentifier:(id)identifier;
- (void)getSnapshotForDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)getSnapshotsByDeviceIdentifierWithCompletion:(id)completion;
- (void)handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)prepareStorageForDeviceWithIdentifier:(id)identifier;
- (void)removeTimerWithID:(id)d completion:(id)completion;
- (void)updateTimerWithID:(id)d changes:(id)changes completion:(id)completion;
@end

@implementation ADRemoteTimerManager

- (void)_sendStereoPartnerAction:(id)action timerID:(id)d changes:(id)changes completion:(id)completion
{
  actionCopy = action;
  dCopy = d;
  changesCopy = changes;
  completionCopy = completion;
  if (AFIsHorseman())
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    [v14 setObject:actionCopy forKey:@"action"];
    if (dCopy)
    {
      uUIDString = [dCopy UUIDString];
      [v14 setObject:uUIDString forKey:@"timer-id-string"];
    }

    if (changesCopy)
    {
      [v14 setObject:changesCopy forKey:@"timer-changes"];
    }

    v16 = self->_queue;
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "[ADRemoteTimerManager _sendStereoPartnerAction:timerID:changes:completion:]";
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Sending stereo partner message %@...", buf, 0x16u);
    }

    v18 = +[ADCompanionService sharedInstance];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10009B708;
    v20[3] = &unk_100514DE0;
    v21 = v16;
    v22 = completionCopy;
    v19 = v16;
    [v18 sendStereoPartnerMessage:v14 messageType:@"clocktimer" completion:v20];

    goto LABEL_11;
  }

  if (completionCopy)
  {
    v14 = [AFError errorWithCode:2114];
    (*(completionCopy + 2))(completionCopy, 0, v14);
LABEL_11:
  }
}

- (void)_invalidateStorageForDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(NSMutableDictionary *)self->_storagesByDeviceIdentifier objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMutableDictionary *)self->_storagesByDeviceIdentifier removeObjectForKey:identifierCopy];
  }
}

- (id)_storageForDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_storagesByDeviceIdentifier objectForKey:identifierCopy];
  if (!v5)
  {
    v5 = [[AFClockItemStorage alloc] initWithIdentifier:identifierCopy delegate:self];
    [(NSMutableDictionary *)self->_storagesByDeviceIdentifier setObject:v5 forKey:identifierCopy];
  }

  return v5;
}

- (void)handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  typeCopy = type;
  identifierCopy = identifier;
  completionCopy = completion;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v29 = "[ADRemoteTimerManager handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
    v30 = 2112;
    v31 = identifierCopy;
    v32 = 2112;
    v33 = typeCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, messageType = %@", buf, 0x20u);
  }

  if (AFIsHorseman())
  {
    if ([typeCopy isEqualToString:@"clocktimer"])
    {
      v14 = [messageCopy objectForKey:@"action"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v14 = 0;
      }

      v15 = [messageCopy objectForKey:@"timer-id-string"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [[NSUUID alloc] initWithUUIDString:v15];
      }

      else
      {
        v16 = 0;
      }

      v19 = [messageCopy objectForKey:@"timer-changes"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v19 = 0;
      }

      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v29 = "[ADRemoteTimerManager handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
        v30 = 2112;
        v31 = v14;
        v32 = 2112;
        v33 = v16;
        v34 = 2112;
        v35 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s action = %@, timerID = %@, changes = %@", buf, 0x2Au);
      }

      if ([v14 isEqualToString:@"update-timer"])
      {
        if (v16 && v19)
        {
          v21 = +[ADClockService sharedService];
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_10009C1B4;
          v26[3] = &unk_100510060;
          v27 = completionCopy;
          [v21 updateTimerWithID:v16 changes:v19 completion:v26];

          v22 = v27;
          goto LABEL_29;
        }
      }

      else if ([v14 isEqualToString:@"remove-timer"] && v16)
      {
        v23 = +[ADClockService sharedService];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10009C3AC;
        v24[3] = &unk_100510060;
        v25 = completionCopy;
        [v23 removeTimerWithID:v16 completion:v24];

        v22 = v25;
        goto LABEL_29;
      }

      if (!completionCopy)
      {
LABEL_30:

        goto LABEL_31;
      }

      v22 = [AFError errorWithCode:2114];
      (*(completionCopy + 2))(completionCopy, 0, v22);
LABEL_29:

      goto LABEL_30;
    }

    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[ADRemoteTimerManager handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
      v30 = 2112;
      v31 = typeCopy;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Received message from unknown message type: %@", buf, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_32;
      }

      goto LABEL_13;
    }

    if (completionCopy)
    {
LABEL_13:
      v17 = 1004;
      goto LABEL_14;
    }
  }

  else if (completionCopy)
  {
    v17 = 2114;
LABEL_14:
    v14 = [AFError errorWithCode:v17];
    (*(completionCopy + 2))(completionCopy, 0, v14);
LABEL_31:
  }

LABEL_32:
}

- (void)clockItemStorageDidUpdate:(id)update insertedItemIDs:(id)ds updatedItemIDs:(id)iDs deletedItemIDs:(id)itemIDs
{
  v6 = [ADCommandCenter sharedCommandCenter:update];
  [v6 setAlertContextDirty];
}

- (void)removeTimerWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009C6B0;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)updateTimerWithID:(id)d changes:(id)changes completion:(id)completion
{
  dCopy = d;
  changesCopy = changes;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009C848;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = dCopy;
  v17 = changesCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = changesCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

- (void)accessStorageForDeviceWithIdentifier:(id)identifier usingBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  if (blockCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009C9CC;
    block[3] = &unk_10051E088;
    block[4] = self;
    v10 = identifierCopy;
    v11 = blockCopy;
    dispatch_async(queue, block);
  }
}

- (void)finalizeStorageForDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009CAD8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (void)prepareStorageForDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009CB7C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (void)getSnapshotsByDeviceIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10009CC68;
    v8[3] = &unk_10051E038;
    v8[4] = self;
    v9 = completionCopy;
    v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v8);
    dispatch_async(queue, v7);
  }
}

- (void)getSnapshotForDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009CF90;
    block[3] = &unk_10051E088;
    block[4] = self;
    v11 = identifierCopy;
    v12 = completionCopy;
    v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(queue, v9);
  }
}

- (ADRemoteTimerManager)init
{
  v11.receiver = self;
  v11.super_class = ADRemoteTimerManager;
  v2 = [(ADRemoteTimerManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.assistant.remote-timer-manager", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    storagesByDeviceIdentifier = v2->_storagesByDeviceIdentifier;
    v2->_storagesByDeviceIdentifier = v6;

    if (AFIsHorseman())
    {
      v8 = +[ADCompanionService sharedInstance];
      [v8 setMessageHandler:v2 forMessageType:@"clocktimer"];
    }

    else
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v13 = "[ADRemoteTimerManager init]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s This platform does not support stereo partner timers", buf, 0xCu);
      }
    }
  }

  return v2;
}

@end