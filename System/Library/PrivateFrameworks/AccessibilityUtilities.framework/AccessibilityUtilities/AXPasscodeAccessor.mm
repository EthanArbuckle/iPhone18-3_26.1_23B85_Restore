@interface AXPasscodeAccessor
- (AXPasscodeAccessor)initWithServiceName:(id)name accountName:(id)accountName groupName:(id)groupName logFacility:(id)facility;
- (BOOL)attemptToSetPasscode:(id)passcode;
- (NSString)passcode;
- (__CFDictionary)_newQuery;
@end

@implementation AXPasscodeAccessor

- (AXPasscodeAccessor)initWithServiceName:(id)name accountName:(id)accountName groupName:(id)groupName logFacility:(id)facility
{
  nameCopy = name;
  accountNameCopy = accountName;
  groupNameCopy = groupName;
  facilityCopy = facility;
  v18.receiver = self;
  v18.super_class = AXPasscodeAccessor;
  v15 = [(AXPasscodeAccessor *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_serviceName, name);
    objc_storeStrong(&v16->_accountName, accountName);
    objc_storeStrong(&v16->_groupName, groupName);
    objc_storeStrong(&v16->_logFacility, facility);
  }

  return v16;
}

- (NSString)passcode
{
  _newQuery = [(AXPasscodeAccessor *)self _newQuery];
  if (_newQuery)
  {
    v3 = _newQuery;
    CFDictionaryAddValue(_newQuery, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
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

- (BOOL)attemptToSetPasscode:(id)passcode
{
  passcodeCopy = passcode;
  _newQuery = [(AXPasscodeAccessor *)self _newQuery];
  if (_newQuery)
  {
    if ([passcodeCopy length] && (objc_msgSend(passcodeCopy, "dataUsingEncoding:", 4), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      passcode = [(AXPasscodeAccessor *)self passcode];
      if ([passcode length])
      {
        if (([passcode isEqualToString:passcodeCopy] & 1) != 0 || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0)) == 0)
        {
          v11 = 0;
        }

        else
        {
          v10 = Mutable;
          CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3C0], v7);
          v11 = SecItemUpdate(_newQuery, v10);
          CFRelease(v10);
        }
      }

      else
      {
        CFDictionaryAddValue(_newQuery, *MEMORY[0x1E697B3C0], v7);
        v11 = SecItemAdd(_newQuery, 0);
      }

      v12 = 0;
    }

    else
    {
      v11 = SecItemDelete(_newQuery);
      v12 = 1;
    }

    CFRelease(_newQuery);
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
      LOBYTE(_newQuery) = v13;
    }

    else
    {
      LOBYTE(_newQuery) = 1;
    }

    if ((_newQuery & 1) == 0)
    {
      logFacility = [(AXPasscodeAccessor *)self logFacility];
      if (os_log_type_enabled(logFacility, OS_LOG_TYPE_FAULT))
      {
        [(AXPasscodeAccessor *)v12 attemptToSetPasscode:v11, logFacility];
      }

      LOBYTE(_newQuery) = 0;
    }
  }

  return _newQuery;
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
    serviceName = [(AXPasscodeAccessor *)self serviceName];
    CFDictionaryAddValue(v4, v5, serviceName);

    v7 = *MEMORY[0x1E697AC30];
    accountName = [(AXPasscodeAccessor *)self accountName];
    CFDictionaryAddValue(v4, v7, accountName);

    v9 = *MEMORY[0x1E697ABD0];
    groupName = [(AXPasscodeAccessor *)self groupName];
    CFDictionaryAddValue(v4, v9, groupName);
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