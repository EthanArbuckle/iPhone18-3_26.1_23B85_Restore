@interface HDMedicalRecordsStoreServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
+ (id)requiredEntitlements;
- (id)_medicalRecordForClinicalRecordWithUUID:(id)a3 privateSourceBundleIdentifiersByPublic:(id)a4 error:(id *)a5;
- (id)_privateSourceBundleIdentifiersByPublicWithError:(id *)a3;
- (void)remote_fetchMedicalRecordsForClinicalRecordsUUIDs:(id)a3 completion:(id)a4;
@end

@implementation HDMedicalRecordsStoreServer

- (void)remote_fetchMedicalRecordsForClinicalRecordsUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [(HDMedicalRecordsStoreServer *)self profile];
  v10 = [v9 database];
  v20 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1D6EC;
  v17[3] = &unk_106570;
  v17[4] = self;
  v11 = v6;
  v18 = v11;
  v12 = v8;
  v19 = v12;
  v13 = [HDClinicalRecordEntity performReadTransactionWithHealthDatabase:v10 error:&v20 block:v17];
  v14 = v20;

  if (v13)
  {
    v15 = v12;
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = v14;
  }

  v7[2](v7, v15, v16);
}

- (id)_medicalRecordForClinicalRecordWithUUID:(id)a3 privateSourceBundleIdentifiersByPublic:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(HDMedicalRecordsStoreServer *)self profile];
  v11 = [HDClinicalRecordEntity objectWithUUID:v9 encodingOptions:0 profile:v10 error:a5];

  if (!v11)
  {
    v26 = 0;
    goto LABEL_11;
  }

  v12 = [(HDMedicalRecordsStoreServer *)self client];
  v13 = [v12 authorizationOracle];
  v14 = [v11 sampleType];
  v15 = [v13 authorizationStatusRecordForType:v14 error:a5];

  if (v15)
  {
    if ([v15 isAuthorizationDetermined])
    {
      if ([v15 canRead])
      {
        v16 = [v11 sourceRevision];
        v17 = [v16 source];
        v18 = [v17 bundleIdentifier];

        v19 = [v8 objectForKeyedSubscript:v18];
        if (v19)
        {
          v20 = [v11 FHIRResource];
          v21 = [HKFHIRIdentifier alloc];
          v22 = [v20 resourceType];
          [v20 identifier];
          v23 = v29 = v18;
          v24 = [v21 initWithResourceType:v22 identifier:v23];

          v25 = [(HDMedicalRecordsStoreServer *)self profile];
          v18 = v29;
          v26 = [HDMedicalRecordEntity medicalRecordWithSourceBundleIdentifier:v19 FHIRIdentifier:v24 profile:v25 error:a5];
        }

        else
        {
          _HKInitializeLogging();
          v28 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            sub_9E35C(v18, v28);
          }

          v26 = 0;
        }

        goto LABEL_10;
      }
    }

    else
    {
      [NSError hk_assignError:a5 code:5 description:@"Authorization not determined"];
    }
  }

  v26 = 0;
LABEL_10:

LABEL_11:

  return v26;
}

- (id)_privateSourceBundleIdentifiersByPublicWithError:(id *)a3
{
  v4 = [(HDMedicalRecordsStoreServer *)self profile];
  v5 = [v4 database];
  v6 = [HDClinicalAccountEntity allAccountsInHealthDatabase:v5 error:a3];

  if (v6)
  {
    v7 = [v6 hk_mapToDictionary:&stru_1066F0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v6 = [a4 entitlements];
  v7 = HKPrivateHealthKitAccessIdentifierHealthRecordsPrivate;
  v8 = [v6 hasPrivateAccessEntitlementWithIdentifier:HKPrivateHealthKitAccessIdentifierHealthRecordsPrivate];

  if ((v8 & 1) == 0)
  {
    [NSError hk_assignError:a5 code:4 format:@"Missing %@ entitlement.", v7];
  }

  return v8;
}

+ (id)requiredEntitlements
{
  v4 = HKHealthKitEntitlement;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

@end