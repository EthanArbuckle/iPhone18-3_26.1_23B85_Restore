@interface FBScene(AXExtras)
- (BOOL)accessibilityIsSceneOnUnknownScreen;
- (BOOL)accessibilitySceneBelongsToTheSystemApp;
- (BOOL)accessibilitySceneIsCallServiceBanner;
- (BOOL)accessibilitySceneIsDeactivatedBySidebar;
- (BOOL)accessibilitySceneIsDeactivatedBySwitcher;
- (BOOL)accessibilitySceneIsDismissedSearchScreen;
- (BOOL)accessibilitySceneIsForegroundVisible;
- (BOOL)accessibilitySceneIsSuspended;
- (double)accessibilitySceneFrame;
- (double)accessibilitySceneLevel;
- (id)accessibilitySceneDescription;
- (id)accessibilityScenePID;
- (id)accessibilitySceneProcess;
- (uint64_t)accessibilityIsSceneOccluded;
- (uint64_t)accessibilityIsSceneOnCarScreen;
- (uint64_t)accessibilityIsSceneOnExternalScreen;
- (uint64_t)accessibilityIsSceneOnMainScreen;
- (uint64_t)accessibilitySceneIsDismissedInCallService;
- (uint64_t)accessibilitySceneIsRunningInForeground;
- (uint64_t)accessibilitySceneIsShieldedByAppProtection;
- (uint64_t)accessibilitySceneOwnerIsAUIApplication;
@end

@implementation FBScene(AXExtras)

- (uint64_t)accessibilitySceneOwnerIsAUIApplication
{
  NSClassFromString(&cfstr_Fbapplicationp.isa);
  accessibilitySceneProcess = [self accessibilitySceneProcess];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilitySceneProcess
{
  v2 = [self safeValueForKey:@"clientProcess"];
  legacyProcess = __UIAccessibilitySafeClass();

  if (!legacyProcess)
  {
    v4 = [self safeValueForKey:@"clientHandle"];
    v5 = __UIAccessibilitySafeClass();

    legacyProcess = [v5 legacyProcess];
  }

  return legacyProcess;
}

- (uint64_t)accessibilityIsSceneOnMainScreen
{
  settings = [self settings];
  displayIdentity = [settings displayIdentity];
  isMainDisplay = [displayIdentity isMainDisplay];

  return isMainDisplay;
}

- (id)accessibilitySceneDescription
{
  v2 = [MEMORY[0x277CCAB68] stringWithFormat:@"FBScene (AX) <%p>\n", self];
  accessibilitySceneIdentifier = [self accessibilitySceneIdentifier];
  [v2 appendFormat:@"  Scene ID: %@\n", accessibilitySceneIdentifier];

  accessibilityScenePID = [self accessibilityScenePID];
  [v2 appendFormat:@"  Scene Process (pid): %@\n", accessibilityScenePID];

  [self accessibilitySceneFrame];
  v5 = NSStringFromRect(v15);
  [v2 appendFormat:@"  Scene Frame: %@\n", v5];

  v6 = MEMORY[0x277CCABB0];
  [self accessibilitySceneLevel];
  v7 = [v6 numberWithDouble:?];
  [v2 appendFormat:@"  Scene Level: %@\n", v7];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "accessibilityIsSceneOccluded")}];
  [v2 appendFormat:@"  Scene is Occluded: %@\n", v8];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "accessibilitySceneBelongsToTheSystemApp")}];
  [v2 appendFormat:@"  Belongs to system app: %@\n", v9];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "accessibilitySceneOwnerIsAUIApplication")}];
  [v2 appendFormat:@"  Is a UIApplication: %@\n", v10];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "accessibilitySceneIsForegroundVisible")}];
  [v2 appendFormat:@"  Is foreground visible: %@\n", v11];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "accessibilitySceneIsRunningInForeground")}];
  [v2 appendFormat:@"  Is foreground running: %@\n", v12];

  return v2;
}

- (uint64_t)accessibilityIsSceneOnExternalScreen
{
  settings = [self settings];
  displayIdentity = [settings displayIdentity];
  isExternal = [displayIdentity isExternal];

  return isExternal;
}

- (uint64_t)accessibilityIsSceneOnCarScreen
{
  settings = [self settings];
  displayIdentity = [settings displayIdentity];
  isCarDisplay = [displayIdentity isCarDisplay];

  return isCarDisplay;
}

- (BOOL)accessibilityIsSceneOnUnknownScreen
{
  settings = [self settings];
  displayIdentity = [settings displayIdentity];
  v3 = [displayIdentity type] == 7;

  return v3;
}

- (BOOL)accessibilitySceneBelongsToTheSystemApp
{
  v2 = AXFrontBoardSystemAppProcess();
  accessibilitySceneProcess = [self accessibilitySceneProcess];
  v4 = v2 == accessibilitySceneProcess;

  return v4;
}

