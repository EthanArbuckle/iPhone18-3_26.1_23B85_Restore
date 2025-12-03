@interface LegacyPendingTransactionsDatabaseTransaction
- (BOOL)cacheLegacyTransactionsForBundleID:(id)d transactions:(id)transactions logKey:(id)key;
- (BOOL)clearLegacyTransactionsLastUpdatedForBundleID:(id)d;
- (BOOL)removeCachedLegacyTransactionWithID:(id)d forBundleID:(id)iD;
- (BOOL)removeCachedLegacyTransactionsForBundleID:(id)d;
- (BOOL)resetLegacyTransactionsLastUpdatedForBundleID:(id)d;
- (BOOL)setLegacyTransactionsLastUpdatedForBundleID:(id)d token:(id)token;
@end

@implementation LegacyPendingTransactionsDatabaseTransaction

- (BOOL)cacheLegacyTransactionsForBundleID:(id)d transactions:(id)transactions logKey:(id)key
{
  dCopy = d;
  transactionsCopy = transactions;
  keyCopy = key;
  v40 = dCopy;
  if (dCopy)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v9 = [transactionsCopy countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v44;
      existsInDatabase = 1;
      *&v10 = 138543874;
      v37 = v10;
      obj = transactionsCopy;
      do
      {
        v14 = 0;
        do
        {
          if (*v44 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v43 + 1) + 8 * v14);
          v16 = [v15 objectForKeyedSubscript:{@"tid", v37}];
          if ([v16 length])
          {
            v17 = [NSMutableDictionary dictionaryWithCapacity:12];
            [v17 setObject:v40 forKeyedSubscript:@"bundle_id"];
            [v17 setObject:v16 forKeyedSubscript:@"transaction_id"];
            v18 = [v15 objectForKeyedSubscript:@"otid"];
            [v17 setObject:v18 forKeyedSubscript:@"original_transaction_id"];

            v19 = [v15 objectForKeyedSubscript:off_1003CB1A8];
            [v17 setObject:v19 forKeyedSubscript:@"product_id"];

            v20 = [v15 objectForKeyedSubscript:off_1003CAFC8];
            [v17 setObject:v20 forKeyedSubscript:@"item_id"];

            v21 = [v15 objectForKeyedSubscript:@"odate"];
            [v17 setObject:v21 forKeyedSubscript:@"transaction_date"];

            v22 = [v15 objectForKeyedSubscript:@"date"];
            [v17 setObject:v22 forKeyedSubscript:@"original_transaction_date"];

            v23 = [v15 objectForKeyedSubscript:@"rcpt"];
            [v17 setObject:v23 forKeyedSubscript:@"receipt"];

            v24 = [v15 objectForKeyedSubscript:off_1003CB1B0];
            [v17 setObject:v24 forKeyedSubscript:@"quantity"];

            v25 = [v15 objectForKeyedSubscript:off_1003CB1B8];
            [v17 setObject:v25 forKeyedSubscript:@"request_data"];

            v26 = [v15 objectForKeyedSubscript:off_1003CB110];
            [v17 setObject:v26 forKeyedSubscript:@"transaction_receipt"];

            v27 = [v15 objectForKeyedSubscript:@"assets"];
            if (v27)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = 0;
                v28 = [NSKeyedArchiver archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v42];
                v29 = v42;
                v30 = v29;
                if (!v28 || v29)
                {
                  if (qword_1003D39A8 != -1)
                  {
                    sub_1002C7198();
                  }

                  v31 = qword_1003D3988;
                  if (os_log_type_enabled(qword_1003D3988, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v37;
                    selfCopy = self;
                    v49 = 2114;
                    v50 = keyCopy;
                    v51 = 2114;
                    v52 = v30;
                    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[%{public}@][%{public}@] Error caching assets: %{public}@", buf, 0x20u);
                  }

                  existsInDatabase = 0;
                }

                [v17 setObject:v28 forKeyedSubscript:@"assets"];
              }
            }

            v32 = [InAppPendingTransactionsDatabaseEntity alloc];
            connection = [(LegacyPendingTransactionsDatabaseSession *)self connection];
            v34 = [(SQLiteEntity *)v32 initWithPropertyValues:v17 onConnection:connection];

            if (existsInDatabase)
            {
              existsInDatabase = [(SQLiteEntity *)v34 existsInDatabase];
            }

            else
            {
              existsInDatabase = 0;
            }
          }

          v14 = v14 + 1;
        }

        while (v11 != v14);
        transactionsCopy = obj;
        v11 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v11);
    }

    else
    {
      existsInDatabase = 1;
    }
  }

  else
  {
    if (qword_1003D39A8 != -1)
    {
      sub_1002C71C0();
    }

    v35 = qword_1003D3988;
    if (os_log_type_enabled(qword_1003D3988, OS_LOG_TYPE_ERROR))
    {
      sub_1002C71D4(self, keyCopy, v35);
    }

    existsInDatabase = 0;
  }

  return existsInDatabase & 1;
}

