@interface InAppReceiptDatabaseSession
- (BOOL)_isActiveItemPresentInPayload:(id)payload;
- (BOOL)cacheIncludesFinishedConsumablesForBundleID:(id)d;
- (BOOL)hasSubscriptionExpiredSince:(id)since forBundleID:(id)d;
- (BOOL)hasTransactionWithSubscriptionOfferType:(unsigned __int8)type forSubscriptionGroupID:(id)d bundleID:(id)iD;
- (BOOL)isTransactionFinishedForID:(id)d bundleID:(id)iD;
- (InAppReceiptDatabaseSession)initWithConnection:(id)connection;
- (id)_inAppPendingTransactionsPropertyForKey:(id)key bundleID:(id)d;
- (id)_latestTransactionReceiptForUnarchivedRenewalInfo:(id)info subscriptionGroupID:(id)d bundleID:(id)iD;
- (id)_propertyForKey:(id)key bundleID:(id)d;
- (id)_statusesForRenewalInfoBlob:(id)blob subscriptionGroupID:(id)d bundleID:(id)iD;
- (id)appTransactionWithRevision:(int64_t)revision forBundleID:(id)d bundleVersion:(id)version accountToken:(id)token;
- (id)pendingLegacyTransactionsForBundleID:(id)d logKey:(id)key error:(id *)error;
- (id)statusHashesForBundleID:(id)d;
- (id)subscriptionStatusForSubscriptionGroupID:(id)d bundleID:(id)iD;
- (id)subscriptionStatusForTransactionID:(id)d bundleID:(id)iD;
- (id)transactionForID:(id)d bundleID:(id)iD;
- (id)transactionHashesForBundleID:(id)d totalCount:(unint64_t *)count;
- (void)_enumerateReceiptsForOriginalTransactionID:(id)d bundleID:(id)iD usingBlock:(id)block;
- (void)_enumerateSubscriptionStatusForBundleID:(id)d alsoMatchingPredicate:(id)predicate ignoreEmptyStatus:(BOOL)status usingBlock:(id)block;
- (void)enumerateCurrentReceiptsForProductID:(id)d bundleID:(id)iD usingBlock:(id)block;
- (void)enumerateReceiptsForProductID:(id)d bundleID:(id)iD usingBlock:(id)block;
- (void)enumerateReceiptsForSubscriptionsInGracePeriodForBundleID:(id)d usingBlock:(id)block;
- (void)enumerateSubscriptionStatusForBundleID:(id)d usingBlock:(id)block;
- (void)enumerateUnfinishedTransactionReceiptsForBundleID:(id)d usingBlock:(id)block;
@end

@implementation InAppReceiptDatabaseSession

