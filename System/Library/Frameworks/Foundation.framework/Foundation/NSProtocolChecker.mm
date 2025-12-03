@interface NSProtocolChecker
+ (NSProtocolChecker)allocWithZone:(_NSZone *)zone;
+ (NSProtocolChecker)protocolCheckerWithTarget:(NSObject *)anObject protocol:(Protocol *)aProtocol;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (const)_localClassNameForClass;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (objc_method_description)methodDescriptionForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation NSProtocolChecker

- (BOOL)respondsToSelector:(SEL)selector
{
  v5 = 1;
  if (!protocol_getMethodDescription([(NSProtocolChecker *)self protocol], selector, 1, 1).name)
  {
    if (!protocol_getMethodDescription([(NSProtocolChecker *)self protocol], selector, 0, 1).name)
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

- (BOOL)conformsToProtocol:(id)protocol
{
  protocol = [(NSProtocolChecker *)self protocol];

  return protocol_conformsToProtocol(protocol, protocol);
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if (!protocol_getMethodDescription([(NSProtocolChecker *)self protocol], selector, 1, 1).name)
  {
    if (!protocol_getMethodDescription([(NSProtocolChecker *)self protocol], selector, 0, 1).name)
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

- (objc_method_description)methodDescriptionForSelector:(SEL)selector
{
  MethodDescription = protocol_getMethodDescription([(NSProtocolChecker *)self protocol], selector, 1, 1);
  types = MethodDescription.types;
  name = MethodDescription.name;
  if (MethodDescription.name || ([(NSProtocolChecker *)self target], (objc_opt_respondsToSelector() & 1) != 0) && (v11 = protocol_getMethodDescription([(NSProtocolChecker *)self protocol], selector, 0, 1), types = v11.types, (name = v11.name) != 0))
  {
    v8 = name;
    v9 = types;
    result = [objc_msgSend(MEMORY[0x1E695DF88] dataWithLength:{16), "mutableBytes"}];
    result->name = v8;
    result->types = v9;
  }

  else if (sel_respondsToSelector_ == selector || sel__conformsToProtocolNamed_ == selector || sel_conformsToProtocol_ == selector)
  {
    v14 = MEMORY[0x1E69E58C0];

    return [v14 instanceMethodDescriptionForSelector:selector];
  }

  else
  {
    return 0;
  }

  return result;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  result = [(NSProtocolChecker *)self methodDescriptionForSelector:selector];
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
  target = [(NSProtocolChecker *)self target];

  return [target _localClassNameForClass];
}

- (void)forwardInvocation:(id)invocation
{
  selector = [invocation selector];
  if (selector != sel_respondsToSelector_ && selector != sel__conformsToProtocolNamed_ && selector != sel_conformsToProtocol_)
  {
    v8 = selector;
    if (![(NSProtocolChecker *)self methodDescriptionForSelector:selector])
    {
      [(NSProtocolChecker *)self doesNotRecognizeSelector:v8];
    }

    self = [(NSProtocolChecker *)self target];
  }

  [invocation invokeWithTarget:self];
}

+ (NSProtocolChecker)allocWithZone:(_NSZone *)zone
{
  selfCopy = self;
  if (objc_opt_self() == self)
  {
    selfCopy = objc_opt_self();
  }

  return NSAllocateObject(selfCopy, 0, zone);
}

+ (NSProtocolChecker)protocolCheckerWithTarget:(NSObject *)anObject protocol:(Protocol *)aProtocol
{
  v4 = [objc_allocWithZone(self) initWithTarget:anObject protocol:aProtocol];

  return v4;
}

@end