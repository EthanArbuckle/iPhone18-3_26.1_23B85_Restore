@interface HDClinicalGatewayEntity
+ (BOOL)_insertCodableGateways:(id)gateways syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error;
+ (BOOL)_insertGateway:(id)gateway syncAnchor:(id)anchor syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity database:(id)database error:(id *)error;
+ (BOOL)_insertOrUpdateGateway:(id)gateway syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity database:(id)database profile:(id)profile error:(id *)error;
+ (BOOL)_insertOrUpdateGateway:(id)gateway syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity database:(id)database profile:(id)profile error:(id *)error insertionBlock:(id)block;
+ (BOOL)_updateCodableGateways:(id)gateways syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error;
+ (BOOL)_updateGatewayEntity:(id)entity withGateway:(id)gateway syncAnchor:(id)anchor syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity database:(id)database profile:(id)profile error:(id *)self0;
+ (BOOL)_updateSourcesForGatewayIfNeeded:(id)needed database:(id)database profile:(id)profile error:(id *)error;
+ (BOOL)_validateCodableGateway:(id)gateway error:(id *)error;
+ (BOOL)insertOrUpdateGateway:(id)gateway database:(id)database profile:(id)profile error:(id *)error;
+ (BOOL)insertOrUpdateGateway:(id)gateway profile:(id)profile error:(id *)error;
+ (BOOL)insertOrUpdateGateways:(id)gateways profile:(id)profile error:(id *)error;
+ (BOOL)pruneUnusedGatewaysInDatabase:(id)database error:(id *)error;
+ (BOOL)updateGateways:(id)gateways profile:(id)profile error:(id *)error;
+ (HDClinicalGatewayEntity)gatewayEntityWithExternalID:(id)d database:(id)database error:(id *)error;
+ (id)_codableGatewayFromGateway:(id)gateway error:(id *)error;
+ (id)_codableGatewayWithRow:(HDSQLiteRow *)row error:(id *)error;
+ (id)_codableGatewaysFromGateways:(id)gateways syncIdentity:(id)identity error:(id *)error;
+ (id)_currentCodableMessageVersionForFHIRVersion:(id)version;
+ (id)_gatewayFromCodableGateway:(id)gateway error:(id *)error;
+ (id)_gatewayWithRow:(HDSQLiteRow *)row error:(id *)error;
+ (id)_gatewaysFromCodableGateways:(id)gateways profile:(id)profile transaction:(id)transaction;
+ (id)_predicateForGatewayWithExternalID:(id)d;
+ (id)_predicateForGatewaysWithAccounts;
+ (id)_propertiesForCodable;
+ (id)_propertiesForModel;
+ (id)_propertiesForModelInsert;
+ (id)_propertiesForModelUpdate;
+ (id)_propertiesForSync;
+ (id)existingGatewayEntityWithExternalID:(id)d database:(id)database error:(id *)error;
+ (id)gatewayWithExternalID:(id)d healthDatabase:(id)database error:(id *)error;
+ (id)predicateForGatewaysForLegacySync;
+ (void)_bindSyncAnchor:(id)anchor syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity binder:(HDSQLiteStatementBinder *)binder;
- (BOOL)setNeedsSyncWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (id)gatewayInDatabase:(id)database error:(id *)error;
- (id)newLoginSessionWithEntityInDatabase:(id)database error:(id *)error;
@end

@implementation HDClinicalGatewayEntity

