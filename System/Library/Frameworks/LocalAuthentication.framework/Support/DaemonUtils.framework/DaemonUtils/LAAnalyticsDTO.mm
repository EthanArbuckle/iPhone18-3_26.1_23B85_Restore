@interface LAAnalyticsDTO
- (BOOL)_isLocationBasedPolicyEvaluation;
- (BOOL)_isRatchetArmingEvaluation;
- (BOOL)_isRatchetCollapsed;
- (BOOL)shouldCollect;
- (EvaluationRequest)request;
- (LAAnalyticsDTO)initWithEvaluationRequest:(id)request;
- (NSDate)persistentStatusCheckTime;
- (NSString)description;
- (double)_monitoringInterval;
- (id)_coolDownTimeInterval;
- (id)buildPayload;
- (id)initForOneOffDTOAnalyticsWithEvaluationRequest:(id)request dtoEnvironment:(id)environment;
- (id)initForStatusMonitoringWithEnvironment:(id)environment workQueue:(id)queue;
- (int64_t)_dtoResultFromLAResult:(id)result error:(id)error locationState:(int64_t)state;
- (int64_t)_eventForLocationState:(int64_t)state familiarLocationEvent:(int64_t)event familiarLocationWithoutFullConfirmationEvent:(int64_t)confirmationEvent unfamiliarLocationEvent:(int64_t)locationEvent;
- (int64_t)_stateWithEnvironment:(id)environment;
- (int64_t)coolDownBucket;
- (int64_t)state;
- (unsigned)_uid;
- (void)_checkStatusWithEnvironment:(id)environment;
- (void)_checkStatusWithReason:(id)reason;
- (void)_setupStatusMonitoring;
- (void)collectIfNeeded;
- (void)evaluationResult:(id)result error:(id)error;
- (void)pendingEvaluationController:(id)controller updatedPendingEvaluation:(id)evaluation;
- (void)setPersistentStatusCheckTime:(id)time;
@end

@implementation LAAnalyticsDTO

- (LAAnalyticsDTO)initWithEvaluationRequest:(id)request
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = LAAnalyticsDTO;
  v5 = [(LAAnalytics *)&v13 initWithEventName:@"com.apple.LocalAuthentication.DTO"];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_request, requestCopy);
    serviceLocator = [requestCopy serviceLocator];
    v8 = NSStringFromProtocol(&unk_284B76EE0);
    v9 = [serviceLocator serviceWithIdentifier:v8];

    if (v9 && [v9 conformsToProtocol:&unk_284B76EE0])
    {
      objc_storeStrong(&v6->_dtoService, v9);
      pendingPolicyEvaluationController = [(LACDTOService *)v6->_dtoService pendingPolicyEvaluationController];
      [pendingPolicyEvaluationController addObserver:v6];
    }

    else
    {
      request = [(LAAnalyticsDTO *)v6 request];
      pendingPolicyEvaluationController = [request log];

      if (os_log_type_enabled(pendingPolicyEvaluationController, OS_LOG_TYPE_FAULT))
      {
        [(LAAnalyticsDTO *)v6 initWithEvaluationRequest:pendingPolicyEvaluationController];
      }
    }
  }

  return v6;
}

- (id)initForStatusMonitoringWithEnvironment:(id)environment workQueue:(id)queue
{
  environmentCopy = environment;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = LAAnalyticsDTO;
  v9 = [(LAAnalytics *)&v15 initWithEventName:@"com.apple.LocalAuthentication.DTO"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_environmentProvider, environment);
    [(LAAnalytics *)v10 setAllowsMultipleCollections:1];
    v11 = v10;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__LAAnalyticsDTO_initForStatusMonitoringWithEnvironment_workQueue___block_invoke;
    block[3] = &unk_278A61588;
    v14 = v11;
    dispatch_async(queueCopy, block);
  }

  return v10;
}

- (id)initForOneOffDTOAnalyticsWithEvaluationRequest:(id)request dtoEnvironment:(id)environment
{
  requestCopy = request;
  environmentCopy = environment;
  v11.receiver = self;
  v11.super_class = LAAnalyticsDTO;
  v8 = [(LAAnalytics *)&v11 initWithEventName:@"com.apple.LocalAuthentication.DTO"];
  p_isa = &v8->super.super.isa;
  if (v8)
  {
    objc_storeWeak(&v8->_request, requestCopy);
    objc_storeStrong(p_isa + 5, environment);
  }

  return p_isa;
}

