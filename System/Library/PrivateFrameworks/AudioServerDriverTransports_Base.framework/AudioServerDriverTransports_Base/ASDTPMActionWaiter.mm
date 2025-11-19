@interface ASDTPMActionWaiter
- (ASDTPMAction)waitAction;
- (ASDTPMActionWaiter)initWithConfig:(id)a3 forSequencer:(id)a4;
- (int)action;
- (void)action;
- (void)interestNotification:(int)a3 forDevice:(id)a4;
@end

@implementation ASDTPMActionWaiter

- (ASDTPMActionWaiter)initWithConfig:(id)a3 forSequencer:(id)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = ASDTPMActionWaiter;
  v7 = [(ASDTPMAction *)&v24 initWithConfig:v6 forSequencer:a4];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [v6 asdtDeviceUID];
  v9 = [v6 asdtPMActionWaiterActionName];
  [(ASDTPMActionWaiter *)v7 setWaitActionName:v9];

  -[ASDTPMActionWaiter setWaitTimeoutUs:](v7, "setWaitTimeoutUs:", [v6 asdtPMActionWaiterTimeoutUs]);
  v10 = objc_alloc_init(MEMORY[0x277CCA928]);
  [(ASDTPMActionWaiter *)v7 setWaitForActionCondition:v10];

  v11 = MEMORY[0x277CCACA8];
  v12 = [(ASDTPMDevice *)v7 name];
  v13 = [v11 stringWithFormat:@"%s.%@.cond", "com.apple.AudioServerDriverTransports", v12];
  v14 = [(ASDTPMActionWaiter *)v7 waitForActionCondition];
  [v14 setName:v13];

  if (v8)
  {
    v15 = [(ASDTPMActionWaiter *)v7 waitActionName];
    if (v15)
    {
      v16 = v15;
      v17 = [(ASDTPMActionWaiter *)v7 waitForActionCondition];

      if (v17)
      {
        v18 = [(ASDTPMDevice *)v7 parentSequencer];
        v19 = [v18 parentDevice];
        v20 = [v19 deviceManager];
        [v20 registerObject:v7 withInterests:1 forUID:v8];

LABEL_6:
        v21 = v7;
        goto LABEL_10;
      }
    }
  }

  v22 = ASDTBaseLogType();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [ASDTPMActionWaiter initWithConfig:v7 forSequencer:?];
  }

  v21 = 0;
LABEL_10:

  return v21;
}

- (void)interestNotification:(int)a3 forDevice:(id)a4
{
  v5 = a4;
  v6 = ASDTBaseLogType();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ASDTPMActionWaiter interestNotification:v6 forDevice:?];
  }

  v7 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 pmSequencer];
    v9 = [(ASDTPMActionWaiter *)self waitActionName];
    v10 = [v8 pmDeviceWithName:v9];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(ASDTPMActionWaiter *)self waitForActionCondition];
      [v11 lock];

      [(ASDTPMActionWaiter *)self setWaitAction:v10];
      v12 = [(ASDTPMActionWaiter *)self waitForActionCondition];
      [v12 signal];

      v13 = [(ASDTPMActionWaiter *)self waitForActionCondition];
      [v13 unlock];
    }

    else
    {
      v13 = ASDTBaseLogType();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ASDTPMActionWaiter interestNotification:? forDevice:?];
      }
    }
  }

  else
  {
    v10 = ASDTBaseLogType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMActionWaiter interestNotification:? forDevice:?];
    }
  }
}

- (int)action
{
  *&v18[5] = *MEMORY[0x277D85DE8];
  if ([(ASDTPMActionWaiter *)self waitTimeoutUs])
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{-[ASDTPMActionWaiter waitTimeoutUs](self, "waitTimeoutUs") / 1000000.0}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ASDTPMActionWaiter *)self waitForActionCondition];
  [v4 lock];

  v5 = [(ASDTPMActionWaiter *)self waitAction];

  if (!v5)
  {
    do
    {
      v12 = ASDTBaseLogType();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(ASDTPMActionWaiter *)v17 action:v18];
      }

      v13 = [(ASDTPMActionWaiter *)self waitForActionCondition];
      v14 = v13;
      if (v3)
      {
        v15 = [v13 waitUntilDate:v3];

        if ((v15 & 1) == 0)
        {
          v8 = [(ASDTPMActionWaiter *)self waitForActionCondition];
          [v8 unlock];
          v9 = 1852990585;
          goto LABEL_8;
        }
      }

      else
      {
        [v13 wait];
      }

      v16 = [(ASDTPMActionWaiter *)self waitAction];
    }

    while (!v16);
  }

  v6 = [(ASDTPMActionWaiter *)self waitForActionCondition];
  [v6 unlock];

  v7 = ASDTBaseLogType();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ASDTPMActionWaiter *)self action];
  }

  v8 = [(ASDTPMActionWaiter *)self waitAction];
  v9 = [v8 waitForCompletion:{-[ASDTPMActionWaiter waitTimeoutUs](self, "waitTimeoutUs")}];
LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (ASDTPMAction)waitAction
{
  WeakRetained = objc_loadWeakRetained(&self->_waitAction);

  return WeakRetained;
}

- (void)initWithConfig:(void *)a1 forSequencer:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 name];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)interestNotification:(void *)a1 forDevice:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 name];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_241659000, a2, OS_LOG_TYPE_DEBUG, "%@: Notified.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)interestNotification:(void *)a1 forDevice:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 name];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)interestNotification:(void *)a1 forDevice:.cold.3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 name];
  v3 = [a1 waitActionName];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)action
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a1 name];
  v5 = [a1 waitAction];
  v6 = [v5 name];
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(&dword_241659000, a2, OS_LOG_TYPE_DEBUG, "%@: Waiting on action with name: %@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end