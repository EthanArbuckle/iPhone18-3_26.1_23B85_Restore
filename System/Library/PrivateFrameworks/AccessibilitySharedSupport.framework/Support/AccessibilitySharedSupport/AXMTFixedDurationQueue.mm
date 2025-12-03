@interface AXMTFixedDurationQueue
- (AXMTFixedDurationQueue)initWithDuration:(double)duration;
- (void)_dequeueEntriesOlderThan:(id)than;
- (void)enqueueValue:(id)value withTimestamp:(id)timestamp;
- (void)reset;
@end

@implementation AXMTFixedDurationQueue

- (AXMTFixedDurationQueue)initWithDuration:(double)duration
{
  v9.receiver = self;
  v9.super_class = AXMTFixedDurationQueue;
  v4 = [(AXMTQueue *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->__duration = duration;
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
  _valuesWithTimestamps = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
  [_valuesWithTimestamps removeAllObjects];
}

- (void)enqueueValue:(id)value withTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  valueCopy = value;
  _valuesWithTimestamps = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
  v8 = [_valuesWithTimestamps count];

  if (v8)
  {
    _valuesWithTimestamps2 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
    lastObject = [_valuesWithTimestamps2 lastObject];
    timestamp = [lastObject timestamp];

    if ([timestamp compare:timestampCopy] == 1)
    {
      v12 = objc_opt_new();
      _valuesWithTimestamps3 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
      lastObject2 = [_valuesWithTimestamps3 lastObject];
      timestamp2 = [lastObject2 timestamp];

      if (timestamp2)
      {
        v16 = [v12 stringFromDate:timestamp2];
      }

      else
      {
        v16 = @"NULL";
      }

      v20 = [v12 stringFromDate:timestampCopy];
      [NSException raise:@"AXEFixedDurationQueueError" format:@"enqueueValue: timestamp specified (%@) was earlier than the most recent entry in the queue (%@).", v20, v16];
    }

    else
    {
      [timestampCopy timeIntervalSinceDate:timestamp];
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
    _valuesWithTimestamps4 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
    v22 = [_valuesWithTimestamps4 count];

    if (v22)
    {
      _valuesWithTimestamps5 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
      firstObject = [_valuesWithTimestamps5 firstObject];
      timestamp3 = [firstObject timestamp];

      if (timestamp3)
      {
        [timestampCopy timeIntervalSinceDate:timestamp3];
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
  v30 = [NSDate dateWithTimeInterval:timestampCopy sinceDate:-v29];
  [(AXMTFixedDurationQueue *)self _dequeueEntriesOlderThan:v30];

  v31 = [_AXEFixedDurationQueueValueWithTimestamp createWithValue:valueCopy timestamp:timestampCopy];
  _valuesWithTimestamps6 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
  [_valuesWithTimestamps6 addObject:v31];

  [(AXMTQueue *)self _enqueue:valueCopy];
}

- (void)_dequeueEntriesOlderThan:(id)than
{
  thanCopy = than;
  while (1)
  {
    _valuesWithTimestamps = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
    v5 = [_valuesWithTimestamps count];

    if (!v5)
    {
      break;
    }

    _valuesWithTimestamps2 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
    firstObject = [_valuesWithTimestamps2 firstObject];

    timestamp = [firstObject timestamp];
    v9 = [timestamp compare:thanCopy];

    if (v9 != -1)
    {

      break;
    }

    _dequeue = [(AXMTQueue *)self _dequeue];
    _valuesWithTimestamps3 = [(AXMTFixedDurationQueue *)self _valuesWithTimestamps];
    [_valuesWithTimestamps3 removeObjectAtIndex:0];
  }
}

@end