@interface BLSHPendingTwoPhaseUpdateDisplayMode
- (BLSHPendingTwoPhaseUpdateDisplayMode)previous;
- (BOOL)isFullyCompleted;
- (BOOL)isStarted;
- (id)_inProgressOperation:(NSObject *)operation;
- (id)_inProgressOperationFromSelfFirst:(id)first;
- (id)description;
- (id)first;
- (id)last;
- (id)rampOperation;
@end

@implementation BLSHPendingTwoPhaseUpdateDisplayMode

- (BOOL)isFullyCompleted
{
  first = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self first];
  if ([first isCompleted])
  {
    last = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self last];
    isCompleted = [last isCompleted];
  }

  else
  {
    isCompleted = 0;
  }

  return isCompleted;
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

  next = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self next];
  if (!next)
  {
    return 1;
  }

  v4 = next;
  isStarted = [next isStarted];

  return isStarted;
}

- (id)first
{
  selfCopy = self;
  previous = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self previous];
  v4 = previous;
  if (previous)
  {
    selfCopy = previous;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (id)last
{
  selfCopy = self;
  next = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self next];
  v4 = next;
  if (next)
  {
    selfCopy = next;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (id)rampOperation
{
  previous = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self previous];
  v4 = previous;
  if (previous)
  {
    next = previous;
  }

  else
  {
    next = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self next];
  }

  v6 = next;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_previous);
  isStarted = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self isStarted];
  if (WeakRetained)
  {
    v6 = @"started";
  }

  else
  {
    v6 = @"bothStarted";
  }

  v7 = [v3 appendBool:isStarted withName:v6];
  v8 = [v3 appendBool:-[BLSHPendingUpdateDisplayMode isCompleted](self withName:{"isCompleted"), @"completed"}];
  v9 = NSStringFromBLSBacklightDisplayMode([(BLSHPendingUpdateDisplayMode *)self targetDisplayMode]);
  [v3 appendString:v9 withName:@"target"];

  v10 = [v3 appendPointer:WeakRetained withName:@"previous"];
  next = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self next];
  v12 = [v3 appendObject:next withName:@"next"];

  build = [v3 build];

  return build;
}

- (BLSHPendingTwoPhaseUpdateDisplayMode)previous
{
  WeakRetained = objc_loadWeakRetained(&self->_previous);

  return WeakRetained;
}

- (id)_inProgressOperation:(NSObject *)operation
{
  v14 = *MEMORY[0x277D85DE8];
  if (operation)
  {
    if (a2)
    {
      first = [operation first];
      if (first == operation)
      {
        inProgressOperation = [BLSHPendingTwoPhaseUpdateDisplayMode _inProgressOperationFromSelfFirst:operation];
      }

      else
      {
        v11.receiver = operation;
        v11.super_class = BLSHPendingTwoPhaseUpdateDisplayMode;
        inProgressOperation = [&v11 inProgressOperation];
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
      v10.receiver = operation;
      v10.super_class = BLSHPendingTwoPhaseUpdateDisplayMode;
      inProgressOperation = [&v10 inProgressOperation];
      first = bls_backlight_log();
      if (os_log_type_enabled(first, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109634;
        v13 = 0;
        OUTLINED_FUNCTION_2_10();
        _os_log_debug_impl(&dword_21FD11000, first, OS_LOG_TYPE_DEBUG, "_inProgressOperation: checkFirst:%{BOOL}u returning %p from super self:%{public}@", buf, 0x1Cu);
      }
    }
  }

  else
  {
    inProgressOperation = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return inProgressOperation;
}

- (id)_inProgressOperationFromSelfFirst:(id)first
{
  firstCopy = first;
  v19 = *MEMORY[0x277D85DE8];
  if (first)
  {
    v16.receiver = first;
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

      firstCopy = v3;
      goto LABEL_14;
    }

    last = [firstCopy last];
    if (!last)
    {
      v8 = bls_backlight_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_0_12();
        v18 = 0;
        OUTLINED_FUNCTION_1_11();
        OUTLINED_FUNCTION_3_7(&dword_21FD11000, v14, v15, "_inProgressOperation: checkFirst:%{BOOL}u first==self last==nil returning %p from super self:%{public}@", buf);
      }

      firstCopy = 0;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      inProgressOperation = [(BLSHPendingTwoPhaseUpdateDisplayMode *)last _inProgressOperation:?];
      v7 = bls_backlight_log();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_0_12();
      v18 = inProgressOperation;
      OUTLINED_FUNCTION_1_11();
      v13 = "_inProgressOperation: checkFirst:%{BOOL}u first==self returning %p from [last _inProgressOperation:NO] self:%{public}@";
    }

    else
    {
      inProgressOperation = [last inProgressOperation];
      v7 = bls_backlight_log();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
LABEL_9:

        firstCopy = inProgressOperation;
LABEL_13:

LABEL_14:
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_0_12();
      v18 = inProgressOperation;
      OUTLINED_FUNCTION_1_11();
      v13 = "_inProgressOperation: checkFirst:%{BOOL}u first==self returning %p from last self:%{public}@";
    }

    _os_log_debug_impl(&dword_21FD11000, v7, OS_LOG_TYPE_DEBUG, v13, buf, 0x1Cu);
    goto LABEL_9;
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];

  return firstCopy;
}

@end