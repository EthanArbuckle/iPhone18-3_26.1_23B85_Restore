@interface ASIdentifierManager
+ (ASIdentifierManager)sharedManager;
- (BOOL)isAdvertisingTrackingEnabled;
- (BOOL)isUserOptedIn;
- (NSUUID)advertisingIdentifier;
@end

@implementation ASIdentifierManager

+ (ASIdentifierManager)sharedManager
{
  v2 = objc_alloc_init(ASIdentifierManager);

  return v2;
}

- (BOOL)isUserOptedIn
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25F28]];

  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v4 effectiveBoolValueForSetting:*MEMORY[0x277D25F40]];

  return v3 == 1 && v5 != 1;
}

- (BOOL)isAdvertisingTrackingEnabled
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AdSupport"];
  v5 = [v4 objectForKey:@"LastRegionalEnforcementCheck"];
  v6 = [v4 objectForKey:@"ShouldEnforceATP"];
  if (v6)
  {
    v7 = [v4 BOOLForKey:@"ShouldEnforceATP"] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  if (!v5 || ([v3 timeIntervalSinceDate:v5], v8 > 300.0))
  {
    [v4 setObject:v3 forKey:@"LastRegionalEnforcementCheck"];
    [v4 synchronize];
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__ASIdentifierManager_isAdvertisingTrackingEnabled__block_invoke;
    block[3] = &unk_278A040F8;
    v13 = v4;
    dispatch_async(v9, block);
  }

  if (v7)
  {
    v10 = [(ASIdentifierManager *)self isUserOptedIn];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __51__ASIdentifierManager_isAdvertisingTrackingEnabled__block_invoke(uint64_t a1)
{
  v3 = 0;
  [*(a1 + 32) setBool:objc_msgSend(MEMORY[0x277CBA608] forKey:{"shouldEnforceTrackingWithReasonCode:", &v3), @"ShouldEnforceATP"}];
  return [*(a1 + 32) synchronize];
}

- (NSUUID)advertisingIdentifier
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25F40]];

  if (v3 || ([MEMORY[0x277D77BF8] sharedManager], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isSharedIPad"), v4, v5))
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  }

  else
  {
    v7 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v6 = [v7 deviceIdentifierForAdvertising];
  }

  return v6;
}

@end