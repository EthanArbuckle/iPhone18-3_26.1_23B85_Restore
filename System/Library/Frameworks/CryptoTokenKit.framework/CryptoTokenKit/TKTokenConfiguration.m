@interface TKTokenConfiguration
+ (BOOL)_hasSeparateKeysAndCertificatesObjectIDSpace;
+ (NSXPCInterface)interfaceForChangeProtocol;
+ (NSXPCInterface)interfaceForProtocol;
+ (void)set_hasSeparateKeysAndCertificatesObjectIDSpace:(BOOL)a3;
- (NSArray)keychainItems;
- (NSData)configurationData;
- (TKTokenConfiguration)initWithTokenID:(id)a3 configurationConnection:(id)a4;
- (TKTokenKeychainCertificate)certificateForObjectID:(TKTokenObjectID)objectID error:(NSError *)error;
- (TKTokenKeychainKey)keyForObjectID:(TKTokenObjectID)objectID error:(NSError *)error;
- (id)beginTransaction;
- (void)setConfigurationData:(NSData *)configurationData;
- (void)setKeychainItems:(NSArray *)keychainItems;
- (void)tokenConfigurationChanged:(id)a3;
@end

@implementation TKTokenConfiguration

+ (NSXPCInterface)interfaceForProtocol
{
  if (interfaceForProtocol_onceToken != -1)
  {
    +[TKTokenConfiguration interfaceForProtocol];
  }

  v3 = interfaceForProtocol_interface;

  return v3;
}

void __44__TKTokenConfiguration_interfaceForProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A900B0];
  v1 = interfaceForProtocol_interface;
  interfaceForProtocol_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [interfaceForProtocol_interface setClasses:v4 forSelector:sel_getTokenIDsForClassID_reply_ argumentIndex:0 ofReply:1];
}

+ (NSXPCInterface)interfaceForChangeProtocol
{
  if (interfaceForChangeProtocol_onceToken != -1)
  {
    +[TKTokenConfiguration interfaceForChangeProtocol];
  }

  v3 = interfaceForChangeProtocol_interface;

  return v3;
}

void __50__TKTokenConfiguration_interfaceForChangeProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A89850];
  v1 = interfaceForChangeProtocol_interface;
  interfaceForChangeProtocol_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [interfaceForChangeProtocol_interface setClasses:v4 forSelector:sel_tokenConfigurationChanged_ argumentIndex:0 ofReply:0];
}

- (TKTokenConfiguration)initWithTokenID:(id)a3 configurationConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TKTokenConfiguration;
  v9 = [(TKTokenConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configurationConnection, a4);
    [v8 registerForConfigurationChange:v10];
    objc_storeStrong(&v10->_tokenID, a3);
  }

  return v10;
}

- (void)tokenConfigurationChanged:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(TKTokenID *)self->_tokenID isEqual:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = self;
          objc_sync_enter(v9);
          keychainItems = v9->_keychainItems;
          v9->_keychainItems = 0;

          objc_sync_exit(v9);
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
}

- (id)beginTransaction
{
  v3 = [(TKTokenConfigurationConnection *)self->_configurationConnection configurationProtocol];
  [v3 beginTransactionWithReply:&__block_literal_global_130];

  v4 = [[TKTokenConfigurationTransaction alloc] initWithConfigurationConnection:self->_configurationConnection];

  return v4;
}

