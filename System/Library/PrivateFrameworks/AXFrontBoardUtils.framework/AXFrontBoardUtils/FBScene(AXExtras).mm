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
  v2 = [a1 accessibilitySceneProcess];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilitySceneProcess
{
  v2 = [a1 safeValueForKey:@"clientProcess"];
  v3 = __UIAccessibilitySafeClass();

  if (!v3)
  {
    v4 = [a1 safeValueForKey:@"clientHandle"];
    v5 = __UIAccessibilitySafeClass();

    v3 = [v5 legacyProcess];
  }

  return v3;
}

- (uint64_t)accessibilityIsSceneOnMainScreen
{
  v1 = [a1 settings];
  v2 = [v1 displayIdentity];
  v3 = [v2 isMainDisplay];

  return v3;
}

- (id)accessibilitySceneDescription
{
  v2 = [MEMORY[0x277CCAB68] stringWithFormat:@"FBScene (AX) <%p>\n", a1];
  v3 = [a1 accessibilitySceneIdentifier];
  [v2 appendFormat:@"  Scene ID: %@\n", v3];

  v4 = [a1 accessibilityScenePID];
  [v2 appendFormat:@"  Scene Process (pid): %@\n", v4];

  [a1 accessibilitySceneFrame];
  v5 = NSStringFromRect(v15);
  [v2 appendFormat:@"  Scene Frame: %@\n", v5];

  v6 = MEMORY[0x277CCABB0];
  [a1 accessibilitySceneLevel];
  v7 = [v6 numberWithDouble:?];
  [v2 appendFormat:@"  Scene Level: %@\n", v7];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "accessibilityIsSceneOccluded")}];
  [v2 appendFormat:@"  Scene is Occluded: %@\n", v8];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "accessibilitySceneBelongsToTheSystemApp")}];
  [v2 appendFormat:@"  Belongs to system app: %@\n", v9];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "accessibilitySceneOwnerIsAUIApplication")}];
  [v2 appendFormat:@"  Is a UIApplication: %@\n", v10];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "accessibilitySceneIsForegroundVisible")}];
  [v2 appendFormat:@"  Is foreground visible: %@\n", v11];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "accessibilitySceneIsRunningInForeground")}];
  [v2 appendFormat:@"  Is foreground running: %@\n", v12];

  return v2;
}

- (uint64_t)accessibilityIsSceneOnExternalScreen
{
  v1 = [a1 settings];
  v2 = [v1 displayIdentity];
  v3 = [v2 isExternal];

  return v3;
}

- (uint64_t)accessibilityIsSceneOnCarScreen
{
  v1 = [a1 settings];
  v2 = [v1 displayIdentity];
  v3 = [v2 isCarDisplay];

  return v3;
}

- (BOOL)accessibilityIsSceneOnUnknownScreen
{
  v1 = [a1 settings];
  v2 = [v1 displayIdentity];
  v3 = [v2 type] == 7;

  return v3;
}

- (BOOL)accessibilitySceneBelongsToTheSystemApp
{
  v2 = AXFrontBoardSystemAppProcess();
  v3 = [a1 accessibilitySceneProcess];
  v4 = v2 == v3;

  return v4;
}

- (uint64_t)accessibilitySceneIsDismissedInCallService
{
  v2 = [a1 accessibilitySceneProcess];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277CE6818]];

  if (v4)
  {
    v5 = [a1 settings];
    objc_opt_class();
    v6 = [a1 settings];
    v7 = [v6 safeValueForKey:@"settings"];
    v8 = __UIAccessibilityCastAsClass();

    objc_opt_class();
    v9 = [a1 settings];
    v10 = [v9 safeValueForKey:@"_legacyOtherSettings"];
    v11 = __UIAccessibilityCastAsClass();

    if (![v5 isForeground])
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
      v17 = [v16 integerValue];

      v4 = (v17 - 4) < 0xFFFFFFFFFFFFFFFELL;
    }
  }

  return v4;
}

- (BOOL)accessibilitySceneIsCallServiceBanner
{
  v2 = [a1 accessibilitySceneProcess];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277CE6818]];

  if (!v4)
  {
    return 0;
  }

  objc_opt_class();
  v5 = [a1 settings];
  v6 = [v5 safeValueForKey:@"_legacyOtherSettings"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 objectForSetting:3001];
  v9 = [v8 integerValue] == 1;

  return v9;
}

- (BOOL)accessibilitySceneIsDismissedSearchScreen
{
  v2 = [a1 identifier];
  v3 = [v2 containsString:@"searchScreen"];

  if (!v3)
  {
    return 0;
  }

  objc_opt_class();
  v4 = [a1 settings];
  v5 = [v4 safeValueForKey:@"_legacyOtherSettings"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 objectForSetting:1000];
  v8 = [v7 integerValue] == 0;

  return v8;
}

- (BOOL)accessibilitySceneIsSuspended
{
  v1 = [a1 accessibilitySceneProcess];
  v2 = [v1 safeIntForKey:@"taskState"] == 3;

  return v2;
}

- (BOOL)accessibilitySceneIsForegroundVisible
{
  v1 = [a1 accessibilitySceneProcess];
  v2 = [v1 safeIntegerForKey:@"visibility"] == 2;

  return v2;
}

- (uint64_t)accessibilitySceneIsRunningInForeground
{
  v1 = [a1 accessibilitySceneProcess];
  v2 = [v1 safeBoolForKey:@"isForeground"];

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
  v5 = [a1 accessibilitySceneProcess];
  v6 = [v5 bundleIdentifier];
  v7 = [v4 objectForKey:v6];

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
  v1 = [a1 safeValueForKey:@"settings"];
  v2 = [v1 conformsToProtocol:&unk_284FB2DC0] && (objc_msgSend(v1, "deactivationReasons") & 0x80) != 0;

  return v2;
}

- (BOOL)accessibilitySceneIsDeactivatedBySwitcher
{
  v1 = [a1 safeValueForKey:@"settings"];
  v2 = [v1 conformsToProtocol:&unk_284FB2DC0] && (objc_msgSend(v1, "deactivationReasons") & 8) != 0;

  return v2;
}

- (id)accessibilityScenePID
{
  v1 = [a1 accessibilitySceneProcess];
  v2 = [v1 pid];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:v2];

  return v3;
}

- (double)accessibilitySceneFrame
{
  v1 = [a1 safeValueForKey:@"settings"];
  v2 = [v1 safeValueForKey:@"frame"];
  [v2 CGRectValue];
  v4 = v3;

  return v4;
}

- (double)accessibilitySceneLevel
{
  v1 = [a1 safeValueForKey:@"settings"];
  v2 = [v1 safeValueForKey:@"level"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (uint64_t)accessibilityIsSceneOccluded
{
  v1 = [a1 safeValueForKey:@"settings"];
  v2 = [v1 safeValueForKey:@"isOccluded"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end