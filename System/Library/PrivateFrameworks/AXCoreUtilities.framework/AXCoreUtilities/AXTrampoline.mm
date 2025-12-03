@interface AXTrampoline
+ (id)methodNotFoundSentinal;
+ (id)trampolineWithCaller:(id)caller targetClass:(Class)class;
- (AXTrampoline)initWithCaller:(id)caller targetClass:(Class)class;
- (BOOL)callerIsClass;
- (Class)targetClass;
- (id)caller;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_findIMPForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation AXTrampoline

+ (id)trampolineWithCaller:(id)caller targetClass:(Class)class
{
  callerCopy = caller;
  v6 = [[AXTrampoline alloc] initWithCaller:callerCopy targetClass:class];

  return v6;
}

+ (id)methodNotFoundSentinal
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AXTrampoline_methodNotFoundSentinal__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (methodNotFoundSentinal_onceToken != -1)
  {
    dispatch_once(&methodNotFoundSentinal_onceToken, block);
  }

  v2 = methodNotFoundSentinal__shared;

  return v2;
}

uint64_t __38__AXTrampoline_methodNotFoundSentinal__block_invoke(uint64_t a1)
{
  methodNotFoundSentinal__shared = [*(a1 + 32) methodSignatureForSelector:sel_methodDoesNotExistSentinal];

  return MEMORY[0x1EEE66BB8]();
}

- (AXTrampoline)initWithCaller:(id)caller targetClass:(Class)class
{
  callerCopy = caller;
  v10.receiver = self;
  v10.super_class = AXTrampoline;
  v7 = [(AXTrampoline *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_caller, callerCopy);
    objc_storeWeak(&v8->_targetClass, class);
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  caller = [(AXTrampoline *)self caller];
  v5 = [v3 stringWithFormat:@"AXTrampoline:<%p>. caller:%@ target:%@", self, caller, -[AXTrampoline targetClass](self, "targetClass")];

  return v5;
}

- (BOOL)callerIsClass
{
  WeakRetained = objc_loadWeakRetained(&self->_caller);
  Class = object_getClass(WeakRetained);
  isMetaClass = class_isMetaClass(Class);

  return isMetaClass;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  methodSignature = [invocationCopy methodSignature];
  v5 = +[AXTrampoline methodNotFoundSentinal];

  if (methodSignature == v5)
  {
    if ([(AXTrampoline *)self warnAboutUnknownSelectors])
    {
      _AXLogWithFacility(1, 0, 1, 0, 0, 0, 0, 0.0, 0, 1, @"No method signature to act on. Ignoring this invocation");
    }
  }

  else
  {
    v6 = -[AXTrampoline _findIMPForSelector:](self, "_findIMPForSelector:", [invocationCopy selector]);
    if (v6)
    {
      v7 = v6;
      caller = [(AXTrampoline *)self caller];
      [invocationCopy setTarget:caller];

      [invocationCopy invokeUsingIMP:v7];
    }

    else if ([(AXTrampoline *)self warnAboutUnknownSelectors])
    {
      v9 = NSStringFromSelector([invocationCopy selector]);
      WeakRetained = objc_loadWeakRetained(&self->_caller);
      v11 = objc_loadWeakRetained(&self->_targetClass);
      _AXLogWithFacility(1, 0, 1, 0, 0, 0, 0, 0.0, 0, 1, @"An IMP could not be found for the invocation with selector:%@. caller:%@ target:%@");
    }
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  caller = [(AXTrampoline *)self caller];
  v6 = [caller methodSignatureForSelector:selector];
  if (!v6)
  {
    if ([(AXTrampoline *)self warnAboutUnknownSelectors])
    {
      v8 = NSStringFromSelector(selector);
      _AXLogWithFacility(1, 0, 1, 0, 0, 0, 0, 0.0, 0, 1, @"A methodSignature could not be found for selector:%@, on caller:%@. You probably should not be trampolining this method");
    }

    v6 = +[AXTrampoline methodNotFoundSentinal];
  }

  return v6;
}

- (void)_findIMPForSelector:(SEL)selector
{
  outCount = 0;
  targetClass = [(AXTrampoline *)self targetClass];
  callerIsClass = [(AXTrampoline *)self callerIsClass];
  Class = targetClass;
  if (callerIsClass)
  {
    Class = object_getClass(targetClass);
  }

  v8 = class_copyMethodList(Class, &outCount);
  if (v8)
  {
    v9 = v8;
    if (outCount)
    {
      v10 = 0;
      while (method_getName(v9[v10]) != selector)
      {
        if (++v10 >= outCount)
        {
          goto LABEL_8;
        }
      }

      Implementation = method_getImplementation(v9[v10]);
    }

    else
    {
LABEL_8:
      Implementation = 0;
    }

    free(v9);
  }

  else
  {
    Implementation = 0;
  }

  return Implementation;
}

- (id)caller
{
  WeakRetained = objc_loadWeakRetained(&self->_caller);

  return WeakRetained;
}

- (Class)targetClass
{
  WeakRetained = objc_loadWeakRetained(&self->_targetClass);

  return WeakRetained;
}

@end