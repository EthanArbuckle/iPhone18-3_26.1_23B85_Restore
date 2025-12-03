@interface AEAssessmentSession
- (AEAssessmentConfiguration)configuration;
- (AEAssessmentSession)initWithConfiguration:(AEAssessmentConfiguration *)configuration;
- (BOOL)isActive;
- (id)delegate;
- (id)publicErrorForClientError:(void *)error;
- (id)unwrapAECoreErrorFrom:(uint64_t)from;
- (uint64_t)isUnsupportedPlatformClientError:(uint64_t)error;
- (void)assessmentSessionWrapper:(id)wrapper failedToBeginWithError:(id)error;
- (void)assessmentSessionWrapper:(id)wrapper failedToUpdateToConfigurationWrapper:(id)configurationWrapper error:(id)error;
- (void)assessmentSessionWrapper:(id)wrapper wasInterruptedWithError:(id)error;
- (void)assessmentSessionWrapperDidBegin:(id)begin;
- (void)assessmentSessionWrapperDidEnd:(id)end;
- (void)assessmentSessionWrapperDidUpdate:(id)update;
- (void)begin;
- (void)end;
- (void)updateToConfiguration:(AEAssessmentConfiguration *)configuration;
@end

@implementation AEAssessmentSession

- (AEAssessmentSession)initWithConfiguration:(AEAssessmentConfiguration *)configuration
{
  v4 = configuration;
  v11.receiver = self;
  v11.super_class = AEAssessmentSession;
  v5 = [(AEAssessmentSession *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBAA68]);
    configurationWrapper = [(AEAssessmentConfiguration *)v4 configurationWrapper];
    v8 = [v6 initWithConfigurationWrapper:configurationWrapper queue:MEMORY[0x277D85CD0]];
    sessionWrapper = v5->_sessionWrapper;
    v5->_sessionWrapper = v8;

    [(AECAssessmentSessionWrapper *)v5->_sessionWrapper setDelegate:v5];
  }

  return v5;
}

- (void)assessmentSessionWrapperDidBegin:(id)begin
{
  delegate = [(AEAssessmentSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AEAssessmentSession *)self delegate];
    [delegate2 assessmentSessionDidBegin:self];
  }
}

- (void)assessmentSessionWrapperDidEnd:(id)end
{
  delegate = [(AEAssessmentSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AEAssessmentSession *)self delegate];
    [delegate2 assessmentSessionDidEnd:self];
  }
}

- (void)assessmentSessionWrapper:(id)wrapper failedToBeginWithError:(id)error
{
  errorCopy = error;
  delegate = [(AEAssessmentSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AEAssessmentSession *)self publicErrorForClientError:errorCopy];
    delegate2 = [(AEAssessmentSession *)self delegate];
    [delegate2 assessmentSession:self failedToBeginWithError:v7];
  }
}

- (void)assessmentSessionWrapper:(id)wrapper wasInterruptedWithError:(id)error
{
  errorCopy = error;
  delegate = [(AEAssessmentSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    [AEAssessmentSession assessmentSessionWrapper:errorCopy wasInterruptedWithError:?];
  }
}

- (void)assessmentSessionWrapperDidUpdate:(id)update
{
  delegate = [(AEAssessmentSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AEAssessmentSession *)self delegate];
    [delegate2 assessmentSessionDidUpdate:self];
  }
}

