@interface AXMTFixedDurationQueue
- (AXMTFixedDurationQueue)initWithDuration:(double)a3;
- (void)_dequeueEntriesOlderThan:(id)a3;
- (void)enqueueValue:(id)a3 withTimestamp:(id)a4;
- (void)reset;
@end

@implementation AXMTFixedDurationQueue

- (AXMTFixedDurationQueue)initWithDuration:(double)a3
{
  v9.receiver = self;
  v9.super_class = AXMTFixedDurationQueue;
  v4 = [(AXMTQueue *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->__duration = a3;
    v6 = objc_opt_new();
    valuesWithTimestamps = v5->__valuesWithTimestamps;
    v5->__valuesWithTimestamps = v6;
  }

  return v5;
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = AXMTFixedDurationQueue;
  [(AXMTQueue *)&v4 reset];
  v3 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
  [v3 removeAllObjects];
}

- (void)enqueueValue:(id)a3 withTimestamp:(id)a4
{
  v33 = a4;
  v6 = a3;
  v7 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
    v10 = [v9 lastObject];
    v11 = [v10 timestamp];

    if ([v11 compare:v33] == 1)
    {
      v12 = objc_opt_new();
      v13 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
      v14 = [v13 lastObject];
      v15 = [v14 timestamp];

      if (v15)
      {
        v16 = [v12 stringFromDate:v15];
      }

      else
      {
        v16 = @"NULL";
      }

      v20 = [v12 stringFromDate:v33];
      [NSException raise:@"AXEFixedDurationQueueError" format:@"enqueueValue: timestamp specified (%@) was earlier than the most recent entry in the queue (%@).", v20, v16];
    }

    else
    {
      [v33 timeIntervalSinceDate:v11];
      v18 = v17;
      [(AXMTFixedDurationQueue *)self _duration];
      if (v18 > v19)
      {
        [(AXMTFixedDurationQueue *)self reset];
      }
    }
  }

  if (![(AXMTQueue *)self filled])
  {
    v21 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
    v22 = [v21 count];

    if (v22)
    {
      v23 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
      v24 = [v23 firstObject];
      v25 = [v24 timestamp];

      if (v25)
      {
        [v33 timeIntervalSinceDate:v25];
        v27 = v26;
        [(AXMTFixedDurationQueue *)self _duration];
        if (v27 > v28)
        {
          [(AXMTQueue *)self setFilled:1];
        }
      }
    }
  }

  [(AXMTFixedDurationQueue *)self _duration];
  v30 = [NSDate dateWithTimeInterval:v33 sinceDate:-v29];
  [(AXMTFixedDurationQueue *)self _dequeueEntriesOlderThan:v30];

  v31 = [_AXEFixedDurationQueueValueWithTimestamp createWithValue:v6 timestamp:v33];
  v32 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
  [v32 addObject:v31];

  [(AXMTQueue *)self _enqueue:v6];
}

- (void)_dequeueEntriesOlderThan:(id)a3
{
  v12 = a3;
  while (1)
  {
    v4 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
    v5 = [v4 count];

    if (!v5)
    {
      break;
    }

    v6 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
    v7 = [v6 firstObject];

    v8 = [v7 timestamp];
    v9 = [v8 compare:v12];

    if (v9 != -1)
    {

      break;
    }

    v10 = [(AXMTQueue *)self _dequeue];
    v11 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
    [v11 removeObjectAtIndex:0];
  }
}

@end