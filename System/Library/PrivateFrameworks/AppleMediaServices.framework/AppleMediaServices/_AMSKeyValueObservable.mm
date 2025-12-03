@interface _AMSKeyValueObservable
- (BOOL)cancel;
- (BOOL)sendCompletion;
- (NSObject)object;
- (_AMSKeyValueObservable)initWithObject:(id)object keyPath:(id)path options:(unint64_t)options;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _AMSKeyValueObservable

- (_AMSKeyValueObservable)initWithObject:(id)object keyPath:(id)path options:(unint64_t)options
{
  objectCopy = object;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = _AMSKeyValueObservable;
  v10 = [(AMSObservable *)&v17 initWithObserver:0];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    context = v10->_context;
    v10->_context = v11;

    v13 = [pathCopy copy];
    keyPath = v10->_keyPath;
    v10->_keyPath = v13;

    v15 = objc_storeWeak(&v10->_object, objectCopy);
    [objectCopy addObserver:v10 forKeyPath:v10->_keyPath options:options context:v10->_context];
  }

  return v10;
}

- (BOOL)cancel
{
  v8.receiver = self;
  v8.super_class = _AMSKeyValueObservable;
  cancel = [(AMSObservable *)&v8 cancel];
  if (cancel)
  {
    object = [(_AMSKeyValueObservable *)self object];
    keyPath = [(_AMSKeyValueObservable *)self keyPath];
    context = [(_AMSKeyValueObservable *)self context];
    [object removeObserver:self forKeyPath:keyPath context:context];
  }

  return cancel;
}

- (BOOL)sendCompletion
{
  v8.receiver = self;
  v8.super_class = _AMSKeyValueObservable;
  sendCompletion = [(AMSObservable *)&v8 sendCompletion];
  if (sendCompletion)
  {
    object = [(_AMSKeyValueObservable *)self object];
    keyPath = [(_AMSKeyValueObservable *)self keyPath];
    context = [(_AMSKeyValueObservable *)self context];
    [object removeObserver:self forKeyPath:keyPath context:context];
  }

  return sendCompletion;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  context = [(_AMSKeyValueObservable *)self context];

  if (context == context)
  {
    [(AMSObservable *)self sendResult:changeCopy];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _AMSKeyValueObservable;
    [(_AMSKeyValueObservable *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end