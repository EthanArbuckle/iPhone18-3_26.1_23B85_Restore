@interface HDClinicalGatewayEntity
+ (BOOL)_insertCodableGateways:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)_insertGateway:(id)a3 syncAnchor:(id)a4 syncProvenance:(int64_t)a5 syncIdentity:(int64_t)a6 database:(id)a7 error:(id *)a8;
+ (BOOL)_insertOrUpdateGateway:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(int64_t)a5 database:(id)a6 profile:(id)a7 error:(id *)a8;
+ (BOOL)_insertOrUpdateGateway:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(int64_t)a5 database:(id)a6 profile:(id)a7 error:(id *)a8 insertionBlock:(id)a9;
+ (BOOL)_updateCodableGateways:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)_updateGatewayEntity:(id)a3 withGateway:(id)a4 syncAnchor:(id)a5 syncProvenance:(int64_t)a6 syncIdentity:(int64_t)a7 database:(id)a8 profile:(id)a9 error:(id *)a10;
+ (BOOL)_updateSourcesForGatewayIfNeeded:(id)a3 database:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)_validateCodableGateway:(id)a3 error:(id *)a4;
+ (BOOL)insertOrUpdateGateway:(id)a3 database:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)insertOrUpdateGateway:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)insertOrUpdateGateways:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)pruneUnusedGatewaysInDatabase:(id)a3 error:(id *)a4;
+ (BOOL)updateGateways:(id)a3 profile:(id)a4 error:(id *)a5;
+ (HDClinicalGatewayEntity)gatewayEntityWithExternalID:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)_codableGatewayFromGateway:(id)a3 error:(id *)a4;
+ (id)_codableGatewayWithRow:(HDSQLiteRow *)a3 error:(id *)a4;
+ (id)_codableGatewaysFromGateways:(id)a3 syncIdentity:(id)a4 error:(id *)a5;
+ (id)_currentCodableMessageVersionForFHIRVersion:(id)a3;
+ (id)_gatewayFromCodableGateway:(id)a3 error:(id *)a4;
+ (id)_gatewayWithRow:(HDSQLiteRow *)a3 error:(id *)a4;
+ (id)_gatewaysFromCodableGateways:(id)a3 profile:(id)a4 transaction:(id)a5;
+ (id)_predicateForGatewayWithExternalID:(id)a3;
+ (id)_predicateForGatewaysWithAccounts;
+ (id)_propertiesForCodable;
+ (id)_propertiesForModel;
+ (id)_propertiesForModelInsert;
+ (id)_propertiesForModelUpdate;
+ (id)_propertiesForSync;
+ (id)existingGatewayEntityWithExternalID:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)gatewayWithExternalID:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
+ (id)predicateForGatewaysForLegacySync;
+ (void)_bindSyncAnchor:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(int64_t)a5 binder:(HDSQLiteStatementBinder *)a6;
- (BOOL)setNeedsSyncWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (id)gatewayInDatabase:(id)a3 error:(id *)a4;
- (id)newLoginSessionWithEntityInDatabase:(id)a3 error:(id *)a4;
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
  v3 = [a1 propertyForSyncAnchor];
  v4 = [a1 propertyForSyncProvenance];
  v7[1] = v4;
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
  v4 = [a1 _propertiesForSync];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

+ (id)_propertiesForModelUpdate
{
  v7[0] = HDClinicalGatewayEntityPropertyLastReportedStatus;
  v7[1] = HDClinicalGatewayEntityPropertyRevision;
  v7[2] = HDClinicalGatewayEntityPropertyRawContent;
  v3 = [NSArray arrayWithObjects:v7 count:3];
  v4 = [a1 _propertiesForSync];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

+ (id)_propertiesForCodable
{
  v4[0] = HDClinicalGatewayEntityPropertyRawContent;
  v4[1] = HDClinicalGatewayEntityPropertySyncIdentity;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)_predicateForGatewayWithExternalID:(id)a3
{
  v3 = HDClinicalGatewayEntityPropertyExternalID;
  v4 = _HDSQLiteValueForString();
  v5 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

+ (id)_predicateForGatewaysWithAccounts
{
  v2 = [a1 disambiguatedDatabaseTable];
  v3 = [HDSQLiteJoinClause innerJoinClauseFromTable:v2 toTargetEntity:objc_opt_class() as:0 localReference:HDSQLEntityPropertyPersistentID targetKey:HDClinicalAccountEntityPropertyGatewayID];

  v4 = [NSSet setWithObject:v3];
  v5 = [HDSQLiteJoinPredicate predicateWithJoinClauses:v4];

  return v5;
}

+ (id)predicateForGatewaysForLegacySync
{
  v3 = [a1 predicateForUSGateways];
  v8[0] = v3;
  v4 = [a1 predicateForFHIRDSTU2Gateways];
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  return v6;
}

+ (HDClinicalGatewayEntity)gatewayEntityWithExternalID:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 _predicateForGatewayWithExternalID:a3];
  v10 = [a1 anyInDatabase:v8 predicate:v9 error:a5];

  return v10;
}

