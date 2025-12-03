@interface NSError(HKOAuth2)
+ (__CFString)_hk_OAuth2_defaultDescriptionForErrorCode:()HKOAuth2;
+ (id)_hk_OAuth2_error:()HKOAuth2 userInfo:underlyingError:;
+ (id)_hk_OAuth2_errorForUnauthorizedStatusWithRequest:()HKOAuth2 response:;
+ (id)_hk_OAuth2_errorFromResponseData:()HKOAuth2 defaultError:parseError:;
+ (id)_hk_OAuth2_rawErrorForRequest:()HKOAuth2 response:data:;
+ (id)hk_OAuth2_errorForRequest:()HKOAuth2 response:data:;
+ (id)hk_OAuth2_errorFromErrorValue:()HKOAuth2;
+ (void)_hk_OAuth2_errorForBadRequestStatusWithResponse:()HKOAuth2 data:;
- (__CFString)hk_OAuth2_errorCode;
- (id)_hk_OAuth2_errorByAddingItemsToUserInfo:()HKOAuth2;
- (uint64_t)hk_OAuth2_isOAuth2Error;
- (uint64_t)hk_OAuth2_isOAuth2ErrorWithCode:()HKOAuth2;
@end

@implementation NSError(HKOAuth2)

+ (id)_hk_OAuth2_error:()HKOAuth2 userInfo:underlyingError:
{
  v8 = a5;
  v9 = [a4 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v12 = v11;

  v13 = *MEMORY[0x1E696A578];
  v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
  if (v14)
  {
    [v12 setObject:v14 forKeyedSubscript:v13];
  }

  else
  {
    v15 = [self _hk_OAuth2_defaultDescriptionForErrorCode:a3];
    [v12 setObject:v15 forKeyedSubscript:v13];
  }

  v16 = *MEMORY[0x1E696AA08];
  v17 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v8;
  }

  [v12 setObject:v19 forKeyedSubscript:v16];

  v20 = [self errorWithDomain:@"com.apple.healthkit.private.oauth2" code:a3 userInfo:v12];

  return v20;
}

+ (__CFString)_hk_OAuth2_defaultDescriptionForErrorCode:()HKOAuth2
{
  if (a3 > 0xD)
  {
    return @"The request is missing a required parameter, includes an invalid parameter value, includes a parameter more than once, or is otherwise malformed.";
  }

  else
  {
    return off_1E7382EF0[a3];
  }
}

+ (id)hk_OAuth2_errorFromErrorValue:()HKOAuth2
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEqualToString:@"invalid_request"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"invalid_client"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"invalid_grant"])
  {
    v5 = 3;
  }

  else if ([v4 isEqualToString:@"unauthorized_client"])
  {
    v5 = 4;
  }

  else if ([v4 isEqualToString:@"access_denied"])
  {
    v5 = 7;
  }

  else if ([v4 isEqualToString:@"unsupported_response_type"])
  {
    v5 = 10;
  }

  else if ([v4 isEqualToString:@"unsupported_grant_type"])
  {
    v5 = 5;
  }

  else if ([v4 isEqualToString:@"invalid_scope"])
  {
    v5 = 6;
  }

  else if ([v4 isEqualToString:@"server_error"])
  {
    v5 = 8;
  }

  else if ([v4 isEqualToString:@"temporarily_unavailable"])
  {
    v5 = 9;
  }

  else
  {
    v5 = 0;
  }

  v10 = @"HKOAuth2ErrorResponseErrorNameErrorKey";
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [self _hk_OAuth2_error:v5 userInfo:v6 underlyingError:0];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (__CFString)hk_OAuth2_errorCode
{
  if ([self hk_OAuth2_isOAuth2Error] && (v2 = objc_msgSend(self, "code"), (v2 - 1) <= 9))
  {
    return off_1E7382F60[v2 - 1];
  }

  else
  {
    return 0;
  }
}

