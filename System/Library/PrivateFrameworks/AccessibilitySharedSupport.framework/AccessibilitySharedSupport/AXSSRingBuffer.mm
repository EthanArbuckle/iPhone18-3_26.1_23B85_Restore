@interface AXSSRingBuffer
- (AXSSRingBuffer)initWithSize:(int64_t)a3;
- (id)description;
- (id)objectAtIndex:(int64_t)a3;
- (int64_t)addObject:(id)a3;
- (int64_t)currentFilledSize;
- (void)clear;
@end

@implementation AXSSRingBuffer

- (AXSSRingBuffer)initWithSize:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = AXSSRingBuffer;
  v4 = [(AXSSRingBuffer *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_size = a3;
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

- (int64_t)addObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(AXSSRingBuffer *)self lock];
    [v5 lock];

    v6 = [(AXSSRingBuffer *)self lastEntryIndex];
    if (v6 + 1 < [(AXSSRingBuffer *)self size])
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(AXSSRingBuffer *)self storage];
    v9 = [v8 count];

    v10 = [(AXSSRingBuffer *)self storage];
    v11 = v10;
    if (v7 == v9)
    {
      [v10 addObject:v4];
    }

    else
    {
      v12 = [v10 count];

      if (v7 >= v12)
      {
LABEL_11:
        [(AXSSRingBuffer *)self setLastEntryIndex:v7];
        v13 = [(AXSSRingBuffer *)self lock];
        [v13 unlock];

        goto LABEL_12;
      }

      v11 = [(AXSSRingBuffer *)self storage];
      [v11 replaceObjectAtIndex:v7 withObject:v4];
    }

    goto LABEL_11;
  }

  v7 = -1;
LABEL_12:

  return v7;
}

- (id)objectAtIndex:(int64_t)a3
{
  v5 = [(AXSSRingBuffer *)self lock];
  [v5 lock];

  if (a3 < 0 || (-[AXSSRingBuffer storage](self, "storage"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7 <= a3))
  {
    v9 = 0;
  }

  else
  {
    v8 = [(AXSSRingBuffer *)self storage];
    v9 = [v8 objectAtIndexedSubscript:a3];
  }

  v10 = [(AXSSRingBuffer *)self lock];
  [v10 unlock];

  return v9;
}

- (int64_t)currentFilledSize
{
  v3 = [(AXSSRingBuffer *)self lock];
  [v3 lock];

  v4 = [(AXSSRingBuffer *)self storage];
  v5 = [v4 count];

  v6 = [(AXSSRingBuffer *)self lock];
  [v6 unlock];

  return v5;
}

- (void)clear
{
  v3 = [(AXSSRingBuffer *)self lock];
  [v3 lock];

  v4 = objc_opt_new();
  [(AXSSRingBuffer *)self setStorage:v4];

  [(AXSSRingBuffer *)self setLastEntryIndex:-1];
  v5 = [(AXSSRingBuffer *)self lock];
  [v5 unlock];
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = AXSSRingBuffer;
  v3 = [(AXSSRingBuffer *)&v13 description];
  v4 = [v3 mutableCopy];

  v5 = [(AXSSRingBuffer *)self lock];
  [v5 lock];

  v6 = [(AXSSRingBuffer *)self size];
  v7 = [(AXSSRingBuffer *)self storage];
  v8 = [v7 count];
  v9 = [(AXSSRingBuffer *)self lastEntryIndex];
  v10 = [(AXSSRingBuffer *)self storage];
  [v4 appendFormat:@"Size:%li filledSize:%li, latestEntry:%li, contents: %@", v6, v8, v9, v10];

  v11 = [(AXSSRingBuffer *)self lock];
  [v11 unlock];

  return v4;
}

@end