+ (id)_propertiesForModel
{
  v4[0] = HDClinicalGatewayEntityPropertyExternalID;
  v4[1] = HDClinicalGatewayEntityPropertyLastReportedStatus;
  v4[2] = HDClinicalGatewayEntityPropertyRevision;
  v4[3] = HDClinicalGatewayEntityPropertyRawContent;
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

+ (id)_propertiesForSync
{
  propertyForSyncAnchor = [self propertyForSyncAnchor];
  propertyForSyncProvenance = [self propertyForSyncProvenance];
  v7[1] = propertyForSyncProvenance;
  v7[2] = HDClinicalGatewayEntityPropertySyncIdentity;
  v5 = [NSArray arrayWithObjects:v7 count:3];

  return v5;
}

+ (id)_propertiesForModelInsert
{
  v7[0] = HDClinicalGatewayEntityPropertyExternalID;
  v7[1] = HDClinicalGatewayEntityPropertyLastReportedStatus;
  v7[2] = HDClinicalGatewayEntityPropertyRevision;
  v7[3] = HDClinicalGatewayEntityPropertyRawContent;
  v3 = [NSArray arrayWithObjects:v7 count:4];
  _propertiesForSync = [self _propertiesForSync];
  v5 = [v3 arrayByAddingObjectsFromArray:_propertiesForSync];

  return v5;
}

+ (id)_propertiesForModelUpdate
{
  v7[0] = HDClinicalGatewayEntityPropertyLastReportedStatus;
  v7[1] = HDClinicalGatewayEntityPropertyRevision;
  v7[2] = HDClinicalGatewayEntityPropertyRawContent;
  v3 = [NSArray arrayWithObjects:v7 count:3];
  _propertiesForSync = [self _propertiesForSync];
  v5 = [v3 arrayByAddingObjectsFromArray:_propertiesForSync];

  return v5;
}

+ (id)_propertiesForCodable
{
  v4[0] = HDClinicalGatewayEntityPropertyRawContent;
  v4[1] = HDClinicalGatewayEntityPropertySyncIdentity;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)_predicateForGatewayWithExternalID:(id)d
{
  v3 = HDClinicalGatewayEntityPropertyExternalID;
  v4 = _HDSQLiteValueForString();
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

+ (id)_predicateForGatewaysWithAccounts
{
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v3 = [HDSQLiteJoinClause innerJoinClauseFromTable:disambiguatedDatabaseTable toTargetEntity:objc_opt_class() as:0 localReference:HDSQLEntityPropertyPersistentID targetKey:HDClinicalAccountEntityPropertyGatewayID];

  v4 = [NSSet setWithObject:v3];
  v5 = [HDSQLiteJoinPredicate predicateWithJoinClauses:v4];

  return v5;
}

+ (id)predicateForGatewaysForLegacySync
{
  predicateForUSGateways = [self predicateForUSGateways];
  v8[0] = predicateForUSGateways;
  predicateForFHIRDSTU2Gateways = [self predicateForFHIRDSTU2Gateways];
  v8[1] = predicateForFHIRDSTU2Gateways;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  return v6;
}

+ (HDClinicalGatewayEntity)gatewayEntityWithExternalID:(id)d database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [self _predicateForGatewayWithExternalID:d];
  v10 = [self anyInDatabase:databaseCopy predicate:v9 error:error];

  return v10;
}

+ (id)existingGatewayEntityWithExternalID:(id)d database:(id)database error:(id *)error
{
  v9 = 0;
  v6 = [self gatewayEntityWithExternalID:d database:database error:&v9];
  v7 = v9;
  if (!v6)
  {
    [NSError hk_assignError:error code:118 description:@"Failed to fetch gateway entity" underlyingError:v7];
  }

  return v6;
}

+ (id)_gatewayWithRow:(HDSQLiteRow *)row error:(id *)error
{
  if (!row)
  {
    sub_A3438(a2, self);
  }

  v7 = HDSQLiteColumnWithNameAsData();
  if (!v7)
  {
    sub_A34B4(a2, self);
  }

  v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:error];
  if (v8)
  {
    v9 = [[HDClinicalGateway alloc] initWithRawContent:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)newLoginSessionWithEntityInDatabase:(id)database error:(id *)error
{
  v5 = [(HDClinicalGatewayEntity *)self gatewayInDatabase:database error:?];
  if (v5)
  {
    v6 = [HKOAuth2LoginSession newLoginSessionWithGateway:v5 error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)pruneUnusedGatewaysInDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_52AF4;
  v37 = sub_52B04;
  v38 = +[NSMutableArray array];
  v5 = +[HDClinicalGatewayEntity disambiguatedDatabaseTable];
  v6 = +[HDClinicalAccountEntity disambiguatedDatabaseTable];
  v7 = +[HDClinicalAuthorizationSessionEntity disambiguatedDatabaseTable];
  v23 = [NSString stringWithFormat:@"SELECT %@ FROM %@ WHERE ROWID NOT IN (SELECT b.%@ FROM %@ b) AND ROWID NOT IN (SELECT c.%@ FROM %@ c)", HDClinicalGatewayEntityPropertyExternalID, v5, HDClinicalAccountEntityPropertyGatewayID, v6, HDClinicalAccountEntityPropertyGatewayID, v7];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_52B0C;
  v32[3] = &unk_106608;
  v32[4] = &v33;
  if ([databaseCopy executeUncachedSQL:v23 error:error bindingHandler:0 enumerationHandler:v32])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = v34[5];
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v43 count:16];
    if (!v9)
    {
      v11 = 1;
      goto LABEL_26;
    }

    v10 = *v29;
    v11 = 1;
    while (1)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v27 = 0;
        v14 = [HDClinicalGatewayEntity existingGatewayEntityWithExternalID:v13 database:databaseCopy error:&v27];
        v15 = v27;
        v16 = v15;
        if (!v14)
        {
          _HKInitializeLogging();
          v20 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            selfCopy2 = self;
            v41 = 2114;
            v42 = v16;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%{public}@ Error retrieving bad gateway for pruning: %{public}@", buf, 0x16u);
          }

          v18 = v16;
          if (!v18)
          {
            goto LABEL_20;
          }

          if (!error)
          {
LABEL_19:
            _HKLogDroppedError();
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        v26 = v15;
        v17 = [v14 deleteFromDatabase:databaseCopy error:&v26];
        v18 = v26;

        if (v17)
        {
          goto LABEL_21;
        }

        _HKInitializeLogging();
        v19 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          selfCopy2 = self;
          v41 = 2114;
          v42 = v18;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%{public}@ Error retrieving bad gateway for pruning: %{public}@", buf, 0x16u);
        }

        v18 = v18;
        if (v18)
        {
          if (!error)
          {
            goto LABEL_19;
          }

LABEL_18:
          v21 = v18;
          *error = v18;
        }

LABEL_20:

        v11 = 0;
LABEL_21:
      }

      v9 = [v8 countByEnumeratingWithState:&v28 objects:v43 count:16];
      if (!v9)
      {
LABEL_26:

        goto LABEL_27;
      }
    }
  }

  v11 = 0;
