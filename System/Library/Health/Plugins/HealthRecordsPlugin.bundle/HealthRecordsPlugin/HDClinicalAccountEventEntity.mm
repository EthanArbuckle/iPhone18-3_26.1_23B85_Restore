@interface HDClinicalAccountEventEntity
+ (BOOL)_pruneEventsIfNeededInDatabase:(id)a3 error:(id *)a4;
+ (BOOL)_pruneEventsInDatabase:(id)a3 error:(id *)a4;
+ (BOOL)insertEvent:(id)a3 database:(id)a4 error:(id *)a5;
+ (BOOL)insertEvent:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)journalEvent:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)_fetchEventsForAccountWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)_propertiesForModel;
+ (id)_wrapHKOptionalClinicalAccountCredentialStateInNSNumber:(int64_t)a3;
+ (id)fetchEventsForAccountWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (int64_t)_unwrapHKClinicalAccountCredentialStateFromNSNumber:(id)a3;
- (id)_eventInDatabase:(id)a3 error:(id *)a4;
@end

@implementation HDClinicalAccountEventEntity

+ (id)_propertiesForModel
{
  v4[0] = HDClinicalAccountEventEntityPropertyAccountIdentifier;
  v4[1] = HDClinicalAccountEventEntityPropertyType;
  v4[2] = HDClinicalAccountEventEntityPropertyCaller;
  v4[3] = HDClinicalAccountEventEntityPropertyTimestamp;
  v4[4] = HDClinicalAccountEventEntityPropertyEventDescription;
  v4[5] = HDClinicalAccountEventEntityPropertyCredentialStateBefore;
  v4[6] = HDClinicalAccountEventEntityPropertyCredentialStateAfter;
  v2 = [NSArray arrayWithObjects:v4 count:7];

  return v2;
}

+ (BOOL)insertEvent:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 database];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_25030;
  v18[3] = &unk_106990;
  v20 = a1;
  v19 = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_250DC;
  v14[3] = &unk_106800;
  v16 = v9;
  v17 = a1;
  v15 = v19;
  v11 = v9;
  v12 = v19;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:v10 error:a5 block:v18 inaccessibilityHandler:v14];

  return a5;
}

+ (BOOL)insertEvent:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 _propertiesForModel];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_25230;
  v14[3] = &unk_105B80;
  v15 = v8;
  v11 = v8;
  v12 = [a1 insertOrReplaceEntity:0 database:v9 properties:v10 error:a5 bindingHandler:v14];

  return v12 != 0;
}

+ (BOOL)journalEvent:(id)a3 database:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[HDClinicalAccountEventInsertJournalEntry alloc] initWithEvent:v8];

  LOBYTE(a5) = [v7 addJournalEntry:v9 error:a5];
  return a5;
}

- (id)_eventInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_255E4;
  v18 = sub_255F4;
  v19 = 0;
  v7 = [objc_opt_class() _propertiesForModel];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_255FC;
  v12[3] = &unk_1069B8;
  v12[4] = self;
  v12[5] = &v14;
  v13 = 0;
  v8 = [(HDClinicalAccountEventEntity *)self getValuesForProperties:v7 database:v6 error:&v13 handler:v12];
  v9 = v13;

  if (v8)
  {
    v10 = v15[5];
  }

  else
  {
    [NSError hk_assignError:a4 code:100 description:@"Unable to create account event model from row." underlyingError:v9];
    v10 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v10;
}

+ (id)fetchEventsForAccountWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_255E4;
  v23 = sub_255F4;
  v24 = 0;
  v10 = [v9 database];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_2591C;
  v15[3] = &unk_1067B0;
  v17 = &v19;
  v18 = a1;
  v11 = v8;
  v16 = v11;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v10 error:a5 block:v15];

  if (a5)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

+ (id)_fetchEventsForAccountWithIdentifier:(id)a3 database:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(NSMutableArray);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_255E4;
  v38 = sub_255F4;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v12 = [HDSQLiteComparisonPredicate predicateWithProperty:HDClinicalAccountEventEntityPropertyAccountIdentifier equalToValue:v9];
  v28 = a1;
  v29 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_25C24;
  v22[3] = &unk_1069E0;
  v27 = a2;
  v13 = v10;
  v23 = v13;
  v25 = &v34;
  v26 = &v30;
  v14 = v11;
  v24 = v14;
  v15 = [a1 enumerateEntitiesInDatabase:v13 predicate:v12 error:&v29 enumerationHandler:v22];
  v16 = v29;
  v17 = v16;
  if (v31[3])
  {
    if (v15)
    {
      v18 = [v14 copy];
      goto LABEL_11;
    }

    v19 = v16;
    if (v19)
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
    v19 = v35[5];
    if (v19)
    {
      if (a5)
      {
LABEL_9:
        v20 = v19;
        *a5 = v19;
        goto LABEL_10;
      }

      goto LABEL_6;
    }
  }

LABEL_10:

  v18 = 0;
LABEL_11:

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return v18;
}

+ (id)_wrapHKOptionalClinicalAccountCredentialStateInNSNumber:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_106A00[a3 - 1];
  }
}

+ (int64_t)_unwrapHKClinicalAccountCredentialStateFromNSNumber:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
    if (v5 < 3)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)_pruneEventsIfNeededInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 doubleForKey:@"HDClinicalAccountEventEntity_HealthRecordsPlugin_LastPrune"];
  v9 = v8;

  v10 = +[NSDate date];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  v13 = v9 + 604800.0;
  if (v9 <= 0.0 || v13 < v12)
  {
    if (![a1 _pruneEventsInDatabase:v6 error:{a4, v13}])
    {
      v16 = 0;
      goto LABEL_10;
    }

    v15 = +[NSUserDefaults standardUserDefaults];
    [v15 setDouble:@"HDClinicalAccountEventEntity_HealthRecordsPlugin_LastPrune" forKey:v12];
  }

  v16 = 1;
LABEL_10:

  return v16;
}

+ (BOOL)_pruneEventsInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = HDClinicalAccountEntityPropertyIdentifier;
  v8 = +[HDClinicalAccountEntity disambiguatedDatabaseTable];
  v9 = [NSString stringWithFormat:@"SELECT %@ FROM %@", v7, v8];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_26114;
  v27[3] = &unk_1064D8;
  v10 = objc_alloc_init(NSMutableArray);
  v28 = v10;
  if ([v6 executeUncachedSQL:v9 error:a4 bindingHandler:0 enumerationHandler:v27])
  {
    v11 = [a1 disambiguatedDatabaseTable];
    v12 = [NSString stringWithFormat:@"DELETE FROM %@ WHERE %@=? ORDER BY %@ DESC LIMIT -1 OFFSET 50", v11, HDClinicalAccountEventEntityPropertyAccountIdentifier, HDClinicalAccountEventEntityPropertyTimestamp];;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v21 = v10;
      v16 = *v24;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_26160;
          v22[3] = &unk_105DB8;
          v22[4] = v18;
          if (![v6 executeUncachedSQL:v12 error:a4 bindingHandler:v22 enumerationHandler:0])
          {
            v19 = 0;
            goto LABEL_13;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v19 = 1;
LABEL_13:
      v10 = v21;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end