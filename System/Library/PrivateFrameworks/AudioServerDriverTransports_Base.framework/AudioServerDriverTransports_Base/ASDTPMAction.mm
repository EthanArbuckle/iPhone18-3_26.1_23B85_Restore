@interface ASDTPMAction
- (ASDTPMAction)initWithConfig:(id)a3 forSequencer:(id)a4;
- (BOOL)asdtHandlesPowerTransition:(int)a3;
- (int)action;
- (int)asdtPowerStateChange:(int)a3;
- (int)executeAction:(unsigned int)a3;
- (int)waitForCompletion:(unsigned int)a3;
- (void)action;
- (void)executeInBackground;
- (void)setName:(id)a3;
@end

@implementation ASDTPMAction

- (ASDTPMAction)initWithConfig:(id)a3 forSequencer:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = ASDTPMAction;
  v7 = [(ASDTPMDevice *)&v14 initWithConfig:v6 forSequencer:a4];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_5;
  }

  [(ASDTPMAction *)v7 setActionState:1768189029];
  v9 = objc_alloc_init(MEMORY[0x277CCA928]);
  [(ASDTPMAction *)v8 setCondition:v9];

  v10 = [(ASDTPMAction *)v8 condition];

  if (!v10)
  {
    v12 = ASDTBaseLogType();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMAction initWithConfig:v8 forSequencer:?];
    }

    goto LABEL_10;
  }

  [(ASDTPMDevice *)v8 setPmNoStateChangeOnFailure:1];
  -[ASDTPMAction setExecuteTransition:](v8, "setExecuteTransition:", [v6 asdtPMActionExecuteTransition]);
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

  -[ASDTPMAction setBackgroundTransition:](v8, "setBackgroundTransition:", [v6 asdtPMActionBackgroundTransition]);
  -[ASDTPMAction setOnce:](v8, "setOnce:", [v6 asdtPMActionOnce]);
LABEL_5:
  v11 = v8;
LABEL_11:

  return v11;
}

- (void)setName:(id)a3
{
  v7.receiver = self;
  v7.super_class = ASDTPMAction;
  v4 = a3;
  [(ASDTPMDevice *)&v7 setName:v4];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.%@.cond", "com.apple.AudioServerDriverTransports", v4, v7.receiver, v7.super_class];

  v6 = [(ASDTPMAction *)self condition];
  [v6 setName:v5];
}

