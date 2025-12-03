@interface QLUtilitiesInternal
+ (BOOL)currentAppIsAppleApp;
+ (BOOL)deviceIsLocked;
+ (NSString)applicationIdentifierEntitlementKey;
+ (id)appIdentifierFromTeamAppTuple:(id)tuple processName:(id)name;
+ (id)getCurrentApplicationBundleIdentifier;
+ (id)getCurrentApplicationBundleIdentifierUsingEntitlement;
@end

@implementation QLUtilitiesInternal

+ (NSString)applicationIdentifierEntitlementKey
{
  if (applicationIdentifierEntitlementKey_onceToken != -1)
  {
    +[QLUtilitiesInternal applicationIdentifierEntitlementKey];
  }

  v3 = applicationIdentifierEntitlementKey__applicationIdentifierEntitlementKey;

  return v3;
}

void __58__QLUtilitiesInternal_applicationIdentifierEntitlementKey__block_invoke()
{
  v0 = applicationIdentifierEntitlementKey__applicationIdentifierEntitlementKey;
  applicationIdentifierEntitlementKey__applicationIdentifierEntitlementKey = @"application-identifier";
}

+ (id)getCurrentApplicationBundleIdentifier
{
  bundleIdentifier = +[QLUtilitiesInternal getCurrentApplicationBundleIdentifierUsingEntitlement];
  if (!bundleIdentifier)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v4 = MEMORY[0x277D43EF8];
    v5 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_ERROR, "Could not obtain current application bundle identifier #Generic", v7, 2u);
    }
  }

  return bundleIdentifier;
}

+ (id)getCurrentApplicationBundleIdentifierUsingEntitlement
{
  v2 = _QLGetStringEntitlement(@"application-identifier");
  if (v2)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    v5 = [QLUtilitiesInternal appIdentifierFromTeamAppTuple:v2 processName:processName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)currentAppIsAppleApp
{
  v2 = +[QLUtilitiesInternal getCurrentApplicationBundleIdentifierUsingEntitlement];
  v3 = [v2 hasPrefix:@"com.apple."];

  return v3;
}

+ (BOOL)deviceIsLocked
{
  v2 = MGCopyAnswer();
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (id)appIdentifierFromTeamAppTuple:(id)tuple processName:(id)name
{
  tupleCopy = tuple;
  nameCopy = name;
  if (appIdentifierFromTeamAppTuple_processName__onceToken != -1)
  {
    +[QLUtilitiesInternal appIdentifierFromTeamAppTuple:processName:];
  }

  if ([tupleCopy hasPrefix:@"com.apple."])
  {
    v7 = tupleCopy;
  }

  else
  {
    v8 = [appIdentifierFromTeamAppTuple_processName____regex matchesInString:tupleCopy options:0 range:{0, objc_msgSend(tupleCopy, "length")}];
    v7 = 0;
    if ([v8 count] == 1)
    {
      v9 = [v8 objectAtIndex:0];
      v7 = 0;
      if ([v9 numberOfRanges] == 2)
      {
        v10 = [v9 rangeAtIndex:1];
        v7 = [tupleCopy substringWithRange:{v10, v11}];
      }
    }
  }

  return v7;
}

uint64_t __65__QLUtilitiesInternal_appIdentifierFromTeamAppTuple_processName___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"[0-9 options:A-Z]{10}\\.(.*)" error:{0, 0}];
  v1 = appIdentifierFromTeamAppTuple_processName____regex;
  appIdentifierFromTeamAppTuple_processName____regex = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __121__QLUtilitiesInternal_performOpenInWithFileURL_claimBinding_additionalLaunchServicesOptions_isContentManaged_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end