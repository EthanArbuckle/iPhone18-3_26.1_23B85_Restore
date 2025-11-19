@interface TKTokenKeychainContents
- (NSArray)items;
- (NSDictionary)certificates;
- (NSDictionary)keys;
- (TKTokenKeychainCertificate)certificateForObjectID:(TKTokenObjectID)objectID error:(NSError *)error;
- (TKTokenKeychainContents)initWithConfiguration:(id)a3;
- (TKTokenKeychainContents)initWithTokenID:(id)a3 error:(id *)a4;
- (TKTokenKeychainKey)keyForObjectID:(TKTokenObjectID)objectID error:(NSError *)error;
- (id)certificateForKey:(id)a3;
- (void)fillWithItems:(NSArray *)items;
@end

@implementation TKTokenKeychainContents

- (TKTokenKeychainContents)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TKTokenKeychainContents;
  v6 = [(TKTokenKeychainContents *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

- (TKTokenKeychainContents)initWithTokenID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[TKTokenID alloc] initWithTokenID:v6];

  v8 = +[TKTokenDriverConfiguration driverConfigurations];
  v9 = [(TKTokenID *)v7 classID];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 tokenConfigurations];
    v12 = [(TKTokenID *)v7 instanceID];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (!v13)
    {
      v14 = [(TKTokenID *)v7 instanceID];
      v13 = [v10 addTokenConfigurationForTokenInstanceID:v14];
    }

    self = [(TKTokenKeychainContents *)self initWithConfiguration:v13];

    v15 = self;
  }

  else
  {
    if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:MEMORY[0x1E695E0F8]];
    }

    v16 = TK_LOG_token_2();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [TKTokenKeychainContents initWithTokenID:v7 error:v16];
    }

    v15 = 0;
  }

  return v15;
}

- (void)fillWithItems:(NSArray *)items
{
  v4 = items;
  v5 = [(TKTokenKeychainContents *)self configuration];
  [v5 setKeychainItems:v4];

  v6 = self->_items;
  self->_items = v4;
}

- (NSArray)items
{
  items = self->_items;
  if (!items)
  {
    v4 = [(TKTokenKeychainContents *)self configuration];
    v5 = [v4 keychainItems];
    v6 = self->_items;
    self->_items = v5;

    items = self->_items;
  }

  return items;
}

- (NSDictionary)certificates
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E0F8] mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(TKTokenKeychainContents *)self items];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 objectID];
          [v3 setObject:v9 forKeyedSubscript:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (NSDictionary)keys
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E0F8] mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(TKTokenKeychainContents *)self items];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 objectID];
          [v3 setObject:v9 forKeyedSubscript:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (TKTokenKeychainCertificate)certificateForObjectID:(TKTokenObjectID)objectID error:(NSError *)error
{
  v6 = objectID;
  v7 = [(TKTokenKeychainContents *)self certificates];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = TK_LOG_token_2();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TKTokenKeychainContents certificateForObjectID:v6 error:self];
    }

    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:MEMORY[0x1E695E0F8]];
    }
  }

  return v8;
}

- (TKTokenKeychainKey)keyForObjectID:(TKTokenObjectID)objectID error:(NSError *)error
{
  v6 = objectID;
  v7 = [(TKTokenKeychainContents *)self keys];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = TK_LOG_token_2();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TKTokenKeychainContents keyForObjectID:v6 error:self];
    }

    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:MEMORY[0x1E695E0F8]];
    }
  }

  return v8;
}

- (id)certificateForKey:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(TKTokenKeychainContents *)self items];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v4 publicKeyHash];
          v11 = [v9 publicKeyHash];
          v12 = [v10 isEqualToData:v11];

          if (v12)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)initWithTokenID:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF413000, a2, OS_LOG_TYPE_ERROR, "Failed to get driver configuration for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)certificateForObjectID:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 tokenID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)keyForObjectID:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 tokenID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end