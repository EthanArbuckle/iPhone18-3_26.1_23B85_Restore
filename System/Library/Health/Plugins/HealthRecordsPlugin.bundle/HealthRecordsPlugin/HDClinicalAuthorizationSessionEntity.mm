@interface HDClinicalAuthorizationSessionEntity
+ (BOOL)deleteSessionWithState:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)pruneAuthorizationSessionsInDatabase:(id)a3 error:(id *)a4;
+ (id)_entityWithState:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)_insertEntityInDatabase:(id)a3 loginSession:(id)a4 gatewayID:(id)a5 accountID:(id)a6 error:(id *)a7;
+ (id)_propertiesForEntity;
+ (id)_propertiesForTokenSession;
+ (id)createInitialLoginSessionForGatewayWithExternalID:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)createReloginSessionForAccountWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)existingEntityWithState:(id)a3 database:(id)a4 error:(id *)a5;
- (BOOL)updateWithCode:(id)a3 database:(id)a4 error:(id *)a5;
- (id)tokenSessionInDatabase:(id)a3 error:(id *)a4;
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

+ (id)_insertEntityInDatabase:(id)a3 loginSession:(id)a4 gatewayID:(id)a5 accountID:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if ((v15 != 0) != (v16 == 0))
  {
    sub_A7F78(a2, a1);
  }

  v17 = objc_alloc_init(NSDate);
  v18 = [a1 _propertiesForEntity];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_88BA4;
  v25[3] = &unk_105D50;
  v26 = v14;
  v27 = v17;
  v28 = v15;
  v29 = v16;
  v19 = v16;
  v20 = v15;
  v21 = v17;
  v22 = v14;
  v23 = [a1 insertOrReplaceEntity:0 database:v13 properties:v18 error:a7 bindingHandler:v25];

  return v23;
}

+ (id)createInitialLoginSessionForGatewayWithExternalID:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [HDClinicalGatewayEntity existingGatewayEntityWithExternalID:a3 database:v8 error:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 newLoginSessionWithEntityInDatabase:v8 error:a5];
    if (v11)
    {
      v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 persistentID]);
      v13 = [a1 _insertEntityInDatabase:v8 loginSession:v11 gatewayID:v12 accountID:0 error:a5];

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

+ (id)createReloginSessionForAccountWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v9 = a4;
  v10 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:a3 database:v9 error:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 numberForProperty:HDClinicalAccountEntityPropertyGatewayID database:v9];
    if (v12)
    {
      v13 = [HDClinicalGatewayEntity entityWithPersistentID:v12];
      if (!v13)
      {
        sub_A7FF4(a2, a1, v12);
      }

      v14 = [v13 newLoginSessionWithEntityInDatabase:v9 error:a5];
      if (v14)
      {
        v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v11 persistentID]);
        v16 = [a1 _insertEntityInDatabase:v9 loginSession:v14 gatewayID:0 accountID:v15 error:a5];

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
      [NSError hk_assignError:a5 code:118 format:@"account %@ does not have a gateway", v11];
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)updateWithCode:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = HDClinicalAuthorizationSessionEntityPropertyCode;
  v11 = [(HDClinicalAuthorizationSessionEntity *)self valueForProperty:v10 database:v9];
  if (v11)
  {
    [NSError hk_assignError:a5 code:100 description:@"Attempting to add authorization code to session with existing authorization code"];
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
    v17 = v8;
    v12 = [(HDClinicalAuthorizationSessionEntity *)self updateProperties:v13 database:v9 error:a5 bindingHandler:v15];
  }

  return v12;
}

+ (BOOL)deleteSessionWithState:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 database];
  [a1 _predicateForEntityWithState:v8];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_892BC;
  v18 = v17[3] = &unk_106990;
  v19 = a1;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_89320;
  v14[3] = &unk_106F20;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v18;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:v10 error:a5 block:v17 inaccessibilityHandler:v14];

  return a5;
}

+ (id)_entityWithState:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 _predicateForEntityWithState:a3];
  v10 = [a1 anyInDatabase:v8 predicate:v9 error:a5];

  return v10;
}

+ (id)existingEntityWithState:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a3;
  v13 = 0;
  v9 = [a1 _entityWithState:v8 database:a4 error:&v13];
  if (!v9)
  {
    v10 = v13;
    v11 = [[NSString alloc] initWithFormat:@"Unable to fetch authorization session entity with state: %@", v8];
    [NSError hk_assignError:a5 code:100 description:v11 underlyingError:v10];
  }

  return v9;
}

- (id)tokenSessionInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_896A0;
  v17 = sub_896B0;
  v18 = 0;
  v7 = [objc_opt_class() _propertiesForTokenSession];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_896B8;
  v12[3] = &unk_108828;
  v12[4] = &v13;
  v8 = [(HDClinicalAuthorizationSessionEntity *)self getValuesForProperties:v7 database:v6 handler:v12];

  if (!v8 || (v9 = v14[5]) == 0)
  {
    [NSError hk_assignError:a4 code:100 format:@"Unable to instantiate token session from auth session entity at row %lld", [(HDClinicalAuthorizationSessionEntity *)self persistentID]];
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

+ (BOOL)pruneAuthorizationSessionsInDatabase:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[HDClinicalAuthorizationSessionEntity disambiguatedDatabaseTable];
  v7 = HDClinicalAuthorizationSessionEntityPropertyAccountID;
  v8 = +[HDClinicalAccountEntity disambiguatedDatabaseTable];
  v9 = HDClinicalAuthorizationSessionEntityPropertyGatewayID;
  v10 = +[HDClinicalGatewayEntity disambiguatedDatabaseTable];
  v11 = [NSString stringWithFormat:@"DELETE FROM %@ WHERE %@ NOT IN (SELECT ROWID FROM %@) AND %@ NOT IN (SELECT ROWID FROM %@)", v6, v7, v8, v9, v10];

  LOBYTE(v6) = [v5 executeUncachedSQL:v11 error:a4 bindingHandler:0 enumerationHandler:0];
  v12 = +[NSDate date];
  v13 = [v12 dateByAddingTimeInterval:-86400.0];

  [v13 timeIntervalSinceReferenceDate];
  v15 = [NSString stringWithFormat:@"DELETE FROM clinical_authorization_sessions WHERE creation_date < %f", v14];
  LOBYTE(a4) = [v5 executeUncachedSQL:v15 error:a4 bindingHandler:0 enumerationHandler:0];

  return v6 & a4;
}

@end