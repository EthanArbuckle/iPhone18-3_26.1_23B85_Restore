@interface HDClinicalAccountEntity
+ (BOOL)_bindPropertiesForSync:(id)sync profile:(id)profile transaction:(id)transaction error:(id *)error mutationHandler:(id)handler;
+ (BOOL)_deleteLastFetchDatesForAccountWithdentifier:(id)withdentifier profile:(id)profile healthDatabase:(id)database error:(id *)error;
+ (BOOL)_insertCodableAccounts:(id)accounts syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error;
+ (BOOL)_insertOrUpdateAccountWithCodableAccount:(id)account gatewayID:(id)d signedClinicalDataIssuerID:(id)iD syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity transaction:(id)transaction profile:(id)profile error:(id *)self0;
+ (BOOL)_propertiesShouldTriggerSyncOnUpdate:(id)update;
+ (BOOL)_updateAccountCredentialState:(int64_t)state identifier:(id)identifier profile:(id)profile transaction:(id)transaction event:(id)event alwaysRecordEvent:(BOOL)recordEvent error:(id *)error;
+ (BOOL)_updateCountOfGatewayBackedAccountsWithProfile:(id)profile error:(id *)error;
+ (BOOL)_validateCodableAccount:(id)account error:(id *)error;
+ (BOOL)accountsNeedExtractionForProfile:(id)profile;
+ (BOOL)createAccountCredentialFromAuthResponse:(id)response accountIdentifier:(id)identifier requestedScope:(id)scope profile:(id)profile healthDatabase:(id)database event:(id)event createdCredential:(id *)credential error:(id *)self0;
+ (BOOL)deleteAccountWithIdentifier:(id)identifier deletionReason:(int64_t)reason deleteGateway:(BOOL)gateway deleteIssuer:(BOOL)issuer profile:(id)profile error:(id *)error;
+ (BOOL)resetAccountRowIDsForRulesVersion:(id)version identifier:(id)identifier profile:(id)profile healthDatabase:(id)database error:(id *)error;
+ (BOOL)updateAccountCredentialFromAuthResponse:(id)response accountIdentifier:(id)identifier requestedScope:(id)scope profile:(id)profile healthDatabase:(id)database event:(id)event updatedCredential:(id *)credential error:(id *)self0;
+ (BOOL)updateAccountCredentialState:(int64_t)state identifier:(id)identifier profile:(id)profile healthDatabase:(id)database event:(id)event error:(id *)error;
+ (BOOL)updateAccountLastExtractedRowID:(id)d rulesVersion:(id)version identifier:(id)identifier profile:(id)profile healthDatabase:(id)database error:(id *)error;
+ (BOOL)updateAccountLastFailedFetchDate:(id)date overrideFailedAttemptsCount:(id)count identifier:(id)identifier profile:(id)profile healthDatabase:(id)database error:(id *)error;
+ (BOOL)updateAccountLastFetchDate:(id)date wasFullFetch:(BOOL)fetch identifier:(id)identifier profile:(id)profile healthDatabase:(id)database error:(id *)error;
+ (BOOL)updateAccountLastFetchDateNoValidation:(id)validation identifier:(id)identifier profile:(id)profile healthDatabase:(id)database error:(id *)error;
+ (BOOL)updateAccountLastSubmittedRowID:(id)d expectedRulesVersion:(id)version identifier:(id)identifier healthDatabase:(id)database error:(id *)error;
+ (BOOL)updateAccountUserEnabled:(BOOL)enabled identifier:(id)identifier profile:(id)profile healthDatabase:(id)database error:(id *)error;
+ (BOOL)updateSourcesForAccountWithIdentifier:(id)identifier wasAccountInsert:(BOOL)insert clinicalExternalID:(id)d externalTitle:(id)title profile:(id)profile error:(id *)error;
+ (HDClinicalAccountEntity)accountEntityWithCredentialID:(id)d database:(id)database error:(id *)error;
+ (HDClinicalAccountEntity)accountEntityWithIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (HDClinicalAccountEntity)accountEntityWithSyncIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)_codableWithClinicalAccount:(id)account syncIdentifier:(id)identifier modificationDate:(id)date;
+ (id)_codableWithRow:(HDSQLiteRow *)row error:(id *)error;
+ (id)_currentCodableMessageVersion;
+ (id)_hkAccountRepresentingDeletedAccountWithIdentifier:(id)identifier gatewayExternalID:(id)d signedClinicalDataIssuerID:(id)iD;
+ (id)_insertAccountInProfile:(id)profile identifier:(id)identifier syncIdentifier:(id)syncIdentifier userEnabled:(BOOL)enabled credentialState:(int64_t)state creationDate:(id)date modificationDate:(id)modificationDate lastFetchDate:(id)self0 lastFullFetchDate:(id)self1 lastFailedFetchDate:(id)self2 failedFetchAttemptsCount:(id)self3 lastExtractedRowID:(id)self4 lastSubmittedRowID:(id)self5 lastExtractedRulesVersion:(id)self6 credentialID:(id)self7 patientHash:(id)self8 gatewayID:(id)self9 signedClinicalDataIssuerID:(id)issuerID clinicalSharingStatus:(id)status syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity error:(id *)error;
+ (id)_keyValueDomainWithProfile:(id)profile;
+ (id)_populateAccountWithRow:(HDSQLiteRow *)row credential:(id)credential gateway:(id)gateway signedClinicalDataIssuer:(id)issuer;
+ (id)_predicateForAccountForGatewayWithExternalID:(id)d;
+ (id)_predicateForAccountForSignedClinicalDataIssuerWithIdentifier:(id)identifier;
+ (id)_predicateForAccountWithGatewayID:(id)d;
+ (id)_predicateForAccountWithIdentifier:(id)identifier;
+ (id)_predicateForAccountWithPersistentID:(int64_t)d expectedLastExtractedRulesVersion:(id)version;
+ (id)_predicateForAccountWithSignedClinicalDataIssuerID:(id)d;
+ (id)_predicateForAccountWithSyncIdentifier:(id)identifier;
+ (id)_predicateForAccountsForGatewaysWithExternalIDs:(id)ds;
+ (id)_predicateForAccountsWithIdentifiers:(id)identifiers;
+ (id)_predicateForActiveDefaultCredentialState;
+ (id)_predicateForActiveDefaultCredentialStateMissingCredential;
+ (id)_predicateForActiveNeedsRelogin;
+ (id)_predicateForFetchable;
+ (id)_predicateForFetchableAccountsWithIdentifiers:(id)identifiers;
+ (id)_predicateForUserFetchEligible;
+ (id)_predicateForUserFetchEligibleAccountsWithIdentifiers:(id)identifiers;
+ (id)_propertiesByAddingSyncPropertiesToProperties:(id)properties;
+ (id)_propertiesForCodable;
+ (id)_propertiesForEntity;
+ (id)_propertiesForModel;
+ (id)_propertiesForUpdatingFromReceivedEntity;
+ (id)_syncProperties;
+ (id)_syncableProperties;
+ (id)accountEntityForGatewayWithExternalID:(id)d database:(id)database error:(id *)error;
+ (id)accountEntityForSignedClinicalDataIssuerWithIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)accountWithIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)accountWithIdentifier:(id)identifier healthDatabase:(id)database error:(id *)error;
+ (id)accountsForGatewayExternalIDs:(id)ds healthDatabase:(id)database error:(id *)error;
+ (id)accountsInDatabase:(id)database predicate:(id)predicate errorOut:(id *)out;
+ (id)accountsInHealthDatabase:(id)database predicate:(id)predicate error:(id *)error;
+ (id)accountsNeedExtractionSQL;
+ (id)accountsWithIdentifiers:(id)identifiers profile:(id)profile error:(id *)error;
+ (id)countOfGatewayBackedAccountsWithProfile:(id)profile error:(id *)error;
+ (id)countOfIssuerBackedAccountsWithProfile:(id)profile error:(id *)error;
+ (id)existingAccountEntityForGatewayWithExternalID:(id)d database:(id)database error:(id *)error;
+ (id)existingAccountEntityForSignedClinicalDataIssuerWithIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)existingAccountEntityWithIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)existingAccountEntityWithSyncIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)fetchableAccountsWithIdentifiers:(id)identifiers profile:(id)profile error:(id *)error;
+ (id)hasActiveAccountNeedingReloginInHealthDatabase:(id)database error:(id *)error;
+ (id)insertAccountWithIdentifier:(id)identifier syncIdentifier:(id)syncIdentifier userEnabled:(BOOL)enabled credentialState:(int64_t)state credentialID:(id)d patientHash:(id)hash gatewayID:(id)iD signedClinicalDataIssuerID:(id)self0 clinicalSharingStatus:(id)self1 profile:(id)self2 error:(id *)self3;
+ (id)predicateForAccountsForLegacySync;
+ (id)userFetchEligibleAccountsWithIdentifiers:(id)identifiers profile:(id)profile error:(id *)error;
+ (int64_t)hasGatewayBackedAccountsInHealthDatabase:(id)database error:(id *)error;
+ (int64_t)hasIssuerBackedAccountsInHealthDatabase:(id)database error:(id *)error;
+ (void)_journalAccountEvent:(id)event database:(id)database;
+ (void)_postAccountChangeNotificationForAccount:(id)account changeType:(int64_t)type;
- (BOOL)_resetAccountCredentialIfDownloadIsOverdueWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (BOOL)_updateAccountFromSyncWithCodable:(id)codable profile:(id)profile transaction:(id)transaction error:(id *)error;
- (BOOL)_updateBooleanForProperty:(id)property value:(BOOL)value profile:(id)profile transaction:(id)transaction error:(id *)error;
- (BOOL)_updateCredentialID:(id)d patientID:(id)iD profile:(id)profile transaction:(id)transaction error:(id *)error;
- (BOOL)_updateLastExtractedRowID:(id)d rulesVersion:(id)version profile:(id)profile transaction:(id)transaction error:(id *)error;
- (BOOL)_updateLastFailedFetchDate:(id)date overrideFailedAttemptsCount:(id)count profile:(id)profile transaction:(id)transaction error:(id *)error;
- (BOOL)_updateLastFetchDate:(id)date profile:(id)profile transaction:(id)transaction error:(id *)error;
- (BOOL)_updateLastFetchDate:(id)date wasFullFetch:(BOOL)fetch profile:(id)profile transaction:(id)transaction error:(id *)error;
- (BOOL)_updateLastFullFetchDate:(id)date profile:(id)profile transaction:(id)transaction error:(id *)error;
- (BOOL)_updateLastFullFetchDateWithLastFetchDate:(id)date lastFullFetchDate:(id)fetchDate profile:(id)profile transaction:(id)transaction error:(id *)error;
- (BOOL)_updateStringForProperty:(id)property value:(id)value profile:(id)profile transaction:(id)transaction error:(id *)error;
- (BOOL)assignCredentialWithPersistentID:(id)d profile:(id)profile transaction:(id)transaction error:(id *)error;
- (BOOL)deleteCredentialWithProfile:(id)profile transaction:(id)transaction deleteTokens:(BOOL)tokens credentialIdentifier:(id *)identifier error:(id *)error;
- (BOOL)resetFetchFailureInformationWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (BOOL)updateClinicalSharingStatusWithProfile:(id)profile transaction:(id)transaction firstSharedDate:(id)date lastSharedDate:(id)sharedDate userStatus:(id)status multiDeviceStatus:(id)deviceStatus primaryDeviceName:(id)name error:(id *)self0;
- (BOOL)updateCredentialState:(int64_t)state profile:(id)profile transaction:(id)transaction error:(id *)error;
- (BOOL)updateLastSubmittedRowID:(id)d expectedRulesVersion:(id)version database:(id)database error:(id *)error;
- (BOOL)updateProperties:(id)properties profile:(id)profile transaction:(id)transaction error:(id *)error bindingHandler:(id)handler;
- (id)_codableInDatabase:(id)database error:(id *)error;
- (id)_createCredentialFromAuthResponse:(id)response credentialIdentifier:(id)identifier requestedScope:(id)scope profile:(id)profile transaction:(id)transaction error:(id *)error;
- (id)_credentialInDatabase:(id)database error:(id *)error;
- (id)_issuerInDatabase:(id)database error:(id *)error;
- (id)_updateCredentialFromAuthResponse:(id)response requestedScope:(id)scope profile:(id)profile transaction:(id)transaction error:(id *)error;
- (id)accountInDatabase:(id)database error:(id *)error;
- (id)codableInHealthDatabase:(id)database error:(id *)error;
- (id)gatewayInDatabase:(id)database error:(id *)error;
- (int64_t)credentialStateInDatabase:(id)database;
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

