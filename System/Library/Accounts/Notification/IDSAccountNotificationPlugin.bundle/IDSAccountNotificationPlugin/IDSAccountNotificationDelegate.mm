@interface IDSAccountNotificationDelegate
- (BOOL)canSaveAccount:(id)account inStore:(id)store;
- (IDSAccountNotificationDelegate)init;
- (id)_findExistingIdentityServicesACAccountWithUserName:(id)name inStore:(id)store;
- (id)_passwordEquivalentTokenFromAccount:(id)account;
- (void)_gameCenterModifyBasedOnUsername:(id)username;
- (void)_gameCenterSignInBasedOnAccount:(id)account inStore:(id)store;
- (void)_iCloudModifyBasedOnUsername:(id)username;
- (void)_iCloudSignInBasedOnAccount:(id)account inStore:(id)store;
- (void)_iTunesSignInBasedOnAccount:(id)account;
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
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
    registration = [MEMORY[0x29EDC5540] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = v2;
      _os_log_impl(&dword_29C8D2000, registration, OS_LOG_TYPE_DEFAULT, "IDSAccountNotificationDelegate loaded { self: %p }", buf, 0xCu);
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

- (id)_findExistingIdentityServicesACAccountWithUserName:(id)name inStore:(id)store
{
  v29 = *MEMORY[0x29EDCA608];
  nameCopy = name;
  storeCopy = store;
  v7 = *MEMORY[0x29EDB8268];
  v8 = [storeCopy accountTypeWithAccountTypeIdentifier:*MEMORY[0x29EDB8268]];
  if (!v8)
  {
    warning = [MEMORY[0x29EDC5540] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_FAULT))
    {
      sub_29C8D47B0(v7, warning);
    }

    goto LABEL_18;
  }

  warning = [storeCopy accountsWithAccountType:v8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [warning countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (!v10)
  {
LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  v11 = v10;
  v21 = storeCopy;
  v12 = 0;
  v13 = *v23;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v23 != v13)
      {
        objc_enumerationMutation(warning);
      }

      if (!v12)
      {
        v15 = *(*(&v22 + 1) + 8 * i);
        username = [v15 username];
        v17 = [username isEqualToIgnoringCase:nameCopy];

        if (v17)
        {
          v12 = v15;
          registration = [MEMORY[0x29EDC5540] registration];
          if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v27 = v12;
            _os_log_impl(&dword_29C8D2000, registration, OS_LOG_TYPE_DEFAULT, "Found matching IDS ACAccount { account: %@ }", buf, 0xCu);
          }
        }

        else
        {
          v12 = 0;
        }
      }
    }

    v11 = [warning countByEnumeratingWithState:&v22 objects:v28 count:16];
  }

  while (v11);
  storeCopy = v21;
LABEL_19:

  v19 = *MEMORY[0x29EDCA608];

  return v12;
}

- (void)_iCloudSignInBasedOnAccount:(id)account inStore:(id)store
{
  v35 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  v7 = MEMORY[0x29EDC5540];
  storeCopy = store;
  registration = [v7 registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = accountCopy;
    _os_log_impl(&dword_29C8D2000, registration, OS_LOG_TYPE_DEFAULT, "Signing in iCloud-based IDS services { account: %@ }", buf, 0xCu);
  }

  username = [accountCopy username];
  v11 = [(IDSAccountNotificationDelegate *)self _findExistingIdentityServicesACAccountWithUserName:username inStore:storeCopy];

  if (v11)
  {
    self->_setupRequestPending = 0;
    username2 = [v11 username];
    v13 = [username2 copy];

    credential = [v11 credential];
    token = [credential token];
    v16 = [token copy];

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
    registration2 = v13;
    dispatch_async(queue, v28);
    self->_setupRequestPending = 0;
  }

  else
  {
    self->_setupRequestPending = 1;
    registration2 = [MEMORY[0x29EDC5540] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      username3 = [accountCopy username];
      *buf = 138412290;
      v34 = username3;
      _os_log_impl(&dword_29C8D2000, registration2, OS_LOG_TYPE_DEFAULT, "No existing ACAccount for this username, waiting... { username: %@ }", buf, 0xCu);
    }
  }

  v27 = *MEMORY[0x29EDCA608];
}

