@interface AKURLRequestProviderImpl
- (AKURLRequestProviderImpl)initWithContext:(id)a3;
- (AKURLRequestProviderImpl)initWithContext:(id)a3 url:(id)a4;
- (AKURLRequestProviderImpl)initWithContext:(id)a3 urlBagKey:(id)a4;
- (AKURLRequestProviderImpl)initWithContext:(id)a3 urlBagKey:(id)a4 shouldCacheResource:(BOOL)a5;
- (AKURLRequestProviderImpl)initWithContext:(id)a3 urlBagKey:(id)a4 shouldCacheResource:(BOOL)a5 accountManager:(id)a6;
- (AKURLRequestProviderImpl)initWithUrlBagKey:(id)a3;
- (BOOL)_validateDataExists:(id)a3;
- (BOOL)_validateErrorCode:(id)a3 withKey:(id)a4;
- (BOOL)_validateJSONResponseData:(id)a3 error:(id *)a4;
- (BOOL)_validateResponseBodyFormat;
- (BOOL)signRequest:(id)a3 error:(id *)a4;
- (BOOL)validateResponseData:(id)a3 error:(id *)a4;
- (NSDictionary)serverCompatibleRequestBody;
- (id)_errorFromResponseDictionary:(id)a3;
- (id)appendRequestUrl:(id)a3 queryParameterNamed:(id)a4 value:(id)a5;
- (id)responseDictionaryWithData:(id)a3 error:(id *)a4;
- (id)serverCompatibleRequestBodyWithPayload:(id)a3;
- (void)buildRequestWithCompletion:(id)a3;
- (void)requestURLWithCompletion:(id)a3;
@end

@implementation AKURLRequestProviderImpl

- (BOOL)_validateResponseBodyFormat
{
  v4 = self;
  oslog[1] = a2;
  if (![(AKURLRequestProviderImpl *)self expectedResponseType])
  {
    return 1;
  }

  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_100036FE8(v6, [(AKURLRequestProviderImpl *)v4 expectedResponseType]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Can't validate response for type: %lu", v6, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  return 0;
}

- (AKURLRequestProviderImpl)initWithUrlBagKey:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKURLRequestProviderImpl;
  v6 = [(AKURLRequestProviderImpl *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_urlBagKey, location[0]);
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (AKURLRequestProviderImpl)initWithContext:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v12 = 0;
  v10.receiver = v3;
  v10.super_class = AKURLRequestProviderImpl;
  v9 = [(AKURLRequestProviderImpl *)&v10 init];
  v12 = v9;
  objc_storeStrong(&v12, v9);
  if (v9)
  {
    objc_storeStrong(&v12->_context, location[0]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v12->_concreteAuthenticationContext, location[0]);
    }

    else
    {
      v4 = [AKAppleIDAuthenticationContext alloc];
      v5 = [v4 initWithAuthenticatedServerRequestContext:location[0]];
      concreteAuthenticationContext = v12->_concreteAuthenticationContext;
      v12->_concreteAuthenticationContext = v5;
      _objc_release(concreteAuthenticationContext);
    }
  }

  v8 = _objc_retain(v12);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v8;
}

- (AKURLRequestProviderImpl)initWithContext:(id)a3 url:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8 = [(AKURLRequestProviderImpl *)v4 initWithContext:location[0]];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    objc_storeStrong(&v11->_requestURLOverride, v9);
  }

  v6 = _objc_retain(v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (AKURLRequestProviderImpl)initWithContext:(id)a3 urlBagKey:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v4 = v10;
  v10 = 0;
  v10 = [(AKURLRequestProviderImpl *)v4 initWithContext:location[0] urlBagKey:v8 shouldCacheResource:0];
  v7 = _objc_retain(v10);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (AKURLRequestProviderImpl)initWithContext:(id)a3 urlBagKey:(id)a4 shouldCacheResource:(BOOL)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v10 = v15;
  v8 = location[0];
  v9 = v13;
  v11 = +[AKAccountManager sharedInstance];
  v15 = 0;
  v15 = [(AKURLRequestProviderImpl *)v10 initWithContext:v8 urlBagKey:v9 shouldCacheResource:a5 accountManager:?];
  v12 = _objc_retain(v15);
  _objc_release(v11);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v12;
}

