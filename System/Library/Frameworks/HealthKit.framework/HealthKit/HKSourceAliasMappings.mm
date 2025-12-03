@interface HKSourceAliasMappings
+ (id)_builtInMappings;
+ (id)_createMedicationsMapping;
+ (id)aliasNameForSource:(id)source;
+ (id)bundleIdentifierForIconForSource:(id)source;
+ (id)bundleIdentifierForInstallationStatusForSource:(id)source;
@end

@implementation HKSourceAliasMappings

+ (id)aliasNameForSource:(id)source
{
  bundleIdentifier = [source bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.siri"])
  {
    v5 = HKHealthKitFrameworkBundle();
    [v5 localizedStringForKey:@"SIRI_TITLE_WATCH" value:&stru_1F05FF230 table:@"Localizable"];
  }

  else
  {
    _builtInMappings = [self _builtInMappings];
    v5 = [_builtInMappings objectForKeyedSubscript:bundleIdentifier];

    [v5 aliasName];
  }
  v7 = ;

  return v7;
}

+ (id)bundleIdentifierForIconForSource:(id)source
{
  bundleIdentifier = [source bundleIdentifier];
  _builtInMappings = [self _builtInMappings];
  v6 = [_builtInMappings objectForKeyedSubscript:bundleIdentifier];

  bundleIdentifierForIcon = [v6 bundleIdentifierForIcon];

  return bundleIdentifierForIcon;
}

+ (id)bundleIdentifierForInstallationStatusForSource:(id)source
{
  bundleIdentifier = [source bundleIdentifier];
  _builtInMappings = [self _builtInMappings];
  v6 = [_builtInMappings objectForKeyedSubscript:bundleIdentifier];

  bundleIdentifierForInstallationStatus = [v6 bundleIdentifierForInstallationStatus];

  return bundleIdentifierForInstallationStatus;
}

+ (id)_builtInMappings
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"com.apple.Health.Medications";
  _createMedicationsMapping = [self _createMedicationsMapping];
  v7[0] = _createMedicationsMapping;
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