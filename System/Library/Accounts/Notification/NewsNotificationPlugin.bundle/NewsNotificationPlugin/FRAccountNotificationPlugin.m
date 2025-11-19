@interface FRAccountNotificationPlugin
- (BOOL)account:(id)a3 willChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
@end

@implementation FRAccountNotificationPlugin

- (BOOL)account:(id)a3 willChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v9 = a3;
  v10 = a5;
  if (a4 == 2)
  {
    v11 = *MEMORY[0x29EDB84A0];
    v12 = [a6 isProvisionedForDataclass:*MEMORY[0x29EDB84A0]];
    v13 = [v9 isProvisionedForDataclass:v11];
    v14 = 0;
    if ((v12 & 1) == 0 && v13)
    {
      v15 = [v9 isEnabledForDataclass:v11];
      [v9 setEnabled:1 forDataclass:v11];
      v16 = [v10 dataclassActionsForAccountSave:v9];
      v17 = [v16 objectForKeyedSubscript:v11];
      v18 = [v17 count];
      v14 = v18 < 2;
      if (v18 >= 2)
      {
        [v9 setEnabled:v15 forDataclass:v11];
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