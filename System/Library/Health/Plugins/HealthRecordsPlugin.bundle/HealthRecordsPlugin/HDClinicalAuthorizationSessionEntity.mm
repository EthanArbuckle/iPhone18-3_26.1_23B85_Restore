@interface HDClinicalAuthorizationSessionEntity
+ (BOOL)deleteSessionWithState:(id)state profile:(id)profile error:(id *)error;
+ (BOOL)pruneAuthorizationSessionsInDatabase:(id)database error:(id *)error;
+ (id)_entityWithState:(id)state database:(id)database error:(id *)error;
+ (id)_insertEntityInDatabase:(id)database loginSession:(id)session gatewayID:(id)d accountID:(id)iD error:(id *)error;
+ (id)_propertiesForEntity;
+ (id)_propertiesForTokenSession;
+ (id)createInitialLoginSessionForGatewayWithExternalID:(id)d database:(id)database error:(id *)error;
+ (id)createReloginSessionForAccountWithIdentifier:(id)identifier database:(id)database error:(id *)error;
+ (id)existingEntityWithState:(id)state database:(id)database error:(id *)error;
- (BOOL)updateWithCode:(id)code database:(id)database error:(id *)error;
- (id)tokenSessionInDatabase:(id)database error:(id *)error;
@end

@implementation HDClinicalAuthorizationSessionEntity

+ (id)_propertiesForEntity
{
  v4[0] = HDClinicalAuthorizationSessionEntityPropertyCode;
  v4[1] = HDClinicalAuthorizationSessionEntityPropertyQuery;
  v4[2] = HDClinicalAuthorizationSessionEntityPropertyState;
  v4[3] = HDClinicalAuthorizationSessionEntityPropertyPKCEVerifier;
  v4[4] = HDClinicalAuthorizationSessionEntityPropertyCreationDate;
  v4[5] = HDClinicalAuthorizationSessionEntityPropertyGatewayID;
  v4[6] = HDClinicalAuthorizationSessionEntityPropertyAccountID;
  v4[7] = HDClinicalAuthorizationSessionEntityPropertyRequestedScope;
  v2 = [NSArray arrayWithObjects:v4 count:8];

  return v2;
}

+ (id)_propertiesForTokenSession
{
  v4[0] = HDClinicalAuthorizationSessionEntityPropertyCode;
  v4[1] = HDClinicalAuthorizationSessionEntityPropertyQuery;
  v4[2] = HDClinicalAuthorizationSessionEntityPropertyState;
  v4[3] = HDClinicalAuthorizationSessionEntityPropertyPKCEVerifier;
  v4[4] = HDClinicalAuthorizationSessionEntityPropertyRequestedScope;
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

+ (id)_insertEntityInDatabase:(id)database loginSession:(id)session gatewayID:(id)d accountID:(id)iD error:(id *)error
{
  databaseCopy = database;
  sessionCopy = session;
  dCopy = d;
  iDCopy = iD;
  if ((dCopy != 0) != (iDCopy == 0))
  {
    sub_A7F78(a2, self);
  }

  v17 = objc_alloc_init(NSDate);
  _propertiesForEntity = [self _propertiesForEntity];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_88BA4;
  v25[3] = &unk_105D50;
  v26 = sessionCopy;
  v27 = v17;
  v28 = dCopy;
  v29 = iDCopy;
  v19 = iDCopy;
  v20 = dCopy;
  v21 = v17;
  v22 = sessionCopy;
  v23 = [self insertOrReplaceEntity:0 database:databaseCopy properties:_propertiesForEntity error:error bindingHandler:v25];

  return v23;
}

+ (id)createInitialLoginSessionForGatewayWithExternalID:(id)d database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [HDClinicalGatewayEntity existingGatewayEntityWithExternalID:d database:databaseCopy error:error];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 newLoginSessionWithEntityInDatabase:databaseCopy error:error];
    if (v11)
    {
      v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 persistentID]);
      v13 = [self _insertEntityInDatabase:databaseCopy loginSession:v11 gatewayID:v12 accountID:0 error:error];

      if (v13)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)createReloginSessionForAccountWithIdentifier:(id)identifier database:(id)database error:(id *)error
{
  databaseCopy = database;
  v10 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:identifier database:databaseCopy error:error];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 numberForProperty:HDClinicalAccountEntityPropertyGatewayID database:databaseCopy];
    if (v12)
    {
      v13 = [HDClinicalGatewayEntity entityWithPersistentID:v12];
      if (!v13)
      {
        sub_A7FF4(a2, self, v12);
      }

      v14 = [v13 newLoginSessionWithEntityInDatabase:databaseCopy error:error];
      if (v14)
      {
        v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v11 persistentID]);
        v16 = [self _insertEntityInDatabase:databaseCopy loginSession:v14 gatewayID:0 accountID:v15 error:error];

        if (v16)
        {
          v17 = v14;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      [NSError hk_assignError:error code:118 format:@"account %@ does not have a gateway", v11];
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)updateWithCode:(id)code database:(id)database error:(id *)error
{
  codeCopy = code;
  databaseCopy = database;
  v10 = HDClinicalAuthorizationSessionEntityPropertyCode;
  v11 = [(HDClinicalAuthorizationSessionEntity *)self valueForProperty:v10 database:databaseCopy];
  if (v11)
  {
    [NSError hk_assignError:error code:100 description:@"Attempting to add authorization code to session with existing authorization code"];
    v12 = 0;
  }

  else
  {
    v18 = v10;
    v13 = [NSArray arrayWithObjects:&v18 count:1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_8915C;
    v15[3] = &unk_1065E0;
    v16 = v10;
    v17 = codeCopy;
    v12 = [(HDClinicalAuthorizationSessionEntity *)self updateProperties:v13 database:databaseCopy error:error bindingHandler:v15];
  }

  return v12;
}

+ (BOOL)deleteSessionWithState:(id)state profile:(id)profile error:(id *)error
{
  stateCopy = state;
  database = [profile database];
  [self _predicateForEntityWithState:stateCopy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_892BC;
  v18 = v17[3] = &unk_106990;
  selfCopy = self;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_89320;
  v14[3] = &unk_106F20;
  v15 = stateCopy;
  v16 = database;
  v10 = database;
  v11 = stateCopy;
  v12 = v18;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:v10 error:error block:v17 inaccessibilityHandler:v14];

  return error;
}

+ (id)_entityWithState:(id)state database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = [self _predicateForEntityWithState:state];
  v10 = [self anyInDatabase:databaseCopy predicate:v9 error:error];

  return v10;
}

