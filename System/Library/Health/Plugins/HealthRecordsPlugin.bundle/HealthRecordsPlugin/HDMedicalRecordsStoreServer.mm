@interface HDMedicalRecordsStoreServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
+ (id)requiredEntitlements;
- (id)_medicalRecordForClinicalRecordWithUUID:(id)d privateSourceBundleIdentifiersByPublic:(id)public error:(id *)error;
- (id)_privateSourceBundleIdentifiersByPublicWithError:(id *)error;
- (void)remote_fetchMedicalRecordsForClinicalRecordsUUIDs:(id)ds completion:(id)completion;
@end

@implementation HDMedicalRecordsStoreServer

- (void)remote_fetchMedicalRecordsForClinicalRecordsUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = objc_alloc_init(NSMutableArray);
  profile = [(HDMedicalRecordsStoreServer *)self profile];
  database = [profile database];
  v20 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1D6EC;
  v17[3] = &unk_106570;
  v17[4] = self;
  v11 = dsCopy;
  v18 = v11;
  v12 = v8;
  v19 = v12;
  v13 = [HDClinicalRecordEntity performReadTransactionWithHealthDatabase:database error:&v20 block:v17];
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

  completionCopy[2](completionCopy, v15, v16);
}

- (id)_medicalRecordForClinicalRecordWithUUID:(id)d privateSourceBundleIdentifiersByPublic:(id)public error:(id *)error
{
  publicCopy = public;
  dCopy = d;
  profile = [(HDMedicalRecordsStoreServer *)self profile];
  v11 = [HDClinicalRecordEntity objectWithUUID:dCopy encodingOptions:0 profile:profile error:error];

  if (!v11)
  {
    v26 = 0;
    goto LABEL_11;
  }

  client = [(HDMedicalRecordsStoreServer *)self client];
  authorizationOracle = [client authorizationOracle];
  sampleType = [v11 sampleType];
  v15 = [authorizationOracle authorizationStatusRecordForType:sampleType error:error];

  if (v15)
  {
    if ([v15 isAuthorizationDetermined])
    {
      if ([v15 canRead])
      {
        sourceRevision = [v11 sourceRevision];
        source = [sourceRevision source];
        bundleIdentifier = [source bundleIdentifier];

        v19 = [publicCopy objectForKeyedSubscript:bundleIdentifier];
        if (v19)
        {
          fHIRResource = [v11 FHIRResource];
          v21 = [HKFHIRIdentifier alloc];
          resourceType = [fHIRResource resourceType];
          [fHIRResource identifier];
          v23 = v29 = bundleIdentifier;
          v24 = [v21 initWithResourceType:resourceType identifier:v23];

          profile2 = [(HDMedicalRecordsStoreServer *)self profile];
          bundleIdentifier = v29;
          v26 = [HDMedicalRecordEntity medicalRecordWithSourceBundleIdentifier:v19 FHIRIdentifier:v24 profile:profile2 error:error];
        }

        else
        {
          _HKInitializeLogging();
          v28 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            sub_9E35C(bundleIdentifier, v28);
          }

          v26 = 0;
        }

        goto LABEL_10;
      }
    }

    else
    {
      [NSError hk_assignError:error code:5 description:@"Authorization not determined"];
    }
  }

  v26 = 0;
LABEL_10:

LABEL_11:

  return v26;
}

- (id)_privateSourceBundleIdentifiersByPublicWithError:(id *)error
{
  profile = [(HDMedicalRecordsStoreServer *)self profile];
  database = [profile database];
  v6 = [HDClinicalAccountEntity allAccountsInHealthDatabase:database error:error];

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

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  entitlements = [client entitlements];
  v7 = HKPrivateHealthKitAccessIdentifierHealthRecordsPrivate;
  v8 = [entitlements hasPrivateAccessEntitlementWithIdentifier:HKPrivateHealthKitAccessIdentifierHealthRecordsPrivate];

  if ((v8 & 1) == 0)
  {
    [NSError hk_assignError:error code:4 format:@"Missing %@ entitlement.", v7];
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