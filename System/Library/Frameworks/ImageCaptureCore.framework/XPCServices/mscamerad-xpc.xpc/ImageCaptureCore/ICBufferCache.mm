@interface ICBufferCache
- (ICBufferCache)initWithFile:(id)file;
- (char)consumeBufferAtOffset:(unint64_t)offset sized:(unint64_t *)sized;
- (char)resetBufferAtSlot:(unint64_t)slot;
- (void)dealloc;
- (void)dequeueBufferAtOffset:(unint64_t)offset sized:(unint64_t *)sized buf:(char *)buf;
- (void)readQueue;
- (void)resetBufferAtOffset:(unint64_t)offset;
- (void)startReading;
- (void)stopReading;
@end

@implementation ICBufferCache

- (ICBufferCache)initWithFile:(id)file
{
  fileCopy = file;
  v26.receiver = self;
  v26.super_class = ICBufferCache;
  v5 = [(ICBufferCache *)&v26 init];
  if (v5)
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:5];
    availSlots = v5->_availSlots;
    v5->_availSlots = v6;

    v8 = 0;
    while (1)
    {
      v9 = mmap(0, 0x200000uLL, 3, 4097, -1, 0);
      v5->_bufferCache[v8] = v9;
      if (v9 == -1)
      {
        break;
      }

      v10 = v5->_availSlots;
      v11 = [NSNumber numberWithInt:v8];
      [(NSMutableArray *)v10 addObject:v11];

      if (++v8 == 5)
      {
        v5->_msFile = fileCopy;
        v5->_reading = 0;
        v12 = dispatch_semaphore_create(0);
        addSemaphore = v5->_addSemaphore;
        v5->_addSemaphore = v12;

        v14 = dispatch_queue_create("op", 0);
        opQueue = v5->_opQueue;
        v5->_opQueue = v14;

        v16 = objc_alloc_init(NSMutableDictionary);
        bufDict = v5->_bufDict;
        v5->_bufDict = v16;

        v5->_consumedOffset = -1;
        goto LABEL_6;
      }
    }

    v19 = *__error();
    __ICOSLogCreate();
    msFile = [(ICBufferCache *)v5 msFile];
    name = [msFile name];

    if ([name length] >= 0x15)
    {
      v22 = [name substringWithRange:{0, 18}];
      v23 = [v22 stringByAppendingString:@".."];

      name = v23;
    }

    v24 = [NSString stringWithFormat:@"mmap failed for slot: %d cause: %s", v8, strerror(v19)];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      [ICBufferCache initWithFile:];
    }

    v18 = 0;
  }

  else
  {
LABEL_6:
    v18 = v5;
  }

  return v18;
}

- (void)dealloc
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_availSlots;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        intValue = [*(*(&v10 + 1) + 8 * v7) intValue];
        if (intValue <= 4)
        {
          munmap(self->_bufferCache[intValue], 0x200000uLL);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  self->_msFile = 0;
  v9.receiver = self;
  v9.super_class = ICBufferCache;
  [(ICBufferCache *)&v9 dealloc];
}

- (void)startReading
{
  opQueue = self->_opQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __29__ICBufferCache_startReading__block_invoke;
  block[3] = &unk_100024778;
  block[4] = self;
  dispatch_async(opQueue, block);
}

id __29__ICBufferCache_startReading__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setReading:1];
  v2 = *(a1 + 32);

  return [v2 readQueue];
}

- (void)stopReading
{
  opQueue = self->_opQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __28__ICBufferCache_stopReading__block_invoke;
  block[3] = &unk_100024778;
  block[4] = self;
  dispatch_async(opQueue, block);
}

- (void)readQueue
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __26__ICBufferCache_readQueue__block_invoke;
  v4[3] = &unk_100024778;
  v4[4] = self;
  v3 = objc_retainBlock(v4);
  dispatch_async(self->_opQueue, v3);
}

