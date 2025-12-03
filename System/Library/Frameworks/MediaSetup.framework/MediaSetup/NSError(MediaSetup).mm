@interface NSError(MediaSetup)
- (id)translateCKErrorToMSError;
- (uint64_t)CKErrorHasErrorCode:()MediaSetup;
- (uint64_t)CKErrorHasUnderlyingErrorCode:()MediaSetup;
- (uint64_t)isErrorFatal;
@end

@implementation NSError(MediaSetup)

- (id)translateCKErrorToMSError
{
  v45[1] = *MEMORY[0x277D85DE8];
  if (!self)
  {
    goto LABEL_21;
  }

  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if ((v3 & 1) == 0)
  {
    goto LABEL_21;
  }

  code = [self code];
  if (code > 20)
  {
    if (code <= 109)
    {
      if (code == 21)
      {
        v21 = MEMORY[0x277CCA9B8];
        v32 = @"MSUserInfoErrorStringKey";
        v33 = @"CloudKit Change Token Expired";
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v7 = v21;
        v8 = 7;
        goto LABEL_27;
      }

      if (code == 23)
      {
        goto LABEL_16;
      }
    }

    else
    {
      switch(code)
      {
        case 'n':
          v25 = MEMORY[0x277CCA9B8];
          v38 = @"MSUserInfoErrorStringKey";
          v39 = @"CloudKit Manatee Unavailable";
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v7 = v25;
          v8 = 4;
          goto LABEL_27;
        case 'o':
          v22 = MEMORY[0x277CCA9B8];
          v28 = @"MSUserInfoErrorStringKey";
          v29 = @"CloudKit Unsynched Keychain error, Please try again after a while";
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          v7 = v22;
          v8 = 9;
          goto LABEL_27;
        case 'p':
          v9 = MEMORY[0x277CCA9B8];
          v36 = @"MSUserInfoErrorStringKey";
          v37 = @"CloudKit Manatee Missing Identity";
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v7 = v9;
          v8 = 5;
          goto LABEL_27;
      }
    }

LABEL_21:
    selfCopy = self;
    goto LABEL_28;
  }

  if (code <= 5)
  {
    if (code == 1)
    {
      v23 = MEMORY[0x277CCA9B8];
      v30 = @"MSUserInfoErrorStringKey";
      v31 = @"Cannot recover from CKInternalError, Please file a radar";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v7 = v23;
      v8 = 8;
      goto LABEL_27;
    }

    if (code == 2)
    {
      userInfo = [self userInfo];
      v13 = [userInfo objectForKey:*MEMORY[0x277CBBFB0]];

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"CloudKit Partial Failure Error for %lu records", objc_msgSend(v13, "count")];
      v19 = MEMORY[0x277CCA9B8];
      v42 = @"MSUserInfoErrorStringKey";
      v43 = v18;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      selfCopy = [v19 errorWithDomain:@"com.apple.mediasetup.cloudkit.errorDomain" code:2 userInfo:v20];

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if ((code - 6) < 2)
  {
LABEL_16:
    v10 = MEMORY[0x277CCACA8];
    userInfo2 = [self userInfo];
    v12 = [userInfo2 objectForKey:*MEMORY[0x277CBBF68]];
    v13 = [v10 stringWithFormat:@"CloudKit Throttled Error: Retry after - %@", v12];

    v14 = MEMORY[0x277CCA9B8];
    v34 = @"MSUserInfoErrorStringKey";
    v35 = v13;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    selfCopy = [v14 errorWithDomain:@"com.apple.mediasetup.cloudkit.errorDomain" code:6 userInfo:v15];

LABEL_20:
    goto LABEL_28;
  }

  if (code == 11)
  {
    v24 = MEMORY[0x277CCA9B8];
    v44 = @"MSUserInfoErrorStringKey";
    v45[0] = @"CloudKit Unknown Item";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v7 = v24;
    v8 = 1;
    goto LABEL_27;
  }

  if (code != 14)
  {
    goto LABEL_21;
  }

  v5 = MEMORY[0x277CCA9B8];
  v40 = @"MSUserInfoErrorStringKey";
  v41 = @"CloudKit Server Record Changed";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v7 = v5;
  v8 = 3;
LABEL_27:
  selfCopy = [v7 errorWithDomain:@"com.apple.mediasetup.cloudkit.errorDomain" code:v8 userInfo:v6];

LABEL_28:
  v26 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (uint64_t)CKErrorHasErrorCode:()MediaSetup
{
  if (CKErrorIsCode())
  {

    return [self CKErrorHasUnderlyingErrorCode:a3];
  }

  else
  {
    domain = [self domain];
    if ([domain isEqualToString:*MEMORY[0x277CBBF50]])
    {
      code = [self code];

      if (code == a3)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }
}

- (uint64_t)CKErrorHasUnderlyingErrorCode:()MediaSetup
{
  v24 = *MEMORY[0x277D85DE8];
  if (self && CKErrorIsCode())
  {
    userInfo = [self userInfo];
    v6 = [userInfo objectForKey:*MEMORY[0x277CBBFB0]];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    allValues = [v6 allValues];
    v8 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      v11 = *MEMORY[0x277CBBF50];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          domain = [v13 domain];
          if ([domain isEqualToString:v11])
          {
            code = [v13 code];

            if (code == a3)
            {
              v16 = 1;
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        v9 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v16 = 0;
LABEL_16:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (uint64_t)isErrorFatal
{
  domain = [self domain];
  v3 = [domain isEqualToString:@"com.apple.mediasetup.cloudkit.errorDomain"];

  if (v3 && [self code] == 10)
  {
    return 1;
  }

  domain2 = [self domain];
  v5 = [domain2 isEqualToString:*MEMORY[0x277CCA050]];

  if (v5)
  {
    v6 = [self code] - 4097;
    if (v6 <= 4 && ((1 << v6) & 0x15) != 0)
    {
      return 1;
    }
  }

  domain3 = [self domain];
  v9 = [domain3 isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v9)
  {
    return 0;
  }

  code = [self code];
  result = 1;
  if ((code > 0x17 || ((1 << code) & 0x80C0C0) == 0) && code - 110 >= 3)
  {
    return 0;
  }

  return result;
}

@end