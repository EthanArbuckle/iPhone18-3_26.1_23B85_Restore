@interface HDClinicalAccountEntity
+ (BOOL)_bindPropertiesForSync:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6 mutationHandler:(id)a7;
+ (BOOL)_deleteLastFetchDatesForAccountWithdentifier:(id)a3 profile:(id)a4 healthDatabase:(id)a5 error:(id *)a6;
+ (BOOL)_insertCodableAccounts:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)_insertOrUpdateAccountWithCodableAccount:(id)a3 gatewayID:(id)a4 signedClinicalDataIssuerID:(id)a5 syncProvenance:(int64_t)a6 syncIdentity:(int64_t)a7 transaction:(id)a8 profile:(id)a9 error:(id *)a10;
+ (BOOL)_propertiesShouldTriggerSyncOnUpdate:(id)a3;
+ (BOOL)_updateAccountCredentialState:(int64_t)a3 identifier:(id)a4 profile:(id)a5 transaction:(id)a6 event:(id)a7 alwaysRecordEvent:(BOOL)a8 error:(id *)a9;
+ (BOOL)_updateCountOfGatewayBackedAccountsWithProfile:(id)a3 error:(id *)a4;
+ (BOOL)_validateCodableAccount:(id)a3 error:(id *)a4;
+ (BOOL)accountsNeedExtractionForProfile:(id)a3;
+ (BOOL)createAccountCredentialFromAuthResponse:(id)a3 accountIdentifier:(id)a4 requestedScope:(id)a5 profile:(id)a6 healthDatabase:(id)a7 event:(id)a8 createdCredential:(id *)a9 error:(id *)a10;
+ (BOOL)deleteAccountWithIdentifier:(id)a3 deletionReason:(int64_t)a4 deleteGateway:(BOOL)a5 deleteIssuer:(BOOL)a6 profile:(id)a7 error:(id *)a8;
+ (BOOL)resetAccountRowIDsForRulesVersion:(id)a3 identifier:(id)a4 profile:(id)a5 healthDatabase:(id)a6 error:(id *)a7;
+ (BOOL)updateAccountCredentialFromAuthResponse:(id)a3 accountIdentifier:(id)a4 requestedScope:(id)a5 profile:(id)a6 healthDatabase:(id)a7 event:(id)a8 updatedCredential:(id *)a9 error:(id *)a10;
+ (BOOL)updateAccountCredentialState:(int64_t)a3 identifier:(id)a4 profile:(id)a5 healthDatabase:(id)a6 event:(id)a7 error:(id *)a8;
+ (BOOL)updateAccountLastExtractedRowID:(id)a3 rulesVersion:(id)a4 identifier:(id)a5 profile:(id)a6 healthDatabase:(id)a7 error:(id *)a8;
+ (BOOL)updateAccountLastFailedFetchDate:(id)a3 overrideFailedAttemptsCount:(id)a4 identifier:(id)a5 profile:(id)a6 healthDatabase:(id)a7 error:(id *)a8;
+ (BOOL)updateAccountLastFetchDate:(id)a3 wasFullFetch:(BOOL)a4 identifier:(id)a5 profile:(id)a6 healthDatabase:(id)a7 error:(id *)a8;
+ (BOOL)updateAccountLastFetchDateNoValidation:(id)a3 identifier:(id)a4 profile:(id)a5 healthDatabase:(id)a6 error:(id *)a7;
+ (BOOL)updateAccountLastSubmittedRowID:(id)a3 expectedRulesVersion:(id)a4 identifier:(id)a5 healthDatabase:(id)a6 error:(id *)a7;
+ (BOOL)updateAccountUserEnabled:(BOOL)a3 identifier:(id)a4 profile:(id)a5 healthDatabase:(id)a6 error:(id *)a7;
+ (BOOL)updateSourcesForAccountWithIdentifier:(id)a3 wasAccountInsert:(BOOL)a4 clinicalExternalID:(id)a5 externalTitle:(id)a6 profile:(id)a7 error:(id *)a8;
+ (HDClinicalAccountEntity)accountEntityWithCredentialID:(id)a3 database:(id)a4 error:(id *)a5;
+ (HDClinicalAccountEntity)accountEntityWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (HDClinicalAccountEntity)accountEntityWithSyncIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)_codableWithClinicalAccount:(id)a3 syncIdentifier:(id)a4 modificationDate:(id)a5;
+ (id)_codableWithRow:(HDSQLiteRow *)a3 error:(id *)a4;
+ (id)_currentCodableMessageVersion;
+ (id)_hkAccountRepresentingDeletedAccountWithIdentifier:(id)a3 gatewayExternalID:(id)a4 signedClinicalDataIssuerID:(id)a5;
+ (id)_insertAccountInProfile:(id)a3 identifier:(id)a4 syncIdentifier:(id)a5 userEnabled:(BOOL)a6 credentialState:(int64_t)a7 creationDate:(id)a8 modificationDate:(id)a9 lastFetchDate:(id)a10 lastFullFetchDate:(id)a11 lastFailedFetchDate:(id)a12 failedFetchAttemptsCount:(id)a13 lastExtractedRowID:(id)a14 lastSubmittedRowID:(id)a15 lastExtractedRulesVersion:(id)a16 credentialID:(id)a17 patientHash:(id)a18 gatewayID:(id)a19 signedClinicalDataIssuerID:(id)a20 clinicalSharingStatus:(id)a21 syncProvenance:(int64_t)a22 syncIdentity:(int64_t)a23 error:(id *)a24;
+ (id)_keyValueDomainWithProfile:(id)a3;
+ (id)_populateAccountWithRow:(HDSQLiteRow *)a3 credential:(id)a4 gateway:(id)a5 signedClinicalDataIssuer:(id)a6;
+ (id)_predicateForAccountForGatewayWithExternalID:(id)a3;
+ (id)_predicateForAccountForSignedClinicalDataIssuerWithIdentifier:(id)a3;
+ (id)_predicateForAccountWithGatewayID:(id)a3;
+ (id)_predicateForAccountWithIdentifier:(id)a3;
+ (id)_predicateForAccountWithPersistentID:(int64_t)a3 expectedLastExtractedRulesVersion:(id)a4;
+ (id)_predicateForAccountWithSignedClinicalDataIssuerID:(id)a3;
+ (id)_predicateForAccountWithSyncIdentifier:(id)a3;
+ (id)_predicateForAccountsForGatewaysWithExternalIDs:(id)a3;
+ (id)_predicateForAccountsWithIdentifiers:(id)a3;
+ (id)_predicateForActiveDefaultCredentialState;
+ (id)_predicateForActiveDefaultCredentialStateMissingCredential;
+ (id)_predicateForActiveNeedsRelogin;
+ (id)_predicateForFetchable;
+ (id)_predicateForFetchableAccountsWithIdentifiers:(id)a3;
+ (id)_predicateForUserFetchEligible;
+ (id)_predicateForUserFetchEligibleAccountsWithIdentifiers:(id)a3;
+ (id)_propertiesByAddingSyncPropertiesToProperties:(id)a3;
+ (id)_propertiesForCodable;
+ (id)_propertiesForEntity;
+ (id)_propertiesForModel;
+ (id)_propertiesForUpdatingFromReceivedEntity;
+ (id)_syncProperties;
+ (id)_syncableProperties;
+ (id)accountEntityForGatewayWithExternalID:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)accountEntityForSignedClinicalDataIssuerWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)accountWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)accountWithIdentifier:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
+ (id)accountsForGatewayExternalIDs:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
+ (id)accountsInDatabase:(id)a3 predicate:(id)a4 errorOut:(id *)a5;
+ (id)accountsInHealthDatabase:(id)a3 predicate:(id)a4 error:(id *)a5;
+ (id)accountsNeedExtractionSQL;
+ (id)accountsWithIdentifiers:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)countOfGatewayBackedAccountsWithProfile:(id)a3 error:(id *)a4;
+ (id)countOfIssuerBackedAccountsWithProfile:(id)a3 error:(id *)a4;
+ (id)existingAccountEntityForGatewayWithExternalID:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)existingAccountEntityForSignedClinicalDataIssuerWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)existingAccountEntityWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)existingAccountEntityWithSyncIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)fetchableAccountsWithIdentifiers:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)hasActiveAccountNeedingReloginInHealthDatabase:(id)a3 error:(id *)a4;
+ (id)insertAccountWithIdentifier:(id)a3 syncIdentifier:(id)a4 userEnabled:(BOOL)a5 credentialState:(int64_t)a6 credentialID:(id)a7 patientHash:(id)a8 gatewayID:(id)a9 signedClinicalDataIssuerID:(id)a10 clinicalSharingStatus:(id)a11 profile:(id)a12 error:(id *)a13;
+ (id)predicateForAccountsForLegacySync;
+ (id)userFetchEligibleAccountsWithIdentifiers:(id)a3 profile:(id)a4 error:(id *)a5;
+ (int64_t)hasGatewayBackedAccountsInHealthDatabase:(id)a3 error:(id *)a4;
+ (int64_t)hasIssuerBackedAccountsInHealthDatabase:(id)a3 error:(id *)a4;
+ (void)_journalAccountEvent:(id)a3 database:(id)a4;
+ (void)_postAccountChangeNotificationForAccount:(id)a3 changeType:(int64_t)a4;
- (BOOL)_resetAccountCredentialIfDownloadIsOverdueWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)_updateAccountFromSyncWithCodable:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
- (BOOL)_updateBooleanForProperty:(id)a3 value:(BOOL)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
- (BOOL)_updateCredentialID:(id)a3 patientID:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
- (BOOL)_updateLastExtractedRowID:(id)a3 rulesVersion:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
- (BOOL)_updateLastFailedFetchDate:(id)a3 overrideFailedAttemptsCount:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
- (BOOL)_updateLastFetchDate:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
- (BOOL)_updateLastFetchDate:(id)a3 wasFullFetch:(BOOL)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
- (BOOL)_updateLastFullFetchDate:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
- (BOOL)_updateLastFullFetchDateWithLastFetchDate:(id)a3 lastFullFetchDate:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
- (BOOL)_updateStringForProperty:(id)a3 value:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
- (BOOL)assignCredentialWithPersistentID:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
- (BOOL)deleteCredentialWithProfile:(id)a3 transaction:(id)a4 deleteTokens:(BOOL)a5 credentialIdentifier:(id *)a6 error:(id *)a7;
- (BOOL)resetFetchFailureInformationWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)updateClinicalSharingStatusWithProfile:(id)a3 transaction:(id)a4 firstSharedDate:(id)a5 lastSharedDate:(id)a6 userStatus:(id)a7 multiDeviceStatus:(id)a8 primaryDeviceName:(id)a9 error:(id *)a10;
- (BOOL)updateCredentialState:(int64_t)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
- (BOOL)updateLastSubmittedRowID:(id)a3 expectedRulesVersion:(id)a4 database:(id)a5 error:(id *)a6;
- (BOOL)updateProperties:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6 bindingHandler:(id)a7;
- (id)_codableInDatabase:(id)a3 error:(id *)a4;
- (id)_createCredentialFromAuthResponse:(id)a3 credentialIdentifier:(id)a4 requestedScope:(id)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8;
- (id)_credentialInDatabase:(id)a3 error:(id *)a4;
- (id)_issuerInDatabase:(id)a3 error:(id *)a4;
- (id)_updateCredentialFromAuthResponse:(id)a3 requestedScope:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
- (id)accountInDatabase:(id)a3 error:(id *)a4;
- (id)codableInHealthDatabase:(id)a3 error:(id *)a4;
- (id)gatewayInDatabase:(id)a3 error:(id *)a4;
- (int64_t)credentialStateInDatabase:(id)a3;
@end

@implementation HDClinicalAccountEntity

+ (id)_propertiesForEntity
{
  v4[0] = HDClinicalAccountEntityPropertyIdentifier;
  v4[1] = HDClinicalAccountEntityPropertySyncIdentifier;
  v4[2] = HDClinicalAccountEntityPropertyUserEnabled;
  v4[3] = HDClinicalAccountEntityPropertyCredentialState;
  v4[4] = HDClinicalAccountEntityPropertyCreationDate;
  v4[5] = HDClinicalAccountEntityPropertyLastFetchDate;
  v4[6] = HDClinicalAccountEntityPropertyLastFullFetchDate;
  v4[7] = HDClinicalAccountEntityPropertyLastFailedFetchDate;
  v4[8] = HDClinicalAccountEntityPropertyFailedFetchAttemptsCount;
  v4[9] = HDClinicalAccountEntityPropertyLastExtractedRowID;
  v4[10] = HDClinicalAccountEntityPropertyLastSubmittedRowID;
  v4[11] = HDClinicalAccountEntityPropertyLastExtractedRulesVersion;
  v4[12] = HDClinicalAccountEntityPropertyCredentialID;
  v4[13] = HDClinicalAccountEntityPropertyPatientHash;
  v4[14] = HDClinicalAccountEntityPropertyGatewayID;
  v4[15] = HDClinicalAccountEntityPropertySignedClinicalDataIssuerROWID;
  v4[16] = HDClinicalAccountEntityPropertyClinicalSharingLastSharedDate;
  v4[17] = HDClinicalAccountEntityPropertyClinicalSharingFirstSharedDate;
  v4[18] = HDClinicalAccountEntityPropertyClinicalSharingUserStatus;
  v4[19] = HDClinicalAccountEntityPropertyClinicalSharingMultiDeviceStatus;
  v4[20] = HDClinicalAccountEntityPropertyClinicalSharingPrimaryDeviceName;
  v4[21] = HDClinicalAccountEntityPropertySyncProvenance;
  v4[22] = HDClinicalAccountEntityPropertyModificationDate;
  v4[23] = HDClinicalAccountEntityPropertySyncIdentity;
  v2 = [NSArray arrayWithObjects:v4 count:24];

  return v2;
}