- (void)evaluationResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  request = [(LAAnalyticsDTO *)self request];
  dtoEnvironment = [request dtoEnvironment];
  locationState = [dtoEnvironment locationState];
  v10 = -[LAAnalyticsDTO _dtoResultFromLAResult:error:locationState:](self, "_dtoResultFromLAResult:error:locationState:", resultCopy, errorCopy, [locationState rawValue]);

  if ([(LAAnalyticsDTO *)self _isRatchetArmingEvaluation])
  {
    v11 = &OBJC_IVAR___LAAnalyticsDTO__ratchetResult;
  }

  else
  {
    if (![(LAAnalyticsDTO *)self _isLocationBasedPolicyEvaluation])
    {
      goto LABEL_6;
    }

    v11 = &OBJC_IVAR___LAAnalyticsDTO__policyResult;
  }

  *(&self->super.super.isa + *v11) = v10;
LABEL_6:
  v12 = [MEMORY[0x277CBEAA8] now];
  evaluationFinished = self->_evaluationFinished;
  self->_evaluationFinished = v12;

  self->_evaluationSuccessful = resultCopy != 0;
}

- (id)buildPayload
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"State";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsDTO state](self, "state")}];
  v12[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v5 = [v4 mutableCopy];

  if ([(LAAnalyticsDTO *)self _isRatchetArmingEvaluation])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsDTO ratchetResult](self, "ratchetResult")}];
    [v5 setObject:v6 forKey:@"RatchetResult"];

    if (self->_coolOffStarted)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsDTO coolDownBucket](self, "coolDownBucket")}];
      [v5 setObject:v7 forKey:@"CoolDownBucket"];
    }
  }

  if ([(LAAnalyticsDTO *)self _isLocationBasedPolicyEvaluation])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsDTO policyResult](self, "policyResult")}];
    [v5 setObject:v8 forKey:@"PolicyResult"];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)shouldCollect
{
  if (self->_environmentProvider)
  {
    return 1;
  }

  request = [(LAAnalyticsDTO *)self request];
  if ([request isInteractive])
  {
  }

  else
  {
    evaluationSuccessful = self->_evaluationSuccessful;

    if (!evaluationSuccessful)
    {
      return 0;
    }
  }

  request2 = [(LAAnalyticsDTO *)self request];
  isImmediateSuccess = [request2 isImmediateSuccess];

  if (isImmediateSuccess)
  {
    return 0;
  }

  if ([(LAAnalyticsDTO *)self _isRatchetArmingEvaluation])
  {
    return 1;
  }

  return [(LAAnalyticsDTO *)self _isLocationBasedPolicyEvaluation];
}

- (void)collectIfNeeded
{
  v4.receiver = self;
  v4.super_class = LAAnalyticsDTO;
  [(LAAnalytics *)&v4 collectIfNeeded];
  pendingPolicyEvaluationController = [(LACDTOService *)self->_dtoService pendingPolicyEvaluationController];
  [pendingPolicyEvaluationController removeObserver:self];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  ratchetResult = [(LAAnalyticsDTO *)self ratchetResult];
  policyResult = [(LAAnalyticsDTO *)self policyResult];
  state = [(LAAnalyticsDTO *)self state];
  coolDownBucket = [(LAAnalyticsDTO *)self coolDownBucket];
  v8 = [MEMORY[0x277CCA968] localizedStringFromDate:self->_coolOffStarted dateStyle:3 timeStyle:3];
  v9 = [v3 stringWithFormat:@"<LAAnalyticsDTO RatchetResult:%d, PolicyResult:%d, State:%d, CoolDownBucket:%d (coolOffStarted: %@)>", ratchetResult, policyResult, state, coolDownBucket, v8];

  return v9;
}

- (void)pendingEvaluationController:(id)controller updatedPendingEvaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  identifier = [evaluationCopy identifier];
  request = [(LAAnalyticsDTO *)self request];
  dtoRequestIdentifier = [request dtoRequestIdentifier];
  v8 = [identifier isEqualToString:dtoRequestIdentifier];

  if (v8)
  {
    coolOffStarted = [evaluationCopy coolOffStarted];
    coolOffStarted = self->_coolOffStarted;
    self->_coolOffStarted = coolOffStarted;
  }
}

