@interface IMMemoryCache
- (BOOL)_removeItemFromItemsDictionaryIfReady:(unint64_t)a3;
- (BOOL)hasObjectForKey:(id)a3;
- (IMMemoryCache)init;
- (id)allKeys;
- (id)delegate;
- (id)description;
- (id)objectForKey:(id)a3;
- (int64_t)numberOfCachedItems;
- (unint64_t)costForObjectWithKey:(id)a3;
- (void)_addItem:(id)a3 forKey:(id)a4;
- (void)_checkLimits;
- (void)_checkLimitsAndEvictObjects;
- (void)_removeObjectForKey:(id)a3;
- (void)_willEvict:(id)a3;
- (void)checkLimitsAndEvictObjects;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)removeObjectsForKeyWithPrefix:(id)a3;
- (void)removeObjectsForKeyWithPrefix:(id)a3 andSuffix:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4 cost:(unint64_t)a5;
@end

@implementation IMMemoryCache

- (IMMemoryCache)init
{
  v14.receiver = self;
  v14.super_class = IMMemoryCache;
  v2 = [(IMMemoryCache *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    items = v2->_items;
    v2->_items = v3;

    v5 = objc_opt_new();
    itemsArray = v2->_itemsArray;
    v2->_itemsArray = v5;

    v7 = objc_opt_new();
    queue = v2->_queue;
    v2->_queue = v7;

    [(NSOperationQueue *)v2->_queue setMaxConcurrentOperationCount:1];
    v9 = dispatch_queue_create("com.apple.itunesmobile.immemorycache", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v9;

    +[NSDate timeIntervalSinceReferenceDate];
    v2->_lastCheckTime = v11;
    v12 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(IMMemoryCache *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = IMMemoryCache;
  [(IMMemoryCache *)&v3 dealloc];
}

- (id)allKeys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_184284;
  v10 = sub_184294;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_18429C;
  v5[3] = &unk_2C7AE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)hasObjectForKey:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_184284;
  v15 = sub_184294;
  v16 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_184404;
  block[3] = &unk_2C7BC0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  LOBYTE(accessQueue) = v12[5] != 0;

  _Block_object_dispose(&v11, 8);
  return accessQueue;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_184284;
  v16 = sub_184294;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_184564;
  block[3] = &unk_2C8838;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [_IMMemoryCacheItem cacheItemWithItem:a3 key:v6 cost:0];
  [(IMMemoryCache *)self _addItem:v7 forKey:v6];
}

- (void)setObject:(id)a3 forKey:(id)a4 cost:(unint64_t)a5
{
  v8 = a4;
  v9 = [_IMMemoryCacheItem cacheItemWithItem:a3 key:v8 cost:a5];
  [(IMMemoryCache *)self _addItem:v9 forKey:v8];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    accessQueue = self->_accessQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_184878;
    v7[3] = &unk_2C7BE8;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(accessQueue, v7);
  }
}

- (void)removeAllObjects
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1848F8;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (void)removeObjectsForKeyWithPrefix:(id)a3 andSuffix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_184A18;
    block[3] = &unk_2C89F8;
    block[4] = self;
    v11 = v6;
    v12 = v8;
    dispatch_sync(accessQueue, block);
  }
}

- (void)removeObjectsForKeyWithPrefix:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    accessQueue = self->_accessQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_184BE8;
    v7[3] = &unk_2C7BE8;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(accessQueue, v7);
  }
}