- (void)_iCloudModifyBasedOnUsername:(id)username
{
  usernameCopy = username;
  queue = self->_queue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C8D350C;
  block[3] = &unk_29F330180;
  v8 = usernameCopy;
  v6 = usernameCopy;
  dispatch_async(queue, block);
}

- (id)_passwordEquivalentTokenFromAccount:(id)account
{
  credential = [account credential];
  password = [credential password];

  return password;
}

- (void)_iTunesSignInBasedOnAccount:(id)account
{
  v19 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  registration = [MEMORY[0x29EDC5540] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = accountCopy;
    _os_log_impl(&dword_29C8D2000, registration, OS_LOG_TYPE_DEFAULT, "Signing in iTunes-based IDS services { account: %@ }", buf, 0xCu);
  }

  username = [accountCopy username];
  v7 = [username copy];

  v8 = [(IDSAccountNotificationDelegate *)self _passwordEquivalentTokenFromAccount:accountCopy];
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

- (void)_gameCenterSignInBasedOnAccount:(id)account inStore:(id)store
{
  v20 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  registration = [MEMORY[0x29EDC5540] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = accountCopy;
    _os_log_impl(&dword_29C8D2000, registration, OS_LOG_TYPE_DEFAULT, "Signing in GameCenter-based IDS services { account: %@ }", buf, 0xCu);
  }

  username = [accountCopy username];
  v8 = [username copy];

  v9 = [(IDSAccountNotificationDelegate *)self _passwordEquivalentTokenFromAccount:accountCopy];
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

- (void)_gameCenterModifyBasedOnUsername:(id)username
{
  usernameCopy = username;
  queue = self->_queue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C8D3964;
  block[3] = &unk_29F330180;
  v8 = usernameCopy;
  v6 = usernameCopy;
  dispatch_async(queue, block);
}

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v92 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  oldAccountCopy = oldAccount;
  registration = [MEMORY[0x29EDC5540] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v79 = "[IDSAccountNotificationDelegate account:didChangeWithType:inStore:oldAccount:]";
    v80 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_29C8D2000, registration, OS_LOG_TYPE_DEFAULT, "%s invoked { self: %p }", buf, 0x16u);
  }

  v14 = MEMORY[0x29EDB81C8];
  if (type == 3)
  {
    accountType = [(IDSAccountNotificationDelegate *)oldAccountCopy accountType];
    identifier = [accountType identifier];

    if ([identifier isEqualToString:*v14])
    {
      selfCopy3 = self;
      v18 = identifier;
      v77 = storeCopy;
      v19 = oldAccountCopy;
      v20 = [(IDSAccountNotificationDelegate *)oldAccountCopy accountPropertyForKey:@"primaryAccount"];
      bOOLValue = [v20 BOOLValue];
      bOOLValue3 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    accountType2 = [(IDSAccountNotificationDelegate *)accountCopy accountType];
    identifier = [accountType2 identifier];

    if ([identifier isEqualToString:*v14])
    {
      selfCopy3 = self;
      v18 = identifier;
      v19 = oldAccountCopy;
      v77 = storeCopy;
      if (type == 2)
      {
        v20 = [(IDSAccountNotificationDelegate *)accountCopy accountPropertyForKey:@"primaryAccount"];
        bOOLValue2 = [v20 BOOLValue];
        bOOLValue = 0;
        bOOLValue3 = 0;
        goto LABEL_11;
      }

      if (type != 1)
      {
        bOOLValue = 0;
        bOOLValue3 = 0;
        bOOLValue2 = 0;
        goto LABEL_12;
      }

      v20 = [(IDSAccountNotificationDelegate *)accountCopy accountPropertyForKey:@"primaryAccount"];
      bOOLValue3 = [v20 BOOLValue];
      bOOLValue = 0;
LABEL_10:
      bOOLValue2 = 0;
LABEL_11:

LABEL_12:
      registration2 = [MEMORY[0x29EDC5540] registration];
      oldAccountCopy = v19;
      identifier = v18;
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        if ((type - 1) > 3)
        {
          v26 = @"Unknown";
        }

        else
        {
          v26 = off_29F3301C8[type - 1];
        }

        v29 = @"NO";
        *buf = 138413570;
        v79 = oldAccountCopy;
        if (bOOLValue3)
        {
          v30 = @"YES";
        }

        else
        {
          v30 = @"NO";
        }

        if (bOOLValue)
        {
          v31 = @"YES";
        }

        else
        {
          v31 = @"NO";
        }

        if (bOOLValue2)
        {
          v29 = @"YES";
        }

        v80 = 2112;
        selfCopy = accountCopy;
        v82 = 2112;
        v83 = v26;
        v84 = 2112;
        v85 = v30;
        v86 = 2112;
        v87 = v31;
        v88 = 2112;
        v89 = v29;
        _os_log_impl(&dword_29C8D2000, registration2, OS_LOG_TYPE_DEFAULT, "iCloud account changed { oldAccount: %@, newAccount: %@, changeType: %@, didSignIn: %@, didSignOut: %@, wasModified: %@ }", buf, 0x3Eu);
      }

      if (bOOLValue3)
      {
        selfCopy4 = selfCopy3;
        v33 = accountCopy;
        storeCopy = v77;
LABEL_37:
        [(IDSAccountNotificationDelegate *)selfCopy4 _iCloudSignInBasedOnAccount:v33 inStore:storeCopy];
        goto LABEL_141;
      }

      storeCopy = v77;
      if (bOOLValue)
      {
        [(IDSAccountNotificationDelegate *)selfCopy3 _iCloudSignOut];
        goto LABEL_141;
      }

      if (!bOOLValue2)
      {
        goto LABEL_141;
      }

      username = [(IDSAccountNotificationDelegate *)accountCopy username];
      [(IDSAccountNotificationDelegate *)selfCopy3 _iCloudModifyBasedOnUsername:username];
LABEL_51:

      goto LABEL_141;
    }
  }

  if ([identifier isEqualToString:*MEMORY[0x29EDB82D8]])
  {
    v74 = type - 1;
    if (type == 1)
    {
      v41 = storeCopy;
      isActive = [(IDSAccountNotificationDelegate *)accountCopy isActive];
    }

    else
    {
      if (type == 2)
      {
        if (([(IDSAccountNotificationDelegate *)oldAccountCopy isActive]& 1) != 0)
        {
          isActive2 = 0;
        }

        else
        {
          isActive2 = [(IDSAccountNotificationDelegate *)accountCopy isActive];
        }

        isActive = isActive2;
        v41 = storeCopy;
        if ([(IDSAccountNotificationDelegate *)accountCopy isActive])
        {
          isAuthenticated = [(IDSAccountNotificationDelegate *)accountCopy isAuthenticated];
        }

        else
        {
          isAuthenticated = 0;
        }

        v42 = 1;
        goto LABEL_69;
      }

      v41 = storeCopy;
      isActive = 0;
    }

    v42 = 0;
    isAuthenticated = 0;
LABEL_69:
    v47 = [(IDSAccountNotificationDelegate *)self _passwordEquivalentTokenFromAccount:accountCopy];
    v48 = [v47 length];

    if (!v48)
    {
      isAuthenticated = 0;
    }

    if (type == 3)
    {
      isActive3 = [(IDSAccountNotificationDelegate *)oldAccountCopy isActive];
    }

    else
    {
      isActive3 = 0;
    }

    storeCopy = v41;
    if (v42 && [(IDSAccountNotificationDelegate *)oldAccountCopy isActive])
    {
      v50 = [(IDSAccountNotificationDelegate *)accountCopy isActive]^ 1;
    }

    else
    {
      LOBYTE(v50) = 0;
    }

    v51 = isActive3 | v50;
    registration3 = [MEMORY[0x29EDC5540] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
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
      v79 = oldAccountCopy;
      v80 = 2112;
      if (isActive)
      {
        v55 = @"YES";
      }

      else
      {
        v55 = @"NO";
      }

      selfCopy = accountCopy;
      if (isAuthenticated)
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
      _os_log_impl(&dword_29C8D2000, registration3, OS_LOG_TYPE_DEFAULT, "iTunes account changed { oldAccount: %@, newAccount: %@, changeType: %@, addedMediaTypes: %@, didSignIn: %@, isInGoodStateForRepair: %@, didSignOut: %@ }", buf, 0x48u);
    }

    if ((isActive | isAuthenticated))
    {
      [(IDSAccountNotificationDelegate *)self _iTunesSignInBasedOnAccount:accountCopy];
    }

    else if (v51)
    {
      [(IDSAccountNotificationDelegate *)self _iTunesSignOut];
    }

    goto LABEL_141;
  }

  if ([identifier isEqualToString:*MEMORY[0x29EDB8230]])
  {
    v73 = type - 1;
    if (type == 1)
    {
      v57 = storeCopy;
      LODWORD(v75) = 0;
      HIDWORD(v75) = [(IDSAccountNotificationDelegate *)accountCopy isActive];
    }

    else
    {
      if (type == 2)
      {
        if (([(IDSAccountNotificationDelegate *)oldAccountCopy isActive]& 1) != 0)
        {
          isActive4 = 0;
        }

        else
        {
          isActive4 = [(IDSAccountNotificationDelegate *)accountCopy isActive];
        }

        HIDWORD(v75) = isActive4;
        v57 = storeCopy;
        if ([(IDSAccountNotificationDelegate *)accountCopy isActive])
        {
          isAuthenticated2 = [(IDSAccountNotificationDelegate *)accountCopy isAuthenticated];
          LODWORD(v75) = 1;
        }

        else
        {
          LODWORD(v75) = 0;
          isAuthenticated2 = 0;
        }

        v58 = 1;
        goto LABEL_103;
      }

      v57 = storeCopy;
      v75 = 0;
    }

    v58 = 0;
    isAuthenticated2 = 0;
LABEL_103:
    v60 = [(IDSAccountNotificationDelegate *)self _passwordEquivalentTokenFromAccount:accountCopy];
    v61 = [v60 length];

    if (v61)
    {
      v62 = isAuthenticated2;
    }

    else
    {
      v62 = 0;
    }

    if (type == 3)
    {
      isActive5 = [(IDSAccountNotificationDelegate *)oldAccountCopy isActive];
    }

    else
    {
      isActive5 = 0;
    }

    storeCopy = v57;
    if (v58 && [(IDSAccountNotificationDelegate *)oldAccountCopy isActive])
    {
      v64 = [(IDSAccountNotificationDelegate *)accountCopy isActive]^ 1;
    }

    else
    {
      LOBYTE(v64) = 0;
    }

    v65 = isActive5 | v64;
    registration4 = [MEMORY[0x29EDC5540] registration];
    if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
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
      v79 = oldAccountCopy;
      v80 = 2112;
      if (HIDWORD(v75))
      {
        v69 = @"YES";
      }

      else
      {
        v69 = @"NO";
      }

      selfCopy = accountCopy;
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
      _os_log_impl(&dword_29C8D2000, registration4, OS_LOG_TYPE_DEFAULT, "GameCenter account changed { oldAccount: %@, newAccount: %@, changeType: %@, didSignIn: %@, isInGoodStateForRepair: %@, wasModified: %@, didSignOut: %@ }", buf, 0x48u);
    }

    if ((HIDWORD(v75) | v62))
    {
      [(IDSAccountNotificationDelegate *)self _gameCenterSignInBasedOnAccount:accountCopy inStore:v57];
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

    username = [(IDSAccountNotificationDelegate *)accountCopy username];
    [(IDSAccountNotificationDelegate *)self _gameCenterModifyBasedOnUsername:username];
    goto LABEL_51;
  }

  if ([identifier isEqualToString:*MEMORY[0x29EDB8248]])
  {
    username2 = [(IDSAccountNotificationDelegate *)oldAccountCopy username];
    if ([username2 length])
    {
      username3 = [(IDSAccountNotificationDelegate *)accountCopy username];
      if ([username3 length])
      {
        username4 = [(IDSAccountNotificationDelegate *)oldAccountCopy username];
        username5 = [(IDSAccountNotificationDelegate *)accountCopy username];
        v38 = [username4 isEqualToString:username5];

        if (v38)
        {
          goto LABEL_141;
        }

        registration5 = [MEMORY[0x29EDC5540] registration];
        if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v79 = oldAccountCopy;
          v80 = 2112;
          selfCopy = accountCopy;
          _os_log_impl(&dword_29C8D2000, registration5, OS_LOG_TYPE_DEFAULT, "IDMS account username changed { oldAccount: %@, newAccount: %@ }", buf, 0x16u);
        }

        username2 = [(IDSAccountNotificationDelegate *)oldAccountCopy username];
        username3 = [(IDSAccountNotificationDelegate *)accountCopy username];
        IDSUpdateUser();
      }
    }

    goto LABEL_141;
  }

  if ([identifier isEqualToString:*MEMORY[0x29EDB8268]])
  {
    registration6 = [MEMORY[0x29EDC5540] registration];
    if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_setupRequestPending)
      {
        v45 = @"YES";
      }

      else
      {
        v45 = @"NO";
      }

      if ((type - 1) > 3)
      {
        v46 = @"Unknown";
      }

      else
      {
        v46 = off_29F3301C8[type - 1];
      }

      *buf = 138413058;
      v79 = v45;
      v80 = 2112;
      selfCopy = oldAccountCopy;
      v82 = 2112;
      v83 = accountCopy;
      v84 = 2112;
      v85 = v46;
      _os_log_impl(&dword_29C8D2000, registration6, OS_LOG_TYPE_DEFAULT, "IDS account changed { requestPending: %@, oldAccount: %@, newAccount: %@, changeType: %@ }", buf, 0x2Au);
    }

    if (self->_setupRequestPending && type <= 4 && ((1 << type) & 0x16) != 0)
    {
      selfCopy4 = self;
      v33 = accountCopy;
      goto LABEL_37;
    }
  }