+ (id)_propertiesForUpdatingFromReceivedEntity
{
  v4[0] = HDClinicalAccountEntityPropertySyncIdentifier;
  v4[1] = HDClinicalAccountEntityPropertyCreationDate;
  v4[2] = HDClinicalAccountEntityPropertyUserEnabled;
  v4[3] = HDClinicalAccountEntityPropertyLastFetchDate;
  v4[4] = HDClinicalAccountEntityPropertyLastFullFetchDate;
  v4[5] = HDClinicalAccountEntityPropertyLastFailedFetchDate;
  v4[6] = HDClinicalAccountEntityPropertyFailedFetchAttemptsCount;
  v4[7] = HDClinicalAccountEntityPropertyModificationDate;
  v2 = [NSArray arrayWithObjects:v4 count:8];

  return v2;
}

+ (id)_propertiesForModel
{
  v4[0] = HDClinicalAccountEntityPropertyIdentifier;
  v4[1] = HDClinicalAccountEntityPropertyUserEnabled;
  v4[2] = HDClinicalAccountEntityPropertyCredentialState;
  v4[3] = HDClinicalAccountEntityPropertyCreationDate;
  v4[4] = HDClinicalAccountEntityPropertyLastFetchDate;
  v4[5] = HDClinicalAccountEntityPropertyLastFullFetchDate;
  v4[6] = HDClinicalAccountEntityPropertyLastFailedFetchDate;
  v4[7] = HDClinicalAccountEntityPropertyFailedFetchAttemptsCount;
  v4[8] = HDClinicalAccountEntityPropertyLastExtractedRowID;
  v4[9] = HDClinicalAccountEntityPropertyLastSubmittedRowID;
  v4[10] = HDClinicalAccountEntityPropertyLastExtractedRulesVersion;
  v4[11] = HDClinicalAccountEntityPropertyCredentialID;
  v4[12] = HDClinicalAccountEntityPropertyPatientHash;
  v4[13] = HDClinicalAccountEntityPropertyGatewayID;
  v4[14] = HDClinicalAccountEntityPropertySignedClinicalDataIssuerROWID;
  v4[15] = HDClinicalAccountEntityPropertyClinicalSharingLastSharedDate;
  v4[16] = HDClinicalAccountEntityPropertyClinicalSharingFirstSharedDate;
  v4[17] = HDClinicalAccountEntityPropertyClinicalSharingUserStatus;
  v4[18] = HDClinicalAccountEntityPropertyClinicalSharingMultiDeviceStatus;
  v4[19] = HDClinicalAccountEntityPropertyClinicalSharingPrimaryDeviceName;
  v2 = [NSArray arrayWithObjects:v4 count:20];

  return v2;
}

+ (id)_propertiesForCodable
{
  v4[0] = HDClinicalAccountEntityPropertyGatewayExternalID;
  v4[1] = HDClinicalAccountEntityPropertySignedClinicalDataIssuerIdentifier;
  v4[2] = HDClinicalAccountEntityPropertyCreationDate;
  v4[3] = HDClinicalAccountEntityPropertyModificationDate;
  v4[4] = HDClinicalAccountEntityPropertyLastFetchDate;
  v4[5] = HDClinicalAccountEntityPropertyLastFullFetchDate;
  v4[6] = HDClinicalAccountEntityPropertyLastFailedFetchDate;
  v4[7] = HDClinicalAccountEntityPropertyFailedFetchAttemptsCount;
  v4[8] = HDClinicalAccountEntityPropertySyncIdentifier;
  v4[9] = HDClinicalAccountEntityPropertyUserEnabled;
  v4[10] = HDClinicalAccountEntityPropertyIdentifier;
  v4[11] = HDClinicalAccountEntityPropertyPatientHash;
  v4[12] = HDClinicalAccountEntityPropertyClinicalSharingLastSharedDate;
  v4[13] = HDClinicalAccountEntityPropertyClinicalSharingFirstSharedDate;
  v4[14] = HDClinicalAccountEntityPropertyClinicalSharingUserStatus;
  v4[15] = HDClinicalAccountEntityPropertyClinicalSharingMultiDeviceStatus;
  v4[16] = HDClinicalAccountEntityPropertyClinicalSharingPrimaryDeviceName;
  v2 = [NSArray arrayWithObjects:v4 count:17];

  return v2;
}

+ (id)_syncProperties
{
  v4[0] = HDClinicalAccountEntityPropertyModificationDate;
  v4[1] = HDClinicalAccountEntityPropertySyncAnchor;
  v4[2] = HDClinicalAccountEntityPropertySyncProvenance;
  v4[3] = HDClinicalAccountEntityPropertySyncIdentity;
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

+ (id)_syncableProperties
{
  v4[0] = HDClinicalAccountEntityPropertyIdentifier;
  v4[1] = HDClinicalAccountEntityPropertySyncIdentifier;
  v4[2] = HDClinicalAccountEntityPropertyUserEnabled;
  v4[3] = HDClinicalAccountEntityPropertyCreationDate;
  v4[4] = HDClinicalAccountEntityPropertyLastFetchDate;
  v4[5] = HDClinicalAccountEntityPropertyLastFullFetchDate;
  v4[6] = HDClinicalAccountEntityPropertyLastFailedFetchDate;
  v4[7] = HDClinicalAccountEntityPropertyFailedFetchAttemptsCount;
  v4[8] = HDClinicalAccountEntityPropertyClinicalSharingLastSharedDate;
  v4[9] = HDClinicalAccountEntityPropertyClinicalSharingFirstSharedDate;
  v4[10] = HDClinicalAccountEntityPropertyClinicalSharingUserStatus;
  v4[11] = HDClinicalAccountEntityPropertyClinicalSharingPrimaryDeviceName;
  v2 = [NSArray arrayWithObjects:v4 count:12];

  return v2;
}

+ (id)_predicateForAccountWithIdentifier:(id)a3
{
  v3 = HDClinicalAccountEntityPropertyIdentifier;
  v4 = _HDSQLiteValueForUUID();
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

+ (id)_predicateForAccountWithSyncIdentifier:(id)a3
{
  v3 = HDClinicalAccountEntityPropertySyncIdentifier;
  v4 = _HDSQLiteValueForUUID();
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

+ (id)_predicateForUserFetchEligible
{
  v3 = [HDSQLiteComparisonPredicate predicateWithProperty:HDClinicalAccountEntityPropertyUserEnabled equalToValue:&__kCFBooleanTrue];
  v4 = [HDSQLiteNullPredicate isNotNullPredicateWithProperty:HDClinicalAccountEntityPropertyCredentialID];
  v5 = [a1 _predicateForNeedsRelogin];
  v6 = [HDSQLiteCompoundPredicate negatedPredicate:v5];

  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:3];
  v8 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  return v8;
}

+ (id)_predicateForFetchable
{
  v3 = [a1 _predicateForUserFetchEligible];
  v4 = [a1 _predicateForRemoteFetchEligible];
  v5 = [HDSQLitePredicate compoundPredicateWithPredicate:v3 otherPredicate:v4];

  return v5;
}

+ (id)_predicateForActiveNeedsRelogin
{
  v3 = [a1 _predicateForRemoteFetchEligible];
  v4 = [a1 _predicateForNeedsRelogin];
  v5 = [HDSQLitePredicate compoundPredicateWithPredicate:v3 otherPredicate:v4];

  return v5;
}

+ (id)_predicateForActiveDefaultCredentialState
{
  v3 = [a1 _predicateForRemoteFetchEligible];
  v4 = [a1 _predicateForDefaultCredentialState];
  v5 = [HDSQLitePredicate compoundPredicateWithPredicate:v3 otherPredicate:v4];

  return v5;
}

+ (id)_predicateForActiveDefaultCredentialStateMissingCredential
{
  v3 = [a1 _predicateForActiveDefaultCredentialState];
  v4 = [a1 _predicateForMissingCredential];
  v5 = [HDSQLitePredicate compoundPredicateWithPredicate:v3 otherPredicate:v4];

  return v5;
}

+ (id)_predicateForAccountWithGatewayID:(id)a3
{
  v3 = HDClinicalAccountEntityPropertyGatewayID;
  v4 = _HDSQLiteValueForNumber();
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

+ (id)_predicateForAccountForGatewayWithExternalID:(id)a3
{
  v3 = HDClinicalAccountEntityPropertyGatewayExternalID;
  v4 = _HDSQLiteValueForString();
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

+ (id)_predicateForAccountWithSignedClinicalDataIssuerID:(id)a3
{
  v3 = HDClinicalAccountEntityPropertySignedClinicalDataIssuerROWID;
  v4 = _HDSQLiteValueForNumber();
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

+ (id)_predicateForAccountForSignedClinicalDataIssuerWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[HDClinicalAccountEntity disambiguatedDatabaseTable];
  v5 = [HDSQLiteJoinClause innerJoinClauseFromTable:v4 toTargetEntity:objc_opt_class() as:0 localReference:HDClinicalAccountEntityPropertySignedClinicalDataIssuerROWID targetKey:HDSQLEntityPropertyPersistentID];

  v6 = [NSSet setWithObject:v5];
  v7 = [HDSQLiteJoinPredicate predicateWithJoinClauses:v6];

  v8 = [HDSignedClinicalDataIssuerEntity predicateForIssuerWithIdentifier:v3];
  v9 = [v8 SQLForEntityClass:objc_opt_class()];
  v16 = v3;
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  v11 = [HDSQLiteRawPredicate predicateWithSQL:v9 overProperties:&__NSArray0__struct values:v10];

  v15[0] = v7;
  v15[1] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:2];
  v13 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

  return v13;
}

+ (id)_predicateForAccountsWithIdentifiers:(id)a3
{
  if (a3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_3BBE0;
    v6[3] = &unk_107238;
    v6[4] = a1;
    v3 = [a3 hk_map:v6];
    v4 = [HDSQLiteCompoundPredicate predicateMatchingAnyPredicates:v3];
  }

  else
  {
    v4 = +[HDSQLitePredicate truePredicate];
  }

  return v4;
}

+ (id)_predicateForUserFetchEligibleAccountsWithIdentifiers:(id)a3
{
  v4 = [a1 _predicateForAccountsWithIdentifiers:a3];
  v5 = [a1 _predicateForUserFetchEligible];
  v6 = [HDSQLiteCompoundPredicate compoundPredicateWithPredicate:v4 otherPredicate:v5];

  return v6;
}

+ (id)_predicateForFetchableAccountsWithIdentifiers:(id)a3
{
  v4 = [a1 _predicateForAccountsWithIdentifiers:a3];
  v5 = [a1 _predicateForFetchable];
  v6 = [HDSQLiteCompoundPredicate compoundPredicateWithPredicate:v4 otherPredicate:v5];

  return v6;
}

+ (id)_predicateForAccountsForGatewaysWithExternalIDs:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3BDA0;
  v6[3] = &unk_107258;
  v6[4] = a1;
  v3 = [a3 hk_map:v6];
  v4 = [HDSQLiteCompoundPredicate predicateMatchingAnyPredicates:v3];

  return v4;
}

+ (id)_predicateForAccountWithPersistentID:(int64_t)a3 expectedLastExtractedRulesVersion:(id)a4
{
  v5 = HDSQLEntityPropertyPersistentID;
  v6 = a4;
  v7 = [NSNumber numberWithLongLong:a3];
  v8 = [HDSQLiteComparisonPredicate predicateWithProperty:v5 equalToValue:v7];

  v9 = HDClinicalAccountEntityPropertyLastExtractedRulesVersion;
  v10 = [HDSQLiteComparisonPredicate predicateWithProperty:HDClinicalAccountEntityPropertyLastExtractedRulesVersion equalToValue:v6];

  v11 = [HDSQLiteNullPredicate isNullPredicateWithProperty:v9];
  v16[0] = v10;
  v16[1] = v11;
  v12 = [NSArray arrayWithObjects:v16 count:2];
  v13 = [HDSQLiteCompoundPredicate predicateMatchingAnyPredicates:v12];

  v14 = [HDSQLitePredicate compoundPredicateWithPredicate:v8 otherPredicate:v13];

  return v14;
}

+ (id)predicateForAccountsForLegacySync
{
  v2 = +[HDClinicalAccountEntity disambiguatedDatabaseTable];
  v3 = [HDSQLiteJoinClause innerJoinClauseFromTable:v2 toTargetEntity:objc_opt_class() as:0 localReference:HDClinicalAccountEntityPropertyGatewayID targetKey:HDSQLEntityPropertyPersistentID];

  v4 = [NSSet setWithObject:v3];
  v5 = [HDSQLiteJoinPredicate predicateWithJoinClauses:v4];

  v6 = +[HDClinicalGatewayEntity predicateForGatewaysForLegacySync];
  v7 = [v6 SQLForEntityClass:objc_opt_class()];

  v14[0] = @"US";
  v14[1] = @"US";
  v14[2] = @"1.0.2";
  v14[3] = @"1.0.2";
  v8 = [NSArray arrayWithObjects:v14 count:4];
  v9 = [HDSQLiteRawPredicate predicateWithSQL:v7 overProperties:&__NSArray0__struct values:v8];

  v13[0] = v5;
  v13[1] = v9;
  v10 = [NSArray arrayWithObjects:v13 count:2];
  v11 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  return v11;
}

+ (HDClinicalAccountEntity)accountEntityWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 _predicateForAccountWithIdentifier:a3];
  v10 = [a1 anyInDatabase:v8 predicate:v9 error:a5];

  return v10;
}

