@interface Plugin
- (_TtC37LockdownModeAccountNotificationPlugin6Plugin)init;
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation Plugin

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  accountCopy = account;
  storeCopy = store;
  oldAccountCopy = oldAccount;
  selfCopy = self;
  sub_29C8E1278(account, type, oldAccount);
}

- (_TtC37LockdownModeAccountNotificationPlugin6Plugin)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Plugin();
  return [(Plugin *)&v3 init];
}

@end