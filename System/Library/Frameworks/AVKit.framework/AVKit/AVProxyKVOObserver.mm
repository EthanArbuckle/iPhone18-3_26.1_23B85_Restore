@interface AVProxyKVOObserver
- (AVProxyKVOObserver)initWithObservedObject:(id)object observer:(id)observer keyPaths:(id)paths retainingObservedObject:(BOOL)observedObject includeInitialValue:(BOOL)value includeChanges:(BOOL)changes changesBlock:(id)block;
- (void)_handleValueChangeForKeyPath:(id)path ofObject:(id)object oldValue:(id)value newValue:(id)newValue context:(void *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startObserving:(id)observing completion:(id)completion;
- (void)stopObserving;
@end

@implementation AVProxyKVOObserver

- (void)_handleValueChangeForKeyPath:(id)path ofObject:(id)object oldValue:(id)value newValue:(id)newValue context:(void *)context
{
  newValueCopy = newValue;
  valueCopy = value;
  objectCopy = object;
  pathCopy = path;
  changesBlock = [(AVProxyKVOObserver *)self changesBlock];
  token = [(AVProxyKVOObserver *)self token];
  changesBlock[2](changesBlock, objectCopy, pathCopy, newValueCopy, valueCopy, token);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  pathCopy = path;
  kdebug_trace();
  v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A500]];
  v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  [(AVProxyKVOObserver *)self _handleValueChangeForKeyPath:pathCopy ofObject:objectCopy oldValue:v14 newValue:v13 context:context];
  kdebug_trace();
}

- (void)stopObserving
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  keyPaths = [(AVProxyKVOObserver *)self keyPaths];
  v4 = [keyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(keyPaths);
        }

        [self->_unsafeUnretainedObservedObject removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) context:AVObservationControllerObservationContext];
      }

      while (v5 != v7);
      v5 = [keyPaths countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  retainedObservedObject = self->_retainedObservedObject;
  self->_retainedObservedObject = 0;

  self->_unsafeUnretainedObservedObject = 0;
}

- (void)startObserving:(id)observing completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  observingCopy = observing;
  completionCopy = completion;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if ([(AVProxyKVOObserver *)self includeChanges])
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    kdebug_trace();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    keyPaths = [(AVProxyKVOObserver *)self keyPaths];
    v10 = [keyPaths countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(keyPaths);
          }

          [observingCopy addObserver:self forKeyPath:*(*(&v18 + 1) + 8 * v13++) options:v8 context:AVObservationControllerObservationContext];
        }

        while (v11 != v13);
        v11 = [keyPaths countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v11);
    }

    kdebug_trace();
    self->_canHandleChanges = 1;
    if ([(AVProxyKVOObserver *)self includeInitialValue])
    {
      kdebug_trace();
      keyPaths2 = [(AVProxyKVOObserver *)self keyPaths];
      anyObject = [keyPaths2 anyObject];

      v16 = [observingCopy valueForKeyPath:anyObject];
      [(AVProxyKVOObserver *)self _handleValueChangeForKeyPath:anyObject ofObject:observingCopy oldValue:0 newValue:v16 context:AVObservationControllerObservationContext];

      kdebug_trace();
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    v17 = [completionCopy copy];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__AVProxyKVOObserver_startObserving_completion___block_invoke;
    block[3] = &unk_1E720A068;
    block[4] = self;
    v23 = observingCopy;
    completionCopy = v17;
    v24 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (AVProxyKVOObserver)initWithObservedObject:(id)object observer:(id)observer keyPaths:(id)paths retainingObservedObject:(BOOL)observedObject includeInitialValue:(BOOL)value includeChanges:(BOOL)changes changesBlock:(id)block
{
  observedObjectCopy = observedObject;
  objectCopy = object;
  pathsCopy = paths;
  blockCopy = block;
  v28.receiver = self;
  v28.super_class = AVProxyKVOObserver;
  v18 = [(AVProxyKVOObserver *)&v28 init];
  v19 = v18;
  if (v18)
  {
    if (observedObjectCopy)
    {
      objc_storeStrong(&v18->_retainedObservedObject, object);
    }

    v19->_unsafeUnretainedObservedObject = objectCopy;
    v20 = [MEMORY[0x1E695DFD8] setWithArray:pathsCopy];
    keyPaths = v19->_keyPaths;
    v19->_keyPaths = v20;

    v19->_includeInitialValue = value;
    v19->_includeChanges = changes;
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    globallyUniqueString = [processInfo globallyUniqueString];
    token = v19->_token;
    v19->_token = globallyUniqueString;

    v25 = [blockCopy copy];
    changesBlock = v19->_changesBlock;
    v19->_changesBlock = v25;
  }

  return v19;
}

@end