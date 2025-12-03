@interface HKFeatureAvailabilityStore
+ (id)taskIdentifier;
- (BOOL)_synchronouslyStartObservingWithError:(id *)error;
- (HKFeatureAvailabilityStore)initWithFeatureIdentifier:(id)identifier healthStore:(id)store;
- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error;
- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)error;
- (id)featureAvailabilityRequirementsWithError:(id *)error;
- (id)featureOnboardingRecordWithError:(id *)error;
- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error;
- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)error;
- (id)onboardedCountryCodeSupportedStateWithError:(id *)error;
- (id)onboardingEligibilityForCountryCode:(id)code error:(id *)error;
- (id)pairedFeatureAttributesWithError:(id *)error;
- (id)regionAvailabilityWithError:(id *)error;
- (void)_handleAutomaticProxyReconnection;
- (void)_notifyObserversForOnboardingCompletionUpdate;
- (void)_notifyObserversForSettingsUpdate;
- (void)_startObservingWithActivationHandler:(id)handler;
- (void)client_featureAvailabilityExtensionDidUpdateOnboardingCompletion;
- (void)client_featureAvailabilityProvidingDidUpdateSettings;
- (void)getFeatureOnboardingRecordWithCompletion:(id)completion;
- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)completion;
- (void)registerObserver:(id)observer queue:(id)queue activationHandler:(id)handler;
- (void)removeFeatureSettingValueForKey:(id)key completion:(id)completion;
- (void)resetOnboardingWithCompletion:(id)completion;
- (void)saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5;
- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion;
- (void)setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion;
- (void)setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion;
- (void)setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation HKFeatureAvailabilityStore

- (HKFeatureAvailabilityStore)initWithFeatureIdentifier:(id)identifier healthStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v23.receiver = self;
  v23.super_class = HKFeatureAvailabilityStore;
  v9 = [(HKFeatureAvailabilityStore *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureIdentifier, identifier);
    v11 = [HKObserverSet alloc];
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKFeatureAvailabilityStore:%@", identifierCopy];
    v13 = HKLogInfrastructure();
    v14 = [(HKObserverSet *)v11 initWithName:identifierCopy loggingCategory:v13];
    observers = v10->_observers;
    v10->_observers = v14;

    v16 = [HKTaskServerProxyProvider alloc];
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v19 = [(HKTaskServerProxyProvider *)v16 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v10 taskUUID:uUID];
    proxyProvider = v10->_proxyProvider;
    v10->_proxyProvider = v19;

    [(HKProxyProvider *)v10->_proxyProvider setShouldRetryOnInterruption:0];
    v21 = [[HKFeatureAvailabilityStoreServerConfiguration alloc] initWithFeatureIdentifier:identifierCopy];
    [(HKTaskServerProxyProvider *)v10->_proxyProvider setTaskConfiguration:v21];
  }

  return v10;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)featureOnboardingRecordWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__42;
  v22 = __Block_byref_object_dispose__42;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__42;
  v16 = __Block_byref_object_dispose__42;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__HKFeatureAvailabilityStore_featureOnboardingRecordWithError___block_invoke;
  v11[3] = &unk_1E7381B68;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__HKFeatureAvailabilityStore_featureOnboardingRecordWithError___block_invoke_3;
  v10[3] = &unk_1E7378838;
  v10[4] = &v12;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError(v5);
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __63__HKFeatureAvailabilityStore_featureOnboardingRecordWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__HKFeatureAvailabilityStore_featureOnboardingRecordWithError___block_invoke_2;
  v3[3] = &unk_1E7381B40;
  v4 = *(a1 + 32);
  return [a2 remote_getFeatureOnboardingRecordWithCompletion:v3];
}

