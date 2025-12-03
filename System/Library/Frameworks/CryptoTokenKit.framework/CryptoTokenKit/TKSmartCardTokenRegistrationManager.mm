@interface TKSmartCardTokenRegistrationManager
+ (TKSmartCardTokenRegistrationManager)defaultManager;
- (BOOL)registerSmartCardWithTokenID:(id)d promptMessage:(id)message error:(id *)error;
- (BOOL)unregisterSmartCardWithTokenID:(id)d error:(id *)error;
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
  array = [MEMORY[0x1E695DF70] array];
  registeredSmartCardTokens = [(TKSmartCardTokenRegistrationXPCClient *)self->_remoteObjectProxy registeredSmartCardTokens];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [registeredSmartCardTokens countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(registeredSmartCardTokens);
        }

        stringRepresentation = [*(*(&v12 + 1) + 8 * i) stringRepresentation];
        [array addObject:stringRepresentation];
      }

      v6 = [registeredSmartCardTokens countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return array;
}

- (BOOL)registerSmartCardWithTokenID:(id)d promptMessage:(id)message error:(id *)error
{
  dCopy = d;
  messageCopy = message;
  v10 = [[TKTokenID alloc] initWithTokenID:dCopy];
  if (v10)
  {
    if ([messageCopy length])
    {
      dCopy = messageCopy;
    }

    else
    {
      v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CryptoTokenKit"];
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      localizedInfoDictionary = [mainBundle localizedInfoDictionary];
      v15 = localizedInfoDictionary;
      if (localizedInfoDictionary)
      {
        infoDictionary = localizedInfoDictionary;
      }

      else
      {
        mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
        infoDictionary = [mainBundle2 infoDictionary];
      }

      v18 = [infoDictionary objectForKeyedSubscript:@"CFBundleVisibleComponentName"];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v21 = [infoDictionary objectForKeyedSubscript:@"CFBundleDisplayName"];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = [infoDictionary objectForKeyedSubscript:@"CFBundleName"];
        }

        v20 = v23;
      }

      v24 = MEMORY[0x1E696AEC0];
      v25 = [v30 localizedStringForKey:@"REGISTERED_SMARTCARD_NFC_PROMPT_MESSAGE" value:@"Scan your registered smartcard for %@" table:0];
      dCopy = [v24 stringWithFormat:v25, v20];
    }

    remoteObjectProxy = self->_remoteObjectProxy;
    mainBundle3 = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle3 bundleIdentifier];
    v12 = [(TKSmartCardTokenRegistrationXPCClient *)remoteObjectProxy registerSmartCardWithTokenID:v10 promptMessage:dCopy callerBundleID:bundleIdentifier error:error];

    goto LABEL_18;
  }

  if (error)
  {
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid tokenID format: %@", dCopy];
    [MEMORY[0x1E696ABC0] errorWithCode:-8 debugDescription:dCopy];
    *error = v12 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (BOOL)unregisterSmartCardWithTokenID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = [[TKTokenID alloc] initWithTokenID:dCopy];
  if (v7)
  {
    remoteObjectProxy = self->_remoteObjectProxy;
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v11 = [(TKSmartCardTokenRegistrationXPCClient *)remoteObjectProxy unregisterSmartCardWithTokenID:v7 callerBundleID:bundleIdentifier error:error];
  }

  else
  {
    if (!error)
    {
      v11 = 0;
      goto LABEL_6;
    }

    mainBundle = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid tokenID format: %@", dCopy];
    [MEMORY[0x1E696ABC0] errorWithCode:-8 debugDescription:mainBundle];
    *error = v11 = 0;
  }

LABEL_6:
  return v11;
}

@end