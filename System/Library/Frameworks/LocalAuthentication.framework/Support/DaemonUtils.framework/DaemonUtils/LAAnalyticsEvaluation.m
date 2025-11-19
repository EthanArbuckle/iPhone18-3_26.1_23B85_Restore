@interface LAAnalyticsEvaluation
- (BOOL)shouldCollect;
- (EvaluationRequest)request;
- (LAAnalyticsEvaluation)initWithEvaluationRequest:(id)a3;
- (id)buildPayload;
- (void)_authenticationStartedForEvent:(int64_t)a3 continuity:(BOOL)a4;
- (void)_biometryAttempt:(int64_t)a3;
- (void)_passcodeAccepted:(BOOL)a3;
- (void)authenticationAttempt:(int64_t)a3 event:(int64_t)a4;
- (void)authenticationHasEvent:(int64_t)a3;
- (void)authenticationResult:(int64_t)a3 event:(int64_t)a4;
@end

@implementation LAAnalyticsEvaluation

- (BOOL)shouldCollect
{
  v3 = [(LAAnalyticsEvaluation *)self request];
  if ([v3 isInteractive])
  {
    v4 = [(LAAnalyticsEvaluation *)self request];
    v5 = [v4 isImmediateSuccess] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (EvaluationRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

- (LAAnalyticsEvaluation)initWithEvaluationRequest:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LAAnalyticsEvaluation;
  v5 = [(LAAnalytics *)&v8 initWithEventName:@"com.apple.LocalAuthentication.Evaluation"];
  if (v5)
  {
    v5->_policy = [v4 policy];
    objc_storeWeak(&v5->_request, v4);
    v5->_continuity = 0;
    v6 = +[(LACBiometryHelper *)BiometryHelper];
    v5->_biometryType = [v6 biometryType];
  }

  return v5;
}

- (id)buildPayload
{
  v39[3] = *MEMORY[0x277D85DE8];
  v38[0] = @"result";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation result](self, "result")}];
  v39[0] = v3;
  v38[1] = @"biometryType";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation biometryType](self, "biometryType")}];
  v39[1] = v4;
  v38[2] = @"authenticationTypes";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation authenticationTypes](self, "authenticationTypes")}];
  v39[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
  v7 = [v6 mutableCopy];

  if ([(LAAnalyticsEvaluation *)self policy]>= 1)
  {
    v36 = @"policy";
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation policy](self, "policy")}];
    v37 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    [v7 addEntriesFromDictionary:v9];
  }

  if ([(LAAnalyticsEvaluation *)self biometryStarted])
  {
    v34[0] = @"biometryAttempts";
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation biometryAttempts](self, "biometryAttempts")}];
    v35[0] = v10;
    v34[1] = @"biometryFailures";
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation biometryFailures](self, "biometryFailures")}];
    v35[1] = v11;
    v34[2] = @"biometryNoMatches";
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation biometryNoMatches](self, "biometryNoMatches")}];
    v35[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
    [v7 addEntriesFromDictionary:v13];
  }

  if ([(LAAnalyticsEvaluation *)self biometryStarted]|| [(LAAnalyticsEvaluation *)self biometryResult])
  {
    v32 = @"biometryResult";
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation biometryResult](self, "biometryResult")}];
    v33 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [v7 addEntriesFromDictionary:v15];
  }

  continuity = self->_continuity;
  if (continuity)
  {
    v30 = @"continuity";
    v17 = [MEMORY[0x277CCABB0] numberWithInt:continuity == 1];
    v31 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v7 addEntriesFromDictionary:v18];
  }

  if ([(LAAnalyticsEvaluation *)self passcodeStarted])
  {
    v28[0] = @"passcodeAttempts";
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation passcodeAttempts](self, "passcodeAttempts")}];
    v28[1] = @"passcodeFailures";
    v29[0] = v19;
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation passcodeFailures](self, "passcodeFailures")}];
    v29[1] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    [v7 addEntriesFromDictionary:v21];
  }

  if ([(LAAnalyticsEvaluation *)self passcodeStarted]|| [(LAAnalyticsEvaluation *)self passcodeResult])
  {
    v26 = @"passcodeResult";
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsEvaluation passcodeResult](self, "passcodeResult")}];
    v27 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v7 addEntriesFromDictionary:v23];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)authenticationHasEvent:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_238B8D858[a3 - 1];
  }

  self->_authenticationTypes |= v3;
}

- (void)_authenticationStartedForEvent:(int64_t)a3 continuity:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x277D85DE8];
  if (a3 == 7)
  {
LABEL_4:
    self->_biometryStarted = 1;
    goto LABEL_5;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (![(LAAnalyticsEvaluation *)self passcodeStarted])
  {
    self->_passcodeStarted = 1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = +[LAAnalyticsPasscodeFallbackPeriod activePersistentInstances];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          v14 = [(LAAnalyticsEvaluation *)self request];
          [v13 passcodePresentedWithEvaluationRequest:v14 biometryAttempts:{-[LAAnalyticsEvaluation biometryAttempts](self, "biometryAttempts")}];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

LABEL_5:
  if (v4)
  {
    self->_continuity = 1;
    self->_continuityEvent = a3;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)authenticationAttempt:(int64_t)a3 event:(int64_t)a4
{
  if (a4 == 7)
  {
LABEL_4:
    [(LAAnalyticsEvaluation *)self _biometryAttempt:a3];
LABEL_5:
    if (!a3)
    {
      return;
    }

    goto LABEL_6;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [(LAAnalyticsEvaluation *)self _passcodeAccepted:a3 == 0];
  if (!a3)
  {
    return;
  }

LABEL_6:
  if (self->_continuityEvent == a4)
  {
    self->_continuity = 2;
  }
}

- (void)authenticationResult:(int64_t)a3 event:(int64_t)a4
{
  v4 = &OBJC_IVAR___LAAnalyticsEvaluation__biometryResult;
  if (a4 != 1 && a4 != 7)
  {
    if (a4 != 2)
    {
      return;
    }

    v4 = &OBJC_IVAR___LAAnalyticsEvaluation__passcodeResult;
  }

  *(&self->super.super.isa + *v4) = a3;
}

- (void)_biometryAttempt:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  ++self->_biometryAttempts;
  if ((a3 - 2) < 2)
  {
    v4 = 88;
    goto LABEL_6;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      ++self->_biometryFailures;
      v4 = 96;
LABEL_6:
      ++*(&self->super.super.isa + v4);
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = +[LAAnalyticsPasscodeFallbackPeriod activePersistentInstances];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = [(LAAnalyticsEvaluation *)self request];
          [v10 biometrySucceededWithEvaluationRequest:v11];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_passcodeAccepted:(BOOL)a3
{
  ++self->_passcodeAttempts;
  if (!a3)
  {
    ++self->_passcodeFailures;
  }
}

@end