@interface MPKeyValueObserver
- (MPKeyValueObserver)initWithObject:(id)object keyPath:(id)path options:(unint64_t)options handler:(id)handler;
- (id)object;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation MPKeyValueObserver

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (MPKeyValueObserverContext == context)
  {
    WeakRetained = objc_loadWeakRetained(&self->_object);
    v14 = WeakRetained;
    if (WeakRetained == objectCopy)
    {
      v15 = [pathCopy isEqualToString:self->_keyPath];

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
    [(MPKeyValueObserver *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
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

- (MPKeyValueObserver)initWithObject:(id)object keyPath:(id)path options:(unint64_t)options handler:(id)handler
{
  objectCopy = object;
  pathCopy = path;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = MPKeyValueObserver;
  v13 = [(MPKeyValueObserver *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_object, objectCopy);
    v15 = [pathCopy copy];
    keyPath = v14->_keyPath;
    v14->_keyPath = v15;

    v17 = _Block_copy(handlerCopy);
    handler = v14->_handler;
    v14->_handler = v17;

    [objectCopy addObserver:v14 forKeyPath:pathCopy options:options context:MPKeyValueObserverContext];
  }

  return v14;
}

@end