void __63__HKFeatureAvailabilityStore_featureOnboardingRecordWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)getFeatureOnboardingRecordWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__HKFeatureAvailabilityStore_getFeatureOnboardingRecordWithCompletion___block_invoke;
  v9[3] = &unk_1E7381B90;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__HKFeatureAvailabilityStore_getFeatureOnboardingRecordWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__42;
  v22 = __Block_byref_object_dispose__42;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__42;
  v16 = __Block_byref_object_dispose__42;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__HKFeatureAvailabilityStore_isFeatureCapabilitySupportedOnActivePairedDeviceWithError___block_invoke;
  v11[3] = &unk_1E7381B68;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__HKFeatureAvailabilityStore_isFeatureCapabilitySupportedOnActivePairedDeviceWithError___block_invoke_3;
  v10[3] = &unk_1E7378838;
  v10[4] = &v12;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError(v5);
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __88__HKFeatureAvailabilityStore_isFeatureCapabilitySupportedOnActivePairedDeviceWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __88__HKFeatureAvailabilityStore_isFeatureCapabilitySupportedOnActivePairedDeviceWithError___block_invoke_2;
  v3[3] = &unk_1E73809C8;
  v4 = *(a1 + 32);
  return [a2 remote_getIsFeatureCapabilitySupportedOnActivePairedDeviceWithCompletion:v3];
}

void __88__HKFeatureAvailabilityStore_isFeatureCapabilitySupportedOnActivePairedDeviceWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error
{
  codeCopy = code;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__42;
  v29 = __Block_byref_object_dispose__42;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__42;
  v23 = __Block_byref_object_dispose__42;
  v24 = 0;
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__HKFeatureAvailabilityStore_canCompleteOnboardingForCountryCode_error___block_invoke;
  v15[3] = &unk_1E7381BB8;
  v8 = codeCopy;
  v16 = v8;
  v17 = &v25;
  v18 = &v19;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__HKFeatureAvailabilityStore_canCompleteOnboardingForCountryCode_error___block_invoke_3;
  v14[3] = &unk_1E7378838;
  v14[4] = &v19;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v15 errorHandler:v14];
  v9 = v20[5];
  v10 = v9;
  if (v9)
  {
    if (error)
    {
      v11 = v9;
      *error = v10;
    }

    else
    {
      _HKLogDroppedError(v9);
    }
  }

  v12 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v12;
}

uint64_t __72__HKFeatureAvailabilityStore_canCompleteOnboardingForCountryCode_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__HKFeatureAvailabilityStore_canCompleteOnboardingForCountryCode_error___block_invoke_2;
  v4[3] = &unk_1E73809C8;
  v5 = *(a1 + 40);
  return [a2 remote_canCompleteOnboardingForCountryCode:v2 completion:v4];
}

void __72__HKFeatureAvailabilityStore_canCompleteOnboardingForCountryCode_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)onboardingEligibilityForCountryCode:(id)code error:(id *)error
{
  codeCopy = code;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__42;
  v29 = __Block_byref_object_dispose__42;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__42;
  v23 = __Block_byref_object_dispose__42;
  v24 = 0;
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__HKFeatureAvailabilityStore_onboardingEligibilityForCountryCode_error___block_invoke;
  v15[3] = &unk_1E7381BB8;
  v8 = codeCopy;
  v16 = v8;
  v17 = &v25;
  v18 = &v19;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__HKFeatureAvailabilityStore_onboardingEligibilityForCountryCode_error___block_invoke_3;
  v14[3] = &unk_1E7378838;
  v14[4] = &v19;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v15 errorHandler:v14];
  v9 = v20[5];
  v10 = v9;
  if (v9)
  {
    if (error)
    {
      v11 = v9;
      *error = v10;
    }

    else
    {
      _HKLogDroppedError(v9);
    }
  }

  v12 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v12;
}

uint64_t __72__HKFeatureAvailabilityStore_onboardingEligibilityForCountryCode_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__HKFeatureAvailabilityStore_onboardingEligibilityForCountryCode_error___block_invoke_2;
  v4[3] = &unk_1E7381BE0;
  v5 = *(a1 + 40);
  return [a2 remote_onboardingEligibilityForCountryCode:v2 completion:v4];
}

