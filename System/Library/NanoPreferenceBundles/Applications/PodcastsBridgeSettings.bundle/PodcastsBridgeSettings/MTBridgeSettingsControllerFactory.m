@interface MTBridgeSettingsControllerFactory
+ (BOOL)_supportsPodcastsPinningSettingsV2;
+ (id)allocWithZone:(_NSZone *)a3;
@end

@implementation MTBridgeSettingsControllerFactory

+ (id)allocWithZone:(_NSZone *)a3
{
  v4 = [a1 _supportsPodcastsPinningSettingsV2];
  v5 = &off_1C228;
  if (!v4)
  {
    v5 = off_1C220;
  }

  v6 = *v5;
  v7 = objc_opt_class();

  return [v7 allocWithZone:a3];
}

+ (BOOL)_supportsPodcastsPinningSettingsV2
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];
  v6 = [[NSUUID alloc] initWithUUIDString:@"D718E4BE-8067-432E-AF41-7342473499D5"];
  v7 = [v5 supportsCapability:v6];

  return v7;
}

@end