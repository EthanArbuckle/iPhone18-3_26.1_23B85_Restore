@interface HDClinicalAPIReminderEntity
+ (BOOL)_insertReminder:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)deleteReminder:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)deleteRemindersForSourceWithBundleIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)_entityForAnyReminderWithSource:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)_entityForReminder:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)_firstQueryResultAsReminder:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (id)_predicateForPostedReminders;
+ (id)_predicateForReminderWithSourceBundleIdentifier:(id)a3;
+ (id)_predicateForReminderWithSourceEntity:(id)a3;
+ (id)_predicateForUnpostedReminders;
+ (id)_queryForLastPostedReminderInTransaction:(id)a3;
+ (id)_queryForNextScheduledReminderInTransaction:(id)a3;
+ (id)_reminderForSource:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)_reminderForSource:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (id)databaseTable;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)foreignKeys;
+ (id)joinClausesForProperty:(id)a3;
+ (id)lastPostedReminderWithProfile:(id)a3 error:(id *)a4;
+ (id)nextScheduledReminderWithProfile:(id)a3 error:(id *)a4;
+ (id)reminderForSource:(id)a3 createIfNecessary:(BOOL)a4 profile:(id)a5 error:(id *)a6;
+ (id)setReminderPosted:(id)a3 postDate:(id)a4 profile:(id)a5 error:(id *)a6;
- (id)_instantiateObjectWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
@end

@implementation HDClinicalAPIReminderEntity

+ (id)databaseTable
{
  v2 = [[NSString alloc] initWithFormat:@"%@_api_reminders", @"HealthRecordsPlugin"];

  return v2;
}

+ (id)foreignKeys
{
  v5 = @"source_id";
  v2 = +[HDSourceEntity defaultForeignKey];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)joinClausesForProperty:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  if (([v4 isEqualToString:@"logical_sources.bundle_id"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"sources.deleted"))
  {
    v6 = [a1 disambiguatedDatabaseTable];
    v7 = objc_opt_class();
    v8 = HDSQLEntityPropertyPersistentID;
    v9 = [HDSQLiteJoinClause innerJoinClauseFromTable:v6 toTargetEntity:v7 as:0 localReference:@"source_id" targetKey:HDSQLEntityPropertyPersistentID];
    [v5 addObject:v9];

    v10 = [objc_opt_class() disambiguatedDatabaseTable];
    v11 = [HDSQLiteJoinClause innerJoinClauseFromTable:v10 toTargetEntity:objc_opt_class() as:0 localReference:HDSourceEntityPropertyLogicalSourceID targetKey:v8];
    [v5 addObject:v11];
  }

  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS___HDClinicalAPIReminderEntity;
  v12 = objc_msgSendSuper2(&v16, "joinClausesForProperty:", v4);
  if (v12)
  {
    [v5 unionSet:v12];
  }

  if ([v5 count])
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

+ (id)nextScheduledReminderWithProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_7A39C;
  v20 = sub_7A3AC;
  v21 = 0;
  v7 = [v6 database];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_7A3B4;
  v12[3] = &unk_1067B0;
  v14 = &v16;
  v15 = a1;
  v8 = v6;
  v13 = v8;
  LODWORD(a4) = [a1 performReadTransactionWithHealthDatabase:v7 error:a4 block:v12];

  if (a4)
  {
    v9 = v17[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);

  return v10;
}

+ (id)lastPostedReminderWithProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_7A39C;
  v20 = sub_7A3AC;
  v21 = 0;
  v7 = [v6 database];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_7A5F8;
  v12[3] = &unk_1067B0;
  v14 = &v16;
  v15 = a1;
  v8 = v6;
  v13 = v8;
  LODWORD(a4) = [a1 performReadTransactionWithHealthDatabase:v7 error:a4 block:v12];

  if (a4)
  {
    v9 = v17[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);

  return v10;
}

+ (id)_entityForReminder:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 source];
  v10 = [a1 _entityForAnyReminderWithSource:v9 transaction:v8 error:a5];

  return v10;
}

