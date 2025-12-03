@interface HDClinicalAPIReminderEntity
+ (BOOL)_insertReminder:(id)reminder profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (BOOL)deleteReminder:(id)reminder profile:(id)profile error:(id *)error;
+ (BOOL)deleteRemindersForSourceWithBundleIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)_entityForAnyReminderWithSource:(id)source transaction:(id)transaction error:(id *)error;
+ (id)_entityForReminder:(id)reminder transaction:(id)transaction error:(id *)error;
+ (id)_firstQueryResultAsReminder:(id)reminder profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)_predicateForPostedReminders;
+ (id)_predicateForReminderWithSourceBundleIdentifier:(id)identifier;
+ (id)_predicateForReminderWithSourceEntity:(id)entity;
+ (id)_predicateForUnpostedReminders;
+ (id)_queryForLastPostedReminderInTransaction:(id)transaction;
+ (id)_queryForNextScheduledReminderInTransaction:(id)transaction;
+ (id)_reminderForSource:(id)source profile:(id)profile error:(id *)error;
+ (id)_reminderForSource:(id)source profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)databaseTable;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)foreignKeys;
+ (id)joinClausesForProperty:(id)property;
+ (id)lastPostedReminderWithProfile:(id)profile error:(id *)error;
+ (id)nextScheduledReminderWithProfile:(id)profile error:(id *)error;
+ (id)reminderForSource:(id)source createIfNecessary:(BOOL)necessary profile:(id)profile error:(id *)error;
+ (id)setReminderPosted:(id)posted postDate:(id)date profile:(id)profile error:(id *)error;
- (id)_instantiateObjectWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
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

+ (id)joinClausesForProperty:(id)property
{
  propertyCopy = property;
  v5 = objc_alloc_init(NSMutableSet);
  if (([propertyCopy isEqualToString:@"logical_sources.bundle_id"] & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"sources.deleted"))
  {
    disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
    v7 = objc_opt_class();
    v8 = HDSQLEntityPropertyPersistentID;
    v9 = [HDSQLiteJoinClause innerJoinClauseFromTable:disambiguatedDatabaseTable toTargetEntity:v7 as:0 localReference:@"source_id" targetKey:HDSQLEntityPropertyPersistentID];
    [v5 addObject:v9];

    disambiguatedDatabaseTable2 = [objc_opt_class() disambiguatedDatabaseTable];
    v11 = [HDSQLiteJoinClause innerJoinClauseFromTable:disambiguatedDatabaseTable2 toTargetEntity:objc_opt_class() as:0 localReference:HDSourceEntityPropertyLogicalSourceID targetKey:v8];
    [v5 addObject:v11];
  }

  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___HDClinicalAPIReminderEntity;
  v12 = objc_msgSendSuper2(&v16, "joinClausesForProperty:", propertyCopy);
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

+ (id)nextScheduledReminderWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_7A39C;
  v20 = sub_7A3AC;
  v21 = 0;
  database = [profileCopy database];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_7A3B4;
  v12[3] = &unk_1067B0;
  v14 = &v16;
  selfCopy = self;
  v8 = profileCopy;
  v13 = v8;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v12];

  if (error)
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

+ (id)lastPostedReminderWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_7A39C;
  v20 = sub_7A3AC;
  v21 = 0;
  database = [profileCopy database];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_7A5F8;
  v12[3] = &unk_1067B0;
  v14 = &v16;
  selfCopy = self;
  v8 = profileCopy;
  v13 = v8;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v12];

  if (error)
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

+ (id)_entityForReminder:(id)reminder transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  source = [reminder source];
  v10 = [self _entityForAnyReminderWithSource:source transaction:transactionCopy error:error];

  return v10;
}

