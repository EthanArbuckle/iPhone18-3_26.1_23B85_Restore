@interface APCarPlayPolicyMonitor
- (APCarPlayPolicyMonitor)initWithEndpoint:(OpaqueFigEndpoint *)endpoint;
- (void)dealloc;
- (void)endpointAuthenticationSucceeded;
- (void)willDisableVehicleTrackedByMonitor:(id)monitor;
- (void)willEnableVehicleTrackedByMonitor:(id)monitor;
@end

@implementation APCarPlayPolicyMonitor

- (APCarPlayPolicyMonitor)initWithEndpoint:(OpaqueFigEndpoint *)endpoint
{
  v8.receiver = self;
  v8.super_class = APCarPlayPolicyMonitor;
  v4 = [(APCarPlayPolicyMonitor *)&v8 init];
  if (v4)
  {
    v4->_queue = dispatch_queue_create("com.apple.APCarPlayPolicyMonitor", 0);
    v4->_weakEndpoint = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v4->_observedEndpoint = endpoint;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    queue = v4->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__APCarPlayPolicyMonitor_initWithEndpoint___block_invoke;
    block[3] = &unk_27849B1A8;
    block[4] = v4;
    dispatch_sync(queue, block);
  }

  return v4;
}

- (void)dealloc
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  monitor = self->_monitor;
  if (monitor)
  {
    [(CRVehiclePolicyMonitor *)monitor stopMonitoring];
    [(CRVehiclePolicyMonitor *)self->_monitor setDelegate:0];

    self->_monitor = 0;
  }

  weakEndpoint = self->_weakEndpoint;
  if (weakEndpoint)
  {
    CFRelease(weakEndpoint);
    self->_weakEndpoint = 0;
  }

  self->_observedEndpoint = 0;
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v6.receiver = self;
  v6.super_class = APCarPlayPolicyMonitor;
  [(APCarPlayPolicyMonitor *)&v6 dealloc];
}

- (void)endpointAuthenticationSucceeded
{
  v10 = 0;
  if (!self->_monitor)
  {
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v3)
    {
      v4 = v3;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6 && !v6(CMBaseObject, *MEMORY[0x277CC1260], *MEMORY[0x277CBECE8], &v10))
      {
        v12 = 0;
        v13 = &v12;
        v14 = 0x3052000000;
        v15 = __Block_byref_object_copy__8;
        v7 = getCRVehiclePolicyMonitorClass_softClass;
        v16 = __Block_byref_object_dispose__8;
        v17 = getCRVehiclePolicyMonitorClass_softClass;
        if (!getCRVehiclePolicyMonitorClass_softClass)
        {
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __getCRVehiclePolicyMonitorClass_block_invoke;
          v11[3] = &unk_27849ACC8;
          v11[4] = &v12;
          __getCRVehiclePolicyMonitorClass_block_invoke(v11);
          v7 = v13[5];
        }

        _Block_object_dispose(&v12, 8);
        v8 = [v7 alloc];
        v9 = [v8 initWithVehicleCertificateSerial:v10];
        self->_monitor = v9;
        if (v9)
        {
          [(CRVehiclePolicyMonitor *)v9 setDelegate:self];
          [(CRVehiclePolicyMonitor *)self->_monitor startMonitoring];
          if (gLogCategory_APCarPlayPolicyMonitor <= 40 && (gLogCategory_APCarPlayPolicyMonitor != -1 || _LogCategory_Initialize()))
          {
            [APCarPlayPolicyMonitor endpointAuthenticationSucceeded];
          }
        }
      }

      CFRelease(v4);
    }
  }
}

- (void)willDisableVehicleTrackedByMonitor:(id)monitor
{
  if (gLogCategory_APCarPlayPolicyMonitor <= 40 && (gLogCategory_APCarPlayPolicyMonitor != -1 || _LogCategory_Initialize()))
  {
    [APCarPlayPolicyMonitor willDisableVehicleTrackedByMonitor:];
  }

  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    if (gLogCategory_APCarPlayPolicyMonitor <= 50 && (gLogCategory_APCarPlayPolicyMonitor != -1 || _LogCategory_Initialize()))
    {
      [APCarPlayPolicyMonitor willDisableVehicleTrackedByMonitor:];
    }

    v6 = dispatch_semaphore_create(0);
    dispatch_retain(v6);
    [(APCarPlayPolicyMonitorDelegate *)self->_delegate setEndpoint:v5 isAllowed:0];
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v7 || v7(v5, 0, policyMonitorEndpointDeactivated, v6))
    {
      dispatch_release(v6);
    }

    else
    {
      v8 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v6, v8);
      if (gLogCategory_APCarPlayPolicyMonitor <= 50 && (gLogCategory_APCarPlayPolicyMonitor != -1 || _LogCategory_Initialize()))
      {
        [APCarPlayPolicyMonitor willDisableVehicleTrackedByMonitor:];
      }
    }

    CFRelease(v5);
    if (v6)
    {

      dispatch_release(v6);
    }
  }
}

- (void)willEnableVehicleTrackedByMonitor:(id)monitor
{
  if (gLogCategory_APCarPlayPolicyMonitor <= 40 && (gLogCategory_APCarPlayPolicyMonitor != -1 || _LogCategory_Initialize()))
  {
    [APCarPlayPolicyMonitor willEnableVehicleTrackedByMonitor:];
  }

  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    [(APCarPlayPolicyMonitorDelegate *)self->_delegate setEndpoint:v4 isAllowed:1];

    CFRelease(v5);
  }
}

@end