void __72__HKFeatureAvailabilityStore_onboardingEligibilityForCountryCode_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)onboardedCountryCodeSupportedStateWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__42;
  v22 = __Block_byref_object_dispose__42;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__42;
  v16 = __Block_byref_object_dispose__42;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__HKFeatureAvailabilityStore_onboardedCountryCodeSupportedStateWithError___block_invoke;
  v11[3] = &unk_1E7381B68;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__HKFeatureAvailabilityStore_onboardedCountryCodeSupportedStateWithError___block_invoke_3;
  v10[3] = &unk_1E7378838;
  v10[4] = &v12;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError(v5);
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __74__HKFeatureAvailabilityStore_onboardedCountryCodeSupportedStateWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__HKFeatureAvailabilityStore_onboardedCountryCodeSupportedStateWithError___block_invoke_2;
  v3[3] = &unk_1E73809C8;
  v4 = *(a1 + 32);
  return [a2 remote_onboardedCountryCodeSupportedStateWithCompletion:v3];
}

void __74__HKFeatureAvailabilityStore_onboardedCountryCodeSupportedStateWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__42;
  v22 = __Block_byref_object_dispose__42;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__42;
  v16 = __Block_byref_object_dispose__42;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__HKFeatureAvailabilityStore_isCurrentOnboardingVersionCompletedWithError___block_invoke;
  v11[3] = &unk_1E7381B68;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__HKFeatureAvailabilityStore_isCurrentOnboardingVersionCompletedWithError___block_invoke_3;
  v10[3] = &unk_1E7378838;
  v10[4] = &v12;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError(v5);
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __75__HKFeatureAvailabilityStore_isCurrentOnboardingVersionCompletedWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75__HKFeatureAvailabilityStore_isCurrentOnboardingVersionCompletedWithError___block_invoke_2;
  v3[3] = &unk_1E73809C8;
  v4 = *(a1 + 32);
  return [a2 remote_getIsCurrentOnboardingVersionCompletedWithCompletion:v3];
}

void __75__HKFeatureAvailabilityStore_isCurrentOnboardingVersionCompletedWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__HKFeatureAvailabilityStore_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke;
  v9[3] = &unk_1E7381B90;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__HKFeatureAvailabilityStore_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__42;
  v22 = __Block_byref_object_dispose__42;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__42;
  v16 = __Block_byref_object_dispose__42;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__HKFeatureAvailabilityStore_earliestDateLowestOnboardingVersionCompletedWithError___block_invoke;
  v11[3] = &unk_1E7381B68;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__HKFeatureAvailabilityStore_earliestDateLowestOnboardingVersionCompletedWithError___block_invoke_3;
  v10[3] = &unk_1E7378838;
  v10[4] = &v12;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError(v5);
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __84__HKFeatureAvailabilityStore_earliestDateLowestOnboardingVersionCompletedWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __84__HKFeatureAvailabilityStore_earliestDateLowestOnboardingVersionCompletedWithError___block_invoke_2;
  v3[3] = &unk_1E7378D50;
  v4 = *(a1 + 32);
  return [a2 remote_earliestDateLowestOnboardingVersionCompletedWithCompletion:v3];
}

void __84__HKFeatureAvailabilityStore_earliestDateLowestOnboardingVersionCompletedWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)pairedFeatureAttributesWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__42;
  v22 = __Block_byref_object_dispose__42;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__42;
  v16 = __Block_byref_object_dispose__42;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__HKFeatureAvailabilityStore_pairedFeatureAttributesWithError___block_invoke;
  v11[3] = &unk_1E7381B68;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__HKFeatureAvailabilityStore_pairedFeatureAttributesWithError___block_invoke_3;
  v10[3] = &unk_1E7378838;
  v10[4] = &v12;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError(v5);
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __63__HKFeatureAvailabilityStore_pairedFeatureAttributesWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__HKFeatureAvailabilityStore_pairedFeatureAttributesWithError___block_invoke_2;
  v3[3] = &unk_1E7381C08;
  v4 = *(a1 + 32);
  return [a2 remote_getPairedFeatureAttributesWithCompletion:v3];
}

