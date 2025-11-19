@interface FKBankConnectPushNotificationHandler
- (FKBankConnectPushNotificationHandler)init;
@end

@implementation FKBankConnectPushNotificationHandler

- (FKBankConnectPushNotificationHandler)init
{
  v6.receiver = self;
  v6.super_class = FKBankConnectPushNotificationHandler;
  v2 = [(FKBankConnectPushNotificationHandler *)&v6 init];
  if (v2)
  {
    v3 = +[_TtC10FinanceKit34BankConnectPushNotificationHandler makeHandler];
    wrappedClass = v2->_wrappedClass;
    v2->_wrappedClass = v3;
  }

  return v2;
}

@end