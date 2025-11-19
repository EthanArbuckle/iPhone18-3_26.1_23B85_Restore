@interface BAAppStoreClient
+ (id)_errorWithCode:(void *)a3 errorObject:;
- (BAAppStoreClient)init;
- (BOOL)performEventWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)prepareForAppInstallWithDescriptor:(id)a3 error:(id *)a4;
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

- (BOOL)prepareForAppInstallWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      [BAAppStoreClient _errorWithCode:v6 errorObject:?];
      *a4 = v13 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = [v6 appBundleIdentifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_11:
    if (a4)
    {
      v14 = [v6 appBundleIdentifier];
      v15 = 2;
LABEL_13:
      *a4 = [BAAppStoreClient _errorWithCode:v15 errorObject:v14];
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v8 = [v6 appBundleIdentifier];
  v9 = [v8 length];

  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = [v6 appStoreMetadata];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    v14 = [v6 appBundleIdentifier];
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

  v13 = [(BAAgentSystemProxy *)systemProxy applicationPrepareWithDescriptor:v6 error:a4];
LABEL_15:

  return v13;
}

+ (id)_errorWithCode:(void *)a3 errorObject:
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_self();
  if ((a2 - 1) > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:off_278A0D150[a2 - 1], v4];
  }

  v6 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 errorWithDomain:@"BAAppStoreClientErrorDomain" code:a2 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)performEventWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 appBundleIdentifier];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [v6 appBundleURL];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v9 isFileURL])
      {
        if ([v6 eventType] == 22)
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

          v12 = [(BAAgentSystemProxy *)systemProxy applicationEventPerformedWithDescriptor:v6 error:a4];
          goto LABEL_22;
        }

        v10 = [MEMORY[0x277CCA8D8] bundleWithURL:v9];
        if (v10)
        {

          goto LABEL_8;
        }

        if (a4)
        {
          v14 = 4;
          goto LABEL_18;
        }
      }

      else if (a4)
      {
        v14 = 1;
LABEL_18:
        [BAAppStoreClient _errorWithCode:v14 errorObject:v9];
        *a4 = v12 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v12 = 0;
      goto LABEL_22;
    }

    if (a4)
    {
      v13 = [v6 appBundleIdentifier];
      *a4 = [BAAppStoreClient _errorWithCode:v13 errorObject:?];
    }

    goto LABEL_15;
  }

  if (!a4)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_23;
  }

  [BAAppStoreClient _errorWithCode:v6 errorObject:?];
  *a4 = v12 = 0;
LABEL_23:

  return v12;
}

- (void)dealloc
{
  v2 = self;
  if (self)
  {
    self = self->_systemProxy;
  }

  [(BAAppStoreClient *)self invalidate];
  v3.receiver = v2;
  v3.super_class = BAAppStoreClient;
  [(BAAppStoreClient *)&v3 dealloc];
}

@end