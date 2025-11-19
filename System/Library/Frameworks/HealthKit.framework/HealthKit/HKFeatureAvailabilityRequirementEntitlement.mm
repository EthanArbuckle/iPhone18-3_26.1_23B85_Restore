@interface HKFeatureAvailabilityRequirementEntitlement
+ (id)OSEligibilityPlistFilePathReadAccessEntitlement;
+ (id)bluetoothSystemAccessEntitlement;
+ (id)featureAvailabilityReadEntitlementForFeatureIdentifier:(id)a3;
+ (id)healthKitAccessEntitlement;
+ (id)machLookupGlobalNameForAppConduitdDeviceConnectionEntitlement;
+ (id)machLookupGlobalNameForBluetoothXPCEntitlement;
+ (id)mapLSDatabaseAccessEntitlement;
+ (id)mobileGestaltAllowedKeysToAccessDeviceInfoEntitlement;
+ (id)nanoRegistryGeneralAccessEntitlement;
+ (id)tccManagerAllServiceReadAccessEntitlement;
+ (id)userDefaultsAgeGatingDomainAccessEntitlement;
+ (id)userDefaultsCarouselDomainAccessEntitlement;
+ (id)userDefaultsDemoSettingsDomainAccessEntitlement;
+ (id)userDefaultsHealthSharedDomainReadWriteAccessEntitlement;
+ (id)userDefaultsNanolifestylePrivacyDomainReadWriteAccessEntitlement;
+ (id)userDefaultsRespiratoryDomainAccessEntitlement;
+ (id)userNotificationsBundleIdentifiersEntitlementForBundleIdentifier:(id)a3;
+ (id)userSettingsPlistFilePathReadAccessEntitlement;
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityRequirementEntitlement)initWithKey:(id)a3 type:(int64_t)a4 value:(id)a5 detail:(id)a6;
- (__CFString)typeDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation HKFeatureAvailabilityRequirementEntitlement

- (HKFeatureAvailabilityRequirementEntitlement)initWithKey:(id)a3 type:(int64_t)a4 value:(id)a5 detail:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = HKFeatureAvailabilityRequirementEntitlement;
  v13 = [(HKFeatureAvailabilityRequirementEntitlement *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    key = v13->_key;
    v13->_key = v14;

    v13->_type = a4;
    v16 = [v11 copy];
    value = v13->_value;
    v13->_value = v16;

    v18 = [v12 copy];
    detail = v13->_detail;
    v13->_detail = v18;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      key = self->_key;
      v7 = v5->_key;
      if (key != v7 && (!v7 || ![(NSString *)key isEqual:?]))
      {
        goto LABEL_15;
      }

      value = self->_value;
      v9 = v5->_value;
      if (value != v9 && (!v9 || ![value isEqual:?]))
      {
        goto LABEL_15;
      }

      if (self->_type != v5->_type)
      {
        goto LABEL_15;
      }

      detail = self->_detail;
      v11 = v5->_detail;
      if (detail == v11)
      {
        v12 = 1;
        goto LABEL_16;
      }

      if (v11)
      {
        v12 = [(NSString *)detail isEqual:?];
      }

      else
      {
LABEL_15:
        v12 = 0;
      }

LABEL_16:

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_17:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [self->_value hash] ^ v3;
  type = self->_type;
  return v4 ^ type ^ [(NSString *)self->_detail hash];
}

+ (id)featureAvailabilityReadEntitlementForFeatureIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.private.healthkit.feature-availability.read" type:0 value:v3 detail:@"Value should be array containing feature identifier."];

  return v4;
}

+ (id)userNotificationsBundleIdentifiersEntitlementForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.private.usernotifications.bundle-identifiers" type:0 value:v3 detail:@"Value should be array containing the bundle identifier"];

  return v4;
}

+ (id)healthKitAccessEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.developer.healthkit" type:2 value:@"YES" detail:0];

  return v2;
}

+ (id)userDefaultsAgeGatingDomainAccessEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.security.exception.shared-preference.read-only" type:0 value:@"com.apple.private.health.age-gating" detail:@"Value should be array containing the string mentioned in value"];

  return v2;
}

