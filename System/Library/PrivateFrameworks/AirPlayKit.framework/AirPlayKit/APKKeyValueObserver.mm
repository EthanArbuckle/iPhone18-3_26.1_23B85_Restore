@interface APKKeyValueObserver
- (APKKeyValueObserver)initWithObservedObject:(id)object keyPath:(id)path options:(unint64_t)options changeHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation APKKeyValueObserver

- (APKKeyValueObserver)initWithObservedObject:(id)object keyPath:(id)path options:(unint64_t)options changeHandler:(id)handler
{
  objectCopy = object;
  pathCopy = path;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = APKKeyValueObserver;
  v14 = [(APKKeyValueObserver *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_observeredObject, object);
    objc_storeStrong(&v15->_keyPath, path);
    v15->_options = options;
    v16 = _Block_copy(handlerCopy);
    changeHandler = v15->_changeHandler;
    v15->_changeHandler = v16;

    [v15->_observeredObject addObserver:v15 forKeyPath:pathCopy options:options context:v15];
  }

  return v15;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  observeredObject = [(APKKeyValueObserver *)self observeredObject];

  if (observeredObject != objectCopy)
  {
    goto LABEL_2;
  }

  keyPath = [(APKKeyValueObserver *)self keyPath];
  v12 = [pathCopy isEqualToString:keyPath];

  if (context == self)
  {
    if (v12)
    {
      changeHandler = [(APKKeyValueObserver *)self changeHandler];

      if (changeHandler)
      {
        observeredObject = [(APKKeyValueObserver *)self changeHandler];
        observeredObject[2]();
LABEL_2:
      }
    }
  }
}

- (void)invalidate
{
  observeredObject = [(APKKeyValueObserver *)self observeredObject];
  keyPath = [(APKKeyValueObserver *)self keyPath];
  [observeredObject removeObserver:self forKeyPath:keyPath];

  observeredObject = self->_observeredObject;
  self->_observeredObject = 0;

  changeHandler = self->_changeHandler;
  self->_changeHandler = 0;
}

- (void)dealloc
{
  [(APKKeyValueObserver *)self invalidate];
  v3.receiver = self;
  v3.super_class = APKKeyValueObserver;
  [(APKKeyValueObserver *)&v3 dealloc];
}

@end