+ (id)existingGatewayEntityWithExternalID:(id)a3 database:(id)a4 error:(id *)a5
{
  v9 = 0;
  v6 = [a1 gatewayEntityWithExternalID:a3 database:a4 error:&v9];
  v7 = v9;
  if (!v6)
  {
    [NSError hk_assignError:a5 code:118 description:@"Failed to fetch gateway entity" underlyingError:v7];
  }

  return v6;
}

+ (id)_gatewayWithRow:(HDSQLiteRow *)a3 error:(id *)a4
{
  if (!a3)
  {
    sub_A3438(a2, a1);
  }

  v7 = HDSQLiteColumnWithNameAsData();
  if (!v7)
  {
    sub_A34B4(a2, a1);
  }

  v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:a4];
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

- (id)newLoginSessionWithEntityInDatabase:(id)a3 error:(id *)a4
{
  v5 = [(HDClinicalGatewayEntity *)self gatewayInDatabase:a3 error:?];
  if (v5)
  {
    v6 = [HKOAuth2LoginSession newLoginSessionWithGateway:v5 error:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)pruneUnusedGatewaysInDatabase:(id)a3 error:(id *)a4
{
  v4 = a3;
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
  if ([v4 executeUncachedSQL:v23 error:a4 bindingHandler:0 enumerationHandler:v32])
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
        v14 = [HDClinicalGatewayEntity existingGatewayEntityWithExternalID:v13 database:v4 error:&v27];
        v15 = v27;
        v16 = v15;
        if (!v14)
        {
          _HKInitializeLogging();
          v20 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v40 = a1;
            v41 = 2114;
            v42 = v16;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%{public}@ Error retrieving bad gateway for pruning: %{public}@", buf, 0x16u);
          }

          v18 = v16;
          if (!v18)
          {
            goto LABEL_20;
          }

          if (!a4)
          {
LABEL_19:
            _HKLogDroppedError();
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        v26 = v15;
        v17 = [v14 deleteFromDatabase:v4 error:&v26];
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
          v40 = a1;
          v41 = 2114;
          v42 = v18;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%{public}@ Error retrieving bad gateway for pruning: %{public}@", buf, 0x16u);
        }

        v18 = v18;
        if (v18)
        {
          if (!a4)
          {
            goto LABEL_19;
          }

LABEL_18:
          v21 = v18;
          *a4 = v18;
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

- (id)gatewayInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() _propertiesForModel];
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
  v8 = [(HDClinicalGatewayEntity *)self getValuesForProperties:v7 database:v6 handler:v18];
  if (!v23[5])
  {
    if ([*(v20[0] + 40) hk_isDatabaseAccessibilityError])
    {
      _HKInitializeLogging();
      v9 = HKLogHealthRecords;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [(HDClinicalGatewayEntity *)self persistentID];
        v11 = *(v20[0] + 40);
        *buf = 138543874;
        v29 = self;
        v30 = 2048;
        v31 = v10;
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
      if (a4)
      {
        v14 = v12;
        *a4 = v13;
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

+ (id)gatewayWithExternalID:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v17 = a1;
  v10 = v8;
  v15 = v10;
  v16 = &v18;
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

+ (BOOL)insertOrUpdateGateway:(id)a3 profile:(id)a4 error:(id *)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a3;
  v10 = [NSArray arrayWithObjects:&v12 count:1];

  LOBYTE(a5) = [a1 insertOrUpdateGateways:v10 profile:v8 error:{a5, v12}];
  return a5;
}

+ (BOOL)_updateSourcesForGatewayIfNeeded:(id)a3 database:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 externalID];
  v22 = 0;
  v14 = [HDClinicalAccountEntity accountEntityForGatewayWithExternalID:v13 database:v11 error:&v22];
  v15 = v22;

  if (v14)
  {
    v16 = [v14 UUIDForProperty:HDClinicalAccountEntityPropertyIdentifier database:v11];
    if (v16)
    {
      v17 = [v10 externalID];
      v18 = [v10 title];
      v19 = [HDClinicalAccountEntity updateSourcesForAccountWithIdentifier:v16 wasAccountInsert:0 clinicalExternalID:v17 externalTitle:v18 profile:v12 error:a6];
    }

    else
    {
      v17 = NSStringFromClass(a1);
      +[NSError hk_assignError:code:format:](NSError, "hk_assignError:code:format:", a6, 100, @"%@ failed to retrieve account identifier for account entity with ROWID %lld, cannot update sources", v17, [v14 persistentID]);
      v19 = 0;
    }
  }

  else
  {
    v16 = v15;
    v19 = v16 == 0;
    if (v16)
    {
      if (a6)
      {
        v20 = v16;
        v19 = 0;
        *a6 = v16;
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

+ (BOOL)insertOrUpdateGateways:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 database];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_534E0;
  v18[3] = &unk_106500;
  v21 = a1;
  v19 = v8;
  v20 = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_53614;
  v14[3] = &unk_106800;
  v16 = v20;
  v17 = a1;
  v15 = v19;
  v11 = v20;
  v12 = v19;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:v10 error:a5 block:v18 inaccessibilityHandler:v14];

  return a5;
}

+ (BOOL)updateGateways:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 database];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_53830;
  v18[3] = &unk_106500;
  v21 = a1;
  v19 = v8;
  v20 = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_53984;
  v14[3] = &unk_106800;
  v16 = v20;
  v17 = a1;
  v15 = v19;
  v11 = v20;
  v12 = v19;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:v10 error:a5 block:v18 inaccessibilityHandler:v14];

  return a5;
}

+ (BOOL)insertOrUpdateGateway:(id)a3 database:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  LOBYTE(a6) = [a1 _insertOrUpdateGateway:v12 syncProvenance:0 syncIdentity:objc_msgSend(v10 database:"currentSyncIdentityPersistentID") profile:v11 error:{v10, a6}];

  return a6;
}

