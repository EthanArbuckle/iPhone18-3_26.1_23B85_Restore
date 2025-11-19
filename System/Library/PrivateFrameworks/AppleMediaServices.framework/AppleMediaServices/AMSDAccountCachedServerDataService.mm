@interface AMSDAccountCachedServerDataService
+ (BOOL)isConnectionEntitled:(id)a3;
- (void)getDataForAccountIDs:(id)a3 reply:(id)a4;
- (void)lazySyncForAccounts:(id)a3 reply:(id)a4;
- (void)manualSyncForAccountID:(id)a3 reply:(id)a4;
- (void)queueMetricsEventNotingExpiry:(id)a3 appID:(id)a4 reply:(id)a5;
@end

@implementation AMSDAccountCachedServerDataService

+ (BOOL)isConnectionEntitled:(id)a3
{
  v3 = [a3 valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  return v5;
}

- (void)getDataForAccountIDs:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_TtC12amsaccountsd23CachedServerDataService sharedService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003E600;
  v9[3] = &unk_1002AFE50;
  v10 = v5;
  v8 = v5;
  [v7 dataWithAccounts:v6 completionHandler:v9];
}

- (void)queueMetricsEventNotingExpiry:(id)a3 appID:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[_TtC12amsaccountsd23CachedServerDataService sharedService];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003E9E4;
  v12[3] = &unk_1002AFE78;
  v13 = v7;
  v11 = v7;
  [v10 queueMetricsEventFor:v9 appID:v8 completionHandler:v12];
}

- (void)manualSyncForAccountID:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_TtC12amsaccountsd23CachedServerDataService sharedService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003EB50;
  v9[3] = &unk_1002AFE78;
  v10 = v5;
  v8 = v5;
  [v7 manualSyncFor:v6 completionHandler:v9];
}

- (void)lazySyncForAccounts:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_TtC12amsaccountsd23CachedServerDataService sharedService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003ECBC;
  v9[3] = &unk_1002AFE50;
  v10 = v5;
  v8 = v5;
  [v7 dataWithAccounts:v6 completionHandler:v9];
}

@end