- (AKURLRequestProviderImpl)initWithContext:(id)a3 urlBagKey:(id)a4 shouldCacheResource:(BOOL)a5 accountManager:(id)a6
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = a5;
  v15 = 0;
  objc_storeStrong(&v15, a6);
  v6 = v19;
  v19 = 0;
  v14 = [(AKURLRequestProviderImpl *)v6 initWithContext:location[0]];
  v19 = v14;
  objc_storeStrong(&v19, v14);
  if (v14)
  {
    v7 = [v17 copy];
    urlBagKey = v19->_urlBagKey;
    v19->_urlBagKey = v7;
    _objc_release(urlBagKey);
    v19->_shouldCacheResource = v16;
    objc_storeStrong(&v19->_accountManager, v15);
    objc_storeStrong(&v19->_urlBagKey, v17);
  }

  v10 = _objc_retain(v19);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, 0);
  return v10;
}

- (void)requestURLWithCompletion:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [(AKURLRequestProviderImpl *)v11 requestURLOverride];
  _objc_release(v8);
  if (v8)
  {
    if (location[0])
    {
      v6 = location[0];
      v7 = [(AKURLRequestProviderImpl *)v11 requestURLOverride];
      v6[2]();
      _objc_release(v7);
    }
  }

  else
  {
    v3 = [(AKAuthenticatedServerRequest *)v11->_context altDSID];
    v9 = [AKURLBag bagForAltDSID:?];
    _objc_release(v3);
    v4 = v9;
    v5 = [(AKURLRequestProviderImpl *)v11 urlBagKey];
    [v4 urlForKey:? completion:?];
    _objc_release(v5);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)buildRequestWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000DA850;
  v8 = &unk_100322D70;
  v9 = _objc_retain(v12);
  v10 = _objc_retain(location[0]);
  [(AKURLRequestProviderImpl *)v3 requestURLWithCompletion:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)responseDictionaryWithData:(id)a3 error:(id *)a4
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = a4;
  if ([(AKURLRequestProviderImpl *)v22 _validateDataExists:location[0]])
  {
    v16 = 0;
    v11 = [(AKURLRequestProviderImpl *)v22 expectedResponseType];
    if (v11)
    {
      if (v11 == 1)
      {
        v6 = [AAFSerialization dictionaryFromObject:location[0] ofType:@"application/json"];
        v7 = v16;
        v16 = v6;
        _objc_release(v7);
      }

      else if (v11 == 2)
      {
        oslog = _AKLogSystem();
        v14 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          sub_1000194D4(v24, v22);
          _os_log_debug_impl(&_mh_execute_header, oslog, v14, "%@: Cannot generate response dictionary for expected response type of UTF8String", v24, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }
    }

    else
    {
      v4 = [AAFSerialization dictionaryFromObject:location[0] ofType:@"application/x-plist"];
      v5 = v16;
      v16 = v4;
      _objc_release(v5);
    }

    v13 = [(AKURLRequestProviderImpl *)v22 _errorFromResponseDictionary:v16];
    if (v20)
    {
      v8 = v13;
      *v20 = v13;
    }

    v23 = _objc_retain(v16);
    v17 = 1;
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v19 = _AKLogSystem();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v25, v22);
      _os_log_impl(&_mh_execute_header, v19, v18, "%@: Server returned no response, treating as success", v25, 0xCu);
    }

    objc_storeStrong(&v19, 0);
    v23 = _objc_retain(&__NSDictionary0__struct);
    v17 = 1;
  }

  objc_storeStrong(location, 0);
  v9 = v23;

  return v9;
}

- (id)_errorFromResponseDictionary:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = [location[0] objectForKeyedSubscript:AKErrorStatusCodeKey];
  v3 = objc_opt_class();
  v19 = sub_1000DB9E8(v3, v20);
  if (!v20 || v19)
  {
    if ([v19 integerValue])
    {
      v15 = [[NSMutableDictionary alloc] initWithCapacity:3];
      v9 = objc_opt_class();
      v10 = [location[0] objectForKeyedSubscript:AKErrorMessageKey];
      v14 = sub_1000DB9E8(v9, v10);
      _objc_release(v10);
      oslog = _AKLogSystem();
      v12 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_10004DCC8(v24, v22, v19, v14);
        _os_log_error_impl(&_mh_execute_header, oslog, v12, "%@: Server request failed with code (%@) and message (%@)", v24, 0x20u);
      }

      objc_storeStrong(&oslog, 0);
      [v15 setObject:v19 forKeyedSubscript:AKErrorStatusCodeKey];
      [v15 setObject:v14 forKeyedSubscript:NSLocalizedDescriptionKey];
      v7 = objc_opt_class();
      v8 = [location[0] objectForKeyedSubscript:AKSubErrorStatusCodeKey];
      v11 = sub_1000DB9E8(v7, v8);
      _objc_release(v8);
      if ([v11 integerValue])
      {
        [v15 setObject:v11 forKeyedSubscript:AKSubErrorStatusCodeKey];
      }

      v6 = [v15 copy];
      v23 = [NSError ak_errorWithCode:-7010 userInfo:?];
      _objc_release(v6);
      v16 = 1;
      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
    }

    else
    {
      v23 = 0;
      v16 = 1;
    }
  }

  else
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10004DCC8(v25, v22, v20, AKErrorStatusCodeKey);
      _os_log_error_impl(&_mh_execute_header, v18, v17, "%@: Unexpected error code value (%@) for key (%@)", v25, 0x20u);
    }

    objc_storeStrong(&v18, 0);
    v23 = [NSError ak_errorWithCode:-7010];
    v16 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  v4 = v23;

  return v4;
}

