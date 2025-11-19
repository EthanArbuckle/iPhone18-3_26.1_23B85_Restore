@interface BLSHPendingUpdateDisplayMode
+ (id)operationForUpdateFromCurrentDisplayMode:(int64_t)a3 toTargetDisplayMode:(int64_t)a4;
+ (id)operationForUpdateFromCurrentDisplayMode:(int64_t)a3 toTargetDisplayMode:(int64_t)a4 withConfiguration:(id)a5;
- (BLSHPendingUpdateDisplayMode)inProgressOperation;
- (BLSHPendingUpdateDisplayMode)initWithCurrentDisplayMode:(int64_t)a3 targetDisplayMode:(int64_t)a4;
- (BOOL)isStartedButIncomplete;
- (NSString)description;
@end

@implementation BLSHPendingUpdateDisplayMode

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[BLSHPendingUpdateDisplayMode isStarted](self withName:{"isStarted"), @"started"}];
  v5 = [v3 appendBool:-[BLSHPendingUpdateDisplayMode isCompleted](self withName:{"isCompleted"), @"completed"}];
  v6 = NSStringFromBLSBacklightDisplayMode(self->_targetDisplayMode);
  [v3 appendString:v6 withName:@"target"];

  v7 = [v3 build];

  return v7;
}

+ (id)operationForUpdateFromCurrentDisplayMode:(int64_t)a3 toTargetDisplayMode:(int64_t)a4 withConfiguration:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __111__BLSHPendingUpdateDisplayMode_operationForUpdateFromCurrentDisplayMode_toTargetDisplayMode_withConfiguration___block_invoke;
  v32[3] = &__block_descriptor_40_e38_B16__0__BLSHPendingUpdateDisplayMode_8l;
  v32[4] = a4;
  v8 = MEMORY[0x223D70730](v32);
  v9 = [v7 pendingOperation];
  v10 = (v8)[2](v8, v9);

  if (v10)
  {
    v11 = bls_backlight_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [BLSHPendingUpdateDisplayMode operationForUpdateFromCurrentDisplayMode:v7 toTargetDisplayMode:? withConfiguration:?];
    }

    v12 = [v7 pendingOperation];
LABEL_9:
    v16 = v12;
    goto LABEL_40;
  }

  v13 = [v7 abandonedInProgressOperation];
  v14 = (v8)[2](v8, v13);

  if (v14)
  {
    v15 = bls_backlight_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BLSHPendingUpdateDisplayMode operationForUpdateFromCurrentDisplayMode:v7 toTargetDisplayMode:? withConfiguration:?];
    }

    v12 = [v7 abandonedInProgressOperation];
    goto LABEL_9;
  }

  v17 = IsDisplayModeTransitionToAlwaysOn(a3, a4);
  v18 = IsDisplayModeTransitionToActiveOn(a3, a4);
  v19 = [v7 pendingOperation];
  v20 = [v19 inProgressOperation];

  if (v20)
  {
    [v7 setIsNullOperationAllowed:0];
    v21 = bls_backlight_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v30 = NSStringFromBLSBacklightDisplayMode(a4);
      v31 = NSStringFromBLSBacklightDisplayMode(a3);
      *buf = 138543874;
      v34 = v20;
      v35 = 2114;
      v36 = v30;
      v37 = 2114;
      v38 = v31;
      _os_log_debug_impl(&dword_21FD11000, v21, OS_LOG_TYPE_DEBUG, "TSM: pendingIsStartedButIncomplete: %{public}@ targetDisplayMode:%{public}@ currentDisplayMode:%{public}@", buf, 0x20u);
    }

    v22 = [v20 currentDisplayMode];
    if (v17 && IsDisplayModeTransitionToAlwaysOn(v22, [v20 targetDisplayMode]) || v18 && IsDisplayModeTransitionToActiveOn(v22, objc_msgSend(v20, "targetDisplayMode")))
    {
      a3 = v22;
    }
  }

  if (![v7 isNullOperationAllowed] || a3 != a4)
  {
    if (IsActiveOnBrightnessForBLSBacklightDisplayMode(a4) && IsAlwaysOnBrightnessForBLSBacklightDisplayMode(a3))
    {
      v23 = [[BLSHPendingDirectRampDisplayMode alloc] initWithRampBeginDisplayMode:3 targetDisplayMode:4];
      v24 = v23;
      if (a3 == 3)
      {
        v16 = v23;
LABEL_38:

        goto LABEL_39;
      }

      p_super = [(BLSHPendingUpdateDisplayMode *)[BLSHPendingTwoPhaseUpdateDisplayMode alloc] initWithCurrentDisplayMode:a3 targetDisplayMode:3];
      v16 = p_super;
    }

    else
    {
      if (IsActiveOnBrightnessForBLSBacklightDisplayMode(a3) && IsAlwaysOnBrightnessForBLSBacklightDisplayMode(a4))
      {
        v16 = [[BLSHPendingDirectRampDisplayMode alloc] initWithRampBeginDisplayMode:4 targetDisplayMode:3];
        if (a4 == 3)
        {
          goto LABEL_39;
        }

        v25 = [BLSHPendingTwoPhaseUpdateDisplayMode alloc];
        v26 = 3;
      }

      else
      {
        if (![v7 isAnimatedTransition] || a4 != 6 && a3 != 6)
        {
          v16 = [[BLSHPendingUpdateDisplayMode alloc] initWithCurrentDisplayMode:a3 targetDisplayMode:a4];
          goto LABEL_39;
        }

        v16 = [[BLSHPendingDirectRampDisplayMode alloc] initWithRampBeginDisplayMode:a3 targetDisplayMode:a4];
        if (a4 == 3)
        {
          goto LABEL_39;
        }

        v25 = [BLSHPendingTwoPhaseUpdateDisplayMode alloc];
        v26 = a3;
      }

      v24 = [(BLSHPendingUpdateDisplayMode *)v25 initWithCurrentDisplayMode:v26 targetDisplayMode:a4];
      p_super = &v16->super;
    }

    [(BLSHPendingTwoPhaseUpdateDisplayMode *)p_super setNext:v24];
    [(BLSHPendingTwoPhaseUpdateDisplayMode *)v24 setPrevious:v16];
    goto LABEL_38;
  }

  v16 = 0;
