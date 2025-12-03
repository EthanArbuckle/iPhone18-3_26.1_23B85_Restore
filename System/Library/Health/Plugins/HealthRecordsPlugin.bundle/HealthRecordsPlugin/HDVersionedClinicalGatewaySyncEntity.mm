@interface HDVersionedClinicalGatewaySyncEntity
+ (BOOL)_shouldInsertReceivedCodableGateway:(id)gateway profile:(id)profile;
@end

@implementation HDVersionedClinicalGatewaySyncEntity

+ (BOOL)_shouldInsertReceivedCodableGateway:(id)gateway profile:(id)profile
{
  gatewayCopy = gateway;
  profileCopy = profile;
  daemon = [profileCopy daemon];
  ontologyConfigurationProvider = [daemon ontologyConfigurationProvider];

  if (!ontologyConfigurationProvider)
  {
    _HKInitializeLogging();
    v10 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A36E0(self, profileCopy, v10);
    }
  }

  countryCode = [gatewayCopy countryCode];
  uppercaseString = [countryCode uppercaseString];
  v13 = [ontologyConfigurationProvider isCountryCodeSupported:uppercaseString];

  if ((v13 & 1) == 0)
  {
    _HKInitializeLogging();
    v18 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      countryCode2 = [gatewayCopy countryCode];
      v21 = HKSensitiveLogItem();
      v25 = 138543874;
      selfCopy2 = self;
      v27 = 2114;
      v28 = countryCode2;
      v29 = 2114;
      v30 = v21;
      v22 = "%{public}@ dropping incoming gateway because country %{public}@ is not supported: %{public}@";
LABEL_11:
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, v22, &v25, 0x20u);
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  healthRecordsExtension = [profileCopy healthRecordsExtension];
  fHIRVersionString = [gatewayCopy FHIRVersionString];
  v16 = [healthRecordsExtension isSupportedFHIRVersionString:fHIRVersionString];

  if ((v16 & 1) == 0)
  {
    _HKInitializeLogging();
    v23 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v23;
      countryCode2 = [gatewayCopy FHIRVersionString];
      v21 = HKSensitiveLogItem();
      v25 = 138543874;
      selfCopy2 = self;
      v27 = 2114;
      v28 = countryCode2;
      v29 = 2114;
      v30 = v21;
      v22 = "%{public}@ dropping incoming gateway because FHIR version %{public}@ is not supported: %{public}@";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v17 = 1;
LABEL_13:

  return v17;
}

@end