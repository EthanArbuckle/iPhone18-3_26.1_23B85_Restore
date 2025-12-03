@interface HKFeatureStatusManager
+ (id)childFeatureStatusManagerWithFeatureAvailabilityProviding:(id)providing featureAvailabilityDataSource:(id)source contextConstraint:(id)constraint;
- (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSource;
- (HKFeatureAvailabilityRequirementEvaluationDataSource)weakDataSource;
- (HKFeatureStatus)_queue_featureStatusWithEvaluationContext:(void *)context requirements:(void *)requirements overrides:(void *)overrides error:;
- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing featureAvailabilityDataSource:(id)source;
- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing featureAvailabilityDataSource:(id)source contextConstraint:(id)constraint;
- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing healthDataSource:(id)source countryCodeSource:(int64_t)codeSource;
- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing healthDataSource:(id)source currentCountryCode:(id)code;
- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store cachingDefaults:(id)defaults;
- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store contextConstraint:(id)constraint;
- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store countryCodeSource:(int64_t)source;
- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store currentCountryCode:(id)code;
- (NSString)description;
- (id)_queue_updateFeatureStatusWithRequestDrivenByObservation:(void *)observation error:;
- (id)_requirementSatisfactionOverrides;
- (id)featureStatusWithError:(id *)error;
- (void)__unregisterForFeatureStatusChanges;
- (void)_notifyObserversWithFeatureStatus:(uint64_t)status;
- (void)_queue_attemptFeatureStatusUpdateDrivenByObservation;
- (void)_queue_registerForFeatureStatusChanges;
- (void)_queue_unregisterForFeatureStatusChanges;
- (void)_registerForRequirementSatisfactionOverrideChangesForRequirements:(id *)requirements;
- (void)_updateOverriddenSatisfactionOfRequirement:(void *)requirement overriddenSatisfaction:;
- (void)_updateSatisfactionOfRequirement:(char)requirement isSatisfied:;
- (void)dataSource;
- (void)dealloc;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion;
- (void)featureAvailabilityProvidingDidUpdateSettings:(id)settings;
- (void)registerObserver:(id)observer queue:(id)queue;
- (void)unregisterObserver:(id)observer;
@end

@implementation HKFeatureStatusManager

- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store currentCountryCode:(id)code
{
  codeCopy = code;
  storeCopy = store;
  v10 = [storeCopy featureAvailabilityProvidingForFeatureIdentifier:identifier];
  v11 = [[HKFixedCurrentCountryCodeProvider alloc] initWithCountryCode:codeCopy];

  v12 = [HKFeatureAvailabilityRequirementEvaluationDataSource dataSourceWithHealthDataSource:storeCopy currentCountryCodeProvider:v11];

  v13 = [(HKFeatureStatusManager *)self initWithFeatureAvailabilityProviding:v10 featureAvailabilityDataSource:v12];
  return v13;
}

- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store countryCodeSource:(int64_t)source
{
  storeCopy = store;
  v9 = [storeCopy featureAvailabilityProvidingForFeatureIdentifier:identifier];
  v10 = [(HKFeatureStatusManager *)self initWithFeatureAvailabilityProviding:v9 healthDataSource:storeCopy countryCodeSource:source];

  return v10;
}

- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store cachingDefaults:(id)defaults
{
  defaultsCopy = defaults;
  storeCopy = store;
  v10 = [storeCopy featureAvailabilityProvidingForFeatureIdentifier:identifier];
  v11 = [[HKFixedCurrentCountryCodeProvider alloc] initWithCountryCode:0];
  v12 = [[HKFeatureOnboardingRecordInaccessibilityCache alloc] initWithCachingDefaults:defaultsCopy];

  v13 = [HKFeatureAvailabilityRequirementEvaluationDataSource dataSourceWithHealthDataSource:storeCopy currentCountryCodeProvider:v11 onboardingRecordFallbackProvider:v12];

  v14 = [(HKFeatureStatusManager *)self initWithFeatureAvailabilityProviding:v10 featureAvailabilityDataSource:v13];
  return v14;
}

- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing healthDataSource:(id)source currentCountryCode:(id)code
{
  codeCopy = code;
  sourceCopy = source;
  providingCopy = providing;
  v11 = [[HKFixedCurrentCountryCodeProvider alloc] initWithCountryCode:codeCopy];

  v12 = [HKFeatureAvailabilityRequirementEvaluationDataSource dataSourceWithHealthDataSource:sourceCopy currentCountryCodeProvider:v11];

  v13 = [(HKFeatureStatusManager *)self initWithFeatureAvailabilityProviding:providingCopy featureAvailabilityDataSource:v12];
  return v13;
}

- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing healthDataSource:(id)source countryCodeSource:(int64_t)codeSource
{
  providingCopy = providing;
  sourceCopy = source;
  v11 = sourceCopy;
  if (codeSource == 1)
  {
    v13 = HKPreferredRegulatoryDomainProvider();
    v14 = [HKFeatureAvailabilityRequirementEvaluationDataSource dataSourceWithHealthDataSource:v11 currentCountryCodeProvider:v13];
  }

  else
  {
    if (codeSource)
    {
LABEL_9:
      [HKFeatureStatusManager initWithFeatureAvailabilityProviding:a2 healthDataSource:self countryCodeSource:?];
      v15 = 0;
      goto LABEL_8;
    }

    sharedRequirementEvaluationDataSource = [sourceCopy sharedRequirementEvaluationDataSource];
    v13 = sharedRequirementEvaluationDataSource;
    if (sharedRequirementEvaluationDataSource)
    {
      v14 = sharedRequirementEvaluationDataSource;
      v13 = v14;
    }

    else
    {
      v14 = [HKFeatureAvailabilityRequirementEvaluationDataSource dataSourceWithHealthDataSource:v11];
    }
  }

  v15 = v14;

  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_8:
  v16 = [(HKFeatureStatusManager *)self initWithFeatureAvailabilityProviding:providingCopy featureAvailabilityDataSource:v15];

  return v16;
}

- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing featureAvailabilityDataSource:(id)source
{
  sourceCopy = source;
  providingCopy = providing;
  v8 = +[HKFeatureAvailabilityContextConstraint allContexts];
  v9 = [(HKFeatureStatusManager *)self initWithFeatureAvailabilityProviding:providingCopy featureAvailabilityDataSource:sourceCopy contextConstraint:v8];

  return v9;
}

- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store contextConstraint:(id)constraint
{
  constraintCopy = constraint;
  storeCopy = store;
  v10 = [storeCopy featureAvailabilityProvidingForFeatureIdentifier:identifier];
  v11 = [HKFeatureAvailabilityRequirementEvaluationDataSource dataSourceWithHealthDataSource:storeCopy];

  v12 = [(HKFeatureStatusManager *)self initWithFeatureAvailabilityProviding:v10 featureAvailabilityDataSource:v11 contextConstraint:constraintCopy];
  return v12;
}

- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing featureAvailabilityDataSource:(id)source contextConstraint:(id)constraint
{
  providingCopy = providing;
  sourceCopy = source;
  constraintCopy = constraint;
  v31.receiver = self;
  v31.super_class = HKFeatureStatusManager;
  v12 = [(HKFeatureStatusManager *)&v31 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_featureAvailabilityProviding, providing);
    objc_storeStrong(&v13->_strongDataSource, source);
    objc_storeStrong(&v13->_contextConstraint, constraint);
    v14 = [HKObserverSet alloc];
    v15 = [(HKFeatureStatusManager *)v13 description];
    v16 = HKLogInfrastructure();
    v17 = [(HKObserverSet *)v14 initWithName:v15 loggingCategory:v16];
    observers = v13->_observers;
    v13->_observers = v17;

    featureIdentifier = [providingCopy featureIdentifier];
    v20 = HKCreateSerialDispatchQueue(v13, featureIdentifier);
    queue = v13->_queue;
    v13->_queue = v20;

    featureAvailabilityProvidingDataSource = [sourceCopy featureAvailabilityProvidingDataSource];
    [featureAvailabilityProvidingDataSource setKnownFeatureAvailabilityProviding:v13->_featureAvailabilityProviding];

    objc_initWeak(&location, v13);
    v23 = [_HKDelayedOperation alloc];
    v24 = v13->_queue;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __111__HKFeatureStatusManager_initWithFeatureAvailabilityProviding_featureAvailabilityDataSource_contextConstraint___block_invoke;
    v28[3] = &unk_1E73782E8;
    objc_copyWeak(&v29, &location);
    v25 = [(_HKDelayedOperation *)v23 initWithMode:1 queue:v24 delay:v28 block:0.1];
    notifyObserversOperation = v13->_notifyObserversOperation;
    v13->_notifyObserversOperation = v25;

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __111__HKFeatureStatusManager_initWithFeatureAvailabilityProviding_featureAvailabilityDataSource_contextConstraint___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 9);
    if (v3)
    {
      [(HKFeatureStatusManager *)WeakRetained _notifyObserversWithFeatureStatus:v3];
    }

    else
    {
      _HKInitializeLogging();
      v4 = HKLogInfrastructure();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __111__HKFeatureStatusManager_initWithFeatureAvailabilityProviding_featureAvailabilityDataSource_contextConstraint___block_invoke_cold_1(v2, v4);
      }
    }
  }
}

