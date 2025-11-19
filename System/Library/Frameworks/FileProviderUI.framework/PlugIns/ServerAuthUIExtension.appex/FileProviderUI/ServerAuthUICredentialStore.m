@interface ServerAuthUICredentialStore
- (void)dropCredentialsForServerURL:(id)a3;
- (void)getUsername:(id *)a3 password:(id *)a4 forServerURL:(id)a5;
- (void)storeCredentialsFromServerURL:(id)a3;
@end

@implementation ServerAuthUICredentialStore

- (void)getUsername:(id *)a3 password:(id *)a4 forServerURL:(id)a5
{
  v35[0] = kSecClassInternetPassword;
  v34[0] = kSecClass;
  v34[1] = kSecAttrServer;
  v7 = a5;
  v8 = [v7 host];
  v35[1] = v8;
  v34[2] = kSecAttrProtocol;
  v9 = [v7 serverAuthUI_protocolFromScheme];
  v35[2] = v9;
  v34[3] = kSecAttrPort;
  v10 = [v7 port];

  v11 = &off_100008650;
  if (v10)
  {
    v11 = v10;
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
            if (a3)
            {
              v24 = v20;
              *a3 = v20;
            }

            if (a4)
            {
              v25 = v23;
              *a4 = v23;
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

- (void)storeCredentialsFromServerURL:(id)a3
{
  v3 = a3;
  v4 = [NSURLComponents componentsWithURL:v3 resolvingAgainstBaseURL:0];
  v5 = [v4 user];
  v6 = [v4 password];
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

  if (v5)
  {
    v10 = v6 == 0;
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
    v48[1] = v5;
    v44 = v5;
    v47[2] = kSecValueData;
    v43 = v6;
    v11 = [v6 dataUsingEncoding:4];
    v48[2] = v11;
    v47[3] = kSecAttrServer;
    v12 = [v3 host];
    v48[3] = v12;
    v47[4] = kSecAttrProtocol;
    v13 = [v3 serverAuthUI_protocolFromScheme];
    v48[4] = v13;
    v47[5] = kSecAttrPort;
    v14 = [v3 port];
    v15 = v14;
    v16 = &off_100008650;
    if (v14)
    {
      v16 = v14;
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

      v5 = v44;
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

      v6 = v43;
    }

    else
    {
      v19 = v18;
      if (v18)
      {
        v36 = serverAuthUILogHandle;
        v5 = v44;
        if (!serverAuthUILogHandle)
        {
          ServerAuthUIInitLogging();
          v36 = serverAuthUILogHandle;
        }

        v6 = v43;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_100003E04(v19, v36, v37, v38, v39, v40, v41, v42);
        }
      }

      else
      {
        v6 = v43;
        v5 = v44;
      }
    }
  }
}

- (void)dropCredentialsForServerURL:(id)a3
{
  v3 = a3;
  v4 = serverAuthUILogHandle;
  if (!serverAuthUILogHandle)
  {
    ServerAuthUIInitLogging();
    v4 = serverAuthUILogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Dropping credentials for server URL %@", buf, 0xCu);
  }

  v21[0] = kSecClassInternetPassword;
  v5 = [v3 host];
  v21[1] = v5;
  v20[2] = kSecAttrProtocol;
  v6 = [v3 serverAuthUI_protocolFromScheme];
  v21[2] = v6;
  v20[3] = kSecAttrPort;
  v7 = [v3 port];
  v8 = v7;
  v9 = &off_100008650;
  if (v7)
  {
    v9 = v7;
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