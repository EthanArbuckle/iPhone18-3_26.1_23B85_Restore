@interface CoreTelephonyClientDelegateProxy
- (CoreTelephonyClientDelegateProxy)initWithQueue:(queue)a3;
- (id)delegate;
- (id)forwardInvocation:(dispatch_queue_s *);
- (id)forwardInvocation:(id *)a1;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation CoreTelephonyClientDelegateProxy

- (CoreTelephonyClientDelegateProxy)initWithQueue:(queue)a3
{
  v4 = *a3.fObj.fObj;
  if (*a3.fObj.fObj)
  {
    dispatch_retain(*a3.fObj.fObj);
  }

  fObj = self->_userQueue.fObj.fObj;
  self->_userQueue.fObj.fObj = v4;
  if (fObj)
  {
    dispatch_release(fObj);
  }

  return self;
}

- (void)forwardInvocation:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = CTLogClient();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector([v4 selector]);
      [(CoreTelephonyClientDelegateProxy *)v7 forwardInvocation:buf, v6];
    }

    [v4 retainArguments];
    v8 = self;
    v9 = v4;
    fObj = self->_userQueue.fObj.fObj;
    operator new();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = 8;
  v5 = &byte_18304DCD1;
  while (1)
  {
    MethodDescription = protocol_getMethodDescription(&unk_1EF0671B8, a3, *(v5 - 1), *v5);
    if (MethodDescription.name)
    {
      break;
    }

    v5 += 2;
    v4 -= 2;
    if (!v4)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:MethodDescription.types];
LABEL_6:

  return v7;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)forwardInvocation:(id *)a1
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x1865E0880](v2, 0xC0C402DE288CCLL);
  }

  return a1;
}

- (id)forwardInvocation:(dispatch_queue_s *)
{
  v5 = a1;
  v2 = a1[1];
  WeakRetained = objc_loadWeakRetained(*a1 + 2);
  [v2 setTarget:WeakRetained];

  [a1[1] invoke];
  return std::unique_ptr<-[CoreTelephonyClientDelegateProxy forwardInvocation:]::$_0>::~unique_ptr[abi:nn200100](&v5);
}

@end