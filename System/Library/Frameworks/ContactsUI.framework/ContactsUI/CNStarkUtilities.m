@interface CNStarkUtilities
+ (BOOL)siriLanguageMatchesSystemLanguage;
+ (BOOL)vehicleHasBuiltInMic;
@end

@implementation CNStarkUtilities

+ (BOOL)siriLanguageMatchesSystemLanguage
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 objectForKey:*MEMORY[0x1E695D9B0]];
  v4 = [(objc_class *)getAFPreferencesClass() sharedPreferences];
  v5 = [v4 languageCode];

  v6 = CNUILogStarkUtilities();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v2 languageIdentifier];
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_INFO, "#CNStarkUtilities Siri Language Code: %@ System Languages Code: %@", &v12, 0x16u);
  }

  v8 = [v5 componentsSeparatedByString:@"-"];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v3 isEqualToString:v9];

  return v10;
}

+ (BOOL)vehicleHasBuiltInMic
{
  v2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v3 = [v2 attributeForKey:*MEMORY[0x1E69AEA50]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end