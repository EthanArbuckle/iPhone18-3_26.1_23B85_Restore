@interface _MPMiddlewareChainBuilderProxy
+ (id)allocWithProtocol:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (SEL)_methodDescriptionFromProtocolHierarchy:(const char *)a3 selector:;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation _MPMiddlewareChainBuilderProxy

- (id)methodSignatureForSelector:(SEL)a3
{
  [(_MPMiddlewareChainBuilderProxy *)self _methodDescriptionFromProtocolHierarchy:a3 selector:?];
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

- (SEL)_methodDescriptionFromProtocolHierarchy:(const char *)a3 selector:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = v5;
    MethodDescription = protocol_getMethodDescription(v7, a3, 0, 1);
    if (MethodDescription.types)
    {
      name = MethodDescription.name;
    }

    else
    {
      v10 = protocol_getMethodDescription(v7, a3, 1, 1);
      name = v10.name;

      if (!v10.types)
      {
        outCount = 0;
        v11 = protocol_copyProtocolList(v7, &outCount);
        if (outCount)
        {
          for (i = 0; i < outCount; ++i)
          {
            name = [(_MPMiddlewareChainBuilderProxy *)a1 _methodDescriptionFromProtocolHierarchy:a3 selector:?];
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

- (BOOL)respondsToSelector:(SEL)a3
{
  v3 = [(_MPMiddlewareChainBuilderProxy *)self methodSignatureForSelector:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = [v4 methodSignature];
  if ([v5 numberOfArguments] > 1)
  {
    v8 = 0;
    [v4 getArgument:&v8 atIndex:{objc_msgSend(v5, "numberOfArguments") - 1}];
    v6 = [v4 selector];
    [v8 setBuilderSelector:v6];
    v7 = [v8 nextObject];
    [v4 invokeWithTarget:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _MPMiddlewareChainBuilderProxy;
    [(_MPMiddlewareChainBuilderProxy *)&v9 forwardInvocation:v4];
  }
}

+ (id)allocWithProtocol:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = v5[1];
  v5[1] = v4;

  return v5;
}

@end