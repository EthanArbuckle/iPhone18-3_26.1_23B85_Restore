@interface HDFHIRCredentialEntity
+ (BOOL)_insertCodableCredentialFromSync:(id)sync syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error;
+ (BOOL)_shouldReplaceCurrentCredential:(id)credential withIncomingCredential:(id)incomingCredential account:(id)account profile:(id)profile recordEvent:(id *)event error:(id *)error;
+ (BOOL)insertCodableCredentialsFromSync:(id)sync syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error;
+ (id)_credentialWithRow:(HDSQLiteRow *)row;
+ (id)_insertCodableCredential:(id)credential syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity transaction:(id)transaction error:(id *)error;
+ (id)_insertCredential:(id)credential receivedDate:(id)date profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)allProperties;
+ (id)codableCredentialWithAccountSyncIdentifier:(id)identifier persistentID:(id)d database:(id)database error:(id *)error;
+ (id)codableWithRow:(HDSQLiteRow *)row accountSyncIdentifier:(id)identifier;
+ (id)credentialWithPersistentID:(id)d database:(id)database error:(id *)error;
+ (id)insertCredential:(id)credential profile:(id)profile transaction:(id)transaction error:(id *)error;
- (id)credentialInDatabase:(id)database error:(id *)error;
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

+ (id)_credentialWithRow:(HDSQLiteRow *)row
{
  if (!row)
  {
    sub_A2CF4(a2, self);
  }

  v3 = HDSQLiteColumnWithNameAsUUID();
  v4 = HDSQLiteColumnWithNameAsDate();
  v5 = HDSQLiteColumnWithNameAsString();
  v6 = HDSQLiteColumnWithNameAsString();
  v7 = HDSQLiteColumnWithNameAsString();
  v8 = [[HDFHIRCredential alloc] initWithIdentifier:v3 requestedScopeString:v7 expiration:v4 scopeString:v5 patientID:v6];

  return v8;
}

+ (id)codableWithRow:(HDSQLiteRow *)row accountSyncIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (row)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_A2D70(a2, self);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_A2DEC(a2, self);
LABEL_3:
  v9 = [self _credentialWithRow:row];
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

+ (id)codableCredentialWithAccountSyncIdentifier:(id)identifier persistentID:(id)d database:(id)database error:(id *)error
{
  identifierCopy = identifier;
  dCopy = d;
  databaseCopy = database;
  v13 = [HDFHIRCredentialEntity entityWithPersistentID:dCopy];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_4D47C;
  v30 = sub_4D48C;
  v31 = 0;
  allProperties = [objc_opt_class() allProperties];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_4D494;
  v22 = &unk_107828;
  v24 = &v26;
  selfCopy = self;
  v15 = identifierCopy;
  v23 = v15;
  LOBYTE(identifierCopy) = [v13 getValuesForProperties:allProperties database:databaseCopy handler:&v19];

  if (identifierCopy)
  {
    v16 = v27[5];
  }

  else
  {
    persistentID = [v13 persistentID];
    [NSError hk_assignError:error code:100 format:@"Failed to populate FHIR credential object from credential entity %lld", persistentID, v19, v20, v21, v22];
    v16 = 0;
  }

  _Block_object_dispose(&v26, 8);

  return v16;
}

- (id)credentialInDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_4D47C;
  v16 = sub_4D48C;
  v17 = 0;
  allProperties = [objc_opt_class() allProperties];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_4D678;
  v11[3] = &unk_106788;
  v11[4] = self;
  v11[5] = &v12;
  v8 = [(HDFHIRCredentialEntity *)self getValuesForProperties:allProperties database:databaseCopy handler:v11];

  if (v8)
  {
    v9 = v13[5];
  }

  else
  {
    [NSError hk_assignError:error code:100 format:@"Failed to populate FHIR credential object from credential entity %lld", [(HDFHIRCredentialEntity *)self persistentID]];
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v9;
}

+ (id)credentialWithPersistentID:(id)d database:(id)database error:(id *)error
{
  databaseCopy = database;
  v8 = [HDFHIRCredentialEntity entityWithPersistentID:d];
  v9 = [v8 credentialInDatabase:databaseCopy error:error];

  return v9;
}