+ (id)userDefaultsRespiratoryDomainAccessEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.security.exception.shared-preference.read-only" type:0 value:@"com.apple.private.health.respiratory" detail:@"Value should be array containing the string mentioned in value"];

  return v2;
}

+ (id)userDefaultsCarouselDomainAccessEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.security.exception.shared-preference.read-only" type:0 value:@"com.apple.Carousel" detail:@"Value should be array containing the string mentioned in value"];

  return v2;
}

+ (id)userDefaultsDemoSettingsDomainAccessEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.security.exception.shared-preference.read-only" type:0 value:@"com.apple.demo-settings" detail:@"Value should be array containing the string mentioned in value"];

  return v2;
}

+ (id)userDefaultsHealthSharedDomainReadWriteAccessEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.security.exception.shared-preference.read-write" type:0 value:@"com.apple.health.shared" detail:@"Value should be array containing the string mentioned in value"];

  return v2;
}

+ (id)userDefaultsNanolifestylePrivacyDomainReadWriteAccessEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.security.exception.shared-preference.read-write" type:0 value:@"com.apple.nanolifestyle.privacy" detail:@"Value should be array containing the string mentioned in value"];

  return v2;
}

+ (id)bluetoothSystemAccessEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.bluetooth.system" type:2 value:@"YES" detail:0];

  return v2;
}

+ (id)userSettingsPlistFilePathReadAccessEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.security.exception.files.absolute-path.read-only" type:0 value:@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles/Library/ConfigurationProfiles/UserSettings.plist" detail:@"Value should be array containing the string mentioned in value"];

  return v2;
}

+ (id)OSEligibilityPlistFilePathReadAccessEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.security.exception.files.absolute-path.read-only" type:0 value:@"/private/var/db/eligibilityd/eligibility.plist" detail:@"Value should be array containing the string mentioned in value"];

  return v2;
}

+ (id)mapLSDatabaseAccessEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.private.coreservices.canmaplsdatabase" type:2 value:@"YES" detail:0];

  return v2;
}

+ (id)tccManagerAllServiceReadAccessEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.private.tcc.manager.access.read" type:0 value:@"kTCCServiceAll" detail:@"Value should be an array with a single value: kTCCServiceAll"];

  return v2;
}

+ (id)nanoRegistryGeneralAccessEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.nano.nanoregistry.generalaccess" type:2 value:@"YES" detail:0];

  return v2;
}

+ (id)machLookupGlobalNameForBluetoothXPCEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.security.exception.mach-lookup.global-name" type:0 value:@"com.apple.bluetooth.xpc" detail:@"Value should be array containing the string mentioned in value"];

  return v2;
}

+ (id)machLookupGlobalNameForAppConduitdDeviceConnectionEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.security.exception.mach-lookup.global-name" type:0 value:@"com.apple.appconduitd.device-connection" detail:@"Value should be array containing the string mentioned in value"];

  return v2;
}

+ (id)mobileGestaltAllowedKeysToAccessDeviceInfoEntitlement
{
  v2 = [[HKFeatureAvailabilityRequirementEntitlement alloc] initWithKey:@"com.apple.private.MobileGestalt.AllowedProtectedKeys" type:0 value:@"VasUgeSzVyHdB27g2XpN0g" detail:@"Value should be array containing the string mentioned in value"];

  return v2;
}

- (__CFString)typeDescription
{
  if (result)
  {
    v1 = [(__CFString *)result type];
    if (v1 > 6)
    {
      return @"Unknown";
    }

    else
    {
      return off_1E7384FE8[v1];
    }
  }

  return result;
}

- (id)description
{
  v3 = [(HKFeatureAvailabilityRequirementEntitlement *)self detail];
  if (v3)
  {
    v4 = [(HKFeatureAvailabilityRequirementEntitlement *)self detail];
  }

  else
  {
    v4 = @"--";
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(HKFeatureAvailabilityRequirementEntitlement *)self key];
  v7 = [(HKFeatureAvailabilityRequirementEntitlement *)self typeDescription];
  v8 = [(HKFeatureAvailabilityRequirementEntitlement *)self value];
  v9 = [v5 stringWithFormat:@"\tKey: %@\n\tType: %@\n\tValue: %@\n\tDescription: %@", v6, v7, v8, v4];

  return v9;
}

@end