LABEL_27:

  _Block_object_dispose(&v33, 8);
  return v11 & 1;
}

- (id)gatewayInDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  _propertiesForModel = [objc_opt_class() _propertiesForModel];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_52AF4;
  v26 = sub_52B04;
  v27 = 0;
  v19 = 0;
  v20[0] = &v19;
  v20[1] = 0x3032000000;
  v20[2] = sub_52AF4;
  v20[3] = sub_52B04;
  v21 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_52E6C;
  v18[3] = &unk_1072D0;
  v18[4] = self;
  v18[5] = &v22;
  v18[6] = &v19;
  v8 = [(HDClinicalGatewayEntity *)self getValuesForProperties:_propertiesForModel database:databaseCopy handler:v18];
  if (!v23[5])
  {
    if ([*(v20[0] + 40) hk_isDatabaseAccessibilityError])
    {
      _HKInitializeLogging();
      v9 = HKLogHealthRecords;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        persistentID = [(HDClinicalGatewayEntity *)self persistentID];
        v11 = *(v20[0] + 40);
        *buf = 138543874;
        selfCopy = self;
        v30 = 2048;
        v31 = persistentID;
        v32 = 2114;
        v33 = v11;
        _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%{public}@ was unable to retrieve gateway entity %lld: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKLogHealthRecords;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_A3530(v20, buf, [(HDClinicalGatewayEntity *)self persistentID], v9);
      }
    }

    v12 = *(v20[0] + 40);
    v13 = v12;
    if (v12)
    {
      if (error)
      {
        v14 = v12;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  if (v8)
  {
    v15 = v23[5];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v22, 8);

  return v16;
}

+ (id)gatewayWithExternalID:(id)d healthDatabase:(id)database error:(id *)error
{
  dCopy = d;
  databaseCopy = database;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_52AF4;
  v22 = sub_52B04;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_53054;
  v14[3] = &unk_1078F0;
  selfCopy = self;
  v10 = dCopy;
  v15 = v10;
  v16 = &v18;
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

+ (BOOL)insertOrUpdateGateway:(id)gateway profile:(id)profile error:(id *)error
{
  gatewayCopy = gateway;
  profileCopy = profile;
  gatewayCopy2 = gateway;
  v10 = [NSArray arrayWithObjects:&gatewayCopy count:1];

  LOBYTE(error) = [self insertOrUpdateGateways:v10 profile:profileCopy error:{error, gatewayCopy}];
  return error;
}

+ (BOOL)_updateSourcesForGatewayIfNeeded:(id)needed database:(id)database profile:(id)profile error:(id *)error
{
  neededCopy = needed;
  databaseCopy = database;
  profileCopy = profile;
  externalID = [neededCopy externalID];
  v22 = 0;
  v14 = [HDClinicalAccountEntity accountEntityForGatewayWithExternalID:externalID database:databaseCopy error:&v22];
  v15 = v22;

  if (v14)
  {
    v16 = [v14 UUIDForProperty:HDClinicalAccountEntityPropertyIdentifier database:databaseCopy];
    if (v16)
    {
      externalID2 = [neededCopy externalID];
      title = [neededCopy title];
      v19 = [HDClinicalAccountEntity updateSourcesForAccountWithIdentifier:v16 wasAccountInsert:0 clinicalExternalID:externalID2 externalTitle:title profile:profileCopy error:error];
    }

    else
    {
      externalID2 = NSStringFromClass(self);
      +[NSError hk_assignError:code:format:](NSError, "hk_assignError:code:format:", error, 100, @"%@ failed to retrieve account identifier for account entity with ROWID %lld, cannot update sources", externalID2, [v14 persistentID]);
      v19 = 0;
    }
  }

  else
  {
    v16 = v15;
    v19 = v16 == 0;
    if (v16)
    {
      if (error)
      {
        v20 = v16;
        v19 = 0;
        *error = v16;
      }

      else
      {
        _HKLogDroppedError();
        v19 = 0;
      }
    }
  }

  return v19;
}

+ (BOOL)insertOrUpdateGateways:(id)gateways profile:(id)profile error:(id *)error
{
  gatewaysCopy = gateways;
  profileCopy = profile;
  database = [profileCopy database];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_534E0;
  v18[3] = &unk_106500;
  selfCopy = self;
  v19 = gatewaysCopy;
  v20 = profileCopy;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_53614;
  v14[3] = &unk_106800;
  v16 = v20;
  selfCopy2 = self;
  v15 = v19;
  v11 = v20;
  v12 = v19;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v18 inaccessibilityHandler:v14];

  return error;
}

+ (BOOL)updateGateways:(id)gateways profile:(id)profile error:(id *)error
{
  gatewaysCopy = gateways;
  profileCopy = profile;
  database = [profileCopy database];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_53830;
  v18[3] = &unk_106500;
  selfCopy = self;
  v19 = gatewaysCopy;
  v20 = profileCopy;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_53984;
  v14[3] = &unk_106800;
  v16 = v20;
  selfCopy2 = self;
  v15 = v19;
  v11 = v20;
  v12 = v19;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v18 inaccessibilityHandler:v14];

  return error;
}

