@interface NRPairedDeviceRegistry
+ (BOOL)hprf_activeDeviceIsSatelliteDevice;
+ (id)hprf_activeDevice;
+ (id)hprf_activePrimaryOrSatelliteDevice;
+ (id)hprf_activeSatelliteDevice;
@end

@implementation NRPairedDeviceRegistry

+ (id)hprf_activeDevice
{
  sharedInstance = [objc_opt_class() sharedInstance];
  getActivePairedDevice = [sharedInstance getActivePairedDevice];

  return getActivePairedDevice;
}

+ (id)hprf_activePrimaryOrSatelliteDevice
{
  hprf_activeSatelliteDevice = [self hprf_activeSatelliteDevice];
  v3 = hprf_activeSatelliteDevice;
  if (hprf_activeSatelliteDevice)
  {
    getActivePairedDevice = hprf_activeSatelliteDevice;
  }

  else
  {
    sharedInstance = [objc_opt_class() sharedInstance];
    getActivePairedDevice = [sharedInstance getActivePairedDevice];
  }

  return getActivePairedDevice;
}

+ (id)hprf_activeSatelliteDevice
{
  sharedInstance = [objc_opt_class() sharedInstance];
  activeDeviceSelectorBlock = [objc_opt_class() activeDeviceSelectorBlock];
  v4 = [sharedInstance getAllDevicesWithArchivedAltAccountDevicesMatching:activeDeviceSelectorBlock];
  firstObject = [v4 firstObject];

  v6 = [firstObject valueForProperty:NRDevicePropertyIsAltAccount];
  LODWORD(activeDeviceSelectorBlock) = [v6 BOOLValue];

  if (activeDeviceSelectorBlock)
  {
    v7 = firstObject;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)hprf_activeDeviceIsSatelliteDevice
{
  hprf_activePrimaryOrSatelliteDevice = [self hprf_activePrimaryOrSatelliteDevice];
  v3 = [hprf_activePrimaryOrSatelliteDevice valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end