+ (id)childFeatureStatusManagerWithFeatureAvailabilityProviding:(id)providing featureAvailabilityDataSource:(id)source contextConstraint:(id)constraint
{
  constraintCopy = constraint;
  sourceCopy = source;
  providingCopy = providing;
  v11 = [[self alloc] initWithFeatureAvailabilityProviding:providingCopy featureAvailabilityDataSource:sourceCopy contextConstraint:constraintCopy];

  v12 = *(v11 + 32);
  *(v11 + 32) = 0;

  objc_storeWeak((v11 + 24), sourceCopy);

  return v11;
}

- (void)dealloc
{
  if (self->_isObserving)
  {
    [(HKFeatureStatusManager *)self __unregisterForFeatureStatusChanges];
  }

  v3.receiver = self;
  v3.super_class = HKFeatureStatusManager;
  [(HKFeatureStatusManager *)&v3 dealloc];
}

- (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_weakDataSource);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_weakDataSource);
  }

  else
  {
    strongDataSource = self->_strongDataSource;
    if (!strongDataSource)
    {
      [(HKFeatureStatusManager *)a2 dataSource:&self->_strongDataSource];
      strongDataSource = v8;
    }

    v5 = strongDataSource;
  }

  return v5;
}

- (id)featureStatusWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__HKFeatureStatusManager_featureStatusWithError___block_invoke;
  block[3] = &unk_1E7378310;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v18;
  dispatch_sync(queue, block);
  v5 = v13[5];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = v19[5];
    v8 = v7;
    if (v7)
    {
      if (error)
      {
        v9 = v7;
        *error = v8;
      }

      else
      {
        _HKLogDroppedError(v7);
      }
    }
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v5;
}

