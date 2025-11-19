@interface FPFrameworkOverridesIterator
+ (id)allOverrides;
+ (id)newIteratorForURL:(__CFURL *)a3 withNotFoundHandler:(id)a4;
+ (void)addOverride:(id)a3;
+ (void)removeOverride:(id)a3;
- (FPFrameworkOverridesIterator)initWithOverrides:(id)a3 url:(__CFURL *)a4 noSuitableModuleFoundHandler:(id)a5;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)callNextOverrides;
- (void)finish;
- (void)forwardInvocation:(id)a3;
@end

@implementation FPFrameworkOverridesIterator

+ (id)newIteratorForURL:(__CFURL *)a3 withNotFoundHandler:(id)a4
{
  v5 = a4;
  v6 = [FPFrameworkOverridesIterator alloc];
  v7 = cachedFrameworkOverridingObjects();
  v8 = [(FPFrameworkOverridesIterator *)v6 initWithOverrides:v7 url:a3 noSuitableModuleFoundHandler:v5];

  return v8;
}

+ (id)allOverrides
{
  v2 = cachedFrameworkOverridingObjects();
  v3 = [v2 copy];

  return v3;
}

- (FPFrameworkOverridesIterator)initWithOverrides:(id)a3 url:(__CFURL *)a4 noSuitableModuleFoundHandler:(id)a5
{
  v9 = a3;
  objc_storeStrong(&self->_overrides, a3);
  v10 = a5;
  v11 = _Block_copy(v10);

  noSuitableModuleFoundHandler = self->_noSuitableModuleFoundHandler;
  self->_noSuitableModuleFoundHandler = v11;

  if (a4)
  {
    self->_checkURL = 1;
    v13 = FPURLMightBeInFileProvider(a4);
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
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"FPFrameworkOverridesIterator.m" lineNumber:230 description:@"Object misuses: you can only call -callNextOverrides after you have invoked the method once"];
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

    v10 = [(NSInvocation *)self->_invocation fp_copy];
    [v10 invokeWithTarget:v11];

    invocation = v11;
  }
}

- (void)finish
{
  invocation = self->_invocation;
  self->_invocation = 0;
  MEMORY[0x1EEE66BB8]();
}

+ (void)addOverride:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = cachedFrameworkOverridingObjects();
    v5 = [frameworkOverridingObjects mutableCopy];
    [v5 insertObject:v3 atIndex:0];

    v6 = frameworkOverridingObjects;
    frameworkOverridingObjects = v5;
  }
}

+ (void)removeOverride:(id)a3
{
  if (a3)
  {
    v3 = frameworkOverridingObjects;
    v4 = a3;
    v5 = [v3 mutableCopy];
    [v5 removeObject:v4];

    v6 = frameworkOverridingObjects;
    frameworkOverridingObjects = v5;
  }
}

- (void)forwardInvocation:(id)a3
{
  objc_storeStrong(&self->_invocation, a3);
  v5 = a3;
  [(NSInvocation *)self->_invocation retainArguments];

  [(FPFrameworkOverridesIterator *)self callNextOverrides];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  MethodDescription = protocol_getMethodDescription(&unk_1F1FF3C48, a3, 0, 1);
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