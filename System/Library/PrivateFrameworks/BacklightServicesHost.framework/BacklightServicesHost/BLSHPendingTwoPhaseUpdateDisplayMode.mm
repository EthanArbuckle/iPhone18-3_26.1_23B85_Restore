@interface BLSHPendingTwoPhaseUpdateDisplayMode
- (BLSHPendingTwoPhaseUpdateDisplayMode)previous;
- (BOOL)isFullyCompleted;
- (BOOL)isStarted;
- (id)_inProgressOperation:(NSObject *)a1;
- (id)_inProgressOperationFromSelfFirst:(id)a1;
- (id)description;
- (id)first;
- (id)last;
- (id)rampOperation;
@end

@implementation BLSHPendingTwoPhaseUpdateDisplayMode

- (BOOL)isFullyCompleted
{
  v3 = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self first];
  if ([v3 isCompleted])
  {
    v4 = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self last];
    v5 = [v4 isCompleted];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isStarted
{
  v7.receiver = self;
  v7.super_class = BLSHPendingTwoPhaseUpdateDisplayMode;
  if (![(BLSHPendingUpdateDisplayMode *)&v7 isStarted])
  {
    return 0;
  }

  if (![(BLSHPendingUpdateDisplayMode *)self isCompleted])
  {
    return 1;
  }

  v3 = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self next];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [v3 isStarted];

  return v5;
}

- (id)first
{
  v2 = self;
  v3 = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self previous];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

- (id)last
{
  v2 = self;
  v3 = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self next];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

- (id)rampOperation
{
  v3 = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self previous];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self next];
  }

  v6 = v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_previous);
  v5 = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self isStarted];
  if (WeakRetained)
  {
    v6 = @"started";
  }

  else
  {
    v6 = @"bothStarted";
  }

  v7 = [v3 appendBool:v5 withName:v6];
  v8 = [v3 appendBool:-[BLSHPendingUpdateDisplayMode isCompleted](self withName:{"isCompleted"), @"completed"}];
  v9 = NSStringFromBLSBacklightDisplayMode([(BLSHPendingUpdateDisplayMode *)self targetDisplayMode]);
  [v3 appendString:v9 withName:@"target"];

  v10 = [v3 appendPointer:WeakRetained withName:@"previous"];
  v11 = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self next];
  v12 = [v3 appendObject:v11 withName:@"next"];

  v13 = [v3 build];

  return v13;
}

- (BLSHPendingTwoPhaseUpdateDisplayMode)previous
{
  WeakRetained = objc_loadWeakRetained(&self->_previous);

  return WeakRetained;
}

- (id)_inProgressOperation:(NSObject *)a1
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      v3 = [a1 first];
      if (v3 == a1)
      {
        v4 = [BLSHPendingTwoPhaseUpdateDisplayMode _inProgressOperationFromSelfFirst:a1];
      }

      else
      {
        v11.receiver = a1;
        v11.super_class = BLSHPendingTwoPhaseUpdateDisplayMode;
        v4 = [&v11 inProgressOperation];
        v5 = bls_backlight_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109634;
          v13 = 1;
          OUTLINED_FUNCTION_2_10();
          OUTLINED_FUNCTION_3_7(&dword_21FD11000, v8, v9, "_inProgressOperation: checkFirst:%{BOOL}u first!=self returning %p from super self:%{public}@", buf);
        }
      }
    }

    else
    {
      v10.receiver = a1;
      v10.super_class = BLSHPendingTwoPhaseUpdateDisplayMode;
      v4 = [&v10 inProgressOperation];
      v3 = bls_backlight_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109634;
        v13 = 0;
        OUTLINED_FUNCTION_2_10();
        _os_log_debug_impl(&dword_21FD11000, v3, OS_LOG_TYPE_DEBUG, "_inProgressOperation: checkFirst:%{BOOL}u returning %p from super self:%{public}@", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_inProgressOperationFromSelfFirst:(id)a1
{
  v1 = a1;
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = BLSHPendingTwoPhaseUpdateDisplayMode;
    v2 = objc_msgSendSuper2(&v16, sel_inProgressOperation);
    if (v2)
    {
      v3 = v2;
      v4 = bls_backlight_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_0_12();
        v18 = v3;
        OUTLINED_FUNCTION_1_11();
        OUTLINED_FUNCTION_3_7(&dword_21FD11000, v11, v12, "_inProgressOperation: checkFirst:%{BOOL}u first==self returning %p from super self:%{public}@", buf);
      }

      v1 = v3;
      goto LABEL_14;
    }

    v5 = [v1 last];
    if (!v5)
    {
      v8 = bls_backlight_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_0_12();
        v18 = 0;
        OUTLINED_FUNCTION_1_11();
        OUTLINED_FUNCTION_3_7(&dword_21FD11000, v14, v15, "_inProgressOperation: checkFirst:%{BOOL}u first==self last==nil returning %p from super self:%{public}@", buf);
      }

      v1 = 0;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(BLSHPendingTwoPhaseUpdateDisplayMode *)v5 _inProgressOperation:?];
      v7 = bls_backlight_log();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_0_12();
      v18 = v6;
      OUTLINED_FUNCTION_1_11();
      v13 = "_inProgressOperation: checkFirst:%{BOOL}u first==self returning %p from [last _inProgressOperation:NO] self:%{public}@";
    }

    else
    {
      v6 = [v5 inProgressOperation];
      v7 = bls_backlight_log();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
LABEL_9:

        v1 = v6;
LABEL_13:

LABEL_14:
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_0_12();
      v18 = v6;
      OUTLINED_FUNCTION_1_11();
      v13 = "_inProgressOperation: checkFirst:%{BOOL}u first==self returning %p from last self:%{public}@";
    }

    _os_log_debug_impl(&dword_21FD11000, v7, OS_LOG_TYPE_DEBUG, v13, buf, 0x1Cu);
    goto LABEL_9;
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];

  return v1;
}

@end