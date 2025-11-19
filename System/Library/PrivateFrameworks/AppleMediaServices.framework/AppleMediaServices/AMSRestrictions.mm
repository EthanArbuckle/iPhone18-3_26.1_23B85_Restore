@interface AMSRestrictions
+ (BOOL)allowAccountModifications;
+ (BOOL)allowActiveAccountModifications;
+ (BOOL)eroticaAllowed;
+ (BOOL)explicitContentAllowed;
+ (BOOL)inAppPurchaseAllowed;
+ (BOOL)onDeviceDiagnosticsAllowed;
+ (BOOL)requirePasswordImmediately;
+ (id)_featureNameForMediaType:(unint64_t)a3;
+ (id)rankForMediaType:(unint64_t)a3;
+ (int64_t)explicitContentSettingForBundleID:(id)a3;
@end

@implementation AMSRestrictions

+ (BOOL)onDeviceDiagnosticsAllowed
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 isDiagnosticSubmissionAllowed];

  return v3;
}

+ (BOOL)allowAccountModifications
{
  v2 = [a1 allowActiveAccountModifications];
  if (v2)
  {
    LOBYTE(v2) = !+[AMSDevice isRunningInStoreDemoMode];
  }

  return v2;
}

+ (BOOL)allowActiveAccountModifications
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x1E69ADD70]] != 2;

  return v3;
}

+ (BOOL)eroticaAllowed
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x1E69ADDF8]] != 2;

  return v3;
}

+ (BOOL)explicitContentAllowed
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE68]] != 2;

  return v3;
}

+ (BOOL)inAppPurchaseAllowed
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x1E69ADEC8]] != 2;

  return v3;
}

+ (BOOL)requirePasswordImmediately
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x1E69ADEB8]] == 1;

  return v3;
}

+ (int64_t)explicitContentSettingForBundleID:(id)a3
{
  v3 = [a3 lowercaseString];
  if (([v3 isEqualToString:@"com.apple.music"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.news") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"com.apple.podcasts"))
  {
    v4 = +[AMSRestrictions explicitContentAllowed];
  }

  else
  {
    if (![v3 isEqualToString:@"com.apple.ibooks"])
    {
      v5 = -1;
      goto LABEL_6;
    }

    v4 = +[AMSRestrictions eroticaAllowed];
  }

  v5 = v4;
LABEL_6:

  return v5;
}

+ (id)rankForMediaType:(unint64_t)a3
{
  v4 = [a1 _featureNameForMediaType:a3];
  if (!v4 || ([MEMORY[0x1E69ADFB8] sharedConnection], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "effectiveValueForSetting:", v4), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "maximumMediaRank")}];
  }

  return v6;
}

+ (id)_featureNameForMediaType:(unint64_t)a3
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E73BBC28 + a3);
  }

  return v4;
}

@end