@interface VCCoreMotionManager
- (VCCoreMotionManager)initWithDelegate:(id)delegate;
- (unsigned)getMotionActivityValueForMotionActivity:(id)activity;
- (void)dealloc;
- (void)setMotionActivity:(id)activity;
- (void)startMonitoringMotionActivity;
- (void)stopMonitoringMotionActivity;
@end

@implementation VCCoreMotionManager

- (VCCoreMotionManager)initWithDelegate:(id)delegate
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCCoreMotionManager;
  v4 = [(VCCoreMotionManager *)&v12 init];
  if (v4)
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v4->_delegateQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.vcCoreMotion.delegateQueue", 0, CustomRootQueue);
    v6 = VCDispatchQueue_GetCustomRootQueue(37);
    v7 = dispatch_queue_create_with_target_V2("com.apple.AVConference.vcCoreMotion.serialQueue", 0, v6);
    v4->_motionActivityManager = 0;
    v4->_motionActivity = 0;
    [(VCCoreMotionManager *)v4 setCoreMotionManagerDelegate:delegate];
    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v4->_motionActivityQueue = v8;
    [(NSOperationQueue *)v8 setUnderlyingQueue:v7];
    if (v7)
    {
      dispatch_release(v7);
    }

    [(NSOperationQueue *)v4->_motionActivityQueue setMaxConcurrentOperationCount:1];
    if ([MEMORY[0x1E69634C0] isActivityAvailable])
    {
      v4->_motionActivityManager = objc_alloc_init(MEMORY[0x1E69634C0]);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCCoreMotionManager *)v9 initWithDelegate:v10];
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
    self->_delegateQueue = 0;
  }

  objc_storeWeak(&self->_coreMotionManagerDelegate, 0);
  [(VCCoreMotionManager *)self stopMonitoringMotionActivity];

  v4.receiver = self;
  v4.super_class = VCCoreMotionManager;
  [(VCCoreMotionManager *)&v4 dealloc];
}

- (void)setMotionActivity:(id)activity
{
  v21 = *MEMORY[0x1E69E9840];

  self->_motionActivity = [activity copy];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(VCCoreMotionManager *)self getMotionActivityValueForMotionActivity:self->_motionActivity];
      confidence = [(CMMotionActivity *)self->_motionActivity confidence];
      *buf = 136316162;
      v12 = v5;
      v13 = 2080;
      v14 = "[VCCoreMotionManager setMotionActivity:]";
      v15 = 1024;
      v16 = 83;
      v17 = 1024;
      v18 = v7;
      v19 = 2048;
      v20 = confidence;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CoreMotion: Updated motion activity value=%d confidence=%ld", buf, 0x2Cu);
    }
  }

  delegateQueue = self->_delegateQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__VCCoreMotionManager_setMotionActivity___block_invoke;
  v10[3] = &unk_1E85F37F0;
  v10[4] = self;
  v10[5] = activity;
  dispatch_async(delegateQueue, v10);
}

uint64_t __41__VCCoreMotionManager_setMotionActivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coreMotionManagerDelegate];
  v3 = *(a1 + 40);

  return [v2 didUpdateMotionActivity:v3];
}

- (void)startMonitoringMotionActivity
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  if (self->_motionActivityManager)
  {
    v4 = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v11 = v5;
        v12 = 2080;
        v13 = "[VCCoreMotionManager startMonitoringMotionActivity]";
        v14 = 1024;
        v15 = 96;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CoreMotion: Starting motion activity monitor", buf, 0x1Cu);
      }
    }

    motionActivityManager = self->_motionActivityManager;
    motionActivityQueue = self->_motionActivityQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__VCCoreMotionManager_startMonitoringMotionActivity__block_invoke;
    v9[3] = &unk_1E85F5738;
    v9[4] = v4;
    [(CMMotionActivityManager *)motionActivityManager startActivityUpdatesToQueue:motionActivityQueue withHandler:v9];
  }
}

void *__52__VCCoreMotionManager_startMonitoringMotionActivity__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) strong];
  if (a2)
  {

    return [result setMotionActivity:a2];
  }

  return result;
}

- (void)stopMonitoringMotionActivity
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_motionActivityManager)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "[VCCoreMotionManager stopMonitoringMotionActivity]";
        v9 = 1024;
        v10 = 110;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CoreMotion: Stopping motion activity monitor", &v5, 0x1Cu);
      }
    }

    [(CMMotionActivityManager *)self->_motionActivityManager stopActivityUpdates];
  }
}

- (unsigned)getMotionActivityValueForMotionActivity:(id)activity
{
  if ([activity stationary])
  {
    LOBYTE(v4) = 1;
  }

  else if (([activity walking] & 1) != 0 || (objc_msgSend(activity, "running") & 1) != 0 || (objc_msgSend(activity, "automotive") & 1) != 0 || (v4 = objc_msgSend(activity, "cycling")) != 0)
  {
    LOBYTE(v4) = 2;
  }

  return v4;
}

- (void)initWithDelegate:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCCoreMotionManager initWithDelegate:]";
  v6 = 1024;
  v7 = 50;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d CoreMotion: CMMotionActivity unavailable", &v2, 0x1Cu);
}

@end