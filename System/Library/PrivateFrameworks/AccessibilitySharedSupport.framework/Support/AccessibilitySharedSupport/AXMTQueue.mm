@interface AXMTQueue
- (AXEQueueDelegate)delegate;
- (AXMTQueue)init;
- (NSArray)values;
- (id)_dequeue;
- (unint64_t)count;
- (void)_enqueue:(id)a3;
- (void)reset;
@end

@implementation AXMTQueue

- (AXMTQueue)init
{
  v6.receiver = self;
  v6.super_class = AXMTQueue;
  v2 = [(AXMTQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    values = v2->__values;
    v2->__values = v3;
  }

  return v2;
}

- (void)reset
{
  [(AXMTQueue *)self setFilled:0];
  while ([(AXMTQueue *)self count])
  {
    v3 = [(AXMTQueue *)self _dequeue];
  }
}

- (NSArray)values
{
  v2 = [(AXMTQueue *)self _values];
  v3 = [NSArray arrayWithArray:v2];

  return v3;
}

- (unint64_t)count
{
  v2 = [(AXMTQueue *)self _values];
  v3 = [v2 count];

  return v3;
}

- (void)_enqueue:(id)a3
{
  v7 = a3;
  v4 = [(AXMTQueue *)self _values];
  [v4 addObject:v7];

  v5 = [(AXMTQueue *)self delegate];
  v6 = v5;
  if (v5)
  {
    [v5 queue:self enqueuedValue:v7];
  }
}

- (id)_dequeue
{
  v3 = [(AXMTQueue *)self _values];
  v4 = [v3 firstObject];

  v5 = [(AXMTQueue *)self _values];
  [v5 removeObjectAtIndex:0];

  v6 = [(AXMTQueue *)self delegate];
  v7 = v6;
  if (v6)
  {
    [v6 queue:self dequeuedValue:v4];
  }

  return v4;
}

- (AXEQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end