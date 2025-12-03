@interface NSError(AppleAccount)
+ (id)aa_errorWithCode:()AppleAccount underlyingError:;
+ (id)aa_errorWithServerResponse:()AppleAccount;
- (BOOL)aa_isAACustodianRecoveryErrorWithCode:()AppleAccount;
- (BOOL)aa_isAAErrorWithCode:()AppleAccount;
- (BOOL)aa_isAASignInErrorWithCode:()AppleAccount;
- (id)_aa_userReadableError;
- (id)aa_partialErrorsByName;
- (uint64_t)aa_isAACustodianRecoveryError;
- (uint64_t)aa_isAARecoverableError;
- (uint64_t)aa_isXPCError;
@end

@implementation NSError(AppleAccount)

+ (id)aa_errorWithCode:()AppleAccount underlyingError:
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v12 = *MEMORY[0x1E696AA08];
    v13[0] = a4;
    v6 = MEMORY[0x1E695DF20];
    v7 = a4;
    v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [self aa_errorWithCode:a3 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)aa_errorWithServerResponse:()AppleAccount
{
  v5 = a3;
  if (!v5)
  {
    [(NSError(AppleAccount) *)a2 aa_errorWithServerResponse:self];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_opt_class();
  v7 = [v5 objectForKeyedSubscript:@"localizedError"];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:@"AAServerDescription"];
  }

  objc_opt_class();
  v9 = [v5 objectForKeyedSubscript:@"protocolVersion"];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"AAServerProtocolVersion"];
  }

  objc_opt_class();
  v11 = [v5 objectForKeyedSubscript:@"message"];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  v13 = MEMORY[0x1E696ABC0];
  v14 = [v6 copy];
  v15 = [v13 aa_errorWithCode:-4402 userInfo:v14];

  return v15;
}

- (id)_aa_userReadableError
{
  selfCopy = self;
  domain = [selfCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E695AD78]])
  {
  }

  else
  {
    domain2 = [selfCopy domain];
    v4 = [domain2 isEqualToString:*MEMORY[0x1E696A978]];

    if (!v4)
    {
      goto LABEL_20;
    }
  }

  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v6 = [v5 localizedStringForKey:@"NETWORK_ERROR_GENERIC" value:0 table:@"Localizable"];

  code = [selfCopy code];
  if (code <= -1002)
  {
    if (code == -1012)
    {
      v8 = @"INVALID_PASSWORD";
      goto LABEL_18;
    }

    if (code != -1009 && code != -1005)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (code > 306)
    {
      v8 = @"NETWORK_ERROR_PROXY";
      if (code != 307 && code != 310)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (code == -1001)
    {
      v8 = @"NETWORK_ERROR_TIMEOUT";
      goto LABEL_18;
    }

    if (code != 302)
    {
      goto LABEL_19;
    }
  }

  v8 = @"NETWORK_ERROR_NOT_CONNECTED";
LABEL_18:
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v10 = [v9 localizedStringForKey:v8 value:0 table:@"Localizable"];

  v6 = v10;
LABEL_19:
  userInfo = [selfCopy userInfo];
  v12 = [userInfo mutableCopy];

  [v12 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A578]];
  v13 = MEMORY[0x1E696ABC0];
  domain3 = [selfCopy domain];
  v15 = [v13 errorWithDomain:domain3 code:objc_msgSend(selfCopy userInfo:{"code"), v12}];

  selfCopy = v15;
LABEL_20:

  return selfCopy;
}

- (BOOL)aa_isAAErrorWithCode:()AppleAccount
{
  domain = [self domain];
  if ([domain isEqualToString:@"com.apple.AppleAccount.Error"])
  {
    v6 = [self code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)aa_isAASignInErrorWithCode:()AppleAccount
{
  domain = [self domain];
  if ([domain isEqualToString:@"AASignInErrors"])
  {
    v6 = [self code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)aa_isAACustodianRecoveryError
{
  domain = [self domain];
  v2 = [domain isEqualToString:@"AACustodianRecoveryErrors"];

  return v2;
}

- (BOOL)aa_isAACustodianRecoveryErrorWithCode:()AppleAccount
{
  domain = [self domain];
  if ([domain isEqualToString:@"AACustodianRecoveryErrors"])
  {
    v6 = [self code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)aa_isAARecoverableError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A978]])
  {
    if ([self code] == -997 || objc_msgSend(self, "code") == -1005 || objc_msgSend(self, "code") == -1001)
    {
      goto LABEL_10;
    }

    code = [self code];

    if (code == -1009)
    {
      return 1;
    }
  }

  else
  {
  }

  domain = [self domain];
  if ([domain isEqualToString:@"com.apple.appleaccount"])
  {
    if ([self code] == 500)
    {
LABEL_10:

      return 1;
    }

    code2 = [self code];

    if (code2 == 400)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (uint64_t)aa_isXPCError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    code = [self code];

    if (code == 4097)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (id)aa_partialErrorsByName
{
  if ([self aa_isAAErrorWithCode:-4408])
  {
    objc_opt_class();
    userInfo = [self userInfo];
    v3 = [userInfo objectForKeyedSubscript:@"AAPartialErrorsByNameKey"];
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)aa_errorWithServerResponse:()AppleAccount .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSError+AppleAccount.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"serverResponse"}];
}

@end