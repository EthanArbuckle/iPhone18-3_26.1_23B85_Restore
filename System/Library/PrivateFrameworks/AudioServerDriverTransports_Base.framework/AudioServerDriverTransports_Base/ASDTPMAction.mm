@interface ASDTPMAction
- (ASDTPMAction)initWithConfig:(id)config forSequencer:(id)sequencer;
- (BOOL)asdtHandlesPowerTransition:(int)transition;
- (int)action;
- (int)asdtPowerStateChange:(int)change;
- (int)executeAction:(unsigned int)action;
- (int)waitForCompletion:(unsigned int)completion;
- (void)action;
- (void)executeInBackground;
- (void)setName:(id)name;
@end

@implementation ASDTPMAction

- (ASDTPMAction)initWithConfig:(id)config forSequencer:(id)sequencer
{
  configCopy = config;
  v14.receiver = self;
  v14.super_class = ASDTPMAction;
  v7 = [(ASDTPMDevice *)&v14 initWithConfig:configCopy forSequencer:sequencer];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_5;
  }

  [(ASDTPMAction *)v7 setActionState:1768189029];
  v9 = objc_alloc_init(MEMORY[0x277CCA928]);
  [(ASDTPMAction *)v8 setCondition:v9];

  condition = [(ASDTPMAction *)v8 condition];

  if (!condition)
  {
    v12 = ASDTBaseLogType();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMAction initWithConfig:v8 forSequencer:?];
    }

    goto LABEL_10;
  }

  [(ASDTPMDevice *)v8 setPmNoStateChangeOnFailure:1];
  -[ASDTPMAction setExecuteTransition:](v8, "setExecuteTransition:", [configCopy asdtPMActionExecuteTransition]);
  if (![(ASDTPMAction *)v8 executeTransition])
  {
    v12 = ASDTBaseLogType();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMAction initWithConfig:v8 forSequencer:?];
    }

LABEL_10:

    v11 = 0;
    goto LABEL_11;
  }

  -[ASDTPMAction setBackgroundTransition:](v8, "setBackgroundTransition:", [configCopy asdtPMActionBackgroundTransition]);
  -[ASDTPMAction setOnce:](v8, "setOnce:", [configCopy asdtPMActionOnce]);
LABEL_5:
  v11 = v8;
LABEL_11:

  return v11;
}

- (void)setName:(id)name
{
  v7.receiver = self;
  v7.super_class = ASDTPMAction;
  nameCopy = name;
  [(ASDTPMDevice *)&v7 setName:nameCopy];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.%@.cond", "com.apple.AudioServerDriverTransports", nameCopy, v7.receiver, v7.super_class];

  condition = [(ASDTPMAction *)self condition];
  [condition setName:v5];
}

- (int)executeAction:(unsigned int)action
{
  v20 = *MEMORY[0x277D85DE8];
  LODWORD(action) = 2003329396;
  if ([(ASDTPMAction *)self actionState]== 1920298606 && [(ASDTPMAction *)self actionIteration]== action)
  {
    condition = [(ASDTPMAction *)self condition];
    [condition unlock];

    v7 = ASDTBaseLogType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(ASDTPMAction *)self executeAction:action, v7];
    }

    action = [(ASDTPMAction *)self action];
    v8 = ASDTBaseLogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      name = [(ASDTPMDevice *)self name];
      v14 = 138412802;
      v15 = name;
      v16 = 1024;
      actionCopy = action;
      v18 = 1024;
      v19 = action;
      _os_log_debug_impl(&dword_241659000, v8, OS_LOG_TYPE_DEBUG, "%@: Action iteration %u completed with result: %x", &v14, 0x18u);
    }

    condition2 = [(ASDTPMAction *)self condition];
    [condition2 lock];

    if ([(ASDTPMAction *)self actionState]== 1920298606 && [(ASDTPMAction *)self actionIteration]== action)
    {
      [(ASDTPMAction *)self setActionResult:action];
      [(ASDTPMAction *)self setActionState:1685024357];
      condition3 = [(ASDTPMAction *)self condition];
      [condition3 broadcast];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return action;
}

- (void)executeInBackground
{
  objc_initWeak(&location, self);
  [(ASDTPMAction *)self setActionState:1920298606];
  [(ASDTPMAction *)self setActionIteration:[(ASDTPMAction *)self actionIteration]+ 1];
  actionIteration = [(ASDTPMAction *)self actionIteration];
  parentSequencer = [(ASDTPMDevice *)self parentSequencer];
  parentDevice = [parentSequencer parentDevice];
  concurrentQueue = [parentDevice concurrentQueue];

  if (!concurrentQueue)
  {
    concurrentQueue = +[ASDTDeviceManager concurrentQueue];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ASDTPMAction_executeInBackground__block_invoke;
  block[3] = &unk_278CE6460;
  objc_copyWeak(&v8, &location);
  v9 = actionIteration;
  dispatch_async(concurrentQueue, block);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __35__ASDTPMAction_executeInBackground__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained condition];
  [v2 lock];

  [WeakRetained executeAction:*(a1 + 40)];
  v3 = [WeakRetained condition];
  [v3 unlock];
}

- (BOOL)asdtHandlesPowerTransition:(int)transition
{
  if ([(ASDTPMAction *)self executeTransition]== transition)
  {
    LOBYTE(backgroundTransition) = 1;
  }

  else
  {
    backgroundTransition = [(ASDTPMAction *)self backgroundTransition];
    if (backgroundTransition)
    {
      LOBYTE(backgroundTransition) = [(ASDTPMAction *)self backgroundTransition]== transition;
    }
  }

  return backgroundTransition;
}

