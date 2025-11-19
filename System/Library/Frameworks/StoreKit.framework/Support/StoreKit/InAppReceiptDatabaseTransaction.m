@interface InAppReceiptDatabaseTransaction
- (BOOL)cacheLegacyTransactionsForBundleID:(id)a3 transactions:(id)a4 logKey:(id)a5;
- (BOOL)clearLegacyTransactionsLastUpdatedForBundleID:(id)a3;
- (BOOL)reconcileUnfinishedTransactionIDs:(id)a3 forBundleID:(id)a4 logKey:(id)a5;
- (BOOL)removeAppTransactionForBundleID:(id)a3;
- (BOOL)removeCachedLegacyTransactionWithID:(id)a3 forBundleID:(id)a4;
- (BOOL)removeCachedLegacyTransactionsForBundleID:(id)a3;
- (BOOL)removeReceiptsForBundleID:(id)a3;
- (BOOL)removeStatusesForBundleID:(id)a3;
- (BOOL)resetLegacyTransactionsLastUpdatedForBundleID:(id)a3;
- (BOOL)setAppTransaction:(id)a3 revision:(int64_t)a4 forBundleID:(id)a5 bundleVersion:(id)a6 token:(id)a7;
- (BOOL)setFinishedForTransactionID:(id)a3 bundleID:(id)a4 logKey:(id)a5;
- (BOOL)setLegacyTransactionsLastUpdatedForBundleID:(id)a3 token:(id)a4;
- (BOOL)setRevision:(id)a3 includesFinishedConsumables:(BOOL)a4 token:(id)a5 forBundleID:(id)a6;
- (BOOL)setSubscriptionRenewalInfo:(id)a3 forGroupID:(id)a4 bundleID:(id)a5 gracePeriodExpirationDate:(id)a6 logKey:(id)a7;
- (BOOL)setTransactionInfo:(id)a3 unfinishedIDs:(id)a4 forBundleID:(id)a5 logKey:(id)a6 containsSubscriptions:(BOOL *)a7;
@end

@implementation InAppReceiptDatabaseTransaction

- (BOOL)cacheLegacyTransactionsForBundleID:(id)a3 transactions:(id)a4 logKey:(id)a5
{
  v7 = a3;
  v8 = a4;
  v37 = a5;
  v39 = v7;
  if (v7)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v43;
      v13 = 1;
      *&v10 = 138543874;
      v36 = v10;
      obj = v8;
      do
      {
        v14 = 0;
        do
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v42 + 1) + 8 * v14);
          v16 = [v15 objectForKeyedSubscript:{@"tid", v36}];
          if ([v16 length])
          {
            v17 = [NSMutableDictionary dictionaryWithCapacity:12];
            [v17 setObject:v39 forKeyedSubscript:@"bundle_id"];
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
                v41 = 0;
                v28 = [NSKeyedArchiver archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v41];
                v29 = v41;
                v30 = v29;
                if (!v28 || v29)
                {
                  if (qword_1003D4918 != -1)
                  {
                    sub_1002D10E8();
                  }

                  v31 = qword_1003D48F8;
                  if (os_log_type_enabled(qword_1003D48F8, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v36;
                    v47 = self;
                    v48 = 2114;
                    v49 = v37;
                    v50 = 2114;
                    v51 = v30;
                    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[%{public}@][%{public}@] Error caching assets: %{public}@", buf, 0x20u);
                  }

                  v13 = 0;
                }

                [v17 setObject:v28 forKeyedSubscript:@"assets"];
              }
            }

            v32 = [InAppPendingTransactionsDatabaseEntity alloc];
            v33 = [(InAppReceiptDatabaseSession *)self connection];
            v34 = [(SQLiteEntity *)v32 initWithPropertyValues:v17 onConnection:v33];

            if (v13)
            {
              v13 = [(SQLiteEntity *)v34 existsInDatabase];
            }

            else
            {
              v13 = 0;
            }
          }

          v14 = v14 + 1;
        }

        while (v11 != v14);
        v8 = obj;
        v11 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v11);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    if (qword_1003D4918 != -1)
    {
      sub_1002D1110();
    }

    if (os_log_type_enabled(qword_1003D48F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002D1124();
    }

    v13 = 0;
  }

  return v13 & 1;
}

- (BOOL)clearLegacyTransactionsLastUpdatedForBundleID:(id)a3
{
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:a3];
  v5 = [(InAppReceiptDatabaseSession *)self connection];
  v6 = [(SQLiteEntity *)InAppPendingTransactionsPropertiesDatabaseEntity queryOnConnection:v5 predicate:v4];

  LOBYTE(v5) = [v6 deleteAllEntities];
  return v5;
}