void __63__HKFeatureAvailabilityStore_pairedFeatureAttributesWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)featureAvailabilityRequirementsWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__42;
  v22 = __Block_byref_object_dispose__42;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__42;
  v16 = __Block_byref_object_dispose__42;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__HKFeatureAvailabilityStore_featureAvailabilityRequirementsWithError___block_invoke;
  v11[3] = &unk_1E7381B68;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__HKFeatureAvailabilityStore_featureAvailabilityRequirementsWithError___block_invoke_3;
  v10[3] = &unk_1E7378838;
  v10[4] = &v12;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError(v5);
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __71__HKFeatureAvailabilityStore_featureAvailabilityRequirementsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__HKFeatureAvailabilityStore_featureAvailabilityRequirementsWithError___block_invoke_2;
  v3[3] = &unk_1E7381C30;
  v4 = *(a1 + 32);
  return [a2 remote_getFeatureAvailabilityRequirementsWithCompletion:v3];
}

void __71__HKFeatureAvailabilityStore_featureAvailabilityRequirementsWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)regionAvailabilityWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__42;
  v22 = __Block_byref_object_dispose__42;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__42;
  v16 = __Block_byref_object_dispose__42;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__HKFeatureAvailabilityStore_regionAvailabilityWithError___block_invoke;
  v11[3] = &unk_1E7381B68;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__HKFeatureAvailabilityStore_regionAvailabilityWithError___block_invoke_3;
  v10[3] = &unk_1E7378838;
  v10[4] = &v12;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError(v5);
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __58__HKFeatureAvailabilityStore_regionAvailabilityWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__HKFeatureAvailabilityStore_regionAvailabilityWithError___block_invoke_2;
  v3[3] = &unk_1E7381C58;
  v4 = *(a1 + 32);
  return [a2 remote_getRegionAvailabilityWithCompletion:v3];
}

void __58__HKFeatureAvailabilityStore_regionAvailabilityWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)registerObserver:(id)observer queue:(id)queue activationHandler:(id)handler
{
  observerCopy = observer;
  queueCopy = queue;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:handler];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  observers = self->_observers;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__HKFeatureAvailabilityStore_registerObserver_queue_activationHandler___block_invoke;
  v13[3] = &unk_1E7380D38;
  v15 = &v16;
  v13[4] = self;
  v12 = v10;
  v14 = v12;
  [(HKObserverSet *)observers registerObserver:observerCopy queue:queueCopy runIfFirstObserver:v13];
  if ((v17[3] & 1) == 0)
  {
    (*(v12 + 2))(v12, 1, 0);
  }

  _Block_object_dispose(&v16, 8);
}

void __71__HKFeatureAvailabilityStore_registerObserver_queue_activationHandler___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  objc_initWeak(&location, *(a1 + 32));
  v2 = MEMORY[0x1E69E9820];
  v3 = 3221225472;
  v4 = __71__HKFeatureAvailabilityStore_registerObserver_queue_activationHandler___block_invoke_2;
  v5 = &unk_1E7379140;
  objc_copyWeak(&v6, &location);
  [*(*(a1 + 32) + 24) setAutomaticProxyReconnectionHandler:&v2];
  [*(*(a1 + 32) + 24) setShouldRetryOnInterruption:{1, v2, v3, v4, v5}];
  [*(a1 + 32) _startObservingWithActivationHandler:*(a1 + 40)];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __71__HKFeatureAvailabilityStore_registerObserver_queue_activationHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAutomaticProxyReconnection];
}

- (void)unregisterObserver:(id)observer
{
  observers = self->_observers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__HKFeatureAvailabilityStore_unregisterObserver___block_invoke;
  v4[3] = &unk_1E7376780;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:observer runIfLastObserver:v4];
}