- (void)_setupStatusMonitoring
{
  v17 = *MEMORY[0x277D85DE8];
  persistentStatusCheckTime = [(LAAnalyticsDTO *)self persistentStatusCheckTime];
  if (persistentStatusCheckTime)
  {
    v4 = [MEMORY[0x277CCA968] localizedStringFromDate:persistentStatusCheckTime dateStyle:1 timeStyle:2];
    [persistentStatusCheckTime timeIntervalSinceNow];
    if (v5 >= 0.0)
    {
      v7 = v5;
      v8 = LA_LOG_3();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v14 = v4;
        v15 = 2048;
        v16 = v7;
        _os_log_impl(&dword_238B7F000, v8, OS_LOG_TYPE_DEFAULT, "Scheduling status check at %{public}@ (%.0f seconds from now)", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v9 = +[DaemonUtils queue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __40__LAAnalyticsDTO__setupStatusMonitoring__block_invoke;
      v11[3] = &unk_278A61560;
      objc_copyWeak(&v12, buf);
      [DaemonUtils dispatchReallyAfter:(v7 * 1000000000.0) tolerance:v9 queue:v11 block:0.0];

      objc_destroyWeak(&v12);
      objc_destroyWeak(buf);
    }

    else
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"past scheduled check time: %@", v4];
      [(LAAnalyticsDTO *)self _checkStatusWithReason:v6];
    }
  }

  else
  {
    [(LAAnalyticsDTO *)self _checkStatusWithReason:@"no scheduled check time"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __40__LAAnalyticsDTO__setupStatusMonitoring__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkStatusWithReason:@"scheduled check"];
}

- (NSDate)persistentStatusCheckTime
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"LA.dto.statusCheckTime"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPersistentStatusCheckTime:(id)time
{
  timeCopy = time;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = standardUserDefaults;
  if (timeCopy)
  {
    [standardUserDefaults setObject:timeCopy forKey:@"LA.dto.statusCheckTime"];
  }

  else
  {
    [standardUserDefaults removeObjectForKey:@"LA.dto.statusCheckTime"];
  }
}

- (void)_checkStatusWithReason:(id)reason
{
  v14 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = LA_LOG_3();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = reasonCopy;
    _os_log_impl(&dword_238B7F000, v5, OS_LOG_TYPE_DEFAULT, "Checking status now (%{public}@)", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  environmentProvider = self->_environmentProvider;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__LAAnalyticsDTO__checkStatusWithReason___block_invoke;
  v10[3] = &unk_278A61628;
  objc_copyWeak(&v11, buf);
  [(LACDTOEnvironmentProviding *)environmentProvider fetchEnvironmentForPolicy:1026 options:MEMORY[0x277CBEC10] completion:v10];
  v7 = [MEMORY[0x277CBEAA8] now];
  [(LAAnalyticsDTO *)self _monitoringInterval];
  v8 = [v7 dateByAddingTimeInterval:?];
  [(LAAnalyticsDTO *)self setPersistentStatusCheckTime:v8];

  [(LAAnalyticsDTO *)self _setupStatusMonitoring];
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x277D85DE8];
}

void __41__LAAnalyticsDTO__checkStatusWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    WeakRetained = LA_LOG_3();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __41__LAAnalyticsDTO__checkStatusWithReason___block_invoke_cold_1(v7, WeakRetained);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _checkStatusWithEnvironment:v5];
  }
}

- (double)_monitoringInterval
{
  v2 = __37__LAAnalyticsDTO__monitoringInterval__block_invoke(self, @"LA.dto.AnalyticsStatusCheckInterval", &unk_284B71D08);
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

id __37__LAAnalyticsDTO__monitoringInterval__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = *MEMORY[0x277D23F20];
  if (os_variant_allows_internal_security_policies())
  {
    v7 = [MEMORY[0x277CCAC38] processInfo];
    v8 = [v7 environment];
    v9 = [v8 objectForKeyedSubscript:v4];

    if (!v9)
    {
      goto LABEL_4;
    }

    v10 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v11 = [MEMORY[0x277CCAC38] processInfo];
    v12 = [v11 environment];
    v13 = [v12 objectForKeyedSubscript:v4];
    v14 = [v10 numberFromString:v13];

    if (!v14)
    {
LABEL_4:
      v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v16 = [v15 persistentDomainForName:*MEMORY[0x277CCA208]];

      v17 = [v16 objectForKeyedSubscript:v4];
      if (v17 && (v18 = v17, [v16 objectForKeyedSubscript:v4], v19 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v19, v18, (isKindOfClass & 1) != 0))
      {
        v21 = [v16 objectForKeyedSubscript:v4];
      }

      else
      {
        v21 = v5;
      }

      v14 = v21;
    }
  }

  else
  {
    v14 = v5;
  }

  return v14;
}