- (BOOL)reconcileUnfinishedTransactionIDs:(id)a3 forBundleID:(id)a4 logKey:(id)a5
{
  v8 = a3;
  v29 = a5;
  v9 = a4;
  v28 = [(InAppReceiptDatabaseSession *)self cacheIncludesFinishedConsumablesForBundleID:v9];
  v10 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" value:v9 comparisonType:1];

  v11 = [SQLiteComparisonPredicate predicateWithProperty:@"is_finished" equalToValue:&__kCFBooleanFalse];
  v12 = &_s10Foundation3URLVSEAAMc_ptr;
  if ([v8 count])
  {
    v13 = [v8 allObjects];
    [SQLiteContainsPredicate containsPredicateWithProperty:@"transaction_id" values:v13];
    v14 = v11;
    v16 = v15 = v10;

    v38[0] = v14;
    v38[1] = v16;
    v17 = [NSArray arrayWithObjects:v38 count:2];
    v18 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v17];

    v37[0] = v15;
    v37[1] = v18;
    v19 = [NSArray arrayWithObjects:v37 count:2];
    v20 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v19];

    v10 = v15;
    v11 = v14;
    v12 = &_s10Foundation3URLVSEAAMc_ptr;
  }

  else
  {
    v36[0] = v10;
    v36[1] = v11;
    v21 = [NSArray arrayWithObjects:v36 count:2];
    v20 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v21];
  }

  v35[0] = @"transaction_id";
  v35[1] = @"product_type";
  v35[2] = @"is_finished";
  v22 = [v12[153] arrayWithObjects:v35 count:3];
  v23 = [(InAppReceiptDatabaseSession *)self connection];
  v24 = [(SQLiteEntity *)InAppTransactionEntity queryOnConnection:v23 predicate:v20];

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10007129C;
  v30[3] = &unk_100382EB8;
  v31 = v8;
  v32 = self;
  v34 = v28;
  v33 = v29;
  v25 = v29;
  v26 = v8;
  [v24 enumeratePersistentIDsAndProperties:v22 usingBlock:v30];

  return 1;
}

- (BOOL)removeCachedLegacyTransactionsForBundleID:(id)a3
{
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:a3];
  v5 = [(InAppReceiptDatabaseSession *)self connection];
  v6 = [(SQLiteEntity *)InAppPendingTransactionsDatabaseEntity queryOnConnection:v5 predicate:v4];

  LOBYTE(v5) = [v6 deleteAllEntities];
  return v5;
}

- (BOOL)removeCachedLegacyTransactionWithID:(id)a3 forBundleID:(id)a4
{
  v6 = a3;
  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:a4];
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"transaction_id" equalToValue:v6];

  v14[0] = v7;
  v14[1] = v8;
  v9 = [NSArray arrayWithObjects:v14 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  v11 = [(InAppReceiptDatabaseSession *)self connection];
  v12 = [(SQLiteEntity *)InAppPendingTransactionsDatabaseEntity queryOnConnection:v11 predicate:v10];

  LOBYTE(v11) = [v12 deleteAllEntities];
  return v11;
}

- (BOOL)removeReceiptsForBundleID:(id)a3
{
  v4 = a3;
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v4];
  v6 = [(InAppReceiptDatabaseSession *)self connection];
  v7 = [(SQLiteEntity *)InAppReceiptPropertiesDatabaseEntity queryOnConnection:v6 predicate:v5];

  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v4];

  v9 = [(InAppReceiptDatabaseSession *)self connection];
  v10 = [(SQLiteEntity *)InAppTransactionEntity queryOnConnection:v9 predicate:v8];

  if ([v7 deleteAllEntities])
  {
    v11 = [v10 deleteAllEntities];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)removeStatusesForBundleID:(id)a3
{
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:a3];
  v5 = [(InAppReceiptDatabaseSession *)self connection];
  v6 = [(SQLiteEntity *)InAppSubscriptionStatusDatabaseEntity queryOnConnection:v5 predicate:v4];

  LOBYTE(v5) = [v6 deleteAllEntities];
  return v5;
}