void __49__HKFeatureStatusManager_featureStatusWithError___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);

  if (v3)
  {
    v4 = HKLogInfrastructure();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[4];
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_INFO, "[%{public}@] Updating feature status for client request", buf, 0xCu);
    }
  }

  v6 = a1[4];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [(HKFeatureStatusManager *)v6 _queue_updateFeatureStatusWithRequestDrivenByObservation:&obj error:?];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_queue_updateFeatureStatusWithRequestDrivenByObservation:(void *)observation error:
{
  v40 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v35 = 0;
    v36[0] = &v35;
    v36[1] = 0x3032000000;
    v36[2] = __Block_byref_object_copy__1;
    v36[3] = __Block_byref_object_dispose__1;
    v37 = 0;
    v7 = (self + 80);
    v6 = *(self + 80);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = *(self + 16);
      obj = 0;
      v8 = [v9 featureAvailabilityRequirementsWithError:&obj];
      objc_storeStrong(&v37, obj);
    }

    v10 = [(HKFeatureAvailabilityRequirementSet *)v8 copyApplyingContextConstraint:?];

    if (v10)
    {
      _requirementSatisfactionOverrides = [(HKFeatureStatusManager *)self _requirementSatisfactionOverrides];
      dataSource = [self dataSource];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __89__HKFeatureStatusManager__queue_updateFeatureStatusWithRequestDrivenByObservation_error___block_invoke;
      v29[3] = &unk_1E7378360;
      v33 = &v35;
      v30 = v10;
      selfCopy = self;
      v13 = _requirementSatisfactionOverrides;
      v32 = v13;
      v14 = [dataSource performLocalEvaluation:v29];

      if (v14)
      {
        if (!*v7)
        {
          objc_storeStrong(v7, v10);
        }

        v15 = *(self + 72);
        if (v15)
        {
          a2 = 0;
          v16 = [v15 isEqual:v14] ^ 1;
        }

        else
        {
          v16 = 0;
        }

        if ((a2 | v16))
        {
          _HKInitializeLogging();
          v23 = HKLogInfrastructure();
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);

          if (v24)
          {
            v25 = HKLogInfrastructure();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              selfCopy2 = self;
              _os_log_impl(&dword_19197B000, v25, OS_LOG_TYPE_INFO, "[%{public}@] Feature status did change", buf, 0xCu);
            }
          }

          objc_storeStrong((self + 72), v14);
          [*(self + 64) execute];
        }

        else
        {
          objc_storeStrong((self + 72), v14);
        }

        v26 = v14;
      }

      else
      {
        v20 = *(v36[0] + 40);
        v21 = v20;
        if (v20)
        {
          if (observation)
          {
            v22 = v20;
            *observation = v21;
          }

          else
          {
            _HKLogDroppedError(v20);
          }
        }
      }

      goto LABEL_33;
    }

    _HKInitializeLogging();
    v17 = HKLogInfrastructure();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(HKFeatureStatusManager *)self _queue_updateFeatureStatusWithRequestDrivenByObservation:v36 error:v17];
    }

    v18 = *(v36[0] + 40);
    v13 = v18;
    if (v18)
    {
      if (observation)
      {
        v19 = v18;
        v14 = 0;
        *observation = v13;
LABEL_33:

        _Block_object_dispose(&v35, 8);
        goto LABEL_34;
      }

      _HKLogDroppedError(v18);
    }

    v14 = 0;
    goto LABEL_33;
  }

  v14 = 0;
