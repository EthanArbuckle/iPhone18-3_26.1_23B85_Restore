@interface StoreKitMessagesDatabaseSession
- (BOOL)bundleIDHasMessagesForUserID:(id)d bundleID:(id)iD;
- (StoreKitMessagesDatabaseSession)initWithConnection:(id)connection;
- (id)bundleIDsWithMessagesForUserID:(id)d;
- (id)bundleIDsWithMessagesInBundleIDs:(id)ds accountID:(id)d;
- (id)messageForUserID:(id)d inApp:(id)app messageType:(id)type;
- (id)revocationsForUserID:(id)d inApp:(id)app;
@end

@implementation StoreKitMessagesDatabaseSession

- (StoreKitMessagesDatabaseSession)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = StoreKitMessagesDatabaseSession;
  v6 = [(StoreKitMessagesDatabaseSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (id)messageForUserID:(id)d inApp:(id)app messageType:(id)type
{
  dCopy = d;
  appCopy = app;
  typeCopy = type;
  v10 = [NSMutableArray alloc];
  v11 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"dsid", [dCopy longLongValue]);
  v31[0] = v11;
  v12 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:appCopy];
  v31[1] = v12;
  v13 = [NSArray arrayWithObjects:v31 count:2];
  v14 = [v10 initWithArray:v13];

  if (typeCopy)
  {
    v15 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"message_type", [typeCopy longLongValue]);
    [v14 addObject:v15];
  }

  v16 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v14];
  v30[0] = @"dsid";
  v30[1] = @"bundle_id";
  v30[2] = @"status";
  v30[3] = @"allow_developer_control";
  v30[4] = @"message_type";
  v17 = [NSArray arrayWithObjects:v30 count:5];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000752EC;
  v28 = sub_1000752FC;
  v29 = 0;
  connection = [(StoreKitMessagesDatabaseSession *)self connection];
  v19 = [(SQLiteEntity *)StoreKitMessagesDatabaseEntity queryOnConnection:connection predicate:v16];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100075304;
  v23[3] = &unk_100381158;
  v23[4] = &v24;
  [v19 enumeratePersistentIDsAndProperties:v17 usingBlock:v23];
  v20 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v20;
}

- (id)revocationsForUserID:(id)d inApp:(id)app
{
  dCopy = d;
  appCopy = app;
  v8 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"dsid", [dCopy longLongValue]);
  v30[0] = v8;
  v9 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:appCopy];
  v30[1] = v9;
  v10 = [NSArray arrayWithObjects:v30 count:2];
  v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  v29 = @"product_id";
  v12 = [NSArray arrayWithObjects:&v29 count:1];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000752EC;
  v27 = sub_1000752FC;
  v28 = objc_alloc_init(NSMutableArray);
  connection = [(StoreKitMessagesDatabaseSession *)self connection];
  v14 = [(SQLiteEntity *)StoreKitRevocationsDatabaseEntity queryOnConnection:connection predicate:v11];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10007573C;
  v19[3] = &unk_100382FC0;
  v15 = dCopy;
  v20 = v15;
  v16 = appCopy;
  v21 = v16;
  v22 = &v23;
  [v14 enumeratePersistentIDsAndProperties:v12 usingBlock:v19];
  v17 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v17;
}

- (id)bundleIDsWithMessagesForUserID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000752EC;
  v16 = sub_1000752FC;
  v17 = objc_alloc_init(NSMutableSet);
  v5 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"dsid", [dCopy longLongValue]);
  v18 = @"bundle_id";
  v6 = [NSArray arrayWithObjects:&v18 count:1];
  connection = [(StoreKitMessagesDatabaseSession *)self connection];
  v8 = [(SQLiteEntity *)StoreKitMessagesDatabaseEntity queryOnConnection:connection predicate:v5];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000759E8;
  v11[3] = &unk_100381158;
  v11[4] = &v12;
  [v8 enumeratePersistentIDsAndProperties:v6 usingBlock:v11];
  allObjects = [v13[5] allObjects];

  _Block_object_dispose(&v12, 8);

  return allObjects;
}

- (BOOL)bundleIDHasMessagesForUserID:(id)d bundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"dsid", [dCopy longLongValue]);
  v22[0] = v8;
  v9 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:iDCopy];
  v22[1] = v9;
  v10 = [NSArray arrayWithObjects:v22 count:2];
  v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  v21 = @"bundle_id";
  v12 = [NSArray arrayWithObjects:&v21 count:1];
  connection = [(StoreKitMessagesDatabaseSession *)self connection];
  v14 = [(SQLiteEntity *)StoreKitMessagesDatabaseEntity queryOnConnection:connection predicate:v11];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100075CA0;
  v16[3] = &unk_100381158;
  v16[4] = &v17;
  [v14 enumeratePersistentIDsAndProperties:v12 usingBlock:v16];
  LOBYTE(connection) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return connection & 1;
}

- (id)bundleIDsWithMessagesInBundleIDs:(id)ds accountID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  if (dsCopy)
  {
    v8 = [dsCopy count];
    allObjects = &__NSArray0__struct;
    if (dCopy && v8)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = sub_1000752EC;
      v23 = sub_1000752FC;
      v24 = objc_alloc_init(NSMutableSet);
      v10 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"dsid", [dCopy longLongValue]);
      v26[0] = v10;
      v11 = [SQLiteContainsPredicate containsPredicateWithProperty:@"bundle_id" values:dsCopy];
      v26[1] = v11;
      v12 = [NSArray arrayWithObjects:v26 count:2];
      v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

      v25 = @"bundle_id";
      v14 = [NSArray arrayWithObjects:&v25 count:1];
      connection = [(StoreKitMessagesDatabaseSession *)self connection];
      v16 = [(SQLiteEntity *)StoreKitMessagesDatabaseEntity queryOnConnection:connection predicate:v13];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100075F7C;
      v18[3] = &unk_100381158;
      v18[4] = &v19;
      [v16 enumeratePersistentIDsAndProperties:v14 usingBlock:v18];
      allObjects = [v20[5] allObjects];

      _Block_object_dispose(&v19, 8);
    }
  }

  else
  {
    allObjects = &__NSArray0__struct;
  }

  return allObjects;
}

@end