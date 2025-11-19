@interface AXPasscodeAccessor
- (AXPasscodeAccessor)initWithServiceName:(id)a3 accountName:(id)a4 groupName:(id)a5 logFacility:(id)a6;
- (BOOL)attemptToSetPasscode:(id)a3;
- (NSString)passcode;
- (__CFDictionary)_newQuery;
@end

@implementation AXPasscodeAccessor

- (AXPasscodeAccessor)initWithServiceName:(id)a3 accountName:(id)a4 groupName:(id)a5 logFacility:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = AXPasscodeAccessor;
  v15 = [(AXPasscodeAccessor *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_serviceName, a3);
    objc_storeStrong(&v16->_accountName, a4);
    objc_storeStrong(&v16->_groupName, a5);
    objc_storeStrong(&v16->_logFacility, a6);
  }

  return v16;
}

- (NSString)passcode
{
  v2 = [(AXPasscodeAccessor *)self _newQuery];
  if (v2)
  {
    v3 = v2;
    CFDictionaryAddValue(v2, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
    result = 0;
    v4 = &stru_1EFE6D570;
    if (!SecItemCopyMatching(v3, &result) && result)
    {
      v5 = objc_alloc(MEMORY[0x1E696AEC0]);
      v4 = [v5 initWithData:result encoding:4];
      CFRelease(result);
    }

    CFRelease(v3);
  }

  else
  {
    v4 = &stru_1EFE6D570;
  }

  return v4;
}

- (BOOL)attemptToSetPasscode:(id)a3
{
  v4 = a3;
  v5 = [(AXPasscodeAccessor *)self _newQuery];
  if (v5)
  {
    if ([v4 length] && (objc_msgSend(v4, "dataUsingEncoding:", 4), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = [(AXPasscodeAccessor *)self passcode];
      if ([v8 length])
      {
        if (([v8 isEqualToString:v4] & 1) != 0 || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0)) == 0)
        {
          v11 = 0;
        }

        else
        {
          v10 = Mutable;
          CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3C0], v7);
          v11 = SecItemUpdate(v5, v10);
          CFRelease(v10);
        }
      }

      else
      {
        CFDictionaryAddValue(v5, *MEMORY[0x1E697B3C0], v7);
        v11 = SecItemAdd(v5, 0);
      }

      v12 = 0;
    }

    else
    {
      v11 = SecItemDelete(v5);
      v12 = 1;
    }

    CFRelease(v5);
    if (v11 == -25300)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v11)
    {
      LOBYTE(v5) = v13;
    }

    else
    {
      LOBYTE(v5) = 1;
    }

    if ((v5 & 1) == 0)
    {
      v14 = [(AXPasscodeAccessor *)self logFacility];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [(AXPasscodeAccessor *)v12 attemptToSetPasscode:v11, v14];
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (__CFDictionary)_newQuery
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  v4 = Mutable;
  if (Mutable)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(v4, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697ABF0]);
    v5 = *MEMORY[0x1E697AE88];
    v6 = [(AXPasscodeAccessor *)self serviceName];
    CFDictionaryAddValue(v4, v5, v6);

    v7 = *MEMORY[0x1E697AC30];
    v8 = [(AXPasscodeAccessor *)self accountName];
    CFDictionaryAddValue(v4, v7, v8);

    v9 = *MEMORY[0x1E697ABD0];
    v10 = [(AXPasscodeAccessor *)self groupName];
    CFDictionaryAddValue(v4, v9, v10);
  }

  return v4;
}

- (void)attemptToSetPasscode:(os_log_t)log .cold.1(char a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = @"save";
  if (a1)
  {
    v3 = @"delete";
  }

  v4 = 138543618;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_fault_impl(&dword_18B15E000, log, OS_LOG_TYPE_FAULT, "Could not %{public}@ passcode. Error code: %ld", &v4, 0x16u);
}

@end