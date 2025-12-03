@interface AAPSyncMetaDataProcessor
- (AAPSyncMetaDataProcessor)initWithSource:(id)source;
- (void)_queue_processNextChange:(id)change afterAnchor:(id)anchor withInitialAnchor:(id)initialAnchor;
- (void)_queue_updateCache;
- (void)dealloc;
- (void)processNextChange:(id)change afterAnchor:(id)anchor;
@end

@implementation AAPSyncMetaDataProcessor

- (AAPSyncMetaDataProcessor)initWithSource:(id)source
{
  v8.receiver = self;
  v8.super_class = AAPSyncMetaDataProcessor;
  v4 = [(AAPSyncMetaDataProcessor *)&v8 init];
  if (v4)
  {
    v4->_queue = dispatch_queue_create(0, 0);
    v4->_appInfoCacheCheck = objc_alloc_init(NSCondition);
    queue = v4->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_47FC;
    v7[3] = &unk_208B8;
    v7[4] = source;
    v7[5] = v4;
    dispatch_async(queue, v7);
  }

  return v4;
}

- (void)dealloc
{
  dispatch_release(self->_queue);

  v3.receiver = self;
  v3.super_class = AAPSyncMetaDataProcessor;
  [(AAPSyncMetaDataProcessor *)&v3 dealloc];
}

- (void)processNextChange:(id)change afterAnchor:(id)anchor
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4954;
  block[3] = &unk_208E0;
  block[4] = self;
  block[5] = change;
  block[6] = anchor;
  dispatch_sync(queue, block);
}

- (void)_queue_processNextChange:(id)change afterAnchor:(id)anchor withInitialAnchor:(id)initialAnchor
{
  v9 = objc_alloc_init(NSAutoreleasePool);
  v10 = [(NSArray *)self->_metaData count];
  lastChangeOffset = self->_lastChangeOffset;
  if (lastChangeOffset >= v10)
  {
    if (lastChangeOffset != 0x7FFFFFFFFFFFFFFFLL && os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_10258();
      if (!v10)
      {
        goto LABEL_23;
      }
    }

    else if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (![objc_msgSend(-[NSArray objectAtIndex:](self->_metaData "objectAtIndex:{"anchor"), "isEqualToAnchor:", anchor}")])
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_102D8();
    }

LABEL_20:
    v13 = 0;
    while (1)
    {
      v14 = [(NSArray *)self->_metaData objectAtIndex:v13];
      if ([objc_msgSend(v14 "anchor")])
      {
        goto LABEL_5;
      }

      if (v10 == ++v13)
      {
        goto LABEL_23;
      }
    }
  }

  v12 = self->_lastChangeOffset;
  v13 = v12 + 1;
  if (v12 + 1 >= v10)
  {
    goto LABEL_23;
  }

  v14 = [(NSArray *)self->_metaData objectAtIndex:v12 + 1];
LABEL_5:
  if (v14)
  {
    appId = [v14 appId];
    [(NSCondition *)self->_appInfoCacheCheck lock];
    v16 = [(NSMutableDictionary *)self->_appInfoCache objectForKey:appId];
    v17 = +[NSNull null];
    if (v16 == v17)
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
      {
        sub_10358();
      }

      do
      {
        [(NSCondition *)self->_appInfoCacheCheck wait];
        v18 = [(NSMutableDictionary *)self->_appInfoCache objectForKey:appId];
      }

      while (v18 == +[NSNull null]);
    }

    v19 = [(NSMutableDictionary *)self->_appInfoCache objectForKey:appId];
    if (v19)
    {
      scrapeAppInfo = v19;
      if (v16 != v17 && os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
      {
        sub_103D8();
      }
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
      {
        sub_10458();
      }

      scrapeAppInfo = [v14 scrapeAppInfo];
    }

    [(NSCondition *)self->_appInfoCacheCheck unlock];
    self->_lastChangeOffset = v13;
    [(AAPSyncMetaDataProcessor *)self _queue_updateCache];
    if (AAPSyncInfoIsValidForItem(scrapeAppInfo, v14))
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
      {
        sub_1056C();
      }

      [change setObject:scrapeAppInfo];
      if ([v14 isMetaDataItemDelete])
      {
        [change setIsDelete:1];
      }

      [change setPostAnchor:{objc_msgSend(objc_msgSend(v14, "anchor"), "stringRepresentation")}];
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        sub_104D8();
      }

      -[AAPSyncMetaDataProcessor _queue_processNextChange:afterAnchor:withInitialAnchor:](self, "_queue_processNextChange:afterAnchor:withInitialAnchor:", change, [v14 anchor], initialAnchor);
    }

    goto LABEL_42;
  }

LABEL_23:
  v21 = os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG);
  if (anchor == initialAnchor)
  {
    if (v21)
    {
      sub_10684();
    }
  }

  else if (v21)
  {
    sub_105F0();
  }

  [change setObject:0];
  [change setPostAnchor:{objc_msgSend(anchor, "stringRepresentation")}];
LABEL_42:
  [v9 drain];
}

- (void)_queue_updateCache
{
  v3 = [(NSArray *)self->_metaData count];
  v4 = [[NSMutableDictionary alloc] initWithCapacity:2];
  [(NSCondition *)self->_appInfoCacheCheck lock];
  lastChangeOffset = self->_lastChangeOffset;
  if (lastChangeOffset == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = lastChangeOffset + 1;
  }

  v7 = v6 + 2;
  if (v6 + 2 >= v3)
  {
    v7 = v3;
  }

  self->_appInfoCacheStart = v6;
  for (self->_appInfoCacheEnd = v7; v6 < self->_appInfoCacheEnd; ++v6)
  {
    v8 = [(NSArray *)self->_metaData objectAtIndex:v6];
    appId = [v8 appId];
    v10 = [(NSMutableDictionary *)self->_appInfoCache objectForKey:appId];
    if (v10)
    {
      [(NSMutableDictionary *)v4 setObject:v10 forKey:appId];
    }

    else
    {
      [(NSMutableDictionary *)v4 setObject:+[NSNull forKey:"null"], appId];
      global_queue = dispatch_get_global_queue(0, 0);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_4E98;
      v12[3] = &unk_20908;
      v12[4] = v8;
      v12[5] = self;
      v12[6] = appId;
      v12[7] = v6;
      dispatch_async(global_queue, v12);
    }
  }

  self->_appInfoCache = v4;
  [(NSCondition *)self->_appInfoCacheCheck unlock];
}

@end