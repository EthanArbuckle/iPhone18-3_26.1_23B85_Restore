@interface LARatchetObserverWrapper
- (BOOL)isEqual:(id)a3;
- (LARatchetObserver)observer;
- (LARatchetObserverWrapper)initWithObserver:(id)a3;
- (unint64_t)hash;
- (void)ratchetStateDidChange:(id)a3;
@end

@implementation LARatchetObserverWrapper

- (LARatchetObserverWrapper)initWithObserver:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LARatchetObserverWrapper;
  v5 = [(LARatchetObserverWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observer, v4);
  }

  return v6;
}

- (void)ratchetStateDidChange:(id)a3
{
  v4 = a3;
  v6 = [[LARatchetState alloc] initWithState:v4];

  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained ratchetStateDidChange:v6];
}

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v3 = [WeakRetained hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    v7 = [v5 observer];

    v8 = [WeakRetained isEqual:v7];
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