+ (HDClinicalAccountEntity)accountEntityWithSyncIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 _predicateForAccountWithSyncIdentifier:a3];
  v10 = [a1 anyInDatabase:v8 predicate:v9 error:a5];

  return v10;
}

+ (id)existingAccountEntityWithSyncIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 _predicateForAccountWithSyncIdentifier:v8];
  v16 = 0;
  v11 = [a1 anyInDatabase:v9 predicate:v10 error:&v16];

  v12 = v16;
  v13 = v12;
  if (!v11)
  {
    if (v12)
    {
      if (a5)
      {
        v15 = v12;
        *a5 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    else
    {
      [NSError hk_assignError:a5 code:118 format:@"Account with sync identifier %@ not found", v8];
    }
  }

  return v11;
}

+ (HDClinicalAccountEntity)accountEntityWithCredentialID:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 _predicateForAccountWithCredentialID:a3];
  v10 = [a1 anyInDatabase:v8 predicate:v9 error:a5];

  return v10;
}

+ (id)accountEntityForGatewayWithExternalID:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 _predicateForAccountForGatewayWithExternalID:a3];
  v10 = [a1 anyInDatabase:v8 predicate:v9 error:a5];

  return v10;
}

+ (id)existingAccountEntityWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a3;
  v14 = 0;
  v9 = [a1 accountEntityWithIdentifier:v8 database:a4 error:&v14];
  v10 = v14;
  v11 = v10;
  if (!v9)
  {
    if (v10)
    {
      if (a5)
      {
        v13 = v10;
        *a5 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    else
    {
      [NSError hk_assignError:a5 code:118 format:@"Account with identifier %@ not found", v8];
    }
  }

  return v9;
}

+ (id)existingAccountEntityForGatewayWithExternalID:(id)a3 database:(id)a4 error:(id *)a5
{
  v11 = 0;
  v6 = [a1 accountEntityForGatewayWithExternalID:a3 database:a4 error:&v11];
  v7 = v11;
  v8 = v7;
  if (!v6)
  {
    if (v7)
    {
      if (a5)
      {
        v10 = v7;
        *a5 = v8;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    else
    {
      [NSError hk_assignError:a5 code:118 description:@"Account not found"];
    }
  }

  return v6;
}

+ (id)existingAccountEntityForSignedClinicalDataIssuerWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a3;
  v14 = 0;
  v9 = [a1 accountEntityForSignedClinicalDataIssuerWithIdentifier:v8 database:a4 error:&v14];
  v10 = v14;
  v11 = v10;
  if (!v9)
  {
    if (v10)
    {
      if (a5)
      {
        v13 = v10;
        *a5 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    else
    {
      [NSError hk_assignError:a5 code:118 format:@"Account issuer %@ not found", v8];
    }
  }

  return v9;
}

+ (id)accountEntityForSignedClinicalDataIssuerWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 _predicateForAccountForSignedClinicalDataIssuerWithIdentifier:a3];
  v10 = [a1 anyInDatabase:v8 predicate:v9 error:a5];

  return v10;
}

- (id)gatewayInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDClinicalAccountEntity *)self numberForProperty:HDClinicalAccountEntityPropertyGatewayID database:v6];
  if (v7)
  {
    v8 = [HDClinicalGatewayEntity entityWithPersistentID:v7];
    v13 = 0;
    v9 = [v8 gatewayInDatabase:v6 error:&v13];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      [NSError hk_assignError:a4 code:100 description:@"Unable to populate gateway model for account" underlyingError:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_populateAccountWithRow:(HDSQLiteRow *)a3 credential:(id)a4 gateway:(id)a5 signedClinicalDataIssuer:(id)a6
{
  v8 = a6;
  v27 = a5;
  v26 = a4;
  v30 = HDSQLiteColumnWithNameAsDate();
  v29 = HDSQLiteColumnWithNameAsDate();
  v9 = HDSQLiteColumnWithNameAsInteger();
  v10 = HDSQLiteColumnWithNameAsInteger();
  v28 = HDSQLiteColumnWithNameAsString();
  v31 = [[HKClinicalSharingStatus alloc] initWithFirstSharedDate:v30 lastSharedDate:v29 featureStatus:0 userStatus:v9 multiDeviceStatus:v10 primaryDeviceName:v28];
  v23 = [HDClinicalAccount alloc];
  v20 = HDSQLiteColumnWithNameAsUUID();
  v11 = HDSQLiteColumnWithNameAsBoolean();
  v24 = HDSQLiteColumnWithNameAsInteger();
  v22 = HDSQLiteColumnWithNameAsDate();
  v21 = HDSQLiteColumnWithNameAsDate();
  v19 = HDSQLiteColumnWithNameAsDate();
  v18 = HDSQLiteColumnWithNameAsDate();
  v17 = HDSQLiteColumnWithNameAsNumber();
  v16 = HDSQLiteColumnWithNameAsNumber();
  v12 = HDSQLiteColumnWithNameAsNumber();
  v13 = HDSQLiteColumnWithNameAsNumber();
  v14 = HDSQLiteColumnWithNameAsString();
  v25 = [(HDClinicalAccount *)v23 initWithIdentifier:v20 userEnabled:v11 credentialState:v24 creationDate:v22 lastFetchDate:v21 lastFullFetchDate:v19 lastFailedFetchDate:v18 failedFetchAttemptsCount:v17 lastExtractedRowID:v16 lastSubmittedRowID:v12 lastExtractedRulesVersion:v13 clinicalSharingStatus:v31 credential:v26 patientHash:v14 gateway:v27 signedClinicalDataIssuer:v8];

  return v25;
}

- (id)accountInDatabase:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    sub_A1DA8(a2, self);
  }

  v41[0] = 0;
  v8 = [(HDClinicalAccountEntity *)self _credentialInDatabase:v7 error:v41];
  v9 = v41[0];
  v10 = v9;
  if (!v8 && v9)
  {
    [NSError hk_assignError:a4 code:100 description:@"Unable to fetch credential for account" underlyingError:v9];
    v11 = 0;
    goto LABEL_21;
  }

  v40 = 0;
  v12 = [(HDClinicalAccountEntity *)self gatewayInDatabase:v7 error:&v40];
  v13 = v40;
  v14 = v13;
  if (v12 || !v13)
  {
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v39 = 0;
      v15 = [(HDClinicalAccountEntity *)self _issuerInDatabase:v7 error:&v39];
      v16 = v39;
      v17 = v16;
      if (!v15 && v16)
      {
        [NSError hk_assignError:a4 code:100 description:@"Unable to fetch issuer for account" underlyingError:v16];

        goto LABEL_9;
      }
    }

    v18 = [objc_opt_class() _propertiesForModel];
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_3CE50;
    v37 = sub_3CE60;
    v38 = 0;
    v31 = &v33;
    v32 = 0;
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_3CE68;
    v26 = &unk_107280;
    v27 = self;
    v28 = v8;
    v29 = v12;
    v19 = v15;
    v30 = v19;
    v20 = [(HDClinicalAccountEntity *)self getValuesForProperties:v18 database:v7 error:&v32 handler:&v23];
    v21 = v32;
    if (v20)
    {
      v11 = v34[5];
    }

    else
    {
      [NSError hk_assignError:a4 code:100 description:@"Unable to create account model from row." underlyingError:v21, v23, v24, v25, v26, v27, v28, v29];
      v11 = 0;
    }

    _Block_object_dispose(&v33, 8);
    goto LABEL_20;
  }

  [NSError hk_assignError:a4 code:100 description:@"Unable to fetch gateway for account" underlyingError:v13];
LABEL_9:
  v11 = 0;
LABEL_20:

LABEL_21:

  return v11;
}

- (int64_t)credentialStateInDatabase:(id)a3
{
  v3 = [(HDClinicalAccountEntity *)self numberForProperty:HDClinicalAccountEntityPropertyCredentialState database:a3];
  v4 = [v3 integerValue];

  return v4;
}

+ (id)_currentCodableMessageVersion
{
  v2 = objc_alloc_init(HDCodableMessageVersion);
  [v2 setEntityVersion:2];
  [v2 setCompatibilityVersion:0];

  return v2;
}

