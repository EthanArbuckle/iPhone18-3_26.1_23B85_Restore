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

  mEMORY[0x1E6994660] = [MEMORY[0x1E6994660] sharedSystemShellSwitcher];
  isClarityBoardEnabled = [mEMORY[0x1E6994660] isClarityBoardEnabled];

  return isClarityBoardEnabled;
}

+ (id)_systemUIServiceClientSettings
{
  settings = [MEMORY[0x1E69DCCB0] settings];
  [objc_opt_class() preferredWindowLevel];
  [settings setPreferredLevel:?];

  return settings;
}

+ (id)_systemUIServiceIdentifier
{
  if ([self usesScenes])
  {
    bundleIdentifier = 0;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  return bundleIdentifier;
}

- (int64_t)_frontMostAppOrientation
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  v3 = [mainScreen safeIntegerForKey:@"_interfaceOrientation"];

  return v3;
}

+ (double)preferredWindowLevel
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0.0;
}

@end