- (id)_instantiateObjectWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_opt_class() entityEncoderForProfile:v8 transaction:v9 purpose:1 encodingOptions:0 authorizationFilter:0];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_7A39C;
  v37 = sub_7A3AC;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_7A39C;
  v31 = sub_7A3AC;
  v32 = 0;
  v11 = [v10 orderedProperties];
  v12 = [v9 unprotectedDatabase];
  v26 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_7A9E8;
  v21[3] = &unk_1086E0;
  v24 = &v33;
  v13 = v10;
  v22 = v13;
  v23 = self;
  v25 = &v27;
  v14 = [(HDClinicalAPIReminderEntity *)self getValuesForProperties:v11 database:v12 error:&v26 handler:v21];
  v15 = v26;

  if (!v34[5])
  {
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v28[5];
      if (!v17)
      {
        goto LABEL_10;
      }
    }

    if (a5)
    {
      v18 = v17;
      *a5 = v17;
    }

    else
    {
      _HKLogDroppedError();
    }

LABEL_10:

    if (v14)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  if (v14)
  {
LABEL_3:
    v16 = v34[5];
    goto LABEL_12;
  }

LABEL_11:
  v16 = 0;
LABEL_12:
  v19 = v16;

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v19;
}

+ (id)_entityForAnyReminderWithSource:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 bundleIdentifier];
  v10 = [a1 _predicateForReminderWithSourceBundleIdentifier:v9];

  v11 = [v8 unprotectedDatabase];

  v12 = [a1 anyInDatabase:v11 predicate:v10 error:a5];

  return v12;
}

+ (id)_reminderForSource:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = [a1 _entityForAnyReminderWithSource:a3 transaction:v10 error:a6];
  v13 = [v12 _instantiateObjectWithProfile:v11 transaction:v10 error:a6];

  return v13;
}

+ (id)_reminderForSource:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_7A39C;
  v25 = sub_7A3AC;
  v26 = 0;
  v10 = [v9 database];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_7AD68;
  v16[3] = &unk_108708;
  v19 = &v21;
  v20 = a1;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v10 error:a5 block:v16];

  if (a5)
  {
    v13 = v22[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  _Block_object_dispose(&v21, 8);

  return v14;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [[_HDClinicalAPIReminderEntityEncoder alloc] initWithHealthEntityClass:a1 profile:v15 transaction:v14 purpose:a5 encodingOptions:v13 authorizationFilter:v12];

  return v16;
}

+ (BOOL)_insertReminder:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = [v10 source];
  v14 = [v12 sourceManager];

  v29 = 0;
  v15 = [v14 sourceEntityForClientSource:v13 createOrUpdateIfNecessary:0 error:&v29];
  v16 = v29;

  if (v15)
  {
    v30[0] = @"source_id";
    v30[1] = @"date_created";
    v30[2] = @"date_posted";
    v17 = [NSArray arrayWithObjects:v30 count:3];
    v18 = [v11 unprotectedDatabase];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_7B15C;
    v26[3] = &unk_1065E0;
    v27 = v15;
    v28 = v10;
    v19 = [a1 insertOrReplaceEntity:0 database:v18 properties:v17 error:a6 bindingHandler:v26];
    v20 = v19 != 0;
  }

  else
  {
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v21 = HKSensitiveLogItem();
      v22 = HKSensitiveLogItem();
      v23 = [NSError hk_error:100 format:@"Failed to insert reminder %@: source %@ not found.", v21, v22];

      v17 = v23;
      if (!v17)
      {
        v16 = 0;
        v20 = 0;
        goto LABEL_11;
      }
    }

    if (a6)
    {
      v24 = v17;
      v20 = 0;
      *a6 = v17;
    }

    else
    {
      _HKLogDroppedError();
      v20 = 0;
    }

    v16 = v17;
  }

LABEL_11:
  return v20;
}

+ (id)reminderForSource:(id)a3 createIfNecessary:(BOOL)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (a4)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_7A39C;
    v27 = sub_7A3AC;
    v28 = 0;
    v13 = [v11 database];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_7B3B8;
    v18[3] = &unk_108708;
    v21 = &v23;
    v22 = a1;
    v19 = v10;
    v20 = v12;
    v14 = [a1 performWriteTransactionWithHealthDatabase:v13 error:a6 block:v18];

    if (v14)
    {
      v15 = v24[5];
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v16 = [a1 _reminderForSource:v10 profile:v11 error:a6];
  }

  return v16;
}