- (int)executeAction:(unsigned int)a3
{
  v20 = *MEMORY[0x277D85DE8];
  LODWORD(v5) = 2003329396;
  if ([(ASDTPMAction *)self actionState]== 1920298606 && [(ASDTPMAction *)self actionIteration]== a3)
  {
    v6 = [(ASDTPMAction *)self condition];
    [v6 unlock];

    v7 = ASDTBaseLogType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(ASDTPMAction *)self executeAction:a3, v7];
    }

    v5 = [(ASDTPMAction *)self action];
    v8 = ASDTBaseLogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(ASDTPMDevice *)self name];
      v14 = 138412802;
      v15 = v13;
      v16 = 1024;
      v17 = a3;
      v18 = 1024;
      v19 = v5;
      _os_log_debug_impl(&dword_241659000, v8, OS_LOG_TYPE_DEBUG, "%@: Action iteration %u completed with result: %x", &v14, 0x18u);
    }

    v9 = [(ASDTPMAction *)self condition];
    [v9 lock];

    if ([(ASDTPMAction *)self actionState]== 1920298606 && [(ASDTPMAction *)self actionIteration]== a3)
    {
      [(ASDTPMAction *)self setActionResult:v5];
      [(ASDTPMAction *)self setActionState:1685024357];
      v10 = [(ASDTPMAction *)self condition];
      [v10 broadcast];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)executeInBackground
{
  objc_initWeak(&location, self);
  [(ASDTPMAction *)self setActionState:1920298606];
  [(ASDTPMAction *)self setActionIteration:[(ASDTPMAction *)self actionIteration]+ 1];
  v3 = [(ASDTPMAction *)self actionIteration];
  v4 = [(ASDTPMDevice *)self parentSequencer];
  v5 = [v4 parentDevice];
  v6 = [v5 concurrentQueue];

  if (!v6)
  {
    v6 = +[ASDTDeviceManager concurrentQueue];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ASDTPMAction_executeInBackground__block_invoke;
  block[3] = &unk_278CE6460;
  objc_copyWeak(&v8, &location);
  v9 = v3;
  dispatch_async(v6, block);
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

- (BOOL)asdtHandlesPowerTransition:(int)a3
{
  if ([(ASDTPMAction *)self executeTransition]== a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [(ASDTPMAction *)self backgroundTransition];
    if (v5)
    {
      LOBYTE(v5) = [(ASDTPMAction *)self backgroundTransition]== a3;
    }
  }

  return v5;
}

- (int)asdtPowerStateChange:(int)a3
{
  if ([(ASDTPMAction *)self backgroundTransition])
  {
    v5 = [(ASDTPMAction *)self condition];
    [v5 lock];

    v6 = [(ASDTPMAction *)self actionState];
    if (v6 != 1685024357)
    {
      if (v6 != 1920298606)
      {
        if (v6 != 1768189029 || [(ASDTPMAction *)self backgroundTransition]!= a3)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if ([(ASDTPMAction *)self executeTransition]!= a3)
      {
        if ((asdtPowerTransitionsInOrder(a3, [(ASDTPMAction *)self executeTransition]) & 1) == 0)
        {
          [(ASDTPMAction *)self setActionState:1768189029];
        }

        goto LABEL_28;
      }

      while ([(ASDTPMAction *)self actionState]== 1920298606)
      {
        v10 = [(ASDTPMAction *)self condition];
        [v10 wait];
      }

      if ([(ASDTPMAction *)self actionState]!= 1685024357)
      {
        v9 = 1852990585;
        goto LABEL_29;
      }
    }

    if ([(ASDTPMAction *)self executeTransition]!= a3)
    {
      if ([(ASDTPMAction *)self backgroundTransition]!= a3 || [(ASDTPMAction *)self once]&& ![(ASDTPMAction *)self actionResult])
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

  if ([(ASDTPMAction *)self executeTransition]== a3)
  {
    v7 = [(ASDTPMAction *)self condition];
    [v7 lock];

    if ([(ASDTPMAction *)self actionState]== 1768189029 || [(ASDTPMAction *)self actionState]== 1685024357 && (![(ASDTPMAction *)self once]|| [(ASDTPMAction *)self actionResult]))
    {
      [(ASDTPMAction *)self setActionState:1920298606];
      [(ASDTPMAction *)self setActionIteration:[(ASDTPMAction *)self actionIteration]+ 1];
      v8 = [(ASDTPMAction *)self executeAction:[(ASDTPMAction *)self actionIteration]];
LABEL_23:
      v9 = v8;
LABEL_29:
      v11 = [(ASDTPMAction *)self condition];
      [v11 unlock];

      return v9;
    }

LABEL_22:
    v8 = [(ASDTPMAction *)self actionResult];
    goto LABEL_23;
  }

  return 0;
}

- (int)waitForCompletion:(unsigned int)a3
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3 / 1000000.0];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(ASDTPMAction *)self condition];
  [v5 lock];

  if ([(ASDTPMAction *)self actionState]== 1685024357)
  {
LABEL_5:
    v6 = [(ASDTPMAction *)self actionResult];
    goto LABEL_6;
  }

  while (1)
  {
    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(ASDTPMAction *)v15 waitForCompletion:v16, v11];
    }

    v12 = [(ASDTPMAction *)self condition];
    v13 = v12;
    if (!v4)
    {
      [v12 wait];

      goto LABEL_15;
    }

    v14 = [v12 waitUntilDate:v4];

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

  v6 = 1852990585;
LABEL_6:
  v7 = [(ASDTPMAction *)self condition];
  [v7 unlock];

  v8 = ASDTBaseLogType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(ASDTPMAction *)self waitForCompletion:v6, v8];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
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
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end