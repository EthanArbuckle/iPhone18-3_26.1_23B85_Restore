@interface ADSyncDeny
+ (id)sharedInstance;
- (ADSyncDeny)init;
- (id)_storePath;
- (id)_timeouts:(id)a3 expiringAfter:(id)a4;
- (id)timeoutsExpiringAfter:(id)a3;
- (void)_saveTimeouts:(id)a3;
- (void)checkIfAnyUserVocabularyIsDeniedForApp:(id)a3 completion:(id)a4;
- (void)checkPermissionToSyncSlot:(id)a3 forApp:(id)a4 completion:(id)a5;
- (void)filterDeniedAnchorsFrom:(id)a3 includingNewRestrictionsFromResponse:(id)a4;
- (void)filterDeniedKeys:(id)a3 appSources:(id)a4;
- (void)filterDeniedKeys:(id)a3 vocabSources:(id)a4;
- (void)saveTimeouts:(id)a3;
@end

@implementation ADSyncDeny

- (void)_saveTimeouts:(id)a3
{
  v9 = a3;
  if (([v9 isEqual:self->_cachedTimeoutTable] & 1) == 0)
  {
    v4 = [v9 copy];
    cachedTimeoutTable = self->_cachedTimeoutTable;
    self->_cachedTimeoutTable = v4;

    if ([(NSDictionary *)self->_cachedTimeoutTable count])
    {
      v6 = self->_cachedTimeoutTable;
      v7 = [(ADSyncDeny *)self _storePath];
      [(NSDictionary *)v6 writeToFile:v7 atomically:1];
    }

    else
    {
      v7 = +[NSFileManager defaultManager];
      v8 = [(ADSyncDeny *)self _storePath];
      [v7 removeItemAtPath:v8 error:0];
    }
  }

  _objc_release_x1();
}

- (void)saveTimeouts:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C8758;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)_timeouts:(id)a3 expiringAfter:(id)a4
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C8860;
  v13[3] = &unk_100510C00;
  v14 = a4;
  v5 = v14;
  v6 = a3;
  v7 = [v6 keysOfEntriesPassingTest:v13];
  v8 = [v7 allObjects];
  v9 = [v6 dictionaryWithValuesForKeys:v8];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &__NSDictionary0__struct;
  }

  v11 = v10;

  return v10;
}

- (id)timeoutsExpiringAfter:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000C89A8;
  v16 = sub_1000C89B8;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C89C0;
  block[3] = &unk_10051C588;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)filterDeniedKeys:(id)a3 appSources:(id)a4
{
  v28 = self;
  v29 = a3;
  v5 = a4;
  v6 = [v5 copy];
  [v5 removeAllObjects];
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = [v13 appIdentifyingInfo];
        v15 = [v14 bundleId];

        if (v15)
        {
          v16 = [v13 syncSlots];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = &__NSArray0__struct;
          }

          [v7 setObject:v18 forKey:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  [(ADSyncDeny *)v28 filterDeniedKeys:v29 vocabSources:v7];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = v8;
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v30 + 1) + 8 * j);
        v25 = [v24 appIdentifyingInfo];
        v26 = [v25 bundleId];

        if (v26)
        {
          v27 = [v7 objectForKey:v26];
          if (v27)
          {
            [v24 setSyncSlots:v27];
            [v5 addObject:v24];
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v21);
  }
}

- (void)filterDeniedKeys:(id)a3 vocabSources:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate date];
  v9 = [(ADSyncDeny *)self timeoutsExpiringAfter:v8];

  if ([v9 count])
  {
    v10 = [v9 allKeys];
    [v6 removeObjectsInArray:v10];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000C8E04;
    v16 = &unk_100510BD8;
    v17 = v10;
    v18 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v11 = v18;
    v12 = v10;
    [v7 enumerateKeysAndObjectsUsingBlock:&v13];
    [v7 setDictionary:{v11, v13, v14, v15, v16}];
  }
}

- (void)filterDeniedAnchorsFrom:(id)a3 includingNewRestrictionsFromResponse:(id)a4
{
  v28 = a3;
  v5 = a4;
  v30 = +[NSDate date];
  v31 = objc_alloc_init(NSMutableSet);
  v29 = [[NSMutableDictionary alloc] initWithCapacity:0];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = v5;
  v6 = [v5 anchors];
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 suspendDurationInSeconds];
        [v12 doubleValue];
        if (v13 != 0.0)
        {
          v14 = v13;
          if ([v11 _af_isValid])
          {
            v15 = [v11 _af_normalizedKey];
            if (v14 >= 0.0)
            {
              v21 = [v30 dateByAddingTimeInterval:v14];
              v22 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v37 = "[ADSyncDeny filterDeniedAnchorsFrom:includingNewRestrictionsFromResponse:]";
                v38 = 2112;
                v39 = v21;
                v40 = 2112;
                v41 = v11;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Anchor was throttled until %@ %@", buf, 0x20u);
              }

              [v29 setObject:v21 forKey:v15];
            }

            else
            {
              v16 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v37 = "[ADSyncDeny filterDeniedAnchorsFrom:includingNewRestrictionsFromResponse:]";
                v38 = 2112;
                v39 = v11;
                _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Invalid sync anchor was rejected by server %@", buf, 0x16u);
              }
            }

            [v31 addObject:v15];
          }

          else
          {
            v17 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              v18 = v17;
              v19 = [v11 key];
              v20 = [v11 aceId];
              *buf = 136315650;
              v37 = "[ADSyncDeny filterDeniedAnchorsFrom:includingNewRestrictionsFromResponse:]";
              v38 = 2114;
              v39 = v19;
              v40 = 2112;
              v41 = v20;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Unable to stop synching anchors of type %{public}@, because the example anchor is malformed aceID=%@", buf, 0x20u);
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v8);
  }

  v23 = [(ADSyncDeny *)self timeoutsExpiringAfter:v30];
  v24 = [v23 allKeys];
  [v31 addObjectsFromArray:v24];

  [v29 addEntriesFromDictionary:v23];
  [(ADSyncDeny *)self saveTimeouts:v29];
  v25 = [v31 allObjects];
  [v28 removeObjectsForKeys:v25];
}

- (void)checkPermissionToSyncSlot:(id)a3 forApp:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000C9548;
  v15[3] = &unk_10051E0D8;
  v16 = v9;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

- (void)checkIfAnyUserVocabularyIsDeniedForApp:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C9784;
    block[3] = &unk_10051E088;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, block);
  }
}

- (id)_storePath
{
  v2 = AFUserSupportDirectoryPath();
  v3 = [v2 stringByAppendingPathComponent:@"SyncTimeouts.plist"];

  return v3;
}

- (ADSyncDeny)init
{
  v13.receiver = self;
  v13.super_class = ADSyncDeny;
  v2 = [(ADSyncDeny *)&v13 init];
  if (v2)
  {
    v3 = [objc_opt_class() description];
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    cachedTimeoutTable = v2->_cachedTimeoutTable;
    v2->_cachedTimeoutTable = &__NSDictionary0__struct;

    v9 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C9AC0;
    block[3] = &unk_10051DFE8;
    v12 = v2;
    dispatch_async(v9, block);
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9C14;
  block[3] = &unk_10051E200;
  block[4] = a1;
  if (qword_10058FFD0 != -1)
  {
    dispatch_once(&qword_10058FFD0, block);
  }

  v2 = qword_10058FFC8;

  return v2;
}

@end