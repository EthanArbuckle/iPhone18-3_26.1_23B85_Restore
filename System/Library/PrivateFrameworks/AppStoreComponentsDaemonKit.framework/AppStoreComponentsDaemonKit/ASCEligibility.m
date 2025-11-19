@interface ASCEligibility
+ (BOOL)isInternalASCClient:(id)a3;
+ (BOOL)isSpotlightClient:(id)a3;
+ (uint64_t)clientWithBundleIDIsEligibleToUseASC:(uint64_t)a1;
+ (uint64_t)clientWithProcessNameIsEligibleToUseASC:(uint64_t)a1;
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

@end