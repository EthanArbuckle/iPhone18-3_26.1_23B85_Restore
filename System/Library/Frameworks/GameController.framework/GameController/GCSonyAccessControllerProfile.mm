@interface GCSonyAccessControllerProfile
@end

@implementation GCSonyAccessControllerProfile

void __47___GCSonyAccessControllerProfile_deviceManager__block_invoke(uint64_t a1)
{
  v6 = [[_GCDevicePIDVIDMatchingFilter alloc] initWithVendorID:&unk_1F4E8F140 productIDs:&unk_1F4E8F4B0];
  v2 = [_GCDefaultDeviceManager alloc];
  v3 = NSStringFromClass(*(a1 + 32));
  v4 = [(_GCDefaultDeviceManager *)v2 initWithIdentifier:v3 matchingFilter:v6 probeScore:*MEMORY[0x1E69A0678]];
  v5 = deviceManager_deviceManager_5;
  deviceManager_deviceManager_5 = v4;

  [deviceManager_deviceManager_5 setDelegate:*(a1 + 32)];
}

@end