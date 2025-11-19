@interface HDFHIRCredentialEntity
+ (BOOL)_insertCodableCredentialFromSync:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)_shouldReplaceCurrentCredential:(id)a3 withIncomingCredential:(id)a4 account:(id)a5 profile:(id)a6 recordEvent:(id *)a7 error:(id *)a8;
+ (BOOL)insertCodableCredentialsFromSync:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (id)_credentialWithRow:(HDSQLiteRow *)a3;
+ (id)_insertCodableCredential:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(int64_t)a5 transaction:(id)a6 error:(id *)a7;
+ (id)_insertCredential:(id)a3 receivedDate:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (id)allProperties;
+ (id)codableCredentialWithAccountSyncIdentifier:(id)a3 persistentID:(id)a4 database:(id)a5 error:(id *)a6;
+ (id)codableWithRow:(HDSQLiteRow *)a3 accountSyncIdentifier:(id)a4;
+ (id)credentialWithPersistentID:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)insertCredential:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
- (id)credentialInDatabase:(id)a3 error:(id *)a4;
@end

@implementation HDFHIRCredentialEntity

+ (id)allProperties
{
  v4[0] = HDFHIRCredentialEntityPropertyIdentifier;
  v4[1] = HDFHIRCredentialEntityPropertySyncProvenance;
  v4[2] = HDFHIRCredentialEntityPropertyCreationDate;
  v4[3] = HDFHIRCredentialEntityPropertyExpirationDate;
  v4[4] = HDFHIRCredentialEntityPropertyRequestedScope;
  v4[5] = HDFHIRCredentialEntityPropertyScope;
  v4[6] = HDFHIRCredentialEntityPropertyPatientID;
  v4[7] = HDFHIRCredentialEntityPropertyDeleted;
  v4[8] = HDFHIRCredentialEntityPropertySyncIdentity;
  v2 = [NSArray arrayWithObjects:v4 count:9];

  return v2;
}

+ (id)_credentialWithRow:(HDSQLiteRow *)a3
{
  if (!a3)
  {
    sub_A2CF4(a2, a1);
  }

  v3 = HDSQLiteColumnWithNameAsUUID();
  v4 = HDSQLiteColumnWithNameAsDate();
  v5 = HDSQLiteColumnWithNameAsString();
  v6 = HDSQLiteColumnWithNameAsString();
  v7 = HDSQLiteColumnWithNameAsString();
  v8 = [[HDFHIRCredential alloc] initWithIdentifier:v3 requestedScopeString:v7 expiration:v4 scopeString:v5 patientID:v6];

  return v8;
}

+ (id)codableWithRow:(HDSQLiteRow *)a3 accountSyncIdentifier:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (a3)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_A2D70(a2, a1);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_A2DEC(a2, a1);
LABEL_3:
  v9 = [a1 _credentialWithRow:a3];
  v10 = HDSQLiteColumnWithNameAsDate();
  v11 = HDSQLiteColumnWithNameAsBoolean();
  v12 = [v9 asNewCodableForAccountSyncIdentifier:v8 receivedDate:v10];
  v13 = v12;
  if (v11)
  {
    [v12 setDeleted:1];
  }

  return v13;
}

+ (id)codableCredentialWithAccountSyncIdentifier:(id)a3 persistentID:(id)a4 database:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [HDFHIRCredentialEntity entityWithPersistentID:v11];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_4D47C;
  v30 = sub_4D48C;
  v31 = 0;
  v14 = [objc_opt_class() allProperties];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_4D494;
  v22 = &unk_107828;
  v24 = &v26;
  v25 = a1;
  v15 = v10;
  v23 = v15;
  LOBYTE(v10) = [v13 getValuesForProperties:v14 database:v12 handler:&v19];

  if (v10)
  {
    v16 = v27[5];
  }

  else
  {
    v17 = [v13 persistentID];
    [NSError hk_assignError:a6 code:100 format:@"Failed to populate FHIR credential object from credential entity %lld", v17, v19, v20, v21, v22];
    v16 = 0;
  }

  _Block_object_dispose(&v26, 8);

  return v16;
}

- (id)credentialInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_4D47C;
  v16 = sub_4D48C;
  v17 = 0;
  v7 = [objc_opt_class() allProperties];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_4D678;
  v11[3] = &unk_106788;
  v11[4] = self;
  v11[5] = &v12;
  v8 = [(HDFHIRCredentialEntity *)self getValuesForProperties:v7 database:v6 handler:v11];

  if (v8)
  {
    v9 = v13[5];
  }

  else
  {
    [NSError hk_assignError:a4 code:100 format:@"Failed to populate FHIR credential object from credential entity %lld", [(HDFHIRCredentialEntity *)self persistentID]];
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v9;
}