LABEL_34:
  v27 = *MEMORY[0x1E69E9840];

  return v14;
}

id __89__HKFeatureStatusManager__queue_updateFeatureStatusWithRequestDrivenByObservation_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 healthDataRequirementDataSource];
  v5 = *(*(a1 + 56) + 8);
  v14 = *(v5 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__HKFeatureStatusManager__queue_updateFeatureStatusWithRequestDrivenByObservation_error___block_invoke_2;
  v10[3] = &unk_1E7378338;
  v6 = *(a1 + 32);
  v10[4] = *(a1 + 40);
  v11 = v3;
  v12 = v6;
  v13 = *(a1 + 48);
  v7 = v3;
  v8 = [v4 withPrewarmedEvaluationOfRequirementSet:v6 error:&v14 handler:v10];
  objc_storeStrong((v5 + 40), v14);

  return v8;
}

- (void)registerObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  observers = self->_observers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__HKFeatureStatusManager_registerObserver_queue___block_invoke;
  v11[3] = &unk_1E7378388;
  v11[4] = &v12;
  [(HKObserverSet *)observers registerObserver:observerCopy queue:queueCopy runIfFirstObserver:v11];
  if (*(v13 + 24) == 1)
  {
    queue = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__HKFeatureStatusManager_registerObserver_queue___block_invoke_2;
    v10[3] = &unk_1E7376780;
    v10[4] = self;
    dispatch_sync(queue, v10);
  }

  _Block_object_dispose(&v12, 8);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  observers = self->_observers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__HKFeatureStatusManager_unregisterObserver___block_invoke;
  v8[3] = &unk_1E7378388;
  v8[4] = &v9;
  [(HKObserverSet *)observers unregisterObserver:observerCopy runIfLastObserver:v8];
  if (*(v10 + 24) == 1)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__HKFeatureStatusManager_unregisterObserver___block_invoke_2;
    v7[3] = &unk_1E7376780;
    v7[4] = self;
    dispatch_sync(queue, v7);
  }

  _Block_object_dispose(&v9, 8);
}

void __92__HKFeatureStatusManager__registerForRequirementSatisfactionOverrideChangesForRequirements___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(HKFeatureStatusManager *)v5 _updateOverriddenSatisfactionOfRequirement:v6 overriddenSatisfaction:?];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogInfrastructure();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [objc_opt_class() requirementIdentifier];
      v11 = 138543874;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      v15 = 2114;
      v16 = v10;
      _os_log_error_impl(&dword_19197B000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Ignoring observed override value of %{public}@ for %{public}@; invalid type", &v11, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  featureIdentifier = [(HKFeatureAvailabilityProviding *)self->_featureAvailabilityProviding featureIdentifier];
  v6 = [v3 stringWithFormat:@"<%@:%@:%p>", v4, featureIdentifier, self];

  return v6;
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion
{
  v10 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = HKLogInfrastructure();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_INFO, "[%{public}@] Updating feature status for onboarding completion update", &v8, 0xCu);
    }
  }

  [(HKFeatureStatusManager *)self _queue_attemptFeatureStatusUpdateDrivenByObservation];
  v7 = *MEMORY[0x1E69E9840];
}

