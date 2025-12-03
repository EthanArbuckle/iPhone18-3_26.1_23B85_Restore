@interface CMOdometerSuitabilityManager
- (CMOdometerSuitabilityManager)init;
- (void)dealloc;
- (void)startOdometerSuitabilityUpdatesWithHandler:(id)handler;
- (void)stopOdometerSuitabilityUpdates;
@end

@implementation CMOdometerSuitabilityManager

- (CMOdometerSuitabilityManager)init
{
  v9.receiver = self;
  v9.super_class = CMOdometerSuitabilityManager;
  v2 = [(CMOdometerSuitabilityManager *)&v9 init];
  if (v2)
  {
    v3 = [CMOdometerSuitabilityManagerProxy alloc];
    v5 = objc_msgSend_initWithOdometerSuitability_(v3, v4, v2);
    v2->_odometerSuitabilityManagerProxy = v5;
    objc_msgSend__startDaemonConnection(v5, v6, v7);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *(objc_msgSend_odometerSuitabilityManagerProxy(self, a2, v2) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B68E264;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(v4, block);

  v5.receiver = self;
  v5.super_class = CMOdometerSuitabilityManager;
  [(CMOdometerSuitabilityManager *)&v5 dealloc];
}

- (void)startOdometerSuitabilityUpdatesWithHandler:(id)handler
{
  if (!handler)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CMOdometerSuitabilityManager.mm", 175, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v5 = *(objc_msgSend_odometerSuitabilityManagerProxy(self, a2, handler) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B68E344;
  block[3] = &unk_1E7532B68;
  block[4] = self;
  block[5] = handler;
  dispatch_async(v5, block);
}

- (void)stopOdometerSuitabilityUpdates
{
  v4 = *(objc_msgSend_odometerSuitabilityManagerProxy(self, a2, v2) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B68E400;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(v4, block);
}

@end