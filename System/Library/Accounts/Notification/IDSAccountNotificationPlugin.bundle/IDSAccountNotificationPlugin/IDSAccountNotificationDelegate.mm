@interface IDSAccountNotificationDelegate
- (BOOL)canSaveAccount:(id)a3 inStore:(id)a4;
- (IDSAccountNotificationDelegate)init;
- (id)_findExistingIdentityServicesACAccountWithUserName:(id)a3 inStore:(id)a4;
- (id)_passwordEquivalentTokenFromAccount:(id)a3;
- (void)_gameCenterModifyBasedOnUsername:(id)a3;
- (void)_gameCenterSignInBasedOnAccount:(id)a3 inStore:(id)a4;
- (void)_iCloudModifyBasedOnUsername:(id)a3;
- (void)_iCloudSignInBasedOnAccount:(id)a3 inStore:(id)a4;
- (void)_iTunesSignInBasedOnAccount:(id)a3;
- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
@end

@implementation IDSAccountNotificationDelegate

- (IDSAccountNotificationDelegate)init
{
  v12 = *MEMORY[0x29EDCA608];
  v9.receiver = self;
  v9.super_class = IDSAccountNotificationDelegate;
  v2 = [(IDSAccountNotificationDelegate *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDC5540] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = v2;
      _os_log_impl(&dword_29C8D2000, v3, OS_LOG_TYPE_DEFAULT, "IDSAccountNotificationDelegate loaded { self: %p }", buf, 0xCu);
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.identityservices.idsaccountnotficationdelegate", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v2->_setupRequestPending = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v2;
}

- (id)_findExistingIdentityServicesACAccountWithUserName:(id)a3 inStore:(id)a4
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x29EDB8268];
  v8 = [v6 accountTypeWithAccountTypeIdentifier:*MEMORY[0x29EDB8268]];
  if (!v8)
  {
    v9 = [MEMORY[0x29EDC5540] warning];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_29C8D47B0(v7, v9);
    }

    goto LABEL_18;
  }

  v9 = [v6 accountsWithAccountType:v8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (!v10)
  {
LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  v11 = v10;
  v21 = v6;
  v12 = 0;
  v13 = *v23;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v23 != v13)
      {
        objc_enumerationMutation(v9);
      }

      if (!v12)
      {
        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 username];
        v17 = [v16 isEqualToIgnoringCase:v5];

        if (v17)
        {
          v12 = v15;
          v18 = [MEMORY[0x29EDC5540] registration];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v27 = v12;
            _os_log_impl(&dword_29C8D2000, v18, OS_LOG_TYPE_DEFAULT, "Found matching IDS ACAccount { account: %@ }", buf, 0xCu);
          }
        }

        else
        {
          v12 = 0;
        }
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
  }

  while (v11);
  v6 = v21;
LABEL_19:

  v19 = *MEMORY[0x29EDCA608];

  return v12;
}

- (void)_iCloudSignInBasedOnAccount:(id)a3 inStore:(id)a4
{
  v35 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = MEMORY[0x29EDC5540];
  v8 = a4;
  v9 = [v7 registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v6;
    _os_log_impl(&dword_29C8D2000, v9, OS_LOG_TYPE_DEFAULT, "Signing in iCloud-based IDS services { account: %@ }", buf, 0xCu);
  }

  v10 = [v6 username];
  v11 = [(IDSAccountNotificationDelegate *)self _findExistingIdentityServicesACAccountWithUserName:v10 inStore:v8];

  if (v11)
  {
    self->_setupRequestPending = 0;
    v12 = [v11 username];
    v13 = [v12 copy];

    v14 = [v11 credential];
    v15 = [v14 token];
    v16 = [v15 copy];

    v17 = [v11 accountPropertyForKey:*MEMORY[0x29EDC5508]];
    v18 = [v17 copy];

    v19 = [v11 accountPropertyForKey:*MEMORY[0x29EDC5510]];
    v20 = [v19 copy];

    queue = self->_queue;
    v28[0] = MEMORY[0x29EDCA5F8];
    v28[1] = 3221225472;
    v28[2] = sub_29C8D3448;
    v28[3] = &unk_29F330138;
    v29 = v13;
    v30 = v16;
    v31 = v18;
    v32 = v20;
    v22 = v20;
    v23 = v18;
    v24 = v16;
    v25 = v13;
    dispatch_async(queue, v28);
    self->_setupRequestPending = 0;
  }

  else
  {
    self->_setupRequestPending = 1;
    v25 = [MEMORY[0x29EDC5540] registration];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v6 username];
      *buf = 138412290;
      v34 = v26;
      _os_log_impl(&dword_29C8D2000, v25, OS_LOG_TYPE_DEFAULT, "No existing ACAccount for this username, waiting... { username: %@ }", buf, 0xCu);
    }
  }

  v27 = *MEMORY[0x29EDCA608];
}