- (int)asdtPowerStateChange:(int)change
{
  if ([(ASDTPMAction *)self backgroundTransition])
  {
    condition = [(ASDTPMAction *)self condition];
    [condition lock];

    actionState = [(ASDTPMAction *)self actionState];
    if (actionState != 1685024357)
    {
      if (actionState != 1920298606)
      {
        if (actionState != 1768189029 || [(ASDTPMAction *)self backgroundTransition]!= change)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if ([(ASDTPMAction *)self executeTransition]!= change)
      {
        if ((asdtPowerTransitionsInOrder(change, [(ASDTPMAction *)self executeTransition]) & 1) == 0)
        {
          [(ASDTPMAction *)self setActionState:1768189029];
        }

        goto LABEL_28;
      }

      while ([(ASDTPMAction *)self actionState]== 1920298606)
      {
        condition2 = [(ASDTPMAction *)self condition];
        [condition2 wait];
      }

      if ([(ASDTPMAction *)self actionState]!= 1685024357)
      {
        v9 = 1852990585;
        goto LABEL_29;
      }
    }

    if ([(ASDTPMAction *)self executeTransition]!= change)
    {
      if ([(ASDTPMAction *)self backgroundTransition]!= change || [(ASDTPMAction *)self once]&& ![(ASDTPMAction *)self actionResult])
      {
        goto LABEL_28;
      }

LABEL_27:
      [(ASDTPMAction *)self executeInBackground];
LABEL_28:
      v9 = 0;
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  if ([(ASDTPMAction *)self executeTransition]== change)
  {
    condition3 = [(ASDTPMAction *)self condition];
    [condition3 lock];

    if ([(ASDTPMAction *)self actionState]== 1768189029 || [(ASDTPMAction *)self actionState]== 1685024357 && (![(ASDTPMAction *)self once]|| [(ASDTPMAction *)self actionResult]))
    {
      [(ASDTPMAction *)self setActionState:1920298606];
      [(ASDTPMAction *)self setActionIteration:[(ASDTPMAction *)self actionIteration]+ 1];
      actionResult = [(ASDTPMAction *)self executeAction:[(ASDTPMAction *)self actionIteration]];
LABEL_23:
      v9 = actionResult;
LABEL_29:
      condition4 = [(ASDTPMAction *)self condition];
      [condition4 unlock];

      return v9;
    }

LABEL_22:
    actionResult = [(ASDTPMAction *)self actionResult];
    goto LABEL_23;
  }

  return 0;
}

- (int)waitForCompletion:(unsigned int)completion
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  if (completion)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:completion / 1000000.0];
  }

  else
  {
    v4 = 0;
  }

  condition = [(ASDTPMAction *)self condition];
  [condition lock];

  if ([(ASDTPMAction *)self actionState]== 1685024357)
  {
LABEL_5:
    actionResult = [(ASDTPMAction *)self actionResult];
    goto LABEL_6;
  }

  while (1)
  {
    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(ASDTPMAction *)v15 waitForCompletion:v16, v11];
    }

    condition2 = [(ASDTPMAction *)self condition];
    v13 = condition2;
    if (!v4)
    {
      [condition2 wait];

      goto LABEL_15;
    }

    v14 = [condition2 waitUntilDate:v4];

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_15:
    if ([(ASDTPMAction *)self actionState]== 1685024357)
    {
      goto LABEL_5;
    }
  }

  actionResult = 1852990585;
LABEL_6:
  condition3 = [(ASDTPMAction *)self condition];
  [condition3 unlock];

  v8 = ASDTBaseLogType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(ASDTPMAction *)self waitForCompletion:actionResult, v8];
  }

  v9 = *MEMORY[0x277D85DE8];
  return actionResult;
}

- (int)action
{
  v3 = ASDTBaseLogType();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(ASDTPMAction *)self action];
  }

  return 2003329396;
}

- (void)initWithConfig:(void *)a1 forSequencer:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfig:(void *)a1 forSequencer:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)executeAction:(NSObject *)a3 .cold.1(void *a1, int a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  v8 = 1024;
  v9 = a2;
  _os_log_debug_impl(&dword_241659000, a3, OS_LOG_TYPE_DEBUG, "%@: Running action, iteration: %u", v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)waitForCompletion:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 name];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_241659000, a4, OS_LOG_TYPE_DEBUG, "%@: Waiting for completion.", a1, 0xCu);
}

- (void)waitForCompletion:(NSObject *)a3 .cold.2(void *a1, int a2, NSObject *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  v9 = BYTE1(a2);
  if (BYTE1(a2) - 32 >= 0x5F)
  {
    v9 = v7;
  }

  v13 = 1024;
  v14 = a2;
  v15 = 1024;
  v16 = v6;
  v17 = 1024;
  v18 = v8;
  v19 = 1024;
  v20 = v9;
  if (a2 - 32 >= 0x5F)
  {
    v10 = v7;
  }

  else
  {
    v10 = a2;
  }

  v21 = 1024;
  v22 = v10;
  _os_log_debug_impl(&dword_241659000, a3, OS_LOG_TYPE_DEBUG, "%@: Wait done; result %x '%c%c%c%c'.", v12, 0x2Au);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)action
{
  v8 = *MEMORY[0x277D85DE8];
  name = [self name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end