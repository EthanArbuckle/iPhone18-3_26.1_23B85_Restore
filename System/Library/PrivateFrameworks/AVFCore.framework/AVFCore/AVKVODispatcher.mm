@interface AVKVODispatcher
+ (id)sharedKVODispatcher;
- (id)startObservingObject:(id)object weakObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context;
- (id)startObservingObject:(id)object weakObserver:(id)observer forTwoPartKeyPath:(id)path options:(unint64_t)options context:(void *)context;
- (id)startObservingValueAtKeyPath:(id)path ofObject:(id)object options:(unint64_t)options usingBlock:(id)block;
- (id)startObservingValueAtKeyPath:(id)path withoutKeepingAliveObservedObject:(id)object options:(unint64_t)options usingBlock:(id)block;
- (id)startObservingValueAtTwoPartKeyPath:(id)path ofObject:(id)object options:(unint64_t)options usingBlock:(id)block;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation AVKVODispatcher

+ (id)sharedKVODispatcher
{
  if (sharedKVODispatcher_sSharedRegistryOnce != -1)
  {
    +[AVKVODispatcher sharedKVODispatcher];
  }

  return sharedKVODispatcher_sSharedRegistry;
}

AVKVODispatcher *__38__AVKVODispatcher_sharedKVODispatcher__block_invoke()
{
  result = [[AVKVODispatcher alloc] initWithDescriptionOfHowAllObservedPropertyChangesAreSerializedWithDispatcherDeallocation:@"This instance is never deallocated"];
  sharedKVODispatcher_sSharedRegistry = result;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVKVODispatcher;
  [(AVKVODispatcher *)&v3 dealloc];
}

- (id)startObservingValueAtKeyPath:(id)path ofObject:(id)object options:(unint64_t)options usingBlock:(id)block
{
  if (!object)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = "observedObject != nil";
    goto LABEL_10;
  }

  if (!path)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = "keyPath != nil";
    goto LABEL_10;
  }

  if (!block)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = "block != nil";
LABEL_10:
    v13 = [v10 exceptionWithName:v11 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", object, options, block, v6, v7, v12), 0}];
    objc_exception_throw(v13);
  }

  v8 = [[AVClientBlockKVONotifier alloc] initWithCallbackContextRegistry:self->_callbackContextRegistry observer:self object:object keyPath:path options:options block:block];
  [(AVClientBlockKVONotifier *)v8 start];

  return v8;
}

- (id)startObservingValueAtTwoPartKeyPath:(id)path ofObject:(id)object options:(unint64_t)options usingBlock:(id)block
{
  if (!object)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = "observedObject != nil";
    goto LABEL_10;
  }

  if (!path)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = "keyPath != nil";
    goto LABEL_10;
  }

  if (!block)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = "block != nil";
LABEL_10:
    v19 = [v16 exceptionWithName:v17 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", object, options, block, v6, v7, v18), 0}];
    objc_exception_throw(v19);
  }

  v12 = [[AVKeyPathFlattener alloc] initForObservingValueAtKeyPath:path onObject:object];
  v13 = [[AVClientBlockKVONotifier alloc] initWithCallbackContextRegistry:self->_callbackContextRegistry observer:self object:v12 keyPath:@"dependentProperty" options:options block:block];
  [(AVClientBlockKVONotifier *)v13 start];
  v14 = [[AVKeyPathFlattenerKVOIntrospectionShim alloc] initWithObservedObject:object realNotifier:v13];

  return v14;
}

- (id)startObservingValueAtKeyPath:(id)path withoutKeepingAliveObservedObject:(id)object options:(unint64_t)options usingBlock:(id)block
{
  if (!object)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = "observedObject != nil";
    goto LABEL_10;
  }

  if (!path)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = "keyPath != nil";
    goto LABEL_10;
  }

  if (!block)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = "block != nil";
LABEL_10:
    v13 = [v10 exceptionWithName:v11 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", object, options, block, v6, v7, v12), 0}];
    objc_exception_throw(v13);
  }

  v8 = [[AVWeaklyObservedObjectClientBlockKVONotifier alloc] initWithCallbackContextRegistry:self->_callbackContextRegistry observer:self object:object keyPath:path options:options block:block];
  [(AVWeaklyObservedObjectClientBlockKVONotifier *)v8 start];

  return v8;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  object = [(AVCallbackContextRegistry *)self->_callbackContextRegistry callbackContextForToken:context, object];
  if (object)
  {

    [object callbackDidFireWithChangeDictionary:change];
  }
}

- (id)startObservingObject:(id)object weakObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __102__AVKVODispatcher_LegacyCallbackMethod__startObservingObject_weakObserver_forKeyPath_options_context___block_invoke;
  v8[3] = &unk_1E7465E08;
  v8[4] = path;
  v8[5] = object;
  v8[6] = context;
  return [(AVKVODispatcher *)self startObservingValueAtKeyPath:path ofObject:object options:options usingBlock:[AVObservationBlockFactory observationBlockForWeakObserver:observer passedToBlock:v8]];
}

- (id)startObservingObject:(id)object weakObserver:(id)observer forTwoPartKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __109__AVKVODispatcher_LegacyCallbackMethod__startObservingObject_weakObserver_forTwoPartKeyPath_options_context___block_invoke;
  v8[3] = &unk_1E7465E08;
  v8[4] = path;
  v8[5] = object;
  v8[6] = context;
  return [(AVKVODispatcher *)self startObservingValueAtTwoPartKeyPath:path ofObject:object options:options usingBlock:[AVObservationBlockFactory observationBlockForWeakObserver:observer passedToBlock:v8]];
}

uint64_t __109__AVKVODispatcher_LegacyCallbackMethod__startObservingObject_weakObserver_forTwoPartKeyPath_options_context___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(a1 + 32) keyPathString];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);

  return [a2 observeValueForKeyPath:v6 ofObject:v7 change:a3 context:v8];
}

@end