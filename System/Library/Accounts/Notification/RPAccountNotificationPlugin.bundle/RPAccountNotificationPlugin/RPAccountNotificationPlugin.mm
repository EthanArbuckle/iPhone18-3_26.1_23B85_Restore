uint64_t sub_29C904F7C(int a1)
{
  if ((a1 - 1) <= 3)
  {
    v1 = off_29F3323D0[a1 - 1];
  }

  return LogPrintF();
}

;
@end

@implementation RPAccountNotificationPlugin

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v19 = a3;
  v9 = a5;
  v10 = a6;
  if (dword_2A1A11DE8 <= 10 && (dword_2A1A11DE8 != -1 || _LogCategory_Initialize()))
  {
    sub_29C904F7C(a4);
  }

  if (v19)
  {
    v11 = v19;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;
  v13 = [v12 accountType];
  v14 = [v13 identifier];
  v15 = [v14 isEqualToString:*MEMORY[0x29EDB81C8]];

  if (v15)
  {
    v16 = [v10 identifier];
    v17 = [v19 identifier];
    v18 = *MEMORY[0x29EDBE2C0];
    if (a4 == 1)
    {
      if (![v19 aa_isAccountClass:*MEMORY[0x29EDBE2C0]])
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
      if (a4 != 2)
      {
        if (a4 != 3 || ![v12 aa_isAccountClass:*MEMORY[0x29EDBE2C0]])
        {
          goto LABEL_35;
        }

        if (dword_2A1A11DE8 <= 30 && (dword_2A1A11DE8 != -1 || _LogCategory_Initialize()))
        {
          sub_29C9050A4();
        }

        goto LABEL_22;
      }

      if ([v10 aa_isAccountClass:*MEMORY[0x29EDBE2C0]] && (objc_msgSend(v19, "aa_isAccountClass:", v18) & 1) == 0 && objc_msgSend(v16, "isEqual:", v17))
      {
        if (dword_2A1A11DE8 <= 30 && (dword_2A1A11DE8 != -1 || _LogCategory_Initialize()))
        {
          sub_29C905024();
        }

LABEL_22:
        [MEMORY[0x29EDC64A0] primaryAccountSignedOut];
        goto LABEL_35;
      }

      if (![v19 aa_isAccountClass:v18] || (objc_msgSend(v10, "aa_isAccountClass:", v18) & 1) != 0 || !objc_msgSend(v16, "isEqual:", v17))
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
    if (([v19 aa_isAccountClass:v18] & 1) != 0 || objc_msgSend(v10, "aa_isAccountClass:", v18))
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