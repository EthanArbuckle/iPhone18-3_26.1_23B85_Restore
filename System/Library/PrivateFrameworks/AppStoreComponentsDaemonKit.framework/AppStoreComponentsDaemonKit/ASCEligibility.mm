@interface ASCEligibility
+ (BOOL)isInternalASCClient:(id)client;
+ (BOOL)isSpotlightClient:(id)client;
+ (uint64_t)clientWithBundleIDIsEligibleToUseASC:(uint64_t)c;
+ (uint64_t)clientWithProcessNameIsEligibleToUseASC:(uint64_t)c;
+ (uint64_t)currentClientIsEligibleToUseASC;
+ (void)abortExecution;
+ (void)assertCurrentProcessEligibility;
@end

@implementation ASCEligibility

+ (void)abortExecution
{
  objc_opt_self();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[ASCEligibility abortExecution];
  }
}

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

@end