- (void)_iCloudModifyBasedOnUsername:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C8D350C;
  block[3] = &unk_29F330180;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (id)_passwordEquivalentTokenFromAccount:(id)a3
{
  v3 = [a3 credential];
  v4 = [v3 password];

  return v4;
}

- (void)_iTunesSignInBasedOnAccount:(id)a3
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [MEMORY[0x29EDC5540] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_29C8D2000, v5, OS_LOG_TYPE_DEFAULT, "Signing in iTunes-based IDS services { account: %@ }", buf, 0xCu);
  }

  v6 = [v4 username];
  v7 = [v6 copy];

  v8 = [(IDSAccountNotificationDelegate *)self _passwordEquivalentTokenFromAccount:v4];
  v9 = [v8 copy];

  queue = self->_queue;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = sub_29C8D36E8;
  v14[3] = &unk_29F3301A8;
  v15 = v7;
  v16 = v9;
  v11 = v9;
  v12 = v7;
  dispatch_async(queue, v14);

  v13 = *MEMORY[0x29EDCA608];
}

- (void)_gameCenterSignInBasedOnAccount:(id)a3 inStore:(id)a4
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = [MEMORY[0x29EDC5540] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_29C8D2000, v6, OS_LOG_TYPE_DEFAULT, "Signing in GameCenter-based IDS services { account: %@ }", buf, 0xCu);
  }

  v7 = [v5 username];
  v8 = [v7 copy];

  v9 = [(IDSAccountNotificationDelegate *)self _passwordEquivalentTokenFromAccount:v5];
  v10 = [v9 copy];

  queue = self->_queue;
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = sub_29C8D389C;
  v15[3] = &unk_29F3301A8;
  v16 = v8;
  v17 = v10;
  v12 = v10;
  v13 = v8;
  dispatch_async(queue, v15);

  v14 = *MEMORY[0x29EDCA608];
}

