@interface SCNTransaction
+ (BOOL)immediateMode;
+ (CAMediaTimingFunction)animationTimingFunction;
+ (__C3DScene)immediateModeRestrictedContext;
+ (void)enqueueCommandForObject:(id)object immediateTransactionBlock:(id)block;
+ (void)performPresentationInstanceQueriesInScene:(id)scene usingBlock:(id)block;
+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object applyBlock:(id)block;
+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object key:(id)key applyBlock:(id)block;
+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object key:(id)key subscriptIndex:(unint64_t)index derivedKeyPath:(id)path applyBlock:(id)block;
+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object key:(id)key subscriptKey:(id)subscriptKey derivedKeyPath:(id)path applyBlock:(id)block;
+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object keyPath:(id)path applyBlock:(id)block;
+ (void)setAnimationTimingFunction:(CAMediaTimingFunction *)animationTimingFunction;
- (void)setAnimationTimingFunction:(id)function;
@end

@implementation SCNTransaction

+ (CAMediaTimingFunction)animationTimingFunction
{
  result = C3DTransactionGetTimingFunction();
  if (result)
  {

    return CAMediaTimingFunctionFromC3DTimingFunction(result);
  }

  return result;
}

+ (void)setAnimationTimingFunction:(CAMediaTimingFunction *)animationTimingFunction
{
  v3 = C3DTimingFunctionFromCAMediaTimingFunction(animationTimingFunction);

  C3DTransactionSetTimingFunction(v3);
}

+ (BOOL)immediateMode
{
  Current = C3DTransactionGetCurrent();

  return C3DTransactionIsImmediate(Current);
}

+ (__C3DScene)immediateModeRestrictedContext
{
  Current = C3DTransactionGetCurrent();

  return C3DParticleSystemInstanceGetSystem(Current);
}

+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object applyBlock:(id)block
{
  Current = C3DTransactionGetCurrent();
  if (C3DTransactionAllowImmediate(Current, context))
  {
    v10 = *(block + 2);
    v9.n128_u64[0] = 0;

    v10(block, v9);
  }

  else
  {
    __CFObject = [object __CFObject];

    C3DTransactionAddCommandBlock(Current, context, object, __CFObject, 0, block);
  }
}

+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object keyPath:(id)path applyBlock:(id)block
{
  Current = C3DTransactionGetCurrent();
  if (C3DTransactionAllowImmediate(Current, context))
  {
    (*(block + 2))(block, 0.0);
    if (context && path)
    {
      __CFObject = [object __CFObject];

      C3DTransactionUpdateModelValueForKeypathIfNeeded(context, __CFObject, path);
    }
  }

  else
  {
    __CFObject2 = [object __CFObject];

    C3DTransactionAddCommandBlock(Current, context, object, __CFObject2, path, block);
  }
}

+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object key:(id)key subscriptIndex:(unint64_t)index derivedKeyPath:(id)path applyBlock:(id)block
{
  Current = C3DTransactionGetCurrent();
  if (C3DTransactionAllowImmediate(Current, context))
  {
    (*(block + 2))(block, 0.0);
    if (context && path)
    {
      __CFObject = [object __CFObject];

      C3DTransactionUpdateModelValueForKeyAndSubscriptIndexIfNeeded(context, __CFObject, key, index);
    }
  }

  else
  {
    __CFObject2 = [object __CFObject];

    C3DTransactionAddCommandBlock(Current, context, object, __CFObject2, path, block);
  }
}

+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object key:(id)key subscriptKey:(id)subscriptKey derivedKeyPath:(id)path applyBlock:(id)block
{
  Current = C3DTransactionGetCurrent();
  if (C3DTransactionAllowImmediate(Current, context))
  {
    (*(block + 2))(block, 0.0);
    if (context && path)
    {
      __CFObject = [object __CFObject];

      C3DTransactionUpdateModelValueForKeyAndSubscriptKeyIfNeeded(context, __CFObject, key, subscriptKey);
    }
  }

  else
  {
    __CFObject2 = [object __CFObject];

    C3DTransactionAddCommandBlock(Current, context, object, __CFObject2, path, block);
  }
}

+ (void)postCommandWithContext:(__C3DScene *)context object:(id)object key:(id)key applyBlock:(id)block
{
  Current = C3DTransactionGetCurrent();
  if (C3DTransactionAllowImmediate(Current, context))
  {
    (*(block + 2))(block, 0.0);
    if (context && key)
    {
      __CFObject = [object __CFObject];

      C3DTransactionUpdateModelValueForKeyIfNeeded(context, __CFObject, key);
    }
  }

  else
  {
    __CFObject2 = [object __CFObject];

    C3DTransactionAddCommandBlock(Current, context, object, __CFObject2, key, block);
  }
}

+ (void)enqueueCommandForObject:(id)object immediateTransactionBlock:(id)block
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object = [object scene];
  }

  if (objc_opt_respondsToSelector())
  {
    sceneRef = [object sceneRef];
    if (!sceneRef)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [SCNTransaction enqueueCommandForObject:v9 immediateTransactionBlock:?];
      }
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__SCNTransaction_enqueueCommandForObject_immediateTransactionBlock___block_invoke;
    v11[3] = &unk_278300670;
    v11[4] = block;
    v11[5] = a2;
    [self postCommandWithContext:sceneRef object:object applyBlock:v11];
  }

  else
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[SCNTransaction enqueueCommandForObject:immediateTransactionBlock:];
    }
  }
}

uint64_t __68__SCNTransaction_enqueueCommandForObject_immediateTransactionBlock___block_invoke(uint64_t a1)
{
  if (+[SCNTransaction immediateMode])
  {
    v2 = *(*(a1 + 32) + 16);

    return v2();
  }

  else
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__SCNTransaction_enqueueCommandForObject_immediateTransactionBlock___block_invoke_cold_1(a1);
    }

    [SCNTransaction setImmediateMode:1];
    (*(*(a1 + 32) + 16))();
    return [SCNTransaction setImmediateMode:0];
  }
}

+ (void)performPresentationInstanceQueriesInScene:(id)scene usingBlock:(id)block
{
  sceneRef = [scene sceneRef];
  v7 = sceneRef;
  if (sceneRef)
  {
    v6 = sceneRef;
    C3DSceneLock(sceneRef);
    (*(block + 2))(block, &v7);
    C3DSceneUnlock(v6);
  }

  else
  {
    (*(block + 2))(block, &v7);
  }
}

- (void)setAnimationTimingFunction:(id)function
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    function = [MEMORY[0x277CD9EF8] functionWithName:function];
  }

  [SCNTransaction setAnimationTimingFunction:function];
}

+ (void)enqueueCommandForObject:immediateTransactionBlock:.cold.1()
{
  v0 = objc_opt_class();
  NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v1, v2, "Unreachable code: Unsupported class %@", v3, v4, v5, v6, 2u);
}

+ (void)enqueueCommandForObject:(os_log_t)log immediateTransactionBlock:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "sceneRef";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

@end