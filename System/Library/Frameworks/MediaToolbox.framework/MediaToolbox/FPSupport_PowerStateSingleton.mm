@interface FPSupport_PowerStateSingleton
+ (id)sharedFPSupportPowerStateSingleton;
- (FPSupport_PowerStateSingleton)init;
- (void)dealloc;
@end

@implementation FPSupport_PowerStateSingleton

+ (id)sharedFPSupportPowerStateSingleton
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__FPSupport_PowerStateSingleton_sharedFPSupportPowerStateSingleton__block_invoke;
  block[3] = &unk_1E7482608;
  block[4] = self;
  if (sharedFPSupportPowerStateSingleton_onceTokenPowerState != -1)
  {
    dispatch_once(&sharedFPSupportPowerStateSingleton_onceTokenPowerState, block);
  }

  return sharedFPSupportPowerStateSingleton_gSharedFPSupportPowerState;
}

- (FPSupport_PowerStateSingleton)init
{
  v5.receiver = self;
  v5.super_class = FPSupport_PowerStateSingleton;
  v2 = [(FPSupport_PowerStateSingleton *)&v5 init];
  if (v2)
  {
    v2->_notificationQ = dispatch_queue_create("com.apple.coremedia.fpsupport.powerStateChangedNotificationQueue", 0);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__didChangePowerState_ name:*MEMORY[0x1E696A7D8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = FPSupport_PowerStateSingleton;
  [(FPSupport_PowerStateSingleton *)&v2 dealloc];
}

@end