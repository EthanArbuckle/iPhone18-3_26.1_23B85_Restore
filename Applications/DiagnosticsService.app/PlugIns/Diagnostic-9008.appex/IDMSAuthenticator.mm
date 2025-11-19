@interface IDMSAuthenticator
- (id)authKitSession;
- (id)authKitSessionConfig;
- (int64_t)_constructAlbertRequest:(id *)a3 objectModel:(id)a4 username:(id)a5 altDSID:(id)a6 gsToken:(id)a7;
- (int64_t)_fetchGSTokenWithPassword:(id)a3 username:(id)a4 altDSID:(id *)a5 gsToken:(id *)a6;
- (int64_t)authenticateFromObjectModel:(id)a3 outRequest:(id *)a4;
- (void)_appendAdditionalHeaders:(id)a3 altDSID:(id)a4 gsToken:(id)a5;
@end

@implementation IDMSAuthenticator

- (int64_t)_fetchGSTokenWithPassword:(id)a3 username:(id)a4 altDSID:(id *)a5 gsToken:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100008C90;
  v41 = sub_100008CA0;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100008C90;
  v35 = sub_100008CA0;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = -1;
  v13 = dispatch_semaphore_create(0);
  [v11 setUsername:v10];
  [v11 _setPassword:v9];
  [v11 setShouldUpdatePersistentServiceTokens:0];
  [v11 setShouldPromptForPasswordOnly:1];
  [v11 setIsUsernameEditable:0];
  [v11 setIsEphemeral:1];
  [v11 setAuthenticationType:0];
  [v11 setServiceType:1];
  [v11 setServiceIdentifier:@"com.apple.gs.corerepair.auth"];
  v14 = handleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Authenticating user credentials...", buf, 2u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100008CA8;
  v21[3] = &unk_100018A20;
  v23 = &v27;
  v24 = &v37;
  v25 = &v31;
  v15 = v13;
  v22 = v15;
  [v12 authenticateWithContext:v11 completion:v21];
  v16 = handleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Waiting for IDMS", buf, 2u);
  }

  v17 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v15, v17))
  {
    v18 = handleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000D62C(v18);
    }

    v28[3] = -200;
  }

  if (a5)
  {
    *a5 = v38[5];
  }

  if (a6)
  {
    *a6 = v32[5];
  }

  v19 = v28[3];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  return v19;
}

- (void)_appendAdditionalHeaders:(id)a3 altDSID:(id)a4 gsToken:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [v9 ak_addDeviceUDIDHeader];
  [v9 ak_addClientInfoHeader];
  [v9 ak_addAuthorizationHeaderWithServiceToken:v7 forAltDSID:v8];
}

- (id)authKitSessionConfig
{
  v2 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [v2 setURLCache:0];
  [v2 setRequestCachePolicy:1];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];

  v5 = [[AKAppleIDSession alloc] initWithIdentifier:v4];
  [v2 set_appleIDContext:v5];

  return v2;
}

- (id)authKitSession
{
  v2 = [(IDMSAuthenticator *)self authKitSessionConfig];
  v3 = [NSURLSession sessionWithConfiguration:v2];

  return v3;
}

- (int64_t)authenticateFromObjectModel:(id)a3 outRequest:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000D8D4();
    }

    v12 = 0;
    v8 = 0;
    v15 = 0;
    v11 = 0;
    v18 = 0;
    v17 = 0;
    v16 = -107;
    goto LABEL_26;
  }

  v8 = [v6 subElementWithID:@"login"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000D72C();
    }

    v12 = 0;
    v15 = 0;
    v11 = 0;
    goto LABEL_20;
  }

  v9 = [v8 tableCell];
  v10 = [v9 editableTextField];
  v11 = [v10 text];

  v12 = [v7 subElementWithID:@"password"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000D760();
    }

    v15 = 0;
LABEL_20:
    v18 = 0;
    v17 = 0;
    v16 = -104;
    goto LABEL_26;
  }

  v13 = [v12 tableCell];
  v14 = [v13 editableTextField];
  v15 = [v14 text];

  if (!v11 || ![v11 length])
  {
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000D8A0();
    }

    goto LABEL_25;
  }

  if (!v15 || ![v15 length])
  {
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000D86C();
    }

LABEL_25:
    v18 = 0;
    v17 = 0;
    v16 = -201;
    goto LABEL_26;
  }

  v35 = 0;
  v36 = 0;
  v16 = [(IDMSAuthenticator *)self _fetchGSTokenWithPassword:v15 username:v11 altDSID:&v36 gsToken:&v35];
  v17 = v36;
  v18 = v35;
  if (v16)
  {
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000D794(v16, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    v16 = [(IDMSAuthenticator *)self _constructAlbertRequest:a4 objectModel:v7 username:v11 altDSID:v17 gsToken:v18];
    if (!v16)
    {
      goto LABEL_28;
    }

    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000D800(v16, v19, v29, v30, v31, v32, v33, v34);
    }
  }

LABEL_26:

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [v12 tableCell];
    v27 = [v26 editableTextField];
    [v27 setText:&stru_100018C40];
  }

LABEL_28:

  return v16;
}

- (int64_t)_constructAlbertRequest:(id *)a3 objectModel:(id)a4 username:(id)a5 altDSID:(id)a6 gsToken:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[NSMutableDictionary dictionary];
  v17 = 0;
  if (v13)
  {
    v18 = -202;
    if (v14)
    {
      v44 = self;
      v19 = 0;
      v20 = 0;
      if (v15)
      {
        v21 = [v12 subElementWithID:@"next"];
        v20 = v21;
        if (v21 && ([v21 attributes], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "objectForKeyedSubscript:", @"url"), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
        {
          v24 = [v20 attributes];
          v19 = [v24 objectForKeyedSubscript:@"url"];

          v25 = [v12 sourceURL];

          if (v25)
          {
            v43 = a3;
            v26 = [v12 sourceURL];
            v27 = [v26 URLByAppendingPathComponent:v19];
            v17 = [NSMutableURLRequest requestWithURL:v27];

            [v17 setHTTPMethod:@"POST"];
            [v17 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
            [v16 setObject:v13 forKey:@"login"];
            v28 = [v12 serverInfo];

            if (v28)
            {
              v29 = [v12 serverInfo];
              [v16 setObject:v29 forKey:@"serverInfo"];
            }

            v45 = 0;
            v30 = [NSPropertyListSerialization dataWithPropertyList:v16 format:100 options:0 error:&v45];
            v31 = v45;
            [v17 setHTTPBody:v30];

            if (v31)
            {
              v32 = handleForCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                sub_10000D908(v31, v32, v33, v34, v35, v36, v37, v38);
              }

              v18 = -108;
            }

            else
            {
              [(IDMSAuthenticator *)v44 _appendAdditionalHeaders:v17 altDSID:v14 gsToken:v15];
              if (v43)
              {
                v41 = v17;
                v18 = 0;
                *v43 = v17;
              }

              else
              {
                v18 = 0;
              }
            }
          }

          else
          {
            v40 = handleForCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              sub_10000D974();
            }

            v17 = 0;
            v18 = -106;
          }
        }

        else
        {
          v39 = handleForCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_10000D9A8();
          }

          v17 = 0;
          v19 = 0;
          v18 = -105;
        }
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v18 = -201;
  }

  return v18;
}

@end