- (BOOL)setAppTransaction:(id)a3 revision:(int64_t)a4 forBundleID:(id)a5 bundleVersion:(id)a6 token:(id)a7
{
  v23[0] = @"bundle_id";
  v23[1] = @"bundle_version";
  v24[0] = a5;
  v24[1] = a6;
  v23[2] = @"last_updated";
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = +[NSDate now];
  v24[2] = v16;
  v24[3] = v15;
  v23[3] = @"receipt";
  v23[4] = @"revision";
  v17 = [NSNumber numberWithInteger:a4];
  v23[5] = @"token";
  v24[4] = v17;
  v24[5] = v12;
  v18 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:6];

  v19 = [AppTransactionDatabaseEntity alloc];
  v20 = [(InAppReceiptDatabaseSession *)self connection];
  v21 = [(SQLiteEntity *)v19 initWithPropertyValues:v18 onConnection:v20];

  LOBYTE(v20) = [(SQLiteEntity *)v21 existsInDatabase];
  return v20;
}

- (BOOL)removeAppTransactionForBundleID:(id)a3
{
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:a3];
  v5 = [(InAppReceiptDatabaseSession *)self connection];
  v6 = [(SQLiteEntity *)AppTransactionDatabaseEntity queryOnConnection:v5 predicate:v4];

  LOBYTE(v5) = [v6 deleteAllEntities];
  return v5;
}

- (BOOL)setFinishedForTransactionID:(id)a3 bundleID:(id)a4 logKey:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(InAppReceiptDatabaseSession *)self cacheIncludesFinishedConsumablesForBundleID:v9];
  v12 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" value:v9 comparisonType:1];

  v13 = [SQLiteComparisonPredicate predicateWithProperty:@"transaction_id" value:v10 comparisonType:1];

  v14 = [SQLiteComparisonPredicate predicateWithProperty:@"is_finished" value:&__kCFBooleanFalse comparisonType:1];
  v26[0] = v12;
  v26[1] = v13;
  v26[2] = v14;
  v15 = [NSArray arrayWithObjects:v26 count:3];
  v16 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v15];

  v17 = [(InAppReceiptDatabaseSession *)self connection];
  v18 = [(SQLiteEntity *)InAppTransactionEntity queryOnConnection:v17 predicate:v16];

  v25 = @"product_type";
  v19 = [NSArray arrayWithObjects:&v25 count:1];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100071C84;
  v22[3] = &unk_100382EE0;
  v24 = v11;
  v22[4] = self;
  v23 = v8;
  v20 = v8;
  [v18 enumeratePersistentIDsAndProperties:v19 usingBlock:v22];

  return 1;
}

- (BOOL)setLegacyTransactionsLastUpdatedForBundleID:(id)a3 token:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSMutableDictionary dictionaryWithCapacity:3];
  [v8 setObject:v7 forKeyedSubscript:@"bundle_id"];

  [v8 setObject:v6 forKeyedSubscript:@"token"];
  v9 = +[NSDate now];
  [v8 setObject:v9 forKeyedSubscript:@"last_updated"];

  v10 = [InAppPendingTransactionsPropertiesDatabaseEntity alloc];
  v11 = [(InAppReceiptDatabaseSession *)self connection];
  v12 = [(SQLiteEntity *)v10 initWithPropertyValues:v8 onConnection:v11];

  LOBYTE(v11) = [(SQLiteEntity *)v12 existsInDatabase];
  return v11;
}

- (BOOL)resetLegacyTransactionsLastUpdatedForBundleID:(id)a3
{
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:a3];
  v5 = [(InAppReceiptDatabaseSession *)self connection];
  v6 = [(SQLiteEntity *)InAppPendingTransactionsPropertiesDatabaseEntity anyOnConnection:v5 predicate:v4];

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

