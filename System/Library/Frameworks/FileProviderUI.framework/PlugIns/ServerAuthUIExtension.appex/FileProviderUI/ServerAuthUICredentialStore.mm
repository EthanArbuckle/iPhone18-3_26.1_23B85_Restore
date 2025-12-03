@interface ServerAuthUICredentialStore
- (void)dropCredentialsForServerURL:(id)l;
- (void)getUsername:(id *)username password:(id *)password forServerURL:(id)l;
- (void)storeCredentialsFromServerURL:(id)l;
@end

@implementation ServerAuthUICredentialStore

- (void)getUsername:(id *)username password:(id *)password forServerURL:(id)l
{
  v35[0] = kSecClassInternetPassword;
  v34[0] = kSecClass;
  v34[1] = kSecAttrServer;
  lCopy = l;
  host = [lCopy host];
  v35[1] = host;
  v34[2] = kSecAttrProtocol;
  serverAuthUI_protocolFromScheme = [lCopy serverAuthUI_protocolFromScheme];
  v35[2] = serverAuthUI_protocolFromScheme;
  v34[3] = kSecAttrPort;
  port = [lCopy port];

  v11 = &off_100008650;
  if (port)
  {
    v11 = port;
  }

  v35[3] = v11;
  v35[4] = kSecMatchLimitOne;
  v34[4] = kSecMatchLimit;
  v34[5] = kSecAttrSynchronizable;
  v35[5] = kCFBooleanTrue;
  v35[6] = &__kCFBooleanTrue;
  v34[6] = kSecReturnAttributes;
  v34[7] = kSecUseOperationPrompt;
  v34[8] = kSecReturnData;
  v35[7] = @"Access your password on the keychain";
  v35[8] = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:9];

  result = 0;
  v13 = SecItemCopyMatching(v12, &result);
  if (v13)
  {
    v14 = v13;
    if (v13 == -25300)
    {
      v15 = serverAuthUILogHandle;
      if (!serverAuthUILogHandle)
      {
        ServerAuthUIInitLogging();
        v15 = serverAuthUILogHandle;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v16 = "No password found";
        v17 = v15;
        v18 = 2;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, v16, buf, v18);
      }
    }

    else
    {
      v26 = serverAuthUILogHandle;
      if (!serverAuthUILogHandle)
      {
        ServerAuthUIInitLogging();
        v26 = serverAuthUILogHandle;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v33 = v14;
        v16 = "Error retrieving username and password from keychain (status: %d)";
        v17 = v26;
        v18 = 8;
        goto LABEL_22;
      }
    }
  }

  else
  {
    v19 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v19 objectForKeyedSubscript:kSecAttrAccount];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v19 objectForKeyedSubscript:kSecValueData];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [[NSString alloc] initWithData:v21 encoding:4];
          v23 = v22;
          if (v20 && v22)
          {
            if (username)
            {
              v24 = v20;
              *username = v20;
            }

            if (password)
            {
              v25 = v23;
              *password = v23;
            }
          }

          else
          {
            v30 = serverAuthUILogHandle;
            if (!serverAuthUILogHandle)
            {
              ServerAuthUIInitLogging();
              v30 = serverAuthUILogHandle;
            }

            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_100003D54(v30);
            }
          }
        }

        else
        {
          v29 = serverAuthUILogHandle;
          if (!serverAuthUILogHandle)
          {
            ServerAuthUIInitLogging();
            v29 = serverAuthUILogHandle;
          }

          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_100003CC8(v29);
          }
        }
      }

      else
      {
        v28 = serverAuthUILogHandle;
        if (!serverAuthUILogHandle)
        {
          ServerAuthUIInitLogging();
          v28 = serverAuthUILogHandle;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100003C3C(v28);
        }
      }
    }

    else
    {
      v27 = serverAuthUILogHandle;
      if (!serverAuthUILogHandle)
      {
        ServerAuthUIInitLogging();
        v27 = serverAuthUILogHandle;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100003BB0(v27);
      }
    }
  }
}

