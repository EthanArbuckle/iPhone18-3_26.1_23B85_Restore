@interface ADSyncDeny
+ (id)sharedInstance;
- (ADSyncDeny)init;
- (id)_storePath;
- (id)_timeouts:(id)_timeouts expiringAfter:(id)after;
- (id)timeoutsExpiringAfter:(id)after;
- (void)_saveTimeouts:(id)timeouts;
- (void)checkIfAnyUserVocabularyIsDeniedForApp:(id)app completion:(id)completion;
- (void)checkPermissionToSyncSlot:(id)slot forApp:(id)app completion:(id)completion;
- (void)filterDeniedAnchorsFrom:(id)from includingNewRestrictionsFromResponse:(id)response;
- (void)filterDeniedKeys:(id)keys appSources:(id)sources;
- (void)filterDeniedKeys:(id)keys vocabSources:(id)sources;
- (void)saveTimeouts:(id)timeouts;
@end

@implementation ADSyncDeny

- (void)_saveTimeouts:(id)timeouts
{
  timeoutsCopy = timeouts;
  if (([timeoutsCopy isEqual:self->_cachedTimeoutTable] & 1) == 0)
  {
    v4 = [timeoutsCopy copy];
    cachedTimeoutTable = self->_cachedTimeoutTable;
    self->_cachedTimeoutTable = v4;

    if ([(NSDictionary *)self->_cachedTimeoutTable count])
    {
      v6 = self->_cachedTimeoutTable;
      _storePath = [(ADSyncDeny *)self _storePath];
      [(NSDictionary *)v6 writeToFile:_storePath atomically:1];
    }

    else
    {
      _storePath = +[NSFileManager defaultManager];
      _storePath2 = [(ADSyncDeny *)self _storePath];
      [_storePath removeItemAtPath:_storePath2 error:0];
    }
  }

  _objc_release_x1();
}

- (void)saveTimeouts:(id)timeouts
{
  timeoutsCopy = timeouts;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C8758;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = timeoutsCopy;
  v6 = timeoutsCopy;
  dispatch_async(queue, v7);
}

- (id)_timeouts:(id)_timeouts expiringAfter:(id)after
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C8860;
  v13[3] = &unk_100510C00;
  afterCopy = after;
  v5 = afterCopy;
  _timeoutsCopy = _timeouts;
  v7 = [_timeoutsCopy keysOfEntriesPassingTest:v13];
  allObjects = [v7 allObjects];
  v9 = [_timeoutsCopy dictionaryWithValuesForKeys:allObjects];

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

- (id)timeoutsExpiringAfter:(id)after
{
  afterCopy = after;
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
  v10 = afterCopy;
  v11 = &v12;
  block[4] = self;
  v6 = afterCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)filterDeniedKeys:(id)keys appSources:(id)sources
{
  selfCopy = self;
  keysCopy = keys;
  sourcesCopy = sources;
  v6 = [sourcesCopy copy];
  [sourcesCopy removeAllObjects];
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(sourcesCopy, "count")}];
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
        appIdentifyingInfo = [v13 appIdentifyingInfo];
        bundleId = [appIdentifyingInfo bundleId];

        if (bundleId)
        {
          syncSlots = [v13 syncSlots];
          v17 = syncSlots;
          if (syncSlots)
          {
            v18 = syncSlots;
          }

          else
          {
            v18 = &__NSArray0__struct;
          }

          [v7 setObject:v18 forKey:bundleId];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  [(ADSyncDeny *)selfCopy filterDeniedKeys:keysCopy vocabSources:v7];
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
        appIdentifyingInfo2 = [v24 appIdentifyingInfo];
        bundleId2 = [appIdentifyingInfo2 bundleId];

        if (bundleId2)
        {
          v27 = [v7 objectForKey:bundleId2];
          if (v27)
          {
            [v24 setSyncSlots:v27];
            [sourcesCopy addObject:v24];
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v21);
  }
}

- (void)filterDeniedKeys:(id)keys vocabSources:(id)sources
{
  keysCopy = keys;
  sourcesCopy = sources;
  v8 = +[NSDate date];
  v9 = [(ADSyncDeny *)self timeoutsExpiringAfter:v8];

  if ([v9 count])
  {
    allKeys = [v9 allKeys];
    [keysCopy removeObjectsInArray:allKeys];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000C8E04;
    v16 = &unk_100510BD8;
    v17 = allKeys;
    v18 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(sourcesCopy, "count")}];
    v11 = v18;
    v12 = allKeys;
    [sourcesCopy enumerateKeysAndObjectsUsingBlock:&v13];
    [sourcesCopy setDictionary:{v11, v13, v14, v15, v16}];
  }
}

- (void)filterDeniedAnchorsFrom:(id)from includingNewRestrictionsFromResponse:(id)response
{
  fromCopy = from;
  responseCopy = response;
  v30 = +[NSDate date];
  v31 = objc_alloc_init(NSMutableSet);
  v29 = [[NSMutableDictionary alloc] initWithCapacity:0];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = responseCopy;
  anchors = [responseCopy anchors];
  v7 = [anchors countByEnumeratingWithState:&v32 objects:v42 count:16];
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
          objc_enumerationMutation(anchors);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        suspendDurationInSeconds = [v11 suspendDurationInSeconds];
        [suspendDurationInSeconds doubleValue];
        if (v13 != 0.0)
        {
          v14 = v13;
          if ([v11 _af_isValid])
          {
            _af_normalizedKey = [v11 _af_normalizedKey];
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

              [v29 setObject:v21 forKey:_af_normalizedKey];
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

            [v31 addObject:_af_normalizedKey];
          }

          else
          {
            v17 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              v18 = v17;
              v19 = [v11 key];
              aceId = [v11 aceId];
              *buf = 136315650;
              v37 = "[ADSyncDeny filterDeniedAnchorsFrom:includingNewRestrictionsFromResponse:]";
              v38 = 2114;
              v39 = v19;
              v40 = 2112;
              v41 = aceId;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Unable to stop synching anchors of type %{public}@, because the example anchor is malformed aceID=%@", buf, 0x20u);
            }
          }
        }
      }

      v8 = [anchors countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v8);
  }

  v23 = [(ADSyncDeny *)self timeoutsExpiringAfter:v30];
  allKeys = [v23 allKeys];
  [v31 addObjectsFromArray:allKeys];

  [v29 addEntriesFromDictionary:v23];
  [(ADSyncDeny *)self saveTimeouts:v29];
  allObjects = [v31 allObjects];
  [fromCopy removeObjectsForKeys:allObjects];
}

- (void)checkPermissionToSyncSlot:(id)slot forApp:(id)app completion:(id)completion
{
  slotCopy = slot;
  appCopy = app;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000C9548;
  v15[3] = &unk_10051E0D8;
  v16 = appCopy;
  v17 = slotCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = slotCopy;
  v14 = appCopy;
  dispatch_async(queue, v15);
}

- (void)checkIfAnyUserVocabularyIsDeniedForApp:(id)app completion:(id)completion
{
  appCopy = app;
  completionCopy = completion;
  if (completionCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C9784;
    block[3] = &unk_10051E088;
    block[4] = self;
    v10 = appCopy;
    v11 = completionCopy;
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
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
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
  block[4] = self;
  if (qword_10058FFD0 != -1)
  {
    dispatch_once(&qword_10058FFD0, block);
  }

  v2 = qword_10058FFC8;

  return v2;
}

@end