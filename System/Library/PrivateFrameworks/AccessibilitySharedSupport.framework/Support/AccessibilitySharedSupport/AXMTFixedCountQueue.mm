@interface AXMTFixedCountQueue
- (AXMTFixedCountQueue)initWithMaxCount:(unint64_t)count;
- (void)enqueueValue:(id)value;
@end

@implementation AXMTFixedCountQueue

- (AXMTFixedCountQueue)initWithMaxCount:(unint64_t)count
{
  v5.receiver = self;
  v5.super_class = AXMTFixedCountQueue;
  result = [(AXMTQueue *)&v5 init];
  if (result)
  {
    result->_maxCount = count;
  }

  return result;
}

- (void)enqueueValue:(id)value
{
  valueCopy = value;
  v4 = [(AXMTQueue *)self count];
  if (v4 == [(AXMTFixedCountQueue *)self maxCount])
  {
    _dequeue = [(AXMTQueue *)self _dequeue];
  }

  [(AXMTQueue *)self _enqueue:valueCopy];
  v6 = [(AXMTQueue *)self count];
  if (v6 == [(AXMTFixedCountQueue *)self maxCount])
  {
    [(AXMTQueue *)self setFilled:1];
  }
}

@end