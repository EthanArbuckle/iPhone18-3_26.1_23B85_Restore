@interface SOConfiguration
+ (id)stringWithHandleResult:(int64_t)a3;
- (BOOL)_matchHost:(id)a3 inCredentialProfile:(id)a4;
- (BOOL)willHandleURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5;
- (SOConfiguration)initWithCoder:(id)a3;
- (SOConfiguration)initWithProfiles:(id)a3;
- (id)_profileForURLWithHostScheme:(id)a3;
- (id)_profileForURLWithRealmScheme:(id)a3;
- (id)_profileForURLWithSSOIDScheme:(id)a3;
- (id)_profileForURLWithStandardScheme:(id)a3 isCredential:(BOOL)a4;
- (id)profileForURL:(id)a3 responseCode:(int64_t)a4;
- (id)realms;
- (int64_t)willHandleURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5 profile:(id *)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SOConfiguration

- (SOConfiguration)initWithProfiles:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SO_LOG_SOConfiguration();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[SOConfiguration initWithProfiles:]";
    v24 = 2112;
    v25 = self;
    _os_log_impl(&dword_1CA238000, v6, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v20.receiver = self;
  v20.super_class = SOConfiguration;
  v7 = [(SOConfiguration *)&v20 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_profiles, a3);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v8->_profiles;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v16 + 1) + 8 * v13++) preLoadURLData];
        }

        while (v11 != v13);
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)willHandleURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5
{
  v8 = a3;
  v21 = 0;
  v9 = [(SOConfiguration *)self willHandleURL:v8 responseCode:a4 callerBundleIdentifier:a5 profile:&v21];
  v10 = v21;
  v11 = v10;
  if (v9)
  {
    v12 = 0;
    goto LABEL_13;
  }

  if ([v10 type] != 2)
  {
    goto LABEL_12;
  }

  v12 = 1;
  if (a4 != 401 && a4 != 407)
  {
    v13 = [v8 scheme];
    v14 = [v13 lowercaseString];
    if ([v14 isEqualToString:@"host"])
    {
LABEL_9:

      v12 = 1;
LABEL_10:

      goto LABEL_13;
    }

    v15 = [v8 scheme];
    v16 = [v15 lowercaseString];
    if ([v16 isEqualToString:@"realm"])
    {

      goto LABEL_9;
    }

    v17 = [v8 scheme];
    v18 = [v17 lowercaseString];
    v19 = [v18 isEqualToString:@"ssoid"];

    if ((v19 & 1) == 0)
    {
      v13 = SO_LOG_SOConfiguration();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SOConfiguration willHandleURL:a4 responseCode:v13 callerBundleIdentifier:?];
      }

      v12 = 0;
      goto LABEL_10;
    }

LABEL_12:
    v12 = 1;
  }

LABEL_13:

  return v12;
}

- (int64_t)willHandleURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5 profile:(id *)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = [(SOConfiguration *)self profileForURL:a3 responseCode:a4];
  v12 = v11;
  if (!v11)
  {
    v16 = 1;
    goto LABEL_17;
  }

  if (!v10)
  {
    goto LABEL_14;
  }

  v13 = [v11 extensionBundleIdentifier];
  if ([v13 isEqualToString:v10])
  {
    v14 = [v12 type];

    if (v14 != 2)
    {
      v15 = SO_LOG_SOConfiguration();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v23 = 138543362;
        v24 = v10;
        _os_log_impl(&dword_1CA238000, v15, OS_LOG_TYPE_INFO, "breaking calling recursion for caller with bundleIdentifier: %{public}@", &v23, 0xCu);
      }

      v16 = 2;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v17 = [v12 deniedBundleIdentifiers];
  v18 = [v17 containsObject:v10];

  if (!v18)
  {
LABEL_14:
    if (a6)
    {
      v20 = v12;
      v16 = 0;
      *a6 = v12;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_17;
  }

  v19 = SO_LOG_SOConfiguration();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v23 = 138543362;
    v24 = v10;
    _os_log_impl(&dword_1CA238000, v19, OS_LOG_TYPE_INFO, "denied caller with bundleIdentifier: %{public}@", &v23, 0xCu);
  }

  v16 = 3;
LABEL_17:

  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)profileForURL:(id)a3 responseCode:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 scheme];
  v8 = [v7 isEqualToString:@"ssoid"];

  if (v8)
  {
    v9 = [(SOConfiguration *)self _profileForURLWithSSOIDScheme:v6];
  }

  else
  {
    v10 = [v6 scheme];
    v11 = [v10 isEqualToString:@"host"];

    if (v11)
    {
      v9 = [(SOConfiguration *)self _profileForURLWithHostScheme:v6];
    }

    else
    {
      v12 = [v6 scheme];
      v13 = [v12 isEqualToString:@"realm"];

      if (v13)
      {
        v9 = [(SOConfiguration *)self _profileForURLWithRealmScheme:v6];
      }

      else
      {
        v15 = a4 == 401 || a4 == 407;
        v9 = [(SOConfiguration *)self _profileForURLWithStandardScheme:v6 isCredential:v15];
      }
    }
  }

  v16 = v9;

  return v16;
}

