@interface ATXCategoricalFeatureWifiSSID
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXCategoricalFeatureWifiSSID

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v4 = [a3 deviceStateContext];
  v5 = [v4 wifiSSID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"<Unexpected Category Value>";
  }

  v8 = v7;

  return v7;
}

@end