- (uint64_t)accessibilitySceneIsDismissedInCallService
{
  accessibilitySceneProcess = [self accessibilitySceneProcess];
  bundleIdentifier = [accessibilitySceneProcess bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:*MEMORY[0x277CE6818]];

  if (v4)
  {
    settings = [self settings];
    objc_opt_class();
    settings2 = [self settings];
    v7 = [settings2 safeValueForKey:@"settings"];
    v8 = __UIAccessibilityCastAsClass();

    objc_opt_class();
    settings3 = [self settings];
    v10 = [settings3 safeValueForKey:@"_legacyOtherSettings"];
    v11 = __UIAccessibilityCastAsClass();

    if (![settings isForeground])
    {
      goto LABEL_5;
    }

    v12 = [v8 objectForKey:@"<_UIViewServiceSceneSettings>"];
    v13 = __UIAccessibilitySafeClass();

    v14 = [v13 objectForKey:@"serviceViewControllerClassName"];
    v15 = __UIAccessibilitySafeClass();

    LOBYTE(v13) = [v15 isEqualToString:@"PHEmergencyDialerViewController"];
    if (v13)
    {
      v4 = 0;
    }

    else
    {
LABEL_5:
      v16 = [v11 objectForSetting:3001];
      integerValue = [v16 integerValue];

      v4 = (integerValue - 4) < 0xFFFFFFFFFFFFFFFELL;
    }
  }

  return v4;
}

- (BOOL)accessibilitySceneIsCallServiceBanner
{
  accessibilitySceneProcess = [self accessibilitySceneProcess];
  bundleIdentifier = [accessibilitySceneProcess bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:*MEMORY[0x277CE6818]];

  if (!v4)
  {
    return 0;
  }

  objc_opt_class();
  settings = [self settings];
  v6 = [settings safeValueForKey:@"_legacyOtherSettings"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 objectForSetting:3001];
  v9 = [v8 integerValue] == 1;

  return v9;
}

- (BOOL)accessibilitySceneIsDismissedSearchScreen
{
  identifier = [self identifier];
  v3 = [identifier containsString:@"searchScreen"];

  if (!v3)
  {
    return 0;
  }

  objc_opt_class();
  settings = [self settings];
  v5 = [settings safeValueForKey:@"_legacyOtherSettings"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 objectForSetting:1000];
  v8 = [v7 integerValue] == 0;

  return v8;
}

- (BOOL)accessibilitySceneIsSuspended
{
  accessibilitySceneProcess = [self accessibilitySceneProcess];
  v2 = [accessibilitySceneProcess safeIntForKey:@"taskState"] == 3;

  return v2;
}

- (BOOL)accessibilitySceneIsForegroundVisible
{
  accessibilitySceneProcess = [self accessibilitySceneProcess];
  v2 = [accessibilitySceneProcess safeIntegerForKey:@"visibility"] == 2;

  return v2;
}

- (uint64_t)accessibilitySceneIsRunningInForeground
{
  accessibilitySceneProcess = [self accessibilitySceneProcess];
  v2 = [accessibilitySceneProcess safeBoolForKey:@"isForeground"];

  return v2;
}

- (uint64_t)accessibilitySceneIsShieldedByAppProtection
{
  if (!AXProcessIsSpringBoard())
  {
    return 0;
  }

  v2 = AXFrontBoardSystemApplicationControllerInstance();
  v3 = [v2 safeValueForKey:@"_appProtectionCoordinator"];

  v4 = [v3 safeDictionaryForKey:@"bundleIdentifiersToAssistants"];
  accessibilitySceneProcess = [self accessibilitySceneProcess];
  bundleIdentifier = [accessibilitySceneProcess bundleIdentifier];
  v7 = [v4 objectForKey:bundleIdentifier];

  if (v7)
  {
    v8 = [v7 safeBoolForKey:@"shouldShield"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)accessibilitySceneIsDeactivatedBySidebar
{
  v1 = [self safeValueForKey:@"settings"];
  v2 = [v1 conformsToProtocol:&unk_284FB2DC0] && (objc_msgSend(v1, "deactivationReasons") & 0x80) != 0;

  return v2;
}

- (BOOL)accessibilitySceneIsDeactivatedBySwitcher
{
  v1 = [self safeValueForKey:@"settings"];
  v2 = [v1 conformsToProtocol:&unk_284FB2DC0] && (objc_msgSend(v1, "deactivationReasons") & 8) != 0;

  return v2;
}

- (id)accessibilityScenePID
{
  accessibilitySceneProcess = [self accessibilitySceneProcess];
  v2 = [accessibilitySceneProcess pid];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:v2];

  return v3;
}

- (double)accessibilitySceneFrame
{
  v1 = [self safeValueForKey:@"settings"];
  v2 = [v1 safeValueForKey:@"frame"];
  [v2 CGRectValue];
  v4 = v3;

  return v4;
}

- (double)accessibilitySceneLevel
{
  v1 = [self safeValueForKey:@"settings"];
  v2 = [v1 safeValueForKey:@"level"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (uint64_t)accessibilityIsSceneOccluded
{
  v1 = [self safeValueForKey:@"settings"];
  v2 = [v1 safeValueForKey:@"isOccluded"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end