- (void)_checkStatusWithEnvironment:(id)environment
{
  objc_storeStrong(&self->_environment, environment);

  [(LAAnalyticsDTO *)self collectIfNeeded];
}

- (int64_t)state
{
  if (self->_environment)
  {

    return [(LAAnalyticsDTO *)self _stateWithEnvironment:?];
  }

  else
  {
    request = [(LAAnalyticsDTO *)self request];
    dtoEnvironment = [request dtoEnvironment];
    v6 = [(LAAnalyticsDTO *)self _stateWithEnvironment:dtoEnvironment];

    return v6;
  }
}

- (int64_t)_stateWithEnvironment:(id)environment
{
  environmentCopy = environment;
  featureState = [environmentCopy featureState];
  isSupported = [featureState isSupported];

  if (isSupported)
  {
    featureState2 = [environmentCopy featureState];
    isAvailable = [featureState2 isAvailable];

    if (isAvailable)
    {
      featureState3 = [environmentCopy featureState];
      isEnabled = [featureState3 isEnabled];

      if (isEnabled)
      {
        ratchetState = [environmentCopy ratchetState];
        rawValue = [ratchetState rawValue];

        if (rawValue == 4)
        {
          v13 = 4;
        }

        else
        {
          featureState4 = [environmentCopy featureState];
          isStrictModeEnabled = [featureState4 isStrictModeEnabled];

          if (isStrictModeEnabled)
          {
            v13 = 7;
          }

          else
          {
            v13 = 0;
          }
        }
      }

      else
      {
        v13 = 5;
      }
    }

    else
    {
      mEMORY[0x277CD4800] = [MEMORY[0x277CD4800] sharedInstance];
      v16 = [mEMORY[0x277CD4800] isPasscodeSetForUser:-[LAAnalyticsDTO _uid](self error:{"_uid"), 0}];

      if (v16)
      {
        v17 = +[(LACBiometryHelper *)BiometryHelper];
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[LAAnalyticsDTO _uid](self, "_uid")}];
        v19 = [v17 isEnrolled:v18 error:0];

        if (v19)
        {
          v13 = 6;
        }

        else
        {
          v13 = 2;
        }
      }

      else
      {
        v13 = 3;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (unsigned)_uid
{
  request = [(LAAnalyticsDTO *)self request];
  if (request)
  {
    request2 = [(LAAnalyticsDTO *)self request];
    evaluationUserId = [request2 evaluationUserId];
  }

  else
  {
    evaluationUserId = geteuid();
  }

  return evaluationUserId;
}

- (int64_t)coolDownBucket
{
  v10 = *MEMORY[0x277D85DE8];
  _coolDownTimeInterval = [(LAAnalyticsDTO *)self _coolDownTimeInterval];
  v3 = _coolDownTimeInterval;
  if (_coolDownTimeInterval)
  {
    v4 = 0;
    v5 = [_coolDownTimeInterval intValue] / 60;
    v8[0] = xmmword_238B8D8F0;
    v8[1] = xmmword_238B8D900;
    v9 = 360;
    do
    {
      if (*(v8 + v4) > v5)
      {
        break;
      }

      ++v4;
    }

    while (v4 != 5);
  }

  else
  {
    v4 = -1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_coolDownTimeInterval
{
  evaluationFinished = self->_evaluationFinished;
  if (!evaluationFinished)
  {
LABEL_4:

    return evaluationFinished;
  }

  if (self->_coolOffStarted)
  {
    v5 = MEMORY[0x277CCABB0];
    [evaluationFinished timeIntervalSinceDate:?];
    evaluationFinished = [v5 numberWithDouble:?];
    v2 = vars8;
    goto LABEL_4;
  }

  evaluationFinished = 0;

  return evaluationFinished;
}

- (BOOL)_isLocationBasedPolicyEvaluation
{
  request = [(LAAnalyticsDTO *)self request];
  policy = [request policy];

  return policy == 1025 || policy == 1028;
}

- (BOOL)_isRatchetArmingEvaluation
{
  request = [(LAAnalyticsDTO *)self request];
  v3 = [request policy] == 1026;

  return v3;
}

- (BOOL)_isRatchetCollapsed
{
  request = [(LAAnalyticsDTO *)self request];
  dtoEnvironment = [request dtoEnvironment];
  ratchetState = [dtoEnvironment ratchetState];
  v5 = [ratchetState rawValue] == 4;

  return v5;
}

- (int64_t)_dtoResultFromLAResult:(id)result error:(id)error locationState:(int64_t)state
{
  v64 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  v10 = errorCopy;
  v11 = *MEMORY[0x277D23E38];
  v12 = *MEMORY[0x277D23E40];
  v14 = *MEMORY[0x277D23E38] == state || v12 == state;
  if (!resultCopy || !errorCopy)
  {
    if (resultCopy | errorCopy)
    {
      if (errorCopy)
      {
        goto LABEL_14;
      }
    }

    else
    {
      request = [(LAAnalyticsDTO *)self request];
      v27 = [request log];

      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        [LAAnalyticsDTO _dtoResultFromLAResult:? error:? locationState:?];
      }
    }

    v28 = [resultCopy objectForKeyedSubscript:&unk_284B71D50];
    bOOLValue = [v28 BOOLValue];

    if (bOOLValue)
    {
      selfCopy9 = self;
      stateCopy9 = state;
      v19 = 0;
      v20 = 24;
      v21 = 1;
    }

    else
    {
      v30 = [resultCopy objectForKeyedSubscript:&unk_284B71D68];
      bOOLValue2 = [v30 BOOLValue];

      if (bOOLValue2)
      {
        selfCopy9 = self;
        stateCopy9 = state;
        v19 = 2;
        v20 = 25;
        v21 = 3;
      }

      else
      {
        if (!resultCopy)
        {
          goto LABEL_46;
        }

        request2 = [(LAAnalyticsDTO *)self request];
        options = [request2 options];
        v34 = [options objectForKeyedSubscript:&unk_284B71D80];
        bOOLValue3 = [v34 BOOLValue];

        if (bOOLValue3)
        {
          if (!v14 && ![(LAAnalyticsDTO *)self state])
          {
            request3 = [(LAAnalyticsDTO *)self request];
            v37 = [request3 log];

            if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
            {
              [LAAnalyticsDTO _dtoResultFromLAResult:? error:? locationState:?];
            }
          }

          selfCopy9 = self;
          stateCopy9 = state;
          v19 = 4;
          v20 = 26;
          v21 = 5;
        }

        else
        {
LABEL_46:
          request4 = [(LAAnalyticsDTO *)self request];
          v39 = [request4 log];

          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            [LAAnalyticsDTO _dtoResultFromLAResult:? error:? locationState:?];
          }

          selfCopy9 = self;
          stateCopy9 = state;
          v19 = 6;
          v20 = 27;
          v21 = 7;
        }
      }
    }

    goto LABEL_58;
  }

  request5 = [(LAAnalyticsDTO *)self request];
  v16 = [request5 log];

  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    request6 = [(LAAnalyticsDTO *)self request];
    dtoRequestIdentifier = [request6 dtoRequestIdentifier];
    request7 = [(LAAnalyticsDTO *)self request];
    policy = [request7 policy];
    request8 = [(LAAnalyticsDTO *)self request];
    options2 = [request8 options];
    request9 = [(LAAnalyticsDTO *)self request];
    [request9 dtoEnvironment];
    *buf = 138544642;
    v53 = dtoRequestIdentifier;
    v54 = 1024;
    v55 = policy;
    v56 = 2114;
    v57 = options2;
    v59 = v58 = 2114;
    v41 = v59;
    v60 = 2114;
    v61 = resultCopy;
    v62 = 2114;
    v63 = v10;
    _os_log_fault_impl(&dword_238B7F000, v16, OS_LOG_TYPE_FAULT, "Both result and error were set by client %{public}@ for policy %d with options %{public}@ in DTO environment %{public}@: %{public}@, %{public}@", buf, 0x3Au);
  }

LABEL_14:
  if ([MEMORY[0x277CD47F0] error:v10 hasCodeFromArray:&unk_284B71E70])
  {
    selfCopy9 = self;
    stateCopy9 = state;
    v19 = 10;
    v20 = 29;
    v21 = 11;
LABEL_58:
    v25 = [(LAAnalyticsDTO *)selfCopy9 _eventForLocationState:stateCopy9 familiarLocationEvent:v19 familiarLocationWithoutFullConfirmationEvent:v20 unfamiliarLocationEvent:v21];
    goto LABEL_59;
  }

  if ([MEMORY[0x277CD47F0] error:v10 hasCode:-1 subcode:6])
  {
    v22 = 17;
    if (v12 == state)
    {
      v22 = 28;
    }

    v23 = v11 == state;
    v24 = 8;
    goto LABEL_20;
  }

  if ([MEMORY[0x277CD47F0] error:v10 hasCode:-1 subcode:30])
  {
    selfCopy9 = self;
    stateCopy9 = state;
    v19 = 22;
    v20 = 33;
    v21 = 23;
    goto LABEL_58;
  }

  if (![MEMORY[0x277CD47F0] error:v10 hasCode:-1])
  {
    if ([MEMORY[0x277CD47F0] error:v10 hasCode:-9])
    {
      selfCopy9 = self;
      stateCopy9 = state;
      v19 = 18;
      v20 = 31;
      v21 = 19;
    }

    else if ([MEMORY[0x277CD47F0] error:v10 hasCode:-4])
    {
      selfCopy9 = self;
      stateCopy9 = state;
      v19 = 20;
      v20 = 32;
      v21 = 21;
    }

    else
    {
      if ([MEMORY[0x277CD47F0] error:v10 hasCode:-1001])
      {
        request10 = [(LAAnalyticsDTO *)self request];
        v43 = [request10 log];

        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          [LAAnalyticsDTO _dtoResultFromLAResult:? error:? locationState:?];
        }
      }

      selfCopy9 = self;
      stateCopy9 = state;
      v19 = 12;
      v20 = 30;
      v21 = 9;
    }

    goto LABEL_58;
  }

  if (v11 == state)
  {
    v25 = 8;
  }

  else
  {
    v25 = 28;
  }

  if (!v14)
  {
    v23 = self->_coolOffStarted == 0;
    v22 = 15;
    v24 = 13;
LABEL_20:
    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = v22;
    }
  }