- (InAppReceiptDatabaseSession)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = InAppReceiptDatabaseSession;
  v6 = [(InAppReceiptDatabaseSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (BOOL)cacheIncludesFinishedConsumablesForBundleID:(id)d
{
  v3 = [(InAppReceiptDatabaseSession *)self _propertyForKey:@"finished_consumables" bundleID:d];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)appTransactionWithRevision:(int64_t)revision forBundleID:(id)d bundleVersion:(id)version accountToken:(id)token
{
  dCopy = d;
  versionCopy = version;
  tokenCopy = token;
  v13 = +[NSMutableArray array];
  v14 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" value:dCopy comparisonType:1];
  [v13 addObject:v14];
  v15 = [NSNumber numberWithInteger:revision];
  v16 = [SQLiteComparisonPredicate predicateWithProperty:@"revision" value:v15 comparisonType:6];

  [v13 addObject:v16];
  if (versionCopy)
  {
    v17 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_version" value:versionCopy comparisonType:1];
    [v13 addObject:v17];
  }

  if (tokenCopy)
  {
    v18 = [SQLiteComparisonPredicate predicateWithProperty:@"token" value:tokenCopy comparisonType:1];
    [v13 addObject:v18];
  }

  v19 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v13];
  v32 = @"receipt";
  v20 = [NSArray arrayWithObjects:&v32 count:1];
  connection = [(InAppReceiptDatabaseSession *)self connection];
  v22 = [(SQLiteEntity *)AppTransactionDatabaseEntity queryOnConnection:connection predicate:v19];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100033EC0;
  v30 = sub_100033ED0;
  v31 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100033ED8;
  v25[3] = &unk_100381158;
  v25[4] = &v26;
  [v22 enumeratePersistentIDsAndProperties:v20 usingBlock:v25];
  v23 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v23;
}

- (void)enumerateCurrentReceiptsForProductID:(id)d bundleID:(id)iD usingBlock:(id)block
{
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  v9 = +[NSMutableArray array];
  v40 = iDCopy;
  v10 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" value:iDCopy comparisonType:1];
  [v9 addObject:v10];

  if ([dCopy length])
  {
    v11 = [SQLiteComparisonPredicate predicateWithProperty:@"product_id" value:dCopy comparisonType:1];
    [v9 addObject:v11];
  }

  v12 = [SQLiteNullPredicate isNullPredicateWithProperty:@"revocation_date"];
  [v9 addObject:v12];

  v13 = +[SecureClock now];
  if (!v13)
  {
    if (qword_1003D4038 != -1)
    {
      sub_1002CA994();
    }

    if (os_log_type_enabled(qword_1003D3FF0, OS_LOG_TYPE_ERROR))
    {
      sub_1002CA9A8();
    }

    v13 = +[NSDate now];
  }

  v14 = [SQLiteNullPredicate isNullPredicateWithProperty:@"expiration_date"];
  v56[0] = v14;
  [v13 timeIntervalSinceReferenceDate];
  v15 = [NSNumber numberWithDouble:?];
  v16 = [SQLiteComparisonPredicate predicateWithProperty:@"expiration_date" value:v15 comparisonType:5];
  v56[1] = v16;
  v17 = [NSArray arrayWithObjects:v56 count:2];
  v18 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v17];
  [v9 addObject:v18];

  v19 = [SQLiteComparisonPredicate predicateWithProperty:@"product_type" equalToValue:&off_1003A1408];
  v55[0] = v19;
  v20 = [SQLiteComparisonPredicate predicateWithProperty:@"product_type" equalToValue:&off_1003A1420];
  v55[1] = v20;
  v21 = [SQLiteComparisonPredicate predicateWithProperty:@"product_type" equalToValue:&off_1003A1438];
  v55[2] = v21;
  v22 = [NSArray arrayWithObjects:v55 count:3];
  v23 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v22];
  [v9 addObject:v23];

  v24 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
  v54[0] = @"product_id";
  v54[1] = @"receipt";
  v25 = [NSArray arrayWithObjects:v54 count:2];
  connection = [(InAppReceiptDatabaseSession *)self connection];
  v53 = @"transaction_date";
  v27 = [NSArray arrayWithObjects:&v53 count:1];
  v52 = @"DESC";
  v28 = [NSArray arrayWithObjects:&v52 count:1];
  v29 = [(SQLiteEntity *)InAppTransactionEntity queryOnConnection:connection predicate:v24 orderingProperties:v27 orderingDirections:v28];

  v30 = objc_alloc_init(NSMutableSet);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000344E0;
  v46[3] = &unk_100381180;
  v47 = v13;
  v31 = objc_alloc_init(NSMutableSet);
  v48 = v31;
  selfCopy = self;
  v32 = blockCopy;
  v51 = v32;
  v33 = v30;
  v50 = v33;
  v34 = v13;
  [v29 enumeratePersistentIDsAndProperties:v25 usingBlock:v46];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100034878;
  v41[3] = &unk_1003811A8;
  v42 = v31;
  selfCopy2 = self;
  v44 = v33;
  v45 = v32;
  v35 = v33;
  v36 = v32;
  v37 = v31;
  [(InAppReceiptDatabaseSession *)self enumerateReceiptsForSubscriptionsInGracePeriodForBundleID:v40 usingBlock:v41];
}