- (BOOL)clearLegacyTransactionsLastUpdatedForBundleID:(id)d
{
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:d];
  connection = [(LegacyPendingTransactionsDatabaseSession *)self connection];
  v6 = [(SQLiteEntity *)InAppPendingTransactionsPropertiesDatabaseEntity queryOnConnection:connection predicate:v4];

  LOBYTE(connection) = [v6 deleteAllEntities];
  return connection;
}

- (BOOL)removeCachedLegacyTransactionsForBundleID:(id)d
{
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:d];
  connection = [(LegacyPendingTransactionsDatabaseSession *)self connection];
  v6 = [(SQLiteEntity *)InAppPendingTransactionsDatabaseEntity queryOnConnection:connection predicate:v4];

  LOBYTE(connection) = [v6 deleteAllEntities];
  return connection;
}

- (BOOL)removeCachedLegacyTransactionWithID:(id)d forBundleID:(id)iD
{
  dCopy = d;
  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:iD];
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"transaction_id" equalToValue:dCopy];

  v14[0] = v7;
  v14[1] = v8;
  v9 = [NSArray arrayWithObjects:v14 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  connection = [(LegacyPendingTransactionsDatabaseSession *)self connection];
  v12 = [(SQLiteEntity *)InAppPendingTransactionsDatabaseEntity queryOnConnection:connection predicate:v10];

  LOBYTE(connection) = [v12 deleteAllEntities];
  return connection;
}

- (BOOL)setLegacyTransactionsLastUpdatedForBundleID:(id)d token:(id)token
{
  tokenCopy = token;
  dCopy = d;
  v8 = [NSMutableDictionary dictionaryWithCapacity:3];
  [v8 setObject:dCopy forKeyedSubscript:@"bundle_id"];

  [v8 setObject:tokenCopy forKeyedSubscript:@"token"];
  v9 = +[NSDate now];
  [v8 setObject:v9 forKeyedSubscript:@"last_updated"];

  v10 = [InAppPendingTransactionsPropertiesDatabaseEntity alloc];
  connection = [(LegacyPendingTransactionsDatabaseSession *)self connection];
  v12 = [(SQLiteEntity *)v10 initWithPropertyValues:v8 onConnection:connection];

  LOBYTE(connection) = [(SQLiteEntity *)v12 existsInDatabase];
  return connection;
}

- (BOOL)resetLegacyTransactionsLastUpdatedForBundleID:(id)d
{
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:d];
  connection = [(LegacyPendingTransactionsDatabaseSession *)self connection];
  v6 = [(SQLiteEntity *)InAppPendingTransactionsPropertiesDatabaseEntity anyOnConnection:connection predicate:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = +[NSDate distantPast];
    v8 = [v6 setValue:v7 forProperty:@"last_updated"];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end