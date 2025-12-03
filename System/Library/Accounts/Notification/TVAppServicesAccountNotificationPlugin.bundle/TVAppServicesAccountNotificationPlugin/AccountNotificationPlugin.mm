@interface AccountNotificationPlugin
- (_TtC38TVAppServicesAccountNotificationPlugin25AccountNotificationPlugin)init;
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation AccountNotificationPlugin

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  accountCopy = account;
  storeCopy = store;
  oldAccountCopy = oldAccount;
  selfCopy = self;
  sub_13B0(account, oldAccount);
  sub_13B4(account, oldAccount);
}

- (_TtC38TVAppServicesAccountNotificationPlugin25AccountNotificationPlugin)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AccountNotificationPlugin();
  return [(AccountNotificationPlugin *)&v3 init];
}

@end