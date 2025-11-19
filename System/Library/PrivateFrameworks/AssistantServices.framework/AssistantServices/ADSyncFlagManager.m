@interface ADSyncFlagManager
+ (id)sharedManager;
- (ADSyncFlagManager)init;
- (void)_clearSyncNeededFlagsForKeys:(id)a3;
- (void)_fetchSyncFlagsOnDisk;
- (void)_setSyncNeededFlagsForKeys:(id)a3;
- (void)clearAllFlags;
- (void)clearFlagsForKeys:(id)a3;
- (void)fetchKeysThatNeedToSync:(id)a3;
- (void)setSyncNeededFlagForKeys:(id)a3;
@end

@implementation ADSyncFlagManager

- (void)_clearSyncNeededFlagsForKeys:(id)a3
{
  v4 = a3;
  v15 = AFUserSupportDirectoryPath();
  v5 = +[NSFileManager defaultManager];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_cachedFlags containsObject:v11])
        {
          v12 = [@"sync_flag" stringByAppendingString:v11];
          v13 = [v15 stringByAppendingPathComponent:v12];
          v16 = 0;
          [v5 removeItemAtPath:v13 error:&v16];
          v14 = v16;

          [(NSMutableSet *)self->_cachedFlags removeObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)_setSyncNeededFlagsForKeys:(id)a3
{
  v4 = a3;
  v18 = AFUserSupportDirectoryPath();
  v5 = +[NSFileManager defaultManager];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 136315650;
    v17 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (([(NSMutableSet *)self->_cachedFlags containsObject:v12, v17]& 1) == 0)
        {
          v13 = [@"sync_flag" stringByAppendingString:v12];
          v14 = [v18 stringByAppendingPathComponent:v13];
          v15 = [v5 createFileAtPath:v14 contents:0 attributes:0];

          if ((v15 & 1) == 0)
          {
            v16 = AFSiriLogContextUtility;
            if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
            {
              *buf = v17;
              v24 = "[ADSyncFlagManager _setSyncNeededFlagsForKeys:]";
              v25 = 2112;
              v26 = v12;
              v27 = 2112;
              v28 = v18;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Failed to create the sync flag for %@ at %@", buf, 0x20u);
            }
          }

          [(NSMutableSet *)self->_cachedFlags addObject:v12];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v9);
  }
}

- (void)_fetchSyncFlagsOnDisk
{
  v3 = AFUserSupportDirectoryPath();
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 contentsOfDirectoryAtPath:v3 error:0];

  if (v5)
  {
    v6 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    cachedFlags = self->_cachedFlags;
    self->_cachedFlags = v6;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if (([v13 isEqualToString:{@"sync_flag", v15}] & 1) == 0 && objc_msgSend(v13, "hasPrefix:", @"sync_flag"))
          {
            v14 = [v13 substringFromIndex:{objc_msgSend(@"sync_flag", "length")}];
            [(NSMutableSet *)self->_cachedFlags addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (void)clearAllFlags
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002EFCD0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)clearFlagsForKeys:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002EFDEC;
    v6[3] = &unk_10051E010;
    v6[4] = self;
    v7 = v4;
    dispatch_async(queue, v6);
  }
}

- (void)setSyncNeededFlagForKeys:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002EFEE0;
    v6[3] = &unk_10051E010;
    v6[4] = self;
    v7 = v4;
    dispatch_async(queue, v6);
  }
}

- (void)fetchKeysThatNeedToSync:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002EFFD0;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (ADSyncFlagManager)init
{
  v7.receiver = self;
  v7.super_class = ADSyncFlagManager;
  v2 = [(ADSyncFlagManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADSyncFlagManagerQueue", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    [(ADSyncFlagManager *)v2 _fetchSyncFlagsOnDisk];
  }

  return v2;
}

+ (id)sharedManager
{
  if (qword_100590870 != -1)
  {
    dispatch_once(&qword_100590870, &stru_10051AE88);
  }

  v3 = qword_100590868;

  return v3;
}

@end