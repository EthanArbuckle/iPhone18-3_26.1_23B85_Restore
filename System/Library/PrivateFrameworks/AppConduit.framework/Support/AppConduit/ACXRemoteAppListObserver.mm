@interface ACXRemoteAppListObserver
- (ACXRemoteAppListObserver)initWithObserver:(id)a3 queue:(id)a4;
- (ACXRemoteAppListObserver)observer;
- (BOOL)isEqual:(id)a3;
@end

@implementation ACXRemoteAppListObserver

- (ACXRemoteAppListObserver)initWithObserver:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ACXRemoteAppListObserver;
  v8 = [(ACXRemoteAppListObserver *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, v6);
    objc_storeStrong(&v9->_queue, a4);
    v10 = [(ACXRemoteAppListObserver *)v9 observer];
    v11 = [(ACXRemoteAppListObserver *)v9 queue];
    v9->_hashValue = v11 ^ v10;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 observer];
    v7 = [(ACXRemoteAppListObserver *)self observer];

    if (v6 == v7)
    {
      v9 = [v5 queue];
      v10 = [(ACXRemoteAppListObserver *)self queue];
      v8 = v9 == v10;
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