- (void)enumerateReceiptsForProductID:(id)d bundleID:(id)iD usingBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v10 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" value:iD comparisonType:1];
  if ([dCopy length])
  {
    v11 = [SQLiteComparisonPredicate predicateWithProperty:@"product_id" value:dCopy comparisonType:1];
    v25[0] = v10;
    v25[1] = v11;
    v12 = [NSArray arrayWithObjects:v25 count:2];
    v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];
  }

  else
  {
    v13 = v10;
  }

  v24 = @"receipt";
  v14 = [NSArray arrayWithObjects:&v24 count:1];
  connection = [(InAppReceiptDatabaseSession *)self connection];
  v23 = @"transaction_date";
  v16 = [NSArray arrayWithObjects:&v23 count:1];
  v22 = @"DESC";
  v17 = [NSArray arrayWithObjects:&v22 count:1];
  v18 = [(SQLiteEntity *)InAppTransactionEntity queryOnConnection:connection predicate:v13 orderingProperties:v16 orderingDirections:v17];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100034CFC;
  v20[3] = &unk_1003811D0;
  v21 = blockCopy;
  v19 = blockCopy;
  [v18 enumeratePersistentIDsAndProperties:v14 usingBlock:v20];
}

- (void)enumerateReceiptsForSubscriptionsInGracePeriodForBundleID:(id)d usingBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:dCopy];
  v18 = @"renewal_info";
  v9 = [NSArray arrayWithObjects:&v18 count:1];
  connection = [(InAppReceiptDatabaseSession *)self connection];
  v11 = [(SQLiteEntity *)InAppSubscriptionStatusDatabaseEntity queryOnConnection:connection predicate:v8];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100034F10;
  v14[3] = &unk_1003811F8;
  v15 = dCopy;
  selfCopy = self;
  v17 = blockCopy;
  v12 = blockCopy;
  v13 = dCopy;
  [v11 enumeratePersistentIDsAndProperties:v9 usingBlock:v14];
}

- (void)enumerateUnfinishedTransactionReceiptsForBundleID:(id)d usingBlock:(id)block
{
  blockCopy = block;
  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" value:d comparisonType:1];
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"is_finished" value:&__kCFBooleanFalse comparisonType:1];
  v22[0] = v7;
  v22[1] = v8;
  v9 = [NSArray arrayWithObjects:v22 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  v21 = @"receipt";
  v11 = [NSArray arrayWithObjects:&v21 count:1];
  connection = [(InAppReceiptDatabaseSession *)self connection];
  v20 = @"transaction_date";
  v13 = [NSArray arrayWithObjects:&v20 count:1];
  v19 = @"DESC";
  v14 = [NSArray arrayWithObjects:&v19 count:1];
  v15 = [(SQLiteEntity *)InAppTransactionEntity queryOnConnection:connection predicate:v10 orderingProperties:v13 orderingDirections:v14];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000355B4;
  v17[3] = &unk_1003811D0;
  v18 = blockCopy;
  v16 = blockCopy;
  [v15 enumeratePersistentIDsAndProperties:v11 usingBlock:v17];
}

- (BOOL)hasSubscriptionExpiredSince:(id)since forBundleID:(id)d
{
  sinceCopy = since;
  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:d];
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"product_type" equalToValue:&off_1003A1438];
  [sinceCopy timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = [NSNumber numberWithDouble:v10];
  v12 = [SQLiteComparisonPredicate predicateWithProperty:@"expiration_date" value:v11 comparisonType:5];

  v13 = +[NSDate now];
  [v13 timeIntervalSinceReferenceDate];
  v14 = [NSNumber numberWithDouble:?];
  v15 = [SQLiteComparisonPredicate predicateWithProperty:@"expiration_date" value:v14 comparisonType:3];

  v21[0] = v7;
  v21[1] = v8;
  v21[2] = v12;
  v21[3] = v15;
  v16 = [NSArray arrayWithObjects:v21 count:4];
  v17 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];

  connection = [(InAppReceiptDatabaseSession *)self connection];
  v19 = [(SQLiteEntity *)InAppTransactionEntity anyOnConnection:connection predicate:v17];

  return v19 != 0;
}

