@interface GCMicrosoftXboxControllerProfile
@end

@implementation GCMicrosoftXboxControllerProfile

void __50___GCMicrosoftXboxControllerProfile_deviceManager__block_invoke(uint64_t a1)
{
  v6 = [[_GCDevicePIDVIDMatchingFilter alloc] initWithVendorID:&unk_1F4E8E168 productIDs:&unk_1F4E8F468];
  v2 = [_GCDefaultDeviceManager alloc];
  v3 = NSStringFromClass(*(a1 + 32));
  v4 = [(_GCDefaultDeviceManager *)v2 initWithIdentifier:v3 matchingFilter:v6 probeScore:*MEMORY[0x1E69A0678]];
  v5 = deviceManager_deviceManager_3;
  deviceManager_deviceManager_3 = v4;

  [deviceManager_deviceManager_3 setDelegate:*(a1 + 32)];
}

void __72___GCMicrosoftXboxControllerProfile_physicalDevice_getBatteryWithReply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [[GCDeviceBattery alloc] initWithLevel:a2 isCharging:a3];
  (*(*(a1 + 32) + 16))();
}

@end