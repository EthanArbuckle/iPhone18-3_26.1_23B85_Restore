@interface ASCEligibility
+ (BOOL)isInternalASCClient:(id)a3;
+ (BOOL)isSpotlightClient:(id)a3;
+ (uint64_t)clientWithBundleID:(void *)a3 isEligibleToUseLockupViewSize:;
+ (uint64_t)clientWithBundleIDIsEligibleToUseASC:(uint64_t)a1;
+ (uint64_t)clientWithProcessNameIsEligibleToUseASC:(uint64_t)a1;
+ (uint64_t)currentClientIsEligibleToUseASC;
+ (uint64_t)currentClientIsEligibleToUseLockupViewSize:(uint64_t)a1;
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
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 bundleIdentifier];
  if (([(ASCEligibility *)v0 clientWithBundleIDIsEligibleToUseASC:v2]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x277CCAC38] processInfo];
    v5 = [v4 processName];
    v3 = [(ASCEligibility *)v0 clientWithProcessNameIsEligibleToUseASC:v5];
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

+ (uint64_t)clientWithBundleIDIsEligibleToUseASC:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 hasPrefix:@"com.apple."];

  return v3;
}

+ (uint64_t)clientWithProcessNameIsEligibleToUseASC:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 isEqualToString:@"Clip"];

  return v3;
}

+ (BOOL)isSpotlightClient:(id)a3
{
  if ([a3 hasPrefix:@"com.apple.Spotlight"])
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

    v7 = [a3 hasPrefix:SpotlightClientBundleIDPrefixes[v5 + 1]];
    v5 = v6 + 1;
  }

  while (!v7);
  return v6 < 9;
}

+ (BOOL)isInternalASCClient:(id)a3
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = [a3 hasPrefix:InternalASCClientBundleIDPrefixes[v5]];
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

+ (uint64_t)currentClientIsEligibleToUseLockupViewSize:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [(ASCEligibility *)v3 clientWithBundleID:v5 isEligibleToUseLockupViewSize:v2];

  return v6;
}

+ (uint64_t)clientWithBundleID:(void *)a3 isEligibleToUseLockupViewSize:
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  IsSmallOfferButton = ASCLockupViewSizeIsSmallOfferButton(v5, v7);

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