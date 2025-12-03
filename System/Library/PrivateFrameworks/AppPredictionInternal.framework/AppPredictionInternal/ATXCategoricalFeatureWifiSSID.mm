@interface ATXCategoricalFeatureWifiSSID
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCategoricalFeatureWifiSSID

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  deviceStateContext = [context deviceStateContext];
  wifiSSID = [deviceStateContext wifiSSID];
  v6 = wifiSSID;
  if (wifiSSID)
  {
    v7 = wifiSSID;
  }

  else
  {
    v7 = @"<Unexpected Category Value>";
  }

  v8 = v7;

  return v7;
}

@end