void __71__HKFeatureStatusManager__updateSatisfactionOfRequirement_isSatisfied___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = *(v2 + 72);
  if (v4)
  {
    v5 = *(v2 + 80);
    if (v5)
    {
      v6 = [v4 copyUpdatingRequirement:*(a1 + 48) fromRequirements:v5 isSatisfied:*(a1 + 56)];
      if ([v6 isEqual:*(*(a1 + 32) + 72)])
      {
LABEL_18:

        goto LABEL_19;
      }

      if (HKFeatureAvailabilityRequirementIdentifierReflectsSensitiveData(*(a1 + 40)) && (HKShowSensitiveLogItems() & 1) == 0)
      {
        _HKInitializeLogging();
        v16 = HKLogInfrastructure();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

        if (v17)
        {
          v9 = HKLogInfrastructure();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v18 = *v3;
            v20 = 138543362;
            v21 = v18;
            v13 = "[%{public}@] Requirement satisfaction changed; updating feature status";
            v14 = v9;
            v15 = 12;
LABEL_15:
            _os_log_impl(&dword_19197B000, v14, OS_LOG_TYPE_INFO, v13, &v20, v15);
          }

LABEL_16:
        }
      }

      else
      {
        _HKInitializeLogging();
        v7 = HKLogInfrastructure();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

        if (v8)
        {
          v9 = HKLogInfrastructure();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = *(a1 + 32);
            v11 = *(a1 + 40);
            v12 = @"is NOT";
            if (*(a1 + 56))
            {
              v12 = @"is";
            }

            v20 = 138543874;
            v21 = v10;
            v22 = 2114;
            v23 = v11;
            v24 = 2114;
            v25 = v12;
            v13 = "[%{public}@] %{public}@ %{public}@ satisfied; updating feature status";
            v14 = v9;
            v15 = 32;
            goto LABEL_15;
          }

          goto LABEL_16;
        }
      }

      objc_storeStrong((*v3 + 72), v6);
      [*(*v3 + 64) execute];
      goto LABEL_18;
    }
  }

  __71__HKFeatureStatusManager__updateSatisfactionOfRequirement_isSatisfied___block_invoke_cold_1(a1, v3);
LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
}

- (HKFeatureAvailabilityRequirementEvaluationDataSource)weakDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_weakDataSource);

  return WeakRetained;
}

- (void)_notifyObserversWithFeatureStatus:(uint64_t)status
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (status)
  {
    _HKInitializeLogging();
    v5 = HKLogInfrastructure();
    v6 = OUTLINED_FUNCTION_6(v5);

    if (v6)
    {
      v7 = HKLogInfrastructure();
      if (OUTLINED_FUNCTION_6(v7))
      {
        v8 = MEMORY[0x1E696AD98];
        allObservers = [*(status + 48) allObservers];
        v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(allObservers, "count")}];
        *buf = 138543618;
        statusCopy = status;
        v17 = 2114;
        v18 = v10;
        _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_INFO, "[%{public}@] Notifying %{public}@ observers for feature status update", buf, 0x16u);
      }
    }

    v11 = *(status + 48);
    OUTLINED_FUNCTION_0_2();
    v13[1] = 3221225472;
    v13[2] = __60__HKFeatureStatusManager__notifyObserversWithFeatureStatus___block_invoke;
    v13[3] = &unk_1E73783D8;
    v13[4] = status;
    v14 = v4;
    [v11 notifyObservers:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)__unregisterForFeatureStatusChanges
{
  v36 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [*(self + 16) unregisterObserver:self];
    WeakRetained = objc_loadWeakRetained((self + 24));
    v3 = WeakRetained;
    if (!WeakRetained)
    {
      v3 = *(self + 32);
    }

    v4 = v3;

    v5 = *(self + 80);
    if (v5 && v4)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      allRequirements = [(HKFeatureAvailabilityRequirementSet *)v5 allRequirements];
      v7 = [allRequirements countByEnumeratingWithState:&v28 objects:v35 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(allRequirements);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            requirementSatisfactionOverridesDataSource = [v4 requirementSatisfactionOverridesDataSource];
            featureIdentifier = [*(self + 16) featureIdentifier];
            [requirementSatisfactionOverridesDataSource unregisterObserver:self forFeature:featureIdentifier requirement:v11];
          }

          v8 = [allRequirements countByEnumeratingWithState:&v28 objects:v35 count:16];
        }

        while (v8);
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      allObservableRequirements = [(HKFeatureAvailabilityRequirementSet *)*(self + 80) allObservableRequirements];
      v15 = [allObservableRequirements countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(allObservableRequirements);
            }

            [*(*(&v24 + 1) + 8 * j) unregisterObserver:self fromDataSource:{v4, v24}];
          }

          v16 = [allObservableRequirements countByEnumeratingWithState:&v24 objects:v34 count:16];
        }

        while (v16);
      }

      WeakRetained = [self dataSource];
      healthDataRequirementDataSource = [WeakRetained healthDataRequirementDataSource];
      [healthDataRequirementDataSource unregisterObserver:self];
    }

    *(self + 8) = 0;
    _HKInitializeLogging();
    v20 = HKLogInfrastructure();
    v21 = OUTLINED_FUNCTION_6(v20);

    if (v21)
    {
      v22 = HKLogInfrastructure();
      if (OUTLINED_FUNCTION_6(v22))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_19197B000, WeakRetained, OS_LOG_TYPE_INFO, "[%{public}@] Unregistered for feature status changes", buf, 0xCu);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_requirementSatisfactionOverrides
{
  selfCopy = self;
  if (self)
  {
    dataSource = [self dataSource];
    featureIdentifier = [selfCopy[2] featureIdentifier];
    selfCopy = [dataSource requirementSatisfactionOverridesForFeatureWithIdentifier:featureIdentifier];
  }

  return selfCopy;
}

