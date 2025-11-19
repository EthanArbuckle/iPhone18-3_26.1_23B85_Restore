@interface UIAutonomousSingleAppModeConfigurationAPIOverride
- (BOOL)__gaxTrampoline_defaultBoolValueForFeatureKey:(id)a3;
@end

@implementation UIAutonomousSingleAppModeConfigurationAPIOverride

- (BOOL)__gaxTrampoline_defaultBoolValueForFeatureKey:(id)a3
{
  v3 = GAXProfileKeyForUIAutonomousSingleAppModeConfigurationDictionaryKey(a3);
  v4 = GAXFallbackValueForProfileKey(v3, 3, 1);
  v5 = [v4 BOOLValue];

  return v5;
}

@end