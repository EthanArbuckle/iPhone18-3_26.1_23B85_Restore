@interface _LABKOperation
+ (id)_wrapperForBKOperation:(id)a3 device:(id)a4;
- (BKOperationDelegate)delegate;
- (BOOL)startWithError:(id *)a3;
- (id)_initWithBKOperation:(id)a3 device:(id)a4;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)shim;
- (void)dealloc;
- (void)dispatchDelegateSelector:(SEL)a3 block:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)operation:(id)a3 finishedWithReason:(int64_t)a4;
- (void)operation:(id)a3 stateChanged:(int64_t)a4;
- (void)setQueue:(id)a3;
- (void)startWithReply:(id)a3;
@end

@implementation _LABKOperation

+ (id)_wrapperForBKOperation:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v20 = [objc_alloc(*v10) _initWithBKOperation:v6 device:v7];
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"wrapping %@ with %@", v6, v20];

  return v20;
}

- (id)_initWithBKOperation:(id)a3 device:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = _LABKOperation;
  v9 = [(_LABKOperation *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->__BKOperation, a3);
    [v10->__BKOperation setDelegate:v10];
    objc_storeStrong(&v10->_device, a4);
    v10->_state = 1;
    v11 = [(_LABKOperation *)v10 shim];
    v12 = [v11 biometricMethodState];
    -[_LABKOperation setIsUserPresent:](v10, "setIsUserPresent:", [v12 isUserPresent]);

    v13 = [(_LABKOperation *)v10 shim];
    v14 = NSStringFromSelector(sel_biometricMethodState);
    [v13 addObserver:v10 forKeyPath:v14 options:1 context:0];

    v15 = [(_LABKOperation *)v10 shim];
    v16 = NSStringFromSelector(sel_biometricMethodResult);
    [v15 addObserver:v10 forKeyPath:v16 options:1 context:0];
  }

  return v10;
}

- (id)shim
{
  v2 = [(_LABKOperation *)self device];
  v3 = [v2 shim];

  return v3;
}

- (void)setQueue:(id)a3
{
  objc_storeStrong(&self->_queue, a3);
  v5 = a3;
  v6 = [(_LABKOperation *)self _BKOperation];
  [v6 setQueue:v5];
}

- (void)dispatchDelegateSelector:(SEL)a3 block:(id)a4
{
  v5 = a4;
  v6 = [(_LABKOperation *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(_LABKOperation *)self queue];

    if (v8)
    {
      v9 = [(_LABKOperation *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49___LABKOperation_dispatchDelegateSelector_block___block_invoke;
      block[3] = &unk_1E77CC468;
      v11 = v5;
      dispatch_async(v9, block);
    }

    else
    {
      v5[2](v5);
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v8 = NSStringFromSelector(sel_biometricMethodState);
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(_LABKOperation *)self shim];
    v11 = [v10 biometricMethodState];
    v12 = [v11 isUserPresent];
    v13 = [(_LABKOperation *)self isUserPresent];

    if (v12 != v13)
    {
      v14 = [(_LABKOperation *)self shim];
      v15 = [v14 biometricMethodState];
      -[_LABKOperation setIsUserPresent:](self, "setIsUserPresent:", [v15 isUserPresent]);

      v16 = sel_operation_presenceStateChanged_;
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __65___LABKOperation_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v28 = &unk_1E77CC490;
      v29 = self;
      v17 = &v25;
LABEL_6:
      [(_LABKOperation *)self dispatchDelegateSelector:v16 block:v17, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29];
    }
  }

  else
  {
    v18 = NSStringFromSelector(sel_biometricMethodResult);
    v19 = [v7 isEqualToString:v18];

    if (v19)
    {
      [(_LABKOperation *)self setState:4];
      v16 = sel_operation_stateChanged_;
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __65___LABKOperation_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v23 = &unk_1E77CC490;
      v24 = self;
      v17 = &v20;
      goto LABEL_6;
    }
  }
}

- (BOOL)startWithError:(id *)a3
{
  v6 = objc_opt_class();
  v7 = [(_LABKOperation *)self _BKOperation];
  [_LABKLog logClass:v6 selector:a2 message:@"sync-starting operation %@", v7];

  v8 = [(_LABKOperation *)self _BKOperation];
  v9 = [v8 startWithError:a3];

  v10 = objc_opt_class();
  if (v9)
  {
    v11 = @"YES";
  }

  else if (a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = @"error";
  }

  [_LABKLog logClass:v10 selector:a2 message:@"started: %@", v11];
  return v9;
}

- (void)startWithReply:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [(_LABKOperation *)self _BKOperation];
  [_LABKLog logClass:v6 selector:a2 message:@"async-starting operation %@", v7];

  v8 = [(_LABKOperation *)self _BKOperation];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33___LABKOperation_startWithReply___block_invoke;
  v10[3] = &unk_1E77CC4B8;
  v11 = v5;
  v12 = a2;
  v10[4] = self;
  v9 = v5;
  [v8 startWithReply:v10];
}

- (void)operation:(id)a3 finishedWithReason:(int64_t)a4
{
  v7 = a3;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %d", v7, a4];

  v8 = [(_LABKOperation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(_LABKOperation *)self delegate];
    [v10 operation:self finishedWithReason:a4];
  }
}

- (void)operation:(id)a3 stateChanged:(int64_t)a4
{
  v7 = a3;
  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"%@, %d", v7, a4];

  v8 = [(_LABKOperation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(_LABKOperation *)self delegate];
    [v10 operation:self stateChanged:a4];
  }
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  [_LABKLog logClass:objc_opt_class() selector:a3 message:@"forwarding to BK"];

  return [(_LABKOperation *)self _BKOperation];
}

- (void)dealloc
{
  v3 = [(_LABKOperation *)self shim];
  v4 = NSStringFromSelector(sel_biometricMethodState);
  [v3 removeObserver:self forKeyPath:v4];

  v5 = [(_LABKOperation *)self shim];
  v6 = NSStringFromSelector(sel_biometricMethodResult);
  [v5 removeObserver:self forKeyPath:v6];

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