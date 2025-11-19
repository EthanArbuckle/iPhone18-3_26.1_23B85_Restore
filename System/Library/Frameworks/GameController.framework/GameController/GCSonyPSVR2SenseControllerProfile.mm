@interface GCSonyPSVR2SenseControllerProfile
@end

@implementation GCSonyPSVR2SenseControllerProfile

void __51___GCSonyPSVR2SenseControllerProfile_deviceManager__block_invoke(uint64_t a1)
{
  v6 = [[_GCDevicePIDVIDMatchingFilter alloc] initWithVendorID:&unk_1F4E8E030 productIDs:&unk_1F4E8F438];
  v2 = [_GCDefaultDeviceManager alloc];
  v3 = NSStringFromClass(*(a1 + 32));
  v4 = [(_GCDefaultDeviceManager *)v2 initWithIdentifier:v3 matchingFilter:v6 probeScore:*MEMORY[0x1E69A0678]];
  v5 = deviceManager_deviceManager;
  deviceManager_deviceManager = v4;

  [deviceManager_deviceManager setDelegate:*(a1 + 32)];
}

void __73___GCSonyPSVR2SenseControllerProfile_physicalDevice_getBatteryWithReply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [[GCDeviceBattery alloc] initWithLevel:a2 isCharging:a3];
  (*(*(a1 + 32) + 16))();
}

@end