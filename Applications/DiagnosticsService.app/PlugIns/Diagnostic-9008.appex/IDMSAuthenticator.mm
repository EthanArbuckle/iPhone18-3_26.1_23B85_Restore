@interface IDMSAuthenticator
- (id)authKitSession;
- (id)authKitSessionConfig;
- (int64_t)_constructAlbertRequest:(id *)request objectModel:(id)model username:(id)username altDSID:(id)d gsToken:(id)token;
- (int64_t)_fetchGSTokenWithPassword:(id)password username:(id)username altDSID:(id *)d gsToken:(id *)token;
- (int64_t)authenticateFromObjectModel:(id)model outRequest:(id *)request;
- (void)_appendAdditionalHeaders:(id)headers altDSID:(id)d gsToken:(id)token;
@end

@implementation IDMSAuthenticator

- (int64_t)_fetchGSTokenWithPassword:(id)password username:(id)username altDSID:(id *)d gsToken:(id *)token
{
  passwordCopy = password;
  usernameCopy = username;
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
  [v11 setUsername:usernameCopy];
  [v11 _setPassword:passwordCopy];
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

  if (d)
  {
    *d = v38[5];
  }

  if (token)
  {
    *token = v32[5];
  }

  v19 = v28[3];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  return v19;
}

- (void)_appendAdditionalHeaders:(id)headers altDSID:(id)d gsToken:(id)token
{
  tokenCopy = token;
  dCopy = d;
  headersCopy = headers;
  [headersCopy ak_addDeviceUDIDHeader];
  [headersCopy ak_addClientInfoHeader];
  [headersCopy ak_addAuthorizationHeaderWithServiceToken:tokenCopy forAltDSID:dCopy];
}

- (id)authKitSessionConfig
{
  v2 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [v2 setURLCache:0];
  [v2 setRequestCachePolicy:1];
  v3 = +[NSBundle mainBundle];
  bundleIdentifier = [v3 bundleIdentifier];

  v5 = [[AKAppleIDSession alloc] initWithIdentifier:bundleIdentifier];
  [v2 set_appleIDContext:v5];

  return v2;
}

- (id)authKitSession
{
  authKitSessionConfig = [(IDMSAuthenticator *)self authKitSessionConfig];
  v3 = [NSURLSession sessionWithConfiguration:authKitSessionConfig];

  return v3;
}

- (int64_t)authenticateFromObjectModel:(id)model outRequest:(id *)request
{
  modelCopy = model;
  v7 = modelCopy;
  if (!modelCopy)
  {
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000D8D4();
    }

    v12 = 0;
    v8 = 0;
    text2 = 0;
    text = 0;
    v18 = 0;
    v17 = 0;
    v16 = -107;
    goto LABEL_26;
  }

  v8 = [modelCopy subElementWithID:@"login"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000D72C();
    }

    v12 = 0;
    text2 = 0;
    text = 0;
    goto LABEL_20;
  }

  tableCell = [v8 tableCell];
  editableTextField = [tableCell editableTextField];
  text = [editableTextField text];

  v12 = [v7 subElementWithID:@"password"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000D760();
    }

    text2 = 0;
LABEL_20:
    v18 = 0;
    v17 = 0;
    v16 = -104;
    goto LABEL_26;
  }

  tableCell2 = [v12 tableCell];
  editableTextField2 = [tableCell2 editableTextField];
  text2 = [editableTextField2 text];

  if (!text || ![text length])
  {
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000D8A0();
    }

    goto LABEL_25;
  }

  if (!text2 || ![text2 length])
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
  v16 = [(IDMSAuthenticator *)self _fetchGSTokenWithPassword:text2 username:text altDSID:&v36 gsToken:&v35];
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
    v16 = [(IDMSAuthenticator *)self _constructAlbertRequest:request objectModel:v7 username:text altDSID:v17 gsToken:v18];
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
    tableCell3 = [v12 tableCell];
    editableTextField3 = [tableCell3 editableTextField];
    [editableTextField3 setText:&stru_100018C40];
  }

LABEL_28:

  return v16;
}

- (int64_t)_constructAlbertRequest:(id *)request objectModel:(id)model username:(id)username altDSID:(id)d gsToken:(id)token
{
  modelCopy = model;
  usernameCopy = username;
  dCopy = d;
  tokenCopy = token;
  v16 = +[NSMutableDictionary dictionary];
  v17 = 0;
  if (usernameCopy)
  {
    v18 = -202;
    if (dCopy)
    {
      selfCopy = self;
      v19 = 0;
      v20 = 0;
      if (tokenCopy)
      {
        v21 = [modelCopy subElementWithID:@"next"];
        v20 = v21;
        if (v21 && ([v21 attributes], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "objectForKeyedSubscript:", @"url"), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
        {
          attributes = [v20 attributes];
          v19 = [attributes objectForKeyedSubscript:@"url"];

          sourceURL = [modelCopy sourceURL];

          if (sourceURL)
          {
            requestCopy = request;
            sourceURL2 = [modelCopy sourceURL];
            v27 = [sourceURL2 URLByAppendingPathComponent:v19];
            v17 = [NSMutableURLRequest requestWithURL:v27];

            [v17 setHTTPMethod:@"POST"];
            [v17 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
            [v16 setObject:usernameCopy forKey:@"login"];
            serverInfo = [modelCopy serverInfo];

            if (serverInfo)
            {
              serverInfo2 = [modelCopy serverInfo];
              [v16 setObject:serverInfo2 forKey:@"serverInfo"];
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
              [(IDMSAuthenticator *)selfCopy _appendAdditionalHeaders:v17 altDSID:dCopy gsToken:tokenCopy];
              if (requestCopy)
              {
                v41 = v17;
                v18 = 0;
                *requestCopy = v17;
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