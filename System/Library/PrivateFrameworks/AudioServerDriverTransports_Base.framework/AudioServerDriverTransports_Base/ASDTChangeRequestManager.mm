@interface ASDTChangeRequestManager
+ (id)forDelegate:(id)a3;
- (ASDTChangeRequestManager)initWithDelegate:(id)a3;
- (ASDTChangeRequestManagerDelegate)delegate;
- (BOOL)configurationChangePendingForObject:(id)a3;
- (BOOL)configurationChangeRunningForObject:(id)a3;
- (BOOL)requestConfigurationChangeForDevice:(id)a3 withBlock:(id)a4;
- (id)queueForObject:(id)a3 withName:(id)a4;
- (void)doWaitForConfigurationChangesForQueue:(id)a3 withTimeout:(ASDTTime *)a4;
- (void)waitForAllConfigurationChanges;
- (void)waitForConfigurationChangesForDevice:(id)a3;
@end

@implementation ASDTChangeRequestManager

- (ASDTChangeRequestManager)initWithDelegate:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ASDTChangeRequestManager;
  v5 = [(ASDTChangeRequestManager *)&v22 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  [(ASDTChangeRequestManager *)v5 setDelegate:v4];
  v7 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 bundleID];
    [(ASDTChangeRequestManager *)v6 setBundleID:v8];
  }

  else
  {
    [(ASDTChangeRequestManager *)v6 setBundleID:@"ASDTChangeRequestManager"];
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = [(ASDTChangeRequestManager *)v6 bundleID];
  v11 = [v9 stringWithFormat:@"%@.changeRequest", v10];

  v12 = [ASDTCondition conditionWithName:v11];
  [(ASDTChangeRequestManager *)v6 setChangeRequestLock:v12];

  v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [(ASDTChangeRequestManager *)v6 setChangeRequestQueues:v13];

  v14 = [(ASDTChangeRequestManager *)v6 changeRequestLock];
  if (v14)
  {
    v15 = [(ASDTChangeRequestManager *)v6 changeRequestQueues];
    v16 = v15 == 0;

    if (!v16)
    {

LABEL_8:
      v17 = v6;
      goto LABEL_12;
    }
  }

  v18 = ASDTBaseLogType();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = [(ASDTChangeRequestManager *)v6 bundleID];
    [(ASDTChangeRequestManager *)v19 initWithDelegate:buf, v18];
  }

  v17 = 0;
LABEL_12:

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)forDelegate:(id)a3
{
  v3 = a3;
  v4 = [[ASDTChangeRequestManager alloc] initWithDelegate:v3];

  return v4;
}

- (id)queueForObject:(id)a3 withName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASDTChangeRequestManager *)self changeRequestQueues];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v9 = [ASDTChangeRequestQueue forObject:v6 withName:v7 andManager:self];
    if (v9)
    {
      v10 = [(ASDTChangeRequestManager *)self changeRequestQueues];
      [v10 setObject:v9 forKey:v7];
    }
  }

  return v9;
}

- (BOOL)requestConfigurationChangeForDevice:(id)a3 withBlock:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 asdtName];
  ++self->_changeIndex;
  v9 = [ASDTChangeRequest withIndex:"withIndex:andBlock:" andBlock:?];
  v10 = ASDTBaseLogType();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(ASDTChangeRequestManager *)self bundleID];
    v23 = 138412802;
    v24 = v11;
    v25 = 1024;
    v26 = [v9 index];
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_241659000, v10, OS_LOG_TYPE_DEFAULT, "%@: Requesting config change %u for device: %@", &v23, 0x1Cu);
  }

  v12 = [(ASDTChangeRequestManager *)self changeRequestLock];
  [v12 lock];

  v13 = [(ASDTChangeRequestManager *)self queueForObject:v6 withName:v8];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 addChangeRequest:v9];
    v16 = [(ASDTChangeRequestManager *)self changeRequestLock];
    [v16 unlock];

    if (!v15)
    {
      v18 = 1;
      goto LABEL_11;
    }

    v17 = [(ASDTChangeRequestManager *)self delegate];
    v18 = [v17 requestConfigurationChange:v14];
  }

  else
  {
    v19 = [(ASDTChangeRequestManager *)self changeRequestLock];
    [v19 unlock];

    v17 = ASDTBaseLogType();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = [(ASDTChangeRequestManager *)self bundleID];
      [(ASDTChangeRequestManager *)v20 requestConfigurationChangeForDevice:v8 withBlock:&v23];
    }

    v18 = 0;
  }