- (BOOL)validateResponseData:(id)a3 error:(id *)a4
{
  v46 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v44 = a4;
  if ([(AKURLRequestProviderImpl *)v46 _validateDataExists:location[0]])
  {
    if ([(AKURLRequestProviderImpl *)v46 _validateResponseBodyFormat])
    {
      v39 = [AAFSerialization dictionaryFromObject:location[0] ofType:@"application/x-plist"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = [v39 objectForKeyedSubscript:AKErrorStatusCodeKey];
        if ([(AKURLRequestProviderImpl *)v46 _validateErrorCode:v35 withKey:AKErrorStatusCodeKey])
        {
          if ([v35 integerValue])
          {
            v15 = [NSMutableDictionary alloc];
            v49 = AKErrorStatusCodeKey;
            v50 = v35;
            v16 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
            v34 = [v15 initWithDictionary:?];
            _objc_release(v16);
            v33 = [v39 objectForKeyedSubscript:AKErrorMessageKey];
            v32 = _AKLogSystem();
            v31 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              sub_1000194D4(v48, v33);
              _os_log_error_impl(&_mh_execute_header, v32, v31, "An error occurred performing request. Server message: %@", v48, 0xCu);
            }

            objc_storeStrong(&v32, 0);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v34 setObject:v33 forKeyedSubscript:NSLocalizedDescriptionKey];
            }

            v30 = 0;
            v29 = [v39 objectForKeyedSubscript:AKSubErrorStatusCodeKey];
            if (v29 && [(AKURLRequestProviderImpl *)v46 _validateErrorCode:v29 withKey:AKSubErrorStatusCodeKey])
            {
              v28 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", AKAppleIDAuthenticationServerErrorDomain, [v29 integerValue]);
              v6 = +[NSMutableDictionary dictionary];
              v7 = v30;
              v30 = v6;
              _objc_release(v7);
              [v30 setObject:v28 forKeyedSubscript:NSUnderlyingErrorKey];
              [v34 setObject:v29 forKeyedSubscript:AKSubErrorStatusCodeKey];
              objc_storeStrong(&v28, 0);
            }

            v13 = AKAppleIDAuthenticationServerErrorDomain;
            v8 = [v35 integerValue];
            v27 = [NSError errorWithDomain:v13 code:v8 userInfo:v30];
            [v34 setObject:v27 forKeyedSubscript:NSUnderlyingErrorKey];
            v14 = [NSError ak_errorWithCode:-7010 userInfo:v34];
            v9 = v14;
            *v44 = v14;
            v47 = 0;
            v40 = 1;
            objc_storeStrong(&v27, 0);
            objc_storeStrong(&v29, 0);
            objc_storeStrong(&v30, 0);
            objc_storeStrong(&v33, 0);
            objc_storeStrong(&v34, 0);
          }

          else
          {
            v40 = 0;
          }
        }

        else
        {
          v17 = [NSError ak_errorWithCode:-7010];
          v5 = v17;
          *v44 = v17;
          v47 = 0;
          v40 = 1;
        }

        objc_storeStrong(&v35, 0);
      }

      else
      {
        v38 = _AKLogSystem();
        v37 = 16;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v19 = v38;
          v20 = v37;
          sub_10001CEEC(v36);
          _os_log_error_impl(&_mh_execute_header, v19, v20, "No body parameters in fetch user info response!", v36, 2u);
        }

        objc_storeStrong(&v38, 0);
        v18 = [NSError ak_errorWithCode:-7010];
        v4 = v18;
        *v44 = v18;
        v47 = 0;
        v40 = 1;
      }

      objc_storeStrong(&v39, 0);
      if (!v40)
      {
        v47 = 1;
        v40 = 1;
      }
    }

    else
    {
      v26 = _AKLogSystem();
      v25 = 2;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v11 = v26;
        v12 = v25;
        sub_10001CEEC(v24);
        _os_log_debug_impl(&_mh_execute_header, v11, v12, "response type is JSON", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
      v47 = [(AKURLRequestProviderImpl *)v46 _validateJSONResponseData:location[0] error:v44];
      v40 = 1;
    }
  }

  else
  {
    v43 = _AKLogSystem();
    v42 = 2;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      log = v43;
      type = v42;
      sub_10001CEEC(v41);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Server returned no response, treating as success", v41, 2u);
    }

    objc_storeStrong(&v43, 0);
    v47 = 1;
    v40 = 1;
  }

  objc_storeStrong(location, 0);
  return v47 & 1;
}

