@interface FPFrameworkOverridesIterator
+ (id)allOverrides;
+ (id)newIteratorForURL:(__CFURL *)l withNotFoundHandler:(id)handler;
+ (void)addOverride:(id)override;
+ (void)removeOverride:(id)override;
- (FPFrameworkOverridesIterator)initWithOverrides:(id)overrides url:(__CFURL *)url noSuitableModuleFoundHandler:(id)handler;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)callNextOverrides;
- (void)finish;
- (void)forwardInvocation:(id)invocation;
@end

@implementation FPFrameworkOverridesIterator

+ (id)newIteratorForURL:(__CFURL *)l withNotFoundHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [FPFrameworkOverridesIterator alloc];
  v7 = cachedFrameworkOverridingObjects();
  v8 = [(FPFrameworkOverridesIterator *)v6 initWithOverrides:v7 url:l noSuitableModuleFoundHandler:handlerCopy];

  return v8;
}

+ (id)allOverrides
{
  v2 = cachedFrameworkOverridingObjects();
  v3 = [v2 copy];

  return v3;
}

- (FPFrameworkOverridesIterator)initWithOverrides:(id)overrides url:(__CFURL *)url noSuitableModuleFoundHandler:(id)handler
{
  overridesCopy = overrides;
  objc_storeStrong(&self->_overrides, overrides);
  handlerCopy = handler;
  v11 = _Block_copy(handlerCopy);

  noSuitableModuleFoundHandler = self->_noSuitableModuleFoundHandler;
  self->_noSuitableModuleFoundHandler = v11;

  if (url)
  {
    self->_checkURL = 1;
    v13 = FPURLMightBeInFileProvider(url);
  }

  else
  {
    v13 = 0;
    self->_checkURL = 0;
  }

  self->_mightBeFPURL = v13;

  return self;
}

- (void)callNextOverrides
{
  if (!self->_invocation)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPFrameworkOverridesIterator.m" lineNumber:230 description:@"Object misuses: you can only call -callNextOverrides after you have invoked the method once"];
  }

  currentIndex = self->_currentIndex;
  if (currentIndex >= [(NSArray *)self->_overrides count])
  {
LABEL_8:
    noSuitableModuleFoundHandler = self->_noSuitableModuleFoundHandler;
    if (noSuitableModuleFoundHandler)
    {
      noSuitableModuleFoundHandler[2]();
      v8 = self->_noSuitableModuleFoundHandler;
    }

    else
    {
      v8 = 0;
    }

    self->_noSuitableModuleFoundHandler = 0;

    invocation = self->_invocation;
    self->_invocation = 0;
  }

  else
  {
    while (1)
    {
      v11 = [(NSArray *)self->_overrides objectAtIndexedSubscript:self->_currentIndex];
      ++self->_currentIndex;
      [(NSInvocation *)self->_invocation selector];
      if ((objc_opt_respondsToSelector() & 1) != 0 && (!self->_checkURL || self->_mightBeFPURL))
      {
        break;
      }

      v6 = self->_currentIndex;
      if (v6 >= [(NSArray *)self->_overrides count])
      {
        goto LABEL_8;
      }
    }

    fp_copy = [(NSInvocation *)self->_invocation fp_copy];
    [fp_copy invokeWithTarget:v11];

    invocation = v11;
  }
}

- (void)finish
{
  invocation = self->_invocation;
  self->_invocation = 0;
  MEMORY[0x1EEE66BB8]();
}

+ (void)addOverride:(id)override
{
  if (override)
  {
    overrideCopy = override;
    v4 = cachedFrameworkOverridingObjects();
    v5 = [frameworkOverridingObjects mutableCopy];
    [v5 insertObject:overrideCopy atIndex:0];

    v6 = frameworkOverridingObjects;
    frameworkOverridingObjects = v5;
  }
}

+ (void)removeOverride:(id)override
{
  if (override)
  {
    v3 = frameworkOverridingObjects;
    overrideCopy = override;
    v5 = [v3 mutableCopy];
    [v5 removeObject:overrideCopy];

    v6 = frameworkOverridingObjects;
    frameworkOverridingObjects = v5;
  }
}

- (void)forwardInvocation:(id)invocation
{
  objc_storeStrong(&self->_invocation, invocation);
  invocationCopy = invocation;
  [(NSInvocation *)self->_invocation retainArguments];

  [(FPFrameworkOverridesIterator *)self callNextOverrides];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  MethodDescription = protocol_getMethodDescription(&unk_1F1FF3C48, selector, 0, 1);
  if (MethodDescription == 0uLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:MethodDescription.types];
  }

  return v4;
}

@end