+ (id)credentialWithPersistentID:(id)a3 database:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [HDFHIRCredentialEntity entityWithPersistentID:a3];
  v9 = [v8 credentialInDatabase:v7 error:a5];

  return v9;
}

+ (BOOL)insertCodableCredentialsFromSync:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [v11 healthRecordsExtension];
  v13 = [v12 accountManager];

  if (v13)
  {
    v26 = v13;
    v27 = v10;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      do
      {
        v18 = 0;
        do
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v31 + 1) + 8 * v18);
          v30 = 0;
          v20 = [a1 _insertCodableCredentialFromSync:v19 syncProvenance:a4 profile:v11 error:{&v30, v26, v27}];
          v21 = v30;
          if ((v20 & 1) == 0)
          {
            _HKInitializeLogging();
            v22 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              log = v22;
              v23 = objc_opt_class();
              v28 = NSStringFromClass(v23);
              v24 = [v19 accountSyncIdentifier];
              *buf = 138543874;
              v36 = v28;
              v37 = 2114;
              v38 = v24;
              v39 = 2114;
              v40 = v21;
              _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ did not insert incoming credential for account with sync identifier %{public}@, ignoring. Error: %{public}@", buf, 0x20u);
            }
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v16);
    }

    v13 = v26;
    v10 = v27;
  }

  else
  {
    [NSError hk_assignError:a6 code:127 format:@"Credential sync is not supported for profiles without a clinical account manager."];
  }

  return v13 != 0;
}

+ (BOOL)_insertCodableCredentialFromSync:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v30[0] = 0;
  v12 = [HDFHIRCredential credentialFromCodable:v10 accountSyncIdentifier:v30 ifValidWithError:0];
  v13 = v30[0];
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A2E68();
    }

    v17 = 1;
  }

  else
  {
    v16 = [v11 database];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_4DBCC;
    v23[3] = &unk_107850;
    v28 = a1;
    v24 = v14;
    v25 = v10;
    v26 = v11;
    v27 = v12;
    v29 = a4;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_4E220;
    v19[3] = &unk_106800;
    v20 = v25;
    v22 = a4;
    v21 = v26;
    v17 = [a1 performWriteTransactionWithHealthDatabase:v16 error:a6 block:v23 inaccessibilityHandler:v19];
  }

  return v17;
}

