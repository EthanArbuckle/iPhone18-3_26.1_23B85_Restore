@interface PRSettingsProvider
+ (BOOL)getAlwaysPlaySoundForBundleID:(id)a3;
+ (BOOL)getEnableDiagnosticsForBundleID:(id)a3;
+ (BOOL)getPINPrivacyLockForBundleID:(id)a3;
+ (BOOL)hasEntitlement:(id)a3;
+ (BOOL)isProximityReaderSupported:(id)a3;
+ (BOOL)shouldDisablePINPrivacyLockForBundleID:(id)a3;
+ (BOOL)shouldShowPINPrivacyLockForBundleID:(id)a3;
+ (void)removeMDMAppAttribute:(int64_t)a3 forBundleID:(id)a4;
@end

@implementation PRSettingsProvider

+ (BOOL)shouldShowPINPrivacyLockForBundleID:(id)a3
{
  v3 = a3;
  NSLog(&cfstr_Prsettingsprov.isa);
  v4 = [PRSettingsProvider isProximityReaderSupported:v3];

  return v4;
}

+ (BOOL)isProximityReaderSupported:(id)a3
{
  v3 = a3;
  NSLog(&cfstr_Prsettingsprov_0.isa);
  if ([v3 length])
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
          v9 = [PRSettingsProvider hasEntitlement:v3];
LABEL_16:
          NSLog(&cfstr_Prsettingsprov_4.isa, v9);

          goto LABEL_17;
        }

        if ([v7 intValue] == 11)
        {
          v10 = [v8 intValue];

          NSLog(&cfstr_Prsettingsprov_3.isa, v10 > 1);
          if (v10 > 1)
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

+ (BOOL)hasEntitlement:(id)a3
{
  v3 = a3;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v10];
  v5 = v10;
  v6 = v5;
  if (!v4)
  {
    NSLog(&cfstr_Prsettingsprov_5.isa, v3, v5);
  }

  v7 = [v4 entitlements];
  v8 = [v7 objectForKey:@"com.apple.developer.proximity-reader.payment.acceptance" ofClass:objc_opt_class()];

  LOBYTE(v7) = [v8 BOOLValue];
  return v7;
}

+ (BOOL)shouldDisablePINPrivacyLockForBundleID:(id)a3
{
  v3 = a3;
  NSLog(&cfstr_Prsettingsprov_6.isa);
  if ([v3 length])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"PRMDMAttrPrivacyLock", v3];
    v5 = CFPreferencesCopyAppValue(v4, @"com.apple.merchantd");
    v6 = v5;
    if (v5)
    {
      NSLog(&cfstr_Prsettingsprov_9.isa, [v5 BOOLValue]);
      v7 = [v6 BOOLValue];
    }

    else
    {
      NSLog(&cfstr_Prsettingsprov_8.isa);
      v7 = 0;
    }
  }

  else
  {
    NSLog(&cfstr_Prsettingsprov_7.isa);
    v7 = 0;
  }

  return v7;
}

+ (BOOL)getPINPrivacyLockForBundleID:(id)a3
{
  v3 = a3;
  NSLog(&cfstr_Prsettingsprov_10.isa);
  if ([v3 length])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"PREnablePrivacyLockKey", v3];
    v5 = CFPreferencesCopyAppValue(v4, @"com.apple.merchantd");
    v6 = v5;
    if (v5)
    {
      NSLog(&cfstr_Prsettingsprov_13.isa, [v5 BOOLValue]);
      v7 = [v6 BOOLValue];
    }

    else
    {
      NSLog(&cfstr_Prsettingsprov_12.isa);
      v7 = 0;
    }
  }

  else
  {
    NSLog(&cfstr_Prsettingsprov_11.isa);
    v7 = 0;
  }

  return v7;
}

+ (void)removeMDMAppAttribute:(int64_t)a3 forBundleID:(id)a4
{
  v10 = a4;
  if ([v10 length])
  {
    if (a3)
    {
      NSLog(&cfstr_Prsettingsprov_24.isa);
    }

    else
    {
      NSLog(&cfstr_Prsettingsprov_23.isa, v10);
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"PRMDMAttrPrivacyLock", v10];
      v6 = CFPreferencesCopyAppValue(v5, @"com.apple.merchantd");
      v7 = *MEMORY[0x277CBF040];
      v8 = *MEMORY[0x277CBF010];
      CFPreferencesSetValue(v5, 0, @"com.apple.merchantd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
      if (v6 && [v6 BOOLValue])
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"PREnablePrivacyLockKey", v10];
        CFPreferencesSetValue(v9, 0, @"com.apple.merchantd", v7, v8);
      }

      CFPreferencesSynchronize(@"com.apple.merchantd", v7, v8);
    }
  }

  else
  {
    NSLog(&cfstr_Prsettingsprov_22.isa);
  }
}

+ (BOOL)getAlwaysPlaySoundForBundleID:(id)a3
{
  v3 = a3;
  NSLog(&cfstr_Prsettingsprov_25.isa);
  if ([v3 length])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"PREnableAlwaysPlaySound", v3];
    v5 = CFPreferencesCopyAppValue(v4, @"com.apple.merchantd");
    v6 = v5;
    if (v5)
    {
      NSLog(&cfstr_Prsettingsprov_27.isa, [v5 BOOLValue]);
      v7 = [v6 BOOLValue];
    }

    else
    {
      NSLog(&cfstr_Prsettingsprov_26.isa);
      v7 = 1;
    }
  }

  else
  {
    NSLog(&cfstr_Prsettingsprov_11.isa);
    v7 = 0;
  }

  return v7;
}

+ (BOOL)getEnableDiagnosticsForBundleID:(id)a3
{
  v3 = a3;
  NSLog(&cfstr_Prsettingsprov_30.isa);
  if ([v3 length])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"PREnableDiagnostics", v3];
    v5 = CFPreferencesCopyAppValue(v4, @"com.apple.merchantd");
    v6 = v5;
    if (v5)
    {
      NSLog(&cfstr_Prsettingsprov_31.isa, [v5 BOOLValue]);
      v7 = [v6 BOOLValue];
    }

    else
    {
      NSLog(&cfstr_Prsettingsprov_12.isa);
      v7 = 0;
    }
  }

  else
  {
    NSLog(&cfstr_Prsettingsprov_11.isa);
    v7 = 0;
  }

  return v7;
}

@end