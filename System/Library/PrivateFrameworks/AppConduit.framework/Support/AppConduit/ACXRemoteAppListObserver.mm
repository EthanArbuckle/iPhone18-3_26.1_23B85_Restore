@interface ACXRemoteAppListObserver
- (ACXRemoteAppListObserver)initWithObserver:(id)observer queue:(id)queue;
- (ACXRemoteAppListObserver)observer;
- (BOOL)isEqual:(id)equal;
@end

@implementation ACXRemoteAppListObserver

- (ACXRemoteAppListObserver)initWithObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = ACXRemoteAppListObserver;
  v8 = [(ACXRemoteAppListObserver *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, observerCopy);
    objc_storeStrong(&v9->_queue, queue);
    observer = [(ACXRemoteAppListObserver *)v9 observer];
    queue = [(ACXRemoteAppListObserver *)v9 queue];
    v9->_hashValue = queue ^ observer;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    observer = [v5 observer];
    observer2 = [(ACXRemoteAppListObserver *)self observer];

    if (observer == observer2)
    {
      queue = [v5 queue];
      queue2 = [(ACXRemoteAppListObserver *)self queue];
      v8 = queue == queue2;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (ACXRemoteAppListObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end