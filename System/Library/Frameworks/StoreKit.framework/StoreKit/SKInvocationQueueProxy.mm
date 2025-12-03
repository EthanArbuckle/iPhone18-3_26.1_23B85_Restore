@interface SKInvocationQueueProxy
- (SKInvocationQueueProxy)initWithProtocol:(id)protocol;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
- (void)setInvocationTarget:(id)target;
@end

@implementation SKInvocationQueueProxy

- (SKInvocationQueueProxy)initWithProtocol:(id)protocol
{
  protocolCopy = protocol;
  v9.receiver = self;
  v9.super_class = SKInvocationQueueProxy;
  v6 = [(SKInvocationQueueProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_protocol, protocol);
  }

  return v7;
}

- (void)setInvocationTarget:(id)target
{
  v17 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  p_invocationTarget = &self->_invocationTarget;
  if (self->_invocationTarget != targetCopy)
  {
    objc_storeStrong(&self->_invocationTarget, target);
    if (*p_invocationTarget)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = self->_invocationQueue;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          v11 = 0;
          do
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v12 + 1) + 8 * v11++) invokeWithTarget:{*p_invocationTarget, v12}];
          }

          while (v9 != v11);
          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }

      [(NSMutableArray *)self->_invocationQueue removeAllObjects];
    }
  }
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v7 = invocationCopy;
  if (self->_invocationTarget)
  {
    [invocationCopy invokeWithTarget:?];
  }

  else
  {
    if (!self->_invocationQueue)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      invocationQueue = self->_invocationQueue;
      self->_invocationQueue = v5;

      invocationCopy = v7;
    }

    [invocationCopy retainArguments];
    [(NSMutableArray *)self->_invocationQueue addObject:v7];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = SKInvocationQueueProxy;
  v5 = [(SKInvocationQueueProxy *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    MethodDescription = protocol_getMethodDescription(self->_protocol, selector, 1, 1);
    if (MethodDescription.types)
    {
      v5 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:MethodDescription.types];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end