@interface BSUIDownloadProgressCenter
- (BSUIDownloadProgressCenter)init;
- (id)dynamicProgressForKind:(id)kind instance:(id)instance parameters:(id)parameters;
- (void)_audiobookDownloadStatusNotification:(id)notification;
- (void)_ubiquityDownloadStatusNotification:(id)notification;
- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change;
@end

@implementation BSUIDownloadProgressCenter

- (BSUIDownloadProgressCenter)init
{
  v13.receiver = self;
  v13.super_class = BSUIDownloadProgressCenter;
  v2 = [(BSUIDownloadProgressCenter *)&v13 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToWeakObjectsMapTable];
    instanceMap = v2->_instanceMap;
    v2->_instanceMap = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("BSUIDownloadProgressCenter.access", v5);
    accessQ = v2->_accessQ;
    v2->_accessQ = v6;

    v8 = +[BLDownloadQueue sharedInstance];
    [v8 addObserver:v2];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_audiobookDownloadStatusNotification:" name:@"BSUIAudioBookDownloadStatusNotification" object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_ubiquityDownloadStatusNotification:" name:@"BSUIUbiquityDownloadStatusNotification" object:0];

    v11 = BCBookDownloadLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_2BD770(v11);
    }
  }

  return v2;
}

- (id)dynamicProgressForKind:(id)kind instance:(id)instance parameters:(id)parameters
{
  kindCopy = kind;
  instanceCopy = instance;
  parametersCopy = parameters;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_29C84;
  v26 = sub_29C94;
  v27 = 0;
  accessQ = self->_accessQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_29C9C;
  block[3] = &unk_387C08;
  v20 = parametersCopy;
  v21 = &v22;
  block[4] = self;
  v18 = instanceCopy;
  v19 = kindCopy;
  v12 = parametersCopy;
  v13 = kindCopy;
  v14 = instanceCopy;
  dispatch_sync(accessQ, block);
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change
{
  queueCopy = queue;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = change;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = sub_29C84;
        v19 = sub_29C94;
        v20 = 0;
        accessQ = self->_accessQ;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_2A020;
        block[3] = &unk_387028;
        block[5] = v9;
        block[6] = &v15;
        block[4] = self;
        dispatch_sync(accessQ, block);
        if (v16[5])
        {
          percentComplete = [v9 percentComplete];
          [v16[5] setProgress:percentComplete];
        }

        _Block_object_dispose(&v15, 8);

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }
}

- (void)_audiobookDownloadStatusNotification:(id)notification
{
  notificationCopy = notification;
  objc_opt_class();
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"BSUIAudioBookDownloadProgressKey"];
  v7 = BUDynamicCast();

  if (v7)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_29C84;
    v20 = sub_29C94;
    v21 = 0;
    accessQ = self->_accessQ;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2A31C;
    block[3] = &unk_387028;
    v15 = &v16;
    block[4] = self;
    v9 = v7;
    v14 = v9;
    dispatch_sync(accessQ, block);
    if (v17[5])
    {
      v10 = BCBookDownloadLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        progress = [v9 progress];
        sub_2BD7B4(progress, buf, v10);
      }

      progress2 = [v9 progress];
      [v17[5] setProgress:progress2];
    }

    _Block_object_dispose(&v16, 8);
  }
}

- (void)_ubiquityDownloadStatusNotification:(id)notification
{
  notificationCopy = notification;
  objc_opt_class();
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"BSUIUbiquityDownloadProgressKey"];
  v7 = BUDynamicCast();

  if (v7)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_29C84;
    v20 = sub_29C94;
    v21 = 0;
    accessQ = self->_accessQ;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2A5A4;
    block[3] = &unk_387028;
    v15 = &v16;
    block[4] = self;
    v9 = v7;
    v14 = v9;
    dispatch_sync(accessQ, block);
    if (v17[5])
    {
      v10 = BCBookDownloadLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        progress = [v9 progress];
        sub_2BD80C(progress, buf, v10);
      }

      progress2 = [v9 progress];
      [v17[5] setProgress:progress2];
    }

    _Block_object_dispose(&v16, 8);
  }
}

@end