- (id)codableInHealthDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_3CE50;
  v15 = sub_3CE60;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3D0C4;
  v10[3] = &unk_1072A8;
  v10[4] = self;
  v10[5] = &v11;
  if ([objc_opt_class() performReadTransactionWithHealthDatabase:v6 error:a4 block:v10])
  {
    v7 = v12[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)_codableInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_3CE50;
  v26 = sub_3CE60;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_3CE50;
  v20 = sub_3CE60;
  v21 = 0;
  v7 = [objc_opt_class() _propertiesForCodable];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_3D384;
  v15[3] = &unk_1072D0;
  v15[4] = self;
  v15[5] = &v16;
  v15[6] = &v22;
  v8 = [(HDClinicalAccountEntity *)self getValuesForProperties:v7 database:v6 handler:v15];

  v9 = v17[5];
  if (v9)
  {
    if (v8)
    {
      v10 = v9;
      goto LABEL_10;
    }

    v12 = [NSString stringWithFormat:@"Failed to create codable for entity %lld", [(HDClinicalAccountEntity *)self persistentID]];
    [NSError hk_assignError:a4 code:100 description:v12];
  }

  else
  {
    v11 = v23[5];
    v12 = v11;
    if (v11)
    {
      if (a4)
      {
        v13 = v11;
        *a4 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v10 = 0;
LABEL_10:
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v10;
}

+ (id)_codableWithRow:(HDSQLiteRow *)a3 error:(id *)a4
{
  v5 = objc_alloc_init(HDCodableClinicalAccount);
  v33 = a1;
  v6 = [a1 _currentCodableMessageVersion];
  [v5 setMessageVersion:v6];

  v7 = HDSQLiteColumnWithNameAsString();
  [v5 setGatewayExternalID:v7];

  v8 = HDSQLiteColumnWithNameAsString();
  if (v8)
  {
    [v5 setSignedClinicalDataIssuerIdentifier:v8];
    v9 = [v5 messageVersion];
    [v9 setCompatibilityVersion:1];
  }

  [v5 setUserEnabled:HDSQLiteColumnWithNameAsBoolean()];
  v32 = HDSQLiteColumnWithNameAsDate();
  [v32 timeIntervalSinceReferenceDate];
  [v5 setCreationDate:?];
  v31 = HDSQLiteColumnWithNameAsDate();
  [v31 timeIntervalSinceReferenceDate];
  [v5 setModificationDate:?];
  v10 = HDSQLiteColumnWithNameAsDate();
  v11 = v10;
  if (v10)
  {
    [v10 timeIntervalSinceReferenceDate];
    [v5 setLastFetchDate:?];
  }

  v12 = HDSQLiteColumnWithNameAsDate();
  v13 = v12;
  if (v12)
  {
    [v12 timeIntervalSinceReferenceDate];
    [v5 setLastFullFetchDate:?];
  }

  v35 = v8;
  v14 = HDSQLiteColumnWithNameAsDate();
  v15 = v14;
  if (v14)
  {
    [v14 timeIntervalSinceReferenceDate];
    [v5 setLastFailedFetchDate:?];
  }

  v30 = v11;
  v16 = HDSQLiteColumnWithNameAsNumber();
  v17 = v16;
  if (v16)
  {
    [v5 setFailedFetchAttemptsCount:{objc_msgSend(v16, "integerValue", v11)}];
  }

  v18 = HDSQLiteColumnWithNameAsUUID();
  v19 = [v18 hk_dataForUUIDBytes];
  [v5 setSyncIdentifier:v19];

  v20 = HDSQLiteColumnWithNameAsUUID();
  v21 = [v20 UUIDString];
  [v5 setAccountIdentifier:v21];

  v22 = HDSQLiteColumnWithNameAsString();
  [v5 setPatientHash:v22];
  v23 = HDSQLiteColumnWithNameAsDate();
  v24 = v23;
  if (v23)
  {
    [v23 timeIntervalSinceReferenceDate];
    [v5 setClinicalSharingFirstSharedDate:?];
  }

  v25 = HDSQLiteColumnWithNameAsDate();
  v26 = v25;
  if (v25)
  {
    [v25 timeIntervalSinceReferenceDate];
    [v5 setClinicalSharingLastSharedDate:?];
  }

  [v5 setClinicalSharingUserStatus:HDSQLiteColumnWithNameAsInteger()];
  [v5 setClinicalSharingMultiDeviceStatus:HDSQLiteColumnWithNameAsInteger()];
  v27 = HDSQLiteColumnWithNameAsString();
  [v5 setClinicalSharingPrimaryDeviceName:v27];

  if ([v33 _validateCodableAccount:v5 error:a4])
  {
    v28 = v5;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (id)_codableWithClinicalAccount:(id)a3 syncIdentifier:(id)a4 modificationDate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = objc_alloc_init(HDCodableClinicalAccount);
  v13 = [a1 _currentCodableMessageVersion];
  [v12 setMessageVersion:v13];

  v14 = [v9 gateway];
  v15 = [v14 externalID];
  [v12 setGatewayExternalID:v15];

  v16 = [v9 signedClinicalDataIssuer];

  if (v16)
  {
    v17 = [v9 signedClinicalDataIssuer];
    v18 = [v17 identifier];
    [v12 setSignedClinicalDataIssuerIdentifier:v18];

    v19 = [v12 messageVersion];
    [v19 setCompatibilityVersion:1];
  }

  [v12 setUserEnabled:{objc_msgSend(v9, "isUserEnabled")}];
  v20 = [v9 creationDate];
  [v20 timeIntervalSinceReferenceDate];
  [v12 setCreationDate:?];

  [v10 timeIntervalSinceReferenceDate];
  v22 = v21;

  [v12 setModificationDate:v22];
  v23 = [v11 hk_dataForUUIDBytes];

  [v12 setSyncIdentifier:v23];
  v24 = [v9 identifier];
  v25 = [v24 UUIDString];
  [v12 setAccountIdentifier:v25];

  v26 = [v9 patientHash];
  [v12 setPatientHash:v26];

  v27 = [v9 lastFetchDate];
  v28 = v27;
  if (v27)
  {
    [v27 timeIntervalSinceReferenceDate];
    [v12 setLastFetchDate:?];
  }

  v29 = [v9 lastFullFetchDate];
  v30 = v29;
  if (v29)
  {
    [v29 timeIntervalSinceReferenceDate];
    [v12 setLastFullFetchDate:?];
  }

  v31 = [v9 lastFailedFetchDate];
  v32 = v31;
  if (v31)
  {
    [v31 timeIntervalSinceReferenceDate];
    [v12 setLastFailedFetchDate:?];
  }

  v33 = [v9 failedFetchAttemptsCount];
  v34 = v33;
  if (v33)
  {
    [v12 setFailedFetchAttemptsCount:{objc_msgSend(v33, "integerValue")}];
  }

  v35 = [v9 clinicalSharingStatus];
  v36 = [v35 firstSharedDate];

  if (v36)
  {
    v37 = [v9 clinicalSharingStatus];
    v38 = [v37 firstSharedDate];
    [v38 timeIntervalSinceReferenceDate];
    [v12 setClinicalSharingFirstSharedDate:?];
  }

  v39 = [v9 clinicalSharingStatus];
  v40 = [v39 lastSharedDate];

  if (v40)
  {
    v41 = [v9 clinicalSharingStatus];
    v42 = [v41 lastSharedDate];
    [v42 timeIntervalSinceReferenceDate];
    [v12 setClinicalSharingLastSharedDate:?];
  }

  v43 = [v9 clinicalSharingStatus];
  [v12 setClinicalSharingUserStatus:{objc_msgSend(v43, "userStatus")}];

  v44 = [v9 clinicalSharingStatus];
  [v12 setClinicalSharingMultiDeviceStatus:{objc_msgSend(v44, "multiDeviceStatus")}];

  v48 = 0;
  v45 = [HDClinicalAccountEntity _validateCodableAccount:v12 error:&v48];
  v46 = v48;
  if ((v45 & 1) == 0)
  {
    sub_A1E24(a2, a1, v46);
  }

  return v12;
}

+ (id)accountWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v16 = 0;
  v10 = [a1 accountEntityWithIdentifier:v8 database:v9 error:&v16];
  v11 = v16;
  v12 = v11;
  if (v10)
  {
    v13 = [v10 accountInDatabase:v9 error:a5];
    goto LABEL_9;
  }

  if (v11)
  {
    if (a5)
    {
      v14 = v11;
      v13 = 0;
      *a5 = v12;
      goto LABEL_9;
    }

    _HKLogDroppedError();
  }

  else
  {
    [NSError hk_assignError:a5 code:118 format:@"Account with identifier %@ not found", v8];
  }

  v13 = 0;
LABEL_9:

  return v13;
}

+ (id)accountWithIdentifier:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_3CE50;
  v22 = sub_3CE60;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_3DE6C;
  v14[3] = &unk_1067B0;
  v16 = &v18;
  v17 = a1;
  v10 = v8;
  v15 = v10;
  if ([a1 performReadTransactionWithHealthDatabase:v9 error:a5 block:v14])
  {
    v11 = v19[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  _Block_object_dispose(&v18, 8);

  return v12;
}

+ (id)accountsInDatabase:(id)a3 predicate:(id)a4 errorOut:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(NSMutableArray);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_3CE50;
  v37 = sub_3CE60;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v27 = a1;
  v28 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_3E144;
  v21[3] = &unk_1072F8;
  v26 = a2;
  v12 = v9;
  v22 = v12;
  v24 = &v33;
  v25 = &v29;
  v13 = v11;
  v23 = v13;
  v14 = [a1 enumerateEntitiesInDatabase:v12 predicate:v10 error:&v28 enumerationHandler:v21];
  v15 = v28;
  v16 = v15;
  if (v30[3])
  {
    if (v14)
    {
      v17 = v13;
      goto LABEL_11;
    }

    v18 = v15;
    if (v18)
    {
      if (a5)
      {
        goto LABEL_9;
      }

LABEL_6:
      _HKLogDroppedError();
    }
  }

  else
  {
    v18 = v34[5];
    if (v18)
    {
      if (a5)
      {
LABEL_9:
        v19 = v18;
        *a5 = v18;
        goto LABEL_10;
      }

      goto LABEL_6;
    }
  }

LABEL_10:

  v17 = 0;
LABEL_11:

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  return v17;
}

+ (id)accountsInHealthDatabase:(id)a3 predicate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_3CE50;
  v21 = sub_3CE60;
  v22 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_3E374;
  v13[3] = &unk_1067B0;
  v15 = &v17;
  v16 = a1;
  v9 = a4;
  v14 = v9;
  if ([a1 performReadTransactionWithHealthDatabase:v8 error:a5 block:v13])
  {
    v10 = v18[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  _Block_object_dispose(&v17, 8);

  return v11;
}

+ (int64_t)hasGatewayBackedAccountsInHealthDatabase:(id)a3 error:(id *)a4
{
  v6 = [a3 profile];
  v7 = [a1 countOfGatewayBackedAccountsWithProfile:v6 error:a4];

  if (v7)
  {
    if ([v7 integerValue] >= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (int64_t)hasIssuerBackedAccountsInHealthDatabase:(id)a3 error:(id *)a4
{
  v6 = [a3 profile];
  v7 = [a1 countOfIssuerBackedAccountsWithProfile:v6 error:a4];

  if (v7)
  {
    if ([v7 integerValue] >= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_keyValueDomainWithProfile:(id)a3
{
  v3 = a3;
  v4 = [HDKeyValueDomain alloc];
  v5 = [v4 initWithCategory:0 domainName:HKHealthRecordsPluginIdentifier profile:v3];

  return v5;
}

+ (id)countOfGatewayBackedAccountsWithProfile:(id)a3 error:(id *)a4
{
  v5 = [a1 _keyValueDomainWithProfile:a3];
  v12 = 0;
  v6 = [v5 numberForKey:@"HDClinicalAccountEntityAccountCountKey" error:&v12];
  v7 = v12;
  v8 = v7;
  if (v6)
  {
    v9 = v6;
  }

  else if (v7)
  {
    if (a4)
    {
      v11 = v7;
      v9 = 0;
      *a4 = v8;
    }

    else
    {
      _HKLogDroppedError();
      v9 = 0;
    }
  }

  else
  {
    v9 = &off_110288;
  }

  return v9;
}

+ (id)countOfIssuerBackedAccountsWithProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_3CE50;
  v15 = sub_3CE60;
  v16 = 0;
  v7 = [v6 database];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3E78C;
  v10[3] = &unk_107320;
  v10[4] = &v11;
  v10[5] = a1;
  LOBYTE(a4) = [a1 performReadTransactionWithHealthDatabase:v7 error:a4 block:v10];

  if (a4)
  {
    v8 = v12[5];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

+ (BOOL)_updateCountOfGatewayBackedAccountsWithProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_3CE50;
  v17 = sub_3CE60;
  v18 = 0;
  v7 = [v6 database];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_3E9C4;
  v12[3] = &unk_107320;
  v12[4] = &v13;
  v12[5] = a1;
  v8 = [a1 performWriteTransactionWithHealthDatabase:v7 error:a4 block:v12];

  if (v8)
  {
    v9 = [a1 _keyValueDomainWithProfile:v6];
    v10 = [v9 setNumber:v14[5] forKey:@"HDClinicalAccountEntityAccountCountKey" error:a4];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

+ (id)accountsWithIdentifiers:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 database];
  v10 = [a1 _predicateForAccountsWithIdentifiers:v8];

  v11 = [a1 accountsInHealthDatabase:v9 predicate:v10 error:a5];

  return v11;
}

+ (id)userFetchEligibleAccountsWithIdentifiers:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 database];
  v10 = [a1 _predicateForUserFetchEligibleAccountsWithIdentifiers:v8];

  v11 = [a1 accountsInHealthDatabase:v9 predicate:v10 error:a5];

  return v11;
}

+ (id)fetchableAccountsWithIdentifiers:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 database];
  v10 = [a1 _predicateForFetchableAccountsWithIdentifiers:v8];

  v11 = [a1 accountsInHealthDatabase:v9 predicate:v10 error:a5];

  return v11;
}

+ (id)accountsForGatewayExternalIDs:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 _predicateForAccountsForGatewaysWithExternalIDs:a3];
  v10 = [a1 accountsInHealthDatabase:v8 predicate:v9 error:a5];

  return v10;
}

+ (id)accountsNeedExtractionSQL
{
  v2 = HDSQLEntityPropertyPersistentID;
  v3 = HDClinicalAccountEntityPropertyLastExtractedRowID;
  v4 = +[HDOriginalFHIRResourceEntity disambiguatedDatabaseTable];
  v5 = +[HDClinicalAccountEntity disambiguatedDatabaseTable];
  v6 = [NSString stringWithFormat:@"SELECT 1 FROM (SELECT MAX(A.%@) > COALESCE(B.%@, 0) as result FROM %@ A INNER JOIN %@ B WHERE A.%@ = B.%@ GROUP BY B.%@) WHERE result != 0 LIMIT 1", v2, v3, v4, v5, HDOriginalFHIRResourceEntityPropertyAccountID, v2, HDClinicalAccountEntityPropertyIdentifier];;

  return v6;
}

+ (BOOL)accountsNeedExtractionForProfile:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [v4 database];
  v10[5] = a1;
  v11 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3EF18;
  v10[3] = &unk_107320;
  v10[4] = &v12;
  v6 = [a1 performReadTransactionWithHealthDatabase:v5 error:&v11 block:v10];
  v7 = v11;

  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A1F0C();
    }
  }

  v8 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v8;
}

+ (id)hasActiveAccountNeedingReloginInHealthDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_3CE50;
  v15 = sub_3CE60;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3F174;
  v10[3] = &unk_107320;
  v10[4] = &v11;
  v10[5] = a1;
  if ([a1 performReadTransactionWithHealthDatabase:v6 error:a4 block:v10])
  {
    v7 = v12[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);

  return v8;
}

+ (BOOL)updateAccountCredentialFromAuthResponse:(id)a3 accountIdentifier:(id)a4 requestedScope:(id)a5 profile:(id)a6 healthDatabase:(id)a7 event:(id)a8 updatedCredential:(id *)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = [v16 refreshToken];
  v23 = v22 == 0;

  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_3CE50;
  v64 = sub_3CE60;
  v65 = [v21 eventWithUpdatedCredentialStateAfter:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];
  v24 = v61[5];
  v25 = [v16 descriptionForAccountEvent];
  v26 = [v24 eventWithAppendedEventDescription:v25];
  v27 = v61[5];
  v61[5] = v26;

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_3CE50;
  v58 = sub_3CE60;
  v59 = 0;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_3F5E0;
  v45[3] = &unk_107388;
  v52 = a1;
  v46 = v17;
  v50 = &v54;
  v47 = v16;
  v48 = v18;
  v28 = v19;
  v53 = v23;
  v49 = v28;
  v51 = &v60;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_3F728;
  v37[3] = &unk_1073B0;
  v43 = &v60;
  v44 = a1;
  v29 = v20;
  v38 = v29;
  v30 = v47;
  v39 = v30;
  v31 = v46;
  v40 = v31;
  v32 = v48;
  v41 = v32;
  v33 = v21;
  v42 = v33;
  v34 = [a1 performWriteTransactionWithHealthDatabase:v29 error:a10 block:v45 inaccessibilityHandler:v37];
  if (v34)
  {
    if (a9)
    {
      v35 = v55[5];
      if (v35)
      {
        *a9 = v35;
      }
    }
  }

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  return v34;
}

