@interface AppleIDTokenMigrator
- (__CFDictionary)_newKeychainQueryForAllItemsMatchingAccountName:(id)name serviceName:(id)serviceName;
- (id)_mostRecentTokenWithServiceName:(id)name matchingAccountNames:(id)names;
- (id)_potentialServiceNamesForTokenOfAccount:(id)account;
- (id)migrateAppleIDBasedCredentialForAccount:(id)account;
- (void)_removeKeychainItemForUsernames:(id)usernames services:(id)services;
@end

@implementation AppleIDTokenMigrator

- (id)migrateAppleIDBasedCredentialForAccount:(id)account
{
  v33 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  v5 = [(AppleIDTokenMigrator *)self _potentialServiceNamesForTokenOfAccount:accountCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    username = [accountCopy username];

    if (username)
    {
      username2 = [accountCopy username];
      [v6 addObject:username2];
    }

    v9 = [accountCopy accountPropertyForKey:*MEMORY[0x29EDBE448]];
    if (v9)
    {
      [v6 addObject:v9];
    }

    else
    {
      v12 = _AALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29C7FE000, v12, OS_LOG_TYPE_DEFAULT, "ERROR, we've got a nil migratedAccountIdentifier - something went horribly wrong", buf, 2u);
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v5;
    v11 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v24 = v9;
      v14 = 0;
      v15 = *v27;
      do
      {
        v16 = 0;
        v17 = v14;
        do
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v14 = [(AppleIDTokenMigrator *)self _mostRecentTokenWithServiceName:*(*(&v26 + 1) + 8 * v16) matchingAccountNames:v6, v24];

          v16 = v16 + 1;
          v17 = v14;
        }

        while (v11 != v16);
        v11 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);

      if (!v14)
      {
        v11 = 0;
        v9 = v24;
LABEL_31:

        goto LABEL_32;
      }

      v11 = objc_alloc_init(MEMORY[0x29EDB83C0]);
      [v11 setToken:v14];
      [accountCopy setCredential:v11];
      v25 = 0;
      [MEMORY[0x29EDBDFF8] setCredentialForAccount:accountCopy error:&v25];
      v18 = v25;
      v19 = _AALogSystem();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        if (v20)
        {
          shortDebugName = [accountCopy shortDebugName];
          *buf = 138412290;
          v32 = shortDebugName;
          _os_log_impl(&dword_29C7FE000, v19, OS_LOG_TYPE_DEFAULT, "AppleIDTokenMigrator failed to save the new credential for account %@.", buf, 0xCu);
        }
      }

      else
      {
        if (v20)
        {
          *buf = 138412290;
          v32 = v13;
          _os_log_impl(&dword_29C7FE000, v19, OS_LOG_TYPE_DEFAULT, "Remove old Apple ID credential items: %@", buf, 0xCu);
        }

        [(AppleIDTokenMigrator *)self _removeKeychainItemForUsernames:v6 services:v13];
      }

      v9 = v24;
    }

    else
    {
      v14 = 0;
      v18 = v13;
    }

    goto LABEL_31;
  }

  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    shortDebugName2 = [accountCopy shortDebugName];
    *buf = 138412290;
    v32 = shortDebugName2;
    _os_log_impl(&dword_29C7FE000, v6, OS_LOG_TYPE_DEFAULT, "AppleIDTokenMigrator could not figure out a service name for this account's token: %@", buf, 0xCu);
  }

  v11 = 0;
LABEL_32:

  v22 = *MEMORY[0x29EDCA608];

  return v11;
}

