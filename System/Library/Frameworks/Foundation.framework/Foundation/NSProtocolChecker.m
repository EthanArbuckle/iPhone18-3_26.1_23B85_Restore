@interface NSProtocolChecker
+ (NSProtocolChecker)allocWithZone:(_NSZone *)a3;
+ (NSProtocolChecker)protocolCheckerWithTarget:(NSObject *)anObject protocol:(Protocol *)aProtocol;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (const)_localClassNameForClass;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (objc_method_description)methodDescriptionForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation NSProtocolChecker

- (BOOL)respondsToSelector:(SEL)a3
{
  v5 = 1;
  if (!protocol_getMethodDescription([(NSProtocolChecker *)self protocol], a3, 1, 1).name)
  {
    if (!protocol_getMethodDescription([(NSProtocolChecker *)self protocol], a3, 0, 1).name)
    {
      return 0;
    }

    [(NSProtocolChecker *)self target];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return 0;
    }
  }

  return v5;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = [(NSProtocolChecker *)self protocol];

  return protocol_conformsToProtocol(v4, a3);
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if (!protocol_getMethodDescription([(NSProtocolChecker *)self protocol], a3, 1, 1).name)
  {
    if (!protocol_getMethodDescription([(NSProtocolChecker *)self protocol], a3, 0, 1).name)
    {
      return 0;
    }

    [(NSProtocolChecker *)self target];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return 0;
    }
  }

  return [(NSProtocolChecker *)self target];
}

- (objc_method_description)methodDescriptionForSelector:(SEL)a3
{
  MethodDescription = protocol_getMethodDescription([(NSProtocolChecker *)self protocol], a3, 1, 1);
  types = MethodDescription.types;
  name = MethodDescription.name;
  if (MethodDescription.name || ([(NSProtocolChecker *)self target], (objc_opt_respondsToSelector() & 1) != 0) && (v11 = protocol_getMethodDescription([(NSProtocolChecker *)self protocol], a3, 0, 1), types = v11.types, (name = v11.name) != 0))
  {
    v8 = name;
    v9 = types;
    result = [objc_msgSend(MEMORY[0x1E695DF88] dataWithLength:{16), "mutableBytes"}];
    result->name = v8;
    result->types = v9;
  }

  else if (sel_respondsToSelector_ == a3 || sel__conformsToProtocolNamed_ == a3 || sel_conformsToProtocol_ == a3)
  {
    v14 = MEMORY[0x1E69E58C0];

    return [v14 instanceMethodDescriptionForSelector:a3];
  }

  else
  {
    return 0;
  }

  return result;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  result = [(NSProtocolChecker *)self methodDescriptionForSelector:a3];
  if (result)
  {
    v4 = *(result + 1);
    v5 = MEMORY[0x1E695DF68];

    return [v5 signatureWithObjCTypes:v4];
  }

  return result;
}

- (const)_localClassNameForClass
{
  v2 = [(NSProtocolChecker *)self target];

  return [v2 _localClassNameForClass];
}

- (void)forwardInvocation:(id)a3
{
  v5 = [a3 selector];
  if (v5 != sel_respondsToSelector_ && v5 != sel__conformsToProtocolNamed_ && v5 != sel_conformsToProtocol_)
  {
    v8 = v5;
    if (![(NSProtocolChecker *)self methodDescriptionForSelector:v5])
    {
      [(NSProtocolChecker *)self doesNotRecognizeSelector:v8];
    }

    self = [(NSProtocolChecker *)self target];
  }

  [a3 invokeWithTarget:self];
}

+ (NSProtocolChecker)allocWithZone:(_NSZone *)a3
{
  v4 = a1;
  if (objc_opt_self() == a1)
  {
    v4 = objc_opt_self();
  }

  return NSAllocateObject(v4, 0, a3);
}

+ (NSProtocolChecker)protocolCheckerWithTarget:(NSObject *)anObject protocol:(Protocol *)aProtocol
{
  v4 = [objc_allocWithZone(a1) initWithTarget:anObject protocol:aProtocol];

  return v4;
}

@end