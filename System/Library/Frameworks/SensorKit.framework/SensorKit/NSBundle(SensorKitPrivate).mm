@interface NSBundle(SensorKitPrivate)
+ (void)sk_bundleWithIdentifier:()SensorKitPrivate;
- (uint64_t)sk_appName;
- (uint64_t)sk_perCategoryDetailDescription;
- (uint64_t)sk_requiredCategories;
- (uint64_t)sk_studyName;
- (uint64_t)sr_bundleType;
- (uint64_t)sr_normalizedBundleIdentifier;
- (void)sk_privacyURL;
- (void)sk_usageDescription;
@end

@implementation NSBundle(SensorKitPrivate)

+ (void)sk_bundleWithIdentifier:()SensorKitPrivate
{
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Library/Research/Studies/" isDirectory:1 relativeToURL:0];
  v5 = MEMORY[0x1E696AAE8];

  return [(NSBundle *)v5 sk_bundleWithIdentifier:a3 partnerAppDirectoryURL:v4];
}

- (uint64_t)sk_appName
{
  v2 = [a1 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  if (isValidString(v2))
  {
    return v2;
  }

  v2 = [a1 objectForInfoDictionaryKey:@"CFBundleName"];
  if (isValidString(v2))
  {
    return v2;
  }

  return [a1 bundleIdentifier];
}

- (uint64_t)sk_studyName
{
  v2 = [a1 objectForInfoDictionaryKey:@"NSSensorKitStudyName"];
  if (isValidString(v2))
  {
    return v2;
  }

  return [a1 sk_appName];
}

- (void)sk_privacyURL
{
  v1 = [a1 objectForInfoDictionaryKey:@"NSSensorKitPrivacyPolicyURL"];
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = [MEMORY[0x1E695DFF8] URLWithString:v1];
      if (([objc_msgSend(v1 "scheme")] & 1) == 0 && !objc_msgSend(objc_msgSend(v1, "scheme"), "isEqualToString:", @"https"))
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

- (void)sk_usageDescription
{
  v1 = [a1 objectForInfoDictionaryKey:@"NSSensorKitUsageDescription"];
  if (isValidString(v1))
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)sk_requiredCategories
{
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = [a1 objectForInfoDictionaryKey:@"NSSensorKitUsageDetail"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__NSBundle_SensorKitPrivate__sk_requiredCategories__block_invoke;
    v6[3] = &unk_1E8330A10;
    v6[4] = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:v6];
    return [MEMORY[0x1E695DFD8] setWithSet:v2];
  }

  else
  {
    v5 = MEMORY[0x1E695DFD8];

    return [v5 set];
  }
}

- (uint64_t)sk_perCategoryDetailDescription
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [a1 objectForInfoDictionaryKey:@"NSSensorKitUsageDetail"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__NSBundle_SensorKitPrivate__sk_perCategoryDetailDescription__block_invoke;
    v5[3] = &unk_1E8330A38;
    v5[4] = a1;
    v5[5] = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:v5];
  }

  return [MEMORY[0x1E695DF20] dictionaryWithDictionary:v2];
}

- (uint64_t)sr_bundleType
{
  v2 = objc_autoreleasePoolPush();
  v3 = -[NSBundle sr_bundleTypeWithPartnerAppDirectoryURL:](a1, [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Library/Research/Studies/" isDirectory:1 relativeToURL:0]);
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (uint64_t)sr_normalizedBundleIdentifier
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Library/Research/Studies/" isDirectory:1 relativeToURL:0];
  if (!a1)
  {
    goto LABEL_7;
  }

  v3 = [(NSBundle *)a1 sr_bundleTypeWithPartnerAppDirectoryURL:v2];
  if (v3 == 1)
  {
    v6 = @"com.apple.Research";
    if (([objc_msgSend(a1 "bundleIdentifier")] & 1) == 0)
    {
      v6 = @"com.appleinternal.health.Lime";
      if (([objc_msgSend(a1 "bundleIdentifier")] & 1) == 0)
      {
        v6 = [a1 objectForInfoDictionaryKey:@"SRStudyApplicationGroupIdentifier"];
      }
    }

    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
    }

    v7 = qword_1EE02AB38;
    if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_INFO))
    {
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = [a1 bundleIdentifier];
      _os_log_impl(&dword_1C914D000, v7, OS_LOG_TYPE_INFO, "Found parent app %{public}@ for study %{public}@", &v9, 0x16u);
    }

    goto LABEL_15;
  }

  if (v3 != 2)
  {
LABEL_7:
    v6 = 0;
LABEL_15:
    v8 = *MEMORY[0x1E69E9840];
    return v6;
  }

  v4 = *MEMORY[0x1E69E9840];

  return [a1 bundleIdentifier];
}

@end