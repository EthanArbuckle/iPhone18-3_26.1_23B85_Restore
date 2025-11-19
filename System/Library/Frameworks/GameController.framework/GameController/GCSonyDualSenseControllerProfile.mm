@interface GCSonyDualSenseControllerProfile
@end

@implementation GCSonyDualSenseControllerProfile

void __50___GCSonyDualSenseControllerProfile_deviceManager__block_invoke(uint64_t a1)
{
  v6 = [[_GCDevicePIDVIDMatchingFilter alloc] initWithVendorID:&unk_1F4E8E120 productIDs:&unk_1F4E8F450];
  v2 = [_GCDefaultDeviceManager alloc];
  v3 = NSStringFromClass(*(a1 + 32));
  v4 = [(_GCDefaultDeviceManager *)v2 initWithIdentifier:v3 matchingFilter:v6 probeScore:*MEMORY[0x1E69A0678]];
  v5 = deviceManager_deviceManager_2;
  deviceManager_deviceManager_2 = v4;

  [deviceManager_deviceManager_2 setDelegate:*(a1 + 32)];
}

void __70___GCSonyDualSenseControllerProfile_physicalDevice_getLightWithReply___block_invoke(uint64_t a1, float a2, float a3, float a4)
{
  v8 = [GCDeviceLight alloc];
  v9 = [GCColor alloc];
  *&v10 = a2;
  *&v11 = a3;
  *&v12 = a4;
  v13 = [(GCColor *)v9 initWithRed:v10 green:v11 blue:v12];
  v14 = [(GCDeviceLight *)v8 initWithColor:v13];

  if (gc_isInternalBuild())
  {
    __70___GCSonyDualSenseControllerProfile_physicalDevice_getLightWithReply___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __79___GCSonyDualSenseControllerProfile_physicalDevice_getSensorsEnabledWithReply___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __79___GCSonyDualSenseControllerProfile_physicalDevice_getSensorsEnabledWithReply___block_invoke_cold_1(a1);
  }

  return (*(*(a1 + 40) + 16))();
}

void __72___GCSonyDualSenseControllerProfile_physicalDevice_getBatteryWithReply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [[GCDeviceBattery alloc] initWithLevel:a2 isCharging:a3];
  if (gc_isInternalBuild())
  {
    __72___GCSonyDualSenseControllerProfile_physicalDevice_getBatteryWithReply___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void __89___GCSonyDualSenseControllerProfile_physicalDevice_getAdaptiveTriggersStatusesWithReply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v11 = [[GCDeviceAdaptiveTriggersStatusPayload alloc] initFeedbackWithStatus:a3 armPosition:a4 mode:a2];
  v15[0] = v11;
  v12 = [[GCDeviceAdaptiveTriggersStatusPayload alloc] initFeedbackWithStatus:a6 armPosition:a7 mode:a5];
  v15[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

  if (gc_isInternalBuild())
  {
    __89___GCSonyDualSenseControllerProfile_physicalDevice_getAdaptiveTriggersStatusesWithReply___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();

  v14 = *MEMORY[0x1E69E9840];
}

void __70___GCSonyDualSenseControllerProfile_physicalDevice_getLightWithReply___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *(a1 + 32);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __79___GCSonyDualSenseControllerProfile_physicalDevice_getSensorsEnabledWithReply___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v10 = *(a1 + 32);
    OUTLINED_FUNCTION_1();
    _os_log_impl(v4, v5, v6, v7, v8, 0x12u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __72___GCSonyDualSenseControllerProfile_physicalDevice_getBatteryWithReply___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *(a1 + 32);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __89___GCSonyDualSenseControllerProfile_physicalDevice_getAdaptiveTriggersStatusesWithReply___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *(a1 + 32);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end