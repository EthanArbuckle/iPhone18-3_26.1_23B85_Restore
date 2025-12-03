@interface NSError(AppleMediaServices)
- (BOOL)ams_recursiveHasDomain:()AppleMediaServices code:;
- (id)_ams_firstUnderlyingErrorPassingTest:()AppleMediaServices;
- (id)ams_errorByAddingToMultipleUnderlyingErrors:()AppleMediaServices;
- (id)ams_errorByAddingUserInfo:()AppleMediaServices;
- (id)ams_errorWithMultipleUnderlyingErrors:()AppleMediaServices;
- (id)ams_errorWithUnderlyingError:()AppleMediaServices;
- (id)ams_message;
- (id)ams_sanitizedForSecureCoding;
- (id)ams_title;
- (id)ams_underlyingError;
- (id)ams_underlyingErrorWithDomain:()AppleMediaServices;
- (id)ams_underlyingErrorWithDomain:()AppleMediaServices code:;
- (uint64_t)ams_hasDomain:()AppleMediaServices;
- (uint64_t)ams_hasDomain:()AppleMediaServices code:;
@end

@implementation NSError(AppleMediaServices)

- (id)ams_message
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"AMSFailureReason"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)ams_title
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"AMSDescription"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)ams_underlyingError
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_ams_firstUnderlyingErrorPassingTest:()AppleMediaServices
{
  v4 = a3;
  underlyingErrors = [self underlyingErrors];
  v6 = [underlyingErrors ams_firstObjectPassingTest:v4];

  return v6;
}

- (id)ams_sanitizedForSecureCoding
{
  userInfo = [self userInfo];

  if (userInfo)
  {
    userInfo2 = [self userInfo];
    ams_sanitizedForSecureCoding = [userInfo2 ams_sanitizedForSecureCoding];

    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    domain = [self domain];
    code = [self code];
    if ([ams_sanitizedForSecureCoding count])
    {
      v8 = ams_sanitizedForSecureCoding;
    }

    else
    {
      v8 = 0;
    }

    selfCopy = [v5 initWithDomain:domain code:code userInfo:v8];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)ams_errorByAddingToMultipleUnderlyingErrors:()AppleMediaServices
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  ams_multipleUnderlyingErrors = [self ams_multipleUnderlyingErrors];

  if (ams_multipleUnderlyingErrors)
  {
    ams_multipleUnderlyingErrors2 = [self ams_multipleUnderlyingErrors];
    v7 = [ams_multipleUnderlyingErrors2 arrayByAddingObjectsFromArray:v4];

    v4 = v7;
  }

  v11 = *MEMORY[0x1E696A750];
  v12[0] = v4;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [self ams_errorByAddingUserInfo:v8];

  return v9;
}

- (id)ams_errorByAddingUserInfo:()AppleMediaServices
{
  v4 = a3;
  userInfo = [self userInfo];
  v6 = [userInfo mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v9 = v8;

  [v9 addEntriesFromDictionary:v4];
  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  domain = [self domain];
  v12 = [v10 initWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v9}];

  return v12;
}

- (id)ams_errorWithMultipleUnderlyingErrors:()AppleMediaServices
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E696A750];
  v10[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [self ams_errorByAddingUserInfo:v6];

  return v7;
}

- (id)ams_errorWithUnderlyingError:()AppleMediaServices
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E696AA08];
  v10[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [self ams_errorByAddingUserInfo:v6];

  return v7;
}

- (uint64_t)ams_hasDomain:()AppleMediaServices
{
  v4 = a3;
  domain = [self domain];
  v6 = [domain isEqualToString:v4];

  return v6;
}

- (uint64_t)ams_hasDomain:()AppleMediaServices code:
{
  v6 = a3;
  if ([self code] == a4)
  {
    domain = [self domain];
    v8 = [domain isEqualToString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)ams_recursiveHasDomain:()AppleMediaServices code:
{
  v6 = a3;
  if ([self ams_hasDomain:v6 code:a4])
  {
    v7 = 1;
  }

  else
  {
    v8 = [self ams_underlyingErrorWithDomain:v6 code:a4];
    v7 = v8 != 0;
  }

  return v7;
}

- (id)ams_underlyingErrorWithDomain:()AppleMediaServices
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__NSError_AppleMediaServices__ams_underlyingErrorWithDomain___block_invoke;
  v8[3] = &unk_1E73BE2C0;
  v9 = v4;
  v5 = v4;
  v6 = [self _ams_firstUnderlyingErrorPassingTest:v8];

  return v6;
}

- (id)ams_underlyingErrorWithDomain:()AppleMediaServices code:
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__NSError_AppleMediaServices__ams_underlyingErrorWithDomain_code___block_invoke;
  v10[3] = &unk_1E73BE2E8;
  v11 = v6;
  v12 = a4;
  v7 = v6;
  v8 = [self _ams_firstUnderlyingErrorPassingTest:v10];

  return v8;
}

@end