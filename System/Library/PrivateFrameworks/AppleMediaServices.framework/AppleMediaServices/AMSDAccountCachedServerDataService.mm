@interface AMSDAccountCachedServerDataService
+ (BOOL)isConnectionEntitled:(id)entitled;
- (void)getDataForAccountIDs:(id)ds reply:(id)reply;
- (void)lazySyncForAccounts:(id)accounts reply:(id)reply;
- (void)manualSyncForAccountID:(id)d reply:(id)reply;
- (void)queueMetricsEventNotingExpiry:(id)expiry appID:(id)d reply:(id)reply;
@end

@implementation AMSDAccountCachedServerDataService

+ (BOOL)isConnectionEntitled:(id)entitled
{
  v3 = [entitled valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (void)getDataForAccountIDs:(id)ds reply:(id)reply
{
  replyCopy = reply;
  dsCopy = ds;
  v7 = +[_TtC12amsaccountsd23CachedServerDataService sharedService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003E600;
  v9[3] = &unk_1002AFE50;
  v10 = replyCopy;
  v8 = replyCopy;
  [v7 dataWithAccounts:dsCopy completionHandler:v9];
}

- (void)queueMetricsEventNotingExpiry:(id)expiry appID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  expiryCopy = expiry;
  v10 = +[_TtC12amsaccountsd23CachedServerDataService sharedService];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003E9E4;
  v12[3] = &unk_1002AFE78;
  v13 = replyCopy;
  v11 = replyCopy;
  [v10 queueMetricsEventFor:expiryCopy appID:dCopy completionHandler:v12];
}

- (void)manualSyncForAccountID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v7 = +[_TtC12amsaccountsd23CachedServerDataService sharedService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003EB50;
  v9[3] = &unk_1002AFE78;
  v10 = replyCopy;
  v8 = replyCopy;
  [v7 manualSyncFor:dCopy completionHandler:v9];
}

- (void)lazySyncForAccounts:(id)accounts reply:(id)reply
{
  replyCopy = reply;
  accountsCopy = accounts;
  v7 = +[_TtC12amsaccountsd23CachedServerDataService sharedService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003ECBC;
  v9[3] = &unk_1002AFE50;
  v10 = replyCopy;
  v8 = replyCopy;
  [v7 dataWithAccounts:accountsCopy completionHandler:v9];
}

@end