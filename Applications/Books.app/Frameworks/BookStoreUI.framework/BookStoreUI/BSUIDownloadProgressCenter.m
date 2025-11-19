@interface BSUIDownloadProgressCenter
- (BSUIDownloadProgressCenter)init;
- (id)dynamicProgressForKind:(id)a3 instance:(id)a4 parameters:(id)a5;
- (void)_audiobookDownloadStatusNotification:(id)a3;
- (void)_ubiquityDownloadStatusNotification:(id)a3;
- (void)downloadQueue:(id)a3 downloadStatesDidChange:(id)a4;
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

- (id)dynamicProgressForKind:(id)a3 instance:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v20 = v10;
  v21 = &v22;
  block[4] = self;
  v18 = v9;
  v19 = v8;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_sync(accessQ, block);
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

- (void)downloadQueue:(id)a3 downloadStatesDidChange:(id)a4
{
  v12 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a4;
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
          v11 = [v9 percentComplete];
          [v16[5] setProgress:v11];
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

- (void)_audiobookDownloadStatusNotification:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"BSUIAudioBookDownloadProgressKey"];
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
        v11 = [v9 progress];
        sub_2BD7B4(v11, buf, v10);
      }

      v12 = [v9 progress];
      [v17[5] setProgress:v12];
    }

    _Block_object_dispose(&v16, 8);
  }
}

- (void)_ubiquityDownloadStatusNotification:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"BSUIUbiquityDownloadProgressKey"];
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
        v11 = [v9 progress];
        sub_2BD80C(v11, buf, v10);
      }

      v12 = [v9 progress];
      [v17[5] setProgress:v12];
    }

    _Block_object_dispose(&v16, 8);
  }
}

@end