LABEL_141:

  v72 = *MEMORY[0x29EDCA608];
}

- (BOOL)canSaveAccount:(id)account inStore:(id)store
{
  v52[1] = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v9 = *MEMORY[0x29EDB8268];
  v10 = [identifier compare:*MEMORY[0x29EDB8268] options:4];

  if (v10)
  {
    v11 = 1;
    goto LABEL_41;
  }

  v52[0] = v9;
  v12 = [MEMORY[0x29EDB8D80] arrayWithObjects:v52 count:1];
  v50 = 0;
  v13 = [storeCopy accountsWithAccountTypeIdentifiers:v12 error:&v50];
  v14 = v50;

  if (v13)
  {
    v42 = storeCopy;
    accountProperties = [accountCopy accountProperties];
    v16 = [accountProperties objectForKeyedSubscript:@"profile-id"];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v40 = v13;
    v13 = v13;
    v17 = [v13 countByEnumeratingWithState:&v46 objects:v51 count:16];
    registration = v16;
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
        identifier2 = [accountCopy identifier];
        if (![identifier2 length])
        {
          goto LABEL_14;
        }

        identifier3 = [v20 identifier];
        if (![identifier3 length])
        {

LABEL_14:
          goto LABEL_15;
        }

        identifier4 = [accountCopy identifier];
        identifier5 = [v20 identifier];
        v25 = [identifier4 isEqualToString:identifier5];

        v13 = v44;
        if (v25)
        {
          v11 = 1;
LABEL_39:

          v14 = v41;
          storeCopy = v42;
          goto LABEL_40;
        }

LABEL_15:
        if ([accountCopy aa_isDuplicateAccount:v20])
        {
          goto LABEL_38;
        }

        accountProperties2 = [v20 accountProperties];
        v27 = [accountProperties2 objectForKeyedSubscript:@"profile-id"];

        if (-[NSObject length](v16, "length") && [v27 length] && -[NSObject isEqualToString:](v16, "isEqualToString:", v27))
        {
          username = [v20 username];
          if ([username length])
          {
            username2 = [accountCopy username];
            if ([username2 length])
            {
              username3 = [v20 username];
              username4 = [accountCopy username];
              v32 = [username3 isEqualToString:username4];
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

          username5 = [v20 username];
          if ([username5 length])
          {
            username6 = [accountCopy username];
            v35 = [username6 length] == 0;
          }

          else
          {
            v35 = 0;
          }

          v13 = v44;

          v36 = v32 | v35;
          v16 = registration;
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
        storeCopy = v42;
        goto LABEL_40;
      }
    }
  }

  registration = [MEMORY[0x29EDC5540] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
  {
    sub_29C8D4828(v14, registration);
  }

  v11 = 1;
LABEL_40:

LABEL_41:
  v38 = *MEMORY[0x29EDCA608];
  return v11;
}

@end