- (BOOL)_removeItemFromItemsDictionaryIfReady:(unint64_t)a3
{
  v4 = [(NSMutableArray *)self->_itemsArray objectAtIndex:a3];
  if ([v4 conformsToProtocol] && (objc_msgSend(v4, "item"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "discardContentIfPossible"), v5, objc_msgSend(v4, "item"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isContentDiscarded"), v6, !v7))
  {
    v11 = 0;
  }

  else
  {
    [(IMMemoryCache *)self _willEvict:v4];
    v8 = self->_totalCost - [v4 cost];
    --self->_count;
    self->_totalCost = v8;
    items = self->_items;
    v10 = [v4 key];
    [(NSMutableDictionary *)items removeObjectForKey:v10];

    v11 = 1;
  }

  return v11;
}

- (void)_willEvict:(id)a3
{
  v6 = a3;
  v4 = [(IMMemoryCache *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 item];
    [v4 cache:self willEvictObject:v5];
  }
}

- (void)checkLimitsAndEvictObjects
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_184EDC;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (void)_checkLimitsAndEvictObjects
{
  totalCostLimit = self->_totalCostLimit;
  if (totalCostLimit && self->_totalCost > totalCostLimit)
  {
    count = self->_count;
    v5 = +[NSMutableIndexSet indexSet];
    if (count)
    {
      v6 = 0;
      v7 = count - 1;
      do
      {
        if ([(IMMemoryCache *)self _removeItemFromItemsDictionaryIfReady:v6])
        {
          [v5 addIndex:v6];
        }
      }

      while (self->_totalCost > self->_totalCostLimit && v7 != v6++);
    }

    [(NSMutableArray *)self->_itemsArray removeObjectsAtIndexes:v5];
    v9 = 20;
    do
    {
      if (self->_totalCost <= self->_totalCostLimit)
      {
        break;
      }

      if (![(NSMutableArray *)self->_itemsArray count])
      {
        break;
      }

      v10 = [(NSMutableArray *)self->_itemsArray objectAtIndex:0];
      [(IMMemoryCache *)self _willEvict:v10];
      v11 = [v10 key];
      [(IMMemoryCache *)self _removeObjectForKey:v11];

      --v9;
    }

    while (v9);
  }

  countLimit = self->_countLimit;
  if (countLimit)
  {
    v13 = self->_count;
    if (v13 > countLimit)
    {
      v17 = +[NSMutableIndexSet indexSet];
      v14 = 0;
      v15 = v13 - 1;
      do
      {
        if ([(IMMemoryCache *)self _removeItemFromItemsDictionaryIfReady:v14])
        {
          [v17 addIndex:v14];
        }
      }

      while (self->_count > self->_countLimit && v15 != v14++);
      [(NSMutableArray *)self->_itemsArray removeObjectsAtIndexes:v17];
    }
  }
}

- (void)_checkLimits
{
  +[NSDate timeIntervalSinceReferenceDate];
  if (v3 - self->_lastCheckTime > 0.4 && ((countLimit = self->_countLimit) != 0 && self->_count > countLimit || (totalCostLimit = self->_totalCostLimit) != 0 && self->_totalCost > totalCostLimit))
  {
    +[NSDate timeIntervalSinceReferenceDate];
    self->_lastCheckTime = v6;

    [(IMMemoryCache *)self _checkLimitsAndEvictObjects];
  }
}

- (unint64_t)costForObjectWithKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_185214;
  block[3] = &unk_2C8838;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (int64_t)numberOfCachedItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_185334;
  v5[3] = &unk_2C7AE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_184284;
  v10 = sub_184294;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_18545C;
  v5[3] = &unk_2C7AE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_addItem:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1855E8;
  block[3] = &unk_2C89F8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(accessQueue, block);
}

- (void)_removeObjectForKey:(id)a3
{
  v9 = a3;
  v4 = [(NSMutableDictionary *)self->_items objectForKey:?];
  v5 = v4;
  if (v4)
  {
    --self->_count;
    self->_totalCost -= [v4 cost];
    [(NSMutableDictionary *)self->_items removeObjectForKey:v9];
    itemsArray = self->_itemsArray;
    v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 timeStamp]);
    v8 = [(NSMutableArray *)itemsArray bu_indexOfObjectWithValue:v7 forKeyPath:@"timeStamp"];

    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_itemsArray removeObjectAtIndex:v8];
    }
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end