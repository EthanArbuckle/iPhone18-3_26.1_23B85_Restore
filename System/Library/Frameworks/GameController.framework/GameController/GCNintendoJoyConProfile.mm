@interface GCNintendoJoyConProfile
@end

@implementation GCNintendoJoyConProfile

void __41___GCNintendoJoyConProfile_deviceManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = deviceManager_deviceManager_0;
  deviceManager_deviceManager_0 = v0;
}

void __63___GCNintendoJoyConProfile_physicalDevice_getBatteryWithReply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [[GCDeviceBattery alloc] initWithLevel:a2 isCharging:a3];
  (*(*(a1 + 32) + 16))();
}

@end