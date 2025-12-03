@interface AFKeyValueObserver
- (AFKeyValueObserver)initWithObject:(id)object keyPath:(id)path handler:(id)handler deliveryOptions:(id)options;
- (void)_handleObservedChangeWithOldValue:(id)value andNewValue:(id)newValue;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation AFKeyValueObserver

- (void)_handleObservedChangeWithOldValue:(id)value andNewValue:(id)newValue
{
  v4 = atomic_load(&self->_isInvalid);
  if ((v4 & 1) == 0)
  {
    (*(self->_handler + 2))();
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (AFKeyValueObservingContext == context)
  {
    v14 = atomic_load(&self->_isInvalid);
    if ((v14 & 1) == 0)
    {
      v15 = [changeCopy objectForKey:*MEMORY[0x1E696A500]];
      v16 = [v13 objectForKey:*MEMORY[0x1E696A4F0]];
      queue = [(AFKeyValueObservingDeliveryOptions *)self->_deliveryOptions queue];
      if (queue)
      {
        objc_initWeak(&location, self);
        qosClass = [(AFKeyValueObservingDeliveryOptions *)self->_deliveryOptions qosClass];
        if (qosClass)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __69__AFKeyValueObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
          block[3] = &unk_1E7347500;
          v19 = &v31;
          objc_copyWeak(&v31, &location);
          v23 = &v29;
          v29 = v15;
          v22 = &v30;
          v30 = v16;
          v20 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qosClass, 0, block);
          v21 = MEMORY[0x193AFB7B0]();
        }

        else
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __69__AFKeyValueObserver_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
          v24[3] = &unk_1E7347500;
          v19 = &v27;
          objc_copyWeak(&v27, &location);
          v23 = &v25;
          v25 = v15;
          v22 = &v26;
          v26 = v16;
          v21 = MEMORY[0x193AFB7B0](v24);
        }

        if ([(AFKeyValueObservingDeliveryOptions *)self->_deliveryOptions asynchronous])
        {
          dispatch_async(queue, v21);
        }

        else
        {
          dispatch_sync(queue, v21);
        }

        objc_destroyWeak(v19);
        objc_destroyWeak(&location);
      }

      else
      {
        [(AFKeyValueObserver *)self _handleObservedChangeWithOldValue:v15 andNewValue:v16];
      }
    }
  }

  else
  {
    v33.receiver = self;
    v33.super_class = AFKeyValueObserver;
    [(AFKeyValueObserver *)&v33 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

void __69__AFKeyValueObserver_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleObservedChangeWithOldValue:*(a1 + 32) andNewValue:*(a1 + 40)];
}

void __69__AFKeyValueObserver_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleObservedChangeWithOldValue:*(a1 + 32) andNewValue:*(a1 + 40)];
}

- (AFKeyValueObserver)initWithObject:(id)object keyPath:(id)path handler:(id)handler deliveryOptions:(id)options
{
  objectCopy = object;
  pathCopy = path;
  handlerCopy = handler;
  optionsCopy = options;
  v32.receiver = self;
  v32.super_class = AFKeyValueObserver;
  v15 = [(AFKeyValueObserver *)&v32 init];
  if (v15)
  {
    if (!objectCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v15 file:@"AFKeyValueObserving.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"object != nil"}];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (handlerCopy)
      {
LABEL_6:
        atomic_store(0, &v15->_isInvalid);
        v16 = [handlerCopy copy];
        handler = v15->_handler;
        v15->_handler = v16;

        objc_storeStrong(&v15->_deliveryOptions, options);
        objc_initWeak(&location, objectCopy);
        v18 = [AFOneArgumentSafetyBlock alloc];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __69__AFKeyValueObserver_initWithObject_keyPath_handler_deliveryOptions___block_invoke;
        v27[3] = &unk_1E73474D8;
        v30[1] = a2;
        v19 = v15;
        v28 = v19;
        objc_copyWeak(v30, &location);
        v20 = pathCopy;
        v29 = v20;
        v21 = [(AFOneArgumentSafetyBlock *)v18 initWithBlock:v27 defaultValue:0];
        invalidation = v19->_invalidation;
        v19->_invalidation = v21;

        [objectCopy addObserver:v19 forKeyPath:v20 options:7 context:AFKeyValueObservingContext];
        objc_destroyWeak(v30);

        objc_destroyWeak(&location);
        goto LABEL_7;
      }
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v15 file:@"AFKeyValueObserving.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"[keyPath isKindOfClass:[NSString class]]"}];

      if (handlerCopy)
      {
        goto LABEL_6;
      }
    }

    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:v15 file:@"AFKeyValueObserving.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"handler != nil"}];

    goto LABEL_6;
  }

LABEL_7:

  return v15;
}

void __69__AFKeyValueObserver_initWithObject_keyPath_handler_deliveryOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"AFKeyValueObserving.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"observer != nil"}];

    v3 = 0;
  }

  atomic_store(1u, v3 + 8);
  v4 = atomic_load(v3 + 8);
  if ((v4 & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"AFKeyValueObserving.m" lineNumber:73 description:{@"AFKeyValueObserver %p is expected to be invalid.", v9}];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained removeObserver:v9 forKeyPath:*(a1 + 40) context:AFKeyValueObservingContext];
  }
}

- (void)dealloc
{
  [(AFKeyValueObserver *)self invalidate];
  v3.receiver = self;
  v3.super_class = AFKeyValueObserver;
  [(AFKeyValueObserver *)&v3 dealloc];
}

@end