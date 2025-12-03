@interface ItemCache
- (ItemCache)initWithVolume:(id)volume;
- (void)calculateKeyForItem:(id)item replyHandler:(id)handler;
- (void)insertItem:(id)item replyHandler:(id)handler;
- (void)removeItem:(id)item;
@end

@implementation ItemCache

- (ItemCache)initWithVolume:(id)volume
{
  volumeCopy = volume;
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

  objc_storeStrong(&v6->_volume, volume);
  v9 = v6;
LABEL_7:

  return v9;
}

- (void)calculateKeyForItem:(id)item replyHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  entryData = [itemCopy entryData];
  firstEntryOffsetInDir = [entryData firstEntryOffsetInDir];

  v28[3] = firstEntryOffsetInDir;
  systemInfo = [(FATVolume *)self->_volume systemInfo];
  bytesPerCluster = [systemInfo bytesPerCluster];

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
  parentDir = [itemCopy parentDir];

  if (parentDir)
  {
    fatManager = [(FATVolume *)self->_volume fatManager];
    parentDir2 = [itemCopy parentDir];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002159C;
    v15[3] = &unk_100051328;
    v15[4] = &v17;
    v15[5] = v28;
    v16 = bytesPerCluster;
    v15[6] = v23;
    v15[7] = &v24;
    [fatManager iterateClusterChainOfItem:parentDir2 replyHandler:v15];
  }

  if (v18[5])
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    handlerCopy[2](handlerCopy, v25[3]);
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v28, 8);
}

- (void)insertItem:(id)item replyHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  if ([itemCopy isDeleted])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10003296C();
    }

    v8 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, 0, v8);
  }

  else
  {
    entryData = [itemCopy entryData];
    volume = [itemCopy volume];
    systemInfo = [volume systemInfo];
    v12 = [entryData calcFirstEntryOffsetInVolume:systemInfo];

    v13 = [[NSString alloc] initWithFormat:@"%llu", v12];
    v14 = self->_itemsHash;
    objc_sync_enter(v14);
    v15 = [(NSMutableDictionary *)self->_itemsHash objectForKey:v13];
    v8 = v15;
    if (v15)
    {
      if ([v15 isDeleted])
      {
        [(NSMutableDictionary *)self->_itemsHash setObject:itemCopy forKey:v13];
        v16 = itemCopy;
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
      [(NSMutableDictionary *)self->_itemsHash setObject:itemCopy forKey:v13];
      v16 = 0;
    }

    objc_sync_exit(v14);

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = itemCopy;
    }

    (handlerCopy)[2](handlerCopy, v17, 0);
  }
}

- (void)removeItem:(id)item
{
  itemCopy = item;
  entryData = [itemCopy entryData];
  volume = [itemCopy volume];
  systemInfo = [volume systemInfo];
  v8 = [entryData calcFirstEntryOffsetInVolume:systemInfo];

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