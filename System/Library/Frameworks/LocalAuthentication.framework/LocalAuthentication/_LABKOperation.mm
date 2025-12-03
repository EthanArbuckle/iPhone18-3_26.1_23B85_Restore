@interface _LABKOperation
+ (id)_wrapperForBKOperation:(id)operation device:(id)device;
- (BKOperationDelegate)delegate;
- (BOOL)startWithError:(id *)error;
- (id)_initWithBKOperation:(id)operation device:(id)device;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)shim;
- (void)dealloc;
- (void)dispatchDelegateSelector:(SEL)selector block:(id)block;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)operation:(id)operation finishedWithReason:(int64_t)reason;
- (void)operation:(id)operation stateChanged:(int64_t)changed;
- (void)setQueue:(id)queue;
- (void)startWithReply:(id)reply;
@end

@implementation _LABKOperation

+ (id)_wrapperForBKOperation:(id)operation device:(id)device
{
  operationCopy = operation;
  deviceCopy = device;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v8 = getBKMatchPearlOperationClass_softClass;
  v30 = getBKMatchPearlOperationClass_softClass;
  if (!getBKMatchPearlOperationClass_softClass)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __getBKMatchPearlOperationClass_block_invoke;
    v25 = &unk_1E77CB120;
    v26 = &v27;
    __getBKMatchPearlOperationClass_block_invoke(&v22);
    v8 = v28[3];
  }

  v9 = v8;
  _Block_object_dispose(&v27, 8);
  if (objc_opt_isKindOfClass())
  {
    v10 = off_1E77CABD0;
  }

  else
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v11 = getBKMatchOperationClass_softClass;
    v30 = getBKMatchOperationClass_softClass;
    if (!getBKMatchOperationClass_softClass)
    {
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __getBKMatchOperationClass_block_invoke;
      v25 = &unk_1E77CB120;
      v26 = &v27;
      __getBKMatchOperationClass_block_invoke(&v22);
      v11 = v28[3];
    }

    v12 = v11;
    _Block_object_dispose(&v27, 8);
    if (objc_opt_isKindOfClass())
    {
      v10 = off_1E77CABC8;
    }

    else
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2050000000;
      v13 = getBKFaceDetectOperationClass_softClass;
      v30 = getBKFaceDetectOperationClass_softClass;
      if (!getBKFaceDetectOperationClass_softClass)
      {
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __getBKFaceDetectOperationClass_block_invoke;
        v25 = &unk_1E77CB120;
        v26 = &v27;
        __getBKFaceDetectOperationClass_block_invoke(&v22);
        v13 = v28[3];
      }

      v14 = v13;
      _Block_object_dispose(&v27, 8);
      if (objc_opt_isKindOfClass())
      {
        v10 = off_1E77CABB8;
      }

      else
      {
        v27 = 0;
        v28 = &v27;
        v29 = 0x2050000000;
        v15 = getBKFingerDetectOperationClass_softClass;
        v30 = getBKFingerDetectOperationClass_softClass;
        if (!getBKFingerDetectOperationClass_softClass)
        {
          v22 = MEMORY[0x1E69E9820];
          v23 = 3221225472;
          v24 = __getBKFingerDetectOperationClass_block_invoke;
          v25 = &unk_1E77CB120;
          v26 = &v27;
          __getBKFingerDetectOperationClass_block_invoke(&v22);
          v15 = v28[3];
        }

        v16 = v15;
        _Block_object_dispose(&v27, 8);
        if (objc_opt_isKindOfClass())
        {
          v10 = off_1E77CABC0;
        }

        else
        {
          v27 = 0;
          v28 = &v27;
          v29 = 0x2050000000;
          v17 = getBKPresenceDetectOperationClass_softClass;
          v30 = getBKPresenceDetectOperationClass_softClass;
          if (!getBKPresenceDetectOperationClass_softClass)
          {
            v22 = MEMORY[0x1E69E9820];
            v23 = 3221225472;
            v24 = __getBKPresenceDetectOperationClass_block_invoke;
            v25 = &unk_1E77CB120;
            v26 = &v27;
            __getBKPresenceDetectOperationClass_block_invoke(&v22);
            v17 = v28[3];
          }

          v18 = v17;
          _Block_object_dispose(&v27, 8);
          isKindOfClass = objc_opt_isKindOfClass();
          v10 = off_1E77CABD8;
          if (isKindOfClass)
          {
            v10 = &off_1E77CABE0;
          }
        }
      }
    }
  }

  v20 = [objc_alloc(*v10) _initWithBKOperation:operationCopy device:deviceCopy];
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"wrapping %@ with %@", operationCopy, v20];

  return v20;
}

- (id)_initWithBKOperation:(id)operation device:(id)device
{
  operationCopy = operation;
  deviceCopy = device;
  v18.receiver = self;
  v18.super_class = _LABKOperation;
  v9 = [(_LABKOperation *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->__BKOperation, operation);
    [v10->__BKOperation setDelegate:v10];
    objc_storeStrong(&v10->_device, device);
    v10->_state = 1;
    shim = [(_LABKOperation *)v10 shim];
    biometricMethodState = [shim biometricMethodState];
    -[_LABKOperation setIsUserPresent:](v10, "setIsUserPresent:", [biometricMethodState isUserPresent]);

    shim2 = [(_LABKOperation *)v10 shim];
    v14 = NSStringFromSelector(sel_biometricMethodState);
    [shim2 addObserver:v10 forKeyPath:v14 options:1 context:0];

    shim3 = [(_LABKOperation *)v10 shim];
    v16 = NSStringFromSelector(sel_biometricMethodResult);
    [shim3 addObserver:v10 forKeyPath:v16 options:1 context:0];
  }

  return v10;
}

