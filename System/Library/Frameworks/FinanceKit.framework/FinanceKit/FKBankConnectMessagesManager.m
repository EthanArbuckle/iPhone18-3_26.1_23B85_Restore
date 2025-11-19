@interface FKBankConnectMessagesManager
- (FKBankConnectMessagesManager)init;
@end

@implementation FKBankConnectMessagesManager

- (FKBankConnectMessagesManager)init
{
  v6.receiver = self;
  v6.super_class = FKBankConnectMessagesManager;
  v2 = [(FKBankConnectMessagesManager *)&v6 init];
  if (v2)
  {
    v3 = +[_TtC10FinanceKit26BankConnectMessagesManager makeManager];
    messagesManager = v2->_messagesManager;
    v2->_messagesManager = v3;
  }

  return v2;
}

@end