+ (BOOL)_shouldReplaceCurrentCredential:(id)a3 withIncomingCredential:(id)a4 account:(id)a5 profile:(id)a6 recordEvent:(id *)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = [a6 healthRecordsExtension];
  v17 = [v16 accountManager];

  if (v17)
  {
    v18 = [v17 credentialFromCodableCredential:v14];
    if (v13)
    {
      v19 = [v17 credentialFromCodableCredential:v13];
    }

    else
    {
      v19 = 0;
    }

    if ([v14 hasDeleted] && objc_msgSend(v14, "deleted"))
    {
      v87 = v13;
      v21 = a7;
      v22 = [HKClinicalAccountEvent alloc];
      v91 = v15;
      v23 = [v15 identifier];
      v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d (%s)", "+[HDFHIRCredentialEntity(HealthRecordsPlugin) _shouldReplaceCurrentCredential:withIncomingCredential:account:profile:recordEvent:error:]", 335, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDFHIRCredentialEntity+HealthRecordsPlugin.m");
      v25 = +[NSDate date];
      v92 = v18;
      v26 = [v18 fetchRefreshTokenWithError:0];
      v27 = [v19 fetchRefreshTokenWithError:0];
      v28 = [v22 initWithAccountIdentifier:v23 type:2 caller:v24 timestamp:v25 eventDescription:@"E01: The incoming credential was marked as deleted." incomingToken:v26 currentToken:v27];
      v20 = 0;
      *v21 = v28;
      v13 = v87;
LABEL_23:

      v18 = v92;
      v15 = v91;
      goto LABEL_24;
    }

    v29 = [v18 hasRefreshTokenWithError:a8];
    if (*a8)
    {
      v20 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v90 = v19;
    v92 = v18;
    if (v29)
    {
      if (!v13)
      {
        v85 = a7;
        v30 = [HKClinicalAccountEvent alloc];
        v91 = v15;
        v31 = [v15 identifier];
        v32 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d (%s)", "+[HDFHIRCredentialEntity(HealthRecordsPlugin) _shouldReplaceCurrentCredential:withIncomingCredential:account:profile:recordEvent:error:]", 363, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDFHIRCredentialEntity+HealthRecordsPlugin.m");
        v33 = +[NSDate date];
        [v18 fetchRefreshTokenWithError:0];
        v35 = v34 = 0;
        v36 = v90;
        v27 = [v90 fetchRefreshTokenWithError:0];
        v75 = v27;
        goto LABEL_21;
      }

      if ([v13 hasDeleted] && objc_msgSend(v13, "deleted"))
      {
        v85 = a7;
        v30 = [HKClinicalAccountEvent alloc];
        v91 = v15;
        v31 = [v15 identifier];
        v32 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d (%s)", "+[HDFHIRCredentialEntity(HealthRecordsPlugin) _shouldReplaceCurrentCredential:withIncomingCredential:account:profile:recordEvent:error:]", 374, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDFHIRCredentialEntity+HealthRecordsPlugin.m");
        v33 = +[NSDate date];
        [v18 fetchRefreshTokenWithError:0];
        v35 = v34 = v13;
        v36 = v90;
        v27 = [v90 fetchRefreshTokenWithError:0];
        v75 = v27;
LABEL_21:
        v45 = v30;
        v46 = v33;
        v26 = v35;
        v13 = v34;
        v24 = v32;
        v47 = v32;
        v25 = v46;
        *v85 = [v45 initWithAccountIdentifier:v31 type:1 caller:v47 timestamp:v75 eventDescription:? incomingToken:? currentToken:?];
        v19 = v36;
        v23 = v31;
LABEL_22:
        v20 = 1;
        goto LABEL_23;
      }

      v44 = [v19 hasRefreshTokenWithError:a8];
      if (*a8)
      {
        v20 = 0;
        goto LABEL_24;
      }

      v86 = a7;
      v91 = v15;
      if ((([v15 credentialState] != &dword_0 + 1) & v44) == 0)
      {
        v54 = [HKClinicalAccountEvent alloc];
        v23 = [v15 identifier];
        v55 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d (%s)", "+[HDFHIRCredentialEntity(HealthRecordsPlugin) _shouldReplaceCurrentCredential:withIncomingCredential:account:profile:recordEvent:error:]", 390, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDFHIRCredentialEntity+HealthRecordsPlugin.m");
        v56 = +[NSDate date];
        v26 = [v18 fetchRefreshTokenWithError:0];
        v27 = [v90 fetchRefreshTokenWithError:0];
        v24 = v55;
        v57 = v55;
        v25 = v56;
        *v86 = [v54 initWithAccountIdentifier:v23 type:1 caller:v57 timestamp:v56 eventDescription:@"E05: Using incoming credential from sync because the account is either marked as needing relogin incomingToken:or the refresh token is missing in keychain." currentToken:{v26, v27}];
        v19 = v90;
        goto LABEL_22;
      }

      if (![v15 credentialHasOutdatedScopes:v18])
      {
        if ([v15 credentialState] == &dword_0 + 2 || objc_msgSend(v15, "currentCredentialHasOutdatedScopes"))
        {
          v82 = [HKClinicalAccountEvent alloc];
          v23 = [v15 identifier];
          v58 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d (%s)", "+[HDFHIRCredentialEntity(HealthRecordsPlugin) _shouldReplaceCurrentCredential:withIncomingCredential:account:profile:recordEvent:error:]", 417, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDFHIRCredentialEntity+HealthRecordsPlugin.m");
          v88 = +[NSDate date];
          v26 = [v18 fetchRefreshTokenWithError:0];
          v27 = [v19 fetchRefreshTokenWithError:0];
          v20 = 1;
          v24 = v58;
          v59 = v58;
          v25 = v88;
          *v86 = [v82 initWithAccountIdentifier:v23 type:1 caller:v59 timestamp:v27 eventDescription:? incomingToken:? currentToken:?];
        }

        else
        {
          v60 = [v18 scopes];
          v23 = [HKOAuth2ScopeSet scopeSetWithScopes:v60];

          v61 = [v19 scopes];
          v79 = [HKOAuth2ScopeSet scopeSetWithScopes:v61];

          v62 = [v23 compareTo:v79];
          [v13 receivedDate];
          v64 = v63;
          [v14 receivedDate];
          v67 = v64 <= v65 && (v62 & 0xFFFFFFFFFFFFFFFELL) != 2;
          [v14 receivedDate];
          v69 = v68;
          [v13 receivedDate];
          v72 = v69 > v70 || v62 == 1;
          v80 = [HKClinicalAccountEvent alloc];
          v89 = [v15 identifier];
          v20 = v67 && v72;
          v73 = @"E09: Both the current and incoming credentials are viable and the incoming credential was not deemed better (WorseAtNothing: %@, BetterAtSomething: %@).";
          if (v67 && v72)
          {
            v73 = @"E08: Using incoming credential from sync even though the current credential is viable because the incoming credential is also viable and it was deemed better (WorseAtNothing: %@, BetterAtSomething: %@).";
          }

          v83 = v73;
          v74 = 470;
          if (v67 && v72)
          {
            v74 = 461;
          }

          v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d (%s)", "+[HDFHIRCredentialEntity(HealthRecordsPlugin) _shouldReplaceCurrentCredential:withIncomingCredential:account:profile:recordEvent:error:]", v74, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDFHIRCredentialEntity+HealthRecordsPlugin.m");
          v27 = +[NSDate date];
          v78 = HKStringFromBool();
          v77 = HKStringFromBool();
          v84 = [NSString stringWithFormat:v83, v78, v77];
          v24 = v79;
          v81 = [v92 fetchRefreshTokenWithError:0];
          v76 = [v19 fetchRefreshTokenWithError:0];
          v25 = v89;
          *v86 = [v80 initWithAccountIdentifier:v76 type:? caller:? timestamp:? eventDescription:? incomingToken:? currentToken:?];
        }

        goto LABEL_23;
      }

      v49 = [HKClinicalAccountEvent alloc];
      v23 = [v15 identifier];
      v50 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d (%s)", "+[HDFHIRCredentialEntity(HealthRecordsPlugin) _shouldReplaceCurrentCredential:withIncomingCredential:account:profile:recordEvent:error:]", 406, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDFHIRCredentialEntity+HealthRecordsPlugin.m");
      v51 = +[NSDate date];
      v26 = [v18 fetchRefreshTokenWithError:0];
      v27 = [v90 fetchRefreshTokenWithError:0];
      v24 = v50;
      v52 = v50;
      v25 = v51;
      v53 = [v49 initWithAccountIdentifier:v23 type:2 caller:v52 timestamp:v51 eventDescription:@"E06: The current credential did not need relogin and the incoming credential had outdated scope." incomingToken:v26 currentToken:v27];
      v20 = 0;
      *v86 = v53;
    }

    else
    {
      v37 = a7;
      v38 = [HKClinicalAccountEvent alloc];
      v91 = v15;
      v23 = [v15 identifier];
      v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d (%s)", "+[HDFHIRCredentialEntity(HealthRecordsPlugin) _shouldReplaceCurrentCredential:withIncomingCredential:account:profile:recordEvent:error:]", 352, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDFHIRCredentialEntity+HealthRecordsPlugin.m");
      v40 = +[NSDate date];
      [v18 fetchRefreshTokenWithError:0];
      v42 = v41 = v13;
      v27 = [v90 fetchRefreshTokenWithError:0];
      v43 = [v38 initWithAccountIdentifier:v23 type:2 caller:v39 timestamp:v40 eventDescription:@"E02: The refresh token for the incoming credential was not found in the keychain." incomingToken:v42 currentToken:v27];
      v20 = 0;
      *v37 = v43;
      v24 = v39;
      v25 = v40;
      v26 = v42;
      v13 = v41;
    }

    v19 = v90;
    goto LABEL_23;
  }

  [NSError hk_assignError:a8 code:127 format:@"Credential sync is not supported for profiles without a clinical account manager."];
  v20 = 0;