- (void)_gameCenterModifyBasedOnUsername:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C8D3964;
  block[3] = &unk_29F330180;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v92 = *MEMORY[0x29EDCA608];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x29EDC5540] registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v79 = "[IDSAccountNotificationDelegate account:didChangeWithType:inStore:oldAccount:]";
    v80 = 2048;
    v81 = self;
    _os_log_impl(&dword_29C8D2000, v13, OS_LOG_TYPE_DEFAULT, "%s invoked { self: %p }", buf, 0x16u);
  }

  v14 = MEMORY[0x29EDB81C8];
  if (a4 == 3)
  {
    v15 = [(IDSAccountNotificationDelegate *)v12 accountType];
    v16 = [v15 identifier];

    if ([v16 isEqualToString:*v14])
    {
      v17 = self;
      v18 = v16;
      v77 = v11;
      v19 = v12;
      v20 = [(IDSAccountNotificationDelegate *)v12 accountPropertyForKey:@"primaryAccount"];
      v21 = [v20 BOOLValue];
      v22 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v23 = [(IDSAccountNotificationDelegate *)v10 accountType];
    v16 = [v23 identifier];

    if ([v16 isEqualToString:*v14])
    {
      v17 = self;
      v18 = v16;
      v19 = v12;
      v77 = v11;
      if (a4 == 2)
      {
        v20 = [(IDSAccountNotificationDelegate *)v10 accountPropertyForKey:@"primaryAccount"];
        v24 = [v20 BOOLValue];
        v21 = 0;
        v22 = 0;
        goto LABEL_11;
      }

      if (a4 != 1)
      {
        v21 = 0;
        v22 = 0;
        v24 = 0;
        goto LABEL_12;
      }

      v20 = [(IDSAccountNotificationDelegate *)v10 accountPropertyForKey:@"primaryAccount"];
      v22 = [v20 BOOLValue];
      v21 = 0;
LABEL_10:
      v24 = 0;
LABEL_11:

LABEL_12:
      v25 = [MEMORY[0x29EDC5540] registration];
      v12 = v19;
      v16 = v18;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        if ((a4 - 1) > 3)
        {
          v26 = @"Unknown";
        }

        else
        {
          v26 = off_29F3301C8[a4 - 1];
        }

        v29 = @"NO";
        *buf = 138413570;
        v79 = v12;
        if (v22)
        {
          v30 = @"YES";
        }

        else
        {
          v30 = @"NO";
        }

        if (v21)
        {
          v31 = @"YES";
        }

        else
        {
          v31 = @"NO";
        }

        if (v24)
        {
          v29 = @"YES";
        }

        v80 = 2112;
        v81 = v10;
        v82 = 2112;
        v83 = v26;
        v84 = 2112;
        v85 = v30;
        v86 = 2112;
        v87 = v31;
        v88 = 2112;
        v89 = v29;
        _os_log_impl(&dword_29C8D2000, v25, OS_LOG_TYPE_DEFAULT, "iCloud account changed { oldAccount: %@, newAccount: %@, changeType: %@, didSignIn: %@, didSignOut: %@, wasModified: %@ }", buf, 0x3Eu);
      }

      if (v22)
      {
        v32 = v17;
        v33 = v10;
        v11 = v77;
LABEL_37:
        [(IDSAccountNotificationDelegate *)v32 _iCloudSignInBasedOnAccount:v33 inStore:v11];
        goto LABEL_141;
      }

      v11 = v77;
      if (v21)
      {
        [(IDSAccountNotificationDelegate *)v17 _iCloudSignOut];
        goto LABEL_141;
      }

      if (!v24)
      {
        goto LABEL_141;
      }

      v40 = [(IDSAccountNotificationDelegate *)v10 username];
      [(IDSAccountNotificationDelegate *)v17 _iCloudModifyBasedOnUsername:v40];
LABEL_51:

      goto LABEL_141;
    }
  }

  if ([v16 isEqualToString:*MEMORY[0x29EDB82D8]])
  {
    v74 = a4 - 1;
    if (a4 == 1)
    {
      v41 = v11;
      v76 = [(IDSAccountNotificationDelegate *)v10 isActive];
    }

    else
    {
      if (a4 == 2)
      {
        if (([(IDSAccountNotificationDelegate *)v12 isActive]& 1) != 0)
        {
          v27 = 0;
        }

        else
        {
          v27 = [(IDSAccountNotificationDelegate *)v10 isActive];
        }

        v76 = v27;
        v41 = v11;
        if ([(IDSAccountNotificationDelegate *)v10 isActive])
        {
          v43 = [(IDSAccountNotificationDelegate *)v10 isAuthenticated];
        }

        else
        {
          v43 = 0;
        }

        v42 = 1;
        goto LABEL_69;
      }

      v41 = v11;
      v76 = 0;
    }

    v42 = 0;
    v43 = 0;
LABEL_69:
    v47 = [(IDSAccountNotificationDelegate *)self _passwordEquivalentTokenFromAccount:v10];
    v48 = [v47 length];

    if (!v48)
    {
      v43 = 0;
    }

    if (a4 == 3)
    {
      v49 = [(IDSAccountNotificationDelegate *)v12 isActive];
    }

    else
    {
      v49 = 0;
    }

    v11 = v41;
    if (v42 && [(IDSAccountNotificationDelegate *)v12 isActive])
    {
      v50 = [(IDSAccountNotificationDelegate *)v10 isActive]^ 1;
    }

    else
    {
      LOBYTE(v50) = 0;
    }

    v51 = v49 | v50;
    v52 = [MEMORY[0x29EDC5540] registration];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      if (v74 > 3)
      {
        v53 = @"Unknown";
      }

      else
      {
        v53 = off_29F3301C8[v74];
      }

      *buf = 138413826;
      v54 = @"YES";
      v79 = v12;
      v80 = 2112;
      if (v76)
      {
        v55 = @"YES";
      }

      else
      {
        v55 = @"NO";
      }

      v81 = v10;
      if (v43)
      {
        v56 = @"YES";
      }

      else
      {
        v56 = @"NO";
      }

      v82 = 2112;
      if ((v51 & 1) == 0)
      {
        v54 = @"NO";
      }

      v83 = v53;
      v84 = 2112;
      v85 = @"NO";
      v86 = 2112;
      v87 = v55;
      v88 = 2112;
      v89 = v56;
      v90 = 2112;
      v91 = v54;
      _os_log_impl(&dword_29C8D2000, v52, OS_LOG_TYPE_DEFAULT, "iTunes account changed { oldAccount: %@, newAccount: %@, changeType: %@, addedMediaTypes: %@, didSignIn: %@, isInGoodStateForRepair: %@, didSignOut: %@ }", buf, 0x48u);
    }

    if ((v76 | v43))
    {
      [(IDSAccountNotificationDelegate *)self _iTunesSignInBasedOnAccount:v10];
    }

    else if (v51)
    {
      [(IDSAccountNotificationDelegate *)self _iTunesSignOut];
    }

    goto LABEL_141;
  }

  if ([v16 isEqualToString:*MEMORY[0x29EDB8230]])
  {
    v73 = a4 - 1;
    if (a4 == 1)
    {
      v57 = v11;
      LODWORD(v75) = 0;
      HIDWORD(v75) = [(IDSAccountNotificationDelegate *)v10 isActive];
    }

    else
    {
      if (a4 == 2)
      {
        if (([(IDSAccountNotificationDelegate *)v12 isActive]& 1) != 0)
        {
          v28 = 0;
        }

        else
        {
          v28 = [(IDSAccountNotificationDelegate *)v10 isActive];
        }

        HIDWORD(v75) = v28;
        v57 = v11;
        if ([(IDSAccountNotificationDelegate *)v10 isActive])
        {
          v59 = [(IDSAccountNotificationDelegate *)v10 isAuthenticated];
          LODWORD(v75) = 1;
        }

        else
        {
          LODWORD(v75) = 0;
          v59 = 0;
        }

        v58 = 1;
        goto LABEL_103;
      }

      v57 = v11;
      v75 = 0;
    }

    v58 = 0;
    v59 = 0;
LABEL_103:
    v60 = [(IDSAccountNotificationDelegate *)self _passwordEquivalentTokenFromAccount:v10];
    v61 = [v60 length];

    if (v61)
    {
      v62 = v59;
    }

    else
    {
      v62 = 0;
    }

    if (a4 == 3)
    {
      v63 = [(IDSAccountNotificationDelegate *)v12 isActive];
    }

    else
    {
      v63 = 0;
    }

    v11 = v57;
    if (v58 && [(IDSAccountNotificationDelegate *)v12 isActive])
    {
      v64 = [(IDSAccountNotificationDelegate *)v10 isActive]^ 1;
    }

    else
    {
      LOBYTE(v64) = 0;
    }

    v65 = v63 | v64;
    v66 = [MEMORY[0x29EDC5540] registration];
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      if (v73 > 3)
      {
        v67 = @"Unknown";
      }

      else
      {
        v67 = off_29F3301C8[v73];
      }

      v68 = @"NO";
      *buf = 138413826;
      v79 = v12;
      v80 = 2112;
      if (HIDWORD(v75))
      {
        v69 = @"YES";
      }

      else
      {
        v69 = @"NO";
      }

      v81 = v10;
      if (v62)
      {
        v70 = @"YES";
      }

      else
      {
        v70 = @"NO";
      }

      v83 = v67;
      if (v75)
      {
        v71 = @"YES";
      }

      else
      {
        v71 = @"NO";
      }

      v82 = 2112;
      if (v65)
      {
        v68 = @"YES";
      }

      v84 = 2112;
      v85 = v69;
      v86 = 2112;
      v87 = v70;
      v88 = 2112;
      v89 = v71;
      v90 = 2112;
      v91 = v68;
      _os_log_impl(&dword_29C8D2000, v66, OS_LOG_TYPE_DEFAULT, "GameCenter account changed { oldAccount: %@, newAccount: %@, changeType: %@, didSignIn: %@, isInGoodStateForRepair: %@, wasModified: %@, didSignOut: %@ }", buf, 0x48u);
    }

    if ((HIDWORD(v75) | v62))
    {
      [(IDSAccountNotificationDelegate *)self _gameCenterSignInBasedOnAccount:v10 inStore:v57];
      goto LABEL_141;
    }

    if (v65)
    {
      [(IDSAccountNotificationDelegate *)self _gameCenterSignOut];
      goto LABEL_141;
    }

    if (!v75)
    {
      goto LABEL_141;
    }

    v40 = [(IDSAccountNotificationDelegate *)v10 username];
    [(IDSAccountNotificationDelegate *)self _gameCenterModifyBasedOnUsername:v40];
    goto LABEL_51;
  }

  if ([v16 isEqualToString:*MEMORY[0x29EDB8248]])
  {
    v34 = [(IDSAccountNotificationDelegate *)v12 username];
    if ([v34 length])
    {
      v35 = [(IDSAccountNotificationDelegate *)v10 username];
      if ([v35 length])
      {
        v36 = [(IDSAccountNotificationDelegate *)v12 username];
        v37 = [(IDSAccountNotificationDelegate *)v10 username];
        v38 = [v36 isEqualToString:v37];

        if (v38)
        {
          goto LABEL_141;
        }

        v39 = [MEMORY[0x29EDC5540] registration];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v79 = v12;
          v80 = 2112;
          v81 = v10;
          _os_log_impl(&dword_29C8D2000, v39, OS_LOG_TYPE_DEFAULT, "IDMS account username changed { oldAccount: %@, newAccount: %@ }", buf, 0x16u);
        }

        v34 = [(IDSAccountNotificationDelegate *)v12 username];
        v35 = [(IDSAccountNotificationDelegate *)v10 username];
        IDSUpdateUser();
      }
    }

    goto LABEL_141;
  }

  if ([v16 isEqualToString:*MEMORY[0x29EDB8268]])
  {
    v44 = [MEMORY[0x29EDC5540] registration];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_setupRequestPending)
      {
        v45 = @"YES";
      }

      else
      {
        v45 = @"NO";
      }

      if ((a4 - 1) > 3)
      {
        v46 = @"Unknown";
      }

      else
      {
        v46 = off_29F3301C8[a4 - 1];
      }

      *buf = 138413058;
      v79 = v45;
      v80 = 2112;
      v81 = v12;
      v82 = 2112;
      v83 = v10;
      v84 = 2112;
      v85 = v46;
      _os_log_impl(&dword_29C8D2000, v44, OS_LOG_TYPE_DEFAULT, "IDS account changed { requestPending: %@, oldAccount: %@, newAccount: %@, changeType: %@ }", buf, 0x2Au);
    }

    if (self->_setupRequestPending && a4 <= 4 && ((1 << a4) & 0x16) != 0)
    {
      v32 = self;
      v33 = v10;
      goto LABEL_37;
    }
  }