- (id)_updateCredentialFromAuthResponse:(id)a3 requestedScope:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v15 protectedDatabase];
  v17 = [(HDClinicalAccountEntity *)self numberForProperty:HDClinicalAccountEntityPropertyCredentialID database:v16];
  if (v17)
  {
    v18 = v12;
    v23 = a7;
    v24 = 0;
    v19 = [(HDClinicalAccountEntity *)self deleteCredentialWithProfile:v14 transaction:v15 deleteTokens:0 credentialIdentifier:&v24 error:a7];
    v20 = v24;
    v21 = 0;
    if (v19)
    {
      v21 = [(HDClinicalAccountEntity *)self _createCredentialFromAuthResponse:v18 credentialIdentifier:v20 requestedScope:v13 profile:v14 transaction:v15 error:v23];
    }

    v12 = v18;
  }

  else
  {
    [NSError hk_assignError:a7 code:118 format:@"Account is missing a credential, unable to update with authResponse"];
    v21 = 0;
  }

  return v21;
}

+ (BOOL)createAccountCredentialFromAuthResponse:(id)a3 accountIdentifier:(id)a4 requestedScope:(id)a5 profile:(id)a6 healthDatabase:(id)a7 event:(id)a8 createdCredential:(id *)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = [v16 refreshToken];
  v23 = v22 == 0;

  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_3CE50;
  v64 = sub_3CE60;
  v65 = [v21 eventWithUpdatedCredentialStateAfter:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];
  v24 = v61[5];
  v25 = [v16 descriptionForAccountEvent];
  v26 = [v24 eventWithAppendedEventDescription:v25];
  v27 = v61[5];
  v61[5] = v26;

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_3CE50;
  v58 = sub_3CE60;
  v59 = 0;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_3FC94;
  v45[3] = &unk_107388;
  v52 = a1;
  v46 = v17;
  v50 = &v54;
  v47 = v16;
  v48 = v18;
  v28 = v19;
  v53 = v23;
  v49 = v28;
  v51 = &v60;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_3FDE8;
  v37[3] = &unk_1073B0;
  v43 = &v60;
  v44 = a1;
  v29 = v20;
  v38 = v29;
  v30 = v47;
  v39 = v30;
  v31 = v46;
  v40 = v31;
  v32 = v48;
  v41 = v32;
  v33 = v21;
  v42 = v33;
  v34 = [a1 performWriteTransactionWithHealthDatabase:v29 error:a10 block:v45 inaccessibilityHandler:v37];
  if (v34)
  {
    if (a9)
    {
      v35 = v55[5];
      if (v35)
      {
        *a9 = v35;
      }
    }
  }

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  return v34;
}

- (id)_createCredentialFromAuthResponse:(id)a3 credentialIdentifier:(id)a4 requestedScope:(id)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8
{
  v14 = a6;
  v15 = a7;
  v16 = a4;
  v17 = [HKFHIRCredential from:a3 requestedScope:a5];
  v29 = 0;
  v18 = [v17 createCredentialWithIdentifier:v16 error:&v29];

  v19 = v29;
  if (v18)
  {
    v28 = v19;
    v20 = [HDFHIRCredentialEntity insertCredential:v18 profile:v14 transaction:v15 error:&v28];
    v21 = v28;

    if (v20)
    {
      v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v20 persistentID]);
      v23 = [v18 patientID];
      v24 = [(HDClinicalAccountEntity *)self _updateCredentialID:v22 patientID:v23 profile:v14 transaction:v15 error:a8];

      if (v24)
      {
        v25 = v18;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;
    }

    else
    {
      [NSError hk_assignError:a8 code:100 description:@"Unable to insert credential for account" underlyingError:v21];
      v26 = 0;
    }
  }

  else
  {
    [NSError hk_assignError:a8 code:100 description:@"Unable to store tokens for credential for account" underlyingError:v19];
    v26 = 0;
    v21 = v19;
  }

  return v26;
}

- (BOOL)updateCredentialState:(int64_t)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = [v10 protectedDatabase];
  v13 = [(HDClinicalAccountEntity *)self UUIDForProperty:HDClinicalAccountEntityPropertyIdentifier database:v12];
  v14 = NSStringFromHKClinicalAccountCredentialState();
  _HKInitializeLogging();
  v15 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [(HDClinicalAccountEntity *)self debugDescription];
    *buf = 138543874;
    v27 = v17;
    v28 = 2114;
    v29 = v13;
    v30 = 2114;
    v31 = v14;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ marking account %{public}@ as %{public}@", buf, 0x20u);
  }

  v18 = HDClinicalAccountEntityPropertyCredentialState;
  v25 = v18;
  v19 = [NSArray arrayWithObjects:&v25 count:1];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_4027C;
  v22[3] = &unk_1073D8;
  v23 = v18;
  v24 = a3;
  v20 = [(HDClinicalAccountEntity *)self updateProperties:v19 profile:v11 transaction:v10 error:a6 bindingHandler:v22];

  return v20;
}

- (BOOL)assignCredentialWithPersistentID:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 protectedDatabase];
  v14 = [HDFHIRCredentialEntity credentialWithPersistentID:v10 database:v13 error:a6];

  if (v14)
  {
    v15 = [v14 patientID];
    v16 = [(HDClinicalAccountEntity *)self _updateCredentialID:v10 patientID:v15 profile:v11 transaction:v12 error:a6];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)deleteCredentialWithProfile:(id)a3 transaction:(id)a4 deleteTokens:(BOOL)a5 credentialIdentifier:(id *)a6 error:(id *)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = [v13 protectedDatabase];
  v15 = [(HDClinicalAccountEntity *)self numberForProperty:HDClinicalAccountEntityPropertyCredentialID database:v14];
  if (v15)
  {
    if ([(HDClinicalAccountEntity *)self _updateCredentialID:0 patientID:0 profile:v12 transaction:v13 error:a7])
    {
      v16 = [HDFHIRCredentialEntity entityWithPersistentID:v15];
      v17 = [v16 credentialInDatabase:v14 error:a7];
      v18 = v17;
      if (v17)
      {
        if (v9)
        {
          v27 = 0;
          v19 = [v17 deleteTokensWithError:&v27];
          v20 = v27;
          v21 = v20;
          if ((v19 & 1) == 0)
          {
            v22 = v20;
            _HKInitializeLogging();
            v26 = HKLogHealthRecords;
            v23 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT);
            v21 = v22;
            if (v23)
            {
              sub_A1F90();
              v21 = v22;
            }
          }
        }

        if (a6)
        {
          *a6 = [v18 identifier];
        }

        v24 = [v16 deleteFromDatabase:v14 error:{a7, v26}];
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 1;
  }

  return v24;
}

- (BOOL)_updateCredentialID:(id)a3 patientID:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = HDClinicalAccountEntityPropertyCredentialID;
  v15 = HDClinicalAccountEntityPropertyPatientHash;
  v27[0] = v14;
  v27[1] = v15;
  v16 = a6;
  v17 = a5;
  v18 = [NSArray arrayWithObjects:v27 count:2];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_40720;
  v22[3] = &unk_105D50;
  v23 = v14;
  v24 = v12;
  v25 = v15;
  v26 = v13;
  v19 = v13;
  v20 = v12;
  LOBYTE(a7) = [(HDClinicalAccountEntity *)self updateProperties:v18 profile:v17 transaction:v16 error:a7 bindingHandler:v22];

  return a7;
}

- (BOOL)resetFetchFailureInformationWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v9 = HDClinicalAccountEntityPropertyLastFailedFetchDate;
  v10 = HDClinicalAccountEntityPropertyFailedFetchAttemptsCount;
  v18[0] = v9;
  v18[1] = v10;
  v11 = a4;
  v12 = a3;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_40928;
  v15[3] = &unk_1065E0;
  v16 = v9;
  v17 = v10;
  LOBYTE(a5) = [(HDClinicalAccountEntity *)self updateProperties:v13 profile:v12 transaction:v11 error:a5 bindingHandler:v15];

  return a5;
}

- (id)_credentialInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDClinicalAccountEntity *)self credentialIDInDatabase:v6];
  if (v7)
  {
    v8 = [HDFHIRCredentialEntity credentialWithPersistentID:v7 database:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_issuerInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDClinicalAccountEntity *)self numberForProperty:HDClinicalAccountEntityPropertySignedClinicalDataIssuerROWID database:v6];
  if (v7)
  {
    v8 = [HDSignedClinicalDataIssuerEntity entityWithPersistentID:v7];
    v9 = [v8 issuerInDatabase:v6 error:a4];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_propertiesShouldTriggerSyncOnUpdate:(id)a3
{
  v4 = a3;
  v5 = [a1 _syncableProperties];
  v6 = [NSSet setWithArray:v5];

  v7 = [NSSet setWithArray:v4];

  LOBYTE(v4) = [v6 intersectsSet:v7];
  return v4;
}

+ (id)_propertiesByAddingSyncPropertiesToProperties:(id)a3
{
  v4 = a3;
  v5 = [NSMutableSet setWithArray:v4];
  v6 = [a1 _propertiesShouldTriggerSyncOnUpdate:v4];

  if (v6)
  {
    v7 = [a1 _syncProperties];
    [v5 addObjectsFromArray:v7];
  }

  v8 = [v5 allObjects];

  return v8;
}

+ (BOOL)_bindPropertiesForSync:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6 mutationHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  if ([a1 _propertiesShouldTriggerSyncOnUpdate:v11])
  {
    v14 = [a1 _propertiesByAddingSyncPropertiesToProperties:v11];
    v15 = objc_alloc_init(NSDate);
    v16 = [HDClinicalEntitySyncAnchor nextClinicalAccountSyncAnchorWithProfile:v12 error:a6];
    if (v16)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_40DD0;
      v20[3] = &unk_105D50;
      v21 = v11;
      v22 = v15;
      v23 = v16;
      v24 = v12;
      v17 = objc_retainBlock(v20);
      v18 = v13[2](v13, v14, v17, a6);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = (v13)[2](v13, v11, &stru_107418, a6);
  }

  return v18;
}

- (BOOL)updateProperties:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6 bindingHandler:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v13 protectedDatabase];
  v17 = objc_opt_class();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_41008;
  v21[3] = &unk_107468;
  v23 = self;
  v24 = v12;
  v22 = v16;
  v18 = v12;
  v19 = v16;
  LOBYTE(a6) = [v17 _bindPropertiesForSync:v15 profile:v14 transaction:v13 error:a6 mutationHandler:v21];

  return a6;
}

+ (BOOL)_insertCodableAccounts:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [v11 database];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_412B8;
  v20[3] = &unk_1067D8;
  v23 = a1;
  v21 = v10;
  v22 = v11;
  v24 = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_41D14;
  v16[3] = &unk_106800;
  v18 = v22;
  v19 = a4;
  v17 = v21;
  v13 = v22;
  v14 = v21;
  LOBYTE(a6) = [a1 performWriteTransactionWithHealthDatabase:v12 error:a6 block:v20 inaccessibilityHandler:v16];

  return a6;
}