- (BOOL)setTransactionInfo:(id)a3 unfinishedIDs:(id)a4 forBundleID:(id)a5 logKey:(id)a6 containsSubscriptions:(BOOL *)a7
{
  v11 = a3;
  v12 = a4;
  v64 = a5;
  v60 = a6;
  if (a7)
  {
    *a7 = 0;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (!v14)
  {
    v18 = 1;
    goto LABEL_65;
  }

  v16 = v14;
  v59 = a7;
  v17 = *v70;
  *&v15 = 138543362;
  v58 = v15;
  v61 = *v70;
  v18 = 1;
  v62 = v13;
  v63 = v12;
  while (2)
  {
    v19 = 0;
    v65 = v16;
    do
    {
      v67 = v18;
      if (*v70 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v20 = *(*(&v69 + 1) + 8 * v19);
      v68 = 0;
      v21 = sub_100027B30(v20, &v68);
      v22 = v68;
      if (v22)
      {
        v23 = v22;
        if (qword_1003D4918 != -1)
        {
          sub_1002D10E8();
        }

        v24 = qword_1003D48F8;
        if (os_log_type_enabled(qword_1003D48F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v74 = v60;
          v75 = 2114;
          v76 = v23;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%{public}@] Error parsing payload from transaction: %{public}@", buf, 0x16u);
        }

        v18 = 0;
        v25 = v21;
        goto LABEL_49;
      }

      v25 = [v21 objectForKeyedSubscript:@"transactionId"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (qword_1003D4918 != -1)
        {
          sub_1002D10E8();
        }

        v36 = qword_1003D48F8;
        if (os_log_type_enabled(qword_1003D48F8, OS_LOG_TYPE_ERROR))
        {
          *buf = v58;
          v74 = v60;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "[%{public}@] Invalid transaction payload. ID = nil", buf, 0xCu);
        }

        v18 = 0;
        v23 = v21;
        goto LABEL_49;
      }

      v26 = +[NSMutableDictionary dictionary];
      [v26 setObject:v25 forKeyedSubscript:@"transaction_id"];
      v27 = [v21 objectForKeyedSubscript:@"bundleId"];
      [v26 setObject:v27 forKeyedSubscript:@"bundle_id"];

      v28 = [v21 objectForKeyedSubscript:@"productId"];
      [v26 setObject:v28 forKeyedSubscript:@"product_id"];

      v29 = [v21 objectForKeyedSubscript:@"isUpgraded"];
      v30 = v29;
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = &__kCFBooleanFalse;
      }

      [v26 setObject:v31 forKeyedSubscript:{@"is_upgraded", v58}];

      if (v12)
      {
        v32 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 containsObject:v25] ^ 1);
        [v26 setObject:v32 forKeyedSubscript:@"is_finished"];
      }

      v33 = [v21 objectForKeyedSubscript:@"type"];
      if ([v33 isEqual:@"Consumable"])
      {
        v34 = v26;
        v35 = &off_1003A14F8;
      }

      else if ([v33 isEqual:@"Non-Consumable"])
      {
        v34 = v26;
        v35 = &off_1003A1510;
      }

      else
      {
        if ([v33 isEqual:@"Auto-Renewable Subscription"])
        {
          [v26 setObject:&off_1003A1528 forKeyedSubscript:@"product_type"];
          if (v59)
          {
            *v59 = 1;
          }

          goto LABEL_30;
        }

        if ([v33 isEqual:@"Non-Renewing Subscription"])
        {
          v34 = v26;
          v35 = &off_1003A1540;
        }

        else
        {
          v34 = v26;
          v35 = &off_1003A1558;
        }
      }

      [v34 setObject:v35 forKeyedSubscript:@"product_type"];
LABEL_30:
      v37 = [v21 objectForKeyedSubscript:@"purchaseDate"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v37 longLongValue] / 1000.0);
        [v26 setObject:v38 forKeyedSubscript:@"transaction_date"];
      }

      v39 = [v21 objectForKeyedSubscript:@"revocationDate"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v39 longLongValue] / 1000.0);
        [v26 setObject:v40 forKeyedSubscript:@"revocation_date"];
      }

      v41 = [v21 objectForKeyedSubscript:@"expiresDate"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v41 longLongValue] / 1000.0);
        [v26 setObject:v42 forKeyedSubscript:@"expiration_date"];
      }

      [v26 setObject:v20 forKeyedSubscript:@"receipt"];
      v43 = [(InAppReceiptDatabaseSession *)self transactionForID:v25 bundleID:v64];
      if (v43)
      {
        if (qword_1003D4918 != -1)
        {
          sub_1002D10E8();
        }

        v44 = qword_1003D48F8;
        if (os_log_type_enabled(qword_1003D48F8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543619;
          v74 = v60;
          v75 = 2113;
          v76 = v25;
          _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "[%{public}@] Updating transaction info for %{private}@", buf, 0x16u);
        }

        v45 = [InAppTransactionEntity alloc];
        v46 = [v43 databaseID];
        v47 = [(InAppReceiptDatabaseSession *)self connection];
        v48 = [(SQLiteEntity *)v45 initWithPersistentID:v46 onConnection:v47];

        v49 = [(SQLiteEntity *)v48 setValuesWithDictionary:v26];
      }

      else
      {
        if (qword_1003D4918 != -1)
        {
          sub_1002D10E8();
        }

        v50 = qword_1003D48F8;
        if (os_log_type_enabled(qword_1003D48F8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543619;
          v74 = v60;
          v75 = 2113;
          v76 = v25;
          _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "[%{public}@] Writing new transaction info for %{private}@", buf, 0x16u);
        }

        v51 = [InAppTransactionEntity alloc];
        v52 = [(InAppReceiptDatabaseSession *)self connection];
        v48 = [(SQLiteEntity *)v51 initWithPropertyValues:v26 onConnection:v52];

        v49 = [(SQLiteEntity *)v48 existsInDatabase];
      }

      v53 = v49;

      v54 = v67 & v53;
      v13 = v62;
      v12 = v63;
      if ((v54 & 1) == 0)
      {
        if (qword_1003D4918 != -1)
        {
          sub_1002D10E8();
        }

        v56 = qword_1003D48F8;
        if (os_log_type_enabled(qword_1003D48F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543619;
          v74 = v60;
          v75 = 2113;
          v76 = v25;
          _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "[%{public}@] Could not write transaction info for %{private}@", buf, 0x16u);
        }

        v18 = 0;
        goto LABEL_65;
      }

      v18 = 1;
      v23 = v21;
      v17 = v61;
      v16 = v65;
