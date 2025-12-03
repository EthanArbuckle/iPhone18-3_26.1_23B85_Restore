@interface HDSignedClinicalDataRecordEntity
+ (id)signedClinicalDataRecordBackedByRecordWithUniquenessChecksum:(id)checksum account:(id)account database:(id)database profile:(id)profile error:(id *)error;
+ (id)signedClinicalRecordBackingMedicalRecord:(id)record profile:(id)profile error:(id *)error;
- (BOOL)willDeleteWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
@end

@implementation HDSignedClinicalDataRecordEntity

+ (id)signedClinicalRecordBackingMedicalRecord:(id)record profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v8 = [HDOriginalSignedClinicalDataRecordEntity existingEntityBackingMedicalRecord:record profile:profileCopy error:error];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 signedClinicalDataRecordWithProfile:profileCopy error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)signedClinicalDataRecordBackedByRecordWithUniquenessChecksum:(id)checksum account:(id)account database:(id)database profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v12 = [HDOriginalSignedClinicalDataRecordEntity existingEntityWithUniquenessChecksum:checksum account:account database:database error:error];
  v13 = [v12 signedClinicalDataRecordWithProfile:profileCopy error:error];

  return v13;
}

- (BOOL)willDeleteWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  profileCopy = profile;
  transactionCopy = transaction;
  v28.receiver = self;
  v28.super_class = HDSignedClinicalDataRecordEntity;
  v10 = [(HDSignedClinicalDataRecordEntity *)&v28 willDeleteWithProfile:profileCopy transaction:transactionCopy error:error];
  if (v10)
  {
    v11 = HDMedicalRecordEntityPropertyOriginalSignedClinicalDataRecordROWID;
    v12 = [transactionCopy databaseForEntity:self];
    v13 = [(HDSignedClinicalDataRecordEntity *)self valueForProperty:v11 database:v12];

    v14 = [HDOriginalSignedClinicalDataRecordEntity entityWithPersistentID:v13];
    v15 = HDOriginalSignedClinicalDataRecordEntityPropertySyncIdentifier;
    v16 = [transactionCopy databaseForEntityClass:objc_opt_class()];
    v17 = [v14 valueForProperty:v15 database:v16];

    if (v17)
    {
      v18 = [NSUUID hk_UUIDWithData:v17];
      if (v18)
      {
        healthRecordsExtension = [profileCopy healthRecordsExtension];
        v20 = healthRecordsExtension;
        if (healthRecordsExtension)
        {
          signedClinicalDataManager = [healthRecordsExtension signedClinicalDataManager];
          v22 = [signedClinicalDataManager isReextractingSignedClinicalDataRecordWithSyncIdentifier:v18];

          if ((v22 & 1) == 0)
          {
            createHealthRecordsIngestionServiceClient = [v20 createHealthRecordsIngestionServiceClient];
            [createHealthRecordsIngestionServiceClient willDeleteSignedClinicalDataRecordWithSyncIdentifier:v18];
          }
        }

        else
        {
          _HKInitializeLogging();
          v26 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            sub_A811C(v26);
          }
        }
      }

      else
      {
        _HKInitializeLogging();
        v25 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
        {
          sub_A8160(v25);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v24 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_A81A4(v13, v24);
      }
    }
  }

  return v10;
}

@end