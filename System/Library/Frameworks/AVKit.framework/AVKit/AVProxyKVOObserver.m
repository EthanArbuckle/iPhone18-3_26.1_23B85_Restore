@interface AVProxyKVOObserver
- (AVProxyKVOObserver)initWithObservedObject:(id)a3 observer:(id)a4 keyPaths:(id)a5 retainingObservedObject:(BOOL)a6 includeInitialValue:(BOOL)a7 includeChanges:(BOOL)a8 changesBlock:(id)a9;
- (void)_handleValueChangeForKeyPath:(id)a3 ofObject:(id)a4 oldValue:(id)a5 newValue:(id)a6 context:(void *)a7;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)startObserving:(id)a3 completion:(id)a4;
- (void)stopObserving;
@end

@implementation AVProxyKVOObserver

- (void)_handleValueChangeForKeyPath:(id)a3 ofObject:(id)a4 oldValue:(id)a5 newValue:(id)a6 context:(void *)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v16 = [(AVProxyKVOObserver *)self changesBlock];
  v15 = [(AVProxyKVOObserver *)self token];
  v16[2](v16, v13, v14, v11, v12, v15);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  kdebug_trace();
  v14 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696A500]];
  v13 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  [(AVProxyKVOObserver *)self _handleValueChangeForKeyPath:v12 ofObject:v11 oldValue:v14 newValue:v13 context:a6];
  kdebug_trace();
}

- (void)stopObserving
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(AVProxyKVOObserver *)self keyPaths];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [self->_unsafeUnretainedObservedObject removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) context:AVObservationControllerObservationContext];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  retainedObservedObject = self->_retainedObservedObject;
  self->_retainedObservedObject = 0;

  self->_unsafeUnretainedObservedObject = 0;
}

- (void)startObserving:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
    v9 = [(AVProxyKVOObserver *)self keyPaths];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
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
            objc_enumerationMutation(v9);
          }

          [v6 addObserver:self forKeyPath:*(*(&v18 + 1) + 8 * v13++) options:v8 context:AVObservationControllerObservationContext];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v11);
    }

    kdebug_trace();
    self->_canHandleChanges = 1;
    if ([(AVProxyKVOObserver *)self includeInitialValue])
    {
      kdebug_trace();
      v14 = [(AVProxyKVOObserver *)self keyPaths];
      v15 = [v14 anyObject];

      v16 = [v6 valueForKeyPath:v15];
      [(AVProxyKVOObserver *)self _handleValueChangeForKeyPath:v15 ofObject:v6 oldValue:0 newValue:v16 context:AVObservationControllerObservationContext];

      kdebug_trace();
    }

    v7[2](v7);
  }

  else
  {
    v17 = [v7 copy];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__AVProxyKVOObserver_startObserving_completion___block_invoke;
    block[3] = &unk_1E720A068;
    block[4] = self;
    v23 = v6;
    v7 = v17;
    v24 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (AVProxyKVOObserver)initWithObservedObject:(id)a3 observer:(id)a4 keyPaths:(id)a5 retainingObservedObject:(BOOL)a6 includeInitialValue:(BOOL)a7 includeChanges:(BOOL)a8 changesBlock:(id)a9
{
  v11 = a6;
  v15 = a3;
  v16 = a5;
  v17 = a9;
  v28.receiver = self;
  v28.super_class = AVProxyKVOObserver;
  v18 = [(AVProxyKVOObserver *)&v28 init];
  v19 = v18;
  if (v18)
  {
    if (v11)
    {
      objc_storeStrong(&v18->_retainedObservedObject, a3);
    }

    v19->_unsafeUnretainedObservedObject = v15;
    v20 = [MEMORY[0x1E695DFD8] setWithArray:v16];
    keyPaths = v19->_keyPaths;
    v19->_keyPaths = v20;

    v19->_includeInitialValue = a7;
    v19->_includeChanges = a8;
    v22 = [MEMORY[0x1E696AE30] processInfo];
    v23 = [v22 globallyUniqueString];
    token = v19->_token;
    v19->_token = v23;

    v25 = [v17 copy];
    changesBlock = v19->_changesBlock;
    v19->_changesBlock = v25;
  }

  return v19;
}

@end