+ (id)hk_OAuth2_errorForRequest:()HKOAuth2 response:data:
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [self _hk_OAuth2_rawErrorForRequest:a3 response:v8 data:a5];
  if (v9)
  {
    v15 = @"HKOAuth2ErrorHTTPStatusCodeErrorKey";
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "statusCode")}];
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

    v12 = [v9 _hk_OAuth2_errorByAddingItemsToUserInfo:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)_hk_OAuth2_rawErrorForRequest:()HKOAuth2 response:data:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  statusCode = [v9 statusCode];
  switch(statusCode)
  {
    case 400:
      v12 = [self _hk_OAuth2_errorForBadRequestStatusWithResponse:v9 data:v10];
      goto LABEL_7;
    case 401:
      v12 = [self _hk_OAuth2_errorForUnauthorizedStatusWithRequest:v8 response:v9];
      goto LABEL_7;
    case 403:
      v12 = [self hk_OAuth2_error:7];
LABEL_7:
      v13 = v12;
      goto LABEL_9;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

+ (id)_hk_OAuth2_errorForUnauthorizedStatusWithRequest:()HKOAuth2 response:
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  allHTTPHeaderFields = [v8 allHTTPHeaderFields];

  v11 = [allHTTPHeaderFields objectForKeyedSubscript:@"Authorization"];

  allHeaderFields = [v7 allHeaderFields];

  v13 = [allHeaderFields objectForKeyedSubscript:@"WWW-Authenticate"];

  v14 = [v11 hasPrefix:@"Bearer "];
  v15 = 11;
  if (v14 && v13)
  {
    [v9 setObject:v13 forKeyedSubscript:@"HKOAuth2ErrorBearerAuthenticateResponseErrorKey"];
    v15 = 12;
  }

  v16 = [self _hk_OAuth2_error:v15 userInfo:v9 underlyingError:0];

  return v16;
}

+ (void)_hk_OAuth2_errorForBadRequestStatusWithResponse:()HKOAuth2 data:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696ABC0] hk_OAuth2_error:1];
  v14 = 0;
  v9 = [self _hk_OAuth2_errorFromResponseData:v7 defaultError:v8 parseError:&v14];
  v10 = v14;
  if (v10)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      +[NSError(HKOAuth2) _hk_OAuth2_errorForBadRequestStatusWithResponse:data:];
    }
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  return v11;
}

+ (id)_hk_OAuth2_errorFromResponseData:()HKOAuth2 defaultError:parseError:
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:a5];
    if (v10)
    {
      v11 = objc_opt_class();
      v12 = HKSafeObject(v10, v11, @"responseObject", a5);
      v13 = v12;
      if (v12)
      {
        v14 = [v12 hk_safeStringForKeyPath:@"error" error:a5];
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v16 = [v13 objectForKeyedSubscript:@"error_description"];
        if (v16)
        {
          v17 = objc_opt_class();
          v25 = 0;
          v18 = HKSafeObject(v16, v17, @"errorDescription", &v25);
          v19 = v25;
          if (v19)
          {
            _HKInitializeLogging();
            v24 = HKLogDefault;
            if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
            {
              +[NSError(HKOAuth2) _hk_OAuth2_errorFromResponseData:defaultError:parseError:];
            }
          }

          [v15 setObject:v18 forKeyedSubscript:{@"HKOAuth2ErrorResponseErrorDescriptionErrorKey", v24}];
        }

        if (v14)
        {
          v20 = [self hk_OAuth2_errorFromErrorValue:v14];
        }

        else
        {
          v20 = v9;
        }

        v22 = v20;
        v21 = [v20 _hk_OAuth2_errorByAddingItemsToUserInfo:v15];
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (uint64_t)hk_OAuth2_isOAuth2Error
{
  domain = [self domain];
  v2 = [domain isEqualToString:@"com.apple.healthkit.private.oauth2"];

  return v2;
}

- (uint64_t)hk_OAuth2_isOAuth2ErrorWithCode:()HKOAuth2
{
  result = [self hk_OAuth2_isOAuth2Error];
  if (result)
  {
    return [self code] == a3;
  }

  return result;
}

- (id)_hk_OAuth2_errorByAddingItemsToUserInfo:()HKOAuth2
{
  v4 = a3;
  userInfo = [self userInfo];
  v6 = [userInfo mutableCopy];

  [v6 addEntriesFromDictionary:v4];
  v7 = objc_alloc(MEMORY[0x1E696ABC0]);
  domain = [self domain];
  v9 = [v7 initWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v6}];

  return v9;
}

+ (void)_hk_OAuth2_errorForBadRequestStatusWithResponse:()HKOAuth2 data:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1(&dword_19197B000, v0, v1, "OAuth2: Failed to parse response data %@ for response %@.");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_hk_OAuth2_errorFromResponseData:()HKOAuth2 defaultError:parseError:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1(&dword_19197B000, v0, v1, "OAuth2: Failed to parse error_description %@ for response data %@.");
  v2 = *MEMORY[0x1E69E9840];
}

@end