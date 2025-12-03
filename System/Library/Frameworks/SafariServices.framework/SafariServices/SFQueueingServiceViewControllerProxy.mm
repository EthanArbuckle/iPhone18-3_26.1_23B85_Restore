@interface SFQueueingServiceViewControllerProxy
- (SFQueueingServiceViewControllerProxy)initWithProtocol:(id)protocol;
- (SFQueueingServiceViewControllerProxyDelegate)delegate;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
- (void)setTarget:(id)target;
@end

@implementation SFQueueingServiceViewControllerProxy

- (SFQueueingServiceViewControllerProxy)initWithProtocol:(id)protocol
{
  objc_storeStrong(&self->_protocol, protocol);
  protocolCopy = protocol;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  queuedInvocations = self->_queuedInvocations;
  self->_queuedInvocations = v6;

  return self;
}

- (void)setTarget:(id)target
{
  v16 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  if (self->_target != targetCopy)
  {
    objc_storeStrong(&self->_target, target);
    if (self->_target)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = self->_queuedInvocations;
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v11 + 1) + 8 * v10++) invokeWithTarget:{self->_target, v11}];
          }

          while (v8 != v10);
          v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }

      [(NSMutableArray *)self->_queuedInvocations removeAllObjects];
    }
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = self->_protocol;
  MethodDescription = protocol_getMethodDescription(v4, selector, 1, 1);
  if (MethodDescription.types)
  {
    v6 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:MethodDescription.types];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  methodSignature = [invocationCopy methodSignature];
  methodReturnType = [methodSignature methodReturnType];
  do
  {
    if (!methodReturnType)
    {

      goto LABEL_8;
    }

    v6 = *methodReturnType++;
  }

  while (v6 != 118);

  if (self->_target)
  {
    [invocationCopy invokeWithTarget:?];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained serviceProxyWillQueueInvocation:self];

    [invocationCopy retainArguments];
    [(NSMutableArray *)self->_queuedInvocations addObject:invocationCopy];
  }

LABEL_8:
}

- (SFQueueingServiceViewControllerProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end