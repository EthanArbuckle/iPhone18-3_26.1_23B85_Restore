@interface ASDTSystemStatus
+ (id)systemStatus;
- (ASDTSystemStatus)init;
- (BOOL)enabled;
- (void)publishMicrophoneEnabled:(BOOL)enabled;
- (void)recordingIsEnabled:(BOOL)enabled forDeviceUID:(id)d;
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

  mutex = [(ASDTSystemStatus *)v2 mutex];
  if (!mutex || ([(ASDTSystemStatus *)v2 deviceUIDs], v6 = objc_claimAutoreleasedReturnValue(), v6, mutex, !v6))
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

  publisher = [(ASDTSystemStatus *)v2 publisher];

  if (!publisher)
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

    attribution = [(ASDTSystemStatus *)v2 attribution];

    if (attribution)
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
  mutex = [(ASDTSystemStatus *)self mutex];
  [mutex lock];

  deviceUIDs = [(ASDTSystemStatus *)self deviceUIDs];
  v5 = [deviceUIDs count];

  mutex2 = [(ASDTSystemStatus *)self mutex];
  [mutex2 unlock];

  return v5 != 0;
}

- (void)recordingIsEnabled:(BOOL)enabled forDeviceUID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    goto LABEL_10;
  }

  mutex = [(ASDTSystemStatus *)self mutex];
  [mutex lock];

  deviceUIDs = [(ASDTSystemStatus *)self deviceUIDs];
  v8 = [deviceUIDs containsObject:dCopy];

  if (!(v8 & 1 | !enabled))
  {
    deviceUIDs2 = [(ASDTSystemStatus *)self deviceUIDs];
    [deviceUIDs2 addObject:dCopy];
    goto LABEL_7;
  }

  v9 = 0;
  if (!enabled && ((v8 ^ 1) & 1) == 0)
  {
    deviceUIDs2 = [(ASDTSystemStatus *)self deviceUIDs];
    [deviceUIDs2 removeObject:dCopy];
LABEL_7:

    v9 = 1;
  }

  deviceUIDs3 = [(ASDTSystemStatus *)self deviceUIDs];
  v12 = [deviceUIDs3 count];

  mutex2 = [(ASDTSystemStatus *)self mutex];
  [mutex2 unlock];

  if (v9)
  {
    [(ASDTSystemStatus *)self publishMicrophoneEnabled:v12 != 0];
  }

LABEL_10:
}

- (void)publishMicrophoneEnabled:(BOOL)enabled
{
  publisher = [(ASDTSystemStatus *)self publisher];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ASDTSystemStatus_publishMicrophoneEnabled___block_invoke;
  v6[3] = &unk_278CE6438;
  enabledCopy = enabled;
  v6[4] = self;
  [publisher updateVolatileDataWithBlock:v6];
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