- (BOOL)isTransactionFinishedForID:(id)d bundleID:(id)iD
{
  v4 = [(InAppReceiptDatabaseSession *)self transactionForID:d bundleID:iD];
  v5 = v4;
  if (v4)
  {
    isFinished = [v4 isFinished];
  }

  else
  {
    isFinished = 0;
  }

  return isFinished;
}

- (BOOL)hasTransactionWithSubscriptionOfferType:(unsigned __int8)type forSubscriptionGroupID:(id)d bundleID:(id)iD
{
  typeCopy = type;
  dCopy = d;
  iDCopy = iD;
  v34 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:?];
  v33 = [SQLiteComparisonPredicate predicateWithProperty:@"product_type" equalToValue:&off_1003A1438];
  v7 = [NSNumber numberWithUnsignedChar:typeCopy];
  v37 = [SQLiteComparisonPredicate predicateWithProperty:@"receipt" equalToValue:v7];

  v8 = +[_TtC9storekitd14SQLiteFunction extractJWSPayload];
  v49[0] = v8;
  v9 = [_TtC9storekitd26SQLiteExtractJSONTransform extractJSONAtKey:@"offerType"];
  v49[1] = v9;
  v10 = [NSArray arrayWithObjects:v49 count:2];
  v11 = [_TtC9storekitd30SQLiteSequentialValueTransform composingTransforms:v10];
  [v37 setTransform:v11];

  v12 = [SQLiteComparisonPredicate predicateWithProperty:@"receipt" equalToValue:dCopy];
  v13 = +[_TtC9storekitd14SQLiteFunction extractJWSPayload];
  v48[0] = v13;
  v14 = [_TtC9storekitd26SQLiteExtractJSONTransform extractJSONAtKey:@"subscriptionGroupIdentifier"];
  v48[1] = v14;
  v15 = [NSArray arrayWithObjects:v48 count:2];
  v16 = [_TtC9storekitd30SQLiteSequentialValueTransform composingTransforms:v15];
  [v12 setTransform:v16];

  v47[0] = v34;
  v47[1] = v33;
  v47[2] = v37;
  v47[3] = v12;
  v17 = [NSArray arrayWithObjects:v47 count:4];
  v18 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v17];

  connection = [(InAppReceiptDatabaseSession *)self connection];
  v20 = +[_TtC9storekitd14SQLiteFunction extractJWSPayload];
  [connection addFunction:v20];

  connection2 = [(InAppReceiptDatabaseSession *)self connection];
  v46 = @"transaction_date";
  v22 = [NSArray arrayWithObjects:&v46 count:1];
  v45 = @"ASC";
  v23 = [NSArray arrayWithObjects:&v45 count:1];
  v24 = [(SQLiteEntity *)InAppTransactionEntity queryOnConnection:connection2 predicate:v18 orderingProperties:v22 orderingDirections:v23];

  queryDescriptor = [v24 queryDescriptor];
  [queryDescriptor setLimitCount:1];

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100035D68;
  v38[3] = &unk_100381220;
  v26 = iDCopy;
  v39 = v26;
  v40 = &v41;
  [v24 enumerateMemoryEntitiesUsingBlock:v38];
  connection3 = [(InAppReceiptDatabaseSession *)self connection];
  v28 = +[_TtC9storekitd14SQLiteFunction extractJWSPayload];
  name = [v28 name];
  v30 = +[_TtC9storekitd14SQLiteFunction extractJWSPayload];
  [connection3 removeFunctionNamed:name withArgumentCount:{objc_msgSend(v30, "argumentCount")}];

  LOBYTE(name) = *(v42 + 24);
  _Block_object_dispose(&v41, 8);

  return (name ^ 1) & 1;
}

