@interface SharingAccountNotificationDelegate
- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
@end

@implementation SharingAccountNotificationDelegate

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v48 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a6;
  v10 = v9;
  if (a4 == 3)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;
  v13 = [v12 accountType];
  v14 = [v13 identifier];

  v15 = *MEMORY[0x29EDBE2C0];
  v16 = [v10 aa_isAccountClass:*MEMORY[0x29EDBE2C0]];
  v17 = [v8 aa_isAccountClass:v15];
  v18 = sub_29C91314C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v36 = @"NO";
    v38 = 67110402;
    *v39 = a4;
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
    *&v39[6] = v14;
    v40 = 2112;
    v41 = v37;
    v42 = 2112;
    v43 = v36;
    v44 = 2112;
    v45 = v10;
    v46 = 2112;
    v47 = v8;
    _os_log_debug_impl(&dword_29C912000, v18, OS_LOG_TYPE_DEBUG, "Account change with parameters (type: %d, identifier: %@, newIsPrimary: %@, oldIsPrimary: %@, old account: %@, account: %@)", &v38, 0x3Au);
  }

  if ([v14 isEqualToString:*MEMORY[0x29EDB81C8]])
  {
    if (v8)
    {
      v19 = 0;
    }

    else
    {
      v19 = a4 == 3;
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
        if (!v8 || a4 != 1 || v10)
        {
          goto LABEL_49;
        }

        goto LABEL_36;
      }

      v29 = [v10 identifier];
      v30 = [v8 identifier];
      v31 = [v29 isEqualToString:v30];

      if (a4 == 2 && v31)
      {
        v22 = sub_29C91314C();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v38 = 138412290;
        *v39 = v8;
        v23 = "Primary account demoted to secondary (account: %@)";
        goto LABEL_18;
      }
    }

    else
    {
      if (a4 != 1 || v10 != 0 || v8 == 0)
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
        *v39 = v8;
        v28 = "Primary account added (account: %@)";
LABEL_38:
        _os_log_impl(&dword_29C912000, v27, OS_LOG_TYPE_DEFAULT, v28, &v38, 0xCu);
        goto LABEL_39;
      }

      if (v17)
      {
        v32 = [v10 identifier];
        v33 = [v8 identifier];
        v34 = [v32 isEqualToString:v33];

        if (a4 == 2)
        {
          if (v34)
          {
            v27 = sub_29C91314C();
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_39;
            }

            v38 = 138412290;
            *v39 = v8;
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