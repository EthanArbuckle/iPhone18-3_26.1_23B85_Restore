@interface SFQueueingServiceViewControllerProxy
- (SFQueueingServiceViewControllerProxy)initWithProtocol:(id)a3;
- (SFQueueingServiceViewControllerProxyDelegate)delegate;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
- (void)setTarget:(id)a3;
@end

@implementation SFQueueingServiceViewControllerProxy

- (SFQueueingServiceViewControllerProxy)initWithProtocol:(id)a3
{
  objc_storeStrong(&self->_protocol, a3);
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  queuedInvocations = self->_queuedInvocations;
  self->_queuedInvocations = v6;

  return self;
}

- (void)setTarget:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_target != v5)
  {
    objc_storeStrong(&self->_target, a3);
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

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = self->_protocol;
  MethodDescription = protocol_getMethodDescription(v4, a3, 1, 1);
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

- (void)forwardInvocation:(id)a3
{
  v8 = a3;
  v4 = [v8 methodSignature];
  v5 = [v4 methodReturnType];
  do
  {
    if (!v5)
    {

      goto LABEL_8;
    }

    v6 = *v5++;
  }

  while (v6 != 118);

  if (self->_target)
  {
    [v8 invokeWithTarget:?];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained serviceProxyWillQueueInvocation:self];

    [v8 retainArguments];
    [(NSMutableArray *)self->_queuedInvocations addObject:v8];
  }

LABEL_8:
}

- (SFQueueingServiceViewControllerProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end