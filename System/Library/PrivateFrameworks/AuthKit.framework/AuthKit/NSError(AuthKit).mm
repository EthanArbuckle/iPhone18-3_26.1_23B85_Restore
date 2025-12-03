@interface NSError(AuthKit)
+ (id)ak_anisetteErrorWithCode:()AuthKit underlyingError:;
+ (id)ak_attestationErrorWithCode:()AuthKit underlyingError:;
+ (id)ak_errorWithCode:()AuthKit underlyingError:;
+ (id)ak_errorWithCode:()AuthKit userInfo:;
+ (id)ak_generalErrorWithCode:()AuthKit errorDomain:underlyingError:;
+ (id)ak_wrappedAnisetteError:()AuthKit underlyingADIErrorCode:;
- (BOOL)ak_isAdditionalCTASelected;
- (BOOL)ak_isAppleIDSetupErrorWithCode:()AuthKit;
- (BOOL)ak_isAuthenticationErrorWithCode:()AuthKit;
- (BOOL)ak_isIncompatibleDevicesError;
- (BOOL)ak_isLAUserCancelError;
- (BOOL)ak_isServerThrottlingError;
- (BOOL)ak_isSurrogateAuthAlreadyInProgressError;
- (BOOL)ak_isUnableToPromptError;
- (BOOL)ak_isUserCancelError;
- (BOOL)ak_isUserSkippedError;
- (BOOL)ak_isUserTryAgainError;
- (id)ak_allUnderlyingErrorsWithMaxDepth:()AuthKit;
- (id)ak_errorByAppendingUserInfo:()AuthKit;
- (id)ak_errorsHeaderStringWithMessage;
- (id)errorDescriptionIncludingUnderlyingErrorsWithMaxDepth:()AuthKit;
- (uint64_t)ak_isAppleIDSetupCancelError;
- (uint64_t)ak_isAuthenticationError;
- (uint64_t)ak_isEligibleForProxiedAuthFallback;
- (uint64_t)ak_isServiceError;
- (uint64_t)ak_isUserInitiatedError;
- (uint64_t)ak_isXPCServiceError;
- (uint64_t)isAccountNotProvisioned;
@end

@implementation NSError(AuthKit)

- (id)ak_errorByAppendingUserInfo:()AuthKit
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  userInfo = [selfCopy userInfo];
  v11 = [userInfo mutableCopy];
  v12 = 0;
  if (v11)
  {
    v3 = MEMORY[0x1E69E5928](v11);
  }

  else
  {
    v13 = objc_opt_new();
    v12 = 1;
    v3 = MEMORY[0x1E69E5928](v13);
  }

  v14 = v3;
  if (v12)
  {
    MEMORY[0x1E69E5920](v13);
  }

  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](userInfo);
  [v14 addEntriesFromDictionary:location[0]];
  v6 = MEMORY[0x1E696ABC0];
  domain = [selfCopy domain];
  code = [selfCopy code];
  v7 = [v14 copy];
  v9 = [v6 errorWithDomain:domain code:code userInfo:?];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](domain);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v9;
}

+ (id)ak_errorWithCode:()AuthKit userInfo:
{
  selfCopy = self;
  v8 = a2;
  v7 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAuthenticationError" code:v7 userInfo:location];
  objc_storeStrong(&location, 0);

  return v5;
}

