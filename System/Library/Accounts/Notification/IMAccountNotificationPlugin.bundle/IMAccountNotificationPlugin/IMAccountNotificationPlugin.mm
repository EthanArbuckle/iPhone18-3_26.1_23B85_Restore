@interface IMAccountNotificationPlugin
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation IMAccountNotificationPlugin

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  if (type == 1)
  {
    v7 = MEMORY[0x29EDBFB38];
    accountCopy = account;
    sharedInstance = [v7 sharedInstance];
    v9 = [accountCopy accountPropertyForKey:@"altDSID"];

    if (v9)
    {
      v10 = [sharedInstance authKitAccountWithAltDSID:v9];
      if (v10)
      {
        v11 = [sharedInstance securityLevelForAccount:v10];
        if ((v11 & 0xFFFFFFFFFFFFFFFBLL) != 0)
        {
          defaultCenter = [MEMORY[0x29EDB9F98] defaultCenter];
          [defaultCenter postNotificationName:*MEMORY[0x29EDC5558] object:*MEMORY[0x29EDC5558] userInfo:0];
        }

        if (v11 == 4)
        {
          defaultCenter2 = [MEMORY[0x29EDB9F98] defaultCenter];
          [defaultCenter2 postNotificationName:*MEMORY[0x29EDC5550] object:*MEMORY[0x29EDC5550] userInfo:0];
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }
}

@end