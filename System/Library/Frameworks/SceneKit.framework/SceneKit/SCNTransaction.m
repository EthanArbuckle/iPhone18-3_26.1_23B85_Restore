@interface SCNTransaction
+ (BOOL)immediateMode;
+ (CAMediaTimingFunction)animationTimingFunction;
+ (__C3DScene)immediateModeRestrictedContext;
+ (void)enqueueCommandForObject:(id)a3 immediateTransactionBlock:(id)a4;
+ (void)performPresentationInstanceQueriesInScene:(id)a3 usingBlock:(id)a4;
+ (void)postCommandWithContext:(__C3DScene *)a3 object:(id)a4 applyBlock:(id)a5;
+ (void)postCommandWithContext:(__C3DScene *)a3 object:(id)a4 key:(id)a5 applyBlock:(id)a6;
+ (void)postCommandWithContext:(__C3DScene *)a3 object:(id)a4 key:(id)a5 subscriptIndex:(unint64_t)a6 derivedKeyPath:(id)a7 applyBlock:(id)a8;
+ (void)postCommandWithContext:(__C3DScene *)a3 object:(id)a4 key:(id)a5 subscriptKey:(id)a6 derivedKeyPath:(id)a7 applyBlock:(id)a8;
+ (void)postCommandWithContext:(__C3DScene *)a3 object:(id)a4 keyPath:(id)a5 applyBlock:(id)a6;
+ (void)setAnimationTimingFunction:(CAMediaTimingFunction *)animationTimingFunction;
- (void)setAnimationTimingFunction:(id)a3;
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

+ (void)postCommandWithContext:(__C3DScene *)a3 object:(id)a4 applyBlock:(id)a5
{
  Current = C3DTransactionGetCurrent();
  if (C3DTransactionAllowImmediate(Current, a3))
  {
    v10 = *(a5 + 2);
    v9.n128_u64[0] = 0;

    v10(a5, v9);
  }

  else
  {
    v11 = [a4 __CFObject];

    C3DTransactionAddCommandBlock(Current, a3, a4, v11, 0, a5);
  }
}

+ (void)postCommandWithContext:(__C3DScene *)a3 object:(id)a4 keyPath:(id)a5 applyBlock:(id)a6
{
  Current = C3DTransactionGetCurrent();
  if (C3DTransactionAllowImmediate(Current, a3))
  {
    (*(a6 + 2))(a6, 0.0);
    if (a3 && a5)
    {
      v11 = [a4 __CFObject];

      C3DTransactionUpdateModelValueForKeypathIfNeeded(a3, v11, a5);
    }
  }

  else
  {
    v12 = [a4 __CFObject];

    C3DTransactionAddCommandBlock(Current, a3, a4, v12, a5, a6);
  }
}

+ (void)postCommandWithContext:(__C3DScene *)a3 object:(id)a4 key:(id)a5 subscriptIndex:(unint64_t)a6 derivedKeyPath:(id)a7 applyBlock:(id)a8
{
  Current = C3DTransactionGetCurrent();
  if (C3DTransactionAllowImmediate(Current, a3))
  {
    (*(a8 + 2))(a8, 0.0);
    if (a3 && a7)
    {
      v15 = [a4 __CFObject];

      C3DTransactionUpdateModelValueForKeyAndSubscriptIndexIfNeeded(a3, v15, a5, a6);
    }
  }

  else
  {
    v16 = [a4 __CFObject];

    C3DTransactionAddCommandBlock(Current, a3, a4, v16, a7, a8);
  }
}

+ (void)postCommandWithContext:(__C3DScene *)a3 object:(id)a4 key:(id)a5 subscriptKey:(id)a6 derivedKeyPath:(id)a7 applyBlock:(id)a8
{
  Current = C3DTransactionGetCurrent();
  if (C3DTransactionAllowImmediate(Current, a3))
  {
    (*(a8 + 2))(a8, 0.0);
    if (a3 && a7)
    {
      v15 = [a4 __CFObject];

      C3DTransactionUpdateModelValueForKeyAndSubscriptKeyIfNeeded(a3, v15, a5, a6);
    }
  }

  else
  {
    v16 = [a4 __CFObject];

    C3DTransactionAddCommandBlock(Current, a3, a4, v16, a7, a8);
  }
}

+ (void)postCommandWithContext:(__C3DScene *)a3 object:(id)a4 key:(id)a5 applyBlock:(id)a6
{
  Current = C3DTransactionGetCurrent();
  if (C3DTransactionAllowImmediate(Current, a3))
  {
    (*(a6 + 2))(a6, 0.0);
    if (a3 && a5)
    {
      v11 = [a4 __CFObject];

      C3DTransactionUpdateModelValueForKeyIfNeeded(a3, v11, a5);
    }
  }

  else
  {
    v12 = [a4 __CFObject];

    C3DTransactionAddCommandBlock(Current, a3, a4, v12, a5, a6);
  }
}

+ (void)enqueueCommandForObject:(id)a3 immediateTransactionBlock:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a3 = [a3 scene];
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [a3 sceneRef];
    if (!v8)
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
    v11[4] = a4;
    v11[5] = a2;
    [a1 postCommandWithContext:v8 object:a3 applyBlock:v11];
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

+ (void)performPresentationInstanceQueriesInScene:(id)a3 usingBlock:(id)a4
{
  v5 = [a3 sceneRef];
  v7 = v5;
  if (v5)
  {
    v6 = v5;
    C3DSceneLock(v5);
    (*(a4 + 2))(a4, &v7);
    C3DSceneUnlock(v6);
  }

  else
  {
    (*(a4 + 2))(a4, &v7);
  }
}

- (void)setAnimationTimingFunction:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a3 = [MEMORY[0x277CD9EF8] functionWithName:a3];
  }

  [SCNTransaction setAnimationTimingFunction:a3];
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