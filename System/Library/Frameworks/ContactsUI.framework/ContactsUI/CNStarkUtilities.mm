@interface CNStarkUtilities
+ (BOOL)siriLanguageMatchesSystemLanguage;
+ (BOOL)vehicleHasBuiltInMic;
@end

@implementation CNStarkUtilities

+ (BOOL)siriLanguageMatchesSystemLanguage
{
  v16 = *MEMORY[0x1E69E9840];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [currentLocale objectForKey:*MEMORY[0x1E695D9B0]];
  sharedPreferences = [(objc_class *)getAFPreferencesClass() sharedPreferences];
  languageCode = [sharedPreferences languageCode];

  v6 = CNUILogStarkUtilities();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    languageIdentifier = [currentLocale languageIdentifier];
    v12 = 138412546;
    v13 = languageCode;
    v14 = 2112;
    v15 = languageIdentifier;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_INFO, "#CNStarkUtilities Siri Language Code: %@ System Languages Code: %@", &v12, 0x16u);
  }

  v8 = [languageCode componentsSeparatedByString:@"-"];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v3 isEqualToString:v9];

  return v10;
}

+ (BOOL)vehicleHasBuiltInMic
{
  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v3 = [mEMORY[0x1E69AED10] attributeForKey:*MEMORY[0x1E69AEA50]];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end