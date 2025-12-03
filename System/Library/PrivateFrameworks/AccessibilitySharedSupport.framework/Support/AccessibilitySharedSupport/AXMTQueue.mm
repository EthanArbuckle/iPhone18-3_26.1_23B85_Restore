@interface AXMTQueue
- (AXEQueueDelegate)delegate;
- (AXMTQueue)init;
- (NSArray)values;
- (id)_dequeue;
- (unint64_t)count;
- (void)_enqueue:(id)_enqueue;
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
    _dequeue = [(AXMTQueue *)self _dequeue];
  }
}

- (NSArray)values
{
  _values = [(AXMTQueue *)self _values];
  v3 = [NSArray arrayWithArray:_values];

  return v3;
}

- (unint64_t)count
{
  _values = [(AXMTQueue *)self _values];
  v3 = [_values count];

  return v3;
}

- (void)_enqueue:(id)_enqueue
{
  _enqueueCopy = _enqueue;
  _values = [(AXMTQueue *)self _values];
  [_values addObject:_enqueueCopy];

  delegate = [(AXMTQueue *)self delegate];
  v6 = delegate;
  if (delegate)
  {
    [delegate queue:self enqueuedValue:_enqueueCopy];
  }
}

- (id)_dequeue
{
  _values = [(AXMTQueue *)self _values];
  firstObject = [_values firstObject];

  _values2 = [(AXMTQueue *)self _values];
  [_values2 removeObjectAtIndex:0];

  delegate = [(AXMTQueue *)self delegate];
  v7 = delegate;
  if (delegate)
  {
    [delegate queue:self dequeuedValue:firstObject];
  }

  return firstObject;
}

- (AXEQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end