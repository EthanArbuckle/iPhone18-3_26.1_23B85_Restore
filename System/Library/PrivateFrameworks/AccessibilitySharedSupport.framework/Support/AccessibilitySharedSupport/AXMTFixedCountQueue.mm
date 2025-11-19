@interface AXMTFixedCountQueue
- (AXMTFixedCountQueue)initWithMaxCount:(unint64_t)a3;
- (void)enqueueValue:(id)a3;
@end

@implementation AXMTFixedCountQueue

- (AXMTFixedCountQueue)initWithMaxCount:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = AXMTFixedCountQueue;
  result = [(AXMTQueue *)&v5 init];
  if (result)
  {
    result->_maxCount = a3;
  }

  return result;
}

- (void)enqueueValue:(id)a3
{
  v7 = a3;
  v4 = [(AXMTQueue *)self count];
  if (v4 == [(AXMTFixedCountQueue *)self maxCount])
  {
    v5 = [(AXMTQueue *)self _dequeue];
  }

  [(AXMTQueue *)self _enqueue:v7];
  v6 = [(AXMTQueue *)self count];
  if (v6 == [(AXMTFixedCountQueue *)self maxCount])
  {
    [(AXMTQueue *)self setFilled:1];
  }
}

@end