+ (id)existingEntityWithState:(id)state database:(id)database error:(id *)error
{
  stateCopy = state;
  v13 = 0;
  v9 = [self _entityWithState:stateCopy database:database error:&v13];
  if (!v9)
  {
    v10 = v13;
    stateCopy = [[NSString alloc] initWithFormat:@"Unable to fetch authorization session entity with state: %@", stateCopy];
    [NSError hk_assignError:error code:100 description:stateCopy underlyingError:v10];
  }

  return v9;
}

- (id)tokenSessionInDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_896A0;
  v17 = sub_896B0;
  v18 = 0;
  _propertiesForTokenSession = [objc_opt_class() _propertiesForTokenSession];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_896B8;
  v12[3] = &unk_108828;
  v12[4] = &v13;
  v8 = [(HDClinicalAuthorizationSessionEntity *)self getValuesForProperties:_propertiesForTokenSession database:databaseCopy handler:v12];

  if (!v8 || (v9 = v14[5]) == 0)
  {
    [NSError hk_assignError:error code:100 format:@"Unable to instantiate token session from auth session entity at row %lld", [(HDClinicalAuthorizationSessionEntity *)self persistentID]];
    if (v8)
    {
      v9 = v14[5];
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);

  return v10;
}

+ (BOOL)pruneAuthorizationSessionsInDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v6 = +[HDClinicalAuthorizationSessionEntity disambiguatedDatabaseTable];
  v7 = HDClinicalAuthorizationSessionEntityPropertyAccountID;
  v8 = +[HDClinicalAccountEntity disambiguatedDatabaseTable];
  v9 = HDClinicalAuthorizationSessionEntityPropertyGatewayID;
  v10 = +[HDClinicalGatewayEntity disambiguatedDatabaseTable];
  v11 = [NSString stringWithFormat:@"DELETE FROM %@ WHERE %@ NOT IN (SELECT ROWID FROM %@) AND %@ NOT IN (SELECT ROWID FROM %@)", v6, v7, v8, v9, v10];

  LOBYTE(v6) = [databaseCopy executeUncachedSQL:v11 error:error bindingHandler:0 enumerationHandler:0];
  v12 = +[NSDate date];
  v13 = [v12 dateByAddingTimeInterval:-86400.0];

  [v13 timeIntervalSinceReferenceDate];
  v15 = [NSString stringWithFormat:@"DELETE FROM clinical_authorization_sessions WHERE creation_date < %f", v14];
  LOBYTE(error) = [databaseCopy executeUncachedSQL:v15 error:error bindingHandler:0 enumerationHandler:0];

  return v6 & error;
}

@end