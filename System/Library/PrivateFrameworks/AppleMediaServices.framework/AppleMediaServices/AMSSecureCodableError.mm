@interface AMSSecureCodableError
- (BOOL)_secureCodingSupportedByObject:(id)object;
- (id)_secureCodableUserInfoDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSSecureCodableError

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696ABC0];
  coderCopy = coder;
  domain = [(AMSSecureCodableError *)self domain];
  code = [(AMSSecureCodableError *)self code];
  _secureCodableUserInfoDictionary = [(AMSSecureCodableError *)self _secureCodableUserInfoDictionary];
  v9 = [v4 errorWithDomain:domain code:code userInfo:_secureCodableUserInfoDictionary];

  [v9 encodeWithCoder:coderCopy];
}

- (id)_secureCodableUserInfoDictionary
{
  v18[4] = *MEMORY[0x1E69E9840];
  userInfo = [(AMSSecureCodableError *)self userInfo];

  if (userInfo)
  {
    v4 = MEMORY[0x1E695DFD8];
    v18[0] = @"NSErrorPeerCertificateChainKey";
    v18[1] = @"NSErrorClientCertificateChainKey";
    v5 = *MEMORY[0x1E696AA08];
    v18[2] = *MEMORY[0x1E696A988];
    v18[3] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
    v7 = [v4 setWithArray:v6];

    v8 = objc_opt_new();
    userInfo2 = [(AMSSecureCodableError *)self userInfo];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__AMSSecureCodableError__secureCodableUserInfoDictionary__block_invoke;
    v14[3] = &unk_1E73BBC48;
    v15 = v7;
    v10 = v8;
    v16 = v10;
    selfCopy = self;
    v11 = v7;
    [userInfo2 enumerateKeysAndObjectsUsingBlock:v14];

    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __57__AMSSecureCodableError__secureCodableUserInfoDictionary__block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([a1[4] containsObject:v5] & 1) == 0)
  {
    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;

      if (v8)
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __57__AMSSecureCodableError__secureCodableUserInfoDictionary__block_invoke_2;
        v17[3] = &unk_1E73B42A8;
        v17[4] = a1[6];
        v9 = [v8 ams_filterUsingTest:v17];
        [a1[5] setObject:v9 forKeyedSubscript:v5];

LABEL_18:
        goto LABEL_19;
      }
    }

    else
    {
    }

    v10 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;

      if (v11)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __57__AMSSecureCodableError__secureCodableUserInfoDictionary__block_invoke_3;
        v16[3] = &unk_1E73B7268;
        v16[4] = a1[6];
        v12 = v16;
LABEL_13:
        v14 = [v11 ams_filterUsingTest:v12];
        [a1[5] setObject:v14 forKeyedSubscript:v5];

LABEL_17:
        v8 = 0;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v13 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v13;

      if (v11)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __57__AMSSecureCodableError__secureCodableUserInfoDictionary__block_invoke_4;
        v15[3] = &unk_1E73B42A8;
        v15[4] = a1[6];
        v12 = v15;
        goto LABEL_13;
      }
    }

    else
    {
    }

    if ([a1[6] _secureCodingSupportedByObject:v13])
    {
      [a1[5] setObject:v13 forKeyedSubscript:v5];
    }

    goto LABEL_17;
  }

LABEL_19:
}

- (BOOL)_secureCodingSupportedByObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_opt_class() supportsSecureCoding])
  {
    v4 = [objectCopy conformsToProtocol:&unk_1F077B6E8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end