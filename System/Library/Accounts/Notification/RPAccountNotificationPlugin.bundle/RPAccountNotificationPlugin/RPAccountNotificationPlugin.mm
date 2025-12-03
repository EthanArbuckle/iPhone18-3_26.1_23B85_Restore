@interface RPAccountNotificationPlugin
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation RPAccountNotificationPlugin

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  accountCopy = account;
  storeCopy = store;
  oldAccountCopy = oldAccount;
  if (dword_2A1A11DE8 <= 10 && (dword_2A1A11DE8 != -1 || _LogCategory_Initialize()))
  {
    sub_29C904F7C(type);
  }

  if (accountCopy)
  {
    v11 = accountCopy;
  }

  else
  {
    v11 = oldAccountCopy;
  }

  v12 = v11;
  accountType = [v12 accountType];
  identifier = [accountType identifier];
  v15 = [identifier isEqualToString:*MEMORY[0x29EDB81C8]];

  if (v15)
  {
    identifier2 = [oldAccountCopy identifier];
    identifier3 = [accountCopy identifier];
    v18 = *MEMORY[0x29EDBE2C0];
    if (type == 1)
    {
      if (![accountCopy aa_isAccountClass:*MEMORY[0x29EDBE2C0]])
      {
        goto LABEL_35;
      }

      if (dword_2A1A11DE8 <= 30 && (dword_2A1A11DE8 != -1 || _LogCategory_Initialize()))
      {
        sub_29C904FE4();
      }
    }

    else
    {
      if (type != 2)
      {
        if (type != 3 || ![v12 aa_isAccountClass:*MEMORY[0x29EDBE2C0]])
        {
          goto LABEL_35;
        }

        if (dword_2A1A11DE8 <= 30 && (dword_2A1A11DE8 != -1 || _LogCategory_Initialize()))
        {
          sub_29C9050A4();
        }

        goto LABEL_22;
      }

      if ([oldAccountCopy aa_isAccountClass:*MEMORY[0x29EDBE2C0]] && (objc_msgSend(accountCopy, "aa_isAccountClass:", v18) & 1) == 0 && objc_msgSend(identifier2, "isEqual:", identifier3))
      {
        if (dword_2A1A11DE8 <= 30 && (dword_2A1A11DE8 != -1 || _LogCategory_Initialize()))
        {
          sub_29C905024();
        }

LABEL_22:
        [MEMORY[0x29EDC64A0] primaryAccountSignedOut];
        goto LABEL_35;
      }

      if (![accountCopy aa_isAccountClass:v18] || (objc_msgSend(oldAccountCopy, "aa_isAccountClass:", v18) & 1) != 0 || !objc_msgSend(identifier2, "isEqual:", identifier3))
      {
        goto LABEL_35;
      }

      if (dword_2A1A11DE8 <= 30 && (dword_2A1A11DE8 != -1 || _LogCategory_Initialize()))
      {
        sub_29C905064();
      }
    }

    [MEMORY[0x29EDC64A0] primaryAccountSignedIn];
LABEL_35:
    if (([accountCopy aa_isAccountClass:v18] & 1) != 0 || objc_msgSend(oldAccountCopy, "aa_isAccountClass:", v18))
    {
      if (dword_2A1A11DE8 <= 30 && (dword_2A1A11DE8 != -1 || _LogCategory_Initialize()))
      {
        sub_29C9050E4();
      }

      notify_post("com.apple.rapport.primaryAccountChanged");
    }
  }
}

@end