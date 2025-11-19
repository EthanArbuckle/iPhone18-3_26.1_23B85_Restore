@interface StoreKitMessagesDatabaseTransaction
- (BOOL)addMessageInfo:(id)a3 withError:(id *)a4;
- (BOOL)addRevocationInfo:(id)a3;
- (BOOL)removeMessageInfoForUser:(id)a3 inApp:(id)a4 type:(int64_t)a5 withError:(id *)a6;
- (BOOL)removeRevocationInfoForUser:(id)a3 inApp:(id)a4;
@end

@implementation StoreKitMessagesDatabaseTransaction

- (BOOL)addMessageInfo:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [v5 userID];
  [v6 setObject:v7 forKeyedSubscript:@"dsid"];

  v8 = [v5 bundleID];
  [v6 setObject:v8 forKeyedSubscript:@"bundle_id"];

  v9 = [v5 status];
  [v6 setObject:v9 forKeyedSubscript:@"status"];

  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 allowDeveloperControl]);
  [v6 setObject:v10 forKeyedSubscript:@"allow_developer_control"];

  v11 = [v5 type];
  v12 = [NSNumber numberWithInteger:v11];
  [v6 setObject:v12 forKeyedSubscript:@"message_type"];

  v13 = [StoreKitMessagesDatabaseEntity alloc];
  v14 = [(StoreKitMessagesDatabaseSession *)self connection];
  v15 = [(SQLiteEntity *)v13 initWithPropertyValues:v6 onConnection:v14];

  LOBYTE(v14) = [(SQLiteEntity *)v15 existsInDatabase];
  return v14;
}

- (BOOL)removeMessageInfoForUser:(id)a3 inApp:(id)a4 type:(int64_t)a5 withError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [NSNumber numberWithInteger:a5];
  v13 = [(StoreKitMessagesDatabaseSession *)self connection];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100059BE4;
  v18[3] = &unk_1003824A0;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  LOBYTE(a6) = [v13 executeStatement:@"DELETE FROM storekit_messages WHERE dsid = ? AND bundle_id = ? AND message_type = ?;" error:a6 bindings:v18];

  return a6;
}

- (BOOL)addRevocationInfo:(id)a3
{
  v13[0] = @"dsid";
  v4 = a3;
  v5 = [v4 userID];
  v14[0] = v5;
  v13[1] = @"bundle_id";
  v6 = [v4 bundleID];
  v14[1] = v6;
  v13[2] = @"product_id";
  v7 = [v4 productID];

  v14[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  v9 = [StoreKitRevocationsDatabaseEntity alloc];
  v10 = [(StoreKitMessagesDatabaseSession *)self connection];
  v11 = [(SQLiteEntity *)v9 initWithPropertyValues:v8 onConnection:v10];

  LOBYTE(v10) = [(SQLiteEntity *)v11 existsInDatabase];
  return v10;
}

- (BOOL)removeRevocationInfoForUser:(id)a3 inApp:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(StoreKitMessagesDatabaseSession *)self connection];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100059E94;
  v12[3] = &unk_10037FAC8;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  LOBYTE(v7) = [v8 executeStatement:@"DELETE FROM storekit_revocations WHERE dsid = ? AND bundle_id = ?;" error:0 bindings:v12];

  return v7;
}

@end