uint64_t __49__HKFeatureAvailabilityStore_unregisterObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setAutomaticProxyReconnectionHandler:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__HKFeatureAvailabilityStore_unregisterObserver___block_invoke_3;
  v5[3] = &unk_1E7376898;
  v5[4] = v2;
  return [v3 fetchProxyWithHandler:&__block_literal_global_100 errorHandler:v5];
}

void __49__HKFeatureAvailabilityStore_unregisterObserver___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__HKFeatureAvailabilityStore_unregisterObserver___block_invoke_3_cold_1(a1);
  }
}

- (void)_startObservingWithActivationHandler:(id)handler
{
  handlerCopy = handler;
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__HKFeatureAvailabilityStore__startObservingWithActivationHandler___block_invoke;
  v9[3] = &unk_1E7381B90;
  v10 = handlerCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__HKFeatureAvailabilityStore__startObservingWithActivationHandler___block_invoke_2;
  v7[3] = &unk_1E7376820;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __67__HKFeatureAvailabilityStore__startObservingWithActivationHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__HKFeatureAvailabilityStore__startObservingWithActivationHandler___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)_synchronouslyStartObservingWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__42;
  v16 = __Block_byref_object_dispose__42;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__HKFeatureAvailabilityStore__synchronouslyStartObservingWithError___block_invoke;
  v11[3] = &unk_1E7381B68;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__HKFeatureAvailabilityStore__synchronouslyStartObservingWithError___block_invoke_3;
  v10[3] = &unk_1E73787C0;
  v10[4] = self;
  v10[5] = &v12;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError(v5);
    }
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8;
}

uint64_t __68__HKFeatureAvailabilityStore__synchronouslyStartObservingWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__HKFeatureAvailabilityStore__synchronouslyStartObservingWithError___block_invoke_2;
  v3[3] = &unk_1E7378D28;
  v4 = *(a1 + 32);
  return [a2 remote_startObservingChangesWithCompletion:v3];
}

void __68__HKFeatureAvailabilityStore__synchronouslyStartObservingWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__HKFeatureAvailabilityStore__synchronouslyStartObservingWithError___block_invoke_3_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)_handleAutomaticProxyReconnection
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [(HKFeatureAvailabilityStore *)self _synchronouslyStartObservingWithError:&v8];
  v4 = v8;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received notification of successful server reconnection", buf, 0xCu);
    }

    [(HKFeatureAvailabilityStore *)self _notifyObserversForOnboardingCompletionUpdate];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(HKKeyValueDomain *)self _handleAutomaticProxyReconnection];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)client_featureAvailabilityExtensionDidUpdateOnboardingCompletion
{
  v7 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogInfrastructure();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received server notification of onboarding completion update", &v5, 0xCu);
  }

  [(HKFeatureAvailabilityStore *)self _notifyObserversForOnboardingCompletionUpdate];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)client_featureAvailabilityProvidingDidUpdateSettings
{
  v7 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogInfrastructure();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received server notification of settings update", &v5, 0xCu);
  }

  [(HKFeatureAvailabilityStore *)self _notifyObserversForSettingsUpdate];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversForOnboardingCompletionUpdate
{
  v12 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogInfrastructure();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HKObserverSet count](self->_observers, "count")}];
    *buf = 138543618;
    selfCopy = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying %@ observers of onboarding completion update", buf, 0x16u);
  }

  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__HKFeatureAvailabilityStore__notifyObserversForOnboardingCompletionUpdate__block_invoke;
  v7[3] = &unk_1E7381CA0;
  v7[4] = self;
  [(HKObserverSet *)observers notifyObservers:v7];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversForSettingsUpdate
{
  v12 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogInfrastructure();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HKObserverSet count](self->_observers, "count")}];
    *buf = 138543618;
    selfCopy = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying %@ observers of settings update", buf, 0x16u);
  }

  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__HKFeatureAvailabilityStore__notifyObserversForSettingsUpdate__block_invoke;
  v7[3] = &unk_1E7381CA0;
  v7[4] = self;
  [(HKObserverSet *)observers notifyObservers:v7];
  v6 = *MEMORY[0x1E69E9840];
}