+ (id)_predicateForAccountWithIdentifier:(id)identifier
{
  v3 = HDClinicalAccountEntityPropertyIdentifier;
  v4 = _HDSQLiteValueForUUID();
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

+ (id)_predicateForAccountWithSyncIdentifier:(id)identifier
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
  _predicateForNeedsRelogin = [self _predicateForNeedsRelogin];
  v6 = [HDSQLiteCompoundPredicate negatedPredicate:_predicateForNeedsRelogin];

  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:3];
  v8 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  return v8;
}

+ (id)_predicateForFetchable
{
  _predicateForUserFetchEligible = [self _predicateForUserFetchEligible];
  _predicateForRemoteFetchEligible = [self _predicateForRemoteFetchEligible];
  v5 = [HDSQLitePredicate compoundPredicateWithPredicate:_predicateForUserFetchEligible otherPredicate:_predicateForRemoteFetchEligible];

  return v5;
}

+ (id)_predicateForActiveNeedsRelogin
{
  _predicateForRemoteFetchEligible = [self _predicateForRemoteFetchEligible];
  _predicateForNeedsRelogin = [self _predicateForNeedsRelogin];
  v5 = [HDSQLitePredicate compoundPredicateWithPredicate:_predicateForRemoteFetchEligible otherPredicate:_predicateForNeedsRelogin];

  return v5;
}

+ (id)_predicateForActiveDefaultCredentialState
{
  _predicateForRemoteFetchEligible = [self _predicateForRemoteFetchEligible];
  _predicateForDefaultCredentialState = [self _predicateForDefaultCredentialState];
  v5 = [HDSQLitePredicate compoundPredicateWithPredicate:_predicateForRemoteFetchEligible otherPredicate:_predicateForDefaultCredentialState];

  return v5;
}

+ (id)_predicateForActiveDefaultCredentialStateMissingCredential
{
  _predicateForActiveDefaultCredentialState = [self _predicateForActiveDefaultCredentialState];
  _predicateForMissingCredential = [self _predicateForMissingCredential];
  v5 = [HDSQLitePredicate compoundPredicateWithPredicate:_predicateForActiveDefaultCredentialState otherPredicate:_predicateForMissingCredential];

  return v5;
}

+ (id)_predicateForAccountWithGatewayID:(id)d
{
  v3 = HDClinicalAccountEntityPropertyGatewayID;
  v4 = _HDSQLiteValueForNumber();
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

+ (id)_predicateForAccountForGatewayWithExternalID:(id)d
{
  v3 = HDClinicalAccountEntityPropertyGatewayExternalID;
  v4 = _HDSQLiteValueForString();
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

+ (id)_predicateForAccountWithSignedClinicalDataIssuerID:(id)d
{
  v3 = HDClinicalAccountEntityPropertySignedClinicalDataIssuerROWID;
  v4 = _HDSQLiteValueForNumber();
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

+ (id)_predicateForAccountForSignedClinicalDataIssuerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[HDClinicalAccountEntity disambiguatedDatabaseTable];
  v5 = [HDSQLiteJoinClause innerJoinClauseFromTable:v4 toTargetEntity:objc_opt_class() as:0 localReference:HDClinicalAccountEntityPropertySignedClinicalDataIssuerROWID targetKey:HDSQLEntityPropertyPersistentID];

  v6 = [NSSet setWithObject:v5];
  v7 = [HDSQLiteJoinPredicate predicateWithJoinClauses:v6];

  v8 = [HDSignedClinicalDataIssuerEntity predicateForIssuerWithIdentifier:identifierCopy];
  v9 = [v8 SQLForEntityClass:objc_opt_class()];
  v16 = identifierCopy;
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  v11 = [HDSQLiteRawPredicate predicateWithSQL:v9 overProperties:&__NSArray0__struct values:v10];

  v15[0] = v7;
  v15[1] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:2];
  v13 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

  return v13;
}

+ (id)_predicateForAccountsWithIdentifiers:(id)identifiers
{
  if (identifiers)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_3BBE0;
    v6[3] = &unk_107238;
    v6[4] = self;
    v3 = [identifiers hk_map:v6];
    v4 = [HDSQLiteCompoundPredicate predicateMatchingAnyPredicates:v3];
  }

  else
  {
    v4 = +[HDSQLitePredicate truePredicate];
  }

  return v4;
}

+ (id)_predicateForUserFetchEligibleAccountsWithIdentifiers:(id)identifiers
{
  v4 = [self _predicateForAccountsWithIdentifiers:identifiers];
  _predicateForUserFetchEligible = [self _predicateForUserFetchEligible];
  v6 = [HDSQLiteCompoundPredicate compoundPredicateWithPredicate:v4 otherPredicate:_predicateForUserFetchEligible];

  return v6;
}

+ (id)_predicateForFetchableAccountsWithIdentifiers:(id)identifiers
{
  v4 = [self _predicateForAccountsWithIdentifiers:identifiers];
  _predicateForFetchable = [self _predicateForFetchable];
  v6 = [HDSQLiteCompoundPredicate compoundPredicateWithPredicate:v4 otherPredicate:_predicateForFetchable];

  return v6;
}

+ (id)_predicateForAccountsForGatewaysWithExternalIDs:(id)ds
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3BDA0;
  v6[3] = &unk_107258;
  v6[4] = self;
  v3 = [ds hk_map:v6];
  v4 = [HDSQLiteCompoundPredicate predicateMatchingAnyPredicates:v3];

  return v4;
}

+ (id)_predicateForAccountWithPersistentID:(int64_t)d expectedLastExtractedRulesVersion:(id)version
{
  v5 = HDSQLEntityPropertyPersistentID;
  versionCopy = version;
  v7 = [NSNumber numberWithLongLong:d];
  v8 = [HDSQLiteComparisonPredicate predicateWithProperty:v5 equalToValue:v7];

  v9 = HDClinicalAccountEntityPropertyLastExtractedRulesVersion;
  v10 = [HDSQLiteComparisonPredicate predicateWithProperty:HDClinicalAccountEntityPropertyLastExtractedRulesVersion equalToValue:versionCopy];

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

+ (HDClinicalAccountEntity)accountEntityWithIdentifier:(id)identifier database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [self _predicateForAccountWithIdentifier:identifier];
  v10 = [self anyInDatabase:databaseCopy predicate:v9 error:error];

  return v10;
}

+ (HDClinicalAccountEntity)accountEntityWithSyncIdentifier:(id)identifier database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [self _predicateForAccountWithSyncIdentifier:identifier];
  v10 = [self anyInDatabase:databaseCopy predicate:v9 error:error];

  return v10;
}

+ (id)existingAccountEntityWithSyncIdentifier:(id)identifier database:(id)database error:(id *)error
{
  identifierCopy = identifier;
  databaseCopy = database;
  v10 = [self _predicateForAccountWithSyncIdentifier:identifierCopy];
  v16 = 0;
  v11 = [self anyInDatabase:databaseCopy predicate:v10 error:&v16];

  v12 = v16;
  v13 = v12;
  if (!v11)
  {
    if (v12)
    {
      if (error)
      {
        v15 = v12;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    else
    {
      [NSError hk_assignError:error code:118 format:@"Account with sync identifier %@ not found", identifierCopy];
    }
  }

  return v11;
}

+ (HDClinicalAccountEntity)accountEntityWithCredentialID:(id)d database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [self _predicateForAccountWithCredentialID:d];
  v10 = [self anyInDatabase:databaseCopy predicate:v9 error:error];

  return v10;
}

+ (id)accountEntityForGatewayWithExternalID:(id)d database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [self _predicateForAccountForGatewayWithExternalID:d];
  v10 = [self anyInDatabase:databaseCopy predicate:v9 error:error];

  return v10;
}

