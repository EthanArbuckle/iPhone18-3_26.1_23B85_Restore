@interface AMSUIMessagingTemporaryActionDataProvider
+ (id)parametersForAppStoreOptInNotificationWithDeeplink:(id)a3;
@end

@implementation AMSUIMessagingTemporaryActionDataProvider

+ (id)parametersForAppStoreOptInNotificationWithDeeplink:(id)a3
{
  v3 = sub_1BB1DB398();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB1DB348();
  v8 = static ActionDataProvider.parametersForAppStoreOptInNotification(deeplink:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v9 = sub_1BB1DD2A8();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end