- (void)storeCredentialsFromServerURL:(id)l
{
  lCopy = l;
  v4 = [NSURLComponents componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  user = [v4 user];
  password = [v4 password];
  [v4 setPassword:&stru_1000085C8];
  v7 = serverAuthUILogHandle;
  if (!serverAuthUILogHandle)
  {
    ServerAuthUIInitLogging();
    v7 = serverAuthUILogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [v4 URL];
    *buf = 138412290;
    v50 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Updating keychain with user input credentials for server URL %@", buf, 0xCu);
  }

  if (user)
  {
    v10 = password == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v47[0] = kSecClass;
    v47[1] = kSecAttrAccount;
    v48[0] = kSecClassInternetPassword;
    v48[1] = user;
    v44 = user;
    v47[2] = kSecValueData;
    v43 = password;
    v11 = [password dataUsingEncoding:4];
    v48[2] = v11;
    v47[3] = kSecAttrServer;
    host = [lCopy host];
    v48[3] = host;
    v47[4] = kSecAttrProtocol;
    serverAuthUI_protocolFromScheme = [lCopy serverAuthUI_protocolFromScheme];
    v48[4] = serverAuthUI_protocolFromScheme;
    v47[5] = kSecAttrPort;
    port = [lCopy port];
    v15 = port;
    v16 = &off_100008650;
    if (port)
    {
      v16 = port;
    }

    v48[5] = v16;
    v48[6] = kSecAttrAccessibleWhenUnlocked;
    v47[6] = kSecAttrAccessible;
    v47[7] = kSecAttrSynchronizable;
    v48[7] = kCFBooleanTrue;
    v17 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:8];

    v18 = SecItemAdd(v17, 0);
    if (v18 == -25299)
    {
      v20 = serverAuthUILogHandle;
      if (!serverAuthUILogHandle)
      {
        ServerAuthUIInitLogging();
        v20 = serverAuthUILogHandle;
      }

      user = v44;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Updating existing keychain entry", buf, 2u);
      }

      v21 = [NSMutableDictionary alloc];
      v46[0] = kSecClass;
      v46[1] = kSecAttrServer;
      v46[2] = kSecAttrProtocol;
      v46[3] = kSecAttrPort;
      v22 = [NSArray arrayWithObjects:v46 count:4];
      [(__CFDictionary *)v17 dictionaryWithValuesForKeys:v22];
      v24 = v23 = v17;
      v25 = [v21 initWithDictionary:v24];

      [v25 setObject:kSecAttrSynchronizableAny forKeyedSubscript:kSecAttrSynchronizable];
      v45[0] = kSecAttrAccount;
      v45[1] = kSecValueData;
      v45[2] = kSecAttrAccessible;
      v45[3] = kSecAttrSynchronizable;
      v26 = [NSArray arrayWithObjects:v45 count:4];
      v17 = [(__CFDictionary *)v23 dictionaryWithValuesForKeys:v26];

      v27 = SecItemUpdate(v25, v17);
      if (v27)
      {
        v28 = v27;
        v29 = serverAuthUILogHandle;
        if (!serverAuthUILogHandle)
        {
          ServerAuthUIInitLogging();
          v29 = serverAuthUILogHandle;
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_100003D98(v28, v29, v30, v31, v32, v33, v34, v35);
        }
      }

      password = v43;
    }

    else
    {
      v19 = v18;
      if (v18)
      {
        v36 = serverAuthUILogHandle;
        user = v44;
        if (!serverAuthUILogHandle)
        {
          ServerAuthUIInitLogging();
          v36 = serverAuthUILogHandle;
        }

        password = v43;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_100003E04(v19, v36, v37, v38, v39, v40, v41, v42);
        }
      }

      else
      {
        password = v43;
        user = v44;
      }
    }
  }
}

- (void)dropCredentialsForServerURL:(id)l
{
  lCopy = l;
  v4 = serverAuthUILogHandle;
  if (!serverAuthUILogHandle)
  {
    ServerAuthUIInitLogging();
    v4 = serverAuthUILogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = lCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Dropping credentials for server URL %@", buf, 0xCu);
  }

  v21[0] = kSecClassInternetPassword;
  host = [lCopy host];
  v21[1] = host;
  v20[2] = kSecAttrProtocol;
  serverAuthUI_protocolFromScheme = [lCopy serverAuthUI_protocolFromScheme];
  v21[2] = serverAuthUI_protocolFromScheme;
  v20[3] = kSecAttrPort;
  port = [lCopy port];
  v8 = port;
  v9 = &off_100008650;
  if (port)
  {
    v9 = port;
  }

  v20[4] = kSecAttrSynchronizable;
  v21[3] = v9;
  v21[4] = kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:5];

  v11 = SecItemDelete(v10);
  if (v11)
  {
    v12 = v11;
    v13 = serverAuthUILogHandle;
    if (!serverAuthUILogHandle)
    {
      ServerAuthUIInitLogging();
      v13 = serverAuthUILogHandle;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100003E70(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

@end