+ (id)setReminderPosted:(id)a3 postDate:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_7A39C;
  v30 = sub_7A3AC;
  v31 = 0;
  v13 = [v12 database];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_7B6A8;
  v20[3] = &unk_108730;
  v25 = a1;
  v14 = v10;
  v21 = v14;
  v15 = v11;
  v22 = v15;
  v24 = &v26;
  v16 = v12;
  v23 = v16;
  LODWORD(a6) = [a1 performWriteTransactionWithHealthDatabase:v13 error:a6 block:v20];

  if (a6)
  {
    v17 = v27[5];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  _Block_object_dispose(&v26, 8);

  return v18;
}

+ (BOOL)deleteReminder:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 source];
  v10 = [v9 bundleIdentifier];
  LOBYTE(a5) = [a1 deleteRemindersForSourceWithBundleIdentifier:v10 profile:v8 error:a5];

  return a5;
}

+ (BOOL)deleteRemindersForSourceWithBundleIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 database];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_7BA70;
  v14[3] = &unk_106500;
  v15 = v9;
  v16 = v8;
  v17 = a1;
  v11 = v8;
  v12 = v9;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:v10 error:a5 block:v14];

  return a5;
}

+ (id)_queryForLastPostedReminderInTransaction:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HDSQLiteQueryDescriptor);
  [v5 setEntityClass:a1];
  [v5 setLimitCount:1];
  v6 = [HDSQLiteOrderingTerm orderingTermWithProperty:@"date_posted" entityClass:a1 ascending:0];
  v13 = v6;
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  [v5 setOrderingTerms:v7];

  v8 = [a1 _predicateForPostedReminders];
  [v5 setPredicate:v8];

  v9 = [HDSQLiteQuery alloc];
  v10 = [v4 unprotectedDatabase];

  v11 = [v9 initWithDatabase:v10 descriptor:v5];

  return v11;
}

+ (id)_queryForNextScheduledReminderInTransaction:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HDSQLiteQueryDescriptor);
  [v5 setEntityClass:a1];
  [v5 setLimitCount:1];
  v6 = [HDSQLiteOrderingTerm orderingTermWithProperty:@"date_created" entityClass:a1 ascending:1];
  v13 = v6;
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  [v5 setOrderingTerms:v7];

  v8 = [a1 _predicateForUnpostedReminders];
  [v5 setPredicate:v8];

  v9 = [HDSQLiteQuery alloc];
  v10 = [v4 unprotectedDatabase];

  v11 = [v9 initWithDatabase:v10 descriptor:v5];

  return v11;
}

+ (id)_firstQueryResultAsReminder:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_7A39C;
  v25 = sub_7A3AC;
  v26 = 0;
  v12 = [objc_opt_class() entityEncoderForProfile:v10 transaction:v11 purpose:1 encodingOptions:0 authorizationFilter:0];
  v13 = [v12 orderedProperties];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_7C000;
  v18[3] = &unk_108758;
  v20 = &v21;
  v14 = v12;
  v19 = v14;
  LODWORD(a6) = [v9 enumeratePersistentIDsAndProperties:v13 error:a6 enumerationHandler:v18];

  if (a6)
  {
    v15 = v22[5];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  _Block_object_dispose(&v21, 8);

  return v16;
}

+ (id)_predicateForReminderWithSourceBundleIdentifier:(id)a3
{
  v4 = [HDSQLiteComparisonPredicate predicateWithProperty:@"logical_sources.bundle_id" equalToValue:a3];
  v5 = [a1 _predicateForRemindersWithNotDeletedSources];
  v6 = [HDSQLiteCompoundPredicate compoundPredicateWithPredicate:v4 otherPredicate:v5];

  return v6;
}

+ (id)_predicateForReminderWithSourceEntity:(id)a3
{
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [a3 persistentID]);
  v4 = [HDSQLiteComparisonPredicate predicateWithProperty:@"source_id" equalToValue:v3];

  return v4;
}

+ (id)_predicateForPostedReminders
{
  v3 = [HDSQLiteNullPredicate isNotNullPredicateWithProperty:@"date_posted"];
  v4 = [a1 _predicateForRemindersWithNotDeletedSources];
  v5 = [HDSQLiteCompoundPredicate compoundPredicateWithPredicate:v3 otherPredicate:v4];

  return v5;
}

+ (id)_predicateForUnpostedReminders
{
  v3 = [HDSQLiteNullPredicate isNullPredicateWithProperty:@"date_posted"];
  v4 = [a1 _predicateForRemindersWithNotDeletedSources];
  v5 = [HDSQLiteCompoundPredicate compoundPredicateWithPredicate:v3 otherPredicate:v4];

  return v5;
}

@end