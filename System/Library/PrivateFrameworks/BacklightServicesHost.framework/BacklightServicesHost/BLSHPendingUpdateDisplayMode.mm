@interface BLSHPendingUpdateDisplayMode
+ (id)operationForUpdateFromCurrentDisplayMode:(int64_t)mode toTargetDisplayMode:(int64_t)displayMode;
+ (id)operationForUpdateFromCurrentDisplayMode:(int64_t)mode toTargetDisplayMode:(int64_t)displayMode withConfiguration:(id)configuration;
- (BLSHPendingUpdateDisplayMode)inProgressOperation;
- (BLSHPendingUpdateDisplayMode)initWithCurrentDisplayMode:(int64_t)mode targetDisplayMode:(int64_t)displayMode;
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

  build = [v3 build];

  return build;
}

+ (id)operationForUpdateFromCurrentDisplayMode:(int64_t)mode toTargetDisplayMode:(int64_t)displayMode withConfiguration:(id)configuration
{
  v39 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __111__BLSHPendingUpdateDisplayMode_operationForUpdateFromCurrentDisplayMode_toTargetDisplayMode_withConfiguration___block_invoke;
  v32[3] = &__block_descriptor_40_e38_B16__0__BLSHPendingUpdateDisplayMode_8l;
  v32[4] = displayMode;
  v8 = MEMORY[0x223D70730](v32);
  pendingOperation = [configurationCopy pendingOperation];
  v10 = (v8)[2](v8, pendingOperation);

  if (v10)
  {
    v11 = bls_backlight_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [BLSHPendingUpdateDisplayMode operationForUpdateFromCurrentDisplayMode:configurationCopy toTargetDisplayMode:? withConfiguration:?];
    }

    pendingOperation2 = [configurationCopy pendingOperation];
LABEL_9:
    v16 = pendingOperation2;
    goto LABEL_40;
  }

  abandonedInProgressOperation = [configurationCopy abandonedInProgressOperation];
  v14 = (v8)[2](v8, abandonedInProgressOperation);

  if (v14)
  {
    v15 = bls_backlight_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BLSHPendingUpdateDisplayMode operationForUpdateFromCurrentDisplayMode:configurationCopy toTargetDisplayMode:? withConfiguration:?];
    }

    pendingOperation2 = [configurationCopy abandonedInProgressOperation];
    goto LABEL_9;
  }

  v17 = IsDisplayModeTransitionToAlwaysOn(mode, displayMode);
  v18 = IsDisplayModeTransitionToActiveOn(mode, displayMode);
  pendingOperation3 = [configurationCopy pendingOperation];
  inProgressOperation = [pendingOperation3 inProgressOperation];

  if (inProgressOperation)
  {
    [configurationCopy setIsNullOperationAllowed:0];
    v21 = bls_backlight_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v30 = NSStringFromBLSBacklightDisplayMode(displayMode);
      v31 = NSStringFromBLSBacklightDisplayMode(mode);
      *buf = 138543874;
      v34 = inProgressOperation;
      v35 = 2114;
      v36 = v30;
      v37 = 2114;
      v38 = v31;
      _os_log_debug_impl(&dword_21FD11000, v21, OS_LOG_TYPE_DEBUG, "TSM: pendingIsStartedButIncomplete: %{public}@ targetDisplayMode:%{public}@ currentDisplayMode:%{public}@", buf, 0x20u);
    }

    currentDisplayMode = [inProgressOperation currentDisplayMode];
    if (v17 && IsDisplayModeTransitionToAlwaysOn(currentDisplayMode, [inProgressOperation targetDisplayMode]) || v18 && IsDisplayModeTransitionToActiveOn(currentDisplayMode, objc_msgSend(inProgressOperation, "targetDisplayMode")))
    {
      mode = currentDisplayMode;
    }
  }

  if (![configurationCopy isNullOperationAllowed] || mode != displayMode)
  {
    if (IsActiveOnBrightnessForBLSBacklightDisplayMode(displayMode) && IsAlwaysOnBrightnessForBLSBacklightDisplayMode(mode))
    {
      v23 = [[BLSHPendingDirectRampDisplayMode alloc] initWithRampBeginDisplayMode:3 targetDisplayMode:4];
      v24 = v23;
      if (mode == 3)
      {
        v16 = v23;
LABEL_38:

        goto LABEL_39;
      }

      p_super = [(BLSHPendingUpdateDisplayMode *)[BLSHPendingTwoPhaseUpdateDisplayMode alloc] initWithCurrentDisplayMode:mode targetDisplayMode:3];
      v16 = p_super;
    }

    else
    {
      if (IsActiveOnBrightnessForBLSBacklightDisplayMode(mode) && IsAlwaysOnBrightnessForBLSBacklightDisplayMode(displayMode))
      {
        v16 = [[BLSHPendingDirectRampDisplayMode alloc] initWithRampBeginDisplayMode:4 targetDisplayMode:3];
        if (displayMode == 3)
        {
          goto LABEL_39;
        }

        v25 = [BLSHPendingTwoPhaseUpdateDisplayMode alloc];
        modeCopy = 3;
      }

      else
      {
        if (![configurationCopy isAnimatedTransition] || displayMode != 6 && mode != 6)
        {
          v16 = [[BLSHPendingUpdateDisplayMode alloc] initWithCurrentDisplayMode:mode targetDisplayMode:displayMode];
          goto LABEL_39;
        }

        v16 = [[BLSHPendingDirectRampDisplayMode alloc] initWithRampBeginDisplayMode:mode targetDisplayMode:displayMode];
        if (displayMode == 3)
        {
          goto LABEL_39;
        }

        v25 = [BLSHPendingTwoPhaseUpdateDisplayMode alloc];
        modeCopy = mode;
      }

      v24 = [(BLSHPendingUpdateDisplayMode *)v25 initWithCurrentDisplayMode:modeCopy targetDisplayMode:displayMode];
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

+ (id)operationForUpdateFromCurrentDisplayMode:(int64_t)mode toTargetDisplayMode:(int64_t)displayMode
{
  v6 = objc_opt_new();
  [v6 setIsNullOperationAllowed:0];
  v7 = [BLSHPendingUpdateDisplayMode operationForUpdateFromCurrentDisplayMode:mode toTargetDisplayMode:displayMode withConfiguration:v6];

  return v7;
}

- (BLSHPendingUpdateDisplayMode)initWithCurrentDisplayMode:(int64_t)mode targetDisplayMode:(int64_t)displayMode
{
  v7.receiver = self;
  v7.super_class = BLSHPendingUpdateDisplayMode;
  result = [(BLSHPendingUpdateDisplayMode *)&v7 init];
  if (result)
  {
    result->_currentDisplayMode = mode;
    result->_targetDisplayMode = displayMode;
  }

  return result;
}

- (BLSHPendingUpdateDisplayMode)inProgressOperation
{
  if ([(BLSHPendingUpdateDisplayMode *)self isStarted]&& ![(BLSHPendingUpdateDisplayMode *)self isCompleted])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isStartedButIncomplete
{
  inProgressOperation = [(BLSHPendingUpdateDisplayMode *)self inProgressOperation];
  v3 = inProgressOperation != 0;

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