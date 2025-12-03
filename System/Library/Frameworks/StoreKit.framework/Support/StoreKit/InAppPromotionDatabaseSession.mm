@interface InAppPromotionDatabaseSession
- (InAppPromotionDatabaseSession)initWithConnection:(id)connection;
- (id)promotionInfoForProductIdentifiers:(id)identifiers bundleID:(id)d error:(id *)error;
@end

@implementation InAppPromotionDatabaseSession

- (InAppPromotionDatabaseSession)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = InAppPromotionDatabaseSession;
  v6 = [(InAppPromotionDatabaseSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (id)promotionInfoForProductIdentifiers:(id)identifiers bundleID:(id)d error:(id *)error
{
  identifiersCopy = identifiers;
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" value:d comparisonType:1];
  if ([identifiersCopy count])
  {
    allObjects = [identifiersCopy allObjects];
    v10 = [SQLiteContainsPredicate containsPredicateWithProperty:@"product_id" values:allObjects];

    v24[0] = v8;
    v24[1] = v10;
    v11 = [NSArray arrayWithObjects:v24 count:2];
    v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];

    v8 = v12;
  }

  v23[0] = @"product_id";
  v23[1] = @"promo_order";
  v23[2] = @"visibility";
  v13 = [NSArray arrayWithObjects:v23 count:3];
  v14 = +[NSMutableArray array];
  connection = [(InAppPromotionDatabaseSession *)self connection];
  v22 = @"promo_order";
  v16 = [NSArray arrayWithObjects:&v22 count:1];
  v17 = [(SQLiteEntity *)InAppPromotionDatabaseEntity queryOnConnection:connection predicate:v8 orderingProperties:v16];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100003ABC;
  v20[3] = &unk_10037F740;
  v18 = v14;
  v21 = v18;
  [v17 enumeratePersistentIDsAndProperties:v13 usingBlock:v20];

  return v18;
}

@end