LABEL_25:

  return v20 & 1;
}

+ (id)_insertCodableCredential:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(int64_t)a5 transaction:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  v14 = [HDFHIRCredential validateInsertableCodableCredential:v12 error:a7];
  v15 = [v12 identifier];
  v16 = [NSUUID hk_UUIDWithData:v15];

  if (v14)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v20 = 0;
  }

  else
  {
    v18 = [v13 protectedDatabase];
    v19 = [a1 allProperties];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_4EE48;
    v22[3] = &unk_107878;
    v23 = v16;
    v25 = a4;
    v24 = v12;
    v26 = a5;
    v20 = [a1 insertOrReplaceEntity:0 database:v18 properties:v19 error:a7 bindingHandler:v22];
  }

  return v20;
}

+ (id)insertCredential:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[NSDate date];
  v14 = [a1 _insertCredential:v12 receivedDate:v13 profile:v11 transaction:v10 error:a6];

  return v14;
}

+ (id)_insertCredential:(id)a3 receivedDate:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = [a3 asNewCodableForAccountSyncIdentifier:0 receivedDate:a4];
  v15 = [v13 currentSyncIdentityPersistentID];

  v16 = [a1 _insertCodableCredential:v14 syncProvenance:0 syncIdentity:v15 transaction:v12 error:a7];

  return v16;
}

@end