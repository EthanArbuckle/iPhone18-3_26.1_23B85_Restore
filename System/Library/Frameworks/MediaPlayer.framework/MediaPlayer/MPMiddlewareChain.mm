@interface MPMiddlewareChain
+ (id)builderProxyForProtocol:(id)protocol;
- (MPMiddlewareChain)initWithMiddleware:(id)middleware protocol:(id)protocol;
- (SEL)builderSelector;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)nextObject;
- (void)forwardInvocation:(id)invocation;
- (void)setBuilderSelector:(SEL)selector;
@end

@implementation MPMiddlewareChain

- (id)nextObject
{
  nextObject = [(NSEnumerator *)self->_middlewareEnumerator nextObject];
  v4 = nextObject;
  if (nextObject)
  {
    selfCopy = nextObject;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  if (self->_builderSelector && v6 != self && (objc_opt_respondsToSelector() & 1) == 0)
  {
    nextObject2 = [(MPMiddlewareChain *)self nextObject];

    v6 = nextObject2;
  }

  return v6;
}

- (void)setBuilderSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_builderSelector = selectorCopy;
}

- (SEL)builderSelector
{
  if (self->_builderSelector)
  {
    return self->_builderSelector;
  }

  else
  {
    return 0;
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v10.receiver = self;
  v10.super_class = MPMiddlewareChain;
  v5 = [(MPMiddlewareChain *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [objc_opt_class() builderProxyForProtocol:self->_protocol];
    v7 = [v8 methodSignatureForSelector:selector];
  }

  return v7;
}

- (void)forwardInvocation:(id)invocation
{
  v6[1] = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  methodSignature = [invocationCopy methodSignature];
  methodReturnLength = [methodSignature methodReturnLength];

  [invocationCopy getArgument:v6 - ((methodReturnLength + 15) & 0xFFFFFFFFFFFFFFF0) atIndex:2];
  [invocationCopy setReturnValue:v6 - ((methodReturnLength + 15) & 0xFFFFFFFFFFFFFFF0)];
}

- (MPMiddlewareChain)initWithMiddleware:(id)middleware protocol:(id)protocol
{
  v29 = *MEMORY[0x1E69E9840];
  middlewareCopy = middleware;
  protocolCopy = protocol;
  v27.receiver = self;
  v27.super_class = MPMiddlewareChain;
  v8 = [(MPMiddlewareChain *)&v27 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_protocol, protocol);
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(middlewareCopy, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = middlewareCopy;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        v15 = 0;
        do
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * v15);
          v17 = objc_opt_class();
          if (class_conformsToProtocol(v17, protocolCopy))
          {
            [(NSArray *)v10 addObject:v16, v23];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
    }

    builders = v9->_builders;
    v9->_builders = v10;
    v19 = v10;

    objectEnumerator = [(NSArray *)v19 objectEnumerator];
    middlewareEnumerator = v9->_middlewareEnumerator;
    v9->_middlewareEnumerator = objectEnumerator;
  }

  return v9;
}

+ (id)builderProxyForProtocol:(id)protocol
{
  v3 = [_MPMiddlewareChainBuilderProxy allocWithProtocol:protocol];

  return v3;
}

@end