- (id)_instantiateObjectWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  profileCopy = profile;
  transactionCopy = transaction;
  v10 = [objc_opt_class() entityEncoderForProfile:profileCopy transaction:transactionCopy purpose:1 encodingOptions:0 authorizationFilter:0];
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
  orderedProperties = [v10 orderedProperties];
  unprotectedDatabase = [transactionCopy unprotectedDatabase];
  v26 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_7A9E8;
  v21[3] = &unk_1086E0;
  v24 = &v33;
  v13 = v10;
  v22 = v13;
  selfCopy = self;
  v25 = &v27;
  v14 = [(HDClinicalAPIReminderEntity *)self getValuesForProperties:orderedProperties database:unprotectedDatabase error:&v26 handler:v21];
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

    if (error)
    {
      v18 = v17;
      *error = v17;
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

+ (id)_entityForAnyReminderWithSource:(id)source transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  bundleIdentifier = [source bundleIdentifier];
  v10 = [self _predicateForReminderWithSourceBundleIdentifier:bundleIdentifier];

  unprotectedDatabase = [transactionCopy unprotectedDatabase];

  v12 = [self anyInDatabase:unprotectedDatabase predicate:v10 error:error];

  return v12;
}

+ (id)_reminderForSource:(id)source profile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  profileCopy = profile;
  v12 = [self _entityForAnyReminderWithSource:source transaction:transactionCopy error:error];
  v13 = [v12 _instantiateObjectWithProfile:profileCopy transaction:transactionCopy error:error];

  return v13;
}

+ (id)_reminderForSource:(id)source profile:(id)profile error:(id *)error
{
  sourceCopy = source;
  profileCopy = profile;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_7A39C;
  v25 = sub_7A3AC;
  v26 = 0;
  database = [profileCopy database];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_7AD68;
  v16[3] = &unk_108708;
  v19 = &v21;
  selfCopy = self;
  v11 = sourceCopy;
  v17 = v11;
  v12 = profileCopy;
  v18 = v12;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v16];

  if (error)
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

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v16 = [[_HDClinicalAPIReminderEntityEncoder alloc] initWithHealthEntityClass:self profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v16;
}

+ (BOOL)_insertReminder:(id)reminder profile:(id)profile transaction:(id)transaction error:(id *)error
{
  reminderCopy = reminder;
  transactionCopy = transaction;
  profileCopy = profile;
  source = [reminderCopy source];
  sourceManager = [profileCopy sourceManager];

  v29 = 0;
  v15 = [sourceManager sourceEntityForClientSource:source createOrUpdateIfNecessary:0 error:&v29];
  v16 = v29;

  if (v15)
  {
    v30[0] = @"source_id";
    v30[1] = @"date_created";
    v30[2] = @"date_posted";
    v17 = [NSArray arrayWithObjects:v30 count:3];
    unprotectedDatabase = [transactionCopy unprotectedDatabase];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_7B15C;
    v26[3] = &unk_1065E0;
    v27 = v15;
    v28 = reminderCopy;
    v19 = [self insertOrReplaceEntity:0 database:unprotectedDatabase properties:v17 error:error bindingHandler:v26];
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

    if (error)
    {
      v24 = v17;
      v20 = 0;
      *error = v17;
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

+ (id)reminderForSource:(id)source createIfNecessary:(BOOL)necessary profile:(id)profile error:(id *)error
{
  sourceCopy = source;
  profileCopy = profile;
  v12 = profileCopy;
  if (necessary)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_7A39C;
    v27 = sub_7A3AC;
    v28 = 0;
    database = [profileCopy database];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_7B3B8;
    v18[3] = &unk_108708;
    v21 = &v23;
    selfCopy = self;
    v19 = sourceCopy;
    v20 = v12;
    v14 = [self performWriteTransactionWithHealthDatabase:database error:error block:v18];

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
    v16 = [self _reminderForSource:sourceCopy profile:profileCopy error:error];
  }

  return v16;
}

+ (id)setReminderPosted:(id)posted postDate:(id)date profile:(id)profile error:(id *)error
{
  postedCopy = posted;
  dateCopy = date;
  profileCopy = profile;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_7A39C;
  v30 = sub_7A3AC;
  v31 = 0;
  database = [profileCopy database];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_7B6A8;
  v20[3] = &unk_108730;
  selfCopy = self;
  v14 = postedCopy;
  v21 = v14;
  v15 = dateCopy;
  v22 = v15;
  v24 = &v26;
  v16 = profileCopy;
  v23 = v16;
  LODWORD(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v20];

  if (error)
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

+ (BOOL)deleteReminder:(id)reminder profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  source = [reminder source];
  bundleIdentifier = [source bundleIdentifier];
  LOBYTE(error) = [self deleteRemindersForSourceWithBundleIdentifier:bundleIdentifier profile:profileCopy error:error];

  return error;
}

+ (BOOL)deleteRemindersForSourceWithBundleIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  database = [profileCopy database];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_7BA70;
  v14[3] = &unk_106500;
  v15 = profileCopy;
  v16 = identifierCopy;
  selfCopy = self;
  v11 = identifierCopy;
  v12 = profileCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v14];

  return error;
}

+ (id)_queryForLastPostedReminderInTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = objc_alloc_init(HDSQLiteQueryDescriptor);
  [v5 setEntityClass:self];
  [v5 setLimitCount:1];
  v6 = [HDSQLiteOrderingTerm orderingTermWithProperty:@"date_posted" entityClass:self ascending:0];
  v13 = v6;
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  [v5 setOrderingTerms:v7];

  _predicateForPostedReminders = [self _predicateForPostedReminders];
  [v5 setPredicate:_predicateForPostedReminders];

  v9 = [HDSQLiteQuery alloc];
  unprotectedDatabase = [transactionCopy unprotectedDatabase];

  v11 = [v9 initWithDatabase:unprotectedDatabase descriptor:v5];

  return v11;
}

+ (id)_queryForNextScheduledReminderInTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = objc_alloc_init(HDSQLiteQueryDescriptor);
  [v5 setEntityClass:self];
  [v5 setLimitCount:1];
  v6 = [HDSQLiteOrderingTerm orderingTermWithProperty:@"date_created" entityClass:self ascending:1];
  v13 = v6;
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  [v5 setOrderingTerms:v7];

  _predicateForUnpostedReminders = [self _predicateForUnpostedReminders];
  [v5 setPredicate:_predicateForUnpostedReminders];

  v9 = [HDSQLiteQuery alloc];
  unprotectedDatabase = [transactionCopy unprotectedDatabase];

  v11 = [v9 initWithDatabase:unprotectedDatabase descriptor:v5];

  return v11;
}

+ (id)_firstQueryResultAsReminder:(id)reminder profile:(id)profile transaction:(id)transaction error:(id *)error
{
  reminderCopy = reminder;
  profileCopy = profile;
  transactionCopy = transaction;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_7A39C;
  v25 = sub_7A3AC;
  v26 = 0;
  v12 = [objc_opt_class() entityEncoderForProfile:profileCopy transaction:transactionCopy purpose:1 encodingOptions:0 authorizationFilter:0];
  orderedProperties = [v12 orderedProperties];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_7C000;
  v18[3] = &unk_108758;
  v20 = &v21;
  v14 = v12;
  v19 = v14;
  LODWORD(error) = [reminderCopy enumeratePersistentIDsAndProperties:orderedProperties error:error enumerationHandler:v18];

  if (error)
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

+ (id)_predicateForReminderWithSourceBundleIdentifier:(id)identifier
{
  v4 = [HDSQLiteComparisonPredicate predicateWithProperty:@"logical_sources.bundle_id" equalToValue:identifier];
  _predicateForRemindersWithNotDeletedSources = [self _predicateForRemindersWithNotDeletedSources];
  v6 = [HDSQLiteCompoundPredicate compoundPredicateWithPredicate:v4 otherPredicate:_predicateForRemindersWithNotDeletedSources];

  return v6;
}

+ (id)_predicateForReminderWithSourceEntity:(id)entity
{
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [entity persistentID]);
  v4 = [HDSQLiteComparisonPredicate predicateWithProperty:@"source_id" equalToValue:v3];

  return v4;
}

+ (id)_predicateForPostedReminders
{
  v3 = [HDSQLiteNullPredicate isNotNullPredicateWithProperty:@"date_posted"];
  _predicateForRemindersWithNotDeletedSources = [self _predicateForRemindersWithNotDeletedSources];
  v5 = [HDSQLiteCompoundPredicate compoundPredicateWithPredicate:v3 otherPredicate:_predicateForRemindersWithNotDeletedSources];

  return v5;
}

+ (id)_predicateForUnpostedReminders
{
  v3 = [HDSQLiteNullPredicate isNullPredicateWithProperty:@"date_posted"];
  _predicateForRemindersWithNotDeletedSources = [self _predicateForRemindersWithNotDeletedSources];
  v5 = [HDSQLiteCompoundPredicate compoundPredicateWithPredicate:v3 otherPredicate:_predicateForRemindersWithNotDeletedSources];

  return v5;
}

@end