+ (id)ak_errorWithCode:()AuthKit underlyingError:
{
  v15[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v12 = a2;
  v11 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v9 = 0;
  if (location)
  {
    v14 = *MEMORY[0x1E696AA08];
    v15[0] = location;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = v9;
    v9 = v4;
    MEMORY[0x1E69E5920](v5);
  }

  v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:v11 userInfo:{v9, &v9}];
  objc_storeStrong(v7, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)ak_anisetteErrorWithCode:()AuthKit underlyingError:
{
  v15[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v12 = a2;
  v11 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v9 = 0;
  if (location)
  {
    v14 = *MEMORY[0x1E696AA08];
    v15[0] = location;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = v9;
    v9 = v4;
    MEMORY[0x1E69E5920](v5);
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAnisetteError" code:v11 userInfo:{v9, &v9}];
  objc_storeStrong(v7, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)ak_attestationErrorWithCode:()AuthKit underlyingError:
{
  v15[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v12 = a2;
  v11 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v9 = 0;
  if (location)
  {
    v14 = *MEMORY[0x1E696AA08];
    v15[0] = location;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = v9;
    v9 = v4;
    MEMORY[0x1E69E5920](v5);
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAttestationErrorDomain" code:v11 userInfo:{v9, &v9}];
  objc_storeStrong(v7, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)ak_generalErrorWithCode:()AuthKit errorDomain:underlyingError:
{
  v17[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v14 = a2;
  v13 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v10 = 0;
  if (v11)
  {
    v16 = *MEMORY[0x1E696AA08];
    v17[0] = v11;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v6 = v10;
    v10 = v5;
    MEMORY[0x1E69E5920](v6);
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:location code:v13 userInfo:v10];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)ak_wrappedAnisetteError:()AuthKit underlyingADIErrorCode:
{
  v15[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKUnderlyingADIErrors" code:a4 userInfo:?];
  v6 = MEMORY[0x1E696ABC0];
  v5 = v11;
  v14 = *MEMORY[0x1E696AA08];
  v15[0] = v9;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v8 = [v6 errorWithDomain:@"AKAnisetteError" code:v5 userInfo:?];
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(&v9, 0);
  *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)ak_isUserCancelError
{
  v2 = 0;
  if ([self ak_isAuthenticationError])
  {
    return [self code] == -7003;
  }

  return v2;
}

- (BOOL)ak_isUserSkippedError
{
  v2 = 0;
  if ([self ak_isAuthenticationError])
  {
    return [self code] == -7038;
  }

  return v2;
}

- (BOOL)ak_isAdditionalCTASelected
{
  v2 = 0;
  if ([self ak_isAuthenticationError])
  {
    return [self code] == -7124;
  }

  return v2;
}

- (BOOL)ak_isUserTryAgainError
{
  v2 = 0;
  if ([self ak_isAuthenticationError])
  {
    return [self code] == -7062;
  }

  return v2;
}

- (uint64_t)ak_isUserInitiatedError
{
  ak_isAdditionalCTASelected = 1;
  if (([self ak_isUserCancelError] & 1) == 0)
  {
    ak_isAdditionalCTASelected = 1;
    if (([self ak_isUserSkippedError] & 1) == 0)
    {
      ak_isAdditionalCTASelected = [self ak_isAdditionalCTASelected];
    }
  }

  return ak_isAdditionalCTASelected & 1;
}

- (uint64_t)ak_isServiceError
{
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v15 = a2;
  v10 = 0;
  if ([self ak_isAuthenticationError])
  {
    v9 = 1;
    if ([selfCopy code] != -7029)
    {
      v9 = [selfCopy code] == -7005;
    }

    v10 = v9;
  }

  v14 = v10;
  memset(__b, 0, sizeof(__b));
  obj = [selfCopy underlyingErrors];
  v8 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v5);
      if ([v13 code] == -7029 || objc_msgSend(v13, "code") == -7005)
      {
        break;
      }

      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v6)
        {
          goto LABEL_14;
        }
      }
    }

    v17 = 1;
    v11 = 1;
  }

  else
  {
LABEL_14:
    v11 = 0;
  }

  MEMORY[0x1E69E5920](obj);
  if (!v11)
  {
    v17 = v14;
  }

  *MEMORY[0x1E69E9840];
  return v17 & 1;
}

- (uint64_t)ak_isXPCServiceError
{
  v3 = 0;
  if ([self code] == 4099 || (v2 = 0, objc_msgSend(self, "code") == 4097))
  {
    domain = [self domain];
    v3 = 1;
    v2 = [domain isEqualToString:*MEMORY[0x1E696A250]];
  }

  if (v3)
  {
    MEMORY[0x1E69E5920](domain);
  }

  return v2 & 1;
}

- (BOOL)ak_isUnableToPromptError
{
  v2 = 0;
  if ([self ak_isAuthenticationError])
  {
    return [self code] == -7013;
  }

  return v2;
}

- (BOOL)ak_isSurrogateAuthAlreadyInProgressError
{
  v2 = 0;
  if ([self ak_isAuthenticationError])
  {
    return [self code] == -7045;
  }

  return v2;
}

- (BOOL)ak_isIncompatibleDevicesError
{
  v2 = 0;
  if ([self ak_isAuthenticationError])
  {
    return [self code] == -7095;
  }

  return v2;
}

- (BOOL)ak_isAuthenticationErrorWithCode:()AuthKit
{
  v4 = 0;
  if ([self ak_isAuthenticationError])
  {
    return [self code] == a3;
  }

  return v4;
}

- (uint64_t)ak_isAuthenticationError
{
  domain = [self domain];
  v3 = [domain isEqualToString:@"AKAuthenticationError"];
  MEMORY[0x1E69E5920](domain);
  return v3;
}

- (BOOL)ak_isLAUserCancelError
{
  domain = [self domain];
  v3 = 0;
  if ([domain isEqualToString:*MEMORY[0x1E696EE28]])
  {
    v3 = [self code] == -2;
  }

  MEMORY[0x1E69E5920](domain);
  return v3;
}

- (BOOL)ak_isServerThrottlingError
{
  v2 = 0;
  if ([self ak_isAuthenticationError])
  {
    return [self code] == -7120;
  }

  return v2;
}

- (uint64_t)ak_isEligibleForProxiedAuthFallback
{
  v9 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v6 = a2;
  ak_isUnableToPromptError = [self ak_isUnableToPromptError];
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (ak_isUnableToPromptError)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    __os_log_helper_16_2_2_8_64_8_64(v8, v2, selfCopy);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Proxied auth fallback eligibility: %@, %@", v8, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  *MEMORY[0x1E69E9840];
  return ak_isUnableToPromptError & 1;
}

- (id)ak_allUnderlyingErrorsWithMaxDepth:()AuthKit
{
  selfCopy = self;
  v13 = a2;
  v12 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v10 = 0;
  location = MEMORY[0x1E69E5928](selfCopy);
  while (1)
  {
    v8 = 0;
    if (location)
    {
      v8 = v10 < v12;
    }

    if (!v8)
    {
      break;
    }

    [array addObject:location];
    ++v10;
    userInfo = [location userInfo];
    v3 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    v4 = location;
    location = v3;
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](userInfo);
  }

  v6 = [array copy];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&array, 0);

  return v6;
}

- (id)ak_errorsHeaderStringWithMessage
{
  v12[2] = self;
  v12[1] = a2;
  v12[0] = [self ak_allUnderlyingErrors];
  location = [MEMORY[0x1E695DF70] array];
  v4 = v12[0];
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __52__NSError_AuthKit__ak_errorsHeaderStringWithMessage__block_invoke;
  v9 = &unk_1E73D6368;
  v10 = MEMORY[0x1E69E5928](location);
  [v4 enumerateObjectsUsingBlock:&v5];
  if ([location count])
  {
    v13 = [location componentsJoinedByString:@"|"];
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v12, 0);
  v2 = v13;

  return v2;
}

- (id)errorDescriptionIncludingUnderlyingErrorsWithMaxDepth:()AuthKit
{
  v14[3] = self;
  v14[2] = a2;
  v14[1] = a3;
  v14[0] = [self ak_allUnderlyingErrorsWithMaxDepth:a3];
  if ([v14[0] count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = v14[0];
    v6 = MEMORY[0x1E69E9820];
    v7 = -1073741824;
    v8 = 0;
    v9 = __74__NSError_AuthKit__errorDescriptionIncludingUnderlyingErrorsWithMaxDepth___block_invoke;
    v10 = &unk_1E73D6368;
    v11 = MEMORY[0x1E69E5928](array);
    [v5 enumerateObjectsUsingBlock:&v6];
    v15 = [array componentsJoinedByString:{@", "}];
    v13 = 1;
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&array, 0);
  }

  else
  {
    v15 = 0;
    v13 = 1;
  }

  objc_storeStrong(v14, 0);
  v3 = v15;

  return v3;
}

- (uint64_t)isAccountNotProvisioned
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v13 = a2;
  v9 = 1;
  if ([self code] != -45061)
  {
    v9 = [selfCopy code] == -45059;
  }

  v12 = v9;
  memset(__b, 0, sizeof(__b));
  obj = [selfCopy underlyingErrors];
  v8 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v5);
      if ([v11 code] == -45061 || objc_msgSend(v11, "code") == -45059)
      {
        v12 = 1;
      }

      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](obj);
  *MEMORY[0x1E69E9840];
  return v12 & 1;
}

- (BOOL)ak_isAppleIDSetupErrorWithCode:()AuthKit
{
  domain = [self domain];
  v5 = 0;
  if ([domain isEqualToString:@"AppleIDSetupErrorDomain"])
  {
    v5 = [self code] == a3;
  }

  MEMORY[0x1E69E5920](domain);
  return v5;
}

- (uint64_t)ak_isAppleIDSetupCancelError
{
  v2 = 1;
  if (([self ak_isAppleIDSetupErrorWithCode:1001] & 1) == 0)
  {
    v2 = [self ak_isAppleIDSetupErrorWithCode:1002];
  }

  return v2 & 1;
}

@end