@interface MTBridgeSettingsControllerFactory
+ (BOOL)_supportsPodcastsPinningSettingsV2;
+ (id)allocWithZone:(_NSZone *)zone;
@end

@implementation MTBridgeSettingsControllerFactory

+ (id)allocWithZone:(_NSZone *)zone
{
  _supportsPodcastsPinningSettingsV2 = [self _supportsPodcastsPinningSettingsV2];
  v5 = &off_1C228;
  if (!_supportsPodcastsPinningSettingsV2)
  {
    v5 = off_1C220;
  }

  v6 = *v5;
  v7 = objc_opt_class();

  return [v7 allocWithZone:zone];
}

+ (BOOL)_supportsPodcastsPinningSettingsV2
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  firstObject = [v4 firstObject];
  v6 = [[NSUUID alloc] initWithUUIDString:@"D718E4BE-8067-432E-AF41-7342473499D5"];
  v7 = [firstObject supportsCapability:v6];

  return v7;
}

@end