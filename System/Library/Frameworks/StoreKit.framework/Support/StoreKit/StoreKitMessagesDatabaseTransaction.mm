@interface StoreKitMessagesDatabaseTransaction
- (BOOL)addMessageInfo:(id)info withError:(id *)error;
- (BOOL)addRevocationInfo:(id)info;
- (BOOL)removeMessageInfoForUser:(id)user inApp:(id)app type:(int64_t)type withError:(id *)error;
- (BOOL)removeRevocationInfoForUser:(id)user inApp:(id)app;
@end

@implementation StoreKitMessagesDatabaseTransaction

- (BOOL)addMessageInfo:(id)info withError:(id *)error
{
  infoCopy = info;
  v6 = objc_alloc_init(NSMutableDictionary);
  userID = [infoCopy userID];
  [v6 setObject:userID forKeyedSubscript:@"dsid"];

  bundleID = [infoCopy bundleID];
  [v6 setObject:bundleID forKeyedSubscript:@"bundle_id"];

  status = [infoCopy status];
  [v6 setObject:status forKeyedSubscript:@"status"];

  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [infoCopy allowDeveloperControl]);
  [v6 setObject:v10 forKeyedSubscript:@"allow_developer_control"];

  type = [infoCopy type];
  v12 = [NSNumber numberWithInteger:type];
  [v6 setObject:v12 forKeyedSubscript:@"message_type"];

  v13 = [StoreKitMessagesDatabaseEntity alloc];
  connection = [(StoreKitMessagesDatabaseSession *)self connection];
  v15 = [(SQLiteEntity *)v13 initWithPropertyValues:v6 onConnection:connection];

  LOBYTE(connection) = [(SQLiteEntity *)v15 existsInDatabase];
  return connection;
}

- (BOOL)removeMessageInfoForUser:(id)user inApp:(id)app type:(int64_t)type withError:(id *)error
{
  userCopy = user;
  appCopy = app;
  v12 = [NSNumber numberWithInteger:type];
  connection = [(StoreKitMessagesDatabaseSession *)self connection];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100059BE4;
  v18[3] = &unk_1003824A0;
  v19 = userCopy;
  v20 = appCopy;
  v21 = v12;
  v14 = v12;
  v15 = appCopy;
  v16 = userCopy;
  LOBYTE(error) = [connection executeStatement:@"DELETE FROM storekit_messages WHERE dsid = ? AND bundle_id = ? AND message_type = ?;" error:error bindings:v18];

  return error;
}

- (BOOL)addRevocationInfo:(id)info
{
  v13[0] = @"dsid";
  infoCopy = info;
  userID = [infoCopy userID];
  v14[0] = userID;
  v13[1] = @"bundle_id";
  bundleID = [infoCopy bundleID];
  v14[1] = bundleID;
  v13[2] = @"product_id";
  productID = [infoCopy productID];

  v14[2] = productID;
  v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  v9 = [StoreKitRevocationsDatabaseEntity alloc];
  connection = [(StoreKitMessagesDatabaseSession *)self connection];
  v11 = [(SQLiteEntity *)v9 initWithPropertyValues:v8 onConnection:connection];

  LOBYTE(connection) = [(SQLiteEntity *)v11 existsInDatabase];
  return connection;
}

- (BOOL)removeRevocationInfoForUser:(id)user inApp:(id)app
{
  userCopy = user;
  appCopy = app;
  connection = [(StoreKitMessagesDatabaseSession *)self connection];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100059E94;
  v12[3] = &unk_10037FAC8;
  v13 = userCopy;
  v14 = appCopy;
  v9 = appCopy;
  v10 = userCopy;
  LOBYTE(appCopy) = [connection executeStatement:@"DELETE FROM storekit_revocations WHERE dsid = ? AND bundle_id = ?;" error:0 bindings:v12];

  return appCopy;
}

@end