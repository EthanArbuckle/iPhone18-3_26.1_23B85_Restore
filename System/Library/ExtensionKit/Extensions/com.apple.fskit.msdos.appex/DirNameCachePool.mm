@interface DirNameCachePool
- (DirNameCachePool)init;
- (id)getAvailableEntry;
- (id)getDNCEntryByKey:(unsigned int)a3;
- (void)check;
- (void)doneWithNameCacheForDir:(id)a3;
- (void)getNameCacheForDir:(id)a3 cachedOnly:(BOOL)a4 replyHandler:(id)a5;
- (void)removeNameCacheForDir:(id)a3;
@end

@implementation DirNameCachePool

- (DirNameCachePool)init
{
  v8.receiver = self;
  v8.super_class = DirNameCachePool;
  v2 = [(DirNameCachePool *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_capacity = 5;
    v4 = [[NSMutableArray alloc] initWithCapacity:5];
    pool = v3->_pool;
    v3->_pool = v4;

    v6 = dispatch_semaphore_create(5);
    [(DirNameCachePool *)v3 setPoolSemaphore:v6];
  }

  return v3;
}

- (id)getDNCEntryByKey:(unsigned int)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_pool;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 cacheKey] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)getAvailableEntry
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = self->_pool;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v3)
  {

LABEL_15:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002E468();
    }

    v5 = 0;
    goto LABEL_18;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v16;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v15 + 1) + 8 * i);
      v9 = [v8 dnc];
      v10 = [v9 isInUse];

      if ((v10 & 1) == 0)
      {
        if (!v5 || ([v8 timestamp], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "timestamp"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v11 < v12))
        {
          v13 = v8;

          v5 = v13;
        }
      }
    }

    v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v4);

  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_18:

  return v5;
}

- (void)getNameCacheForDir:(id)a3 cachedOnly:(BOOL)a4 replyHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!dispatch_semaphore_wait(self->_poolSemaphore, 0))
  {
    v10 = self->_pool;
    objc_sync_enter(v10);
    v11 = -[DirNameCachePool getDNCEntryByKey:](self, "getDNCEntryByKey:", [v8 firstCluster]);
    v12 = v11;
    if (v11)
    {
      v13 = [(DNCPoolEntry *)v11 dnc];
      v14 = [v13 isInUse];

      if (v14)
      {
        dispatch_semaphore_signal(self->_poolSemaphore);
        v15 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          sub_10002E578(v25, [v8 firstCluster]);
        }

        v16 = fs_errorForPOSIXError();
        (*(v9 + 2))(v9, v16, 0, 0);
      }

      else
      {
        v17 = [(DNCPoolEntry *)v12 dnc];
        [v17 setIsInUse:1];

        v18 = +[NSDate now];
        [(DNCPoolEntry *)v12 setTimestamp:v18];

        v19 = [(DNCPoolEntry *)v12 dnc];
        (*(v9 + 2))(v9, 0, v19, 0);
      }
    }

    else
    {
      if (v6)
      {
        dispatch_semaphore_signal(self->_poolSemaphore);
        (*(v9 + 2))(v9, 0, 0, 0);
LABEL_19:
        objc_sync_exit(v10);

        goto LABEL_20;
      }

      if ([(NSMutableArray *)self->_pool count]>= self->_capacity)
      {
        v12 = [(DirNameCachePool *)self getAvailableEntry];
        if (!v12)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            sub_10002E5CC();
          }

          dispatch_semaphore_signal(self->_poolSemaphore);
          v12 = fs_errorForPOSIXError();
          (*(v9 + 2))(v9, v12, 0, 0);
          goto LABEL_18;
        }

        -[DNCPoolEntry setCacheKey:](v12, "setCacheKey:", [v8 firstCluster]);
        v22 = +[NSDate now];
        [(DNCPoolEntry *)v12 setTimestamp:v22];

        v20 = -[DirNameCache initWithDirEntrySize:]([DirNameCache alloc], "initWithDirEntrySize:", [v8 dirEntrySize]);
        [(DNCPoolEntry *)v12 setDnc:v20];
        v23 = [(DNCPoolEntry *)v12 dnc];
        [v23 setIsInUse:1];
      }

      else
      {
        v20 = -[DirNameCache initWithDirEntrySize:]([DirNameCache alloc], "initWithDirEntrySize:", [v8 dirEntrySize]);
        [(DirNameCache *)v20 setIsInUse:1];
        v12 = -[DNCPoolEntry initWithDNC:cacheKey:]([DNCPoolEntry alloc], "initWithDNC:cacheKey:", v20, [v8 firstCluster]);
        v21 = +[NSDate now];
        [(DNCPoolEntry *)v12 setTimestamp:v21];

        [(NSMutableArray *)self->_pool addObject:v12];
      }

      v24 = [(DNCPoolEntry *)v12 dnc];
      (*(v9 + 2))(v9, 0, v24, 1);
    }

LABEL_18:

    goto LABEL_19;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002E4F0();
  }

  (*(v9 + 2))(v9, 0, 0, 0);
LABEL_20:
}

- (void)removeNameCacheForDir:(id)a3
{
  v4 = a3;
  v5 = self->_pool;
  objc_sync_enter(v5);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_pool;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 cacheKey];
        if (v12 == [v4 firstCluster])
        {
          v13 = v11;

          v8 = v13;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);

    if (v8)
    {
      [(NSMutableArray *)self->_pool removeObject:v8];
    }
  }

  else
  {

    v8 = 0;
  }

  objc_sync_exit(v5);
}

- (void)doneWithNameCacheForDir:(id)a3
{
  v4 = a3;
  v5 = self->_pool;
  objc_sync_enter(v5);
  v6 = -[DirNameCachePool getDNCEntryByKey:](self, "getDNCEntryByKey:", [v4 firstCluster]);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 dnc];
    v9 = [v8 isInUse];

    if ((v9 & 1) == 0)
    {
      v10 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002E654(v13, [v4 firstCluster]);
      }
    }

    v11 = [v7 dnc];
    [v11 setIsInUse:0];

    dispatch_semaphore_signal(self->_poolSemaphore);
  }

  else
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002E6A8(v13, [v4 firstCluster]);
    }
  }

  objc_sync_exit(v5);
}

- (void)check
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_pool;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(*(&v10 + 1) + 8 * i);
          v8 = [v7 cacheKey];
          v9 = [v7 timestamp];
          *buf = 67109378;
          v15 = v8;
          v16 = 2112;
          v17 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Key %d, timestamp %@", buf, 0x12u);
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v18 count:16];
    }

    while (v4);
  }
}

@end