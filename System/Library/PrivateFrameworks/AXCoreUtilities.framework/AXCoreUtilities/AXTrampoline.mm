@interface AXTrampoline
+ (id)methodNotFoundSentinal;
+ (id)trampolineWithCaller:(id)a3 targetClass:(Class)a4;
- (AXTrampoline)initWithCaller:(id)a3 targetClass:(Class)a4;
- (BOOL)callerIsClass;
- (Class)targetClass;
- (id)caller;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_findIMPForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation AXTrampoline

+ (id)trampolineWithCaller:(id)a3 targetClass:(Class)a4
{
  v5 = a3;
  v6 = [[AXTrampoline alloc] initWithCaller:v5 targetClass:a4];

  return v6;
}

+ (id)methodNotFoundSentinal
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AXTrampoline_methodNotFoundSentinal__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (AXTrampoline)initWithCaller:(id)a3 targetClass:(Class)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = AXTrampoline;
  v7 = [(AXTrampoline *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_caller, v6);
    objc_storeWeak(&v8->_targetClass, a4);
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXTrampoline *)self caller];
  v5 = [v3 stringWithFormat:@"AXTrampoline:<%p>. caller:%@ target:%@", self, v4, -[AXTrampoline targetClass](self, "targetClass")];

  return v5;
}

- (BOOL)callerIsClass
{
  WeakRetained = objc_loadWeakRetained(&self->_caller);
  Class = object_getClass(WeakRetained);
  isMetaClass = class_isMetaClass(Class);

  return isMetaClass;
}

- (void)forwardInvocation:(id)a3
{
  v12 = a3;
  v4 = [v12 methodSignature];
  v5 = +[AXTrampoline methodNotFoundSentinal];

  if (v4 == v5)
  {
    if ([(AXTrampoline *)self warnAboutUnknownSelectors])
    {
      _AXLogWithFacility(1, 0, 1, 0, 0, 0, 0, 0.0, 0, 1, @"No method signature to act on. Ignoring this invocation");
    }
  }

  else
  {
    v6 = -[AXTrampoline _findIMPForSelector:](self, "_findIMPForSelector:", [v12 selector]);
    if (v6)
    {
      v7 = v6;
      v8 = [(AXTrampoline *)self caller];
      [v12 setTarget:v8];

      [v12 invokeUsingIMP:v7];
    }

    else if ([(AXTrampoline *)self warnAboutUnknownSelectors])
    {
      v9 = NSStringFromSelector([v12 selector]);
      WeakRetained = objc_loadWeakRetained(&self->_caller);
      v11 = objc_loadWeakRetained(&self->_targetClass);
      _AXLogWithFacility(1, 0, 1, 0, 0, 0, 0, 0.0, 0, 1, @"An IMP could not be found for the invocation with selector:%@. caller:%@ target:%@");
    }
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = [(AXTrampoline *)self caller];
  v6 = [v5 methodSignatureForSelector:a3];
  if (!v6)
  {
    if ([(AXTrampoline *)self warnAboutUnknownSelectors])
    {
      v8 = NSStringFromSelector(a3);
      _AXLogWithFacility(1, 0, 1, 0, 0, 0, 0, 0.0, 0, 1, @"A methodSignature could not be found for selector:%@, on caller:%@. You probably should not be trampolining this method");
    }

    v6 = +[AXTrampoline methodNotFoundSentinal];
  }

  return v6;
}

- (void)_findIMPForSelector:(SEL)a3
{
  outCount = 0;
  v5 = [(AXTrampoline *)self targetClass];
  v6 = [(AXTrampoline *)self callerIsClass];
  Class = v5;
  if (v6)
  {
    Class = object_getClass(v5);
  }

  v8 = class_copyMethodList(Class, &outCount);
  if (v8)
  {
    v9 = v8;
    if (outCount)
    {
      v10 = 0;
      while (method_getName(v9[v10]) != a3)
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