LABEL_141:

  v72 = *MEMORY[0x29EDCA608];
}

- (BOOL)canSaveAccount:(id)a3 inStore:(id)a4
{
  v52[1] = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a4;
  v7 = [v5 accountType];
  v8 = [v7 identifier];
  v9 = *MEMORY[0x29EDB8268];
  v10 = [v8 compare:*MEMORY[0x29EDB8268] options:4];

  if (v10)
  {
    v11 = 1;
    goto LABEL_41;
  }

  v52[0] = v9;
  v12 = [MEMORY[0x29EDB8D80] arrayWithObjects:v52 count:1];
  v50 = 0;
  v13 = [v6 accountsWithAccountTypeIdentifiers:v12 error:&v50];
  v14 = v50;

  if (v13)
  {
    v42 = v6;
    v15 = [v5 accountProperties];
    v16 = [v15 objectForKeyedSubscript:@"profile-id"];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v40 = v13;
    v13 = v13;
    v17 = [v13 countByEnumeratingWithState:&v46 objects:v51 count:16];
    v43 = v16;
    if (!v17)
    {
      goto LABEL_34;
    }

    v18 = v17;
    v44 = v13;
    v45 = *v47;
    v41 = v14;
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v47 != v45)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v46 + 1) + 8 * v19);
        v21 = [v5 identifier];
        if (![v21 length])
        {
          goto LABEL_14;
        }

        v22 = [v20 identifier];
        if (![v22 length])
        {

LABEL_14:
          goto LABEL_15;
        }

        v23 = [v5 identifier];
        v24 = [v20 identifier];
        v25 = [v23 isEqualToString:v24];

        v13 = v44;
        if (v25)
        {
          v11 = 1;
LABEL_39:

          v14 = v41;
          v6 = v42;
          goto LABEL_40;
        }