LABEL_59:

  v44 = *MEMORY[0x277D85DE8];
  return v25;
}

- (int64_t)_eventForLocationState:(int64_t)state familiarLocationEvent:(int64_t)event familiarLocationWithoutFullConfirmationEvent:(int64_t)confirmationEvent unfamiliarLocationEvent:(int64_t)locationEvent
{
  if (*MEMORY[0x277D23E40] != state)
  {
    confirmationEvent = locationEvent;
  }

  if (*MEMORY[0x277D23E38] == state)
  {
    return event;
  }

  else
  {
    return confirmationEvent;
  }
}

- (EvaluationRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

- (void)initWithEvaluationRequest:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_238B7F000, a2, OS_LOG_TYPE_FAULT, "%{public}@ is missing LACDTOService dependency", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __41__LAAnalyticsDTO__checkStatusWithReason___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_238B7F000, a2, OS_LOG_TYPE_ERROR, "Failed to query the environment: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_dtoResultFromLAResult:(void *)a1 error:locationState:.cold.1(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a1 request];
  v3 = [v2 dtoRequestIdentifier];
  v4 = [a1 request];
  [v4 policy];
  v5 = [a1 request];
  v6 = [v5 options];
  v7 = [a1 request];
  v8 = [v7 dtoEnvironment];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v9, v10, v11, v12, v13, 0x26u);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_dtoResultFromLAResult:(void *)a1 error:locationState:.cold.2(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a1 request];
  v3 = [v2 dtoRequestIdentifier];
  v4 = [a1 request];
  [v4 policy];
  v5 = [a1 request];
  v6 = [v5 options];
  v7 = [a1 request];
  v8 = [v7 dtoEnvironment];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v9, v10, v11, v12, v13, 0x30u);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_dtoResultFromLAResult:(void *)a1 error:locationState:.cold.3(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a1 request];
  v3 = [v2 dtoRequestIdentifier];
  v4 = [a1 request];
  [v4 policy];
  v5 = [a1 request];
  v6 = [v5 options];
  v7 = [a1 request];
  v8 = [v7 dtoEnvironment];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v9, v10, v11, v12, v13, 0x30u);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_dtoResultFromLAResult:(void *)a1 error:locationState:.cold.4(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a1 request];
  v3 = [v2 dtoRequestIdentifier];
  v4 = [a1 request];
  [v4 policy];
  v5 = [a1 request];
  v6 = [v5 options];
  v7 = [a1 request];
  v8 = [v7 dtoEnvironment];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v9, v10, v11, v12, v13, 0x26u);

  v14 = *MEMORY[0x277D85DE8];
}

@end