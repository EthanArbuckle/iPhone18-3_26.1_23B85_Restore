@interface AXUIDaemonApplication
+ (BOOL)usesScenes;
+ (double)preferredWindowLevel;
+ (id)_systemUIServiceClientSettings;
+ (id)_systemUIServiceIdentifier;
- (int64_t)_frontMostAppOrientation;
@end

@implementation AXUIDaemonApplication

+ (BOOL)usesScenes
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  v3 = [MEMORY[0x1E6994660] sharedSystemShellSwitcher];
  v4 = [v3 isClarityBoardEnabled];

  return v4;
}

+ (id)_systemUIServiceClientSettings
{
  v2 = [MEMORY[0x1E69DCCB0] settings];
  [objc_opt_class() preferredWindowLevel];
  [v2 setPreferredLevel:?];

  return v2;
}

+ (id)_systemUIServiceIdentifier
{
  if ([a1 usesScenes])
  {
    v2 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v3 bundleIdentifier];
  }

  return v2;
}

- (int64_t)_frontMostAppOrientation
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  v3 = [v2 safeIntegerForKey:@"_interfaceOrientation"];

  return v3;
}

+ (double)preferredWindowLevel
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0.0;
}

@end