- (id)shim
{
  device = [(_LABKOperation *)self device];
  shim = [device shim];

  return shim;
}

- (void)setQueue:(id)queue
{
  objc_storeStrong(&self->_queue, queue);
  queueCopy = queue;
  _BKOperation = [(_LABKOperation *)self _BKOperation];
  [_BKOperation setQueue:queueCopy];
}

- (void)dispatchDelegateSelector:(SEL)selector block:(id)block
{
  blockCopy = block;
  delegate = [(_LABKOperation *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    queue = [(_LABKOperation *)self queue];

    if (queue)
    {
      queue2 = [(_LABKOperation *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49___LABKOperation_dispatchDelegateSelector_block___block_invoke;
      block[3] = &unk_1E77CC468;
      v11 = blockCopy;
      dispatch_async(queue2, block);
    }

    else
    {
      blockCopy[2](blockCopy);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v8 = NSStringFromSelector(sel_biometricMethodState);
  v9 = [pathCopy isEqualToString:v8];

  if (v9)
  {
    shim = [(_LABKOperation *)self shim];
    biometricMethodState = [shim biometricMethodState];
    isUserPresent = [biometricMethodState isUserPresent];
    isUserPresent2 = [(_LABKOperation *)self isUserPresent];

    if (isUserPresent != isUserPresent2)
    {
      shim2 = [(_LABKOperation *)self shim];
      biometricMethodState2 = [shim2 biometricMethodState];
      -[_LABKOperation setIsUserPresent:](self, "setIsUserPresent:", [biometricMethodState2 isUserPresent]);

      v16 = sel_operation_presenceStateChanged_;
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __65___LABKOperation_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v28 = &unk_1E77CC490;
      selfCopy = self;
      v17 = &v25;
LABEL_6:
      [(_LABKOperation *)self dispatchDelegateSelector:v16 block:v17, v20, v21, v22, v23, selfCopy2, v25, v26, v27, v28, selfCopy];
    }
  }

  else
  {
    v18 = NSStringFromSelector(sel_biometricMethodResult);
    v19 = [pathCopy isEqualToString:v18];

    if (v19)
    {
      [(_LABKOperation *)self setState:4];
      v16 = sel_operation_stateChanged_;
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __65___LABKOperation_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v23 = &unk_1E77CC490;
      selfCopy2 = self;
      v17 = &v20;
      goto LABEL_6;
    }
  }
}

- (BOOL)startWithError:(id *)error
{
  v6 = objc_opt_class();
  _BKOperation = [(_LABKOperation *)self _BKOperation];
  [_LABKLog logClass:v6 selector:a2 message:@"sync-starting operation %@", _BKOperation];

  _BKOperation2 = [(_LABKOperation *)self _BKOperation];
  v9 = [_BKOperation2 startWithError:error];

  v10 = objc_opt_class();
  if (v9)
  {
    v11 = @"YES";
  }

  else if (error)
  {
    v11 = *error;
  }

  else
  {
    v11 = @"error";
  }

  [_LABKLog logClass:v10 selector:a2 message:@"started: %@", v11];
  return v9;
}

- (void)startWithReply:(id)reply
{
  replyCopy = reply;
  v6 = objc_opt_class();
  _BKOperation = [(_LABKOperation *)self _BKOperation];
  [_LABKLog logClass:v6 selector:a2 message:@"async-starting operation %@", _BKOperation];

  _BKOperation2 = [(_LABKOperation *)self _BKOperation];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33___LABKOperation_startWithReply___block_invoke;
  v10[3] = &unk_1E77CC4B8;
  v11 = replyCopy;
  v12 = a2;
  v10[4] = self;
  v9 = replyCopy;
  [_BKOperation2 startWithReply:v10];
}

- (void)operation:(id)operation finishedWithReason:(int64_t)reason
{
  operationCopy = operation;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %d", operationCopy, reason];

  delegate = [(_LABKOperation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(_LABKOperation *)self delegate];
    [delegate2 operation:self finishedWithReason:reason];
  }
}

- (void)operation:(id)operation stateChanged:(int64_t)changed
{
  operationCopy = operation;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %d", operationCopy, changed];

  delegate = [(_LABKOperation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(_LABKOperation *)self delegate];
    [delegate2 operation:self stateChanged:changed];
  }
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  [_LABKLog logClass:objc_opt_class() selector:selector message:@"forwarding to BK"];

  return [(_LABKOperation *)self _BKOperation];
}

- (void)dealloc
{
  shim = [(_LABKOperation *)self shim];
  v4 = NSStringFromSelector(sel_biometricMethodState);
  [shim removeObserver:self forKeyPath:v4];

  shim2 = [(_LABKOperation *)self shim];
  v6 = NSStringFromSelector(sel_biometricMethodResult);
  [shim2 removeObserver:self forKeyPath:v6];

  v7.receiver = self;
  v7.super_class = _LABKOperation;
  [(_LABKOperation *)&v7 dealloc];
}

- (BKOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end