+ (BOOL)_insertOrUpdateGateway:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(int64_t)a5 database:(id)a6 profile:(id)a7 error:(id *)a8 insertionBlock:(id)a9
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v18 = [v14 externalID];
  v27 = 0;
  v19 = [a1 gatewayEntityWithExternalID:v18 database:v15 error:&v27];
  v20 = v27;

  if (v20)
  {
    if (a8)
    {
      v21 = v20;
      v22 = 0;
      *a8 = v20;
    }

    else
    {
      _HKLogDroppedError();
      v22 = 0;
    }
  }

  else
  {
    v23 = [HDClinicalEntitySyncAnchor nextClinicalGatewaySyncAnchorWithProfile:v16 error:a8];
    if (v23)
    {
      if (v19)
      {
        v24 = [a1 _updateGatewayEntity:v19 withGateway:v14 syncAnchor:v23 syncProvenance:a4 syncIdentity:a5 database:v15 profile:v16 error:a8];
      }

      else
      {
        v24 = v17[2](v17, v15, a4, v23, a8);
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

+ (BOOL)_insertOrUpdateGateway:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(int64_t)a5 database:(id)a6 profile:(id)a7 error:(id *)a8
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_53D94;
  v16[3] = &unk_107958;
  v17 = a3;
  v18 = a1;
  v19 = a4;
  v20 = a5;
  v14 = v17;
  LOBYTE(a8) = [a1 _insertOrUpdateGateway:v14 syncProvenance:a4 syncIdentity:a5 database:a6 profile:a7 error:a8 insertionBlock:v16];

  return a8;
}

+ (BOOL)_insertGateway:(id)a3 syncAnchor:(id)a4 syncProvenance:(int64_t)a5 syncIdentity:(int64_t)a6 database:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = [v14 createRawContentWithError:a8];
  if (v17)
  {
    v18 = [a1 _propertiesForModelInsert];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_53F14;
    v22[3] = &unk_107980;
    v23 = v14;
    v24 = v17;
    v26 = a1;
    v25 = v15;
    v27 = a5;
    v28 = a6;
    v19 = [a1 insertOrReplaceEntity:0 database:v16 properties:v18 error:a8 bindingHandler:v22];

    v20 = v19 != 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (BOOL)_updateGatewayEntity:(id)a3 withGateway:(id)a4 syncAnchor:(id)a5 syncProvenance:(int64_t)a6 syncIdentity:(int64_t)a7 database:(id)a8 profile:(id)a9 error:(id *)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v20 = [v15 numberForProperty:HDClinicalGatewayEntityPropertyRevision database:v18];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 longLongValue];
    if (v22 >= [v16 revision])
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
        v52 = v16;
        v53 = 2049;
        v54 = [v21 longLongValue];
        v55 = 2049;
        v56 = [v16 revision];
        _os_log_debug_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%{public}@ not updating <%{public}@:%{public}p> existing revision %{private}lld is at least as new as incoming revision %{private}lld", buf, 0x34u);
      }

      v26 = v15 != 0;
    }

    else
    {
      v23 = [v16 createRawContentWithError:a10];
      if (v23)
      {
        v34 = a7;
        v24 = v23;
        v35 = [a1 _propertiesForModelUpdate];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_54360;
        v40[3] = &unk_107980;
        v36 = v19;
        v25 = v16;
        v41 = v25;
        v42 = v24;
        v44 = a1;
        v37 = v17;
        v43 = v17;
        v45 = a6;
        v46 = v34;
        v26 = [v15 updateProperties:v35 database:v18 error:a10 bindingHandler:v40];

        v39 = 0;
        v27 = v25;
        v19 = v36;
        v28 = [a1 _updateSourcesForGatewayIfNeeded:v27 database:v18 profile:v36 error:&v39];
        v29 = v39;
        if ((v28 & 1) == 0)
        {
          _HKInitializeLogging();
          v30 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            sub_A3590(a1, v29, v30);
          }
        }

        v17 = v37;
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
    +[NSError hk_assignError:code:format:](NSError, "hk_assignError:code:format:", a10, 100, @"Unable to retrieve existing revision for gateway at row %lld", [v15 persistentID]);
    v26 = 0;
  }

  return v26;
}

