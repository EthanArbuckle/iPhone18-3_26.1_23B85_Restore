@interface ASCEligibility
+ (BOOL)isInternalASCClient:(id)client;
+ (BOOL)isSpotlightClient:(id)client;
+ (uint64_t)clientWithBundleID:(void *)d isEligibleToUseLockupViewSize:;
+ (uint64_t)clientWithBundleIDIsEligibleToUseASC:(uint64_t)c;
+ (uint64_t)clientWithProcessNameIsEligibleToUseASC:(uint64_t)c;
+ (uint64_t)currentClientIsEligibleToUseASC;
+ (uint64_t)currentClientIsEligibleToUseLockupViewSize:(uint64_t)size;
+ (void)abortExecution;
+ (void)assertCurrentProcessEligibility;
@end

@implementation ASCEligibility

+ (void)assertCurrentProcessEligibility
{
  objc_opt_self();
  if ((+[ASCEligibility currentClientIsEligibleToUseASC]& 1) == 0)
  {

    +[ASCEligibility abortExecution];
  }
}

+ (uint64_t)currentClientIsEligibleToUseASC
{
  v0 = objc_opt_self();
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  if (([(ASCEligibility *)v0 clientWithBundleIDIsEligibleToUseASC:bundleIdentifier]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    v3 = [(ASCEligibility *)v0 clientWithProcessNameIsEligibleToUseASC:processName];
  }

  return v3;
}

+ (void)abortExecution
{
  objc_opt_self();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[ASCEligibility abortExecution];
  }
}

+ (uint64_t)clientWithBundleIDIsEligibleToUseASC:(uint64_t)c
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 hasPrefix:@"com.apple."];

  return v3;
}

+ (uint64_t)clientWithProcessNameIsEligibleToUseASC:(uint64_t)c
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 isEqualToString:@"Clip"];

  return v3;
}

+ (BOOL)isSpotlightClient:(id)client
{
  if ([client hasPrefix:@"com.apple.Spotlight"])
  {
    return 1;
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v5 == 9)
    {
      break;
    }

    v7 = [client hasPrefix:SpotlightClientBundleIDPrefixes[v5 + 1]];
    v5 = v6 + 1;
  }

  while (!v7);
  return v6 < 9;
}

+ (BOOL)isInternalASCClient:(id)client
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = [client hasPrefix:InternalASCClientBundleIDPrefixes[v5]];
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (!v6);
  return v6;
}

+ (uint64_t)currentClientIsEligibleToUseLockupViewSize:(uint64_t)size
{
  v2 = a2;
  v3 = objc_opt_self();
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v6 = [(ASCEligibility *)v3 clientWithBundleID:bundleIdentifier isEligibleToUseLockupViewSize:v2];

  return v6;
}

+ (uint64_t)clientWithBundleID:(void *)d isEligibleToUseLockupViewSize:
{
  v4 = a2;
  dCopy = d;
  v6 = objc_opt_self();
  IsSmallOfferButton = ASCLockupViewSizeIsSmallOfferButton(dCopy, v7);

  if (!IsSmallOfferButton || ([v4 asc_sha246Hash], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"BKN3YPrkowJshOfzYN9kxtu/zEFYrAWOeXV3rzu9h1k="), v9, (v10 & 1) != 0) || (objc_msgSend(v6, "isInternalASCClient:", v4) & 1) != 0 || (objc_msgSend(v6, "isSpotlightClient:", v4) & 1) != 0 || (objc_msgSend(v6, "isITunesStoreClient:", v4) & 1) != 0 || (objc_msgSend(v6, "isAppleTV:", v4) & 1) != 0 || (objc_msgSend(v6, "isGameOverlayUI:", v4) & 1) != 0 || (objc_msgSend(v6, "isAppDistributionLaunchAngel:", v4) & 1) != 0 || (objc_msgSend(v6, "isAMSEngagementViewService:", v4) & 1) != 0 || (objc_msgSend(v6, "isStoreKitUISceneService:", v4) & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = [v6 isAppStore:v4];
  }

  return v11;
}

@end