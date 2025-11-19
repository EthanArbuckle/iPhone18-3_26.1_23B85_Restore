@interface LegacyPendingTransactionsDatabaseSession
- (LegacyPendingTransactionsDatabaseSession)initWithConnection:(id)a3;
- (id)_inAppPendingTransactionsPropertyForKey:(id)a3 bundleID:(id)a4;
- (id)pendingLegacyTransactionsForBundleID:(id)a3 logKey:(id)a4 error:(id *)a5;
@end

@implementation LegacyPendingTransactionsDatabaseSession

- (LegacyPendingTransactionsDatabaseSession)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LegacyPendingTransactionsDatabaseSession;
  v6 = [(LegacyPendingTransactionsDatabaseSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (id)pendingLegacyTransactionsForBundleID:(id)a3 logKey:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10007C940;
  v23 = sub_10007C950;
  v24 = objc_alloc_init(NSMutableArray);
  v9 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" value:v7 comparisonType:1];
  v10 = [(LegacyPendingTransactionsDatabaseSession *)self connection];
  v11 = [(SQLiteEntity *)InAppPendingTransactionsDatabaseEntity queryOnConnection:v10 predicate:v9];

  v25[0] = @"transaction_id";
  v25[1] = @"original_transaction_id";
  v25[2] = @"product_id";
  v25[3] = @"item_id";
  v25[4] = @"transaction_date";
  v25[5] = @"original_transaction_date";
  v25[6] = @"quantity";
  v25[7] = @"request_data";
  v25[8] = @"transaction_receipt";
  v25[9] = @"receipt";
  v25[10] = @"assets";
  v12 = [NSArray arrayWithObjects:v25 count:11];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007C958;
  v16[3] = &unk_100381310;
  v13 = v7;
  v17 = v13;
  v18 = &v19;
  [v11 enumeratePersistentIDsAndProperties:v12 usingBlock:v16];
  v14 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v14;
}

- (id)_inAppPendingTransactionsPropertyForKey:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" value:v7 comparisonType:1];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10007C940;
  v22 = sub_10007C950;
  v23 = 0;
  v9 = [(LegacyPendingTransactionsDatabaseSession *)self connection];
  v10 = [(SQLiteEntity *)InAppPendingTransactionsPropertiesDatabaseEntity queryOnConnection:v9 predicate:v8];

  v24 = v6;
  v11 = [NSArray arrayWithObjects:&v24 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007CF48;
  v15[3] = &unk_100381360;
  v17 = &v18;
  v12 = v6;
  v16 = v12;
  [v10 enumeratePersistentIDsAndProperties:v11 usingBlock:v15];

  v13 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v13;
}

@end