void __26__ICBufferCache_readQueue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) readOffset];
  v29 = [*(a1 + 32) msFile];
  if (v2 == [v29 size])
  {
  }

  else
  {
    v3 = [*(a1 + 32) availSlots];
    v4 = [v3 count];

    if (v4)
    {
      v5 = [*(a1 + 32) availSlots];
      v6 = [v5 firstObject];

      v7 = [*(a1 + 32) availSlots];
      [v7 removeObject:v6];

      __ICOSLogCreate();
      if (__ICLogTypeEnabled())
      {
        v8 = @"--slot";
        if ([@"--slot" length] >= 0x15)
        {
          v9 = [@"--slot" substringWithRange:{0, 18}];
          v8 = [v9 stringByAppendingString:@".."];
        }

        v10 = [*(a1 + 32) availSlots];
        v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Slots Available: %lu", [v10 count]);

        v12 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v8;
          v14 = v12;
          *buf = 136446466;
          v33 = [(__CFString *)v8 UTF8String];
          v34 = 2114;
          v35 = v11;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }
      }

      v15 = [*(a1 + 32) bufferAtSlot:{objc_msgSend(v6, "unsignedIntValue")}];
      v16 = [*(a1 + 32) msFile];
      v17 = [v16 readStream:v15 size:0x200000 offset:{objc_msgSend(*(a1 + 32), "readOffset")}];

      if (!v17)
      {
        goto LABEL_14;
      }

      v18 = [*(a1 + 32) bufDict];
      v19 = [*(a1 + 32) msFile];
      v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v19 size]);
      v21 = [v18 objectForKeyedSubscript:v20];

      if (v21)
      {
LABEL_14:
        [*(a1 + 32) setReading:0];
      }

      v30 = v6;
      v22 = [NSNumber numberWithUnsignedLongLong:v17];
      v31 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v24 = [*(a1 + 32) bufDict];
      v25 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) readOffset]);
      [v24 setObject:v23 forKeyedSubscript:v25];

      [*(a1 + 32) setReadOffset:{&v17[objc_msgSend(*(a1 + 32), "readOffset")]}];
      v26 = [*(a1 + 32) addSemaphore];
      dispatch_semaphore_signal(v26);

      v27 = [*(a1 + 32) bufDict];
      if ([v27 count] > 4)
      {
      }

      else
      {
        v28 = [*(a1 + 32) reading];

        if (v28)
        {
          [*(a1 + 32) readQueue];
        }
      }
    }
  }
}