+ (id)existingAccountEntityWithIdentifier:(id)identifier database:(id)database error:(id *)error
{
  identifierCopy = identifier;
  v14 = 0;
  v9 = [self accountEntityWithIdentifier:identifierCopy database:database error:&v14];
  v10 = v14;
  v11 = v10;
  if (!v9)
  {
    if (v10)
    {
      if (error)
      {
        v13 = v10;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    else
    {
      [NSError hk_assignError:error code:118 format:@"Account with identifier %@ not found", identifierCopy];
    }
  }

  return v9;
}

+ (id)existingAccountEntityForGatewayWithExternalID:(id)d database:(id)database error:(id *)error
{
  v11 = 0;
  v6 = [self accountEntityForGatewayWithExternalID:d database:database error:&v11];
  v7 = v11;
  v8 = v7;
  if (!v6)
  {
    if (v7)
    {
      if (error)
      {
        v10 = v7;
        *error = v8;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    else
    {
      [NSError hk_assignError:error code:118 description:@"Account not found"];
    }
  }

  return v6;
}

+ (id)existingAccountEntityForSignedClinicalDataIssuerWithIdentifier:(id)identifier database:(id)database error:(id *)error
{
  identifierCopy = identifier;
  v14 = 0;
  v9 = [self accountEntityForSignedClinicalDataIssuerWithIdentifier:identifierCopy database:database error:&v14];
  v10 = v14;
  v11 = v10;
  if (!v9)
  {
    if (v10)
    {
      if (error)
      {
        v13 = v10;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    else
    {
      [NSError hk_assignError:error code:118 format:@"Account issuer %@ not found", identifierCopy];
    }
  }

  return v9;
}

+ (id)accountEntityForSignedClinicalDataIssuerWithIdentifier:(id)identifier database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [self _predicateForAccountForSignedClinicalDataIssuerWithIdentifier:identifier];
  v10 = [self anyInDatabase:databaseCopy predicate:v9 error:error];

  return v10;
}

- (id)gatewayInDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v7 = [(HDClinicalAccountEntity *)self numberForProperty:HDClinicalAccountEntityPropertyGatewayID database:databaseCopy];
  if (v7)
  {
    v8 = [HDClinicalGatewayEntity entityWithPersistentID:v7];
    v13 = 0;
    v9 = [v8 gatewayInDatabase:databaseCopy error:&v13];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      [NSError hk_assignError:error code:100 description:@"Unable to populate gateway model for account" underlyingError:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_populateAccountWithRow:(HDSQLiteRow *)row credential:(id)credential gateway:(id)gateway signedClinicalDataIssuer:(id)issuer
{
  issuerCopy = issuer;
  gatewayCopy = gateway;
  credentialCopy = credential;
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
  v25 = [(HDClinicalAccount *)v23 initWithIdentifier:v20 userEnabled:v11 credentialState:v24 creationDate:v22 lastFetchDate:v21 lastFullFetchDate:v19 lastFailedFetchDate:v18 failedFetchAttemptsCount:v17 lastExtractedRowID:v16 lastSubmittedRowID:v12 lastExtractedRulesVersion:v13 clinicalSharingStatus:v31 credential:credentialCopy patientHash:v14 gateway:gatewayCopy signedClinicalDataIssuer:issuerCopy];

  return v25;
}

- (id)accountInDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  if (!databaseCopy)
  {
    sub_A1DA8(a2, self);
  }

  v41[0] = 0;
  v8 = [(HDClinicalAccountEntity *)self _credentialInDatabase:databaseCopy error:v41];
  v9 = v41[0];
  v10 = v9;
  if (!v8 && v9)
  {
    [NSError hk_assignError:error code:100 description:@"Unable to fetch credential for account" underlyingError:v9];
    v11 = 0;
    goto LABEL_21;
  }

  v40 = 0;
  v12 = [(HDClinicalAccountEntity *)self gatewayInDatabase:databaseCopy error:&v40];
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
      v15 = [(HDClinicalAccountEntity *)self _issuerInDatabase:databaseCopy error:&v39];
      v16 = v39;
      v17 = v16;
      if (!v15 && v16)
      {
        [NSError hk_assignError:error code:100 description:@"Unable to fetch issuer for account" underlyingError:v16];

        goto LABEL_9;
      }
    }

    _propertiesForModel = [objc_opt_class() _propertiesForModel];
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
    selfCopy = self;
    v28 = v8;
    v29 = v12;
    v19 = v15;
    v30 = v19;
    v20 = [(HDClinicalAccountEntity *)self getValuesForProperties:_propertiesForModel database:databaseCopy error:&v32 handler:&v23];
    v21 = v32;
    if (v20)
    {
      v11 = v34[5];
    }

    else
    {
      [NSError hk_assignError:error code:100 description:@"Unable to create account model from row." underlyingError:v21, v23, v24, v25, v26, selfCopy, v28, v29];
      v11 = 0;
    }

    _Block_object_dispose(&v33, 8);
    goto LABEL_20;
  }

  [NSError hk_assignError:error code:100 description:@"Unable to fetch gateway for account" underlyingError:v13];
LABEL_9:
  v11 = 0;
LABEL_20:

LABEL_21:

  return v11;
}

- (int64_t)credentialStateInDatabase:(id)database
{
  v3 = [(HDClinicalAccountEntity *)self numberForProperty:HDClinicalAccountEntityPropertyCredentialState database:database];
  integerValue = [v3 integerValue];

  return integerValue;
}

+ (id)_currentCodableMessageVersion
{
  v2 = objc_alloc_init(HDCodableMessageVersion);
  [v2 setEntityVersion:2];
  [v2 setCompatibilityVersion:0];

  return v2;
}

- (id)codableInHealthDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
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
  if ([objc_opt_class() performReadTransactionWithHealthDatabase:databaseCopy error:error block:v10])
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

- (id)_codableInDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
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
  _propertiesForCodable = [objc_opt_class() _propertiesForCodable];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_3D384;
  v15[3] = &unk_1072D0;
  v15[4] = self;
  v15[5] = &v16;
  v15[6] = &v22;
  v8 = [(HDClinicalAccountEntity *)self getValuesForProperties:_propertiesForCodable database:databaseCopy handler:v15];

  v9 = v17[5];
  if (v9)
  {
    if (v8)
    {
      v10 = v9;
      goto LABEL_10;
    }

    v12 = [NSString stringWithFormat:@"Failed to create codable for entity %lld", [(HDClinicalAccountEntity *)self persistentID]];
    [NSError hk_assignError:error code:100 description:v12];
  }

  else
  {
    v11 = v23[5];
    v12 = v11;
    if (v11)
    {
      if (error)
      {
        v13 = v11;
        *error = v12;
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

+ (id)_codableWithRow:(HDSQLiteRow *)row error:(id *)error
{
  v5 = objc_alloc_init(HDCodableClinicalAccount);
  selfCopy = self;
  _currentCodableMessageVersion = [self _currentCodableMessageVersion];
  [v5 setMessageVersion:_currentCodableMessageVersion];

  v7 = HDSQLiteColumnWithNameAsString();
  [v5 setGatewayExternalID:v7];

  v8 = HDSQLiteColumnWithNameAsString();
  if (v8)
  {
    [v5 setSignedClinicalDataIssuerIdentifier:v8];
    messageVersion = [v5 messageVersion];
    [messageVersion setCompatibilityVersion:1];
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
  hk_dataForUUIDBytes = [v18 hk_dataForUUIDBytes];
  [v5 setSyncIdentifier:hk_dataForUUIDBytes];

  v20 = HDSQLiteColumnWithNameAsUUID();
  uUIDString = [v20 UUIDString];
  [v5 setAccountIdentifier:uUIDString];

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

  if ([selfCopy _validateCodableAccount:v5 error:error])
  {
    v28 = v5;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (id)_codableWithClinicalAccount:(id)account syncIdentifier:(id)identifier modificationDate:(id)date
{
  accountCopy = account;
  dateCopy = date;
  identifierCopy = identifier;
  v12 = objc_alloc_init(HDCodableClinicalAccount);
  _currentCodableMessageVersion = [self _currentCodableMessageVersion];
  [v12 setMessageVersion:_currentCodableMessageVersion];

  gateway = [accountCopy gateway];
  externalID = [gateway externalID];
  [v12 setGatewayExternalID:externalID];

  signedClinicalDataIssuer = [accountCopy signedClinicalDataIssuer];

  if (signedClinicalDataIssuer)
  {
    signedClinicalDataIssuer2 = [accountCopy signedClinicalDataIssuer];
    identifier = [signedClinicalDataIssuer2 identifier];
    [v12 setSignedClinicalDataIssuerIdentifier:identifier];

    messageVersion = [v12 messageVersion];
    [messageVersion setCompatibilityVersion:1];
  }

  [v12 setUserEnabled:{objc_msgSend(accountCopy, "isUserEnabled")}];
  creationDate = [accountCopy creationDate];
  [creationDate timeIntervalSinceReferenceDate];
  [v12 setCreationDate:?];

  [dateCopy timeIntervalSinceReferenceDate];
  v22 = v21;

  [v12 setModificationDate:v22];
  hk_dataForUUIDBytes = [identifierCopy hk_dataForUUIDBytes];

  [v12 setSyncIdentifier:hk_dataForUUIDBytes];
  identifier2 = [accountCopy identifier];
  uUIDString = [identifier2 UUIDString];
  [v12 setAccountIdentifier:uUIDString];

  patientHash = [accountCopy patientHash];
  [v12 setPatientHash:patientHash];

  lastFetchDate = [accountCopy lastFetchDate];
  v28 = lastFetchDate;
  if (lastFetchDate)
  {
    [lastFetchDate timeIntervalSinceReferenceDate];
    [v12 setLastFetchDate:?];
  }

  lastFullFetchDate = [accountCopy lastFullFetchDate];
  v30 = lastFullFetchDate;
  if (lastFullFetchDate)
  {
    [lastFullFetchDate timeIntervalSinceReferenceDate];
    [v12 setLastFullFetchDate:?];
  }

  lastFailedFetchDate = [accountCopy lastFailedFetchDate];
  v32 = lastFailedFetchDate;
  if (lastFailedFetchDate)
  {
    [lastFailedFetchDate timeIntervalSinceReferenceDate];
    [v12 setLastFailedFetchDate:?];
  }

  failedFetchAttemptsCount = [accountCopy failedFetchAttemptsCount];
  v34 = failedFetchAttemptsCount;
  if (failedFetchAttemptsCount)
  {
    [v12 setFailedFetchAttemptsCount:{objc_msgSend(failedFetchAttemptsCount, "integerValue")}];
  }

  clinicalSharingStatus = [accountCopy clinicalSharingStatus];
  firstSharedDate = [clinicalSharingStatus firstSharedDate];

  if (firstSharedDate)
  {
    clinicalSharingStatus2 = [accountCopy clinicalSharingStatus];
    firstSharedDate2 = [clinicalSharingStatus2 firstSharedDate];
    [firstSharedDate2 timeIntervalSinceReferenceDate];
    [v12 setClinicalSharingFirstSharedDate:?];
  }

  clinicalSharingStatus3 = [accountCopy clinicalSharingStatus];
  lastSharedDate = [clinicalSharingStatus3 lastSharedDate];

  if (lastSharedDate)
  {
    clinicalSharingStatus4 = [accountCopy clinicalSharingStatus];
    lastSharedDate2 = [clinicalSharingStatus4 lastSharedDate];
    [lastSharedDate2 timeIntervalSinceReferenceDate];
    [v12 setClinicalSharingLastSharedDate:?];
  }

  clinicalSharingStatus5 = [accountCopy clinicalSharingStatus];
  [v12 setClinicalSharingUserStatus:{objc_msgSend(clinicalSharingStatus5, "userStatus")}];

  clinicalSharingStatus6 = [accountCopy clinicalSharingStatus];
  [v12 setClinicalSharingMultiDeviceStatus:{objc_msgSend(clinicalSharingStatus6, "multiDeviceStatus")}];

  v48 = 0;
  v45 = [HDClinicalAccountEntity _validateCodableAccount:v12 error:&v48];
  v46 = v48;
  if ((v45 & 1) == 0)
  {
    sub_A1E24(a2, self, v46);
  }

  return v12;
}

+ (id)accountWithIdentifier:(id)identifier database:(id)database error:(id *)error
{
  identifierCopy = identifier;
  databaseCopy = database;
  v16 = 0;
  v10 = [self accountEntityWithIdentifier:identifierCopy database:databaseCopy error:&v16];
  v11 = v16;
  v12 = v11;
  if (v10)
  {
    v13 = [v10 accountInDatabase:databaseCopy error:error];
    goto LABEL_9;
  }

  if (v11)
  {
    if (error)
    {
      v14 = v11;
      v13 = 0;
      *error = v12;
      goto LABEL_9;
    }

    _HKLogDroppedError();
  }

  else
  {
    [NSError hk_assignError:error code:118 format:@"Account with identifier %@ not found", identifierCopy];
  }

  v13 = 0;
LABEL_9:

  return v13;
}

+ (id)accountWithIdentifier:(id)identifier healthDatabase:(id)database error:(id *)error
{
  identifierCopy = identifier;
  databaseCopy = database;
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
  selfCopy = self;
  v10 = identifierCopy;
  v15 = v10;
  if ([self performReadTransactionWithHealthDatabase:databaseCopy error:error block:v14])
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

+ (id)accountsInDatabase:(id)database predicate:(id)predicate errorOut:(id *)out
{
  databaseCopy = database;
  predicateCopy = predicate;
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
  selfCopy = self;
  v28 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_3E144;
  v21[3] = &unk_1072F8;
  v26 = a2;
  v12 = databaseCopy;
  v22 = v12;
  v24 = &v33;
  v25 = &v29;
  v13 = v11;
  v23 = v13;
  v14 = [self enumerateEntitiesInDatabase:v12 predicate:predicateCopy error:&v28 enumerationHandler:v21];
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
      if (out)
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
      if (out)
      {
LABEL_9:
        v19 = v18;
        *out = v18;
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

+ (id)accountsInHealthDatabase:(id)database predicate:(id)predicate error:(id *)error
{
  databaseCopy = database;
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
  selfCopy = self;
  predicateCopy = predicate;
  v14 = predicateCopy;
  if ([self performReadTransactionWithHealthDatabase:databaseCopy error:error block:v13])
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

+ (int64_t)hasGatewayBackedAccountsInHealthDatabase:(id)database error:(id *)error
{
  profile = [database profile];
  v7 = [self countOfGatewayBackedAccountsWithProfile:profile error:error];

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

+ (int64_t)hasIssuerBackedAccountsInHealthDatabase:(id)database error:(id *)error
{
  profile = [database profile];
  v7 = [self countOfIssuerBackedAccountsWithProfile:profile error:error];

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

+ (id)_keyValueDomainWithProfile:(id)profile
{
  profileCopy = profile;
  v4 = [HDKeyValueDomain alloc];
  v5 = [v4 initWithCategory:0 domainName:HKHealthRecordsPluginIdentifier profile:profileCopy];

  return v5;
}

+ (id)countOfGatewayBackedAccountsWithProfile:(id)profile error:(id *)error
{
  v5 = [self _keyValueDomainWithProfile:profile];
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
    if (error)
    {
      v11 = v7;
      v9 = 0;
      *error = v8;
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

+ (id)countOfIssuerBackedAccountsWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_3CE50;
  v15 = sub_3CE60;
  v16 = 0;
  database = [profileCopy database];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3E78C;
  v10[3] = &unk_107320;
  v10[4] = &v11;
  v10[5] = self;
  LOBYTE(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v10];

  if (error)
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

+ (BOOL)_updateCountOfGatewayBackedAccountsWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_3CE50;
  v17 = sub_3CE60;
  v18 = 0;
  database = [profileCopy database];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_3E9C4;
  v12[3] = &unk_107320;
  v12[4] = &v13;
  v12[5] = self;
  v8 = [self performWriteTransactionWithHealthDatabase:database error:error block:v12];

  if (v8)
  {
    v9 = [self _keyValueDomainWithProfile:profileCopy];
    v10 = [v9 setNumber:v14[5] forKey:@"HDClinicalAccountEntityAccountCountKey" error:error];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

+ (id)accountsWithIdentifiers:(id)identifiers profile:(id)profile error:(id *)error
{
  identifiersCopy = identifiers;
  database = [profile database];
  v10 = [self _predicateForAccountsWithIdentifiers:identifiersCopy];

  v11 = [self accountsInHealthDatabase:database predicate:v10 error:error];

  return v11;
}

+ (id)userFetchEligibleAccountsWithIdentifiers:(id)identifiers profile:(id)profile error:(id *)error
{
  identifiersCopy = identifiers;
  database = [profile database];
  v10 = [self _predicateForUserFetchEligibleAccountsWithIdentifiers:identifiersCopy];

  v11 = [self accountsInHealthDatabase:database predicate:v10 error:error];

  return v11;
}

+ (id)fetchableAccountsWithIdentifiers:(id)identifiers profile:(id)profile error:(id *)error
{
  identifiersCopy = identifiers;
  database = [profile database];
  v10 = [self _predicateForFetchableAccountsWithIdentifiers:identifiersCopy];

  v11 = [self accountsInHealthDatabase:database predicate:v10 error:error];

  return v11;
}

+ (id)accountsForGatewayExternalIDs:(id)ds healthDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [self _predicateForAccountsForGatewaysWithExternalIDs:ds];
  v10 = [self accountsInHealthDatabase:databaseCopy predicate:v9 error:error];

  return v10;
}

+ (id)accountsNeedExtractionSQL
{
  v2 = HDSQLEntityPropertyPersistentID;
  v3 = HDClinicalAccountEntityPropertyLastExtractedRowID;
  v4 = +[HDOriginalFHIRResourceEntity disambiguatedDatabaseTable];
  v5 = +[HDClinicalAccountEntity disambiguatedDatabaseTable];
  hDClinicalAccountEntityPropertyIdentifier = [NSString stringWithFormat:@"SELECT 1 FROM (SELECT MAX(A.%@) > COALESCE(B.%@, 0) as result FROM %@ A INNER JOIN %@ B WHERE A.%@ = B.%@ GROUP BY B.%@) WHERE result != 0 LIMIT 1", v2, v3, v4, v5, HDOriginalFHIRResourceEntityPropertyAccountID, v2, HDClinicalAccountEntityPropertyIdentifier];;

  return hDClinicalAccountEntityPropertyIdentifier;
}

+ (BOOL)accountsNeedExtractionForProfile:(id)profile
{
  profileCopy = profile;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  database = [profileCopy database];
  v10[5] = self;
  v11 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3EF18;
  v10[3] = &unk_107320;
  v10[4] = &v12;
  v6 = [self performReadTransactionWithHealthDatabase:database error:&v11 block:v10];
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

+ (id)hasActiveAccountNeedingReloginInHealthDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
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
  v10[5] = self;
  if ([self performReadTransactionWithHealthDatabase:databaseCopy error:error block:v10])
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

+ (BOOL)updateAccountCredentialFromAuthResponse:(id)response accountIdentifier:(id)identifier requestedScope:(id)scope profile:(id)profile healthDatabase:(id)database event:(id)event updatedCredential:(id *)credential error:(id *)self0
{
  responseCopy = response;
  identifierCopy = identifier;
  scopeCopy = scope;
  profileCopy = profile;
  databaseCopy = database;
  eventCopy = event;
  refreshToken = [responseCopy refreshToken];
  v23 = refreshToken == 0;

  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_3CE50;
  v64 = sub_3CE60;
  v65 = [eventCopy eventWithUpdatedCredentialStateAfter:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];
  v24 = v61[5];
  descriptionForAccountEvent = [responseCopy descriptionForAccountEvent];
  v26 = [v24 eventWithAppendedEventDescription:descriptionForAccountEvent];
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
  selfCopy = self;
  v46 = identifierCopy;
  v50 = &v54;
  v47 = responseCopy;
  v48 = scopeCopy;
  v28 = profileCopy;
  v53 = v23;
  v49 = v28;
  v51 = &v60;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_3F728;
  v37[3] = &unk_1073B0;
  v43 = &v60;
  selfCopy2 = self;
  v29 = databaseCopy;
  v38 = v29;
  v30 = v47;
  v39 = v30;
  v31 = v46;
  v40 = v31;
  v32 = v48;
  v41 = v32;
  v33 = eventCopy;
  v42 = v33;
  v34 = [self performWriteTransactionWithHealthDatabase:v29 error:error block:v45 inaccessibilityHandler:v37];
  if (v34)
  {
    if (credential)
    {
      v35 = v55[5];
      if (v35)
      {
        *credential = v35;
      }
    }
  }

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  return v34;
}

- (id)_updateCredentialFromAuthResponse:(id)response requestedScope:(id)scope profile:(id)profile transaction:(id)transaction error:(id *)error
{
  responseCopy = response;
  scopeCopy = scope;
  profileCopy = profile;
  transactionCopy = transaction;
  protectedDatabase = [transactionCopy protectedDatabase];
  v17 = [(HDClinicalAccountEntity *)self numberForProperty:HDClinicalAccountEntityPropertyCredentialID database:protectedDatabase];
  if (v17)
  {
    v18 = responseCopy;
    errorCopy = error;
    v24 = 0;
    v19 = [(HDClinicalAccountEntity *)self deleteCredentialWithProfile:profileCopy transaction:transactionCopy deleteTokens:0 credentialIdentifier:&v24 error:error];
    v20 = v24;
    v21 = 0;
    if (v19)
    {
      v21 = [(HDClinicalAccountEntity *)self _createCredentialFromAuthResponse:v18 credentialIdentifier:v20 requestedScope:scopeCopy profile:profileCopy transaction:transactionCopy error:errorCopy];
    }

    responseCopy = v18;
  }

  else
  {
    [NSError hk_assignError:error code:118 format:@"Account is missing a credential, unable to update with authResponse"];
    v21 = 0;
  }

  return v21;
}

+ (BOOL)createAccountCredentialFromAuthResponse:(id)response accountIdentifier:(id)identifier requestedScope:(id)scope profile:(id)profile healthDatabase:(id)database event:(id)event createdCredential:(id *)credential error:(id *)self0
{
  responseCopy = response;
  identifierCopy = identifier;
  scopeCopy = scope;
  profileCopy = profile;
  databaseCopy = database;
  eventCopy = event;
  refreshToken = [responseCopy refreshToken];
  v23 = refreshToken == 0;

  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_3CE50;
  v64 = sub_3CE60;
  v65 = [eventCopy eventWithUpdatedCredentialStateAfter:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];
  v24 = v61[5];
  descriptionForAccountEvent = [responseCopy descriptionForAccountEvent];
  v26 = [v24 eventWithAppendedEventDescription:descriptionForAccountEvent];
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
  selfCopy = self;
  v46 = identifierCopy;
  v50 = &v54;
  v47 = responseCopy;
  v48 = scopeCopy;
  v28 = profileCopy;
  v53 = v23;
  v49 = v28;
  v51 = &v60;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_3FDE8;
  v37[3] = &unk_1073B0;
  v43 = &v60;
  selfCopy2 = self;
  v29 = databaseCopy;
  v38 = v29;
  v30 = v47;
  v39 = v30;
  v31 = v46;
  v40 = v31;
  v32 = v48;
  v41 = v32;
  v33 = eventCopy;
  v42 = v33;
  v34 = [self performWriteTransactionWithHealthDatabase:v29 error:error block:v45 inaccessibilityHandler:v37];
  if (v34)
  {
    if (credential)
    {
      v35 = v55[5];
      if (v35)
      {
        *credential = v35;
      }
    }
  }

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  return v34;
}

- (id)_createCredentialFromAuthResponse:(id)response credentialIdentifier:(id)identifier requestedScope:(id)scope profile:(id)profile transaction:(id)transaction error:(id *)error
{
  profileCopy = profile;
  transactionCopy = transaction;
  identifierCopy = identifier;
  v17 = [HKFHIRCredential from:response requestedScope:scope];
  v29 = 0;
  v18 = [v17 createCredentialWithIdentifier:identifierCopy error:&v29];

  v19 = v29;
  if (v18)
  {
    v28 = v19;
    v20 = [HDFHIRCredentialEntity insertCredential:v18 profile:profileCopy transaction:transactionCopy error:&v28];
    v21 = v28;

    if (v20)
    {
      v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v20 persistentID]);
      patientID = [v18 patientID];
      v24 = [(HDClinicalAccountEntity *)self _updateCredentialID:v22 patientID:patientID profile:profileCopy transaction:transactionCopy error:error];

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
      [NSError hk_assignError:error code:100 description:@"Unable to insert credential for account" underlyingError:v21];
      v26 = 0;
    }
  }

  else
  {
    [NSError hk_assignError:error code:100 description:@"Unable to store tokens for credential for account" underlyingError:v19];
    v26 = 0;
    v21 = v19;
  }

  return v26;
}

- (BOOL)updateCredentialState:(int64_t)state profile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  profileCopy = profile;
  protectedDatabase = [transactionCopy protectedDatabase];
  v13 = [(HDClinicalAccountEntity *)self UUIDForProperty:HDClinicalAccountEntityPropertyIdentifier database:protectedDatabase];
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
  stateCopy = state;
  v20 = [(HDClinicalAccountEntity *)self updateProperties:v19 profile:profileCopy transaction:transactionCopy error:error bindingHandler:v22];

  return v20;
}

- (BOOL)assignCredentialWithPersistentID:(id)d profile:(id)profile transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  transactionCopy = transaction;
  protectedDatabase = [transactionCopy protectedDatabase];
  v14 = [HDFHIRCredentialEntity credentialWithPersistentID:dCopy database:protectedDatabase error:error];

  if (v14)
  {
    patientID = [v14 patientID];
    v16 = [(HDClinicalAccountEntity *)self _updateCredentialID:dCopy patientID:patientID profile:profileCopy transaction:transactionCopy error:error];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)deleteCredentialWithProfile:(id)profile transaction:(id)transaction deleteTokens:(BOOL)tokens credentialIdentifier:(id *)identifier error:(id *)error
{
  tokensCopy = tokens;
  profileCopy = profile;
  transactionCopy = transaction;
  protectedDatabase = [transactionCopy protectedDatabase];
  v15 = [(HDClinicalAccountEntity *)self numberForProperty:HDClinicalAccountEntityPropertyCredentialID database:protectedDatabase];
  if (v15)
  {
    if ([(HDClinicalAccountEntity *)self _updateCredentialID:0 patientID:0 profile:profileCopy transaction:transactionCopy error:error])
    {
      v16 = [HDFHIRCredentialEntity entityWithPersistentID:v15];
      v17 = [v16 credentialInDatabase:protectedDatabase error:error];
      v18 = v17;
      if (v17)
      {
        if (tokensCopy)
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

        if (identifier)
        {
          *identifier = [v18 identifier];
        }

        v24 = [v16 deleteFromDatabase:protectedDatabase error:{error, v26}];
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

- (BOOL)_updateCredentialID:(id)d patientID:(id)iD profile:(id)profile transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v14 = HDClinicalAccountEntityPropertyCredentialID;
  v15 = HDClinicalAccountEntityPropertyPatientHash;
  v27[0] = v14;
  v27[1] = v15;
  transactionCopy = transaction;
  profileCopy = profile;
  v18 = [NSArray arrayWithObjects:v27 count:2];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_40720;
  v22[3] = &unk_105D50;
  v23 = v14;
  v24 = dCopy;
  v25 = v15;
  v26 = iDCopy;
  v19 = iDCopy;
  v20 = dCopy;
  LOBYTE(error) = [(HDClinicalAccountEntity *)self updateProperties:v18 profile:profileCopy transaction:transactionCopy error:error bindingHandler:v22];

  return error;
}

- (BOOL)resetFetchFailureInformationWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v9 = HDClinicalAccountEntityPropertyLastFailedFetchDate;
  v10 = HDClinicalAccountEntityPropertyFailedFetchAttemptsCount;
  v18[0] = v9;
  v18[1] = v10;
  transactionCopy = transaction;
  profileCopy = profile;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_40928;
  v15[3] = &unk_1065E0;
  v16 = v9;
  v17 = v10;
  LOBYTE(error) = [(HDClinicalAccountEntity *)self updateProperties:v13 profile:profileCopy transaction:transactionCopy error:error bindingHandler:v15];

  return error;
}

- (id)_credentialInDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v7 = [(HDClinicalAccountEntity *)self credentialIDInDatabase:databaseCopy];
  if (v7)
  {
    v8 = [HDFHIRCredentialEntity credentialWithPersistentID:v7 database:databaseCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_issuerInDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v7 = [(HDClinicalAccountEntity *)self numberForProperty:HDClinicalAccountEntityPropertySignedClinicalDataIssuerROWID database:databaseCopy];
  if (v7)
  {
    v8 = [HDSignedClinicalDataIssuerEntity entityWithPersistentID:v7];
    v9 = [v8 issuerInDatabase:databaseCopy error:error];
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

+ (BOOL)_propertiesShouldTriggerSyncOnUpdate:(id)update
{
  updateCopy = update;
  _syncableProperties = [self _syncableProperties];
  v6 = [NSSet setWithArray:_syncableProperties];

  v7 = [NSSet setWithArray:updateCopy];

  LOBYTE(updateCopy) = [v6 intersectsSet:v7];
  return updateCopy;
}

+ (id)_propertiesByAddingSyncPropertiesToProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [NSMutableSet setWithArray:propertiesCopy];
  v6 = [self _propertiesShouldTriggerSyncOnUpdate:propertiesCopy];

  if (v6)
  {
    _syncProperties = [self _syncProperties];
    [v5 addObjectsFromArray:_syncProperties];
  }

  allObjects = [v5 allObjects];

  return allObjects;
}

+ (BOOL)_bindPropertiesForSync:(id)sync profile:(id)profile transaction:(id)transaction error:(id *)error mutationHandler:(id)handler
{
  syncCopy = sync;
  profileCopy = profile;
  handlerCopy = handler;
  if ([self _propertiesShouldTriggerSyncOnUpdate:syncCopy])
  {
    v14 = [self _propertiesByAddingSyncPropertiesToProperties:syncCopy];
    v15 = objc_alloc_init(NSDate);
    v16 = [HDClinicalEntitySyncAnchor nextClinicalAccountSyncAnchorWithProfile:profileCopy error:error];
    if (v16)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_40DD0;
      v20[3] = &unk_105D50;
      v21 = syncCopy;
      v22 = v15;
      v23 = v16;
      v24 = profileCopy;
      v17 = objc_retainBlock(v20);
      v18 = handlerCopy[2](handlerCopy, v14, v17, error);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = (handlerCopy)[2](handlerCopy, syncCopy, &stru_107418, error);
  }

  return v18;
}

- (BOOL)updateProperties:(id)properties profile:(id)profile transaction:(id)transaction error:(id *)error bindingHandler:(id)handler
{
  handlerCopy = handler;
  transactionCopy = transaction;
  profileCopy = profile;
  propertiesCopy = properties;
  protectedDatabase = [transactionCopy protectedDatabase];
  v17 = objc_opt_class();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_41008;
  v21[3] = &unk_107468;
  selfCopy = self;
  v24 = handlerCopy;
  v22 = protectedDatabase;
  v18 = handlerCopy;
  v19 = protectedDatabase;
  LOBYTE(error) = [v17 _bindPropertiesForSync:propertiesCopy profile:profileCopy transaction:transactionCopy error:error mutationHandler:v21];

  return error;
}

+ (BOOL)_insertCodableAccounts:(id)accounts syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error
{
  accountsCopy = accounts;
  profileCopy = profile;
  database = [profileCopy database];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_412B8;
  v20[3] = &unk_1067D8;
  selfCopy = self;
  v21 = accountsCopy;
  v22 = profileCopy;
  provenanceCopy = provenance;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_41D14;
  v16[3] = &unk_106800;
  v18 = v22;
  provenanceCopy2 = provenance;
  v17 = v21;
  v13 = v22;
  v14 = v21;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v20 inaccessibilityHandler:v16];

  return error;
}

+ (BOOL)_insertOrUpdateAccountWithCodableAccount:(id)account gatewayID:(id)d signedClinicalDataIssuerID:(id)iD syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity transaction:(id)transaction profile:(id)profile error:(id *)self0
{
  accountCopy = account;
  dCopy = d;
  iDCopy = iD;
  transactionCopy = transaction;
  profileCopy = profile;
  if ((dCopy == 0) != (iDCopy != 0))
  {
    sub_A2098(a2, self);
  }

  healthRecordsExtension = [profileCopy healthRecordsExtension];
  accountManager = [healthRecordsExtension accountManager];

  if (accountManager)
  {
    if (dCopy)
    {
      [self _predicateForAccountWithGatewayID:dCopy];
    }

    else
    {
      [self _predicateForAccountWithSignedClinicalDataIssuerID:iDCopy];
    }
    v26 = ;
    v27 = [transactionCopy databaseForEntityClass:self];
    v91 = 0;
    v28 = [self anyInDatabase:v27 predicate:v26 error:&v91];
    v88 = v91;
    v89 = v28;
    if (v88)
    {
      v29 = v88;
      if (error)
      {
        v30 = v88;
        v25 = 0;
        *error = v88;
      }

      else
      {
        _HKLogDroppedError();
        v25 = 0;
      }

      goto LABEL_57;
    }

    provenanceCopy = provenance;
    v83 = v26;
    v84 = [v28 UUIDForProperty:HDClinicalAccountEntityPropertyIdentifier database:v27];
    syncIdentifier = [accountCopy syncIdentifier];
    v86 = [NSUUID hk_UUIDWithData:syncIdentifier];

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

      patientHash = [accountCopy patientHash];
      v34 = [v81 isEqualToString:patientHash] ^ 1;

      if ((v32 & 1) == 0 && !v34)
      {
        v35 = [v28 _codableInDatabase:v85 error:error];
        v36 = v35;
        if (v35)
        {
          [v35 updateWithPropertiesFromOtherAccount:accountCopy];
          v25 = [v28 _updateAccountFromSyncWithCodable:v36 profile:profileCopy transaction:transactionCopy error:error];
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
      [accountCopy creationDate];
      v37 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v38 = [v28 dateForProperty:HDClinicalAccountEntityPropertyModificationDate database:v85];
      [accountCopy modificationDate];
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
          accountIdentifier = [accountCopy accountIdentifier];
          v62 = accountIdentifier;
          v63 = @"it has been modified a longer time ago";
          *buf = 138544130;
          v93 = v60;
          v94 = 2114;
          if (v44)
          {
            v63 = @"it is older";
          }

          v95 = accountIdentifier;
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
        accountIdentifier2 = [accountCopy accountIdentifier];
        *buf = 138543874;
        v93 = v47;
        v94 = 2114;
        v95 = accountIdentifier2;
        v96 = 2114;
        v97 = v84;
        _os_log_impl(&dword_0, logb, OS_LOG_TYPE_DEFAULT, "%{public}@: Received newer codable clinical account %{public}@, will delete existing account %{public}@", buf, 0x20u);
      }

      v49 = [accountManager deleteAccountWithIdentifier:v84 deletionReason:2 error:error];

      if ((v49 & 1) == 0)
      {
        v25 = 0;
        v26 = v83;
        v27 = v85;
        v29 = 0;
        goto LABEL_56;
      }
    }

    accountIdentifier3 = [accountCopy accountIdentifier];
    if (accountIdentifier3)
    {
      v51 = [NSUUID alloc];
      accountIdentifier4 = [accountCopy accountIdentifier];
      v53 = [v51 initWithUUIDString:accountIdentifier4];
    }

    else
    {
      v53 = +[NSUUID UUID];
    }

    userEnabled = [accountCopy userEnabled];
    [accountCopy creationDate];
    v82 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [accountCopy modificationDate];
    v79 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    log = [accountCopy hasLastFetchDate];
    if (log)
    {
      [accountCopy lastFetchDate];
      v77 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v77 = 0;
    }

    hasLastFullFetchDate = [accountCopy hasLastFullFetchDate];
    if (hasLastFullFetchDate)
    {
      [accountCopy lastFullFetchDate];
      v75 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v75 = 0;
    }

    hasLastFailedFetchDate = [accountCopy hasLastFailedFetchDate];
    if (hasLastFailedFetchDate)
    {
      [accountCopy lastFailedFetchDate];
      v73 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v73 = 0;
    }

    hasPatientHash = [accountCopy hasPatientHash];
    if (hasPatientHash)
    {
      patientHash2 = [accountCopy patientHash];
    }

    else
    {
      patientHash2 = 0;
    }

    clinicalSharingStatusForNewAccountFromSync = [accountCopy clinicalSharingStatusForNewAccountFromSync];
    v57 = [self _insertAccountInProfile:profileCopy identifier:v53 syncIdentifier:v86 userEnabled:userEnabled credentialState:1 creationDate:v82 modificationDate:v79 lastFetchDate:v77 lastFullFetchDate:v75 lastFailedFetchDate:v73 failedFetchAttemptsCount:0 lastExtractedRowID:0 lastSubmittedRowID:0 lastExtractedRulesVersion:0 credentialID:0 patientHash:patientHash2 gatewayID:dCopy signedClinicalDataIssuerID:iDCopy clinicalSharingStatus:clinicalSharingStatusForNewAccountFromSync syncProvenance:provenanceCopy syncIdentity:identity error:error];

    if (hasPatientHash)
    {
    }

    if (hasLastFailedFetchDate)
    {
    }

    v26 = v83;
    v27 = v85;
    v29 = 0;
    if (hasLastFullFetchDate)
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
  [NSError hk_assignError:error code:100 format:@"%@.%@ can only be used on profiles with account managers, but %@ doesn't have one", v23, v24, profileCopy];

  v25 = 0;
LABEL_58:

  return v25;
}

+ (id)insertAccountWithIdentifier:(id)identifier syncIdentifier:(id)syncIdentifier userEnabled:(BOOL)enabled credentialState:(int64_t)state credentialID:(id)d patientHash:(id)hash gatewayID:(id)iD signedClinicalDataIssuerID:(id)self0 clinicalSharingStatus:(id)self1 profile:(id)self2 error:(id *)self3
{
  enabledCopy = enabled;
  profileCopy = profile;
  statusCopy = status;
  issuerIDCopy = issuerID;
  iDCopy = iD;
  hashCopy = hash;
  dCopy = d;
  syncIdentifierCopy = syncIdentifier;
  identifierCopy = identifier;
  v24 = objc_alloc_init(NSDate);
  v25 = [self _insertAccountInProfile:profileCopy identifier:identifierCopy syncIdentifier:syncIdentifierCopy userEnabled:enabledCopy credentialState:state creationDate:v24 modificationDate:v24 lastFetchDate:0 lastFullFetchDate:0 lastFailedFetchDate:0 failedFetchAttemptsCount:0 lastExtractedRowID:0 lastSubmittedRowID:0 lastExtractedRulesVersion:0 credentialID:dCopy patientHash:hashCopy gatewayID:iDCopy signedClinicalDataIssuerID:issuerIDCopy clinicalSharingStatus:statusCopy syncProvenance:0 syncIdentity:objc_msgSend(profileCopy error:{"currentSyncIdentityPersistentID"), error}];

  return v25;
}

+ (id)_insertAccountInProfile:(id)profile identifier:(id)identifier syncIdentifier:(id)syncIdentifier userEnabled:(BOOL)enabled credentialState:(int64_t)state creationDate:(id)date modificationDate:(id)modificationDate lastFetchDate:(id)self0 lastFullFetchDate:(id)self1 lastFailedFetchDate:(id)self2 failedFetchAttemptsCount:(id)self3 lastExtractedRowID:(id)self4 lastSubmittedRowID:(id)self5 lastExtractedRulesVersion:(id)self6 credentialID:(id)self7 patientHash:(id)self8 gatewayID:(id)self9 signedClinicalDataIssuerID:(id)issuerID clinicalSharingStatus:(id)status syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity error:(id *)error
{
  profileCopy = profile;
  identifierCopy = identifier;
  syncIdentifierCopy = syncIdentifier;
  dateCopy = date;
  modificationDateCopy = modificationDate;
  fetchDateCopy = fetchDate;
  fullFetchDateCopy = fullFetchDate;
  failedFetchDateCopy = failedFetchDate;
  countCopy = count;
  dCopy = d;
  iDCopy = iD;
  versionCopy = version;
  credentialIDCopy = credentialID;
  hashCopy = hash;
  gatewayIDCopy = gatewayID;
  issuerIDCopy = issuerID;
  statusCopy = status;
  if ((gatewayIDCopy == 0) != (issuerIDCopy != 0))
  {
    sub_A2114(a2, self);
  }

  v74 = statusCopy;
  v37 = hashCopy;
  v75 = modificationDateCopy;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = sub_3CE50;
  v109 = sub_3CE60;
  v110 = 0;
  database = [profileCopy database];
  v104 = 0;
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_42DAC;
  v80[3] = &unk_107508;
  v72 = gatewayIDCopy;
  v81 = v72;
  v56 = profileCopy;
  v82 = v56;
  v58 = fetchDateCopy;
  v83 = v58;
  v98 = &v105;
  selfCopy = self;
  v60 = fullFetchDateCopy;
  v84 = v60;
  v78 = identifierCopy;
  v85 = v78;
  enabledCopy = enabled;
  v64 = syncIdentifierCopy;
  v86 = v64;
  stateCopy = state;
  v67 = dateCopy;
  v87 = v67;
  v69 = failedFetchDateCopy;
  v88 = v69;
  v70 = countCopy;
  v89 = v70;
  v71 = dCopy;
  v90 = v71;
  v73 = iDCopy;
  v91 = v73;
  v39 = versionCopy;
  v92 = v39;
  v40 = credentialIDCopy;
  v93 = v40;
  v41 = v37;
  v94 = v41;
  provenanceCopy = provenance;
  v42 = issuerIDCopy;
  v95 = v42;
  v43 = v74;
  v96 = v43;
  identityCopy = identity;
  v76 = v75;
  v97 = v76;
  v44 = [self performWriteTransactionWithHealthDatabase:database error:&v104 block:v80];
  v45 = v104;

  if (v44)
  {
    _HKInitializeLogging();
    v46 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
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
      selfCopy3 = self;
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

+ (BOOL)updateSourcesForAccountWithIdentifier:(id)identifier wasAccountInsert:(BOOL)insert clinicalExternalID:(id)d externalTitle:(id)title profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  dCopy = d;
  titleCopy = title;
  profileCopy = profile;
  sourceManager = [profileCopy sourceManager];
  v18 = [sourceManager privateSourceForClinicalAccountIdentifier:identifierCopy provenance:0 createOrUpdateIfNecessary:1 nameOnCreateOrUpdate:titleCopy error:error];

  if (v18)
  {
    sourceManager2 = [profileCopy sourceManager];
    v20 = [sourceManager2 publicSourceForClinicalExternalIdentifier:dCopy provenance:0 createOrUpdateIfNecessary:1 nameOnCreateOrUpdate:titleCopy error:error];

    v21 = v20 != 0;
    if (v20 && !insert)
    {
      healthRecordsExtension = [profileCopy healthRecordsExtension];
      [healthRecordsExtension didUpdateSourcesForAccountWithIdentifier:identifierCopy];
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)_updateAccountFromSyncWithCodable:(id)codable profile:(id)profile transaction:(id)transaction error:(id *)error
{
  codableCopy = codable;
  transactionCopy = transaction;
  profileCopy = profile;
  v13 = [transactionCopy databaseForEntity:self];
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
  v15 = codableCopy;
  v24 = v15;
  v16 = [(HDClinicalAccountEntity *)self updateProperties:v14 profile:profileCopy transaction:transactionCopy error:error bindingHandler:v23];

  if (v16)
  {
    v17 = [(HDClinicalAccountEntity *)self accountInDatabase:v13 error:error];
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
      [transactionCopy onCommit:v21 orRollback:0];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)updateClinicalSharingStatusWithProfile:(id)profile transaction:(id)transaction firstSharedDate:(id)date lastSharedDate:(id)sharedDate userStatus:(id)status multiDeviceStatus:(id)deviceStatus primaryDeviceName:(id)name error:(id *)self0
{
  profileCopy = profile;
  transactionCopy = transaction;
  dateCopy = date;
  sharedDateCopy = sharedDate;
  statusCopy = status;
  deviceStatusCopy = deviceStatus;
  nameCopy = name;
  v23 = objc_alloc_init(NSMutableArray);
  v24 = v23;
  if (dateCopy)
  {
    [v23 addObject:HDClinicalAccountEntityPropertyClinicalSharingFirstSharedDate];
  }

  if (sharedDateCopy)
  {
    [v24 addObject:HDClinicalAccountEntityPropertyClinicalSharingLastSharedDate];
  }

  if (statusCopy)
  {
    [v24 addObject:HDClinicalAccountEntityPropertyClinicalSharingUserStatus];
  }

  if (deviceStatusCopy)
  {
    [v24 addObject:HDClinicalAccountEntityPropertyClinicalSharingMultiDeviceStatus];
  }

  if (nameCopy)
  {
    [v24 addObject:HDClinicalAccountEntityPropertyClinicalSharingPrimaryDeviceName];
  }

  if ([v24 count])
  {
    v29 = [transactionCopy databaseForEntityClass:objc_opt_class()];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_442F4;
    v32[3] = &unk_105B58;
    v33 = dateCopy;
    v34 = sharedDateCopy;
    v35 = statusCopy;
    v36 = deviceStatusCopy;
    v37 = nameCopy;
    v28 = profileCopy;
    v25 = [(HDClinicalAccountEntity *)self updateProperties:v24 profile:profileCopy transaction:transactionCopy error:error bindingHandler:v32];
    if (v25)
    {
      [(HDClinicalAccountEntity *)self accountInDatabase:v29 error:error];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_44448;
      v30[3] = &unk_106B68;
      v31 = v30[4] = self;
      v26 = v31;
      [transactionCopy onCommit:v30 orRollback:0];
    }

    profileCopy = v28;
  }

  else
  {
    LOBYTE(v25) = 1;
  }

  return v25;
}

- (BOOL)_updateBooleanForProperty:(id)property value:(BOOL)value profile:(id)profile transaction:(id)transaction error:(id *)error
{
  propertyCopy = property;
  v21 = propertyCopy;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [NSArray arrayWithObjects:&v21 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_445F8;
  v18[3] = &unk_107530;
  v19 = propertyCopy;
  valueCopy = value;
  v16 = propertyCopy;
  LOBYTE(error) = [(HDClinicalAccountEntity *)self updateProperties:v15 profile:profileCopy transaction:transactionCopy error:error bindingHandler:v18];

  return error;
}

- (BOOL)_updateStringForProperty:(id)property value:(id)value profile:(id)profile transaction:(id)transaction error:(id *)error
{
  propertyCopy = property;
  valueCopy = value;
  v23 = propertyCopy;
  transactionCopy = transaction;
  profileCopy = profile;
  v16 = [NSArray arrayWithObjects:&v23 count:1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_4476C;
  v20[3] = &unk_1065E0;
  v21 = propertyCopy;
  v22 = valueCopy;
  v17 = valueCopy;
  v18 = propertyCopy;
  LOBYTE(error) = [(HDClinicalAccountEntity *)self updateProperties:v16 profile:profileCopy transaction:transactionCopy error:error bindingHandler:v20];

  return error;
}

+ (BOOL)updateAccountCredentialState:(int64_t)state identifier:(id)identifier profile:(id)profile healthDatabase:(id)database event:(id)event error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  databaseCopy = database;
  eventCopy = event;
  v18 = [eventCopy eventWithUpdatedCredentialStateAfter:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_44978;
  v32[3] = &unk_107558;
  selfCopy = self;
  stateCopy = state;
  v33 = identifierCopy;
  v34 = profileCopy;
  v35 = v18;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_449B8;
  v25[3] = &unk_107580;
  v26 = v35;
  v27 = databaseCopy;
  selfCopy2 = self;
  stateCopy2 = state;
  v28 = v33;
  v29 = eventCopy;
  v19 = eventCopy;
  v20 = v33;
  v21 = databaseCopy;
  v22 = v35;
  v23 = profileCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:v21 error:error block:v32 inaccessibilityHandler:v25];

  return error;
}

+ (BOOL)_updateAccountCredentialState:(int64_t)state identifier:(id)identifier profile:(id)profile transaction:(id)transaction event:(id)event alwaysRecordEvent:(BOOL)recordEvent error:(id *)error
{
  recordEventCopy = recordEvent;
  profileCopy = profile;
  transactionCopy = transaction;
  eventCopy = event;
  identifierCopy = identifier;
  protectedDatabase = [transactionCopy protectedDatabase];
  v19 = [self existingAccountEntityWithIdentifier:identifierCopy database:protectedDatabase error:error];

  v35 = profileCopy;
  if ([v19 credentialStateInDatabase:protectedDatabase] == state)
  {
    v20 = 1;
    if (!recordEventCopy)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v21 = [v19 updateCredentialState:state profile:profileCopy transaction:transactionCopy error:error];
    if (v21)
    {
      v22 = [v19 accountInDatabase:protectedDatabase error:error];
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
      selfCopy = self;
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
    selfCopy2 = self;
    v24 = v22;
    [transactionCopy onCommit:v38 orRollback:0];
    v20 = v24 != 0;
  }

  v25 = [eventCopy eventWithUpdatedCredentialStateBefore:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];
  v26 = v25;
  v27 = v25;
  if ((v20 & 1) == 0)
  {
    v27 = [v25 eventMarkedAsFailedWithError:*error];
  }

  v37 = 0;
  v28 = [HDClinicalAccountEventEntity insertEvent:v27 database:protectedDatabase error:&v37];
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

  profileCopy = v35;
LABEL_17:

  return v20;
}

+ (void)_journalAccountEvent:(id)event database:(id)database
{
  eventCopy = event;
  v9 = 0;
  v6 = [HDClinicalAccountEventEntity journalEvent:eventCopy database:database error:&v9];
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

+ (BOOL)updateAccountUserEnabled:(BOOL)enabled identifier:(id)identifier profile:(id)profile healthDatabase:(id)database error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  databaseCopy = database;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_44FF4;
  v23[3] = &unk_1075A8;
  selfCopy = self;
  enabledCopy = enabled;
  v24 = identifierCopy;
  v25 = profileCopy;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_45198;
  v19[3] = &unk_1075D0;
  enabledCopy2 = enabled;
  v20 = v24;
  v21 = databaseCopy;
  v15 = databaseCopy;
  v16 = v24;
  v17 = profileCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:v15 error:error block:v23 inaccessibilityHandler:v19];

  return error;
}

- (BOOL)_updateLastFetchDate:(id)date wasFullFetch:(BOOL)fetch profile:(id)profile transaction:(id)transaction error:(id *)error
{
  if (fetch)
  {
    return [(HDClinicalAccountEntity *)self _updateLastFullFetchDate:date profile:profile transaction:transaction error:error];
  }

  else
  {
    return [(HDClinicalAccountEntity *)self _updateLastFetchDate:date profile:profile transaction:transaction error:error];
  }
}

- (BOOL)_updateLastFetchDate:(id)date profile:(id)profile transaction:(id)transaction error:(id *)error
{
  dateCopy = date;
  profileCopy = profile;
  transactionCopy = transaction;
  protectedDatabase = [transactionCopy protectedDatabase];
  v14 = HDClinicalAccountEntityPropertyLastFetchDate;
  v15 = [(HDClinicalAccountEntity *)self dateForProperty:HDClinicalAccountEntityPropertyLastFetchDate database:protectedDatabase];
  if ([v15 hk_isAfterOrEqualToDate:dateCopy])
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
    v20 = dateCopy;
    v16 = [(HDClinicalAccountEntity *)self updateProperties:v17 profile:profileCopy transaction:transactionCopy error:error bindingHandler:v19];
  }

  return v16;
}

- (BOOL)_updateLastFullFetchDate:(id)date profile:(id)profile transaction:(id)transaction error:(id *)error
{
  dateCopy = date;
  profileCopy = profile;
  transactionCopy = transaction;
  protectedDatabase = [transactionCopy protectedDatabase];
  v14 = [(HDClinicalAccountEntity *)self dateForProperty:HDClinicalAccountEntityPropertyLastFetchDate database:protectedDatabase];
  v15 = [(HDClinicalAccountEntity *)self dateForProperty:HDClinicalAccountEntityPropertyLastFullFetchDate database:protectedDatabase];
  if ([v14 hk_isAfterOrEqualToDate:dateCopy] && (objc_msgSend(v15, "hk_isAfterOrEqualToDate:", dateCopy) & 1) != 0)
  {
    v16 = 1;
  }

  else
  {
    v17 = HKDateMax();
    v18 = HKDateMax();
    v16 = [(HDClinicalAccountEntity *)self _updateLastFullFetchDateWithLastFetchDate:v17 lastFullFetchDate:v18 profile:profileCopy transaction:transactionCopy error:error];
  }

  return v16;
}

- (BOOL)_updateLastFullFetchDateWithLastFetchDate:(id)date lastFullFetchDate:(id)fetchDate profile:(id)profile transaction:(id)transaction error:(id *)error
{
  dateCopy = date;
  fetchDateCopy = fetchDate;
  v23[0] = HDClinicalAccountEntityPropertyLastFetchDate;
  v23[1] = HDClinicalAccountEntityPropertyLastFullFetchDate;
  v23[2] = HDClinicalAccountEntityPropertyLastFailedFetchDate;
  v23[3] = HDClinicalAccountEntityPropertyFailedFetchAttemptsCount;
  transactionCopy = transaction;
  profileCopy = profile;
  v16 = [NSArray arrayWithObjects:v23 count:4];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_4570C;
  v20[3] = &unk_1065E0;
  v21 = dateCopy;
  v22 = fetchDateCopy;
  v17 = fetchDateCopy;
  v18 = dateCopy;
  LOBYTE(error) = [(HDClinicalAccountEntity *)self updateProperties:v16 profile:profileCopy transaction:transactionCopy error:error bindingHandler:v20];

  return error;
}

- (BOOL)_updateLastFailedFetchDate:(id)date overrideFailedAttemptsCount:(id)count profile:(id)profile transaction:(id)transaction error:(id *)error
{
  countCopy = count;
  profileCopy = profile;
  transactionCopy = transaction;
  dateCopy = date;
  protectedDatabase = [transactionCopy protectedDatabase];
  v17 = HDClinicalAccountEntityPropertyLastFailedFetchDate;
  v18 = [(HDClinicalAccountEntity *)self dateForProperty:HDClinicalAccountEntityPropertyLastFailedFetchDate database:protectedDatabase];
  v31 = HKDateMax();

  v19 = countCopy;
  v20 = HDClinicalAccountEntityPropertyFailedFetchAttemptsCount;
  v21 = v19;
  if (!v19)
  {
    [(HDClinicalAccountEntity *)self numberForProperty:HDClinicalAccountEntityPropertyFailedFetchAttemptsCount database:protectedDatabase];
    v29 = v18;
    v22 = profileCopy;
    v24 = v23 = error;
    v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v24 intValue] + 1);

    error = v23;
    profileCopy = v22;
    v18 = v29;
  }

  v30 = protectedDatabase;
  v35[0] = v17;
  v35[1] = v20;
  v25 = [NSArray arrayWithObjects:v35 count:2];
  if ([(HDClinicalAccountEntity *)self _resetAccountCredentialIfDownloadIsOverdueWithProfile:profileCopy transaction:transactionCopy error:error])
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_459F0;
    v32[3] = &unk_1065E0;
    v26 = v31;
    v33 = v31;
    v34 = v21;
    v27 = [(HDClinicalAccountEntity *)self updateProperties:v25 profile:profileCopy transaction:transactionCopy error:error bindingHandler:v32];
  }

  else
  {
    v27 = 0;
    v26 = v31;
  }

  return v27;
}

- (BOOL)_resetAccountCredentialIfDownloadIsOverdueWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  profileCopy = profile;
  transactionCopy = transaction;
  protectedDatabase = [transactionCopy protectedDatabase];
  v11 = objc_alloc_init(NSDate);
  v12 = [(HDClinicalAccountEntity *)self dateForProperty:HDClinicalAccountEntityPropertyLastFetchDate database:protectedDatabase];
  v13 = [(HDClinicalAccountEntity *)self numberForProperty:HDClinicalAccountEntityPropertyFailedFetchAttemptsCount database:protectedDatabase];
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

  intValue = [v14 intValue];
  v18 = 1;
  if (v16)
  {
    v19 = profileCopy;
    if (intValue >= 11)
    {
      if ([(HDClinicalAccountEntity *)self deleteCredentialWithProfile:profileCopy transaction:transactionCopy deleteTokens:1 credentialIdentifier:0 error:error]&& [(HDClinicalAccountEntity *)self updateCredentialState:1 profile:profileCopy transaction:transactionCopy error:error])
      {
        v26 = [(HDClinicalAccountEntity *)self UUIDForProperty:HDClinicalAccountEntityPropertyIdentifier database:protectedDatabase];
        v25 = [HKClinicalAccountEvent alloc];
        v24 = [NSString stringWithFormat:@"%s:%d (%s)", "[HDClinicalAccountEntity(HealthRecordsPlugin) _resetAccountCredentialIfDownloadIsOverdueWithProfile:transaction:error:]", 2340, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDClinicalAccountEntity+HealthRecordsPlugin.m"];
        v20 = +[NSDate date];
        v21 = [v25 initWithAccountIdentifier:v26 type:1 caller:v24 timestamp:v20 eventDescription:@"Account credential was removed due to too many failed attempts and the most recent download being too old"];

        [(HDClinicalAccountEntity *)self credentialStateInDatabase:protectedDatabase];
        v22 = [v21 eventWithUpdatedCredentialStateBefore:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];
        v18 = [HDClinicalAccountEventEntity insertEvent:v22 database:protectedDatabase error:error];
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v19 = profileCopy;
  }

  return v18;
}

+ (BOOL)updateAccountLastFetchDate:(id)date wasFullFetch:(BOOL)fetch identifier:(id)identifier profile:(id)profile healthDatabase:(id)database error:(id *)error
{
  dateCopy = date;
  identifierCopy = identifier;
  profileCopy = profile;
  databaseCopy = database;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_45E88;
  v28[3] = &unk_1075F8;
  selfCopy = self;
  v29 = identifierCopy;
  fetchCopy = fetch;
  v30 = dateCopy;
  v31 = profileCopy;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_4602C;
  v23[3] = &unk_107620;
  fetchCopy2 = fetch;
  v24 = v30;
  v25 = v29;
  v26 = databaseCopy;
  v18 = databaseCopy;
  v19 = v29;
  v20 = v30;
  v21 = profileCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:v18 error:error block:v28 inaccessibilityHandler:v23];

  return error;
}

+ (BOOL)updateAccountLastFetchDateNoValidation:(id)validation identifier:(id)identifier profile:(id)profile healthDatabase:(id)database error:(id *)error
{
  validationCopy = validation;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_46198;
  v17[3] = &unk_106EF8;
  identifierCopy = identifier;
  v19 = validationCopy;
  profileCopy = profile;
  selfCopy = self;
  v13 = profileCopy;
  v14 = validationCopy;
  v15 = identifierCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v17 inaccessibilityHandler:&stru_107640];

  return error;
}

+ (BOOL)updateAccountLastFailedFetchDate:(id)date overrideFailedAttemptsCount:(id)count identifier:(id)identifier profile:(id)profile healthDatabase:(id)database error:(id *)error
{
  dateCopy = date;
  countCopy = count;
  identifierCopy = identifier;
  profileCopy = profile;
  databaseCopy = database;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_46514;
  v30[3] = &unk_107668;
  selfCopy = self;
  v31 = identifierCopy;
  v32 = dateCopy;
  v33 = countCopy;
  v34 = profileCopy;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_466B8;
  v25[3] = &unk_107690;
  v26 = v32;
  v27 = v33;
  v28 = v31;
  v29 = databaseCopy;
  v19 = databaseCopy;
  v20 = v31;
  v21 = v33;
  v22 = v32;
  v23 = profileCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:v19 error:error block:v30 inaccessibilityHandler:v25];

  return error;
}

+ (BOOL)_deleteLastFetchDatesForAccountWithdentifier:(id)withdentifier profile:(id)profile healthDatabase:(id)database error:(id *)error
{
  withdentifierCopy = withdentifier;
  profileCopy = profile;
  v22[0] = HDClinicalAccountEntityPropertyLastFetchDate;
  v22[1] = HDClinicalAccountEntityPropertyLastFullFetchDate;
  databaseCopy = database;
  [NSArray arrayWithObjects:v22 count:2];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_4688C;
  v17[3] = &unk_106EF8;
  v19 = v18 = withdentifierCopy;
  v20 = profileCopy;
  selfCopy = self;
  v13 = profileCopy;
  v14 = v19;
  v15 = withdentifierCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:databaseCopy error:error block:v17 inaccessibilityHandler:0];

  return error;
}

- (BOOL)_updateLastExtractedRowID:(id)d rulesVersion:(id)version profile:(id)profile transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  versionCopy = version;
  v23[0] = HDClinicalAccountEntityPropertyLastExtractedRowID;
  v23[1] = HDClinicalAccountEntityPropertyLastExtractedRulesVersion;
  transactionCopy = transaction;
  profileCopy = profile;
  v16 = [NSArray arrayWithObjects:v23 count:2];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_46AFC;
  v20[3] = &unk_1065E0;
  v21 = dCopy;
  v22 = versionCopy;
  v17 = versionCopy;
  v18 = dCopy;
  LOBYTE(error) = [(HDClinicalAccountEntity *)self updateProperties:v16 profile:profileCopy transaction:transactionCopy error:error bindingHandler:v20];

  return error;
}

+ (BOOL)updateAccountLastExtractedRowID:(id)d rulesVersion:(id)version identifier:(id)identifier profile:(id)profile healthDatabase:(id)database error:(id *)error
{
  dCopy = d;
  versionCopy = version;
  identifierCopy = identifier;
  profileCopy = profile;
  databaseCopy = database;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_46D2C;
  v30[3] = &unk_107668;
  selfCopy = self;
  v31 = identifierCopy;
  v32 = dCopy;
  v33 = versionCopy;
  v34 = profileCopy;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_46ED0;
  v25[3] = &unk_107690;
  v26 = v32;
  v27 = v33;
  v28 = v31;
  v29 = databaseCopy;
  v19 = databaseCopy;
  v20 = v31;
  v21 = v33;
  v22 = v32;
  v23 = profileCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:v19 error:error block:v30 inaccessibilityHandler:v25];

  return error;
}

- (BOOL)updateLastSubmittedRowID:(id)d expectedRulesVersion:(id)version database:(id)database error:(id *)error
{
  dCopy = d;
  databaseCopy = database;
  versionCopy = version;
  v13 = [objc_opt_class() _predicateForAccountWithPersistentID:-[HDClinicalAccountEntity persistentID](self expectedLastExtractedRulesVersion:{"persistentID"), versionCopy}];

  v14 = objc_opt_class();
  v20 = HDClinicalAccountEntityPropertyLastSubmittedRowID;
  v15 = [NSArray arrayWithObjects:&v20 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_470B0;
  v18[3] = &unk_105B80;
  v19 = dCopy;
  v16 = dCopy;
  LOBYTE(error) = [v14 updateProperties:v15 predicate:v13 database:databaseCopy error:error bindingHandler:v18];

  return error;
}

+ (BOOL)updateAccountLastSubmittedRowID:(id)d expectedRulesVersion:(id)version identifier:(id)identifier healthDatabase:(id)database error:(id *)error
{
  dCopy = d;
  versionCopy = version;
  identifierCopy = identifier;
  databaseCopy = database;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_47274;
  v26[3] = &unk_106EF8;
  selfCopy = self;
  v27 = identifierCopy;
  v28 = dCopy;
  v29 = versionCopy;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_472F0;
  v21[3] = &unk_107690;
  v22 = v28;
  v23 = v29;
  v24 = v27;
  v25 = databaseCopy;
  v16 = databaseCopy;
  v17 = v27;
  v18 = v29;
  v19 = v28;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:v16 error:error block:v26 inaccessibilityHandler:v21];

  return error;
}

+ (BOOL)resetAccountRowIDsForRulesVersion:(id)version identifier:(id)identifier profile:(id)profile healthDatabase:(id)database error:(id *)error
{
  versionCopy = version;
  identifierCopy = identifier;
  profileCopy = profile;
  databaseCopy = database;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_474E8;
  v25[3] = &unk_106EF8;
  selfCopy = self;
  v26 = identifierCopy;
  v27 = versionCopy;
  v28 = profileCopy;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_4757C;
  v21[3] = &unk_1063B8;
  v22 = v27;
  v23 = v26;
  v24 = databaseCopy;
  v16 = databaseCopy;
  v17 = v26;
  v18 = v27;
  v19 = profileCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:v16 error:error block:v25 inaccessibilityHandler:v21];

  return error;
}

+ (BOOL)deleteAccountWithIdentifier:(id)identifier deletionReason:(int64_t)reason deleteGateway:(BOOL)gateway deleteIssuer:(BOOL)issuer profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  database = [profileCopy database];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_47728;
  v19[3] = &unk_107700;
  v21 = profileCopy;
  selfCopy = self;
  v20 = identifierCopy;
  gatewayCopy = gateway;
  issuerCopy = issuer;
  v16 = profileCopy;
  v17 = identifierCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v19 inaccessibilityHandler:0];

  return error;
}

+ (void)_postAccountChangeNotificationForAccount:(id)account changeType:(int64_t)type
{
  accountCopy = account;
  if (accountCopy)
  {
    v7 = [NSNumber numberWithInteger:type, @"changeType"];
    v12 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"HDClinicalAccountEntityDidChangeEventNotification" object:accountCopy userInfo:v8];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Attempting to post an account change notification without providing an account. Not posting notification.", buf, 0xCu);
    }
  }
}

+ (id)_hkAccountRepresentingDeletedAccountWithIdentifier:(id)identifier gatewayExternalID:(id)d signedClinicalDataIssuerID:(id)iD
{
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  v10 = iDCopy;
  if (identifierCopy)
  {
    if (dCopy)
    {
      v11 = +[HKClinicalBrand createFakeBrandForTestAccounts];
      v12 = [HKClinicalGateway alloc];
      v13 = HKClinicalGatewayUnknownBaseURL();
      v14 = +[HKFHIRVersion primaryDSTU2Version];
      v15 = [v12 initWithExternalID:dCopy title:0 subtitle:0 displayableDescription:0 phoneNumber:0 informationURL:0 passwordResetURL:v11 patientPortalURL:&stru_1090E8 signupURL:v13 status:v14 type:0 brand:0 country:0 baseURL:0 FHIRVersion:0 authSchemas:? resourceSchemas:? features:? gatewayVersions:? minCompatibleAPIVersion:?];

      v16 = [[HKClinicalAccountProvenance alloc] initWithGateway:v15];
LABEL_6:

      v17 = [HKClinicalAccount alloc];
      v18 = +[HKClinicalSharingStatus unknownStatus];
      LOBYTE(v21) = 0;
      v19 = [v17 initWithIdentifier:identifierCopy state:2 userEnabled:0 lastFetchDate:0 lastFullFetchDate:0 lastFailedFetchDate:0 failedFetchAttemptsCount:0 clinicalSharingStatus:v18 hasClinicalSharingScopes:v21 provenance:v16];

      goto LABEL_8;
    }

    if (iDCopy)
    {
      v11 = [[HKSignedClinicalDataIssuer alloc] initWithIdentifier:iDCopy title:&stru_1090E8 subtitle:0 wellKnownURL:0];
      v16 = [[HKClinicalAccountProvenance alloc] initWithSignedClinicalDataIssuer:v11];
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_8:

  return v19;
}

+ (BOOL)_validateCodableAccount:(id)account error:(id *)error
{
  accountCopy = account;
  if ([accountCopy hasMessageVersion])
  {
    messageVersion = [accountCopy messageVersion];
    compatibilityVersion = [messageVersion compatibilityVersion];

    if (compatibilityVersion > 2)
    {
      v8 = @"Codable account compatibilty version is higher than what we support";
LABEL_18:
      [NSError hk_assignError:error code:3 description:v8];
      v15 = 0;
      goto LABEL_19;
    }
  }

  gatewayExternalID = [accountCopy gatewayExternalID];
  v10 = [gatewayExternalID length];
  signedClinicalDataIssuerIdentifier = [accountCopy signedClinicalDataIssuerIdentifier];
  v12 = [signedClinicalDataIssuerIdentifier length];

  if (!&v12[v10])
  {
    v8 = @"Codable account missing gateway external ID or signed clinical data issuer ID";
    goto LABEL_18;
  }

  if ([accountCopy hasGatewayExternalID] && objc_msgSend(accountCopy, "hasSignedClinicalDataIssuerIdentifier"))
  {
    [NSError hk_assignError:error code:3 description:@"Codable account has both gateway external ID and signed clinical data issuer identifier, which are mutually exclusive"];
  }

  if (![accountCopy hasUserEnabled])
  {
    goto LABEL_18;
  }

  if (![accountCopy hasCreationDate])
  {
    v8 = @"Codable account missing creation date";
    goto LABEL_18;
  }

  if (![accountCopy hasModificationDate])
  {
    v8 = @"Codable account missing modification date";
    goto LABEL_18;
  }

  syncIdentifier = [accountCopy syncIdentifier];
  v14 = [NSUUID hk_UUIDWithData:syncIdentifier];

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