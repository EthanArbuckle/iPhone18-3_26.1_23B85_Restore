@interface ADSyncSnapshot
+ (id)sharedInstance;
- (ADSyncSnapshot)init;
- (BOOL)_pruneAppsCacheWithTruth:(id)truth;
- (BOOL)shouldIgnoreSyncKey:(id)key;
- (id)_storePath;
- (void)_cancelSaveTimer;
- (void)_fetchSentAnchorsOnQueue:(id)queue completion:(id)completion;
- (void)_noteSendingPostGen:(id)gen validity:(id)validity key:(id)key appMetaData:(id)data;
- (void)_readFromDisk;
- (void)_save;
- (void)_scheduleSave;
- (void)deleteSavedSnapshots;
- (void)fetchSentAnchorsOnQueue:(id)queue completion:(id)completion;
- (void)noteSendingChunk:(id)chunk;
- (void)pruneCacheWithCurrentSynapseInfo:(id)info;
@end

@implementation ADSyncSnapshot

- (void)_save
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[ADSyncSnapshot _save]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = [[NSMutableDictionary alloc] initWithCapacity:3];
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSMutableDictionary count](self->_appsCache, "count")}];
  appsCache = self->_appsCache;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000D57EC;
  v21[3] = &unk_100510E00;
  v7 = v5;
  v22 = v7;
  [(NSMutableDictionary *)appsCache enumerateKeysAndObjectsUsingBlock:v21];
  if ([v7 count])
  {
    [v4 setValue:v7 forKey:AFSynapseSyncAnchorKey];
  }

  v8 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSMutableDictionary count](self->_pluginCache, "count")}];
  pluginCache = self->_pluginCache;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000D58DC;
  v19[3] = &unk_100510DB0;
  v10 = v8;
  v20 = v10;
  [(NSMutableDictionary *)pluginCache enumerateKeysAndObjectsUsingBlock:v19];
  if ([v10 count])
  {
    [v4 setValue:v10 forKey:@"Plugins"];
  }

  if ([v4 count])
  {
    v18 = 0;
    _storePath2 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:&v18];
    v12 = v18;
    if (!_storePath2)
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "[ADSyncSnapshot _save]";
        v25 = 2112;
        v26 = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Could not convert in-memory representation to plist %@", buf, 0x16u);
      }
    }

    _storePath = [(ADSyncSnapshot *)self _storePath];
    v15 = [_storePath2 writeToFile:_storePath atomically:1];

    if ((v15 & 1) == 0)
    {
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = "[ADSyncSnapshot _save]";
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Failed to write plist to disk", buf, 0xCu);
      }
    }
  }

  else
  {
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v24 = "[ADSyncSnapshot _save]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s No anchors to save, so removing any existing files.", buf, 0xCu);
    }

    v12 = +[NSFileManager defaultManager];
    _storePath2 = [(ADSyncSnapshot *)self _storePath];
    [v12 removeItemAtPath:_storePath2 error:0];
  }

  [(ADSyncSnapshot *)self _cancelSaveTimer];
}

- (void)pruneCacheWithCurrentSynapseInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D5A5C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(queue, v7);
}

