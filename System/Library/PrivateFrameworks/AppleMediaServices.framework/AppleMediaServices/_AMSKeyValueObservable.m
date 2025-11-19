@interface _AMSKeyValueObservable
- (BOOL)cancel;
- (BOOL)sendCompletion;
- (NSObject)object;
- (_AMSKeyValueObservable)initWithObject:(id)a3 keyPath:(id)a4 options:(unint64_t)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation _AMSKeyValueObservable

- (_AMSKeyValueObservable)initWithObject:(id)a3 keyPath:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = _AMSKeyValueObservable;
  v10 = [(AMSObservable *)&v17 initWithObserver:0];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    context = v10->_context;
    v10->_context = v11;

    v13 = [v9 copy];
    keyPath = v10->_keyPath;
    v10->_keyPath = v13;

    v15 = objc_storeWeak(&v10->_object, v8);
    [v8 addObserver:v10 forKeyPath:v10->_keyPath options:a5 context:v10->_context];
  }

  return v10;
}

- (BOOL)cancel
{
  v8.receiver = self;
  v8.super_class = _AMSKeyValueObservable;
  v3 = [(AMSObservable *)&v8 cancel];
  if (v3)
  {
    v4 = [(_AMSKeyValueObservable *)self object];
    v5 = [(_AMSKeyValueObservable *)self keyPath];
    v6 = [(_AMSKeyValueObservable *)self context];
    [v4 removeObserver:self forKeyPath:v5 context:v6];
  }

  return v3;
}

- (BOOL)sendCompletion
{
  v8.receiver = self;
  v8.super_class = _AMSKeyValueObservable;
  v3 = [(AMSObservable *)&v8 sendCompletion];
  if (v3)
  {
    v4 = [(_AMSKeyValueObservable *)self object];
    v5 = [(_AMSKeyValueObservable *)self keyPath];
    v6 = [(_AMSKeyValueObservable *)self context];
    [v4 removeObserver:self forKeyPath:v5 context:v6];
  }

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(_AMSKeyValueObservable *)self context];

  if (v13 == a6)
  {
    [(AMSObservable *)self sendResult:v12];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _AMSKeyValueObservable;
    [(_AMSKeyValueObservable *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end