LABEL_49:

      v19 = v19 + 1;
    }

    while (v16 != v19);
    v55 = [v13 countByEnumeratingWithState:&v69 objects:v77 count:16];
    v16 = v55;
    if (v55)
    {
      continue;
    }

    break;
  }

LABEL_65:

  return v18;
}

- (BOOL)setRevision:(id)a3 includesFinishedConsumables:(BOOL)a4 token:(id)a5 forBundleID:(id)a6
{
  v7 = a4;
  v21[0] = a6;
  v20[0] = @"bundle_id";
  v20[1] = @"finished_consumables";
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [NSNumber numberWithBool:v7];
  v21[1] = v13;
  v21[2] = v12;
  v20[2] = @"revision";
  v20[3] = @"token";
  v21[3] = v11;
  v20[4] = @"last_updated";
  v14 = +[NSDate now];
  v21[4] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:5];

  v16 = [InAppReceiptPropertiesDatabaseEntity alloc];
  v17 = [(InAppReceiptDatabaseSession *)self connection];
  v18 = [(SQLiteEntity *)v16 initWithPropertyValues:v15 onConnection:v17];

  LOBYTE(v17) = [(SQLiteEntity *)v18 existsInDatabase];
  return v17;
}

- (BOOL)setSubscriptionRenewalInfo:(id)a3 forGroupID:(id)a4 bundleID:(id)a5 gracePeriodExpirationDate:(id)a6 logKey:(id)a7
{
  v11 = a3;
  v38 = a4;
  v37 = a5;
  v36 = a6;
  v35 = a7;
  v12 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        v18 = objc_opt_new();
        v19 = [v17 objectForKeyedSubscript:@"status"];
        [v18 setObject:v19 forKeyedSubscript:@"status"];

        v20 = [v17 objectForKeyedSubscript:@"signedRenewalInfo"];
        [v18 setObject:v20 forKeyedSubscript:@"signedRenewalInfo"];

        [v12 addObject:v18];
      }

      v14 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v14);
  }

  v40 = 0;
  v21 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v40];
  v22 = v40;
  if (v22)
  {
    v24 = v36;
    v23 = v37;
    if (qword_1003D4918 != -1)
    {
      sub_1002D10E8();
    }

    v25 = v38;
    v26 = v35;
    if (os_log_type_enabled(qword_1003D48F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002D127C();
    }

    v27 = 0;
  }

  else
  {
    v28 = [NSMutableDictionary dictionaryWithCapacity:5];
    v23 = v37;
    [v28 setObject:v37 forKeyedSubscript:@"bundle_id"];
    v25 = v38;
    [v28 setObject:v38 forKeyedSubscript:@"subscription_group_id"];
    v29 = +[NSDate now];
    [v28 setObject:v29 forKeyedSubscript:@"last_updated"];

    [v28 setObject:v21 forKeyedSubscript:@"renewal_info"];
    v24 = v36;
    [v28 setObject:v36 forKeyedSubscript:@"grace_period_expiration_date"];
    v30 = [InAppSubscriptionStatusDatabaseEntity alloc];
    v31 = [(InAppReceiptDatabaseSession *)self connection];
    v32 = [(SQLiteEntity *)v30 initWithPropertyValues:v28 onConnection:v31];

    v27 = [(SQLiteEntity *)v32 existsInDatabase];
    v26 = v35;
  }

  return v27;
}

@end