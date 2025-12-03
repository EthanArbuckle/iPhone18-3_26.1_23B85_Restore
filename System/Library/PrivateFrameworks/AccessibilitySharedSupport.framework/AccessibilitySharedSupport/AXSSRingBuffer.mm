@interface AXSSRingBuffer
- (AXSSRingBuffer)initWithSize:(int64_t)size;
- (id)description;
- (id)objectAtIndex:(int64_t)index;
- (int64_t)addObject:(id)object;
- (int64_t)currentFilledSize;
- (void)clear;
@end

@implementation AXSSRingBuffer

- (AXSSRingBuffer)initWithSize:(int64_t)size
{
  v11.receiver = self;
  v11.super_class = AXSSRingBuffer;
  v4 = [(AXSSRingBuffer *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_size = size;
    v6 = objc_opt_new();
    storage = v5->_storage;
    v5->_storage = v6;

    v5->_lastEntryIndex = -1;
    v8 = objc_opt_new();
    lock = v5->_lock;
    v5->_lock = v8;
  }

  return v5;
}

- (int64_t)addObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    lock = [(AXSSRingBuffer *)self lock];
    [lock lock];

    lastEntryIndex = [(AXSSRingBuffer *)self lastEntryIndex];
    if (lastEntryIndex + 1 < [(AXSSRingBuffer *)self size])
    {
      v7 = lastEntryIndex + 1;
    }

    else
    {
      v7 = 0;
    }

    storage = [(AXSSRingBuffer *)self storage];
    v9 = [storage count];

    storage2 = [(AXSSRingBuffer *)self storage];
    storage3 = storage2;
    if (v7 == v9)
    {
      [storage2 addObject:objectCopy];
    }

    else
    {
      v12 = [storage2 count];

      if (v7 >= v12)
      {
LABEL_11:
        [(AXSSRingBuffer *)self setLastEntryIndex:v7];
        lock2 = [(AXSSRingBuffer *)self lock];
        [lock2 unlock];

        goto LABEL_12;
      }

      storage3 = [(AXSSRingBuffer *)self storage];
      [storage3 replaceObjectAtIndex:v7 withObject:objectCopy];
    }

    goto LABEL_11;
  }

  v7 = -1;
LABEL_12:

  return v7;
}

- (id)objectAtIndex:(int64_t)index
{
  lock = [(AXSSRingBuffer *)self lock];
  [lock lock];

  if (index < 0 || (-[AXSSRingBuffer storage](self, "storage"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7 <= index))
  {
    v9 = 0;
  }

  else
  {
    storage = [(AXSSRingBuffer *)self storage];
    v9 = [storage objectAtIndexedSubscript:index];
  }

  lock2 = [(AXSSRingBuffer *)self lock];
  [lock2 unlock];

  return v9;
}

- (int64_t)currentFilledSize
{
  lock = [(AXSSRingBuffer *)self lock];
  [lock lock];

  storage = [(AXSSRingBuffer *)self storage];
  v5 = [storage count];

  lock2 = [(AXSSRingBuffer *)self lock];
  [lock2 unlock];

  return v5;
}

- (void)clear
{
  lock = [(AXSSRingBuffer *)self lock];
  [lock lock];

  v4 = objc_opt_new();
  [(AXSSRingBuffer *)self setStorage:v4];

  [(AXSSRingBuffer *)self setLastEntryIndex:-1];
  lock2 = [(AXSSRingBuffer *)self lock];
  [lock2 unlock];
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = AXSSRingBuffer;
  v3 = [(AXSSRingBuffer *)&v13 description];
  v4 = [v3 mutableCopy];

  lock = [(AXSSRingBuffer *)self lock];
  [lock lock];

  v6 = [(AXSSRingBuffer *)self size];
  storage = [(AXSSRingBuffer *)self storage];
  v8 = [storage count];
  lastEntryIndex = [(AXSSRingBuffer *)self lastEntryIndex];
  storage2 = [(AXSSRingBuffer *)self storage];
  [v4 appendFormat:@"Size:%li filledSize:%li, latestEntry:%li, contents: %@", v6, v8, lastEntryIndex, storage2];

  lock2 = [(AXSSRingBuffer *)self lock];
  [lock2 unlock];

  return v4;
}

@end