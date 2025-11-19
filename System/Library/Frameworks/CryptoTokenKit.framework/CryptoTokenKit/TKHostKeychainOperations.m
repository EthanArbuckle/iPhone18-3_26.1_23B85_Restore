@interface TKHostKeychainOperations
- (BOOL)updateForTokenID:(id)a3 items:(id)a4;
- (id)query:(id)a3;
@end

@implementation TKHostKeychainOperations

- (id)query:(id)a3
{
  v3 = [a3 mutableCopy];
  [v3 setObject:kSecMatchLimitAll forKeyedSubscript:kSecMatchLimit];
  if (+[TKHostKeychainOperations useSystemKeychain])
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecUseSystemKeychainAlways];
  }

  result = 0;
  v4 = SecItemCopyMatching(v3, &result);
  if (v4)
  {
    v5 = v4;
    v6 = sub_10000DFD0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10001F3B8(v3, v5, v6);
    }

    v7 = 0;
  }

  else
  {
    v7 = result;
  }

  return v7;
}

- (BOOL)updateForTokenID:(id)a3 items:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (_os_feature_enabled_impl())
  {
    v17[0] = kSecAttrAccessGroupToken;
    v17[1] = @"com.apple.identities";
    v7 = [NSArray arrayWithObjects:v17 count:2];
    if (!v7)
    {
LABEL_12:
      v11 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    v7 = &off_10003A348;
  }

  if (+[TKHostKeychainOperations useSystemKeychain])
  {
    updated = SecItemUpdateTokenItemsForSystemKeychain();
  }

  else
  {
    updated = SecItemUpdateTokenItemsForAccessGroups();
  }

  v9 = updated;
  if (!updated)
  {
    goto LABEL_12;
  }

  v10 = sub_10000DFD0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138543618;
    v14 = v5;
    v15 = 1024;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Failed to update keychain with token items of token %{public}@ - error %d", &v13, 0x12u);
  }

  v11 = 0;
LABEL_13:

  return v11;
}

@end