- (id)subscriptionStatusForSubscriptionGroupID:(id)d bundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"subscription_group_id" value:dCopy comparisonType:1];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100033EC0;
  v16 = sub_100033ED0;
  v17 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100035FD8;
  v11[3] = &unk_100381248;
  v11[4] = &v12;
  [(InAppReceiptDatabaseSession *)self _enumerateSubscriptionStatusForBundleID:iDCopy alsoMatchingPredicate:v8 ignoreEmptyStatus:1 usingBlock:v11];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)subscriptionStatusForTransactionID:(id)d bundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100033EC0;
  v33 = sub_100033ED0;
  v34 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100036324;
  v25[3] = &unk_100381270;
  v8 = dCopy;
  v26 = v8;
  v9 = iDCopy;
  v27 = v9;
  v28 = &v29;
  [(InAppReceiptDatabaseSession *)self _enumerateSubscriptionStatusForBundleID:v9 alsoMatchingPredicate:0 ignoreEmptyStatus:1 usingBlock:v25];
  v10 = v30[5];
  if (v10)
  {
LABEL_2:
    v11 = v10;
    goto LABEL_11;
  }

  v12 = [(InAppReceiptDatabaseSession *)self transactionForID:v8 bundleID:v9];
  receipt = [v12 receipt];
  v24 = 0;
  v14 = sub_100027B30(receipt, &v24);
  v15 = v24;
  if (v15)
  {
    if (qword_1003D4038 != -1)
    {
      sub_1002CA9E4();
    }

    if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
    {
      sub_1002CABDC();
    }
  }

  else
  {
    v16 = [v14 objectForKeyedSubscript:@"originalTransactionId"];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100036634;
    v19[3] = &unk_100381298;
    v20 = v8;
    v21 = v9;
    v17 = v16;
    v22 = v17;
    v23 = &v29;
    [(InAppReceiptDatabaseSession *)self _enumerateSubscriptionStatusForBundleID:v21 alsoMatchingPredicate:0 ignoreEmptyStatus:1 usingBlock:v19];
  }

  if (!v15)
  {
    v10 = v30[5];
    if (!v10)
    {
      if (qword_1003D4038 != -1)
      {
        sub_1002CA9E4();
      }

      if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
      {
        sub_1002CAC4C();
      }

      v10 = v30[5];
    }

    goto LABEL_2;
  }

  v11 = 0;
LABEL_11:

  _Block_object_dispose(&v29, 8);

  return v11;
}

- (void)enumerateSubscriptionStatusForBundleID:(id)d usingBlock:(id)block
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000369F0;
  v7[3] = &unk_1003812C0;
  blockCopy = block;
  v6 = blockCopy;
  [(InAppReceiptDatabaseSession *)self _enumerateSubscriptionStatusForBundleID:d alsoMatchingPredicate:0 ignoreEmptyStatus:0 usingBlock:v7];
}

- (id)transactionForID:(id)d bundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" value:iDCopy comparisonType:1];
  v9 = [SQLiteComparisonPredicate predicateWithProperty:@"transaction_id" value:dCopy comparisonType:1];
  v23[0] = v8;
  v23[1] = v9;
  v10 = [NSArray arrayWithObjects:v23 count:2];
  v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  connection = [(InAppReceiptDatabaseSession *)self connection];
  v13 = [(SQLiteMemoryEntity *)InAppTransaction queryOnConnection:connection predicate:v11];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100033EC0;
  v21 = sub_100033ED0;
  v22 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100036C40;
  v16[3] = &unk_1003812E8;
  v16[4] = &v17;
  [v13 enumerateMemoryEntitiesUsingBlock:v16];
  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v14;
}

- (id)pendingLegacyTransactionsForBundleID:(id)d logKey:(id)key error:(id *)error
{
  dCopy = d;
  keyCopy = key;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100033EC0;
  v23 = sub_100033ED0;
  v24 = objc_alloc_init(NSMutableArray);
  v9 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" value:dCopy comparisonType:1];
  connection = [(InAppReceiptDatabaseSession *)self connection];
  v11 = [(SQLiteEntity *)InAppPendingTransactionsDatabaseEntity queryOnConnection:connection predicate:v9];

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
  v16[2] = sub_100036F38;
  v16[3] = &unk_100381310;
  v13 = dCopy;
  v17 = v13;
  v18 = &v19;
  [v11 enumeratePersistentIDsAndProperties:v12 usingBlock:v16];
  v14 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v14;
}

