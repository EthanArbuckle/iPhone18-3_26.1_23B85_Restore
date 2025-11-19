@interface WebBookmarksAccountNotificationObserver
- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
@end

@implementation WebBookmarksAccountNotificationObserver

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v19 = a3;
  v8 = a6;
  if (v19)
  {
    v9 = v19;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;
  v11 = [v10 aa_isAccountClass:*MEMORY[0x29EDBE2C0]];
  v12 = [v10 accountType];
  v13 = [v12 identifier];
  v14 = [v13 isEqualToString:*MEMORY[0x29EDB81C8]];

  if (v14)
  {
    v15 = v11 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = *MEMORY[0x29EDB8470];
    v17 = [v19 isEnabledForDataclass:*MEMORY[0x29EDB8470]];
    v18 = [v8 isEnabledForDataclass:v16];
    if (a4 == 1 && (v17 & 1) != 0)
    {
      v17 = 1;
    }

    else if (a4 != 2 || ((v17 ^ v18) & 1) == 0)
    {
      if (((a4 == 3) & v18) != 1)
      {
        goto LABEL_16;
      }

      v17 = 0;
    }

    [MEMORY[0x29EDC8308] didToggleCloudTabs:v17];
  }

LABEL_16:
}

@end