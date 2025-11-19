@interface BLSBacklightSceneUpdate
- (BLSBacklightSceneEnvironment_Private)environment;
- (BOOL)areSceneContentsUpdated;
- (BOOL)didStartBacklightRamp;
- (BOOL)isAnimationComplete;
- (id)debugDescription;
- (id)description;
- (id)initForEnvironment:(id)a3 visualState:(id)a4 previousVisualState:(id)a5 frameSpecifier:(id)a6 animated:(BOOL)a7 triggerEvent:(id)a8 touchTargetable:(BOOL)a9 isUpdateToDateSpecifier:(BOOL)a10 sceneContentsUpdated:(id)a11 performBacklightRamp:(id)a12 sceneContentsAnimationComplete:(id)a13;
- (void)performBacklightRampWithDuration:(double)a3;
- (void)sceneContentsAnimationDidComplete;
- (void)sceneContentsDidUpdate;
- (void)setReplacedSceneUpdate:(id)a3;
@end

@implementation BLSBacklightSceneUpdate

- (id)description
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __38__BLSBacklightSceneUpdate_description__block_invoke;
  v10 = &unk_278428688;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:0 block:&v7];
  v5 = [v4 description];

  return v5;
}

void __38__BLSBacklightSceneUpdate_description__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v2 = [*(a1 + 40) appendUInt64:*(a1 + 32) withName:0 format:1];
  v3 = *(a1 + 40);
  v4 = [WeakRetained identifier];
  v5 = [v3 appendUInt64:WeakRetained withName:v4];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (*(v6 + 39))
  {
    v8 = @"flipbook";
  }

  else if ([*(v6 + 40) isAnimated])
  {
    v8 = @"animated";
  }

  else
  {
    v8 = @"snap";
  }

  v9 = [v7 appendObject:v8 withName:0];
  v10 = *(a1 + 40);
  v11 = [*(*(a1 + 32) + 40) previousVisualState];
  v12 = [v11 bls_shortLoggingString];
  v13 = [v10 appendObject:v12 withName:0];

  v14 = *(a1 + 40);
  v15 = [*(*(a1 + 32) + 40) visualState];
  v16 = [v15 bls_shortLoggingString];
  v17 = [v14 appendObject:v16 withName:@"->"];

  v18 = [*(*(a1 + 32) + 40) triggerEvent];
  v19 = v18;
  if (v18)
  {
    v20 = *(a1 + 40);
    v21 = [v18 bls_shortLoggingString];
    v22 = [v20 appendObject:v21 withName:0];
  }
}

- (void)sceneContentsAnimationDidComplete
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21FE25000, a2, OS_LOG_TYPE_ERROR, "sceneContentsAnimationDidComplete should only be called once for update:%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)areSceneContentsUpdated
{
  os_unfair_lock_lock(&self->_lock);
  lock_sceneContentsUpdated = self->_lock_sceneContentsUpdated;
  os_unfair_lock_unlock(&self->_lock);
  return lock_sceneContentsUpdated;
}

- (void)sceneContentsDidUpdate
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_21FE25000, v0, OS_LOG_TYPE_ERROR, "%p sceneContentsDidUpdate should only be called once for update:%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (id)initForEnvironment:(id)a3 visualState:(id)a4 previousVisualState:(id)a5 frameSpecifier:(id)a6 animated:(BOOL)a7 triggerEvent:(id)a8 touchTargetable:(BOOL)a9 isUpdateToDateSpecifier:(BOOL)a10 sceneContentsUpdated:(id)a11 performBacklightRamp:(id)a12 sceneContentsAnimationComplete:(id)a13
{
  v37 = a7;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a8;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v38.receiver = self;
  v38.super_class = BLSBacklightSceneUpdate;
  v26 = [(BLSBacklightSceneUpdate *)&v38 init];
  v27 = v26;
  if (v26)
  {
    v26->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v26->_environment, v18);
    v28 = [[BLSBacklightSceneUpdateContext alloc] initWithVisualState:v19 previousVisualState:v20 frameSpecifier:v21 animated:v37 triggerEvent:v22 touchTargetable:a9];
    context = v27->_context;
    v27->_context = v28;

    v27->_isUpdateToDateSpecifier = a10;
    v30 = MEMORY[0x223D716E0](v23);
    sceneContentsUpdatedBlock = v27->_sceneContentsUpdatedBlock;
    v27->_sceneContentsUpdatedBlock = v30;

    v32 = MEMORY[0x223D716E0](v24);
    performBacklightRampBlock = v27->_performBacklightRampBlock;
    v27->_performBacklightRampBlock = v32;

    v34 = MEMORY[0x223D716E0](v25);
    sceneContentsAnimationCompleteBlock = v27->_sceneContentsAnimationCompleteBlock;
    v27->_sceneContentsAnimationCompleteBlock = v34;
  }

  return v27;
}