+ (BOOL)_insertOrUpdateAccountWithCodableAccount:(id)a3 gatewayID:(id)a4 signedClinicalDataIssuerID:(id)a5 syncProvenance:(int64_t)a6 syncIdentity:(int64_t)a7 transaction:(id)a8 profile:(id)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v90 = a8;
  v19 = a9;
  if ((v17 == 0) != (v18 != 0))
  {
    sub_A2098(a2, a1);
  }

  v20 = [v19 healthRecordsExtension];
  v21 = [v20 accountManager];

  if (v21)
  {
    if (v17)
    {
      [a1 _predicateForAccountWithGatewayID:v17];
    }

    else
    {
      [a1 _predicateForAccountWithSignedClinicalDataIssuerID:v18];
    }
    v26 = ;
    v27 = [v90 databaseForEntityClass:a1];
    v91 = 0;
    v28 = [a1 anyInDatabase:v27 predicate:v26 error:&v91];
    v88 = v91;
    v89 = v28;
    if (v88)
    {
      v29 = v88;
      if (a10)
      {
        v30 = v88;
        v25 = 0;
        *a10 = v88;
      }

      else
      {
        _HKLogDroppedError();
        v25 = 0;
      }

      goto LABEL_57;
    }

    v80 = a6;
    v83 = v26;
    v84 = [v28 UUIDForProperty:HDClinicalAccountEntityPropertyIdentifier database:v27];
    v31 = [v16 syncIdentifier];
    v86 = [NSUUID hk_UUIDWithData:v31];

    v85 = v27;
    if (v28)
    {
      v32 = [v28 UUIDForProperty:HDClinicalAccountEntityPropertySyncIdentifier database:v27];
      v81 = [v28 stringForProperty:HDClinicalAccountEntityPropertyPatientHash database:v27];
      v78 = v32;
      if (v32)
      {
        LODWORD(v32) = [v32 isEqual:v86] ^ 1;
      }

      v33 = [v16 patientHash];
      v34 = [v81 isEqualToString:v33] ^ 1;

      if ((v32 & 1) == 0 && !v34)
      {
        v35 = [v28 _codableInDatabase:v85 error:a10];
        v36 = v35;
        if (v35)
        {
          [v35 updateWithPropertiesFromOtherAccount:v16];
          v25 = [v28 _updateAccountFromSyncWithCodable:v36 profile:v19 transaction:v90 error:a10];
        }

        else
        {
          v25 = 0;
        }

        v53 = v78;

        v58 = v81;
        v26 = v83;
        v27 = v85;
        v29 = 0;
LABEL_55:

LABEL_56:
LABEL_57:

        goto LABEL_58;
      }

      v67 = v34;
      loga = v32;
      v76 = [v28 dateForProperty:HDClinicalAccountEntityPropertyCreationDate database:v85];
      [v16 creationDate];
      v37 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v38 = [v28 dateForProperty:HDClinicalAccountEntityPropertyModificationDate database:v85];
      [v16 modificationDate];
      v39 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v74 = v37;
      v40 = [v37 hk_isBeforeOrEqualToDate:v76];
      v72 = v39;
      v41 = v39;
      v42 = v38;
      v43 = [v41 hk_isBeforeOrEqualToDate:v38];
      v44 = loga & v40;
      _HKInitializeLogging();
      v45 = HKLogHealthRecords;
      v46 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT);
      if ((v44 & 1) != 0 || (v67 & v43) != 0)
      {
        if (v46)
        {
          v59 = v45;
          v60 = objc_opt_class();
          v61 = [v16 accountIdentifier];
          v62 = v61;
          v63 = @"it has been modified a longer time ago";
          *buf = 138544130;
          v93 = v60;
          v94 = 2114;
          if (v44)
          {
            v63 = @"it is older";
          }

          v95 = v61;
          v96 = 2114;
          v97 = v63;
          v98 = 2114;
          v99 = v84;
          _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring received codable clinical account %{public}@ because %{public}@ than existing account %{public}@ for that gateway", buf, 0x2Au);
        }

        v25 = 1;
        v58 = v81;
        v26 = v83;
        v27 = v85;
        v29 = 0;
        v53 = v78;
        goto LABEL_55;
      }

      if (v46)
      {
        logb = v45;
        v47 = objc_opt_class();
        v48 = [v16 accountIdentifier];
        *buf = 138543874;
        v93 = v47;
        v94 = 2114;
        v95 = v48;
        v96 = 2114;
        v97 = v84;
        _os_log_impl(&dword_0, logb, OS_LOG_TYPE_DEFAULT, "%{public}@: Received newer codable clinical account %{public}@, will delete existing account %{public}@", buf, 0x20u);
      }

      v49 = [v21 deleteAccountWithIdentifier:v84 deletionReason:2 error:a10];

      if ((v49 & 1) == 0)
      {
        v25 = 0;
        v26 = v83;
        v27 = v85;
        v29 = 0;
        goto LABEL_56;
      }
    }

    v50 = [v16 accountIdentifier];
    if (v50)
    {
      v51 = [NSUUID alloc];
      v52 = [v16 accountIdentifier];
      v53 = [v51 initWithUUIDString:v52];
    }

    else
    {
      v53 = +[NSUUID UUID];
    }

    v68 = [v16 userEnabled];
    [v16 creationDate];
    v82 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v16 modificationDate];
    v79 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    log = [v16 hasLastFetchDate];
    if (log)
    {
      [v16 lastFetchDate];
      v77 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v77 = 0;
    }

    v66 = [v16 hasLastFullFetchDate];
    if (v66)
    {
      [v16 lastFullFetchDate];
      v75 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v75 = 0;
    }

    v65 = [v16 hasLastFailedFetchDate];
    if (v65)
    {
      [v16 lastFailedFetchDate];
      v73 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v73 = 0;
    }

    v54 = [v16 hasPatientHash];
    if (v54)
    {
      v55 = [v16 patientHash];
    }

    else
    {
      v55 = 0;
    }

    v56 = [v16 clinicalSharingStatusForNewAccountFromSync];
    v57 = [a1 _insertAccountInProfile:v19 identifier:v53 syncIdentifier:v86 userEnabled:v68 credentialState:1 creationDate:v82 modificationDate:v79 lastFetchDate:v77 lastFullFetchDate:v75 lastFailedFetchDate:v73 failedFetchAttemptsCount:0 lastExtractedRowID:0 lastSubmittedRowID:0 lastExtractedRulesVersion:0 credentialID:0 patientHash:v55 gatewayID:v17 signedClinicalDataIssuerID:v18 clinicalSharingStatus:v56 syncProvenance:v80 syncIdentity:a7 error:a10];

    if (v54)
    {
    }

    if (v65)
    {
    }

    v26 = v83;
    v27 = v85;
    v29 = 0;
    if (v66)
    {
    }

    if (log)
    {
    }

    v58 = v57;
    v25 = v57 != 0;
    goto LABEL_55;
  }

  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v24 = NSStringFromSelector(a2);
  [NSError hk_assignError:a10 code:100 format:@"%@.%@ can only be used on profiles with account managers, but %@ doesn't have one", v23, v24, v19];

  v25 = 0;
LABEL_58:

  return v25;
}

+ (id)insertAccountWithIdentifier:(id)a3 syncIdentifier:(id)a4 userEnabled:(BOOL)a5 credentialState:(int64_t)a6 credentialID:(id)a7 patientHash:(id)a8 gatewayID:(id)a9 signedClinicalDataIssuerID:(id)a10 clinicalSharingStatus:(id)a11 profile:(id)a12 error:(id *)a13
{
  v29 = a5;
  v16 = a12;
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a4;
  v23 = a3;
  v24 = objc_alloc_init(NSDate);
  v25 = [a1 _insertAccountInProfile:v16 identifier:v23 syncIdentifier:v22 userEnabled:v29 credentialState:a6 creationDate:v24 modificationDate:v24 lastFetchDate:0 lastFullFetchDate:0 lastFailedFetchDate:0 failedFetchAttemptsCount:0 lastExtractedRowID:0 lastSubmittedRowID:0 lastExtractedRulesVersion:0 credentialID:v21 patientHash:v20 gatewayID:v19 signedClinicalDataIssuerID:v18 clinicalSharingStatus:v17 syncProvenance:0 syncIdentity:objc_msgSend(v16 error:{"currentSyncIdentityPersistentID"), a13}];

  return v25;
}

+ (id)_insertAccountInProfile:(id)a3 identifier:(id)a4 syncIdentifier:(id)a5 userEnabled:(BOOL)a6 credentialState:(int64_t)a7 creationDate:(id)a8 modificationDate:(id)a9 lastFetchDate:(id)a10 lastFullFetchDate:(id)a11 lastFailedFetchDate:(id)a12 failedFetchAttemptsCount:(id)a13 lastExtractedRowID:(id)a14 lastSubmittedRowID:(id)a15 lastExtractedRulesVersion:(id)a16 credentialID:(id)a17 patientHash:(id)a18 gatewayID:(id)a19 signedClinicalDataIssuerID:(id)a20 clinicalSharingStatus:(id)a21 syncProvenance:(int64_t)a22 syncIdentity:(int64_t)a23 error:(id *)a24
{
  v77 = a3;
  v62 = a4;
  v63 = a5;
  v65 = a8;
  v27 = a9;
  v57 = a10;
  v59 = a11;
  v61 = a12;
  v28 = a13;
  v29 = a14;
  v30 = a15;
  v31 = a16;
  v32 = a17;
  v33 = a18;
  v34 = a19;
  v35 = a20;
  v36 = a21;
  if ((v34 == 0) != (v35 != 0))
  {
    sub_A2114(a2, a1);
  }

  v74 = v36;
  v37 = v33;
  v75 = v27;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = sub_3CE50;
  v109 = sub_3CE60;
  v110 = 0;
  v38 = [v77 database];
  v104 = 0;
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_42DAC;
  v80[3] = &unk_107508;
  v72 = v34;
  v81 = v72;
  v56 = v77;
  v82 = v56;
  v58 = v57;
  v83 = v58;
  v98 = &v105;
  v99 = a1;
  v60 = v59;
  v84 = v60;
  v78 = v62;
  v85 = v78;
  v103 = a6;
  v64 = v63;
  v86 = v64;
  v100 = a7;
  v67 = v65;
  v87 = v67;
  v69 = v61;
  v88 = v69;
  v70 = v28;
  v89 = v70;
  v71 = v29;
  v90 = v71;
  v73 = v30;
  v91 = v73;
  v39 = v31;
  v92 = v39;
  v40 = v32;
  v93 = v40;
  v41 = v37;
  v94 = v41;
  v101 = a22;
  v42 = v35;
  v95 = v42;
  v43 = v74;
  v96 = v43;
  v102 = a23;
  v76 = v75;
  v97 = v76;
  v44 = [a1 performWriteTransactionWithHealthDatabase:v38 error:&v104 block:v80];
  v45 = v104;

  if (v44)
  {
    _HKInitializeLogging();
    v46 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v112 = a1;
      v113 = 2114;
      v114 = v78;
      _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "%{public}@ inserted account with identifier %{public}@", buf, 0x16u);
    }

    v47 = v106[5];
  }

  else
  {
    _HKInitializeLogging();
    v48 = HKLogHealthRecords;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v53 = HKSensitiveLogItem();
      *buf = 138543874;
      v112 = a1;
      v113 = 2114;
      v114 = v78;
      v115 = 2114;
      v116 = v53;
      _os_log_error_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert account with identifier %{public}@: %{public}@", buf, 0x20u);
    }

    v49 = v45;
    v50 = v49;
    if (v49)
    {
      if (v54)
      {
        v51 = v49;
        *v54 = v50;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v47 = 0;
  }

  _Block_object_dispose(&v105, 8);

  return v47;
}

