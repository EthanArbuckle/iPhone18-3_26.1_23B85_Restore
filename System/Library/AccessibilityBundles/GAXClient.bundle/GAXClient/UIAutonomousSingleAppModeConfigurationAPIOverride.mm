@interface UIAutonomousSingleAppModeConfigurationAPIOverride
- (BOOL)__gaxTrampoline_defaultBoolValueForFeatureKey:(id)key;
@end

@implementation UIAutonomousSingleAppModeConfigurationAPIOverride

- (BOOL)__gaxTrampoline_defaultBoolValueForFeatureKey:(id)key
{
  v3 = GAXProfileKeyForUIAutonomousSingleAppModeConfigurationDictionaryKey(key);
  v4 = GAXFallbackValueForProfileKey(v3, 3, 1);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

@end