- (void)dequeueBufferAtOffset:(unint64_t)offset sized:(unint64_t *)sized buf:(char *)buf
{
  v9 = dispatch_semaphore_create(0);
  bufDict = [(ICBufferCache *)self bufDict];
  v11 = [bufDict count];

  if (!v11)
  {
    addSemaphore = [(ICBufferCache *)self addSemaphore];
    dispatch_semaphore_wait(addSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  opQueue = self->_opQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__ICBufferCache_dequeueBufferAtOffset_sized_buf___block_invoke;
  block[3] = &unk_100024828;
  offsetCopy = offset;
  sizedCopy = sized;
  bufCopy = buf;
  block[4] = self;
  v16 = v9;
  v14 = v9;
  dispatch_async(opQueue, block);
  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
}

void __49__ICBufferCache_dequeueBufferAtOffset_sized_buf___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bufDict];
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [v4 allKeys];
  v6 = [v5 firstObject];
  v7 = [v4 objectForKeyedSubscript:v6];
  __ICOSLogCreate();
  if (__ICLogTypeEnabled())
  {
    v8 = @"++deq";
    if ([@"++deq" length] >= 0x15)
    {
      v9 = [@"++deq" substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Dequeing Slot: %u", [v6 unsignedIntValue]);
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v8;
      v13 = v11;
      *buf = 136446466;
      v26 = [(__CFString *)v8 UTF8String];
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  if (v7)
  {
    **(a1 + 56) = [v7 length];
    if ([v7 length])
    {
      memcpy(*(a1 + 64), [v7 bytes], objc_msgSend(v7, "length"));
    }
  }

  v14 = [*(a1 + 32) bufDict];
  v15 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  [v14 removeObjectForKey:v15];

  v16 = [*(a1 + 32) availSlots];
  [v16 addObject:v6];

  __ICOSLogCreate();
  if (__ICLogTypeEnabled())
  {
    v17 = @"++slot";
    if ([@"++slot" length] >= 0x15)
    {
      v18 = [@"++slot" substringWithRange:{0, 18}];
      v17 = [v18 stringByAppendingString:@".."];
    }

    v19 = [*(a1 + 32) availSlots];
    v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Slots Available: %lu", [v19 count]);

    v21 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v17;
      v23 = v21;
      v24 = [(__CFString *)v17 UTF8String];
      *buf = 136446466;
      v26 = v24;
      v27 = 2114;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  [*(a1 + 32) readQueue];
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)resetBufferAtOffset:(unint64_t)offset
{
  opQueue = self->_opQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __37__ICBufferCache_resetBufferAtOffset___block_invoke;
  v4[3] = &unk_100024850;
  v4[4] = self;
  v4[5] = offset;
  dispatch_async(opQueue, v4);
}

void __37__ICBufferCache_resetBufferAtOffset___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bufDict];
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [v4 allKeys];
  v6 = [v5 firstObject];
  if ([*(a1 + 32) resetBufferAtSlot:{objc_msgSend(v6, "intValue")}] == -1)
  {
    __ICOSLogCreate();
    v10 = [*(a1 + 32) msFile];
    v11 = [v10 name];

    if ([v11 length] >= 0x15)
    {
      v12 = [v11 substringWithRange:{0, 18}];
      v13 = [v12 stringByAppendingString:@".."];

      v11 = v13;
    }

    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"mmap failed for slot: %d", [v6 intValue]);
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      [ICBufferCache initWithFile:];
    }
  }

  else
  {
    v7 = [*(a1 + 32) bufDict];
    v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
    [v7 removeObjectForKey:v8];

    v9 = [*(a1 + 32) availSlots];
    [v9 addObject:v6];

    [*(a1 + 32) readQueue];
  }
}

- (char)resetBufferAtSlot:(unint64_t)slot
{
  result = mmap(0, 0x200000uLL, 3, 4097, -1, 0);
  self->_bufferCache[slot] = result;
  return result;
}

- (char)consumeBufferAtOffset:(unint64_t)offset sized:(unint64_t *)sized
{
  if (self->_consumedOffset != -1)
  {
    [(ICBufferCache *)self resetBufferAtOffset:?];
  }

  v7 = dispatch_semaphore_create(0);
  bufDict = [(ICBufferCache *)self bufDict];
  v9 = [bufDict count];

  if (!v9)
  {
    addSemaphore = [(ICBufferCache *)self addSemaphore];
    dispatch_semaphore_wait(addSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  opQueue = self->_opQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __45__ICBufferCache_consumeBufferAtOffset_sized___block_invoke;
  block[3] = &unk_100024878;
  offsetCopy = offset;
  sizedCopy = sized;
  v16 = v7;
  v17 = &v20;
  block[4] = self;
  v12 = v7;
  dispatch_async(opQueue, block);
  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v13 = v21[3];

  _Block_object_dispose(&v20, 8);
  return v13;
}

void __45__ICBufferCache_consumeBufferAtOffset_sized___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bufDict];
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  v9 = [v2 objectForKeyedSubscript:v3];

  v4 = [v9 allKeys];
  v5 = [v4 firstObject];
  v6 = [v9 objectForKeyedSubscript:v5];
  v7 = [*(a1 + 32) bufferAtSlot:{objc_msgSend(v5, "unsignedIntValue")}];
  if (v7)
  {
    v8 = v7;
    **(a1 + 64) = [v6 unsignedLongValue];
    *(*(*(a1 + 48) + 8) + 24) = v8;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)initWithFile:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = v0;
  [v1 UTF8String];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&_mh_execute_header, v5, v6, "%{public}20s ! %{public}@", v7, v8, v9, v10, v11);
}

@end