+ (BOOL)updateSourcesForAccountWithIdentifier:(id)a3 wasAccountInsert:(BOOL)a4 clinicalExternalID:(id)a5 externalTitle:(id)a6 profile:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v16 sourceManager];
  v18 = [v17 privateSourceForClinicalAccountIdentifier:v13 provenance:0 createOrUpdateIfNecessary:1 nameOnCreateOrUpdate:v15 error:a8];

  if (v18)
  {
    v19 = [v16 sourceManager];
    v20 = [v19 publicSourceForClinicalExternalIdentifier:v14 provenance:0 createOrUpdateIfNecessary:1 nameOnCreateOrUpdate:v15 error:a8];

    v21 = v20 != 0;
    if (v20 && !a4)
    {
      v22 = [v16 healthRecordsExtension];
      [v22 didUpdateSourcesForAccountWithIdentifier:v13];
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)_updateAccountFromSyncWithCodable:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = [v11 databaseForEntity:self];
  v25[0] = HDClinicalAccountEntityPropertyModificationDate;
  v25[1] = HDClinicalAccountEntityPropertyUserEnabled;
  v25[2] = HDClinicalAccountEntityPropertyLastFetchDate;
  v25[3] = HDClinicalAccountEntityPropertyLastFullFetchDate;
  v25[4] = HDClinicalAccountEntityPropertyLastFailedFetchDate;
  v25[5] = HDClinicalAccountEntityPropertyFailedFetchAttemptsCount;
  v25[6] = HDClinicalAccountEntityPropertyPatientHash;
  v25[7] = HDClinicalAccountEntityPropertyClinicalSharingLastSharedDate;
  v25[8] = HDClinicalAccountEntityPropertyClinicalSharingFirstSharedDate;
  v25[9] = HDClinicalAccountEntityPropertyClinicalSharingUserStatus;
  v25[10] = HDClinicalAccountEntityPropertyClinicalSharingPrimaryDeviceName;
  v14 = [NSArray arrayWithObjects:v25 count:11];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_43C90;
  v23[3] = &unk_105B80;
  v15 = v10;
  v24 = v15;
  v16 = [(HDClinicalAccountEntity *)self updateProperties:v14 profile:v12 transaction:v11 error:a6 bindingHandler:v23];

  if (v16)
  {
    v17 = [(HDClinicalAccountEntity *)self accountInDatabase:v13 error:a6];
    v18 = v17;
    v19 = v15 != 0;
    if (v15)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_43FC4;
      v21[3] = &unk_106B68;
      v21[4] = self;
      v22 = v17;
      [v11 onCommit:v21 orRollback:0];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)updateClinicalSharingStatusWithProfile:(id)a3 transaction:(id)a4 firstSharedDate:(id)a5 lastSharedDate:(id)a6 userStatus:(id)a7 multiDeviceStatus:(id)a8 primaryDeviceName:(id)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = objc_alloc_init(NSMutableArray);
  v24 = v23;
  if (v18)
  {
    [v23 addObject:HDClinicalAccountEntityPropertyClinicalSharingFirstSharedDate];
  }

  if (v19)
  {
    [v24 addObject:HDClinicalAccountEntityPropertyClinicalSharingLastSharedDate];
  }

  if (v20)
  {
    [v24 addObject:HDClinicalAccountEntityPropertyClinicalSharingUserStatus];
  }

  if (v21)
  {
    [v24 addObject:HDClinicalAccountEntityPropertyClinicalSharingMultiDeviceStatus];
  }

  if (v22)
  {
    [v24 addObject:HDClinicalAccountEntityPropertyClinicalSharingPrimaryDeviceName];
  }

  if ([v24 count])
  {
    v29 = [v17 databaseForEntityClass:objc_opt_class()];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_442F4;
    v32[3] = &unk_105B58;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v36 = v21;
    v37 = v22;
    v28 = v16;
    v25 = [(HDClinicalAccountEntity *)self updateProperties:v24 profile:v16 transaction:v17 error:a10 bindingHandler:v32];
    if (v25)
    {
      [(HDClinicalAccountEntity *)self accountInDatabase:v29 error:a10];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_44448;
      v30[3] = &unk_106B68;
      v31 = v30[4] = self;
      v26 = v31;
      [v17 onCommit:v30 orRollback:0];
    }

    v16 = v28;
  }

  else
  {
    LOBYTE(v25) = 1;
  }

  return v25;
}

- (BOOL)_updateBooleanForProperty:(id)a3 value:(BOOL)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v12 = a3;
  v21 = v12;
  v13 = a6;
  v14 = a5;
  v15 = [NSArray arrayWithObjects:&v21 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_445F8;
  v18[3] = &unk_107530;
  v19 = v12;
  v20 = a4;
  v16 = v12;
  LOBYTE(a7) = [(HDClinicalAccountEntity *)self updateProperties:v15 profile:v14 transaction:v13 error:a7 bindingHandler:v18];

  return a7;
}

- (BOOL)_updateStringForProperty:(id)a3 value:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v23 = v12;
  v14 = a6;
  v15 = a5;
  v16 = [NSArray arrayWithObjects:&v23 count:1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_4476C;
  v20[3] = &unk_1065E0;
  v21 = v12;
  v22 = v13;
  v17 = v13;
  v18 = v12;
  LOBYTE(a7) = [(HDClinicalAccountEntity *)self updateProperties:v16 profile:v15 transaction:v14 error:a7 bindingHandler:v20];

  return a7;
}

+ (BOOL)updateAccountCredentialState:(int64_t)a3 identifier:(id)a4 profile:(id)a5 healthDatabase:(id)a6 event:(id)a7 error:(id *)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [v17 eventWithUpdatedCredentialStateAfter:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_44978;
  v32[3] = &unk_107558;
  v36 = a1;
  v37 = a3;
  v33 = v14;
  v34 = v15;
  v35 = v18;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_449B8;
  v25[3] = &unk_107580;
  v26 = v35;
  v27 = v16;
  v30 = a1;
  v31 = a3;
  v28 = v33;
  v29 = v17;
  v19 = v17;
  v20 = v33;
  v21 = v16;
  v22 = v35;
  v23 = v15;
  LOBYTE(a8) = [a1 performWriteTransactionWithHealthDatabase:v21 error:a8 block:v32 inaccessibilityHandler:v25];

  return a8;
}

+ (BOOL)_updateAccountCredentialState:(int64_t)a3 identifier:(id)a4 profile:(id)a5 transaction:(id)a6 event:(id)a7 alwaysRecordEvent:(BOOL)a8 error:(id *)a9
{
  v9 = a8;
  v15 = a5;
  v16 = a6;
  v36 = a7;
  v17 = a4;
  v18 = [v16 protectedDatabase];
  v19 = [a1 existingAccountEntityWithIdentifier:v17 database:v18 error:a9];

  v35 = v15;
  if ([v19 credentialStateInDatabase:v18] == a3)
  {
    v20 = 1;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v21 = [v19 updateCredentialState:a3 profile:v15 transaction:v16 error:a9];
    if (v21)
    {
      v22 = [v19 accountInDatabase:v18 error:a9];
    }

    else
    {
      v22 = 0;
    }

    _HKInitializeLogging();
    v23 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      if (v21)
      {
        v32 = "true";
      }

      else
      {
        v32 = "false";
      }

      v33 = v23;
      v34 = HKSensitiveLogItem();
      *buf = 138543874;
      v42 = a1;
      v43 = 2082;
      v44 = v32;
      v45 = 2114;
      v46 = v34;
      _os_log_debug_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%{public}@ account updated: %{public}s account: %{public}@", buf, 0x20u);
    }

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_44D74;
    v38[3] = &unk_1074E0;
    v39 = v22;
    v40 = a1;
    v24 = v22;
    [v16 onCommit:v38 orRollback:0];
    v20 = v24 != 0;
  }

  v25 = [v36 eventWithUpdatedCredentialStateBefore:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];
  v26 = v25;
  v27 = v25;
  if ((v20 & 1) == 0)
  {
    v27 = [v25 eventMarkedAsFailedWithError:*a9];
  }

  v37 = 0;
  v28 = [HDClinicalAccountEventEntity insertEvent:v27 database:v18 error:&v37];
  v29 = v37;
  if ((v20 & 1) == 0)
  {
  }

  if ((v28 & 1) == 0)
  {
    _HKInitializeLogging();
    v30 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A2190(v30);
    }
  }

  v15 = v35;
LABEL_17:

  return v20;
}

+ (void)_journalAccountEvent:(id)a3 database:(id)a4
{
  v5 = a3;
  v9 = 0;
  v6 = [HDClinicalAccountEventEntity journalEvent:v5 database:a4 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A2224(v8);
    }
  }
}

+ (BOOL)updateAccountUserEnabled:(BOOL)a3 identifier:(id)a4 profile:(id)a5 healthDatabase:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_44FF4;
  v23[3] = &unk_1075A8;
  v26 = a1;
  v27 = a3;
  v24 = v12;
  v25 = v13;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_45198;
  v19[3] = &unk_1075D0;
  v22 = a3;
  v20 = v24;
  v21 = v14;
  v15 = v14;
  v16 = v24;
  v17 = v13;
  LOBYTE(a7) = [a1 performWriteTransactionWithHealthDatabase:v15 error:a7 block:v23 inaccessibilityHandler:v19];

  return a7;
}

- (BOOL)_updateLastFetchDate:(id)a3 wasFullFetch:(BOOL)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  if (a4)
  {
    return [(HDClinicalAccountEntity *)self _updateLastFullFetchDate:a3 profile:a5 transaction:a6 error:a7];
  }

  else
  {
    return [(HDClinicalAccountEntity *)self _updateLastFetchDate:a3 profile:a5 transaction:a6 error:a7];
  }
}

- (BOOL)_updateLastFetchDate:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 protectedDatabase];
  v14 = HDClinicalAccountEntityPropertyLastFetchDate;
  v15 = [(HDClinicalAccountEntity *)self dateForProperty:HDClinicalAccountEntityPropertyLastFetchDate database:v13];
  if ([v15 hk_isAfterOrEqualToDate:v10])
  {
    v16 = 1;
  }

  else
  {
    v21[0] = v14;
    v21[1] = HDClinicalAccountEntityPropertyLastFailedFetchDate;
    v21[2] = HDClinicalAccountEntityPropertyFailedFetchAttemptsCount;
    v17 = [NSArray arrayWithObjects:v21 count:3];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_453C0;
    v19[3] = &unk_105B80;
    v20 = v10;
    v16 = [(HDClinicalAccountEntity *)self updateProperties:v17 profile:v11 transaction:v12 error:a6 bindingHandler:v19];
  }

  return v16;
}

- (BOOL)_updateLastFullFetchDate:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 protectedDatabase];
  v14 = [(HDClinicalAccountEntity *)self dateForProperty:HDClinicalAccountEntityPropertyLastFetchDate database:v13];
  v15 = [(HDClinicalAccountEntity *)self dateForProperty:HDClinicalAccountEntityPropertyLastFullFetchDate database:v13];
  if ([v14 hk_isAfterOrEqualToDate:v10] && (objc_msgSend(v15, "hk_isAfterOrEqualToDate:", v10) & 1) != 0)
  {
    v16 = 1;
  }

  else
  {
    v17 = HKDateMax();
    v18 = HKDateMax();
    v16 = [(HDClinicalAccountEntity *)self _updateLastFullFetchDateWithLastFetchDate:v17 lastFullFetchDate:v18 profile:v11 transaction:v12 error:a6];
  }

  return v16;
}

- (BOOL)_updateLastFullFetchDateWithLastFetchDate:(id)a3 lastFullFetchDate:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v23[0] = HDClinicalAccountEntityPropertyLastFetchDate;
  v23[1] = HDClinicalAccountEntityPropertyLastFullFetchDate;
  v23[2] = HDClinicalAccountEntityPropertyLastFailedFetchDate;
  v23[3] = HDClinicalAccountEntityPropertyFailedFetchAttemptsCount;
  v14 = a6;
  v15 = a5;
  v16 = [NSArray arrayWithObjects:v23 count:4];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_4570C;
  v20[3] = &unk_1065E0;
  v21 = v12;
  v22 = v13;
  v17 = v13;
  v18 = v12;
  LOBYTE(a7) = [(HDClinicalAccountEntity *)self updateProperties:v16 profile:v15 transaction:v14 error:a7 bindingHandler:v20];

  return a7;
}

- (BOOL)_updateLastFailedFetchDate:(id)a3 overrideFailedAttemptsCount:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a3;
  v16 = [v14 protectedDatabase];
  v17 = HDClinicalAccountEntityPropertyLastFailedFetchDate;
  v18 = [(HDClinicalAccountEntity *)self dateForProperty:HDClinicalAccountEntityPropertyLastFailedFetchDate database:v16];
  v31 = HKDateMax();

  v19 = v12;
  v20 = HDClinicalAccountEntityPropertyFailedFetchAttemptsCount;
  v21 = v19;
  if (!v19)
  {
    [(HDClinicalAccountEntity *)self numberForProperty:HDClinicalAccountEntityPropertyFailedFetchAttemptsCount database:v16];
    v29 = v18;
    v22 = v13;
    v24 = v23 = a7;
    v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v24 intValue] + 1);

    a7 = v23;
    v13 = v22;
    v18 = v29;
  }

  v30 = v16;
  v35[0] = v17;
  v35[1] = v20;
  v25 = [NSArray arrayWithObjects:v35 count:2];
  if ([(HDClinicalAccountEntity *)self _resetAccountCredentialIfDownloadIsOverdueWithProfile:v13 transaction:v14 error:a7])
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_459F0;
    v32[3] = &unk_1065E0;
    v26 = v31;
    v33 = v31;
    v34 = v21;
    v27 = [(HDClinicalAccountEntity *)self updateProperties:v25 profile:v13 transaction:v14 error:a7 bindingHandler:v32];
  }

  else
  {
    v27 = 0;
    v26 = v31;
  }

  return v27;
}

