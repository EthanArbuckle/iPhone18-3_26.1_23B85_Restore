@interface GCMFiControllerProfile
@end

@implementation GCMFiControllerProfile

uint64_t __40___GCMFiControllerProfile_deviceManager__block_invoke(uint64_t a1)
{
  v2 = [_GCDefaultDeviceManager alloc];
  v3 = NSStringFromClass(*(a1 + 32));
  v4 = [(_GCDefaultDeviceManager *)v2 initWithIdentifier:v3 matchingFilter:*(a1 + 32) probeScore:*MEMORY[0x1E69A0680]];
  v5 = deviceManager_deviceManager_1;
  deviceManager_deviceManager_1 = v4;

  v6 = *(a1 + 32);
  v7 = deviceManager_deviceManager_1;

  return [v7 setDelegate:v6];
}

BOOL __73___GCMFiControllerProfile_determineCapabilitiesWithServiceInfo_initInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"Max"];
  v4 = [v2 objectForKeyedSubscript:@"Min"];

  v5 = 0;
  if (v3 && v4)
  {
    v6 = [v3 intValue];
    v5 = v6 - [v4 intValue] == 1;
  }

  return v5;
}

uint64_t __73___GCMFiControllerProfile_determineCapabilitiesWithServiceInfo_initInfo___block_invoke_2(uint64_t a1, int a2)
{
  if ((a2 - 1) > 0xF)
  {
    return 22;
  }

  else
  {
    return qword_1D2DEE3C8[a2 - 1];
  }
}

@end