@interface AMSDOnDeviceDataService
+ (BOOL)isConnectionEntitled:(id)a3;
- (void)askToSync:(id)a3 reply:(id)a4;
@end

@implementation AMSDOnDeviceDataService

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

- (void)askToSync:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_TtC12amsaccountsd17TSDataSyncService sharedService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100076B00;
  v9[3] = &unk_1002AFE78;
  v10 = v5;
  v8 = v5;
  [v7 handleAPICallWithSyncRequest:v6 completionHandler:v9];
}

@end