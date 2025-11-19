@interface StoreKitMessagesDatabaseSession
- (BOOL)bundleIDHasMessagesForUserID:(id)a3 bundleID:(id)a4;
- (StoreKitMessagesDatabaseSession)initWithConnection:(id)a3;
- (id)bundleIDsWithMessagesForUserID:(id)a3;
- (id)bundleIDsWithMessagesInBundleIDs:(id)a3 accountID:(id)a4;
- (id)messageForUserID:(id)a3 inApp:(id)a4 messageType:(id)a5;
- (id)revocationsForUserID:(id)a3 inApp:(id)a4;
@end

@implementation StoreKitMessagesDatabaseSession

- (StoreKitMessagesDatabaseSession)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = StoreKitMessagesDatabaseSession;
  v6 = [(StoreKitMessagesDatabaseSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (id)messageForUserID:(id)a3 inApp:(id)a4 messageType:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [NSMutableArray alloc];
  v11 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"dsid", [v7 longLongValue]);
  v31[0] = v11;
  v12 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v8];
  v31[1] = v12;
  v13 = [NSArray arrayWithObjects:v31 count:2];
  v14 = [v10 initWithArray:v13];

  if (v9)
  {
    v15 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"message_type", [v9 longLongValue]);
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
  v18 = [(StoreKitMessagesDatabaseSession *)self connection];
  v19 = [(SQLiteEntity *)StoreKitMessagesDatabaseEntity queryOnConnection:v18 predicate:v16];

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

- (id)revocationsForUserID:(id)a3 inApp:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"dsid", [v6 longLongValue]);
  v30[0] = v8;
  v9 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v7];
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
  v13 = [(StoreKitMessagesDatabaseSession *)self connection];
  v14 = [(SQLiteEntity *)StoreKitRevocationsDatabaseEntity queryOnConnection:v13 predicate:v11];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10007573C;
  v19[3] = &unk_100382FC0;
  v15 = v6;
  v20 = v15;
  v16 = v7;
  v21 = v16;
  v22 = &v23;
  [v14 enumeratePersistentIDsAndProperties:v12 usingBlock:v19];
  v17 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v17;
}

- (id)bundleIDsWithMessagesForUserID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000752EC;
  v16 = sub_1000752FC;
  v17 = objc_alloc_init(NSMutableSet);
  v5 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"dsid", [v4 longLongValue]);
  v18 = @"bundle_id";
  v6 = [NSArray arrayWithObjects:&v18 count:1];
  v7 = [(StoreKitMessagesDatabaseSession *)self connection];
  v8 = [(SQLiteEntity *)StoreKitMessagesDatabaseEntity queryOnConnection:v7 predicate:v5];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000759E8;
  v11[3] = &unk_100381158;
  v11[4] = &v12;
  [v8 enumeratePersistentIDsAndProperties:v6 usingBlock:v11];
  v9 = [v13[5] allObjects];

  _Block_object_dispose(&v12, 8);

  return v9;
}

- (BOOL)bundleIDHasMessagesForUserID:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"dsid", [v6 longLongValue]);
  v22[0] = v8;
  v9 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v7];
  v22[1] = v9;
  v10 = [NSArray arrayWithObjects:v22 count:2];
  v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  v21 = @"bundle_id";
  v12 = [NSArray arrayWithObjects:&v21 count:1];
  v13 = [(StoreKitMessagesDatabaseSession *)self connection];
  v14 = [(SQLiteEntity *)StoreKitMessagesDatabaseEntity queryOnConnection:v13 predicate:v11];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100075CA0;
  v16[3] = &unk_100381158;
  v16[4] = &v17;
  [v14 enumeratePersistentIDsAndProperties:v12 usingBlock:v16];
  LOBYTE(v13) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v13 & 1;
}

- (id)bundleIDsWithMessagesInBundleIDs:(id)a3 accountID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 count];
    v9 = &__NSArray0__struct;
    if (v7 && v8)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = sub_1000752EC;
      v23 = sub_1000752FC;
      v24 = objc_alloc_init(NSMutableSet);
      v10 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"dsid", [v7 longLongValue]);
      v26[0] = v10;
      v11 = [SQLiteContainsPredicate containsPredicateWithProperty:@"bundle_id" values:v6];
      v26[1] = v11;
      v12 = [NSArray arrayWithObjects:v26 count:2];
      v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

      v25 = @"bundle_id";
      v14 = [NSArray arrayWithObjects:&v25 count:1];
      v15 = [(StoreKitMessagesDatabaseSession *)self connection];
      v16 = [(SQLiteEntity *)StoreKitMessagesDatabaseEntity queryOnConnection:v15 predicate:v13];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100075F7C;
      v18[3] = &unk_100381158;
      v18[4] = &v19;
      [v16 enumeratePersistentIDsAndProperties:v14 usingBlock:v18];
      v9 = [v20[5] allObjects];

      _Block_object_dispose(&v19, 8);
    }
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  return v9;
}

@end