+ (BOOL)insertOrUpdateGateway:(id)gateway database:(id)database profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  databaseCopy = database;
  gatewayCopy = gateway;
  LOBYTE(error) = [self _insertOrUpdateGateway:gatewayCopy syncProvenance:0 syncIdentity:objc_msgSend(profileCopy database:"currentSyncIdentityPersistentID") profile:databaseCopy error:{profileCopy, error}];

  return error;
}

+ (BOOL)_insertOrUpdateGateway:(id)gateway syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity database:(id)database profile:(id)profile error:(id *)error insertionBlock:(id)block
{
  gatewayCopy = gateway;
  databaseCopy = database;
  profileCopy = profile;
  blockCopy = block;
  externalID = [gatewayCopy externalID];
  v27 = 0;
  v19 = [self gatewayEntityWithExternalID:externalID database:databaseCopy error:&v27];
  v20 = v27;

  if (v20)
  {
    if (error)
    {
      v21 = v20;
      v22 = 0;
      *error = v20;
    }

    else
    {
      _HKLogDroppedError();
      v22 = 0;
    }
  }

  else
  {
    v23 = [HDClinicalEntitySyncAnchor nextClinicalGatewaySyncAnchorWithProfile:profileCopy error:error];
    if (v23)
    {
      if (v19)
      {
        v24 = [self _updateGatewayEntity:v19 withGateway:gatewayCopy syncAnchor:v23 syncProvenance:provenance syncIdentity:identity database:databaseCopy profile:profileCopy error:error];
      }

      else
      {
        v24 = blockCopy[2](blockCopy, databaseCopy, provenance, v23, error);
      }

      v22 = v24;
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

+ (BOOL)_insertOrUpdateGateway:(id)gateway syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity database:(id)database profile:(id)profile error:(id *)error
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_53D94;
  v16[3] = &unk_107958;
  gatewayCopy = gateway;
  selfCopy = self;
  provenanceCopy = provenance;
  identityCopy = identity;
  v14 = gatewayCopy;
  LOBYTE(error) = [self _insertOrUpdateGateway:v14 syncProvenance:provenance syncIdentity:identity database:database profile:profile error:error insertionBlock:v16];

  return error;
}

+ (BOOL)_insertGateway:(id)gateway syncAnchor:(id)anchor syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity database:(id)database error:(id *)error
{
  gatewayCopy = gateway;
  anchorCopy = anchor;
  databaseCopy = database;
  v17 = [gatewayCopy createRawContentWithError:error];
  if (v17)
  {
    _propertiesForModelInsert = [self _propertiesForModelInsert];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_53F14;
    v22[3] = &unk_107980;
    v23 = gatewayCopy;
    v24 = v17;
    selfCopy = self;
    v25 = anchorCopy;
    provenanceCopy = provenance;
    identityCopy = identity;
    v19 = [self insertOrReplaceEntity:0 database:databaseCopy properties:_propertiesForModelInsert error:error bindingHandler:v22];

    v20 = v19 != 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (BOOL)_updateGatewayEntity:(id)entity withGateway:(id)gateway syncAnchor:(id)anchor syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity database:(id)database profile:(id)profile error:(id *)self0
{
  entityCopy = entity;
  gatewayCopy = gateway;
  anchorCopy = anchor;
  databaseCopy = database;
  profileCopy = profile;
  v20 = [entityCopy numberForProperty:HDClinicalGatewayEntityPropertyRevision database:databaseCopy];
  v21 = v20;
  if (v20)
  {
    longLongValue = [v20 longLongValue];
    if (longLongValue >= [gatewayCopy revision])
    {
      _HKInitializeLogging();
      v31 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
      {
        v33 = v31;
        *buf = 138544387;
        v48 = objc_opt_class();
        v49 = 2114;
        v50 = objc_opt_class();
        v51 = 2050;
        v52 = gatewayCopy;
        v53 = 2049;
        longLongValue2 = [v21 longLongValue];
        v55 = 2049;
        revision = [gatewayCopy revision];
        _os_log_debug_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%{public}@ not updating <%{public}@:%{public}p> existing revision %{private}lld is at least as new as incoming revision %{private}lld", buf, 0x34u);
      }

      v26 = entityCopy != 0;
    }

    else
    {
      v23 = [gatewayCopy createRawContentWithError:error];
      if (v23)
      {
        identityCopy = identity;
        v24 = v23;
        _propertiesForModelUpdate = [self _propertiesForModelUpdate];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_54360;
        v40[3] = &unk_107980;
        v36 = profileCopy;
        v25 = gatewayCopy;
        v41 = v25;
        v42 = v24;
        selfCopy = self;
        v37 = anchorCopy;
        v43 = anchorCopy;
        provenanceCopy = provenance;
        v46 = identityCopy;
        v26 = [entityCopy updateProperties:_propertiesForModelUpdate database:databaseCopy error:error bindingHandler:v40];

        v39 = 0;
        v27 = v25;
        profileCopy = v36;
        v28 = [self _updateSourcesForGatewayIfNeeded:v27 database:databaseCopy profile:v36 error:&v39];
        v29 = v39;
        if ((v28 & 1) == 0)
        {
          _HKInitializeLogging();
          v30 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            sub_A3590(self, v29, v30);
          }
        }

        anchorCopy = v37;
        v23 = v24;
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    +[NSError hk_assignError:code:format:](NSError, "hk_assignError:code:format:", error, 100, @"Unable to retrieve existing revision for gateway at row %lld", [entityCopy persistentID]);
    v26 = 0;
  }

  return v26;
}

+ (void)_bindSyncAnchor:(id)anchor syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity binder:(HDSQLiteStatementBinder *)binder
{
  anchorCopy = anchor;
  propertyForSyncAnchor = [self propertyForSyncAnchor];
  HDSQLiteBindNumberToProperty();

  propertyForSyncProvenance = [self propertyForSyncProvenance];
  HDSQLiteBindInt64ToProperty();

  HDSQLiteBindInt64ToProperty();
}

+ (BOOL)_insertCodableGateways:(id)gateways syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error
{
  gatewaysCopy = gateways;
  profileCopy = profile;
  database = [profileCopy database];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_54624;
  v20[3] = &unk_1067D8;
  selfCopy = self;
  v21 = gatewaysCopy;
  v22 = profileCopy;
  provenanceCopy = provenance;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_547D8;
  v16[3] = &unk_106800;
  v18 = v22;
  provenanceCopy2 = provenance;
  v17 = v21;
  v13 = v22;
  v14 = v21;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v20 inaccessibilityHandler:v16];

  return error;
}

+ (BOOL)_updateCodableGateways:(id)gateways syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error
{
  gatewaysCopy = gateways;
  profileCopy = profile;
  database = [profileCopy database];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_549B4;
  v20[3] = &unk_1067D8;
  selfCopy = self;
  v21 = gatewaysCopy;
  v22 = profileCopy;
  provenanceCopy = provenance;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_54B60;
  v16[3] = &unk_106800;
  v18 = v22;
  provenanceCopy2 = provenance;
  v17 = v21;
  v13 = v22;
  v14 = v21;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v20 inaccessibilityHandler:v16];

  return error;
}

- (BOOL)setNeedsSyncWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  profileCopy = profile;
  protectedDatabase = [transaction protectedDatabase];
  v10 = [HDClinicalEntitySyncAnchor nextClinicalGatewaySyncAnchorWithProfile:profileCopy error:error];
  if (v10)
  {
    _propertiesForSync = [objc_opt_class() _propertiesForSync];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_54D00;
    v14[3] = &unk_1079A8;
    v14[4] = self;
    v15 = v10;
    v16 = profileCopy;
    v12 = [(HDClinicalGatewayEntity *)self updateProperties:_propertiesForSync database:protectedDatabase error:error bindingHandler:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_currentCodableMessageVersionForFHIRVersion:(id)version
{
  versionCopy = version;
  v4 = objc_alloc_init(HDCodableMessageVersion);
  [v4 setEntityVersion:1];
  v5 = [versionCopy isEqualToString:@"1.0.2"];

  [v4 setCompatibilityVersion:v5 ^ 1];

  return v4;
}

+ (id)_codableGatewayFromGateway:(id)gateway error:(id *)error
{
  gatewayCopy = gateway;
  v7 = objc_alloc_init(HDCodableClinicalGateway);
  v8 = [gatewayCopy createRawContentWithError:error];
  [v7 setRawContent:v8];

  fHIRVersion = [gatewayCopy FHIRVersion];

  stringRepresentation = [fHIRVersion stringRepresentation];
  v11 = [self _currentCodableMessageVersionForFHIRVersion:stringRepresentation];
  [v7 setMessageVersion:v11];

  if ([self _validateCodableGateway:v7 error:error])
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_codableGatewaysFromGateways:(id)gateways syncIdentity:(id)identity error:(id *)error
{
  gatewaysCopy = gateways;
  identityCopy = identity;
  v10 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = gatewaysCopy;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [self _codableGatewayFromGateway:*(*(&v21 + 1) + 8 * i) error:{error, v21}];
        if (!v16)
        {

          v19 = 0;
          goto LABEL_11;
        }

        v17 = v16;
        codableSyncIdentity = [identityCopy codableSyncIdentity];
        [v17 setSyncIdentity:codableSyncIdentity];

        [v10 addObject:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = v10;
LABEL_11:

  return v19;
}

+ (id)_gatewayFromCodableGateway:(id)gateway error:(id *)error
{
  gatewayCopy = gateway;
  if ([self _validateCodableGateway:gatewayCopy error:error])
  {
    rawContent = [gatewayCopy rawContent];
    v8 = [NSJSONSerialization JSONObjectWithData:rawContent options:0 error:error];

    if (v8 && [HDClinicalGateway validateContent:v8 error:error])
    {
      v9 = [[HDClinicalGateway alloc] initWithRawContent:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_gatewaysFromCodableGateways:(id)gateways profile:(id)profile transaction:(id)transaction
{
  gatewaysCopy = gateways;
  profileCopy = profile;
  selfCopy = self;
  v11 = profileCopy;
  transactionCopy = transaction;
  v40 = objc_alloc_init(NSMutableArray);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = gatewaysCopy;
  v12 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v46;
    *&v13 = 138543362;
    v34 = v13;
    v35 = v11;
    selfCopy2 = self;
    v38 = *v46;
    do
    {
      v16 = 0;
      v39 = v14;
      do
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v45 + 1) + 8 * v16);
        v44 = 0;
        v18 = [selfCopy _gatewayFromCodableGateway:v17 error:{&v44, v34}];
        v19 = v44;
        if (v18)
        {
          syncIdentityManager = [v11 syncIdentityManager];
          legacySyncIdentity = [syncIdentityManager legacySyncIdentity];

          if (![v17 hasSyncIdentity])
          {
            goto LABEL_11;
          }

          syncIdentity = [v17 syncIdentity];
          v43 = 0;
          v23 = [HDSyncIdentity syncIdentityWithCodable:syncIdentity error:&v43];
          v24 = v43;

          if (v23)
          {
            syncIdentityManager2 = [v11 syncIdentityManager];
            v42 = v24;
            v26 = [syncIdentityManager2 concreteIdentityForIdentity:v23 shouldCreate:1 transaction:transactionCopy error:&v42];
            v27 = v42;

            if (v26)
            {

              legacySyncIdentity = v26;
              v11 = v35;
              selfCopy = selfCopy2;
              v15 = v38;
              v14 = v39;
LABEL_11:
              [v18 setSyncIdentity:legacySyncIdentity];
              [v40 addObject:v18];
LABEL_20:

              goto LABEL_21;
            }

            _HKInitializeLogging();
            v32 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
            {
              *buf = v34;
              v50 = v27;
              _os_log_fault_impl(&dword_0, v32, OS_LOG_TYPE_FAULT, "HDClinicalGatewayEntity ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
            }

            legacySyncIdentity = 0;
            v24 = v27;
            v11 = v35;
            selfCopy = selfCopy2;
          }

          else
          {
            _HKInitializeLogging();
            v31 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
            {
              *buf = v34;
              v50 = v24;
              _os_log_fault_impl(&dword_0, v31, OS_LOG_TYPE_FAULT, "HDClinicalGatewayEntity SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
            }
          }

          v15 = v38;

          v14 = v39;
          goto LABEL_20;
        }

        _HKInitializeLogging();
        v28 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          v29 = v28;
          v30 = HKSensitiveLogItem();
          *buf = 138543874;
          v50 = selfCopy;
          v51 = 2112;
          v52 = v30;
          v53 = 2114;
          v54 = v19;
          _os_log_error_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%{public}@ Failed to deserialize codable gateway %@: %{public}@", buf, 0x20u);
        }

LABEL_21:

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v14);
  }

  return v40;
}

+ (id)_codableGatewayWithRow:(HDSQLiteRow *)row error:(id *)error
{
  v6 = objc_alloc_init(HDCodableClinicalGateway);
  v7 = HDSQLiteColumnWithNameAsData();
  [v6 setRawContent:v7];

  fHIRVersionString = [v6 FHIRVersionString];
  v9 = [self _currentCodableMessageVersionForFHIRVersion:fHIRVersionString];
  [v6 setMessageVersion:v9];

  if ([self _validateCodableGateway:v6 error:error])
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_validateCodableGateway:(id)gateway error:(id *)error
{
  gatewayCopy = gateway;
  if ([gatewayCopy hasMessageVersion])
  {
    messageVersion = [gatewayCopy messageVersion];
    compatibilityVersion = [messageVersion compatibilityVersion];

    if (compatibilityVersion > 1)
    {
      v8 = @"Codable gateway compatibilty version is higher than what we support";
LABEL_7:
      [NSError hk_assignError:error code:3 description:v8];
      v9 = 0;
      goto LABEL_8;
    }
  }

  if (([gatewayCopy hasRawContent] & 1) == 0)
  {
    v8 = @"Codable gateway missing raw content";
    goto LABEL_7;
  }

  v9 = 1;
LABEL_8:

  return v9;
}

@end