LABEL_15:
        if ([v5 aa_isDuplicateAccount:v20])
        {
          goto LABEL_38;
        }

        v26 = [v20 accountProperties];
        v27 = [v26 objectForKeyedSubscript:@"profile-id"];

        if (-[NSObject length](v16, "length") && [v27 length] && -[NSObject isEqualToString:](v16, "isEqualToString:", v27))
        {
          v28 = [v20 username];
          if ([v28 length])
          {
            v29 = [v5 username];
            if ([v29 length])
            {
              v30 = [v20 username];
              v31 = [v5 username];
              v32 = [v30 isEqualToString:v31];
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = 0;
          }

          v33 = [v20 username];
          if ([v33 length])
          {
            v34 = [v5 username];
            v35 = [v34 length] == 0;
          }

          else
          {
            v35 = 0;
          }

          v13 = v44;

          v36 = v32 | v35;
          v16 = v43;
          if (v36)
          {
LABEL_38:
            v11 = 0;
            goto LABEL_39;
          }
        }

        else
        {
        }

        ++v19;
      }

      while (v18 != v19);
      v37 = [v13 countByEnumeratingWithState:&v46 objects:v51 count:16];
      v18 = v37;
      v14 = v41;
      if (!v37)
      {
LABEL_34:

        v11 = 1;
        v13 = v40;
        v6 = v42;
        goto LABEL_40;
      }
    }
  }

  v43 = [MEMORY[0x29EDC5540] registration];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    sub_29C8D4828(v14, v43);
  }

  v11 = 1;
LABEL_40:

LABEL_41:
  v38 = *MEMORY[0x29EDCA608];
  return v11;
}

@end