- (BOOL)_pruneAppsCacheWithTruth:(id)truth
{
  truthCopy = truth;
  if ([(NSMutableDictionary *)self->_appsCache count])
  {
    allKeys = [(NSMutableDictionary *)self->_appsCache allKeys];
    v5 = [allKeys copy];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v5;
    v25 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
    v6 = 0;
    if (v25)
    {
      v24 = *v34;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v33 + 1) + 8 * v7);
          v9 = [truthCopy objectForKey:v8];
          if (![v9 count])
          {
            v21 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v38 = "[ADSyncSnapshot _pruneAppsCacheWithTruth:]";
              v39 = 2112;
              v40 = v8;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s App %@ no longer has synapse data, removing from cache.", buf, 0x16u);
            }

            [(NSMutableDictionary *)self->_appsCache removeObjectForKey:v8];

            v6 = 1;
            goto LABEL_25;
          }

          v27 = v7;
          v28 = v9;
          v10 = [[NSSet alloc] initWithArray:v9];
          v11 = [(NSMutableDictionary *)self->_appsCache objectForKey:v8];
          v12 = [v11 copy];

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v29 objects:v43 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v30;
            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v30 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v29 + 1) + 8 * i);
                if (([v10 containsObject:v18] & 1) == 0)
                {
                  v19 = AFSiriLogContextDaemon;
                  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315650;
                    v38 = "[ADSyncSnapshot _pruneAppsCacheWithTruth:]";
                    v39 = 2112;
                    v40 = v8;
                    v41 = 2112;
                    v42 = v18;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s %@/%@ info is no longer on disk, removing from cache.", buf, 0x20u);
                  }

                  v20 = [(NSMutableDictionary *)self->_appsCache objectForKey:v8];
                  [v20 removeObjectForKey:v18];

                  v6 = 1;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v29 objects:v43 count:16];
            }

            while (v15);
          }

          v7 = v27 + 1;
        }

        while ((v27 + 1) != v25);
        v25 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)_readFromDisk
{
  v3 = [NSData alloc];
  _storePath = [(ADSyncSnapshot *)self _storePath];
  v5 = [v3 initWithContentsOfFile:_storePath];

  if ([v5 length])
  {
    v33 = 0;
    v6 = [NSPropertyListSerialization propertyListWithData:v5 options:2 format:0 error:&v33];
    v7 = v33;
    if (v6)
    {
      if (objc_opt_respondsToSelector())
      {
        v26 = AFSynapseSyncAnchorKey;
        v8 = [v6 objectForKey:?];
        v9 = [v6 objectForKey:@"Plugins"];
        v10 = objc_alloc_init(NSMutableDictionary);
        v28 = v10;
        if (objc_opt_respondsToSelector())
        {
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_1000D638C;
          v31[3] = &unk_100513FF8;
          v31[4] = self;
          v32 = v10;
          [v9 enumerateKeysAndObjectsUsingBlock:v31];
        }

        else if (v9)
        {
          v17 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v35 = "[ADSyncSnapshot _readFromDisk]";
            v36 = 2112;
            v37 = @"Plugins";
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Saved %@ data is invalid, continuing...", buf, 0x16u);
          }
        }

        v18 = v28;
        if ([v28 count])
        {
          objc_storeStrong(&self->_pluginCache, v28);
        }

        v19 = objc_alloc_init(NSMutableDictionary);
        if (objc_opt_respondsToSelector())
        {
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_1000D64B0;
          v29[3] = &unk_1005150A0;
          v30 = v19;
          [v8 enumerateKeysAndObjectsUsingBlock:v29];
        }

        else if (v8)
        {
          v20 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v35 = "[ADSyncSnapshot _readFromDisk]";
            v36 = 2112;
            v37 = v26;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Saved %@ data is invalid, continuing...", buf, 0x16u);
          }
        }

        objc_storeStrong(&self->_pluginCache, v28);
        objc_storeStrong(&self->_appsCache, v19);
        v21 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v27 = v19;
          pluginCache = self->_pluginCache;
          v23 = v21;
          v24 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)pluginCache count]];
          v18 = v28;
          v25 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_appsCache count]];
          *buf = 136315650;
          v35 = "[ADSyncSnapshot _readFromDisk]";
          v36 = 2112;
          v37 = v24;
          v38 = 2112;
          v39 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Loaded sent sync anchors (%@ plugin anchors, %@ SiriKit anchors)", buf, 0x20u);

          v19 = v27;
        }

        goto LABEL_26;
      }

      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v35 = "[ADSyncSnapshot _readFromDisk]";
        v13 = "%s Saved data is invalid!";
        v14 = v16;
        v15 = 12;
        goto LABEL_12;
      }
    }

    else
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v35 = "[ADSyncSnapshot _readFromDisk]";
        v36 = 2112;
        v37 = v7;
        v13 = "%s Could not deserialize file %@";
        v14 = v12;
        v15 = 22;
LABEL_12:
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
      }
    }

LABEL_26:

    goto LABEL_27;
  }

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v35 = "[ADSyncSnapshot _readFromDisk]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Nothing saved", buf, 0xCu);
  }

LABEL_27:
}

- (BOOL)shouldIgnoreSyncKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:AFIntentSupportAndVocabSyncKey])
  {
    v4 = 1;
  }

  else
  {
    v4 = [keyCopy isEqualToString:AFIntentSupportAndVocabSyncNanoKey];
  }

  return v4;
}

- (void)deleteSavedSnapshots
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6820;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)noteSendingChunk:(id)chunk
{
  chunkCopy = chunk;
  v5 = [chunkCopy key];
  v6 = [v5 copy];

  if ([(ADSyncSnapshot *)self shouldIgnoreSyncKey:v6])
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "[ADSyncSnapshot noteSendingChunk:]";
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Not caching %@", buf, 0x16u);
    }
  }

  else
  {
    postGen = [chunkCopy postGen];
    v9 = [postGen copy];

    validity = [chunkCopy validity];
    v11 = [validity copy];

    appMetaData = [chunkCopy appMetaData];
    v13 = [appMetaData copy];

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D6AF8;
    block[3] = &unk_1005180D8;
    block[4] = self;
    v19 = v9;
    v20 = v11;
    v21 = v6;
    v22 = v13;
    v15 = v13;
    v16 = v11;
    v17 = v9;
    dispatch_async(queue, block);
  }
}