+ (BOOL)insertCodableCredentialsFromSync:(id)sync syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error
{
  syncCopy = sync;
  profileCopy = profile;
  healthRecordsExtension = [profileCopy healthRecordsExtension];
  accountManager = [healthRecordsExtension accountManager];

  if (accountManager)
  {
    v26 = accountManager;
    v27 = syncCopy;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = syncCopy;
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
          v20 = [self _insertCodableCredentialFromSync:v19 syncProvenance:provenance profile:profileCopy error:{&v30, v26, v27}];
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
              accountSyncIdentifier = [v19 accountSyncIdentifier];
              *buf = 138543874;
              v36 = v28;
              v37 = 2114;
              v38 = accountSyncIdentifier;
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

    accountManager = v26;
    syncCopy = v27;
  }

  else
  {
    [NSError hk_assignError:error code:127 format:@"Credential sync is not supported for profiles without a clinical account manager."];
  }

  return accountManager != 0;
}

+ (BOOL)_insertCodableCredentialFromSync:(id)sync syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error
{
  syncCopy = sync;
  profileCopy = profile;
  v30[0] = 0;
  v12 = [HDFHIRCredential credentialFromCodable:syncCopy accountSyncIdentifier:v30 ifValidWithError:0];
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
    database = [profileCopy database];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_4DBCC;
    v23[3] = &unk_107850;
    selfCopy = self;
    v24 = v14;
    v25 = syncCopy;
    v26 = profileCopy;
    v27 = v12;
    provenanceCopy = provenance;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_4E220;
    v19[3] = &unk_106800;
    v20 = v25;
    provenanceCopy2 = provenance;
    v21 = v26;
    v17 = [self performWriteTransactionWithHealthDatabase:database error:error block:v23 inaccessibilityHandler:v19];
  }

  return v17;
}

