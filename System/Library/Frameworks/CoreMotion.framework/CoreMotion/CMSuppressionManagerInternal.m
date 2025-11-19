@interface CMSuppressionManagerInternal
- (CMSuppressionManagerInternal)init;
- (id).cxx_construct;
- (void)dealloc;
- (void)teardownPrivate;
@end

@implementation CMSuppressionManagerInternal

- (CMSuppressionManagerInternal)init
{
  v15.receiver = self;
  v15.super_class = CMSuppressionManagerInternal;
  v2 = [(CMSuppressionManagerInternal *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->fSuppressionEventHandler = 0;
    v2->fSuppressionEventQueue = 0;
    v2->fInputQueue = dispatch_queue_create("com.apple.CoreMotion.CMSuppressionManager.InputQueue", 0);
    v3->fSuppressionEventDispatcher = 0;
    *&v3->fServiceEnabled = 0;
    v3->fViewObstructedDebugEnabled = 0;
    v3->fSmartPowerNap = 0;
    v3->fDevicePresence = 0;
    *&v3->fViewObstructedStateDispatcher = 0u;
    *&v3->fCameraCapturePoseHandler = 0u;
    v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v4, v5);
    v9 = objc_msgSend_UUIDString(v6, v7, v8);
    v11 = objc_msgSend_substringToIndex_(v9, v10, 3);
    v3->fSuppressionSources = objc_msgSend_copy(v11, v12, v13);
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMSuppressionManagerInternal;
  [(CMSuppressionManagerInternal *)&v2 dealloc];
}

- (void)teardownPrivate
{
  fConnection = self->fConnection;
  if (fConnection)
  {
    v4 = MEMORY[0x19EAE71C0](fConnection, a2);
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
  }

  self->fConnection = 0;

  self->fInputQueue = 0;
  self->fConnectionQueue = 0;

  self->fSuppressionSources = 0;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 13) = 0;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  return self;
}

@end