- (BOOL)_resetAccountCredentialIfDownloadIsOverdueWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 protectedDatabase];
  v11 = objc_alloc_init(NSDate);
  v12 = [(HDClinicalAccountEntity *)self dateForProperty:HDClinicalAccountEntityPropertyLastFetchDate database:v10];
  v13 = [(HDClinicalAccountEntity *)self numberForProperty:HDClinicalAccountEntityPropertyFailedFetchAttemptsCount database:v10];
  v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue] + 1);
  v27 = v11;
  if (v12)
  {
    [v11 timeIntervalSinceDate:v12];
    v16 = v15 > 2419200.0;
  }

  else
  {
    v16 = 1;
  }

  v17 = [v14 intValue];
  v18 = 1;
  if (v16)
  {
    v19 = v8;
    if (v17 >= 11)
    {
      if ([(HDClinicalAccountEntity *)self deleteCredentialWithProfile:v8 transaction:v9 deleteTokens:1 credentialIdentifier:0 error:a5]&& [(HDClinicalAccountEntity *)self updateCredentialState:1 profile:v8 transaction:v9 error:a5])
      {
        v26 = [(HDClinicalAccountEntity *)self UUIDForProperty:HDClinicalAccountEntityPropertyIdentifier database:v10];
        v25 = [HKClinicalAccountEvent alloc];
        v24 = [NSString stringWithFormat:@"%s:%d (%s)", "[HDClinicalAccountEntity(HealthRecordsPlugin) _resetAccountCredentialIfDownloadIsOverdueWithProfile:transaction:error:]", 2340, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDClinicalAccountEntity+HealthRecordsPlugin.m"];
        v20 = +[NSDate date];
        v21 = [v25 initWithAccountIdentifier:v26 type:1 caller:v24 timestamp:v20 eventDescription:@"Account credential was removed due to too many failed attempts and the most recent download being too old"];

        [(HDClinicalAccountEntity *)self credentialStateInDatabase:v10];
        v22 = [v21 eventWithUpdatedCredentialStateBefore:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];
        v18 = [HDClinicalAccountEventEntity insertEvent:v22 database:v10 error:a5];
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v19 = v8;
  }

  return v18;
}

+ (BOOL)updateAccountLastFetchDate:(id)a3 wasFullFetch:(BOOL)a4 identifier:(id)a5 profile:(id)a6 healthDatabase:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_45E88;
  v28[3] = &unk_1075F8;
  v32 = a1;
  v29 = v15;
  v33 = a4;
  v30 = v14;
  v31 = v16;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_4602C;
  v23[3] = &unk_107620;
  v27 = a4;
  v24 = v30;
  v25 = v29;
  v26 = v17;
  v18 = v17;
  v19 = v29;
  v20 = v30;
  v21 = v16;
  LOBYTE(a8) = [a1 performWriteTransactionWithHealthDatabase:v18 error:a8 block:v28 inaccessibilityHandler:v23];

  return a8;
}

+ (BOOL)updateAccountLastFetchDateNoValidation:(id)a3 identifier:(id)a4 profile:(id)a5 healthDatabase:(id)a6 error:(id *)a7
{
  v12 = a3;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_46198;
  v17[3] = &unk_106EF8;
  v18 = a4;
  v19 = v12;
  v20 = a5;
  v21 = a1;
  v13 = v20;
  v14 = v12;
  v15 = v18;
  LOBYTE(a7) = [a1 performWriteTransactionWithHealthDatabase:a6 error:a7 block:v17 inaccessibilityHandler:&stru_107640];

  return a7;
}

+ (BOOL)updateAccountLastFailedFetchDate:(id)a3 overrideFailedAttemptsCount:(id)a4 identifier:(id)a5 profile:(id)a6 healthDatabase:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_46514;
  v30[3] = &unk_107668;
  v35 = a1;
  v31 = v16;
  v32 = v14;
  v33 = v15;
  v34 = v17;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_466B8;
  v25[3] = &unk_107690;
  v26 = v32;
  v27 = v33;
  v28 = v31;
  v29 = v18;
  v19 = v18;
  v20 = v31;
  v21 = v33;
  v22 = v32;
  v23 = v17;
  LOBYTE(a8) = [a1 performWriteTransactionWithHealthDatabase:v19 error:a8 block:v30 inaccessibilityHandler:v25];

  return a8;
}

+ (BOOL)_deleteLastFetchDatesForAccountWithdentifier:(id)a3 profile:(id)a4 healthDatabase:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v22[0] = HDClinicalAccountEntityPropertyLastFetchDate;
  v22[1] = HDClinicalAccountEntityPropertyLastFullFetchDate;
  v12 = a5;
  [NSArray arrayWithObjects:v22 count:2];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_4688C;
  v17[3] = &unk_106EF8;
  v19 = v18 = v10;
  v20 = v11;
  v21 = a1;
  v13 = v11;
  v14 = v19;
  v15 = v10;
  LOBYTE(a6) = [a1 performWriteTransactionWithHealthDatabase:v12 error:a6 block:v17 inaccessibilityHandler:0];

  return a6;
}

- (BOOL)_updateLastExtractedRowID:(id)a3 rulesVersion:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v23[0] = HDClinicalAccountEntityPropertyLastExtractedRowID;
  v23[1] = HDClinicalAccountEntityPropertyLastExtractedRulesVersion;
  v14 = a6;
  v15 = a5;
  v16 = [NSArray arrayWithObjects:v23 count:2];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_46AFC;
  v20[3] = &unk_1065E0;
  v21 = v12;
  v22 = v13;
  v17 = v13;
  v18 = v12;
  LOBYTE(a7) = [(HDClinicalAccountEntity *)self updateProperties:v16 profile:v15 transaction:v14 error:a7 bindingHandler:v20];

  return a7;
}

+ (BOOL)updateAccountLastExtractedRowID:(id)a3 rulesVersion:(id)a4 identifier:(id)a5 profile:(id)a6 healthDatabase:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_46D2C;
  v30[3] = &unk_107668;
  v35 = a1;
  v31 = v16;
  v32 = v14;
  v33 = v15;
  v34 = v17;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_46ED0;
  v25[3] = &unk_107690;
  v26 = v32;
  v27 = v33;
  v28 = v31;
  v29 = v18;
  v19 = v18;
  v20 = v31;
  v21 = v33;
  v22 = v32;
  v23 = v17;
  LOBYTE(a8) = [a1 performWriteTransactionWithHealthDatabase:v19 error:a8 block:v30 inaccessibilityHandler:v25];

  return a8;
}

- (BOOL)updateLastSubmittedRowID:(id)a3 expectedRulesVersion:(id)a4 database:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = [objc_opt_class() _predicateForAccountWithPersistentID:-[HDClinicalAccountEntity persistentID](self expectedLastExtractedRulesVersion:{"persistentID"), v12}];

  v14 = objc_opt_class();
  v20 = HDClinicalAccountEntityPropertyLastSubmittedRowID;
  v15 = [NSArray arrayWithObjects:&v20 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_470B0;
  v18[3] = &unk_105B80;
  v19 = v10;
  v16 = v10;
  LOBYTE(a6) = [v14 updateProperties:v15 predicate:v13 database:v11 error:a6 bindingHandler:v18];

  return a6;
}

+ (BOOL)updateAccountLastSubmittedRowID:(id)a3 expectedRulesVersion:(id)a4 identifier:(id)a5 healthDatabase:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_47274;
  v26[3] = &unk_106EF8;
  v30 = a1;
  v27 = v14;
  v28 = v12;
  v29 = v13;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_472F0;
  v21[3] = &unk_107690;
  v22 = v28;
  v23 = v29;
  v24 = v27;
  v25 = v15;
  v16 = v15;
  v17 = v27;
  v18 = v29;
  v19 = v28;
  LOBYTE(a7) = [a1 performWriteTransactionWithHealthDatabase:v16 error:a7 block:v26 inaccessibilityHandler:v21];

  return a7;
}

+ (BOOL)resetAccountRowIDsForRulesVersion:(id)a3 identifier:(id)a4 profile:(id)a5 healthDatabase:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_474E8;
  v25[3] = &unk_106EF8;
  v29 = a1;
  v26 = v13;
  v27 = v12;
  v28 = v14;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_4757C;
  v21[3] = &unk_1063B8;
  v22 = v27;
  v23 = v26;
  v24 = v15;
  v16 = v15;
  v17 = v26;
  v18 = v27;
  v19 = v14;
  LOBYTE(a7) = [a1 performWriteTransactionWithHealthDatabase:v16 error:a7 block:v25 inaccessibilityHandler:v21];

  return a7;
}

+ (BOOL)deleteAccountWithIdentifier:(id)a3 deletionReason:(int64_t)a4 deleteGateway:(BOOL)a5 deleteIssuer:(BOOL)a6 profile:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a7;
  v15 = [v14 database];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_47728;
  v19[3] = &unk_107700;
  v21 = v14;
  v22 = a1;
  v20 = v13;
  v23 = a5;
  v24 = a6;
  v16 = v14;
  v17 = v13;
  LOBYTE(a8) = [a1 performWriteTransactionWithHealthDatabase:v15 error:a8 block:v19 inaccessibilityHandler:0];

  return a8;
}

+ (void)_postAccountChangeNotificationForAccount:(id)a3 changeType:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [NSNumber numberWithInteger:a4, @"changeType"];
    v12 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"HDClinicalAccountEntityDidChangeEventNotification" object:v6 userInfo:v8];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = a1;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Attempting to post an account change notification without providing an account. Not posting notification.", buf, 0xCu);
    }
  }
}

+ (id)_hkAccountRepresentingDeletedAccountWithIdentifier:(id)a3 gatewayExternalID:(id)a4 signedClinicalDataIssuerID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    if (v8)
    {
      v11 = +[HKClinicalBrand createFakeBrandForTestAccounts];
      v12 = [HKClinicalGateway alloc];
      v13 = HKClinicalGatewayUnknownBaseURL();
      v14 = +[HKFHIRVersion primaryDSTU2Version];
      v15 = [v12 initWithExternalID:v8 title:0 subtitle:0 displayableDescription:0 phoneNumber:0 informationURL:0 passwordResetURL:v11 patientPortalURL:&stru_1090E8 signupURL:v13 status:v14 type:0 brand:0 country:0 baseURL:0 FHIRVersion:0 authSchemas:? resourceSchemas:? features:? gatewayVersions:? minCompatibleAPIVersion:?];

      v16 = [[HKClinicalAccountProvenance alloc] initWithGateway:v15];
LABEL_6:

      v17 = [HKClinicalAccount alloc];
      v18 = +[HKClinicalSharingStatus unknownStatus];
      LOBYTE(v21) = 0;
      v19 = [v17 initWithIdentifier:v7 state:2 userEnabled:0 lastFetchDate:0 lastFullFetchDate:0 lastFailedFetchDate:0 failedFetchAttemptsCount:0 clinicalSharingStatus:v18 hasClinicalSharingScopes:v21 provenance:v16];

      goto LABEL_8;
    }

    if (v9)
    {
      v11 = [[HKSignedClinicalDataIssuer alloc] initWithIdentifier:v9 title:&stru_1090E8 subtitle:0 wellKnownURL:0];
      v16 = [[HKClinicalAccountProvenance alloc] initWithSignedClinicalDataIssuer:v11];
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_8:

  return v19;
}

+ (BOOL)_validateCodableAccount:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 hasMessageVersion])
  {
    v6 = [v5 messageVersion];
    v7 = [v6 compatibilityVersion];

    if (v7 > 2)
    {
      v8 = @"Codable account compatibilty version is higher than what we support";
LABEL_18:
      [NSError hk_assignError:a4 code:3 description:v8];
      v15 = 0;
      goto LABEL_19;
    }
  }

  v9 = [v5 gatewayExternalID];
  v10 = [v9 length];
  v11 = [v5 signedClinicalDataIssuerIdentifier];
  v12 = [v11 length];

  if (!&v12[v10])
  {
    v8 = @"Codable account missing gateway external ID or signed clinical data issuer ID";
    goto LABEL_18;
  }

  if ([v5 hasGatewayExternalID] && objc_msgSend(v5, "hasSignedClinicalDataIssuerIdentifier"))
  {
    [NSError hk_assignError:a4 code:3 description:@"Codable account has both gateway external ID and signed clinical data issuer identifier, which are mutually exclusive"];
  }

  if (![v5 hasUserEnabled])
  {
    goto LABEL_18;
  }

  if (![v5 hasCreationDate])
  {
    v8 = @"Codable account missing creation date";
    goto LABEL_18;
  }

  if (![v5 hasModificationDate])
  {
    v8 = @"Codable account missing modification date";
    goto LABEL_18;
  }

  v13 = [v5 syncIdentifier];
  v14 = [NSUUID hk_UUIDWithData:v13];

  if (!v14)
  {
    v8 = @"Codable account missing sync identifier";
    goto LABEL_18;
  }

  v15 = 1;
LABEL_19:

  return v15;
}

@end