@interface HDVersionedClinicalGatewaySyncEntity
+ (BOOL)_shouldInsertReceivedCodableGateway:(id)a3 profile:(id)a4;
@end

@implementation HDVersionedClinicalGatewaySyncEntity

+ (BOOL)_shouldInsertReceivedCodableGateway:(id)a3 profile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 daemon];
  v9 = [v8 ontologyConfigurationProvider];

  if (!v9)
  {
    _HKInitializeLogging();
    v10 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A36E0(a1, v7, v10);
    }
  }

  v11 = [v6 countryCode];
  v12 = [v11 uppercaseString];
  v13 = [v9 isCountryCodeSupported:v12];

  if ((v13 & 1) == 0)
  {
    _HKInitializeLogging();
    v18 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [v6 countryCode];
      v21 = HKSensitiveLogItem();
      v25 = 138543874;
      v26 = a1;
      v27 = 2114;
      v28 = v20;
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

  v14 = [v7 healthRecordsExtension];
  v15 = [v6 FHIRVersionString];
  v16 = [v14 isSupportedFHIRVersionString:v15];

  if ((v16 & 1) == 0)
  {
    _HKInitializeLogging();
    v23 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v23;
      v20 = [v6 FHIRVersionString];
      v21 = HKSensitiveLogItem();
      v25 = 138543874;
      v26 = a1;
      v27 = 2114;
      v28 = v20;
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