+ (void)_bindSyncAnchor:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(int64_t)a5 binder:(HDSQLiteStatementBinder *)a6
{
  v7 = a3;
  v8 = [a1 propertyForSyncAnchor];
  HDSQLiteBindNumberToProperty();

  v9 = [a1 propertyForSyncProvenance];
  HDSQLiteBindInt64ToProperty();

  HDSQLiteBindInt64ToProperty();
}

+ (BOOL)_insertCodableGateways:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [v11 database];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_54624;
  v20[3] = &unk_1067D8;
  v23 = a1;
  v21 = v10;
  v22 = v11;
  v24 = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_547D8;
  v16[3] = &unk_106800;
  v18 = v22;
  v19 = a4;
  v17 = v21;
  v13 = v22;
  v14 = v21;
  LOBYTE(a6) = [a1 performWriteTransactionWithHealthDatabase:v12 error:a6 block:v20 inaccessibilityHandler:v16];

  return a6;
}

+ (BOOL)_updateCodableGateways:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [v11 database];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_549B4;
  v20[3] = &unk_1067D8;
  v23 = a1;
  v21 = v10;
  v22 = v11;
  v24 = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_54B60;
  v16[3] = &unk_106800;
  v18 = v22;
  v19 = a4;
  v17 = v21;
  v13 = v22;
  v14 = v21;
  LOBYTE(a6) = [a1 performWriteTransactionWithHealthDatabase:v12 error:a6 block:v20 inaccessibilityHandler:v16];

  return a6;
}

