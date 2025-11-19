@interface MPKeyValueObserver
- (MPKeyValueObserver)initWithObject:(id)a3 keyPath:(id)a4 options:(unint64_t)a5 handler:(id)a6;
- (id)object;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation MPKeyValueObserver

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (MPKeyValueObserverContext == a6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_object);
    v14 = WeakRetained;
    if (WeakRetained == v11)
    {
      v15 = [v10 isEqualToString:self->_keyPath];

      if (v15)
      {
        (*(self->_handler + 2))();
      }
    }

    else
    {
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = MPKeyValueObserver;
    [(MPKeyValueObserver *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_object);
  [WeakRetained removeObserver:self forKeyPath:self->_keyPath context:MPKeyValueObserverContext];

  v4.receiver = self;
  v4.super_class = MPKeyValueObserver;
  [(MPKeyValueObserver *)&v4 dealloc];
}

- (MPKeyValueObserver)initWithObject:(id)a3 keyPath:(id)a4 options:(unint64_t)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = MPKeyValueObserver;
  v13 = [(MPKeyValueObserver *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_object, v10);
    v15 = [v11 copy];
    keyPath = v14->_keyPath;
    v14->_keyPath = v15;

    v17 = _Block_copy(v12);
    handler = v14->_handler;
    v14->_handler = v17;

    [v10 addObserver:v14 forKeyPath:v11 options:a5 context:MPKeyValueObserverContext];
  }

  return v14;
}

@end