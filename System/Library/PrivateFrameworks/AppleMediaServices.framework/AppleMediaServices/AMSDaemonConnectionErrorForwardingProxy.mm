@interface AMSDaemonConnectionErrorForwardingProxy
- (AMSDaemonConnectionErrorForwardingProxy)initWithProxy:(id)proxy fromInterface:(id)interface isSync:(BOOL)sync;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation AMSDaemonConnectionErrorForwardingProxy

- (AMSDaemonConnectionErrorForwardingProxy)initWithProxy:(id)proxy fromInterface:(id)interface isSync:(BOOL)sync
{
  proxyCopy = proxy;
  interfaceCopy = interface;
  proxy = self->_proxy;
  self->_proxy = proxyCopy;
  v11 = proxyCopy;

  interface = self->_interface;
  self->_interface = interfaceCopy;

  self->_isSync = sync;
  return self;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v25 = 0;
  v5 = [(AMSDaemonConnectionErrorForwardingProxy *)self _blockToInvokeWithErrorForwardingForInvocation:invocationCopy errorArgumentIndex:&v25];
  if (v5)
  {
    selector = [invocationCopy selector];
    interface = [(AMSDaemonConnectionErrorForwardingProxy *)self interface];
    v8 = AMSLogKey();
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __61__AMSDaemonConnectionErrorForwardingProxy_forwardInvocation___block_invoke;
    v19 = &unk_1E73B6760;
    v20 = v8;
    v21 = interface;
    v23 = selector;
    v24 = v25;
    v22 = v5;
    v9 = interface;
    proxy2 = v8;
    v11 = _Block_copy(&v16);
    v12 = [(AMSDaemonConnectionErrorForwardingProxy *)self isSync:v16];
    proxy = [(AMSDaemonConnectionErrorForwardingProxy *)self proxy];
    v14 = proxy;
    if (v12)
    {
      [proxy synchronousRemoteObjectProxyWithErrorHandler:v11];
    }

    else
    {
      [proxy remoteObjectProxyWithErrorHandler:v11];
    }
    v15 = ;

    [invocationCopy invokeWithTarget:v15];
  }

  else
  {
    proxy2 = [(AMSDaemonConnectionErrorForwardingProxy *)self proxy];
    [invocationCopy invokeWithTarget:proxy2];
  }
}

void __61__AMSDaemonConnectionErrorForwardingProxy_forwardInvocation___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = AMSError(0, @"AMSDaemonConnectionErrorForwardingProxy received XPC error", @"XPC error occurred while waiting for a reply from service proxy.", v3);
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    v8 = AMSLogableError(v3);
    *buf = 138543874;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] XPC error occurred during proxy call. error = %{public}@", buf, 0x20u);
  }

  v9 = [*(a1 + 40) replyBlockSignatureForSelector:*(a1 + 56)];
  v10 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:{objc_msgSend(v9, "UTF8String")}];
  v11 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v10];
  [v11 setArgument:&v12 atIndex:*(a1 + 64) + 1];
  [v11 invokeWithTarget:*(a1 + 48)];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  proxy = [(AMSDaemonConnectionErrorForwardingProxy *)self proxy];
  v5 = [proxy methodSignatureForSelector:selector];

  return v5;
}

@end