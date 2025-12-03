@interface HKClinicalRecord
- (id)hrplug_medicalRecordUUIDFromPrivateMetadata;
- (void)hrplug_updateMedicalRecordUUIDInPrivateMetadataToUUID:(id)d;
@end

@implementation HKClinicalRecord

- (id)hrplug_medicalRecordUUIDFromPrivateMetadata
{
  metadata = [(HKClinicalRecord *)self metadata];
  v4 = _HKPrivateMetadataKeyMedicalRecordUUID;
  v5 = [metadata objectForKeyedSubscript:_HKPrivateMetadataKeyMedicalRecordUUID];
  objc_opt_class();
  v6 = HKSafeObject();
  v7 = 0;

  if (v6)
  {
    v8 = [[NSUUID alloc] initWithUUIDString:v6];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      _HKInitializeLogging();
      v12 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_A57DC(v12, self, v6);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      v14 = v11;
      uUID = [(HKClinicalRecord *)self UUID];
      metadata2 = [(HKClinicalRecord *)self metadata];
      v17 = [metadata2 objectForKeyedSubscript:v4];
      *buf = 138543874;
      v19 = uUID;
      v20 = 2114;
      v21 = v17;
      v22 = 2114;
      v23 = v7;
      _os_log_fault_impl(&dword_0, v14, OS_LOG_TYPE_FAULT, "HDOriginalSignedClinicalDataRecordEntity did process a clinical record without a valid _HKPrivateMetadataKeyMedicalRecordUUID metadata entry. Record: %{public}@, metadata entry: %{public}@, error: %{public}@", buf, 0x20u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)hrplug_updateMedicalRecordUUIDInPrivateMetadataToUUID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    sub_A5898(a2, self);
  }

  metadata = [(HKClinicalRecord *)self metadata];
  v6 = metadata;
  if (!metadata)
  {
    metadata = &__NSDictionary0__struct;
  }

  v7 = [metadata mutableCopy];

  uUIDString = [dCopy UUIDString];
  [v7 setObject:uUIDString forKeyedSubscript:_HKPrivateMetadataKeyMedicalRecordUUID];

  [(HKClinicalRecord *)self _setMetadata:v7];
}

@end