- (HKFeatureStatus)_queue_featureStatusWithEvaluationContext:(void *)context requirements:(void *)requirements overrides:(void *)overrides error:
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a2;
  contextCopy = context;
  requirementsCopy = requirements;
  if (self)
  {
    featureIdentifier = [(NSDictionary *)self->_requirementsEvaluationByContext featureIdentifier];
    v28 = 0;
    v13 = [v9 onboardingRecordForFeatureWithIdentifier:featureIdentifier error:&v28];
    v14 = v28;

    if (v13)
    {
      v27 = v14;
      v15 = [(HKFeatureAvailabilityRequirementSet *)contextCopy evaluationByContextWithDataSource:v9 overrides:requirementsCopy error:&v27];
      v16 = v27;

      if (v15)
      {
        self = [[HKFeatureStatus alloc] initWithOnboardingRecord:v13 requirementsEvaluationByContext:v15];
      }

      else
      {
        _HKInitializeLogging();
        v20 = HKLogInfrastructure();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_4_0();
          v30 = v16;
          OUTLINED_FUNCTION_5(&dword_19197B000, v20, v26, "[%{public}@]: Error evaluating requirements by context: %{public}@", v29);
        }

        v21 = v16;
        v16 = v21;
        if (v21)
        {
          if (overrides)
          {
            v22 = v21;
            *overrides = v16;
          }

          else
          {
            _HKLogDroppedError(v21);
          }
        }

        self = 0;
      }

      goto LABEL_20;
    }

    _HKInitializeLogging();
    v17 = HKLogInfrastructure();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_4_0();
      v30 = v14;
      OUTLINED_FUNCTION_5(&dword_19197B000, v17, v25, "[%{public}@]: Error retrieving onboarding record: %{public}@", v29);
    }

    v18 = v14;
    v15 = v18;
    if (v18)
    {
      if (overrides)
      {
        v19 = v18;
        self = 0;
        *overrides = v15;
LABEL_17:
        v16 = v15;
LABEL_20:

        goto LABEL_21;
      }

      _HKLogDroppedError(v18);
    }

    self = 0;
    goto LABEL_17;
  }

LABEL_21:

  v23 = *MEMORY[0x1E69E9840];

  return self;
}

