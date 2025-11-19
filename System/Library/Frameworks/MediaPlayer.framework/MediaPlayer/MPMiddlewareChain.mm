@interface MPMiddlewareChain
+ (id)builderProxyForProtocol:(id)a3;
- (MPMiddlewareChain)initWithMiddleware:(id)a3 protocol:(id)a4;
- (SEL)builderSelector;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)nextObject;
- (void)forwardInvocation:(id)a3;
- (void)setBuilderSelector:(SEL)a3;
@end

@implementation MPMiddlewareChain

- (id)nextObject
{
  v3 = [(NSEnumerator *)self->_middlewareEnumerator nextObject];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  if (self->_builderSelector && v6 != self && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = [(MPMiddlewareChain *)self nextObject];

    v6 = v7;
  }

  return v6;
}

- (void)setBuilderSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_builderSelector = v3;
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

- (id)methodSignatureForSelector:(SEL)a3
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
    v7 = [v8 methodSignatureForSelector:a3];
  }

  return v7;
}

- (void)forwardInvocation:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 methodSignature];
  v5 = [v4 methodReturnLength];

  [v3 getArgument:v6 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) atIndex:2];
  [v3 setReturnValue:v6 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
}

- (MPMiddlewareChain)initWithMiddleware:(id)a3 protocol:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = MPMiddlewareChain;
  v8 = [(MPMiddlewareChain *)&v27 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_protocol, a4);
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v6;
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
          if (class_conformsToProtocol(v17, v7))
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

    v20 = [(NSArray *)v19 objectEnumerator];
    middlewareEnumerator = v9->_middlewareEnumerator;
    v9->_middlewareEnumerator = v20;
  }

  return v9;
}

+ (id)builderProxyForProtocol:(id)a3
{
  v3 = [_MPMiddlewareChainBuilderProxy allocWithProtocol:a3];

  return v3;
}

@end