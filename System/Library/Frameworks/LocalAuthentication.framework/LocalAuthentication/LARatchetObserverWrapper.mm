@interface LARatchetObserverWrapper
- (BOOL)isEqual:(id)equal;
- (LARatchetObserver)observer;
- (LARatchetObserverWrapper)initWithObserver:(id)observer;
- (unint64_t)hash;
- (void)ratchetStateDidChange:(id)change;
@end

@implementation LARatchetObserverWrapper

- (LARatchetObserverWrapper)initWithObserver:(id)observer
{
  observerCopy = observer;
  v8.receiver = self;
  v8.super_class = LARatchetObserverWrapper;
  v5 = [(LARatchetObserverWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observer, observerCopy);
  }

  return v6;
}

- (void)ratchetStateDidChange:(id)change
{
  changeCopy = change;
  v6 = [[LARatchetState alloc] initWithState:changeCopy];

  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained ratchetStateDidChange:v6];
}

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v3 = [WeakRetained hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    observer = [v5 observer];

    v8 = [WeakRetained isEqual:observer];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (LARatchetObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end