- (BOOL)_validateJSONResponseData:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  v15 = [AAFSerialization dictionaryFromObject:location[0] ofType:@"application/json"];
  if (!v15)
  {
    goto LABEL_11;
  }

  v14 = [v15 objectForKeyedSubscript:AKErrorStatusCodeKey];
  if (v14 && [v14 integerValue])
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10006A654(v19, [v14 intValue]);
      _os_log_error_impl(&_mh_execute_header, v13, v12, "Server request failed with error code: %i", v19, 8u);
    }

    objc_storeStrong(&v13, 0);
    v11 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", AKAppleIDAuthenticationServerErrorDomain, [v14 integerValue], 0);
    v10 = +[NSMutableDictionary dictionary];
    [v10 setObject:v11 forKeyedSubscript:NSUnderlyingErrorKey];
    [v10 setObject:v14 forKeyedSubscript:AKErrorStatusCodeKey];
    v7 = [v15 objectForKeyedSubscript:AKErrorMessageKey];
    [v10 setObject:? forKeyedSubscript:?];
    _objc_release(v7);
    if (v16)
    {
      v6 = [NSError ak_errorWithCode:-7010 userInfo:v10];
      v4 = v6;
      *v16 = v6;
    }

    v18 = 0;
    v9 = 1;
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&v14, 0);
  if (!v9)
  {
LABEL_11:
    v18 = 1;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v18 & 1;
}

- (BOOL)_validateDataExists:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v3 = [NSString alloc];
    v6 = [v3 initWithData:location[0] encoding:4];
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v10, v6);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Response Body: %@", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v9 = 1;
    v7 = 1;
    objc_storeStrong(&v6, 0);
  }

  else
  {
    v9 = 0;
    v7 = 1;
  }

  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (BOOL)_validateErrorCode:(id)a3 withKey:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if (!location[0] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v10, v7, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Invalid key %@ in server response: %@", v10, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v9 = 0;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (NSDictionary)serverCompatibleRequestBody
{
  v4 = [(AKURLRequestProviderImpl *)self authKitBody];
  v5 = [(AKURLRequestProviderImpl *)self serverCompatibleRequestBodyWithPayload:?];
  _objc_release(v4);

  return v5;
}

- (id)serverCompatibleRequestBodyWithPayload:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [&__NSDictionary0__struct mutableCopy];
  [v6 setObject:&__NSDictionary0__struct forKeyedSubscript:AKRequestHeadersKey];
  v5 = [&__NSDictionary0__struct mutableCopy];
  if (location[0])
  {
    [v5 addEntriesFromDictionary:location[0]];
  }

  [v6 setObject:v5 forKeyedSubscript:AKRequestBodyKey];
  v4 = [v6 copy];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4)
  {
    v6 = [NSError ak_errorWithCode:-7027];
    v4 = v6;
    *a4 = v6;
  }

  objc_storeStrong(location, 0);
  return 0;
}

- (id)appendRequestUrl:(id)a3 queryParameterNamed:(id)a4 value:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v10 = [NSURLComponents alloc];
  v11 = [location[0] absoluteString];
  v16 = [v10 initWithString:?];
  _objc_release(v11);
  if (v16)
  {
    v7 = [v16 queryItems];
    v15 = [v7 mutableCopy];
    _objc_release(v7);
    if (!v15)
    {
      v15 = objc_alloc_init(NSMutableArray);
      _objc_release(0);
    }

    v14 = [NSURLQueryItem queryItemWithName:v18 value:v17];
    [v15 addObject:v14];
    [v16 setQueryItems:v15];
    v20 = [v16 URL];
    v13 = 1;
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_10004DCC8(v21, v18, v17, location[0]);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Failed to append %@:%@ to %@", v21, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v20 = _objc_retain(location[0]);
    v13 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  v5 = v20;

  return v5;
}

@end