+ (BOOL)_shouldReplaceCurrentCredential:(id)credential withIncomingCredential:(id)incomingCredential account:(id)account profile:(id)profile recordEvent:(id *)event error:(id *)error
{
  credentialCopy = credential;
  incomingCredentialCopy = incomingCredential;
  accountCopy = account;
  healthRecordsExtension = [profile healthRecordsExtension];
  accountManager = [healthRecordsExtension accountManager];

  if (accountManager)
  {
    v18 = [accountManager credentialFromCodableCredential:incomingCredentialCopy];
    if (credentialCopy)
    {
      v19 = [accountManager credentialFromCodableCredential:credentialCopy];
    }

    else
    {
      v19 = 0;
    }

    if ([incomingCredentialCopy hasDeleted] && objc_msgSend(incomingCredentialCopy, "deleted"))
    {
      v87 = credentialCopy;
      eventCopy = event;
      v22 = [HKClinicalAccountEvent alloc];
      v91 = accountCopy;
      identifier = [accountCopy identifier];
      v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d (%s)", "+[HDFHIRCredentialEntity(HealthRecordsPlugin) _shouldReplaceCurrentCredential:withIncomingCredential:account:profile:recordEvent:error:]", 335, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDFHIRCredentialEntity+HealthRecordsPlugin.m");
      v25 = +[NSDate date];
      v92 = v18;
      v26 = [v18 fetchRefreshTokenWithError:0];
      v27 = [v19 fetchRefreshTokenWithError:0];
      v28 = [v22 initWithAccountIdentifier:identifier type:2 caller:v24 timestamp:v25 eventDescription:@"E01: The incoming credential was marked as deleted." incomingToken:v26 currentToken:v27];
      v20 = 0;
      *eventCopy = v28;
      credentialCopy = v87;
LABEL_23:

      v18 = v92;
      accountCopy = v91;
      goto LABEL_24;
    }

    v29 = [v18 hasRefreshTokenWithError:error];
    if (*error)
    {
      v20 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v90 = v19;
    v92 = v18;
    if (v29)
    {
      if (!credentialCopy)
      {
        eventCopy3 = event;
        v30 = [HKClinicalAccountEvent alloc];
        v91 = accountCopy;
        identifier2 = [accountCopy identifier];
        v32 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d (%s)", "+[HDFHIRCredentialEntity(HealthRecordsPlugin) _shouldReplaceCurrentCredential:withIncomingCredential:account:profile:recordEvent:error:]", 363, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDFHIRCredentialEntity+HealthRecordsPlugin.m");
        v33 = +[NSDate date];
        [v18 fetchRefreshTokenWithError:0];
        v35 = v34 = 0;
        v36 = v90;
        v27 = [v90 fetchRefreshTokenWithError:0];
        v75 = v27;
        goto LABEL_21;
      }

      if ([credentialCopy hasDeleted] && objc_msgSend(credentialCopy, "deleted"))
      {
        eventCopy3 = event;
        v30 = [HKClinicalAccountEvent alloc];
        v91 = accountCopy;
        identifier2 = [accountCopy identifier];
        v32 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d (%s)", "+[HDFHIRCredentialEntity(HealthRecordsPlugin) _shouldReplaceCurrentCredential:withIncomingCredential:account:profile:recordEvent:error:]", 374, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDFHIRCredentialEntity+HealthRecordsPlugin.m");
        v33 = +[NSDate date];
        [v18 fetchRefreshTokenWithError:0];
        v35 = v34 = credentialCopy;
        v36 = v90;
        v27 = [v90 fetchRefreshTokenWithError:0];
        v75 = v27;
LABEL_21:
        v45 = v30;
        v46 = v33;
        v26 = v35;
        credentialCopy = v34;
        v24 = v32;
        v47 = v32;
        v25 = v46;
        *eventCopy3 = [v45 initWithAccountIdentifier:identifier2 type:1 caller:v47 timestamp:v75 eventDescription:? incomingToken:? currentToken:?];
        v19 = v36;
        identifier = identifier2;
LABEL_22:
        v20 = 1;
        goto LABEL_23;
      }

      v44 = [v19 hasRefreshTokenWithError:error];
      if (*error)
      {
        v20 = 0;
        goto LABEL_24;
      }

      eventCopy4 = event;
      v91 = accountCopy;
      if ((([accountCopy credentialState] != &dword_0 + 1) & v44) == 0)
      {
        v54 = [HKClinicalAccountEvent alloc];
        identifier = [accountCopy identifier];
        v55 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d (%s)", "+[HDFHIRCredentialEntity(HealthRecordsPlugin) _shouldReplaceCurrentCredential:withIncomingCredential:account:profile:recordEvent:error:]", 390, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDFHIRCredentialEntity+HealthRecordsPlugin.m");
        v56 = +[NSDate date];
        v26 = [v18 fetchRefreshTokenWithError:0];
        v27 = [v90 fetchRefreshTokenWithError:0];
        v24 = v55;
        v57 = v55;
        v25 = v56;
        *eventCopy4 = [v54 initWithAccountIdentifier:identifier type:1 caller:v57 timestamp:v56 eventDescription:@"E05: Using incoming credential from sync because the account is either marked as needing relogin incomingToken:or the refresh token is missing in keychain." currentToken:{v26, v27}];
        v19 = v90;
        goto LABEL_22;
      }

      if (![accountCopy credentialHasOutdatedScopes:v18])
      {
        if ([accountCopy credentialState] == &dword_0 + 2 || objc_msgSend(accountCopy, "currentCredentialHasOutdatedScopes"))
        {
          v82 = [HKClinicalAccountEvent alloc];
          identifier = [accountCopy identifier];
          v58 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d (%s)", "+[HDFHIRCredentialEntity(HealthRecordsPlugin) _shouldReplaceCurrentCredential:withIncomingCredential:account:profile:recordEvent:error:]", 417, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDFHIRCredentialEntity+HealthRecordsPlugin.m");
          v88 = +[NSDate date];
          v26 = [v18 fetchRefreshTokenWithError:0];
          v27 = [v19 fetchRefreshTokenWithError:0];
          v20 = 1;
          v24 = v58;
          v59 = v58;
          v25 = v88;
          *eventCopy4 = [v82 initWithAccountIdentifier:identifier type:1 caller:v59 timestamp:v27 eventDescription:? incomingToken:? currentToken:?];
        }

        else
        {
          scopes = [v18 scopes];
          identifier = [HKOAuth2ScopeSet scopeSetWithScopes:scopes];

          scopes2 = [v19 scopes];
          v79 = [HKOAuth2ScopeSet scopeSetWithScopes:scopes2];

          v62 = [identifier compareTo:v79];
          [credentialCopy receivedDate];
          v64 = v63;
          [incomingCredentialCopy receivedDate];
          v67 = v64 <= v65 && (v62 & 0xFFFFFFFFFFFFFFFELL) != 2;
          [incomingCredentialCopy receivedDate];
          v69 = v68;
          [credentialCopy receivedDate];
          v72 = v69 > v70 || v62 == 1;
          v80 = [HKClinicalAccountEvent alloc];
          identifier3 = [accountCopy identifier];
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
          v25 = identifier3;
          *eventCopy4 = [v80 initWithAccountIdentifier:v76 type:? caller:? timestamp:? eventDescription:? incomingToken:? currentToken:?];
        }

        goto LABEL_23;
      }

      v49 = [HKClinicalAccountEvent alloc];
      identifier = [accountCopy identifier];
      v50 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d (%s)", "+[HDFHIRCredentialEntity(HealthRecordsPlugin) _shouldReplaceCurrentCredential:withIncomingCredential:account:profile:recordEvent:error:]", 406, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDFHIRCredentialEntity+HealthRecordsPlugin.m");
      v51 = +[NSDate date];
      v26 = [v18 fetchRefreshTokenWithError:0];
      v27 = [v90 fetchRefreshTokenWithError:0];
      v24 = v50;
      v52 = v50;
      v25 = v51;
      v53 = [v49 initWithAccountIdentifier:identifier type:2 caller:v52 timestamp:v51 eventDescription:@"E06: The current credential did not need relogin and the incoming credential had outdated scope." incomingToken:v26 currentToken:v27];
      v20 = 0;
      *eventCopy4 = v53;
    }

    else
    {
      eventCopy5 = event;
      v38 = [HKClinicalAccountEvent alloc];
      v91 = accountCopy;
      identifier = [accountCopy identifier];
      v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d (%s)", "+[HDFHIRCredentialEntity(HealthRecordsPlugin) _shouldReplaceCurrentCredential:withIncomingCredential:account:profile:recordEvent:error:]", 352, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Database/Entities/HDFHIRCredentialEntity+HealthRecordsPlugin.m");
      v40 = +[NSDate date];
      [v18 fetchRefreshTokenWithError:0];
      v42 = v41 = credentialCopy;
      v27 = [v90 fetchRefreshTokenWithError:0];
      v43 = [v38 initWithAccountIdentifier:identifier type:2 caller:v39 timestamp:v40 eventDescription:@"E02: The refresh token for the incoming credential was not found in the keychain." incomingToken:v42 currentToken:v27];
      v20 = 0;
      *eventCopy5 = v43;
      v24 = v39;
      v25 = v40;
      v26 = v42;
      credentialCopy = v41;
    }

    v19 = v90;
    goto LABEL_23;
  }

  [NSError hk_assignError:error code:127 format:@"Credential sync is not supported for profiles without a clinical account manager."];
  v20 = 0;
