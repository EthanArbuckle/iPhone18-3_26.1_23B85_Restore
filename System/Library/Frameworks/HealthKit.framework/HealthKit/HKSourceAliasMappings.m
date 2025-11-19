@interface HKSourceAliasMappings
+ (id)_builtInMappings;
+ (id)_createMedicationsMapping;
+ (id)aliasNameForSource:(id)a3;
+ (id)bundleIdentifierForIconForSource:(id)a3;
+ (id)bundleIdentifierForInstallationStatusForSource:(id)a3;
@end

@implementation HKSourceAliasMappings

+ (id)aliasNameForSource:(id)a3
{
  v4 = [a3 bundleIdentifier];
  if ([v4 isEqualToString:@"com.apple.siri"])
  {
    v5 = HKHealthKitFrameworkBundle();
    [v5 localizedStringForKey:@"SIRI_TITLE_WATCH" value:&stru_1F05FF230 table:@"Localizable"];
  }

  else
  {
    v6 = [a1 _builtInMappings];
    v5 = [v6 objectForKeyedSubscript:v4];

    [v5 aliasName];
  }
  v7 = ;

  return v7;
}

+ (id)bundleIdentifierForIconForSource:(id)a3
{
  v4 = [a3 bundleIdentifier];
  v5 = [a1 _builtInMappings];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 bundleIdentifierForIcon];

  return v7;
}

+ (id)bundleIdentifierForInstallationStatusForSource:(id)a3
{
  v4 = [a3 bundleIdentifier];
  v5 = [a1 _builtInMappings];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 bundleIdentifierForInstallationStatus];

  return v7;
}

+ (id)_builtInMappings
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"com.apple.Health.Medications";
  v2 = [a1 _createMedicationsMapping];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)_createMedicationsMapping
{
  v2 = objc_alloc_init(_HKSourceAliasMapping);
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"MEDICATION_TRACKING" value:&stru_1F05FF230 table:@"Localizable-Meds"];
  [(_HKSourceAliasMapping *)v2 setAliasName:v4];

  [(_HKSourceAliasMapping *)v2 setBundleIdentifierForIcon:@"com.apple.NanoMedications"];
  [(_HKSourceAliasMapping *)v2 setBundleIdentifierForInstallationStatus:@"com.apple.Health"];

  return v2;
}

@end