void __63__HKFeatureAvailabilityStore__notifyObserversForSettingsUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureAvailabilityProvidingDidUpdateSettings:*(a1 + 32)];
  }
}

- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion
{
  codeCopy = code;
  dateCopy = date;
  settingsCopy = settings;
  v15 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __128__HKFeatureAvailabilityStore_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke;
  v23[3] = &unk_1E7381CC8;
  v24 = codeCopy;
  v25 = dateCopy;
  provenanceCopy = provenance;
  v26 = settingsCopy;
  v27 = v15;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __128__HKFeatureAvailabilityStore_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_2;
  v21[3] = &unk_1E7376960;
  v22 = v27;
  v17 = v27;
  v18 = settingsCopy;
  v19 = dateCopy;
  v20 = codeCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v23 errorHandler:v21];
}

- (void)saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5
{
  completionCopy = completion;
  settingsCopy = settings;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__HKFeatureAvailabilityStore_saveOnboardingCompletion_settings_completion___block_invoke;
  v17[3] = &unk_1E7381CF0;
  v18 = completionCopy;
  v19 = settingsCopy;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__HKFeatureAvailabilityStore_saveOnboardingCompletion_settings_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = settingsCopy;
  v14 = completionCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion
{
  dataCopy = data;
  keyCopy = key;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__HKFeatureAvailabilityStore_setFeatureSettingData_forKey_completion___block_invoke;
  v17[3] = &unk_1E7381CF0;
  v18 = dataCopy;
  v19 = keyCopy;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__HKFeatureAvailabilityStore_setFeatureSettingData_forKey_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = keyCopy;
  v14 = dataCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion
{
  stringCopy = string;
  keyCopy = key;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__HKFeatureAvailabilityStore_setFeatureSettingString_forKey_completion___block_invoke;
  v17[3] = &unk_1E7381CF0;
  v18 = stringCopy;
  v19 = keyCopy;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__HKFeatureAvailabilityStore_setFeatureSettingString_forKey_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = keyCopy;
  v14 = stringCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion
{
  numberCopy = number;
  keyCopy = key;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__HKFeatureAvailabilityStore_setFeatureSettingNumber_forKey_completion___block_invoke;
  v17[3] = &unk_1E7381CF0;
  v18 = numberCopy;
  v19 = keyCopy;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__HKFeatureAvailabilityStore_setFeatureSettingNumber_forKey_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = keyCopy;
  v14 = numberCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)removeFeatureSettingValueForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__HKFeatureAvailabilityStore_removeFeatureSettingValueForKey_completion___block_invoke;
  v13[3] = &unk_1E7381D18;
  v14 = keyCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__HKFeatureAvailabilityStore_removeFeatureSettingValueForKey_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = keyCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)resetOnboardingWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__HKFeatureAvailabilityStore_resetOnboardingWithCompletion___block_invoke;
  v9[3] = &unk_1E7381B90;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__HKFeatureAvailabilityStore_resetOnboardingWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __49__HKFeatureAvailabilityStore_unregisterObserver___block_invoke_3_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_1(&dword_19197B000, v2, v3, "[%{public}@] Failed to communicate with task server for observation stop: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

void __67__HKFeatureAvailabilityStore__startObservingWithActivationHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_1(&dword_19197B000, v2, v3, "[%{public}@] Failed to communicate with task server for observation start: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

void __68__HKFeatureAvailabilityStore__synchronouslyStartObservingWithError___block_invoke_3_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  OUTLINED_FUNCTION_1_8();
  v7 = v3;
  _os_log_error_impl(&dword_19197B000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to communicate with task server for observation start: %{public}@", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end