LABEL_25:

  return v20 & 1;
}

+ (id)_insertCodableCredential:(id)credential syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity transaction:(id)transaction error:(id *)error
{
  credentialCopy = credential;
  transactionCopy = transaction;
  v14 = [HDFHIRCredential validateInsertableCodableCredential:credentialCopy error:error];
  identifier = [credentialCopy identifier];
  v16 = [NSUUID hk_UUIDWithData:identifier];

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
    protectedDatabase = [transactionCopy protectedDatabase];
    allProperties = [self allProperties];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_4EE48;
    v22[3] = &unk_107878;
    v23 = v16;
    provenanceCopy = provenance;
    v24 = credentialCopy;
    identityCopy = identity;
    v20 = [self insertOrReplaceEntity:0 database:protectedDatabase properties:allProperties error:error bindingHandler:v22];
  }

  return v20;
}

+ (id)insertCredential:(id)credential profile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  profileCopy = profile;
  credentialCopy = credential;
  v13 = +[NSDate date];
  v14 = [self _insertCredential:credentialCopy receivedDate:v13 profile:profileCopy transaction:transactionCopy error:error];

  return v14;
}

+ (id)_insertCredential:(id)credential receivedDate:(id)date profile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  profileCopy = profile;
  v14 = [credential asNewCodableForAccountSyncIdentifier:0 receivedDate:date];
  currentSyncIdentityPersistentID = [profileCopy currentSyncIdentityPersistentID];

  v16 = [self _insertCodableCredential:v14 syncProvenance:0 syncIdentity:currentSyncIdentityPersistentID transaction:transactionCopy error:error];

  return v16;
}

@end