- (void)_noteSendingPostGen:(id)gen validity:(id)validity key:(id)key appMetaData:(id)data
{
  genCopy = gen;
  validityCopy = validity;
  keyCopy = key;
  dataCopy = data;
  if ([keyCopy length])
  {
    v14 = objc_alloc_init(_ADChunkInfo);
    [(_ADChunkInfo *)v14 setValidity:validityCopy];
    [(_ADChunkInfo *)v14 setPostGen:genCopy];
    if ([keyCopy isEqualToString:AFSynapseSyncAnchorKey])
    {
      v25 = genCopy;
      _af_preferredBundleID = [dataCopy _af_preferredBundleID];
      syncSlots = [dataCopy syncSlots];
      v17 = [(NSMutableDictionary *)self->_appsCache objectForKey:_af_preferredBundleID];
      if (!v17)
      {
        v17 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(syncSlots, "count")}];
        [(NSMutableDictionary *)self->_appsCache setObject:v17 forKey:_af_preferredBundleID];
      }

      v24 = _af_preferredBundleID;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = syncSlots;
      v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v27;
        do
        {
          v22 = 0;
          do
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [v17 setObject:v14 forKey:{*(*(&v26 + 1) + 8 * v22), v24}];
            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v20);
      }

      genCopy = v25;
    }

    else
    {
      [(NSMutableDictionary *)self->_pluginCache setObject:v14 forKey:keyCopy];
    }

    [(ADSyncSnapshot *)self _scheduleSave];
  }

  else
  {
    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v32 = "[ADSyncSnapshot _noteSendingPostGen:validity:key:appMetaData:]";
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Missing key, ignoring this sync chunk", buf, 0xCu);
    }
  }
}

- (void)_scheduleSave
{
  saveTimer = self->_saveTimer;
  if (!saveTimer)
  {
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    v5 = self->_saveTimer;
    self->_saveTimer = v4;

    v6 = self->_saveTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000D6F0C;
    handler[3] = &unk_10051DFE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_activate(self->_saveTimer);
    saveTimer = self->_saveTimer;
  }

  v7 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(saveTimer, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[ADSyncSnapshot _scheduleSave]";
    v12 = 2048;
    v13 = 0x4024000000000000;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Waiting %.4g seconds to save", buf, 0x16u);
  }
}

- (void)_cancelSaveTimer
{
  saveTimer = self->_saveTimer;
  if (saveTimer)
  {
    dispatch_source_cancel(saveTimer);
    v4 = self->_saveTimer;
    self->_saveTimer = 0;
  }
}

- (void)fetchSentAnchorsOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!queueCopy)
    {
      queueCopy = &_dispatch_main_q;
      v8 = &_dispatch_main_q;
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D70CC;
    block[3] = &unk_10051E088;
    block[4] = self;
    queueCopy = queueCopy;
    v12 = queueCopy;
    v13 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[ADSyncSnapshot fetchSentAnchorsOnQueue:completion:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Can not get anchors without a completion block", buf, 0xCu);
    }
  }
}

- (void)_fetchSentAnchorsOnQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  v8 = objc_alloc_init(NSMutableArray);
  pluginCache = self->_pluginCache;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000D7280;
  v20[3] = &unk_100510DB0;
  v10 = v8;
  v21 = v10;
  [(NSMutableDictionary *)pluginCache enumerateKeysAndObjectsUsingBlock:v20];
  appsCache = self->_appsCache;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000D72E4;
  v18[3] = &unk_1005150A0;
  v12 = v10;
  v19 = v12;
  [(NSMutableDictionary *)appsCache enumerateKeysAndObjectsUsingBlock:v18];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D739C;
  v15[3] = &unk_10051E038;
  v16 = v12;
  v17 = completionCopy;
  v13 = v12;
  v14 = completionCopy;
  dispatch_async(queueCopy, v15);
}

- (id)_storePath
{
  v2 = AFUserSupportDirectoryPath();
  v3 = [v2 stringByAppendingPathComponent:@"SyncSnapshot.plist"];

  return v3;
}

- (ADSyncSnapshot)init
{
  v16.receiver = self;
  v16.super_class = ADSyncSnapshot;
  v2 = [(ADSyncSnapshot *)&v16 init];
  if (v2)
  {
    v3 = [objc_opt_class() description];
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = [[NSMutableDictionary alloc] initWithCapacity:0];
    pluginCache = v2->_pluginCache;
    v2->_pluginCache = v8;

    v10 = [[NSMutableDictionary alloc] initWithCapacity:0];
    appsCache = v2->_appsCache;
    v2->_appsCache = v10;

    v12 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D75BC;
    block[3] = &unk_10051DFE8;
    v15 = v2;
    dispatch_async(v12, block);
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D7664;
  block[3] = &unk_10051E200;
  block[4] = self;
  if (qword_100590000 != -1)
  {
    dispatch_once(&qword_100590000, block);
  }

  v2 = qword_10058FFF8;

  return v2;
}

@end