@interface ItemCache
- (ItemCache)initWithVolume:(id)a3;
- (void)calculateKeyForItem:(id)a3 replyHandler:(id)a4;
- (void)insertItem:(id)a3 replyHandler:(id)a4;
- (void)removeItem:(id)a3;
@end

@implementation ItemCache

- (ItemCache)initWithVolume:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ItemCache;
  v6 = [(ItemCache *)&v11 init];
  if (!v6)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v7 = objc_alloc_init(NSMutableDictionary);
  itemsHash = v6->_itemsHash;
  v6->_itemsHash = v7;

  if (!v6->_itemsHash)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10003285C();
    }

    goto LABEL_6;
  }

  objc_storeStrong(&v6->_volume, a3);
  v9 = v6;
LABEL_7:

  return v9;
}

- (void)calculateKeyForItem:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v8 = [v6 entryData];
  v9 = [v8 firstEntryOffsetInDir];

  v28[3] = v9;
  v10 = [(FATVolume *)self->_volume systemInfo];
  v11 = [v10 bytesPerCluster];

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100021584;
  v21 = sub_100021594;
  v22 = 0;
  v12 = [v6 parentDir];

  if (v12)
  {
    v13 = [(FATVolume *)self->_volume fatManager];
    v14 = [v6 parentDir];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002159C;
    v15[3] = &unk_100051328;
    v15[4] = &v17;
    v15[5] = v28;
    v16 = v11;
    v15[6] = v23;
    v15[7] = &v24;
    [v13 iterateClusterChainOfItem:v14 replyHandler:v15];
  }

  if (v18[5])
  {
    v7[2](v7, 0);
  }

  else
  {
    v7[2](v7, v25[3]);
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v28, 8);
}

- (void)insertItem:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isDeleted])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10003296C();
    }

    v8 = fs_errorForPOSIXError();
    v7[2](v7, 0, v8);
  }

  else
  {
    v9 = [v6 entryData];
    v10 = [v6 volume];
    v11 = [v10 systemInfo];
    v12 = [v9 calcFirstEntryOffsetInVolume:v11];

    v13 = [[NSString alloc] initWithFormat:@"%llu", v12];
    v14 = self->_itemsHash;
    objc_sync_enter(v14);
    v15 = [(NSMutableDictionary *)self->_itemsHash objectForKey:v13];
    v8 = v15;
    if (v15)
    {
      if ([v15 isDeleted])
      {
        [(NSMutableDictionary *)self->_itemsHash setObject:v6 forKey:v13];
        v16 = v6;
      }

      else
      {
        v16 = v8;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_1000328E4();
        }
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_itemsHash setObject:v6 forKey:v13];
      v16 = 0;
    }

    objc_sync_exit(v14);

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v6;
    }

    (v7)[2](v7, v17, 0);
  }
}

- (void)removeItem:(id)a3
{
  v4 = a3;
  v5 = [v4 entryData];
  v6 = [v4 volume];
  v7 = [v6 systemInfo];
  v8 = [v5 calcFirstEntryOffsetInVolume:v7];

  v9 = [[NSString alloc] initWithFormat:@"%llu", v8];
  v10 = self->_itemsHash;
  objc_sync_enter(v10);
  v11 = [(NSMutableDictionary *)self->_itemsHash objectForKey:v9];
  if (v11)
  {
    [(NSMutableDictionary *)self->_itemsHash removeObjectForKey:v9];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1000329F4(v9);
  }

  objc_sync_exit(v10);
}

@end