@interface AEAssessmentSession
- (AEAssessmentConfiguration)configuration;
- (AEAssessmentSession)initWithConfiguration:(AEAssessmentConfiguration *)configuration;
- (BOOL)isActive;
- (id)delegate;
- (id)publicErrorForClientError:(void *)a1;
- (id)unwrapAECoreErrorFrom:(uint64_t)a1;
- (uint64_t)isUnsupportedPlatformClientError:(uint64_t)a1;
- (void)assessmentSessionWrapper:(id)a3 failedToBeginWithError:(id)a4;
- (void)assessmentSessionWrapper:(id)a3 failedToUpdateToConfigurationWrapper:(id)a4 error:(id)a5;
- (void)assessmentSessionWrapper:(id)a3 wasInterruptedWithError:(id)a4;
- (void)assessmentSessionWrapperDidBegin:(id)a3;
- (void)assessmentSessionWrapperDidEnd:(id)a3;
- (void)assessmentSessionWrapperDidUpdate:(id)a3;
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
    v7 = [(AEAssessmentConfiguration *)v4 configurationWrapper];
    v8 = [v6 initWithConfigurationWrapper:v7 queue:MEMORY[0x277D85CD0]];
    sessionWrapper = v5->_sessionWrapper;
    v5->_sessionWrapper = v8;

    [(AECAssessmentSessionWrapper *)v5->_sessionWrapper setDelegate:v5];
  }

  return v5;
}

- (void)assessmentSessionWrapperDidBegin:(id)a3
{
  v4 = [(AEAssessmentSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AEAssessmentSession *)self delegate];
    [v6 assessmentSessionDidBegin:self];
  }
}

- (void)assessmentSessionWrapperDidEnd:(id)a3
{
  v4 = [(AEAssessmentSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AEAssessmentSession *)self delegate];
    [v6 assessmentSessionDidEnd:self];
  }
}

- (void)assessmentSessionWrapper:(id)a3 failedToBeginWithError:(id)a4
{
  v9 = a4;
  v5 = [(AEAssessmentSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AEAssessmentSession *)self publicErrorForClientError:v9];
    v8 = [(AEAssessmentSession *)self delegate];
    [v8 assessmentSession:self failedToBeginWithError:v7];
  }
}

- (void)assessmentSessionWrapper:(id)a3 wasInterruptedWithError:(id)a4
{
  v7 = a4;
  v5 = [(AEAssessmentSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    [AEAssessmentSession assessmentSessionWrapper:v7 wasInterruptedWithError:?];
  }
}

- (void)assessmentSessionWrapperDidUpdate:(id)a3
{
  v4 = [(AEAssessmentSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AEAssessmentSession *)self delegate];
    [v6 assessmentSessionDidUpdate:self];
  }
}

- (void)assessmentSessionWrapper:(id)a3 failedToUpdateToConfigurationWrapper:(id)a4 error:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(AEAssessmentSession *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    [AEAssessmentSession assessmentSessionWrapper:v7 failedToUpdateToConfigurationWrapper:v10 error:?];
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

  v2 = [(AEAssessmentSession *)self configurationWrapper];
  v3 = [AEAssessmentConfiguration configurationFromWrapper:v2];

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
  v6 = [(AEAssessmentConfiguration *)configuration configurationWrapper];
  [(AECAssessmentSessionWrapper *)v5 updateToConfigurationWrapper:v6];
}

- (void)end
{
  if (self)
  {
    self = self->_sessionWrapper;
  }

  [(AEAssessmentSession *)self end];
}

- (id)publicErrorForClientError:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(AEAssessmentSession *)a1 unwrapAECoreErrorFrom:v3];
    if ([v4 code] == 102)
    {
      v5 = [v4 userInfo];
      a1 = AEErrorUserInfo(5, v5);
    }

    else
    {
      if ([(AEAssessmentSession *)a1 isUnsupportedPlatformClientError:v3])
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      a1 = AEErrorUnderlyingError(v7, v3);
    }
  }

  return a1;
}

- (id)unwrapAECoreErrorFrom:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 userInfo];
    v6 = MEMORY[0x277CE46D8];
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CE46D8]];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = MEMORY[0x277CE46D0];
    if (isKindOfClass)
    {
      v10 = [v4 userInfo];
      v11 = [v10 objectForKeyedSubscript:*v6];

      if (v11)
      {
        v12 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = [v4 domain];
    v14 = [v13 isEqualToString:*v9];

    if (v14)
    {
      v15 = v4;
      v11 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v11 = 0;
    v12 = 1;
LABEL_9:
    v16 = [v4 domain];
    if ([v16 isEqualToString:*v9] && objc_msgSend(v4, "code") == 100 && objc_msgSend(v11, "count") == 1)
    {

      if ((v12 & 1) == 0)
      {
        v15 = [v11 firstObject];
        goto LABEL_16;
      }
    }

    else
    {
    }

    v15 = 0;
    goto LABEL_16;
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (uint64_t)isUnsupportedPlatformClientError:(uint64_t)a1
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    v21 = 0;
    goto LABEL_22;
  }

  v5 = [v3 userInfo];
  v6 = MEMORY[0x277CE46D8];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CE46D8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKeyedSubscript:*v6];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 domain];
  if ([v10 isEqualToString:*MEMORY[0x277CE46D0]] && objc_msgSend(v4, "code") == 100)
  {

    if (!v9)
    {
      goto LABEL_20;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 domain];
          v17 = [MEMORY[0x277CBAA70] domain];
          if ([v16 isEqualToString:v17])
          {
            v18 = [v15 code];

            if (v18 == 2)
            {

              v21 = 1;
              goto LABEL_21;
            }
          }

          else
          {
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
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