- (id)debugDescription
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(BLSBacklightSceneUpdateContext *)self->_context visualState];
  v5 = [v3 appendObject:v4 withName:@"new"];

  v6 = [(BLSBacklightSceneUpdateContext *)self->_context previousVisualState];
  v7 = [v3 appendObject:v6 withName:@"previous"];

  v8 = [(BLSBacklightSceneUpdateContext *)self->_context frameSpecifier];
  v9 = [v3 appendObject:v8 withName:@"specifier" skipIfNil:1];

  v10 = [v3 appendBool:-[BLSBacklightSceneUpdateContext isAnimated](self->_context withName:{"isAnimated"), @"animated"}];
  v11 = [(BLSBacklightSceneUpdateContext *)self->_context triggerEvent];
  v12 = [v3 appendObject:v11 withName:@"trigger" skipIfNil:1];

  v13 = [v3 appendBool:self->_isUpdateToDateSpecifier withName:@"isUpdateToDateSpecifier"];
  v14 = [v3 appendBool:self->_lock_sceneContentsUpdated withName:@"sceneContentsUpdated"];
  v15 = [v3 appendBool:self->_lock_didStartBacklightRamp withName:@"didStartBacklightRamp"];
  v16 = [v3 appendBool:self->_lock_animationComplete withName:@"animationComplete"];
  v17 = [v3 appendBool:self->_performBacklightRampBlock != 0 withName:@"backlightRampNonNil" ifEqualTo:1];
  v18 = [v3 appendBool:self->_sceneContentsAnimationCompleteBlock != 0 withName:@"animationCompletionNonNil" ifEqualTo:1];
  os_unfair_lock_unlock(&self->_lock);
  v19 = [v3 build];

  return v19;
}

- (void)setReplacedSceneUpdate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (([v4 areSceneContentsUpdated] & 1) == 0)
  {
    v5 = MEMORY[0x223D716E0](self->_sceneContentsUpdatedBlock);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __50__BLSBacklightSceneUpdate_setReplacedSceneUpdate___block_invoke;
    v25[3] = &unk_278428978;
    v26 = v4;
    v27 = v5;
    v6 = v5;
    v7 = MEMORY[0x223D716E0](v25);
    sceneContentsUpdatedBlock = self->_sceneContentsUpdatedBlock;
    self->_sceneContentsUpdatedBlock = v7;
  }

  if (([v4 didStartBacklightRamp] & 1) == 0)
  {
    v9 = MEMORY[0x223D716E0](self->_performBacklightRampBlock);
    v10 = [(BLSBacklightSceneUpdateContext *)self->_context isAnimated];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__BLSBacklightSceneUpdate_setReplacedSceneUpdate___block_invoke_2;
    v21[3] = &unk_278428B50;
    v24 = v10;
    v22 = v4;
    v23 = v9;
    v11 = v9;
    v12 = MEMORY[0x223D716E0](v21);
    performBacklightRampBlock = self->_performBacklightRampBlock;
    self->_performBacklightRampBlock = v12;
  }

  if (([v4 isAnimationComplete] & 1) == 0)
  {
    v14 = MEMORY[0x223D716E0](self->_sceneContentsAnimationCompleteBlock);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__BLSBacklightSceneUpdate_setReplacedSceneUpdate___block_invoke_3;
    v18[3] = &unk_278428978;
    v19 = v4;
    v20 = v14;
    v15 = v14;
    v16 = MEMORY[0x223D716E0](v18);
    sceneContentsAnimationCompleteBlock = self->_sceneContentsAnimationCompleteBlock;
    self->_sceneContentsAnimationCompleteBlock = v16;
  }

  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __50__BLSBacklightSceneUpdate_setReplacedSceneUpdate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sceneContentsDidUpdate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __50__BLSBacklightSceneUpdate_setReplacedSceneUpdate___block_invoke_2(uint64_t a1, double a2)
{
  v4 = *(a1 + 32);
  v5 = 0.0;
  if (*(a1 + 48))
  {
    v5 = 0.5;
  }

  [v4 performBacklightRampWithDuration:v5];
  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);
    v6.n128_f64[0] = a2;

    return v8(v6);
  }

  return result;
}

uint64_t __50__BLSBacklightSceneUpdate_setReplacedSceneUpdate___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) sceneContentsAnimationDidComplete];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)didStartBacklightRamp
{
  os_unfair_lock_lock(&self->_lock);
  lock_didStartBacklightRamp = self->_lock_didStartBacklightRamp;
  os_unfair_lock_unlock(&self->_lock);
  return lock_didStartBacklightRamp;
}

- (void)performBacklightRampWithDuration:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  lock_didStartBacklightRamp = self->_lock_didStartBacklightRamp;
  self->_lock_didStartBacklightRamp = 1;
  v6 = MEMORY[0x223D716E0](self->_performBacklightRampBlock);
  performBacklightRampBlock = self->_performBacklightRampBlock;
  self->_performBacklightRampBlock = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (lock_didStartBacklightRamp)
  {
    v8 = bls_scenes_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BLSBacklightSceneUpdate performBacklightRampWithDuration:];
    }

LABEL_10:

    goto LABEL_11;
  }

  v8 = bls_scenes_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (!v6)
  {
    if (v9)
    {
      [BLSBacklightSceneUpdate performBacklightRampWithDuration:];
    }

    goto LABEL_10;
  }

  if (v9)
  {
    [BLSBacklightSceneUpdate performBacklightRampWithDuration:];
  }

  v6[2](v6, a3);
LABEL_11:
}

- (BOOL)isAnimationComplete
{
  os_unfair_lock_lock(&self->_lock);
  lock_animationComplete = self->_lock_animationComplete;
  os_unfair_lock_unlock(&self->_lock);
  return lock_animationComplete;
}

- (BLSBacklightSceneEnvironment_Private)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (void)performBacklightRampWithDuration:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)performBacklightRampWithDuration:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)performBacklightRampWithDuration:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_21FE25000, v0, OS_LOG_TYPE_ERROR, "%p performBacklightRampWithDuration should only be called once for update:%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end