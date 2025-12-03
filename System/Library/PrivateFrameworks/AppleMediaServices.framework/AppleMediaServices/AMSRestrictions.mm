@interface AMSRestrictions
+ (BOOL)allowAccountModifications;
+ (BOOL)allowActiveAccountModifications;
+ (BOOL)eroticaAllowed;
+ (BOOL)explicitContentAllowed;
+ (BOOL)inAppPurchaseAllowed;
+ (BOOL)onDeviceDiagnosticsAllowed;
+ (BOOL)requirePasswordImmediately;
+ (id)_featureNameForMediaType:(unint64_t)type;
+ (id)rankForMediaType:(unint64_t)type;
+ (int64_t)explicitContentSettingForBundleID:(id)d;
@end

@implementation AMSRestrictions

+ (BOOL)onDeviceDiagnosticsAllowed
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  isDiagnosticSubmissionAllowed = [mEMORY[0x1E69ADFB8] isDiagnosticSubmissionAllowed];

  return isDiagnosticSubmissionAllowed;
}

+ (BOOL)allowAccountModifications
{
  allowActiveAccountModifications = [self allowActiveAccountModifications];
  if (allowActiveAccountModifications)
  {
    LOBYTE(allowActiveAccountModifications) = !+[AMSDevice isRunningInStoreDemoMode];
  }

  return allowActiveAccountModifications;
}

+ (BOOL)allowActiveAccountModifications
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADD70]] != 2;

  return v3;
}

+ (BOOL)eroticaAllowed
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADDF8]] != 2;

  return v3;
}

+ (BOOL)explicitContentAllowed
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADE68]] != 2;

  return v3;
}

+ (BOOL)inAppPurchaseAllowed
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADEC8]] != 2;

  return v3;
}

+ (BOOL)requirePasswordImmediately
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADEB8]] == 1;

  return v3;
}

+ (int64_t)explicitContentSettingForBundleID:(id)d
{
  lowercaseString = [d lowercaseString];
  if (([lowercaseString isEqualToString:@"com.apple.music"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"com.apple.news") & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"com.apple.podcasts"))
  {
    v4 = +[AMSRestrictions explicitContentAllowed];
  }

  else
  {
    if (![lowercaseString isEqualToString:@"com.apple.ibooks"])
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

+ (id)rankForMediaType:(unint64_t)type
{
  v4 = [self _featureNameForMediaType:type];
  if (!v4 || ([MEMORY[0x1E69ADFB8] sharedConnection], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "effectiveValueForSetting:", v4), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "maximumMediaRank")}];
  }

  return v6;
}

+ (id)_featureNameForMediaType:(unint64_t)type
{
  if (type > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E73BBC28 + type);
  }

  return v4;
}

@end