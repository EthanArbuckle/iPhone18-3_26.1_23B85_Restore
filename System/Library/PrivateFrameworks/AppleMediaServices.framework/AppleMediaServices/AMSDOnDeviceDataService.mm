@interface AMSDOnDeviceDataService
+ (BOOL)isConnectionEntitled:(id)entitled;
- (void)askToSync:(id)sync reply:(id)reply;
@end

@implementation AMSDOnDeviceDataService

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

- (void)askToSync:(id)sync reply:(id)reply
{
  replyCopy = reply;
  syncCopy = sync;
  v7 = +[_TtC12amsaccountsd17TSDataSyncService sharedService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100076B00;
  v9[3] = &unk_1002AFE78;
  v10 = replyCopy;
  v8 = replyCopy;
  [v7 handleAPICallWithSyncRequest:syncCopy completionHandler:v9];
}

@end