LABEL_11:
  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)configurationChangePendingForObject:(id)a3
{
  v4 = [a3 asdtName];
  v5 = [(ASDTChangeRequestManager *)self changeRequestLock];
  [v5 lock];

  v6 = [(ASDTChangeRequestManager *)self changeRequestQueues];
  v7 = [v6 objectForKey:v4];

  LOBYTE(v6) = [v7 flags];
  v8 = [(ASDTChangeRequestManager *)self changeRequestLock];
  [v8 unlock];

  return v6 & 1;
}

- (BOOL)configurationChangeRunningForObject:(id)a3
{
  v4 = [a3 asdtName];
  v5 = [(ASDTChangeRequestManager *)self changeRequestLock];
  [v5 lock];

  v6 = [(ASDTChangeRequestManager *)self changeRequestQueues];
  v7 = [v6 objectForKey:v4];

  v8 = [v7 flags];
  v9 = [(ASDTChangeRequestManager *)self changeRequestLock];
  [v9 unlock];

  return (v8 >> 1) & 1;
}

- (void)doWaitForConfigurationChangesForQueue:(id)a3 withTimeout:(ASDTTime *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  while (([v6 flags] & 3) != 0)
  {
    v7 = [(ASDTChangeRequestManager *)self changeRequestLock];
    v13 = *&a4->nsec;
    v14 = *&a4->hostFrac;
    v8 = [v7 waitUntilTime:&v13];

    if ((v8 & 1) == 0)
    {
      v9 = ASDTBaseLogType();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [(ASDTChangeRequestManager *)self bundleID];
        v11 = [v6 name];
        [(ASDTChangeRequestManager *)v10 doWaitForConfigurationChangesForQueue:v11 withTimeout:&v13];
      }

      break;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)waitForConfigurationChangesForDevice:(id)a3
{
  v4 = [a3 asdtName];
  ASDTTime::futureSecs(5, &v11);
  v5 = [(ASDTChangeRequestManager *)self changeRequestLock];
  [v5 lock];

  v6 = [(ASDTChangeRequestManager *)self changeRequestQueues];
  v7 = [v6 objectForKey:v4];

  v9 = v11;
  v10 = v12;
  [(ASDTChangeRequestManager *)self doWaitForConfigurationChangesForQueue:v7 withTimeout:&v9];
  v8 = [(ASDTChangeRequestManager *)self changeRequestLock];
  [v8 unlock];
}

- (void)waitForAllConfigurationChanges
{
  v3 = ASDTTime::futureSecs(0xA, &v16);
  ASDTTime::machAbsoluteTime(v3, &v14);
  v4 = [(ASDTChangeRequestManager *)self changeRequestLock];
  [v4 lock];

  for (i = 0; ; i = v8)
  {
    v6 = [(ASDTChangeRequestManager *)self changeRequestQueues];
    v7 = [v6 allValues];
    v8 = [v7 firstObject];

    if (!v8)
    {
      break;
    }

    v9 = v14;
    v10 = v16;

    if (v9 >= v10)
    {
      goto LABEL_6;
    }

    v12 = v16;
    v13 = v17;
    ASDTTime::machAbsoluteTime([(ASDTChangeRequestManager *)self doWaitForConfigurationChangesForQueue:v8 withTimeout:&v12], &v12);
    v14 = v12;
    v15 = v13;
  }

LABEL_6:
  v11 = [(ASDTChangeRequestManager *)self changeRequestLock];
  [v11 unlock];
}

- (ASDTChangeRequestManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%@: Memory allocation error.", buf, 0xCu);
}

- (void)requestConfigurationChangeForDevice:(uint64_t)a3 withBlock:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_10(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_241659000, v5, OS_LOG_TYPE_ERROR, "%@: Failed to create change request queue for %@", v4, 0x16u);
}

- (void)doWaitForConfigurationChangesForQueue:(uint64_t)a3 withTimeout:.cold.1(void *a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_10(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_241659000, v6, OS_LOG_TYPE_ERROR, "%@: Timeout waiting for config changes on %@", v5, 0x16u);
}

@end