LABEL_39:

LABEL_40:
  v28 = *MEMORY[0x277D85DE8];

  return v16;
}

BOOL __111__BLSHPendingUpdateDisplayMode_operationForUpdateFromCurrentDisplayMode_toTargetDisplayMode_withConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 isFullyCompleted] & 1) == 0)
  {
    v6 = [v4 last];
    v5 = [v6 targetDisplayMode] == *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)operationForUpdateFromCurrentDisplayMode:(int64_t)a3 toTargetDisplayMode:(int64_t)a4
{
  v6 = objc_opt_new();
  [v6 setIsNullOperationAllowed:0];
  v7 = [BLSHPendingUpdateDisplayMode operationForUpdateFromCurrentDisplayMode:a3 toTargetDisplayMode:a4 withConfiguration:v6];

  return v7;
}

- (BLSHPendingUpdateDisplayMode)initWithCurrentDisplayMode:(int64_t)a3 targetDisplayMode:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = BLSHPendingUpdateDisplayMode;
  result = [(BLSHPendingUpdateDisplayMode *)&v7 init];
  if (result)
  {
    result->_currentDisplayMode = a3;
    result->_targetDisplayMode = a4;
  }

  return result;
}

- (BLSHPendingUpdateDisplayMode)inProgressOperation
{
  if ([(BLSHPendingUpdateDisplayMode *)self isStarted]&& ![(BLSHPendingUpdateDisplayMode *)self isCompleted])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isStartedButIncomplete
{
  v2 = [(BLSHPendingUpdateDisplayMode *)self inProgressOperation];
  v3 = v2 != 0;

  return v3;
}

+ (void)operationForUpdateFromCurrentDisplayMode:(void *)a1 toTargetDisplayMode:withConfiguration:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 abandonedInProgressOperation];
  OUTLINED_FUNCTION_4_5(&dword_21FD11000, v2, v3, "TSM: reusing abandoned:%{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)operationForUpdateFromCurrentDisplayMode:(void *)a1 toTargetDisplayMode:withConfiguration:.cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 pendingOperation];
  OUTLINED_FUNCTION_4_5(&dword_21FD11000, v2, v3, "TSM: using existing pending:%{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end