- (void)_queue_registerForFeatureStatusChanges
{
  v29 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [*(self + 16) registerObserver:self queue:*(self + 56)];
    v2 = *(self + 80);
    if (v2)
    {
      v3 = v2;
      v4 = 0;
    }

    else
    {
      v5 = *(self + 16);
      v23 = 0;
      v3 = [v5 featureAvailabilityRequirementsWithError:&v23];
      v4 = v23;
    }

    v6 = [(HKFeatureAvailabilityRequirementSet *)v3 copyApplyingContextConstraint:?];

    if (v6)
    {
      if (!*(self + 80))
      {
        objc_storeStrong((self + 80), v6);
      }

      [(HKFeatureStatusManager *)self _registerForRequirementSatisfactionOverrideChangesForRequirements:v6];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      allObservableRequirements = [(HKFeatureAvailabilityRequirementSet *)v6 allObservableRequirements];
      v10 = [allObservableRequirements countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(allObservableRequirements);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            dataSource = [self dataSource];
            [v14 registerObserver:self forDataSource:dataSource];
          }

          v11 = [allObservableRequirements countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v11);
      }

      dataSource2 = [self dataSource];
      healthDataRequirementDataSource = [dataSource2 healthDataRequirementDataSource];
      [healthDataRequirementDataSource registerObserver:self forRequirementSet:v6 queue:0];

      *(self + 8) = 1;
      _HKInitializeLogging();
      v17 = HKLogInfrastructure();
      LODWORD(healthDataRequirementDataSource) = OUTLINED_FUNCTION_7(v17);

      if (!healthDataRequirementDataSource)
      {
        goto LABEL_9;
      }

      v18 = HKLogInfrastructure();
      if (OUTLINED_FUNCTION_7(v18))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_19197B000, dataSource2, OS_LOG_TYPE_INFO, "[%{public}@] Registered for feature status changes", buf, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging();
      dataSource2 = HKLogInfrastructure();
      if (os_log_type_enabled(dataSource2, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v27 = 2114;
        v28 = v4;
        _os_log_fault_impl(&dword_19197B000, dataSource2, OS_LOG_TYPE_FAULT, "[%{public}@]: Error determining feature requirements during registration: %{public}@", buf, 0x16u);
      }
    }

LABEL_9:
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_queue_unregisterForFeatureStatusChanges
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));

    [(HKFeatureStatusManager *)self __unregisterForFeatureStatusChanges];
  }
}

- (void)_registerForRequirementSatisfactionOverrideChangesForRequirements:(id *)requirements
{
  v19 = *MEMORY[0x1E69E9840];
  if (requirements)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    obj = [(HKFeatureAvailabilityRequirementSet *)a2 allRequirements];
    v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v15;
      do
      {
        v6 = 0;
        do
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v14 + 1) + 8 * v6);
          dataSource = [requirements dataSource];
          requirementSatisfactionOverridesDataSource = [dataSource requirementSatisfactionOverridesDataSource];
          featureIdentifier = [requirements[2] featureIdentifier];
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __92__HKFeatureStatusManager__registerForRequirementSatisfactionOverrideChangesForRequirements___block_invoke;
          v13[3] = &unk_1E73783B0;
          v13[4] = v7;
          [requirementSatisfactionOverridesDataSource registerObserver:requirements forFeature:featureIdentifier requirement:v7 newValueHandler:v13];

          ++v6;
        }

        while (v4 != v6);
        v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v4);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_updateOverriddenSatisfactionOfRequirement:(void *)requirement overriddenSatisfaction:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  requirementCopy = requirement;
  if (self)
  {
    requirementIdentifier = [objc_opt_class() requirementIdentifier];
    if (requirementCopy)
    {
      bOOLValue = [requirementCopy BOOLValue];
      _HKInitializeLogging();
      v11 = HKLogInfrastructure();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

      if (v12)
      {
        v13 = HKLogInfrastructure();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = @"is NOT";
          *buf = 138543874;
          selfCopy = self;
          v19 = 2114;
          if (bOOLValue)
          {
            v14 = @"is";
          }

          v20 = requirementIdentifier;
          v21 = 2114;
          v22 = v14;
          _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_INFO, "[%{public}@] Override: %{public}@ %{public}@ satisfied; updating feature status", buf, 0x20u);
        }
      }

      [(HKFeatureStatusManager *)self _updateSatisfactionOfRequirement:v5 isSatisfied:bOOLValue];
    }

    else
    {
      v8 = *(self + 56);
      OUTLINED_FUNCTION_0_2();
      v15[1] = 3221225472;
      v15[2] = __92__HKFeatureStatusManager__updateOverriddenSatisfactionOfRequirement_overriddenSatisfaction___block_invoke;
      v15[3] = &unk_1E7378400;
      v15[4] = self;
      v16 = requirementIdentifier;
      dispatch_sync(v8, v15);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_queue_attemptFeatureStatusUpdateDrivenByObservation
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v7 = 0;
    v2 = [(HKFeatureStatusManager *)self _queue_updateFeatureStatusWithRequestDrivenByObservation:&v7 error:?];
    v3 = v7;
    if (!v2)
    {
      _HKInitializeLogging();
      v4 = HKLogInfrastructure();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v8 = 138543618;
        selfCopy = self;
        v10 = 2114;
        v11 = v3;
        OUTLINED_FUNCTION_5(&dword_19197B000, v4, v5, "[%{public}@]: Error attempting to update feature status: %{public}@", &v8);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)featureAvailabilityProvidingDidUpdateSettings:(id)settings
{
  v14 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  v6 = OUTLINED_FUNCTION_2_1(v5);

  if (v6)
  {
    v7 = HKLogInfrastructure();
    if (OUTLINED_FUNCTION_2_1(v7))
    {
      OUTLINED_FUNCTION_1_1();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    }
  }

  [(HKFeatureStatusManager *)self _queue_attemptFeatureStatusUpdateDrivenByObservation];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_updateSatisfactionOfRequirement:(char)requirement isSatisfied:
{
  v5 = a2;
  if (self)
  {
    requirementIdentifier = [objc_opt_class() requirementIdentifier];
    v7 = *(self + 56);
    OUTLINED_FUNCTION_0_2();
    v10[1] = 3221225472;
    v10[2] = __71__HKFeatureStatusManager__updateSatisfactionOfRequirement_isSatisfied___block_invoke;
    v10[3] = &unk_1E7378428;
    v10[4] = self;
    v11 = v8;
    requirementCopy = requirement;
    v12 = v5;
    v9 = requirementIdentifier;
    dispatch_sync(v7, v10);
  }
}

void __92__HKFeatureStatusManager__updateOverriddenSatisfactionOfRequirement_overriddenSatisfaction___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogInfrastructure();
  v4 = OUTLINED_FUNCTION_2_1(v3);

  if (v4)
  {
    v5 = HKLogInfrastructure();
    if (OUTLINED_FUNCTION_2_1(v5))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_1_1();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    }
  }

  [(HKFeatureStatusManager *)*(a1 + 32) _queue_attemptFeatureStatusUpdateDrivenByObservation];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)initWithFeatureAvailabilityProviding:(uint64_t)a1 healthDataSource:(uint64_t)a2 countryCodeSource:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKFeatureStatusManager.m" lineNumber:143 description:@"Unexpected country code source"];
}

