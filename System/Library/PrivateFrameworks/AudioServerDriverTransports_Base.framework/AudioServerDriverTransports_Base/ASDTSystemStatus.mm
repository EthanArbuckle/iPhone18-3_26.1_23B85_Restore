@interface ASDTSystemStatus
+ (id)systemStatus;
- (ASDTSystemStatus)init;
- (BOOL)enabled;
- (void)publishMicrophoneEnabled:(BOOL)a3;
- (void)recordingIsEnabled:(BOOL)a3 forDeviceUID:(id)a4;
@end

@implementation ASDTSystemStatus

+ (id)systemStatus
{
  if (+[ASDTSystemStatus systemStatus]::onceToken != -1)
  {
    +[ASDTSystemStatus systemStatus];
  }

  v3 = gSystemStatus;

  return v3;
}

uint64_t __32__ASDTSystemStatus_systemStatus__block_invoke()
{
  gSystemStatus = objc_alloc_init(ASDTSystemStatus);

  return MEMORY[0x2821F96F8]();
}

- (ASDTSystemStatus)init
{
  v20.receiver = self;
  v20.super_class = ASDTSystemStatus;
  v2 = [(ASDTSystemStatus *)&v20 init];
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = [ASDTCondition conditionWithName:@"com.apple.AudioServerDriverTransports.SystemStatus"];
  [(ASDTSystemStatus *)v2 setMutex:v3];

  v4 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  [(ASDTSystemStatus *)v2 setDeviceUIDs:v4];

  v5 = [(ASDTSystemStatus *)v2 mutex];
  if (!v5 || ([(ASDTSystemStatus *)v2 deviceUIDs], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    v8 = ASDTBaseLogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ASDTSystemStatus init];
    }

    goto LABEL_9;
  }

  *&v7 = -1;
  *(&v7 + 1) = -1;
  *task_info_out = v7;
  v19 = v7;
  task_info_outCnt = 8;
  if (task_info(*MEMORY[0x277D85F48], 0xFu, task_info_out, &task_info_outCnt))
  {
    v8 = ASDTBaseLogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ASDTSystemStatus init];
    }

    goto LABEL_9;
  }

  if (!objc_opt_class() || !objc_opt_class() || !objc_opt_class())
  {
    v8 = ASDTBaseLogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_241659000, v8, OS_LOG_TYPE_INFO, "SystemStatus is not supported on this system.", v16, 2u);
    }

    goto LABEL_9;
  }

  v10 = objc_alloc_init(MEMORY[0x277D6B9E8]);
  [(ASDTSystemStatus *)v2 setPublisher:v10];

  v11 = [(ASDTSystemStatus *)v2 publisher];

  if (!v11)
  {
    v8 = ASDTBaseLogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ASDTSystemStatus init];
    }

    goto LABEL_9;
  }

  v16[0] = *task_info_out;
  v16[1] = v19;
  v8 = [MEMORY[0x277D6B8E0] attributionWithAuditToken:v16];
  if (v8)
  {
    v12 = [objc_alloc(MEMORY[0x277D6B9D8]) initWithActivityAttribution:v8];
    [(ASDTSystemStatus *)v2 setAttribution:v12];

    v13 = [(ASDTSystemStatus *)v2 attribution];

    if (v13)
    {

LABEL_17:
      v9 = v2;
      goto LABEL_18;
    }

    v15 = ASDTBaseLogType();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ASDTSystemStatus init];
    }
  }

  else
  {
    v15 = ASDTBaseLogType();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ASDTSystemStatus init];
    }
  }

LABEL_9:
  v9 = 0;
LABEL_18:

  return v9;
}

- (BOOL)enabled
{
  v3 = [(ASDTSystemStatus *)self mutex];
  [v3 lock];

  v4 = [(ASDTSystemStatus *)self deviceUIDs];
  v5 = [v4 count];

  v6 = [(ASDTSystemStatus *)self mutex];
  [v6 unlock];

  return v5 != 0;
}

- (void)recordingIsEnabled:(BOOL)a3 forDeviceUID:(id)a4
{
  v14 = a4;
  if (!v14)
  {
    goto LABEL_10;
  }

  v6 = [(ASDTSystemStatus *)self mutex];
  [v6 lock];

  v7 = [(ASDTSystemStatus *)self deviceUIDs];
  v8 = [v7 containsObject:v14];

  if (!(v8 & 1 | !a3))
  {
    v10 = [(ASDTSystemStatus *)self deviceUIDs];
    [v10 addObject:v14];
    goto LABEL_7;
  }

  v9 = 0;
  if (!a3 && ((v8 ^ 1) & 1) == 0)
  {
    v10 = [(ASDTSystemStatus *)self deviceUIDs];
    [v10 removeObject:v14];
LABEL_7:

    v9 = 1;
  }

  v11 = [(ASDTSystemStatus *)self deviceUIDs];
  v12 = [v11 count];

  v13 = [(ASDTSystemStatus *)self mutex];
  [v13 unlock];

  if (v9)
  {
    [(ASDTSystemStatus *)self publishMicrophoneEnabled:v12 != 0];
  }

LABEL_10:
}

- (void)publishMicrophoneEnabled:(BOOL)a3
{
  v5 = [(ASDTSystemStatus *)self publisher];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ASDTSystemStatus_publishMicrophoneEnabled___block_invoke;
  v6[3] = &unk_278CE6438;
  v7 = a3;
  v6[4] = self;
  [v5 updateVolatileDataWithBlock:v6];
}

void __45__ASDTSystemStatus_publishMicrophoneEnabled___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v4 = [v3 attribution];
    [v5 addMicrophoneAttribution:v4];
  }

  else
  {
    v4 = [v3 attribution];
    [v5 removeMicrophoneAttribution:v4];
  }
}

@end