- (id)_potentialServiceNamesForTokenOfAccount:(id)account
{
  accountType = [account accountType];
  identifier = [accountType identifier];

  if ([identifier isEqualToString:*MEMORY[0x29EDB8230]])
  {
    v5 = &unk_2A23C89D0;
  }

  else if ([identifier isEqualToString:*MEMORY[0x29EDB8268]])
  {
    v5 = &unk_2A23C89E8;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_mostRecentTokenWithServiceName:(id)name matchingAccountNames:(id)names
{
  v64 = *MEMORY[0x29EDCA608];
  nameCopy = name;
  namesCopy = names;
  v46 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = namesCopy;
  v8 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v52;
    v12 = *MEMORY[0x29EDBBCD0];
    v13 = *MEMORY[0x29EDBBC08];
    *&v9 = 67109120;
    v38 = v9;
    selfCopy = self;
    v41 = nameCopy;
    v39 = *v52;
    do
    {
      v14 = 0;
      v42 = v10;
      do
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [(AppleIDTokenMigrator *)self _newKeychainQueryForAllItemsMatchingAccountName:*(*(&v51 + 1) + 8 * v14) serviceName:nameCopy, v38];
        *result = 0;
        v16 = SecItemCopyMatching(v15, result);
        v17 = _AALogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v38;
          v62 = v16;
          _os_log_impl(&dword_29C7FE000, v17, OS_LOG_TYPE_DEFAULT, "AppleIDTokenMigrator: SecItemCopyMatching returned %d", buf, 8u);
        }

        if (v16)
        {
          v18 = 1;
        }

        else
        {
          v18 = *result == 0;
        }

        if (!v18)
        {
          v44 = v15;
          v45 = v14;
          v19 = *result;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v20 = [v19 countByEnumeratingWithState:&v47 objects:v60 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v48;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v48 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v47 + 1) + 8 * i);
                v25 = [v24 objectForKey:v12];
                v26 = [v24 objectForKey:v13];
                v27 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:v25 encoding:4];
                v28 = v27;
                if (v27)
                {
                  v29 = v26 == 0;
                }

                else
                {
                  v29 = 1;
                }

                if (!v29)
                {
                  v58[0] = @"token";
                  v58[1] = @"date-last-modified";
                  v59[0] = v27;
                  v59[1] = v26;
                  v30 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
                  [v46 addObject:v30];
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v47 objects:v60 count:16];
            }

            while (v21);
          }

          self = selfCopy;
          nameCopy = v41;
          v11 = v39;
          v10 = v42;
          v15 = v44;
          v14 = v45;
        }

        CFRelease(v15);
        if (*result)
        {
          CFRelease(*result);
        }

        ++v14;
      }

      while (v14 != v10);
      v10 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v10);
  }

  v31 = _AALogSystem();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v46 count];
    *result = 134218242;
    *&result[4] = v32;
    v56 = 2112;
    v57 = nameCopy;
    _os_log_impl(&dword_29C7FE000, v31, OS_LOG_TYPE_DEFAULT, "AppleIDtokenMigrator found %ld tokens in the keychain with service name %@.", result, 0x16u);
  }

  if ([v46 count])
  {
    v33 = [v46 sortedArrayUsingComparator:&unk_2A23C7F70];
    lastObject = [v46 lastObject];
    v35 = [lastObject objectForKeyedSubscript:@"token"];
  }

  else
  {
    v35 = 0;
  }

  v36 = *MEMORY[0x29EDCA608];

  return v35;
}

- (__CFDictionary)_newKeychainQueryForAllItemsMatchingAccountName:(id)name serviceName:(id)serviceName
{
  v5 = *MEMORY[0x29EDB8ED8];
  serviceNameCopy = serviceName;
  nameCopy = name;
  Mutable = CFDictionaryCreateMutable(v5, 0, 0, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBBC30], *MEMORY[0x29EDBBC40]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBBBA0], nameCopy);

  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBBC10], serviceNameCopy);
  v9 = *MEMORY[0x29EDB8F00];
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBBCB0], *MEMORY[0x29EDB8F00]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBBCA8], v9);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBBC88], *MEMORY[0x29EDBBC90]);
  return Mutable;
}

- (void)_removeKeychainItemForUsernames:(id)usernames services:(id)services
{
  v42 = *MEMORY[0x29EDCA608];
  usernamesCopy = usernames;
  servicesCopy = services;
  if ([servicesCopy count] && objc_msgSend(usernamesCopy, "count"))
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = usernamesCopy;
    obj = usernamesCopy;
    v23 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v23)
    {
      v21 = *v33;
      key = *MEMORY[0x29EDBBC30];
      allocator = *MEMORY[0x29EDB8ED8];
      v6 = *MEMORY[0x29EDBBC40];
      v7 = *MEMORY[0x29EDBBBA0];
      v8 = *MEMORY[0x29EDBBC10];
      do
      {
        v9 = 0;
        do
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = v9;
          v10 = *(*(&v32 + 1) + 8 * v9);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v25 = servicesCopy;
          v11 = [v25 countByEnumeratingWithState:&v28 objects:v40 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v29;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v29 != v13)
                {
                  objc_enumerationMutation(v25);
                }

                v15 = *(*(&v28 + 1) + 8 * i);
                Mutable = CFDictionaryCreateMutable(allocator, 0, 0, 0);
                CFDictionaryAddValue(Mutable, key, v6);
                CFDictionaryAddValue(Mutable, v7, v10);
                CFDictionaryAddValue(Mutable, v8, v15);
                if (SecItemDelete(Mutable))
                {
                  v17 = _AALogSystem();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v37 = v15;
                    v38 = 2112;
                    v39 = v10;
                    _os_log_impl(&dword_29C7FE000, v17, OS_LOG_TYPE_DEFAULT, "We couldn't remove %@ for %@ from the keychain", buf, 0x16u);
                  }
                }

                CFRelease(Mutable);
              }

              v12 = [v25 countByEnumeratingWithState:&v28 objects:v40 count:16];
            }

            while (v12);
          }

          v9 = v24 + 1;
        }

        while (v24 + 1 != v23);
        v23 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v23);
    }

    usernamesCopy = v19;
  }

  v18 = *MEMORY[0x29EDCA608];
}

@end