@interface TKSmartCardTokenRegistrationManager
+ (TKSmartCardTokenRegistrationManager)defaultManager;
- (BOOL)registerSmartCardWithTokenID:(id)a3 promptMessage:(id)a4 error:(id *)a5;
- (BOOL)unregisterSmartCardWithTokenID:(id)a3 error:(id *)a4;
- (NSArray)registeredSmartCardTokens;
- (TKSmartCardTokenRegistrationManager)init;
@end

@implementation TKSmartCardTokenRegistrationManager

+ (TKSmartCardTokenRegistrationManager)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[TKSmartCardTokenRegistrationManager defaultManager];
  }

  v3 = defaultManager_sharedInstance;

  return v3;
}

uint64_t __53__TKSmartCardTokenRegistrationManager_defaultManager__block_invoke()
{
  defaultManager_sharedInstance = objc_alloc_init(TKSmartCardTokenRegistrationManager);

  return MEMORY[0x1EEE66BB8]();
}

- (TKSmartCardTokenRegistrationManager)init
{
  v6.receiver = self;
  v6.super_class = TKSmartCardTokenRegistrationManager;
  v2 = [(TKSmartCardTokenRegistrationManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TKSmartCardTokenRegistrationXPCClient);
    remoteObjectProxy = v2->_remoteObjectProxy;
    v2->_remoteObjectProxy = v3;
  }

  return v2;
}

- (NSArray)registeredSmartCardTokens
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(TKSmartCardTokenRegistrationXPCClient *)self->_remoteObjectProxy registeredSmartCardTokens];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) stringRepresentation];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)registerSmartCardWithTokenID:(id)a3 promptMessage:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[TKTokenID alloc] initWithTokenID:v8];
  if (v10)
  {
    if ([v9 length])
    {
      v11 = v9;
    }

    else
    {
      v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CryptoTokenKit"];
      v13 = [MEMORY[0x1E696AAE8] mainBundle];
      v14 = [v13 localizedInfoDictionary];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v17 = [MEMORY[0x1E696AAE8] mainBundle];
        v16 = [v17 infoDictionary];
      }

      v18 = [v16 objectForKeyedSubscript:@"CFBundleVisibleComponentName"];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v21 = [v16 objectForKeyedSubscript:@"CFBundleDisplayName"];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = [v16 objectForKeyedSubscript:@"CFBundleName"];
        }

        v20 = v23;
      }

      v24 = MEMORY[0x1E696AEC0];
      v25 = [v30 localizedStringForKey:@"REGISTERED_SMARTCARD_NFC_PROMPT_MESSAGE" value:@"Scan your registered smartcard for %@" table:0];
      v11 = [v24 stringWithFormat:v25, v20];
    }

    remoteObjectProxy = self->_remoteObjectProxy;
    v27 = [MEMORY[0x1E696AAE8] mainBundle];
    v28 = [v27 bundleIdentifier];
    v12 = [(TKSmartCardTokenRegistrationXPCClient *)remoteObjectProxy registerSmartCardWithTokenID:v10 promptMessage:v11 callerBundleID:v28 error:a5];

    goto LABEL_18;
  }

  if (a5)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid tokenID format: %@", v8];
    [MEMORY[0x1E696ABC0] errorWithCode:-8 debugDescription:v11];
    *a5 = v12 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (BOOL)unregisterSmartCardWithTokenID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[TKTokenID alloc] initWithTokenID:v6];
  if (v7)
  {
    remoteObjectProxy = self->_remoteObjectProxy;
    v9 = [MEMORY[0x1E696AAE8] mainBundle];
    v10 = [v9 bundleIdentifier];
    v11 = [(TKSmartCardTokenRegistrationXPCClient *)remoteObjectProxy unregisterSmartCardWithTokenID:v7 callerBundleID:v10 error:a4];
  }

  else
  {
    if (!a4)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid tokenID format: %@", v6];
    [MEMORY[0x1E696ABC0] errorWithCode:-8 debugDescription:v9];
    *a4 = v11 = 0;
  }

LABEL_6:
  return v11;
}

@end