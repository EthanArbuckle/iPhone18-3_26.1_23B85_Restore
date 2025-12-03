@interface _MPMiddlewareChainBuilderProxy
+ (id)allocWithProtocol:(id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (SEL)_methodDescriptionFromProtocolHierarchy:(const char *)hierarchy selector:;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation _MPMiddlewareChainBuilderProxy

- (id)methodSignatureForSelector:(SEL)selector
{
  [(_MPMiddlewareChainBuilderProxy *)self _methodDescriptionFromProtocolHierarchy:selector selector:?];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SEL)_methodDescriptionFromProtocolHierarchy:(const char *)hierarchy selector:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7 = v5;
    MethodDescription = protocol_getMethodDescription(v7, hierarchy, 0, 1);
    if (MethodDescription.types)
    {
      name = MethodDescription.name;
    }

    else
    {
      v10 = protocol_getMethodDescription(v7, hierarchy, 1, 1);
      name = v10.name;

      if (!v10.types)
      {
        outCount = 0;
        v11 = protocol_copyProtocolList(v7, &outCount);
        if (outCount)
        {
          for (i = 0; i < outCount; ++i)
          {
            name = [(_MPMiddlewareChainBuilderProxy *)self _methodDescriptionFromProtocolHierarchy:hierarchy selector:?];
            if (v13)
            {
              break;
            }
          }
        }

        free(v11);
      }
    }
  }

  else
  {
    name = 0;
  }

  return name;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v3 = [(_MPMiddlewareChainBuilderProxy *)self methodSignatureForSelector:selector];
  v4 = v3 != 0;

  return v4;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  methodSignature = [invocationCopy methodSignature];
  if ([methodSignature numberOfArguments] > 1)
  {
    v8 = 0;
    [invocationCopy getArgument:&v8 atIndex:{objc_msgSend(methodSignature, "numberOfArguments") - 1}];
    selector = [invocationCopy selector];
    [v8 setBuilderSelector:selector];
    nextObject = [v8 nextObject];
    [invocationCopy invokeWithTarget:nextObject];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _MPMiddlewareChainBuilderProxy;
    [(_MPMiddlewareChainBuilderProxy *)&v9 forwardInvocation:invocationCopy];
  }
}

+ (id)allocWithProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = [self alloc];
  v6 = v5[1];
  v5[1] = protocolCopy;

  return v5;
}

@end