- (id)statusHashesForBundleID:(id)d
{
  dCopy = d;
  v5 = objc_opt_new();
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:dCopy];

  connection = [(InAppReceiptDatabaseSession *)self connection];
  v8 = [(SQLiteEntity *)InAppSubscriptionStatusDatabaseEntity queryOnConnection:connection predicate:v6];
  v14 = @"renewal_info";
  v9 = [NSArray arrayWithObjects:&v14 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000374AC;
  v12[3] = &unk_10037F740;
  v10 = v5;
  v13 = v10;
  [v8 enumeratePersistentIDsAndProperties:v9 usingBlock:v12];

  return v10;
}

- (id)transactionHashesForBundleID:(id)d totalCount:(unint64_t *)count
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = objc_opt_new();
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:dCopy];
  connection = [(InAppReceiptDatabaseSession *)self connection];
  v10 = [(SQLiteEntity *)InAppTransactionEntity queryOnConnection:connection predicate:v8];
  v22 = @"receipt";
  v11 = [NSArray arrayWithObjects:&v22 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100037778;
  v14[3] = &unk_100381338;
  v16 = &v18;
  v12 = v7;
  v15 = v12;
  countCopy = count;
  [v10 enumeratePersistentIDsAndProperties:v11 usingBlock:v14];

  if (count)
  {
    *count = v19[3];
  }

  _Block_object_dispose(&v18, 8);

  return v12;
}

- (void)_enumerateReceiptsForOriginalTransactionID:(id)d bundleID:(id)iD usingBlock:(id)block
{
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  v11 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" value:iDCopy comparisonType:1];
  v26 = @"receipt";
  v12 = [NSArray arrayWithObjects:&v26 count:1];
  connection = [(InAppReceiptDatabaseSession *)self connection];
  v25 = @"transaction_date";
  v14 = [NSArray arrayWithObjects:&v25 count:1];
  v24 = @"DESC";
  v15 = [NSArray arrayWithObjects:&v24 count:1];
  v16 = [(SQLiteEntity *)InAppTransactionEntity queryOnConnection:connection predicate:v11 orderingProperties:v14 orderingDirections:v15];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100037AA4;
  v20[3] = &unk_1003811F8;
  v21 = dCopy;
  v22 = iDCopy;
  v23 = blockCopy;
  v17 = blockCopy;
  v18 = iDCopy;
  v19 = dCopy;
  [v16 enumeratePersistentIDsAndProperties:v12 usingBlock:v20];
}

- (id)_inAppPendingTransactionsPropertyForKey:(id)key bundleID:(id)d
{
  keyCopy = key;
  dCopy = d;
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" value:dCopy comparisonType:1];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100033EC0;
  v22 = sub_100033ED0;
  v23 = 0;
  connection = [(InAppReceiptDatabaseSession *)self connection];
  v10 = [(SQLiteEntity *)InAppPendingTransactionsPropertiesDatabaseEntity queryOnConnection:connection predicate:v8];

  v24 = keyCopy;
  v11 = [NSArray arrayWithObjects:&v24 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100037DCC;
  v15[3] = &unk_100381360;
  v17 = &v18;
  v12 = keyCopy;
  v16 = v12;
  [v10 enumeratePersistentIDsAndProperties:v11 usingBlock:v15];

  v13 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v13;
}

- (BOOL)_isActiveItemPresentInPayload:(id)payload
{
  [payload objectForKeyedSubscript:@"items"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) objectForKeyedSubscript:{@"revocationDate", v11}];

        if (!v8)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)_propertyForKey:(id)key bundleID:(id)d
{
  keyCopy = key;
  dCopy = d;
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" value:dCopy comparisonType:1];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100033EC0;
  v22 = sub_100033ED0;
  v23 = 0;
  connection = [(InAppReceiptDatabaseSession *)self connection];
  v10 = [(SQLiteEntity *)InAppReceiptPropertiesDatabaseEntity queryOnConnection:connection predicate:v8];

  v24 = keyCopy;
  v11 = [NSArray arrayWithObjects:&v24 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100038160;
  v15[3] = &unk_100381360;
  v17 = &v18;
  v12 = keyCopy;
  v16 = v12;
  [v10 enumeratePersistentIDsAndProperties:v11 usingBlock:v15];

  v13 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v13;
}

- (id)_statusesForRenewalInfoBlob:(id)blob subscriptionGroupID:(id)d bundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v27 = 0;
  v10 = sub_100028E90(blob, &v27);
  v11 = v27;
  if (v11)
  {
    if (qword_1003D4038 != -1)
    {
      sub_1002CA9E4();
    }

    if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
    {
      sub_1002CAD9C();
    }

    v22 = 0;
  }

  else
  {
    +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
    v22 = v21 = v10;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v18 = [(InAppReceiptDatabaseSession *)self _latestTransactionReceiptForUnarchivedRenewalInfo:v17 subscriptionGroupID:dCopy bundleID:iDCopy];
          if (v18)
          {
            v19 = [v17 mutableCopy];
            [v19 setObject:v18 forKeyedSubscript:@"signedTransactionInfo"];
            [v22 addObject:v19];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v14);
    }

    v11 = 0;
    v10 = v21;
  }

  return v22;
}

