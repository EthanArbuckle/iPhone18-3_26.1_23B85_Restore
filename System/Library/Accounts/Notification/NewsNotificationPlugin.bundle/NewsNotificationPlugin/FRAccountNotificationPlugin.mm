@interface FRAccountNotificationPlugin
- (BOOL)account:(id)account willChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation FRAccountNotificationPlugin

- (BOOL)account:(id)account willChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  accountCopy = account;
  storeCopy = store;
  if (type == 2)
  {
    v11 = *MEMORY[0x29EDB84A0];
    v12 = [oldAccount isProvisionedForDataclass:*MEMORY[0x29EDB84A0]];
    v13 = [accountCopy isProvisionedForDataclass:v11];
    v14 = 0;
    if ((v12 & 1) == 0 && v13)
    {
      v15 = [accountCopy isEnabledForDataclass:v11];
      [accountCopy setEnabled:1 forDataclass:v11];
      v16 = [storeCopy dataclassActionsForAccountSave:accountCopy];
      v17 = [v16 objectForKeyedSubscript:v11];
      v18 = [v17 count];
      v14 = v18 < 2;
      if (v18 >= 2)
      {
        [accountCopy setEnabled:v15 forDataclass:v11];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end