@interface AXSSMotionTrackingHIDManager
- (AXSSMotionTrackingHIDManager)init;
- (AXSSMotionTrackingHIDManagerDelegate)delegate;
- (NSArray)devices;
- (void)_deviceNotification:(id)notification added:(BOOL)added;
- (void)dealloc;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation AXSSMotionTrackingHIDManager

- (AXSSMotionTrackingHIDManager)init
{
  v8.receiver = self;
  v8.super_class = AXSSMotionTrackingHIDManager;
  v2 = [(AXSSMotionTrackingHIDManager *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    devices = v2->__devices;
    v2->__devices = array;

    v5 = dispatch_queue_create("com.apple.MotionTrackingHIDManager.hidManagerDispatchQueue", 0);
    hidManagerDispatchQueue = v2->__hidManagerDispatchQueue;
    v2->__hidManagerDispatchQueue = v5;
  }

  return v2;
}

- (void)dealloc
{
  if (self->__monitoring)
  {
    [(HIDManager *)self->__hidManager cancel];
    hidManager = self->__hidManager;
    self->__hidManager = 0;
  }

  v4.receiver = self;
  v4.super_class = AXSSMotionTrackingHIDManager;
  [(AXSSMotionTrackingHIDManager *)&v4 dealloc];
}

- (void)startMonitoring
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_DEBUG, "AXSSMotionTrackingHIDManager: startMonitoring %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __47__AXSSMotionTrackingHIDManager_startMonitoring__block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AXSSMotionTrackingHIDManager_startMonitoring__block_invoke_2;
  block[3] = &unk_1E8135C08;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v5;
  v10 = a3;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __47__AXSSMotionTrackingHIDManager_startMonitoring__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deviceNotification:*(a1 + 32) added:*(a1 + 48)];
}

- (void)stopMonitoring
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_DEBUG, "AXSSMotionTrackingHIDManager: stopMonitoring %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (NSArray)devices
{
  _devices = [(AXSSMotionTrackingHIDManager *)self _devices];
  v3 = [_devices copy];

  return v3;
}

- (void)_deviceNotification:(id)notification added:(BOOL)added
{
  addedCopy = added;
  notificationCopy = notification;
  v7 = AXSSLogForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(AXSSMotionTrackingHIDManager *)notificationCopy _deviceNotification:addedCopy added:v7];
  }

  if (addedCopy)
  {
    if (![AXSSMotionTrackingUtilities axss_HIDDeviceIsMFiAuthenticated:notificationCopy])
    {
      firstObject = AXSSLogForCategory(2);
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
      {
        [AXSSMotionTrackingHIDManager _deviceNotification:added:];
      }

      goto LABEL_20;
    }

    v8 = +[AXSSMotionTrackingUtilities axss_xPositionElementMatchingDict];
    v9 = [notificationCopy elementsMatching:v8];
    firstObject = [v9 firstObject];

    v11 = +[AXSSMotionTrackingUtilities axss_yPositionElementMatchingDict];
    v12 = [notificationCopy elementsMatching:v11];
    firstObject2 = [v12 firstObject];

    if (!firstObject || !firstObject2)
    {
      v21 = AXSSLogForCategory(2);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [AXSSMotionTrackingHIDManager _deviceNotification:added:];
      }

      goto LABEL_19;
    }

    _devices = [(AXSSMotionTrackingHIDManager *)self _devices];
    [_devices addObject:notificationCopy];
  }

  else
  {
    _devices2 = [(AXSSMotionTrackingHIDManager *)self _devices];
    v16 = [_devices2 containsObject:notificationCopy];

    if (!v16)
    {
      goto LABEL_21;
    }

    firstObject = [(AXSSMotionTrackingHIDManager *)self _devices];
    [firstObject removeObject:notificationCopy];
  }

  delegate = [(AXSSMotionTrackingHIDManager *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = AXSSLogForCategory(2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [AXSSMotionTrackingHIDManager _deviceNotification:v19 added:?];
    }

    firstObject = [(AXSSMotionTrackingHIDManager *)self delegate];
    firstObject2 = [(AXSSMotionTrackingHIDManager *)self _devices];
    v20 = [firstObject2 copy];
    [firstObject motionTrackingHIDManager:self updatedDevices:v20];

LABEL_19:
LABEL_20:
  }

LABEL_21:
}

- (AXSSMotionTrackingHIDManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_deviceNotification:(os_log_t)log added:.cold.1(uint64_t a1, char a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = @"NO";
  v6 = "[AXSSMotionTrackingHIDManager _deviceNotification:added:]";
  v5 = 136315650;
  v7 = 2112;
  v8 = a1;
  if (a2)
  {
    v3 = @"YES";
  }

  v9 = 2112;
  v10 = v3;
  _os_log_debug_impl(&dword_1C0E8A000, log, OS_LOG_TYPE_DEBUG, "%s: device: %@, added: %@", &v5, 0x20u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_deviceNotification:added:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(&dword_1C0E8A000, v0, OS_LOG_TYPE_ERROR, "%s: device is not MFi authenticated!: %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_deviceNotification:added:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(&dword_1C0E8A000, v0, OS_LOG_TYPE_ERROR, "%s: device does not support X or Y position usages. Note: this might be a valid eye tracker and you may be missing proper entitlements. %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_deviceNotification:(void *)a1 added:(NSObject *)a2 .cold.4(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 _devices];
  v5[0] = 136315394;
  OUTLINED_FUNCTION_0_8();
  _os_log_debug_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_DEBUG, "%s: notifying delegate of updated devices: %@", v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

@end