- (BOOL)setNeedsSyncWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 protectedDatabase];
  v10 = [HDClinicalEntitySyncAnchor nextClinicalGatewaySyncAnchorWithProfile:v8 error:a5];
  if (v10)
  {
    v11 = [objc_opt_class() _propertiesForSync];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_54D00;
    v14[3] = &unk_1079A8;
    v14[4] = self;
    v15 = v10;
    v16 = v8;
    v12 = [(HDClinicalGatewayEntity *)self updateProperties:v11 database:v9 error:a5 bindingHandler:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_currentCodableMessageVersionForFHIRVersion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HDCodableMessageVersion);
  [v4 setEntityVersion:1];
  v5 = [v3 isEqualToString:@"1.0.2"];

  [v4 setCompatibilityVersion:v5 ^ 1];

  return v4;
}

+ (id)_codableGatewayFromGateway:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(HDCodableClinicalGateway);
  v8 = [v6 createRawContentWithError:a4];
  [v7 setRawContent:v8];

  v9 = [v6 FHIRVersion];

  v10 = [v9 stringRepresentation];
  v11 = [a1 _currentCodableMessageVersionForFHIRVersion:v10];
  [v7 setMessageVersion:v11];

  if ([a1 _validateCodableGateway:v7 error:a4])
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_codableGatewaysFromGateways:(id)a3 syncIdentity:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v8;
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

        v16 = [a1 _codableGatewayFromGateway:*(*(&v21 + 1) + 8 * i) error:{a5, v21}];
        if (!v16)
        {

          v19 = 0;
          goto LABEL_11;
        }

        v17 = v16;
        v18 = [v9 codableSyncIdentity];
        [v17 setSyncIdentity:v18];

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

+ (id)_gatewayFromCodableGateway:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([a1 _validateCodableGateway:v6 error:a4])
  {
    v7 = [v6 rawContent];
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:a4];

    if (v8 && [HDClinicalGateway validateContent:v8 error:a4])
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

+ (id)_gatewaysFromCodableGateways:(id)a3 profile:(id)a4 transaction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = v9;
  v37 = a5;
  v40 = objc_alloc_init(NSMutableArray);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v8;
  v12 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v46;
    *&v13 = 138543362;
    v34 = v13;
    v35 = v11;
    v36 = a1;
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
        v18 = [v10 _gatewayFromCodableGateway:v17 error:{&v44, v34}];
        v19 = v44;
        if (v18)
        {
          v20 = [v11 syncIdentityManager];
          v21 = [v20 legacySyncIdentity];

          if (![v17 hasSyncIdentity])
          {
            goto LABEL_11;
          }

          v22 = [v17 syncIdentity];
          v43 = 0;
          v23 = [HDSyncIdentity syncIdentityWithCodable:v22 error:&v43];
          v24 = v43;

          if (v23)
          {
            v25 = [v11 syncIdentityManager];
            v42 = v24;
            v26 = [v25 concreteIdentityForIdentity:v23 shouldCreate:1 transaction:v37 error:&v42];
            v27 = v42;

            if (v26)
            {

              v21 = v26;
              v11 = v35;
              v10 = v36;
              v15 = v38;
              v14 = v39;
LABEL_11:
              [v18 setSyncIdentity:v21];
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

            v21 = 0;
            v24 = v27;
            v11 = v35;
            v10 = v36;
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
          v50 = v10;
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

+ (id)_codableGatewayWithRow:(HDSQLiteRow *)a3 error:(id *)a4
{
  v6 = objc_alloc_init(HDCodableClinicalGateway);
  v7 = HDSQLiteColumnWithNameAsData();
  [v6 setRawContent:v7];

  v8 = [v6 FHIRVersionString];
  v9 = [a1 _currentCodableMessageVersionForFHIRVersion:v8];
  [v6 setMessageVersion:v9];

  if ([a1 _validateCodableGateway:v6 error:a4])
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_validateCodableGateway:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 hasMessageVersion])
  {
    v6 = [v5 messageVersion];
    v7 = [v6 compatibilityVersion];

    if (v7 > 1)
    {
      v8 = @"Codable gateway compatibilty version is higher than what we support";
LABEL_7:
      [NSError hk_assignError:a4 code:3 description:v8];
      v9 = 0;
      goto LABEL_8;
    }
  }

  if (([v5 hasRawContent] & 1) == 0)
  {
    v8 = @"Codable gateway missing raw content";
    goto LABEL_7;
  }

  v9 = 1;
LABEL_8:

  return v9;
}

@end