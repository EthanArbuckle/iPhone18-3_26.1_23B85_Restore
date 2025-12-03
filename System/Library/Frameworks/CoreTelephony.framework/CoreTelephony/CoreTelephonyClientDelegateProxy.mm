@interface CoreTelephonyClientDelegateProxy
- (CoreTelephonyClientDelegateProxy)initWithQueue:(queue)queue;
- (id)delegate;
- (id)forwardInvocation:(dispatch_queue_s *);
- (id)forwardInvocation:(id *)invocation;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation CoreTelephonyClientDelegateProxy

- (CoreTelephonyClientDelegateProxy)initWithQueue:(queue)queue
{
  v4 = *queue.fObj.fObj;
  if (*queue.fObj.fObj)
  {
    dispatch_retain(*queue.fObj.fObj);
  }

  fObj = self->_userQueue.fObj.fObj;
  self->_userQueue.fObj.fObj = v4;
  if (fObj)
  {
    dispatch_release(fObj);
  }

  return self;
}

- (void)forwardInvocation:(id)invocation
{
  v13 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = CTLogClient();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector([invocationCopy selector]);
      [(CoreTelephonyClientDelegateProxy *)v7 forwardInvocation:buf, v6];
    }

    [invocationCopy retainArguments];
    selfCopy = self;
    v9 = invocationCopy;
    fObj = self->_userQueue.fObj.fObj;
    operator new();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = 8;
  v5 = &byte_18304DCD1;
  while (1)
  {
    MethodDescription = protocol_getMethodDescription(&unk_1EF0671B8, selector, *(v5 - 1), *v5);
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

- (id)forwardInvocation:(id *)invocation
{
  v2 = *invocation;
  *invocation = 0;
  if (v2)
  {

    MEMORY[0x1865E0880](v2, 0xC0C402DE288CCLL);
  }

  return invocation;
}

- (id)forwardInvocation:(dispatch_queue_s *)
{
  selfCopy = self;
  v2 = self[1];
  WeakRetained = objc_loadWeakRetained(*self + 2);
  [v2 setTarget:WeakRetained];

  [self[1] invoke];
  return std::unique_ptr<-[CoreTelephonyClientDelegateProxy forwardInvocation:]::$_0>::~unique_ptr[abi:nn200100](&selfCopy);
}

@end