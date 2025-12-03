@interface BAAppStoreClient
+ (id)_errorWithCode:(void *)code errorObject:;
- (BAAppStoreClient)init;
- (BOOL)performEventWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)prepareForAppInstallWithDescriptor:(id)descriptor error:(id *)error;
- (void)dealloc;
@end

@implementation BAAppStoreClient

- (BAAppStoreClient)init
{
  v6.receiver = self;
  v6.super_class = BAAppStoreClient;
  v2 = [(BAAppStoreClient *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BAAgentSystemProxy);
    systemProxy = v2->_systemProxy;
    v2->_systemProxy = v3;
  }

  return v2;
}

- (BOOL)prepareForAppInstallWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      [BAAppStoreClient _errorWithCode:descriptorCopy errorObject:?];
      *error = v13 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  appBundleIdentifier = [descriptorCopy appBundleIdentifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_11:
    if (error)
    {
      appBundleIdentifier2 = [descriptorCopy appBundleIdentifier];
      v15 = 2;
LABEL_13:
      *error = [BAAppStoreClient _errorWithCode:v15 errorObject:appBundleIdentifier2];
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  appBundleIdentifier3 = [descriptorCopy appBundleIdentifier];
  v9 = [appBundleIdentifier3 length];

  if (!v9)
  {
    goto LABEL_11;
  }

  appStoreMetadata = [descriptorCopy appStoreMetadata];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    appBundleIdentifier2 = [descriptorCopy appBundleIdentifier];
    v15 = 3;
    goto LABEL_13;
  }

  if (self)
  {
    systemProxy = self->_systemProxy;
  }

  else
  {
    systemProxy = 0;
  }

  v13 = [(BAAgentSystemProxy *)systemProxy applicationPrepareWithDescriptor:descriptorCopy error:error];
LABEL_15:

  return v13;
}

+ (id)_errorWithCode:(void *)code errorObject:
{
  v12[1] = *MEMORY[0x277D85DE8];
  codeCopy = code;
  objc_opt_self();
  if ((a2 - 1) > 5)
  {
    codeCopy = 0;
  }

  else
  {
    codeCopy = [MEMORY[0x277CCACA8] stringWithFormat:off_278A0D150[a2 - 1], codeCopy];
  }

  v6 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = codeCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 errorWithDomain:@"BAAppStoreClientErrorDomain" code:a2 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)performEventWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    appBundleIdentifier = [descriptorCopy appBundleIdentifier];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      appBundleURL = [descriptorCopy appBundleURL];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([appBundleURL isFileURL])
      {
        if ([descriptorCopy eventType] == 22)
        {
LABEL_8:
          if (self)
          {
            systemProxy = self->_systemProxy;
          }

          else
          {
            systemProxy = 0;
          }

          v12 = [(BAAgentSystemProxy *)systemProxy applicationEventPerformedWithDescriptor:descriptorCopy error:error];
          goto LABEL_22;
        }

        v10 = [MEMORY[0x277CCA8D8] bundleWithURL:appBundleURL];
        if (v10)
        {

          goto LABEL_8;
        }

        if (error)
        {
          v14 = 4;
          goto LABEL_18;
        }
      }

      else if (error)
      {
        v14 = 1;
LABEL_18:
        [BAAppStoreClient _errorWithCode:v14 errorObject:appBundleURL];
        *error = v12 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v12 = 0;
      goto LABEL_22;
    }

    if (error)
    {
      appBundleIdentifier2 = [descriptorCopy appBundleIdentifier];
      *error = [BAAppStoreClient _errorWithCode:appBundleIdentifier2 errorObject:?];
    }

    goto LABEL_15;
  }

  if (!error)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_23;
  }

  [BAAppStoreClient _errorWithCode:descriptorCopy errorObject:?];
  *error = v12 = 0;
LABEL_23:

  return v12;
}

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    self = self->_systemProxy;
  }

  [(BAAppStoreClient *)self invalidate];
  v3.receiver = selfCopy;
  v3.super_class = BAAppStoreClient;
  [(BAAppStoreClient *)&v3 dealloc];
}

@end