@interface CoreTelephonyClientRemoteAsyncProxy
- (CoreTelephonyClientRemoteAsyncProxy)initWithXPCObject:(id)a3 userQueue:(queue)a4 errorHandler:(id)a5;
- (void)forwardInvocation:(id)a3;
@end

@implementation CoreTelephonyClientRemoteAsyncProxy

- (CoreTelephonyClientRemoteAsyncProxy)initWithXPCObject:(id)a3 userQueue:(queue)a4 errorHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3321888768;
  v18[2] = __80__CoreTelephonyClientRemoteAsyncProxy_initWithXPCObject_userQueue_errorHandler___block_invoke;
  v18[3] = &unk_1EF012F68;
  v11 = *a4.fObj.fObj;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = v9;
  v19 = v12;
  v13 = [v8 remoteObjectProxyWithErrorHandler:v18];
  target = self->_target;
  self->_target = v13;

  if (object)
  {
    dispatch_release(object);
  }

  objc_autoreleasePoolPop(v10);
  v15 = *a4.fObj.fObj;
  *a4.fObj.fObj = 0;
  fObj = self->_userQueue.fObj.fObj;
  self->_userQueue.fObj.fObj = v15;
  if (fObj)
  {
    dispatch_release(fObj);
  }

  return self;
}

void __80__CoreTelephonyClientRemoteAsyncProxy_initWithXPCObject_userQueue_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CTLogClient();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__CoreTelephonyClientRemoteAsyncProxy_initWithXPCObject_userQueue_errorHandler___block_invoke_cold_1(v3, v4);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__CoreTelephonyClientRemoteAsyncProxy_initWithXPCObject_userQueue_errorHandler___block_invoke_1;
  v8[3] = &unk_1E6A459B0;
  v5 = *(a1 + 32);
  v9 = v3;
  v10 = v5;
  v6 = *(a1 + 40);
  v7 = v3;
  dispatch_async(v6, v8);
}

- (void)forwardInvocation:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 methodSignature];
  v6 = [v5 numberOfArguments];
  if (v6 < 3)
  {
    goto LABEL_7;
  }

  v7 = 0x7FFFFFFFFFFFFFFDLL;
  v8 = 2;
  while (1)
  {
    v9 = [v5 getArgumentTypeAtIndex:v8];
    if (*v9 == 64 && v9[1] == 63 && !v9[2])
    {
      break;
    }

    ++v8;
    --v7;
    if (v6 == v8)
    {
      goto LABEL_7;
    }
  }

  if (!v7)
  {
LABEL_7:
    v10 = CTLogClient();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = NSStringFromSelector([v4 selector]);
      [(CoreTelephonyClientRemoteAsyncProxy *)v11 forwardInvocation:buf, v10];
    }

    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  aBlock = 0;
  [v4 getArgument:&aBlock atIndex:v8];
  _Block_signature(aBlock);
  v12 = [aBlock copy];
  fObj = self->_userQueue.fObj.fObj;
  if (fObj)
  {
    dispatch_retain(self->_userQueue.fObj.fObj);
  }

  v16 = MEMORY[0x1E69E9820];
  if (fObj)
  {
    dispatch_retain(fObj);
  }

  v14 = v12;
  v17 = __NSMakeSpecialForwardingCaptureBlock();
  [v4 setArgument:&v17 atIndex:{v8, v16, 3321888768, __57__CoreTelephonyClientRemoteAsyncProxy_forwardInvocation___block_invoke, &unk_1EF012FA0}];
  [v4 invokeWithTarget:self->_target];

  if (fObj)
  {
    dispatch_release(fObj);
    dispatch_release(fObj);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __57__CoreTelephonyClientRemoteAsyncProxy_forwardInvocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 retainArguments];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CoreTelephonyClientRemoteAsyncProxy_forwardInvocation___block_invoke_2;
  v6[3] = &unk_1E6A46298;
  v7 = v3;
  v8 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

@end