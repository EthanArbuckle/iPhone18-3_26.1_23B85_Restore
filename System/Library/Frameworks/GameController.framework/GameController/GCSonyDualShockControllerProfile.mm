@interface GCSonyDualShockControllerProfile
@end

@implementation GCSonyDualShockControllerProfile

void __50___GCSonyDualShockControllerProfile_deviceManager__block_invoke(uint64_t a1)
{
  v6 = [[_GCDevicePIDVIDMatchingFilter alloc] initWithVendorID:&unk_1F4E8E3A8 productIDs:&unk_1F4E8F480];
  v2 = [_GCDefaultDeviceManager alloc];
  v3 = NSStringFromClass(*(a1 + 32));
  v4 = [(_GCDefaultDeviceManager *)v2 initWithIdentifier:v3 matchingFilter:v6 probeScore:*MEMORY[0x1E69A0678]];
  v5 = deviceManager_deviceManager_4;
  deviceManager_deviceManager_4 = v4;

  [deviceManager_deviceManager_4 setDelegate:*(a1 + 32)];
}

void __70___GCSonyDualShockControllerProfile_physicalDevice_getLightWithReply___block_invoke(uint64_t a1, float a2, float a3, float a4)
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

uint64_t __79___GCSonyDualShockControllerProfile_physicalDevice_getSensorsEnabledWithReply___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __79___GCSonyDualSenseControllerProfile_physicalDevice_getSensorsEnabledWithReply___block_invoke_cold_1(a1);
  }

  return (*(*(a1 + 40) + 16))();
}

void __72___GCSonyDualShockControllerProfile_physicalDevice_getBatteryWithReply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [[GCDeviceBattery alloc] initWithLevel:a2 isCharging:a3];
  if (gc_isInternalBuild())
  {
    __72___GCSonyDualSenseControllerProfile_physicalDevice_getBatteryWithReply___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

@end