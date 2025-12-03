@interface PRSettingsProvider
+ (BOOL)getAlwaysPlaySoundForBundleID:(id)d;
+ (BOOL)getEnableDiagnosticsForBundleID:(id)d;
+ (BOOL)getPINPrivacyLockForBundleID:(id)d;
+ (BOOL)hasEntitlement:(id)entitlement;
+ (BOOL)isProximityReaderSupported:(id)supported;
+ (BOOL)shouldDisablePINPrivacyLockForBundleID:(id)d;
+ (BOOL)shouldShowPINPrivacyLockForBundleID:(id)d;
+ (void)removeMDMAppAttribute:(int64_t)attribute forBundleID:(id)d;
@end

@implementation PRSettingsProvider

+ (BOOL)shouldShowPINPrivacyLockForBundleID:(id)d
{
  dCopy = d;
  NSLog(&cfstr_Prsettingsprov.isa);
  v4 = [PRSettingsProvider isProximityReaderSupported:dCopy];

  return v4;
}

+ (BOOL)isProximityReaderSupported:(id)supported
{
  supportedCopy = supported;
  NSLog(&cfstr_Prsettingsprov_0.isa);
  if ([supportedCopy length])
  {
    v4 = MGCopyAnswer();
    NSLog(&cfstr_Prsettingsprov_2.isa, v4);
    if ([v4 hasPrefix:@"iPhone"] && objc_msgSend(v4, "length") >= 7)
    {
      v5 = [v4 substringFromIndex:6];
      v6 = [v5 componentsSeparatedByString:{@", "}];
      if ([v6 count] == 2)
      {
        v7 = [v6 objectAtIndex:0];
        v8 = [v6 objectAtIndex:1];
        if ([v7 intValue] > 11)
        {

          NSLog(&cfstr_Prsettingsprov_3.isa, 1);
LABEL_7:
          v9 = [PRSettingsProvider hasEntitlement:supportedCopy];
LABEL_16:
          NSLog(&cfstr_Prsettingsprov_4.isa, v9);

          goto LABEL_17;
        }

        if ([v7 intValue] == 11)
        {
          intValue = [v8 intValue];

          NSLog(&cfstr_Prsettingsprov_3.isa, intValue > 1);
          if (intValue > 1)
          {
            goto LABEL_7;
          }

LABEL_15:
          v9 = 0;
          goto LABEL_16;
        }
      }
    }

    NSLog(&cfstr_Prsettingsprov_3.isa, 0);
    goto LABEL_15;
  }

  NSLog(&cfstr_Prsettingsprov_1.isa);
  LOBYTE(v9) = 0;
LABEL_17:

  return v9;
}

+ (BOOL)hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:entitlementCopy allowPlaceholder:1 error:&v10];
  v5 = v10;
  v6 = v5;
  if (!v4)
  {
    NSLog(&cfstr_Prsettingsprov_5.isa, entitlementCopy, v5);
  }

  entitlements = [v4 entitlements];
  v8 = [entitlements objectForKey:@"com.apple.developer.proximity-reader.payment.acceptance" ofClass:objc_opt_class()];

  LOBYTE(entitlements) = [v8 BOOLValue];
  return entitlements;
}

+ (BOOL)shouldDisablePINPrivacyLockForBundleID:(id)d
{
  dCopy = d;
  NSLog(&cfstr_Prsettingsprov_6.isa);
  if ([dCopy length])
  {
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"PRMDMAttrPrivacyLock", dCopy];
    v5 = CFPreferencesCopyAppValue(dCopy, @"com.apple.merchantd");
    v6 = v5;
    if (v5)
    {
      NSLog(&cfstr_Prsettingsprov_9.isa, [v5 BOOLValue]);
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      NSLog(&cfstr_Prsettingsprov_8.isa);
      bOOLValue = 0;
    }
  }

  else
  {
    NSLog(&cfstr_Prsettingsprov_7.isa);
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)getPINPrivacyLockForBundleID:(id)d
{
  dCopy = d;
  NSLog(&cfstr_Prsettingsprov_10.isa);
  if ([dCopy length])
  {
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"PREnablePrivacyLockKey", dCopy];
    v5 = CFPreferencesCopyAppValue(dCopy, @"com.apple.merchantd");
    v6 = v5;
    if (v5)
    {
      NSLog(&cfstr_Prsettingsprov_13.isa, [v5 BOOLValue]);
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      NSLog(&cfstr_Prsettingsprov_12.isa);
      bOOLValue = 0;
    }
  }

  else
  {
    NSLog(&cfstr_Prsettingsprov_11.isa);
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (void)removeMDMAppAttribute:(int64_t)attribute forBundleID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    if (attribute)
    {
      NSLog(&cfstr_Prsettingsprov_24.isa);
    }

    else
    {
      NSLog(&cfstr_Prsettingsprov_23.isa, dCopy);
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"PRMDMAttrPrivacyLock", dCopy];
      v6 = CFPreferencesCopyAppValue(dCopy, @"com.apple.merchantd");
      v7 = *MEMORY[0x277CBF040];
      v8 = *MEMORY[0x277CBF010];
      CFPreferencesSetValue(dCopy, 0, @"com.apple.merchantd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
      if (v6 && [v6 BOOLValue])
      {
        dCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"PREnablePrivacyLockKey", dCopy];
        CFPreferencesSetValue(dCopy2, 0, @"com.apple.merchantd", v7, v8);
      }

      CFPreferencesSynchronize(@"com.apple.merchantd", v7, v8);
    }
  }

  else
  {
    NSLog(&cfstr_Prsettingsprov_22.isa);
  }
}

+ (BOOL)getAlwaysPlaySoundForBundleID:(id)d
{
  dCopy = d;
  NSLog(&cfstr_Prsettingsprov_25.isa);
  if ([dCopy length])
  {
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"PREnableAlwaysPlaySound", dCopy];
    v5 = CFPreferencesCopyAppValue(dCopy, @"com.apple.merchantd");
    v6 = v5;
    if (v5)
    {
      NSLog(&cfstr_Prsettingsprov_27.isa, [v5 BOOLValue]);
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      NSLog(&cfstr_Prsettingsprov_26.isa);
      bOOLValue = 1;
    }
  }

  else
  {
    NSLog(&cfstr_Prsettingsprov_11.isa);
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)getEnableDiagnosticsForBundleID:(id)d
{
  dCopy = d;
  NSLog(&cfstr_Prsettingsprov_30.isa);
  if ([dCopy length])
  {
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"PREnableDiagnostics", dCopy];
    v5 = CFPreferencesCopyAppValue(dCopy, @"com.apple.merchantd");
    v6 = v5;
    if (v5)
    {
      NSLog(&cfstr_Prsettingsprov_31.isa, [v5 BOOLValue]);
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      NSLog(&cfstr_Prsettingsprov_12.isa);
      bOOLValue = 0;
    }
  }

  else
  {
    NSLog(&cfstr_Prsettingsprov_11.isa);
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end