- (id)_latestTransactionReceiptForUnarchivedRenewalInfo:(id)info subscriptionGroupID:(id)d bundleID:(id)iD
{
  infoCopy = info;
  dCopy = d;
  iDCopy = iD;
  v11 = [infoCopy objectForKeyedSubscript:@"signedRenewalInfo"];
  v24 = 0;
  v12 = sub_100027B30(v11, &v24);
  v13 = v24;
  if (v13)
  {
    if (qword_1003D4038 != -1)
    {
      sub_1002CA9E4();
    }

    if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
    {
      sub_1002CAE04();
    }

    v14 = 0;
  }

  else
  {
    v15 = [v12 objectForKeyedSubscript:@"originalTransactionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = sub_100033EC0;
      v22 = sub_100033ED0;
      v23 = 0;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000386A0;
      v17[3] = &unk_100380588;
      v17[4] = &v18;
      [(InAppReceiptDatabaseSession *)self _enumerateReceiptsForOriginalTransactionID:v15 bundleID:iDCopy usingBlock:v17];
      if ([v19[5] length])
      {
        v14 = v19[5];
      }

      else
      {
        if (qword_1003D4038 != -1)
        {
          sub_1002CA9E4();
        }

        if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
        {
          sub_1002CAED4();
        }

        v14 = 0;
      }

      _Block_object_dispose(&v18, 8);
    }

    else
    {
      if (qword_1003D4038 != -1)
      {
        sub_1002CA9E4();
      }

      if (os_log_type_enabled(qword_1003D4018, OS_LOG_TYPE_ERROR))
      {
        sub_1002CAE6C();
      }

      v14 = 0;
    }
  }

  return v14;
}

- (void)_enumerateSubscriptionStatusForBundleID:(id)d alsoMatchingPredicate:(id)predicate ignoreEmptyStatus:(BOOL)status usingBlock:(id)block
{
  dCopy = d;
  predicateCopy = predicate;
  blockCopy = block;
  v13 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:dCopy];
  v14 = v13;
  if (predicateCopy)
  {
    v27[0] = v13;
    v27[1] = predicateCopy;
    v15 = [NSArray arrayWithObjects:v27 count:2];
    v16 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v15];

    v14 = v16;
  }

  v26[0] = @"subscription_group_id";
  v26[1] = @"last_updated";
  v26[2] = @"renewal_info";
  v17 = [NSArray arrayWithObjects:v26 count:3];
  connection = [(InAppReceiptDatabaseSession *)self connection];
  v19 = [(SQLiteEntity *)InAppSubscriptionStatusDatabaseEntity queryOnConnection:connection predicate:v14];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000388F0;
  v22[3] = &unk_100381388;
  v22[4] = self;
  v23 = dCopy;
  statusCopy = status;
  v24 = blockCopy;
  v20 = blockCopy;
  v21 = dCopy;
  [v19 enumeratePersistentIDsAndProperties:v17 usingBlock:v22];
}

@end