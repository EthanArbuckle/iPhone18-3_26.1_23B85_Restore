@interface IMAccountNotificationPlugin
- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
@end

@implementation IMAccountNotificationPlugin

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  if (a4 == 1)
  {
    v7 = MEMORY[0x29EDBFB38];
    v8 = a3;
    v14 = [v7 sharedInstance];
    v9 = [v8 accountPropertyForKey:@"altDSID"];

    if (v9)
    {
      v10 = [v14 authKitAccountWithAltDSID:v9];
      if (v10)
      {
        v11 = [v14 securityLevelForAccount:v10];
        if ((v11 & 0xFFFFFFFFFFFFFFFBLL) != 0)
        {
          v12 = [MEMORY[0x29EDB9F98] defaultCenter];
          [v12 postNotificationName:*MEMORY[0x29EDC5558] object:*MEMORY[0x29EDC5558] userInfo:0];
        }

        if (v11 == 4)
        {
          v13 = [MEMORY[0x29EDB9F98] defaultCenter];
          [v13 postNotificationName:*MEMORY[0x29EDC5550] object:*MEMORY[0x29EDC5550] userInfo:0];
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