- (NSData)configurationData
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  v3 = [(TKTokenConfigurationConnection *)self->_configurationConnection configurationProtocol];
  v4 = [(TKTokenConfiguration *)self tokenID];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__TKTokenConfiguration_configurationData__block_invoke;
  v7[3] = &unk_1E86B7570;
  v7[4] = &v8;
  [v3 readDataForTokenID:v4 reply:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setConfigurationData:(NSData *)configurationData
{
  configurationConnection = self->_configurationConnection;
  v5 = configurationData;
  v7 = [(TKTokenConfigurationConnection *)configurationConnection configurationProtocol];
  v6 = [(TKTokenConfiguration *)self tokenID];
  [v7 updateTokenID:v6 data:v5 reply:&__block_literal_global_134];
}

- (NSArray)keychainItems
{
  v2 = self;
  objc_sync_enter(v2);
  keychainItems = v2->_keychainItems;
  if (!keychainItems)
  {
    v4 = [MEMORY[0x1E695E0F0] mutableCopy];
    v5 = [(TKTokenConfigurationConnection *)v2->_configurationConnection configurationProtocol];
    v6 = [(TKTokenConfiguration *)v2 tokenID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__TKTokenConfiguration_keychainItems__block_invoke;
    v12[3] = &unk_1E86B7598;
    v7 = v4;
    v13 = v7;
    [v5 getKeychainItemsForTokenID:v6 reply:v12];

    v8 = [v7 copy];
    v9 = v2->_keychainItems;
    v2->_keychainItems = v8;

    keychainItems = v2->_keychainItems;
  }

  v10 = keychainItems;
  objc_sync_exit(v2);

  return v10;
}

void __37__TKTokenConfiguration_keychainItems__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [TKTokenKeychainItem keychainItemWithInfo:*(*(&v10 + 1) + 8 * v7)];
        if (v8)
        {
          [*(a1 + 32) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_hasSeparateKeysAndCertificatesObjectIDSpace
{
  if (_hasSeparateKeysAndCertificatesObjectIDSpaceIsSet == 1)
  {
    v2 = _hasSeparateKeysAndCertificatesObjectIDSpace;
  }

  else
  {
    v2 = 1;
    _hasSeparateKeysAndCertificatesObjectIDSpace = 1;
    _hasSeparateKeysAndCertificatesObjectIDSpaceIsSet = 1;
  }

  return v2 & 1;
}

+ (void)set_hasSeparateKeysAndCertificatesObjectIDSpace:(BOOL)a3
{
  _hasSeparateKeysAndCertificatesObjectIDSpace = a3;
  _hasSeparateKeysAndCertificatesObjectIDSpaceIsSet = 1;
  _hasSeparateKeysAndCertificatesObjectIDSpaceIsSetExternally = 1;
}

- (void)setKeychainItems:(NSArray *)keychainItems
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = keychainItems;
  v4 = TK_LOG_tokencfg();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(TKTokenConfiguration *)v3 setKeychainItems:v4];
  }

  if ([(NSArray *)v3 count])
  {
    v5 = 0;
    v6 = *MEMORY[0x1E695D930];
    while (1)
    {
      v7 = [(NSArray *)v3 objectAtIndexedSubscript:v5];
      v8 = ++v5;
      if (v5 < [(NSArray *)v3 count])
      {
        break;
      }

LABEL_23:

      if (v5 >= [(NSArray *)v3 count])
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      v9 = [(NSArray *)v3 objectAtIndexedSubscript:v8];
      v10 = [v7 objectID];
      v11 = [v9 objectID];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v13 = @"Detected duplicate objectID for objects %@ and %@";
          if ((_hasSeparateKeysAndCertificatesObjectIDSpaceIsSetExternally & 1) == 0)
          {
            v14 = TK_LOG_tokencfg();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543618;
              v38 = v7;
              v39 = 2114;
              v40 = v9;
              v15 = v14;
              v16 = "Detected duplicate objectID for objects %{public}@ and %{public}@";
              goto LABEL_22;
            }

            goto LABEL_17;
          }

          goto LABEL_18;
        }

        if (([objc_opt_class() _hasSeparateKeysAndCertificatesObjectIDSpace] & 1) == 0)
        {
          v13 = @"Detected duplicate objectID for key %@ and certificate %@. This is allowed only for token extensions built for macOS 10.16 or newer. Either change build options to target newer OS version or avoid sharing same objectID for key and certificate.";
          if ((_hasSeparateKeysAndCertificatesObjectIDSpaceIsSetExternally & 1) == 0)
          {
            v14 = TK_LOG_tokencfg();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543618;
              v38 = v7;
              v39 = 2114;
              v40 = v9;
              v15 = v14;
              v16 = "Detected duplicate objectID for key %{public}@ and certificate %{public}@. This is allowed only for token extensions built for macOS 10.16 or newer. Either change build options to target newer OS version or avoid sharing same objectID for key and certificate.";
LABEL_22:
              _os_log_fault_impl(&dword_1DF413000, v15, OS_LOG_TYPE_FAULT, v16, buf, 0x16u);
            }

LABEL_17:
          }

LABEL_18:
          [MEMORY[0x1E695DF30] raise:v6 format:{v13, v7, v9}];
        }
      }

      if (++v8 >= [(NSArray *)v3 count])
      {
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  v17 = self;
  objc_sync_enter(v17);
  v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v3, "count")}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v3;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v20)
  {
    v21 = *v33;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v32 + 1) + 8 * i);
        v24 = [(TKTokenConfiguration *)v17 tokenID];
        [v23 setTokenID:v24];

        v25 = [v23 keychainAttributes];
        [v18 addObject:v25];
      }

      v20 = [(NSArray *)v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v20);
  }

  v26 = [(TKTokenConfigurationConnection *)v17->_configurationConnection configurationProtocol];
  v27 = [(TKTokenConfiguration *)v17 tokenID];
  [v26 updateKeychainItemsForTokenID:v27 items:v18 reply:&__block_literal_global_148];

  v28 = [(NSArray *)v19 copy];
  v29 = v17->_keychainItems;
  v17->_keychainItems = v28;

  objc_sync_exit(v17);
  v30 = *MEMORY[0x1E69E9840];
}

- (TKTokenKeychainKey)keyForObjectID:(TKTokenObjectID)objectID error:(NSError *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = objectID;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(TKTokenConfiguration *)self keychainItems];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 objectID];
          v13 = [v12 isEqual:v5];

          if (v13)
          {
            v15 = v11;

            goto LABEL_16;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = TK_LOG_tokencfg();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [TKTokenConfiguration keyForObjectID:v5 error:self];
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:MEMORY[0x1E695E0F8]];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (TKTokenKeychainCertificate)certificateForObjectID:(TKTokenObjectID)objectID error:(NSError *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = objectID;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(TKTokenConfiguration *)self keychainItems];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 objectID];
          v13 = [v12 isEqual:v5];

          if (v13)
          {
            v15 = v11;

            goto LABEL_16;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = TK_LOG_tokencfg();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [TKTokenConfiguration certificateForObjectID:v5 error:self];
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:MEMORY[0x1E695E0F8]];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setKeychainItems:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1DF413000, a2, OS_LOG_TYPE_DEBUG, "Configuration got items: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)keyForObjectID:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a2 tokenID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1DF413000, v3, v4, "Cannot find requested key %{public}@ on token %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)certificateForObjectID:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a2 tokenID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1DF413000, v3, v4, "Cannot find requested certificate %{public}@ on token %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

@end