- (void)assessmentSessionWrapper:(id)wrapper failedToUpdateToConfigurationWrapper:(id)configurationWrapper error:(id)error
{
  configurationWrapperCopy = configurationWrapper;
  errorCopy = error;
  delegate = [(AEAssessmentSession *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    [AEAssessmentSession assessmentSessionWrapper:errorCopy failedToUpdateToConfigurationWrapper:configurationWrapperCopy error:?];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AEAssessmentConfiguration)configuration
{
  if (self)
  {
    self = self->_sessionWrapper;
  }

  configurationWrapper = [(AEAssessmentSession *)self configurationWrapper];
  v3 = [AEAssessmentConfiguration configurationFromWrapper:configurationWrapper];

  return v3;
}

- (BOOL)isActive
{
  if (self)
  {
    self = self->_sessionWrapper;
  }

  return [(AEAssessmentSession *)self isActive];
}

- (void)begin
{
  if (self)
  {
    self = self->_sessionWrapper;
  }

  [(AEAssessmentSession *)self begin];
}

- (void)updateToConfiguration:(AEAssessmentConfiguration *)configuration
{
  if (self)
  {
    sessionWrapper = self->_sessionWrapper;
  }

  else
  {
    sessionWrapper = 0;
  }

  v5 = sessionWrapper;
  configurationWrapper = [(AEAssessmentConfiguration *)configuration configurationWrapper];
  [(AECAssessmentSessionWrapper *)v5 updateToConfigurationWrapper:configurationWrapper];
}

- (void)end
{
  if (self)
  {
    self = self->_sessionWrapper;
  }

  [(AEAssessmentSession *)self end];
}

- (id)publicErrorForClientError:(void *)error
{
  v3 = a2;
  if (error)
  {
    v4 = [(AEAssessmentSession *)error unwrapAECoreErrorFrom:v3];
    if ([v4 code] == 102)
    {
      userInfo = [v4 userInfo];
      error = AEErrorUserInfo(5, userInfo);
    }

    else
    {
      if ([(AEAssessmentSession *)error isUnsupportedPlatformClientError:v3])
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      error = AEErrorUnderlyingError(v7, v3);
    }
  }

  return error;
}

- (id)unwrapAECoreErrorFrom:(uint64_t)from
{
  v3 = a2;
  v4 = v3;
  if (from)
  {
    userInfo = [v3 userInfo];
    v6 = MEMORY[0x277CE46D8];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE46D8]];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = MEMORY[0x277CE46D0];
    if (isKindOfClass)
    {
      userInfo2 = [v4 userInfo];
      v11 = [userInfo2 objectForKeyedSubscript:*v6];

      if (v11)
      {
        v12 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }

    domain = [v4 domain];
    v14 = [domain isEqualToString:*v9];

    if (v14)
    {
      firstObject = v4;
      v11 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v11 = 0;
    v12 = 1;
LABEL_9:
    domain2 = [v4 domain];
    if ([domain2 isEqualToString:*v9] && objc_msgSend(v4, "code") == 100 && objc_msgSend(v11, "count") == 1)
    {

      if ((v12 & 1) == 0)
      {
        firstObject = [v11 firstObject];
        goto LABEL_16;
      }
    }

    else
    {
    }

    firstObject = 0;
    goto LABEL_16;
  }

  firstObject = 0;
LABEL_17:

  return firstObject;
}

- (uint64_t)isUnsupportedPlatformClientError:(uint64_t)error
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!error)
  {
    v21 = 0;
    goto LABEL_22;
  }

  userInfo = [v3 userInfo];
  v6 = MEMORY[0x277CE46D8];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE46D8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo2 = [v4 userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:*v6];
  }

  else
  {
    v9 = 0;
  }

  domain = [v4 domain];
  if ([domain isEqualToString:*MEMORY[0x277CE46D0]] && objc_msgSend(v4, "code") == 100)
  {

    if (!v9)
    {
      goto LABEL_20;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    domain = v9;
    v11 = [domain countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(domain);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          domain2 = [v15 domain];
          domain3 = [MEMORY[0x277CBAA70] domain];
          if ([domain2 isEqualToString:domain3])
          {
            code = [v15 code];

            if (code == 2)
            {

              v21 = 1;
              goto LABEL_21;
            }
          }

          else
          {
          }
        }

        v12 = [domain countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }
  }

LABEL_20:
  v21 = 0;
LABEL_21:

LABEL_22:
  v19 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)assessmentSessionWrapper:(void *)a1 wasInterruptedWithError:(void *)a2 .cold.1(void *a1, void *a2)
{
  v4 = [(AEAssessmentSession *)a1 publicErrorForClientError:a2];
  v3 = [a1 delegate];
  [v3 assessmentSession:a1 wasInterruptedWithError:v4];
}

- (void)assessmentSessionWrapper:(void *)a1 failedToUpdateToConfigurationWrapper:(void *)a2 error:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v7 = [(AEAssessmentSession *)a1 publicErrorForClientError:a2];
  v5 = [AEAssessmentConfiguration configurationFromWrapper:a3];
  v6 = [a1 delegate];
  [v6 assessmentSession:a1 failedToUpdateToConfiguration:v5 error:v7];
}

@end