- (id)realms
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[SOConfiguration realms]";
    v22 = 2112;
    v23 = self;
    _os_log_impl(&dword_1CA238000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v4 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_profiles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 type] == 2)
        {
          v11 = [v10 realm];

          if (v11)
          {
            v12 = [v10 realm];
            [v4 addObject:v12];
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_profileForURLWithStandardScheme:(id)a3 isCredential:(BOOL)a4
{
  v4 = a4;
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = self->_profiles;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    v34 = v7;
    v35 = v6;
    v32 = v4;
    v30 = *v41;
    v31 = self;
    while (2)
    {
      v11 = 0;
      v33 = v9;
      do
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        v13 = [v6 absoluteString];
        if ([v12 type] == 1 && !v4 && objc_msgSend(v12, "matchesURL:", v13))
        {
LABEL_32:
          v29 = v12;
LABEL_27:

          goto LABEL_29;
        }

        if ([v12 type] == 2 && v4)
        {
          v15 = [v6 host];
          v16 = [(SOConfiguration *)self _matchHost:v15 inCredentialProfile:v12];

          if (v16)
          {
            goto LABEL_32;
          }

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v17 = [v12 URLPrefix];
          v18 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v37;
            while (2)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v37 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v36 + 1) + 8 * i);
                v23 = [v13 lowercaseString];
                v24 = [v22 lowercaseString];
                v25 = [v23 hasPrefix:v24];

                if (v25)
                {
                  v26 = v12;

                  v7 = v34;
                  v6 = v35;
                  goto LABEL_27;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          v7 = v34;
          v6 = v35;
          v4 = v32;
          v10 = v30;
          self = v31;
          v9 = v33;
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
      v12 = 0;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_29:

  v27 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_profileForURLWithHostScheme:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_profiles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 type] == 2)
        {
          v11 = [v4 host];
          v12 = [(SOConfiguration *)self _matchHost:v11 inCredentialProfile:v10];

          if (v12)
          {
            v13 = v10;
            goto LABEL_12;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)_matchHost:(id)a3 inCredentialProfile:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [a4 hosts];
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 hasPrefix:@"."];
        v12 = [v5 lowercaseString];
        v13 = [v10 lowercaseString];
        if (v11)
        {
          if ([v12 hasSuffix:v13])
          {
            v14 = [v5 lowercaseString];
            v15 = [v10 lowercaseString];
            v16 = [v14 isEqualToString:v15];

            if ((v16 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        else
        {
          v17 = [v12 isEqualToString:v13];

          if (v17)
          {
LABEL_16:
            v18 = 1;
            goto LABEL_17;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_17:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)_profileForURLWithRealmScheme:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [a3 host];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_profiles;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v9 type] == 2)
        {
          v10 = [v9 realm];
          v11 = [v10 lowercaseString];
          v12 = [v4 lowercaseString];
          v13 = [v11 isEqualToString:v12];

          if (v13 & 1) != 0 || ([MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v6], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", v4), v14, (v15))
          {
            v5 = v9;
            goto LABEL_14;
          }

          v6 = (v6 + 1);
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_profileForURLWithSSOIDScheme:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_profiles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 extensionBundleIdentifier];
        v11 = [v4 host];
        v12 = [v10 isEqualToString:v11];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (SOConfiguration)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SOConfiguration;
  v5 = [(SOConfiguration *)&v24 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_profiles);
    v10 = [v4 decodeObjectOfClasses:v8 forKey:v9];
    v11 = [v10 copy];
    profiles = v5->_profiles;
    v5->_profiles = v11;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v5->_profiles;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v20 + 1) + 8 * v17++) preLoadURLData];
        }

        while (v15 != v17);
        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v15);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  profiles = self->_profiles;
  v4 = a3;
  v5 = NSStringFromSelector(sel_profiles);
  [v4 encodeObject:profiles forKey:v5];
}

+ (id)stringWithHandleResult:(int64_t)a3
{
  if (a3 >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown, code: %u", a3];
  }

  else
  {
    v4 = off_1E836D068[a3];
  }

  return v4;
}

- (void)willHandleURL:(int)a1 responseCode:(NSObject *)a2 callerBundleIdentifier:.cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1CA238000, a2, OS_LOG_TYPE_ERROR, "invalid response code %u, expected 401 or 407", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end