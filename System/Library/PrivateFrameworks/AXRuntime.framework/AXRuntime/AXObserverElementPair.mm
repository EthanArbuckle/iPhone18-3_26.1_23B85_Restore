@interface AXObserverElementPair
- (AXObserverElementPair)initWithObserver:(id)observer;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation AXObserverElementPair

- (AXObserverElementPair)initWithObserver:(id)observer
{
  observerCopy = observer;
  v8.receiver = self;
  v8.super_class = AXObserverElementPair;
  v5 = [(AXObserverElementPair *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AXObserverElementPair *)v5 setObserver:observerCopy];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    observer = [equalCopy observer];
    observer2 = [(AXObserverElementPair *)self observer];
    v7 = [observer isEqual:observer2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  observer = [(AXObserverElementPair *)self observer];
  v4 = [v2 stringWithFormat:@"Pair (%@) ", observer];

  return v4;
}

@end