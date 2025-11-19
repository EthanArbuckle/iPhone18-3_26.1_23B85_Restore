@interface NRPairedDeviceRegistry
+ (BOOL)hprf_activeDeviceIsSatelliteDevice;
+ (id)hprf_activeDevice;
+ (id)hprf_activePrimaryOrSatelliteDevice;
+ (id)hprf_activeSatelliteDevice;
@end

@implementation NRPairedDeviceRegistry

+ (id)hprf_activeDevice
{
  v2 = [objc_opt_class() sharedInstance];
  v3 = [v2 getActivePairedDevice];

  return v3;
}

+ (id)hprf_activePrimaryOrSatelliteDevice
{
  v2 = [a1 hprf_activeSatelliteDevice];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [objc_opt_class() sharedInstance];
    v4 = [v5 getActivePairedDevice];
  }

  return v4;
}

+ (id)hprf_activeSatelliteDevice
{
  v2 = [objc_opt_class() sharedInstance];
  v3 = [objc_opt_class() activeDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  v6 = [v5 valueForProperty:NRDevicePropertyIsAltAccount];
  LODWORD(v3) = [v6 BOOLValue];

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)hprf_activeDeviceIsSatelliteDevice
{
  v2 = [a1 hprf_activePrimaryOrSatelliteDevice];
  v3 = [v2 valueForProperty:NRDevicePropertyIsAltAccount];
  v4 = [v3 BOOLValue];

  return v4;
}

@end