void __111__HKFeatureStatusManager_initWithFeatureAvailabilityProviding_featureAvailabilityDataSource_contextConstraint___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 138543362;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_fault_impl(&dword_19197B000, a2, OS_LOG_TYPE_FAULT, "[%{public}@]: Asked to notify observers, but no feature status available", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)dataSource
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HKFeatureStatusManager.m" lineNumber:238 description:{@"No data source for %@ has been retained!", a2}];

  *a4 = *a3;
}

- (void)_queue_updateFeatureStatusWithRequestDrivenByObservation:(NSObject *)a3 error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*a2 + 40);
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  OUTLINED_FUNCTION_5(&dword_19197B000, a3, a3, "[%{public}@]: Error determining feature requirements: %{public}@", &v5);
  v4 = *MEMORY[0x1E69E9840];
}

void __71__HKFeatureStatusManager__updateSatisfactionOfRequirement_isSatisfied___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((HKFeatureAvailabilityRequirementIdentifierReflectsSensitiveData(*(a1 + 40)) & 1) != 0 && (HKShowSensitiveLogItems() & 1) == 0)
  {
    _HKInitializeLogging();
    v16 = HKLogInfrastructure();
    v17 = OUTLINED_FUNCTION_2_1(v16);

    if (v17)
    {
      v18 = HKLogInfrastructure();
      if (OUTLINED_FUNCTION_2_1(v18))
      {
        v20 = *a2;
        OUTLINED_FUNCTION_1_1();
        v15 = 12;
        goto LABEL_9;
      }

LABEL_10:
    }
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogInfrastructure();
    v6 = OUTLINED_FUNCTION_2_1(v5);

    if (v6)
    {
      v7 = HKLogInfrastructure();
      if (OUTLINED_FUNCTION_2_1(v7))
      {
        v8 = *a2;
        v9 = *(a1 + 40);
        *(a1 + 56);
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_1_1();
        v15 = 32;
LABEL_9:
        _os_log_impl(v10, v11, v12, v13, v14, v15);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  [(HKFeatureStatusManager *)*a2 _queue_attemptFeatureStatusUpdateDrivenByObservation];
  v19 = *MEMORY[0x1E69E9840];
}

@end