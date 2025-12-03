@interface WebBookmarksAccountNotificationObserver
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation WebBookmarksAccountNotificationObserver

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  accountCopy = account;
  oldAccountCopy = oldAccount;
  if (accountCopy)
  {
    v9 = accountCopy;
  }

  else
  {
    v9 = oldAccountCopy;
  }

  v10 = v9;
  v11 = [v10 aa_isAccountClass:*MEMORY[0x29EDBE2C0]];
  accountType = [v10 accountType];
  identifier = [accountType identifier];
  v14 = [identifier isEqualToString:*MEMORY[0x29EDB81C8]];

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
    v17 = [accountCopy isEnabledForDataclass:*MEMORY[0x29EDB8470]];
    v18 = [oldAccountCopy isEnabledForDataclass:v16];
    if (type == 1 && (v17 & 1) != 0)
    {
      v17 = 1;
    }

    else if (type != 2 || ((v17 ^ v18) & 1) == 0)
    {
      if (((type == 3) & v18) != 1)
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