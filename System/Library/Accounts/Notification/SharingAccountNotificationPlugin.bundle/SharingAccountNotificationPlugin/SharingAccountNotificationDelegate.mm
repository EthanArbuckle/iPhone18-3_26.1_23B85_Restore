@interface SharingAccountNotificationDelegate
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation SharingAccountNotificationDelegate

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v48 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  oldAccountCopy = oldAccount;
  v10 = oldAccountCopy;
  if (type == 3)
  {
    v11 = oldAccountCopy;
  }

  else
  {
    v11 = accountCopy;
  }

  v12 = v11;
  accountType = [v12 accountType];
  identifier = [accountType identifier];

  v15 = *MEMORY[0x29EDBE2C0];
  v16 = [v10 aa_isAccountClass:*MEMORY[0x29EDBE2C0]];
  v17 = [accountCopy aa_isAccountClass:v15];
  v18 = sub_29C91314C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v36 = @"NO";
    v38 = 67110402;
    *v39 = type;
    if (v17)
    {
      v37 = @"YES";
    }

    else
    {
      v37 = @"NO";
    }

    if (v16)
    {
      v36 = @"YES";
    }

    *&v39[4] = 2112;
    *&v39[6] = identifier;
    v40 = 2112;
    v41 = v37;
    v42 = 2112;
    v43 = v36;
    v44 = 2112;
    v45 = v10;
    v46 = 2112;
    v47 = accountCopy;
    _os_log_debug_impl(&dword_29C912000, v18, OS_LOG_TYPE_DEBUG, "Account change with parameters (type: %d, identifier: %@, newIsPrimary: %@, oldIsPrimary: %@, old account: %@, account: %@)", &v38, 0x3Au);
  }

  if ([identifier isEqualToString:*MEMORY[0x29EDB81C8]])
  {
    if (accountCopy)
    {
      v19 = 0;
    }

    else
    {
      v19 = type == 3;
    }

    if (!v19 || v10 == 0)
    {
      v21 = 0;
    }

    else
    {
      v21 = v16;
    }

    if (v21 == 1)
    {
      v22 = sub_29C91314C();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:

        [MEMORY[0x29EDC66A8] appleAccountSignedOut];
        goto LABEL_49;
      }

      v38 = 138412290;
      *v39 = v10;
      v23 = "Primary account deleted (old account: %@)";
LABEL_18:
      _os_log_impl(&dword_29C912000, v22, OS_LOG_TYPE_DEFAULT, v23, &v38, 0xCu);
      goto LABEL_19;
    }

    if (v16)
    {
      if (v17)
      {
        if (!accountCopy || type != 1 || v10)
        {
          goto LABEL_49;
        }

        goto LABEL_36;
      }

      identifier2 = [v10 identifier];
      identifier3 = [accountCopy identifier];
      v31 = [identifier2 isEqualToString:identifier3];

      if (type == 2 && v31)
      {
        v22 = sub_29C91314C();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v38 = 138412290;
        *v39 = accountCopy;
        v23 = "Primary account demoted to secondary (account: %@)";
        goto LABEL_18;
      }
    }

    else
    {
      if (type != 1 || v10 != 0 || accountCopy == 0)
      {
        v26 = 0;
      }

      else
      {
        v26 = v17;
      }

      if (v26)
      {
LABEL_36:
        v27 = sub_29C91314C();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
LABEL_39:

          [MEMORY[0x29EDC66A8] appleAccountSignedIn];
          goto LABEL_49;
        }

        v38 = 138412290;
        *v39 = accountCopy;
        v28 = "Primary account added (account: %@)";
LABEL_38:
        _os_log_impl(&dword_29C912000, v27, OS_LOG_TYPE_DEFAULT, v28, &v38, 0xCu);
        goto LABEL_39;
      }

      if (v17)
      {
        identifier4 = [v10 identifier];
        identifier5 = [accountCopy identifier];
        v34 = [identifier4 isEqualToString:identifier5];

        if (type == 2)
        {
          if (v34)
          {
            v27 = sub_29C91314C();
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_39;
            }

            v38 = 138412290;
            *v39 = accountCopy;
            v28 = "Account promoted to primary (account: %@)";
            goto LABEL_38;
          }
        }
      }
    }
  }

LABEL_49:

  v35 = *MEMORY[0x29EDCA608];
}

@end