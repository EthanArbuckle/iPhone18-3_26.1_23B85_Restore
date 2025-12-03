@interface HKKeyValueDomain
+ (id)emergencyDefaultsDomainWithHealthStore:(id)store;
+ (id)healthAppDefaultsDomainWithHealthStore:(id)store;
+ (id)healthArticlesDefaultsDomainWithHealthStore:(id)store;
+ (id)heartRhythmDefaultsDomainWithHealthStore:(id)store;
+ (id)safetyDefaultsDomainWithHealthStore:(id)store;
+ (id)safetyDefaultsLocalDomainWithHealthStore:(id)store;
- (BOOL)_synchronouslyRegisterToObserveKeyValueDomainChanges:(id *)changes;
- (BOOL)setData:(id)data forKey:(id)key error:(id *)error;
- (BOOL)setDate:(id)date forKey:(id)key error:(id *)error;
- (BOOL)setNumber:(id)number forKey:(id)key error:(id *)error;
- (BOOL)setPropertyListValue:(id)value forKey:(id)key error:(id *)error;
- (BOOL)setString:(id)string forKey:(id)key error:(id *)error;
- (HKKeyValueDomain)initWithCategory:(int64_t)category domainName:(id)name healthStore:(id)store;
- (id)_dataWithErrorNoDataForKey:(id)key error:(id *)error;
- (id)_dateWithErrorNoDataForKey:(id)key error:(id *)error;
- (id)_numberWithErrorNoDataForKey:(id)key error:(id *)error;
- (id)_propertyListValueWithErrorNoDataForKey:(id)key error:(id *)error;
- (id)_stringWithErrorNoDataForKey:(id)key error:(id *)error;
- (id)allValuesWithError:(id *)error;
- (id)dataForKey:(id)key error:(id *)error;
- (id)dateForKey:(id)key error:(id *)error;
- (id)exportedInterface;
- (id)hkhr_electrocardiogramRecordingFirstOnboardingCompletedDateWithError:(id *)error;
- (id)numberForKey:(id)key error:(id *)error;
- (id)propertyListValueForKey:(id)key error:(id *)error;
- (id)remoteInterface;
- (id)stringForKey:(id)key error:(id *)error;
- (void)_handleAutomaticProxyReconnection;
- (void)_observeKeyValueDomainChanges:(BOOL)changes completion:(id)completion;
- (void)_registerFirstObserverWithCompletion:(id)completion;
- (void)_startObservation:(id)observation withCompletion:(id)completion;
- (void)_unregisterLastObserver;
- (void)allValuesWithCompletion:(id)completion;
- (void)clientRemote_didUpdate;
- (void)dataForKey:(id)key completion:(id)completion;
- (void)dateForKey:(id)key completion:(id)completion;
- (void)numberForKey:(id)key completion:(id)completion;
- (void)propertyListValueForKey:(id)key completion:(id)completion;
- (void)removeValuesForKeys:(id)keys completion:(id)completion;
- (void)setData:(id)data forKey:(id)key completion:(id)completion;
- (void)setDate:(id)date forKey:(id)key completion:(id)completion;
- (void)setNumber:(id)number forKey:(id)key completion:(id)completion;
- (void)setPropertyListValue:(id)value forKey:(id)key completion:(id)completion;
- (void)setString:(id)string forKey:(id)key completion:(id)completion;
- (void)setValueForAllKeys:(id)keys completion:(id)completion;
- (void)setValuesWithDictionary:(id)dictionary completion:(id)completion;
- (void)stopObservation:(id)observation;
- (void)stringForKey:(id)key completion:(id)completion;
@end

@implementation HKKeyValueDomain

+ (id)heartRhythmDefaultsDomainWithHealthStore:(id)store
{
  storeCopy = store;
  v4 = [[HKKeyValueDomain alloc] initWithCategory:0 domainName:@"com.apple.private.health.heart-rhythm" healthStore:storeCopy];

  return v4;
}

- (id)hkhr_electrocardiogramRecordingFirstOnboardingCompletedDateWithError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v5 = [(HKKeyValueDomain *)self dateForKey:@"HKElectrocardiogramFirstOnboardingCompleted" error:&v18];
  v6 = v18;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    hk_isDatabaseAccessibilityError = [v6 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    v11 = HKLogHeartRhythm;
    if (hk_isDatabaseAccessibilityError)
    {
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = objc_opt_class();
        *buf = 138543362;
        v20 = v13;
        v14 = v13;
        _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Database is inaccessible; can't determine first ECG onboarding completion date", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
    {
      [(HKKeyValueDomain(HKHeartRhythmAdditions) *)v11 hkhr_electrocardiogramRecordingFirstOnboardingCompletedDateWithError:v7];
    }

    if (error)
    {
      v15 = v7;
      v9 = 0;
      *error = v7;
    }

    else
    {
      _HKLogDroppedError(v7);
      v9 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_dataWithErrorNoDataForKey:(id)key error:(id *)error
{
  v8 = 0;
  v5 = [(HKKeyValueDomain *)self dataForKey:key error:&v8];
  v6 = v8;
  SetNoDataErrorIfNeeded(v5, v6, error);
  objc_claimAutoreleasedReturnValue();

  return v5;
}

- (id)_dateWithErrorNoDataForKey:(id)key error:(id *)error
{
  v8 = 0;
  v5 = [(HKKeyValueDomain *)self dateForKey:key error:&v8];
  v6 = v8;
  SetNoDataErrorIfNeeded(v5, v6, error);
  objc_claimAutoreleasedReturnValue();

  return v5;
}

- (id)_stringWithErrorNoDataForKey:(id)key error:(id *)error
{
  v8 = 0;
  v5 = [(HKKeyValueDomain *)self stringForKey:key error:&v8];
  v6 = v8;
  SetNoDataErrorIfNeeded(v5, v6, error);
  objc_claimAutoreleasedReturnValue();

  return v5;
}

- (id)_numberWithErrorNoDataForKey:(id)key error:(id *)error
{
  v8 = 0;
  v5 = [(HKKeyValueDomain *)self numberForKey:key error:&v8];
  v6 = v8;
  SetNoDataErrorIfNeeded(v5, v6, error);
  objc_claimAutoreleasedReturnValue();

  return v5;
}

- (id)_propertyListValueWithErrorNoDataForKey:(id)key error:(id *)error
{
  v8 = 0;
  v5 = [(HKKeyValueDomain *)self propertyListValueForKey:key error:&v8];
  v6 = v8;
  SetNoDataErrorIfNeeded(v5, v6, error);
  objc_claimAutoreleasedReturnValue();

  return v5;
}

- (HKKeyValueDomain)initWithCategory:(int64_t)category domainName:(id)name healthStore:(id)store
{
  nameCopy = name;
  storeCopy = store;
  v10 = [[HKKeyValueDomainServerConfiguration alloc] initWithCategory:category domainName:nameCopy];
  v30.receiver = self;
  v30.super_class = HKKeyValueDomain;
  v11 = [(HKKeyValueDomain *)&v30 init];
  v12 = v11;
  if (v11)
  {
    v11->_category = category;
    v13 = [nameCopy copy];
    domainName = v12->_domainName;
    v12->_domainName = v13;

    objc_storeStrong(&v12->_healthStore, store);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v12->_identifier;
    v12->_identifier = uUID;

    v17 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:v12->_healthStore taskIdentifier:@"HKKeyValueDomainServerIdentifier" exportedObject:v12 taskUUID:v12->_identifier];
    proxyProvider = v12->_proxyProvider;
    v12->_proxyProvider = v17;

    [(HKTaskServerProxyProvider *)v12->_proxyProvider setTaskConfiguration:v10];
    objc_initWeak(&location, v12);
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __60__HKKeyValueDomain_initWithCategory_domainName_healthStore___block_invoke;
    v27 = &unk_1E7379140;
    objc_copyWeak(&v28, &location);
    [(HKProxyProvider *)v12->_proxyProvider setAutomaticProxyReconnectionHandler:&v24];
    [(HKProxyProvider *)v12->_proxyProvider setShouldRetryOnInterruption:1, v24, v25, v26, v27];
    v19 = [HKObserverSet alloc];
    v20 = NSStringFromProtocol(&unk_1F06D9D60);
    v21 = [(HKObserverSet *)v19 initWithName:v20 loggingCategory:HKLogDefault];
    observers = v12->_observers;
    v12->_observers = v21;

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __60__HKKeyValueDomain_initWithCategory_domainName_healthStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAutomaticProxyReconnection];
}

- (BOOL)setNumber:(id)number forKey:(id)key error:(id *)error
{
  numberCopy = number;
  keyCopy = key;
  if (numberCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HKKeyValueDomain setNumber:forKey:error:];
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__36;
  v28 = __Block_byref_object_dispose__36;
  v29 = 0;
  proxyProvider = self->_proxyProvider;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __43__HKKeyValueDomain_setNumber_forKey_error___block_invoke;
  v19[3] = &unk_1E7380BD0;
  v11 = numberCopy;
  v20 = v11;
  v12 = keyCopy;
  v21 = v12;
  v22 = &v30;
  v23 = &v24;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __43__HKKeyValueDomain_setNumber_forKey_error___block_invoke_3;
  v18[3] = &unk_1E7378838;
  v18[4] = &v24;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v19 errorHandler:v18];
  v13 = *(v31 + 24);
  if ((v13 & 1) == 0)
  {
    v14 = v25[5];
    v15 = v14;
    if (v14)
    {
      if (error)
      {
        v16 = v14;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError(v14);
      }
    }

    v13 = *(v31 + 24);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v13 & 1;
}

uint64_t __43__HKKeyValueDomain_setNumber_forKey_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__HKKeyValueDomain_setNumber_forKey_error___block_invoke_2;
  v5[3] = &unk_1E7378D28;
  v6 = *(a1 + 48);
  return [a2 remote_setNumber:v2 forKey:v3 completion:v5];
}

- (void)setNumber:(id)number forKey:(id)key completion:(id)completion
{
  numberCopy = number;
  keyCopy = key;
  completionCopy = completion;
  if (numberCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HKKeyValueDomain setNumber:forKey:completion:];
    }
  }

  v11 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__HKKeyValueDomain_setNumber_forKey_completion___block_invoke;
  v18[3] = &unk_1E7380BF8;
  v19 = numberCopy;
  v20 = keyCopy;
  v21 = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__HKKeyValueDomain_setNumber_forKey_completion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v21;
  v13 = v21;
  v14 = keyCopy;
  v15 = numberCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v18 errorHandler:v16];
}

- (BOOL)setData:(id)data forKey:(id)key error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HKKeyValueDomain setData:forKey:error:];
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__36;
  v28 = __Block_byref_object_dispose__36;
  v29 = 0;
  proxyProvider = self->_proxyProvider;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __41__HKKeyValueDomain_setData_forKey_error___block_invoke;
  v19[3] = &unk_1E7380BD0;
  v11 = dataCopy;
  v20 = v11;
  v12 = keyCopy;
  v21 = v12;
  v22 = &v30;
  v23 = &v24;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __41__HKKeyValueDomain_setData_forKey_error___block_invoke_3;
  v18[3] = &unk_1E7378838;
  v18[4] = &v24;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v19 errorHandler:v18];
  v13 = *(v31 + 24);
  if ((v13 & 1) == 0)
  {
    v14 = v25[5];
    v15 = v14;
    if (v14)
    {
      if (error)
      {
        v16 = v14;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError(v14);
      }
    }

    v13 = *(v31 + 24);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v13 & 1;
}

uint64_t __41__HKKeyValueDomain_setData_forKey_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__HKKeyValueDomain_setData_forKey_error___block_invoke_2;
  v5[3] = &unk_1E7378D28;
  v6 = *(a1 + 48);
  return [a2 remote_setData:v2 forKey:v3 completion:v5];
}

- (void)setData:(id)data forKey:(id)key completion:(id)completion
{
  dataCopy = data;
  keyCopy = key;
  completionCopy = completion;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HKKeyValueDomain setData:forKey:completion:];
    }
  }

  v11 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__HKKeyValueDomain_setData_forKey_completion___block_invoke;
  v18[3] = &unk_1E7380BF8;
  v19 = dataCopy;
  v20 = keyCopy;
  v21 = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__HKKeyValueDomain_setData_forKey_completion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v21;
  v13 = v21;
  v14 = keyCopy;
  v15 = dataCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v18 errorHandler:v16];
}

- (BOOL)setDate:(id)date forKey:(id)key error:(id *)error
{
  dateCopy = date;
  keyCopy = key;
  if (dateCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HKKeyValueDomain setDate:forKey:error:];
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__36;
  v28 = __Block_byref_object_dispose__36;
  v29 = 0;
  proxyProvider = self->_proxyProvider;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __41__HKKeyValueDomain_setDate_forKey_error___block_invoke;
  v19[3] = &unk_1E7380BD0;
  v11 = dateCopy;
  v20 = v11;
  v12 = keyCopy;
  v21 = v12;
  v22 = &v30;
  v23 = &v24;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __41__HKKeyValueDomain_setDate_forKey_error___block_invoke_3;
  v18[3] = &unk_1E7378838;
  v18[4] = &v24;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v19 errorHandler:v18];
  v13 = *(v31 + 24);
  if ((v13 & 1) == 0)
  {
    v14 = v25[5];
    v15 = v14;
    if (v14)
    {
      if (error)
      {
        v16 = v14;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError(v14);
      }
    }

    v13 = *(v31 + 24);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v13 & 1;
}

uint64_t __41__HKKeyValueDomain_setDate_forKey_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__HKKeyValueDomain_setDate_forKey_error___block_invoke_2;
  v5[3] = &unk_1E7378D28;
  v6 = *(a1 + 48);
  return [a2 remote_setDate:v2 forKey:v3 completion:v5];
}

- (void)setDate:(id)date forKey:(id)key completion:(id)completion
{
  dateCopy = date;
  keyCopy = key;
  completionCopy = completion;
  if (dateCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HKKeyValueDomain setDate:forKey:completion:];
    }
  }

  v11 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__HKKeyValueDomain_setDate_forKey_completion___block_invoke;
  v18[3] = &unk_1E7380BF8;
  v19 = dateCopy;
  v20 = keyCopy;
  v21 = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__HKKeyValueDomain_setDate_forKey_completion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v21;
  v13 = v21;
  v14 = keyCopy;
  v15 = dateCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v18 errorHandler:v16];
}

- (BOOL)setString:(id)string forKey:(id)key error:(id *)error
{
  stringCopy = string;
  keyCopy = key;
  if (stringCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HKKeyValueDomain setString:forKey:error:];
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__36;
  v28 = __Block_byref_object_dispose__36;
  v29 = 0;
  proxyProvider = self->_proxyProvider;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __43__HKKeyValueDomain_setString_forKey_error___block_invoke;
  v19[3] = &unk_1E7380BD0;
  v11 = stringCopy;
  v20 = v11;
  v12 = keyCopy;
  v21 = v12;
  v22 = &v30;
  v23 = &v24;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __43__HKKeyValueDomain_setString_forKey_error___block_invoke_3;
  v18[3] = &unk_1E7378838;
  v18[4] = &v24;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v19 errorHandler:v18];
  v13 = *(v31 + 24);
  if ((v13 & 1) == 0)
  {
    v14 = v25[5];
    v15 = v14;
    if (v14)
    {
      if (error)
      {
        v16 = v14;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError(v14);
      }
    }

    v13 = *(v31 + 24);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v13 & 1;
}

uint64_t __43__HKKeyValueDomain_setString_forKey_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__HKKeyValueDomain_setString_forKey_error___block_invoke_2;
  v5[3] = &unk_1E7378D28;
  v6 = *(a1 + 48);
  return [a2 remote_setString:v2 forKey:v3 completion:v5];
}

- (void)setString:(id)string forKey:(id)key completion:(id)completion
{
  stringCopy = string;
  keyCopy = key;
  completionCopy = completion;
  if (stringCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HKKeyValueDomain setString:forKey:completion:];
    }
  }

  v11 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__HKKeyValueDomain_setString_forKey_completion___block_invoke;
  v18[3] = &unk_1E7380BF8;
  v19 = stringCopy;
  v20 = keyCopy;
  v21 = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__HKKeyValueDomain_setString_forKey_completion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v21;
  v13 = v21;
  v14 = keyCopy;
  v15 = stringCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v18 errorHandler:v16];
}

- (BOOL)setPropertyListValue:(id)value forKey:(id)key error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__36;
  v28 = __Block_byref_object_dispose__36;
  v29 = 0;
  if (valueCopy)
  {
    v10 = [(HKKeyValueDomain *)self _dataFromPropertyListValue:valueCopy error:error];
    if (!v10)
    {
      v11 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
  }

  proxyProvider = self->_proxyProvider;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__HKKeyValueDomain_setPropertyListValue_forKey_error___block_invoke;
  v19[3] = &unk_1E7380BD0;
  v13 = v10;
  v20 = v13;
  v21 = keyCopy;
  v22 = &v30;
  v23 = &v24;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54__HKKeyValueDomain_setPropertyListValue_forKey_error___block_invoke_3;
  v18[3] = &unk_1E7378838;
  v18[4] = &v24;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v19 errorHandler:v18];
  v11 = *(v31 + 24);
  if ((v11 & 1) == 0)
  {
    v14 = v25[5];
    v15 = v14;
    if (v14)
    {
      if (error)
      {
        v16 = v14;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError(v14);
      }
    }

    v11 = *(v31 + 24);
  }

LABEL_12:
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v11 & 1;
}

uint64_t __54__HKKeyValueDomain_setPropertyListValue_forKey_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__HKKeyValueDomain_setPropertyListValue_forKey_error___block_invoke_2;
  v5[3] = &unk_1E7378D28;
  v6 = *(a1 + 48);
  return [a2 remote_setData:v2 forKey:v3 completion:v5];
}

- (void)setPropertyListValue:(id)value forKey:(id)key completion:(id)completion
{
  valueCopy = value;
  keyCopy = key;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  if (valueCopy)
  {
    v21 = 0;
    v11 = [(HKKeyValueDomain *)self _dataFromPropertyListValue:valueCopy error:&v21];
    v12 = v21;
    v13 = v12;
    if (!v11)
    {
      (v10)[2](v10, 0, v12);
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
  }

  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__HKKeyValueDomain_setPropertyListValue_forKey_completion___block_invoke;
  v17[3] = &unk_1E7380BF8;
  v18 = v11;
  v19 = keyCopy;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__HKKeyValueDomain_setPropertyListValue_forKey_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v13 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];

LABEL_7:
}

- (void)setValuesWithDictionary:(id)dictionary completion:(id)completion
{
  dictionaryCopy = dictionary;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__HKKeyValueDomain_setValuesWithDictionary_completion___block_invoke;
  v13[3] = &unk_1E7380C20;
  v14 = dictionaryCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__HKKeyValueDomain_setValuesWithDictionary_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = dictionaryCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)removeValuesForKeys:(id)keys completion:(id)completion
{
  keysCopy = keys;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__HKKeyValueDomain_removeValuesForKeys_completion___block_invoke;
  v13[3] = &unk_1E7380C20;
  v14 = keysCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__HKKeyValueDomain_removeValuesForKeys_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = keysCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)setValueForAllKeys:(id)keys completion:(id)completion
{
  keysCopy = keys;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__HKKeyValueDomain_setValueForAllKeys_completion___block_invoke;
  v13[3] = &unk_1E7380C20;
  v14 = keysCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__HKKeyValueDomain_setValueForAllKeys_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = keysCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (id)numberForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__36;
  v30 = __Block_byref_object_dispose__36;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__36;
  v24 = __Block_byref_object_dispose__36;
  v25 = 0;
  proxyProvider = self->_proxyProvider;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__HKKeyValueDomain_numberForKey_error___block_invoke;
  v16[3] = &unk_1E7380C48;
  v8 = keyCopy;
  v17 = v8;
  v18 = &v26;
  v19 = &v20;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__HKKeyValueDomain_numberForKey_error___block_invoke_3;
  v15[3] = &unk_1E7378838;
  v15[4] = &v20;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v16 errorHandler:v15];
  v9 = v27[5];
  if (!v9)
  {
    v10 = v21[5];
    v11 = v10;
    if (v10)
    {
      if (error)
      {
        v12 = v10;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError(v10);
      }
    }

    v9 = v27[5];
  }

  v13 = v9;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

uint64_t __39__HKKeyValueDomain_numberForKey_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__HKKeyValueDomain_numberForKey_error___block_invoke_2;
  v4[3] = &unk_1E73809C8;
  v5 = *(a1 + 40);
  return [a2 remote_numberForKey:v2 completion:v4];
}

void __39__HKKeyValueDomain_numberForKey_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)numberForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__HKKeyValueDomain_numberForKey_completion___block_invoke;
  v13[3] = &unk_1E7380C20;
  v14 = keyCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__HKKeyValueDomain_numberForKey_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = keyCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (id)dataForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__36;
  v30 = __Block_byref_object_dispose__36;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__36;
  v24 = __Block_byref_object_dispose__36;
  v25 = 0;
  proxyProvider = self->_proxyProvider;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __37__HKKeyValueDomain_dataForKey_error___block_invoke;
  v16[3] = &unk_1E7380C48;
  v8 = keyCopy;
  v17 = v8;
  v18 = &v26;
  v19 = &v20;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __37__HKKeyValueDomain_dataForKey_error___block_invoke_3;
  v15[3] = &unk_1E7378838;
  v15[4] = &v20;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v16 errorHandler:v15];
  v9 = v27[5];
  if (!v9)
  {
    v10 = v21[5];
    v11 = v10;
    if (v10)
    {
      if (error)
      {
        v12 = v10;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError(v10);
      }
    }

    v9 = v27[5];
  }

  v13 = v9;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

uint64_t __37__HKKeyValueDomain_dataForKey_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__HKKeyValueDomain_dataForKey_error___block_invoke_2;
  v4[3] = &unk_1E7380C70;
  v5 = *(a1 + 40);
  return [a2 remote_dataForKey:v2 completion:v4];
}

void __37__HKKeyValueDomain_dataForKey_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)dataForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__HKKeyValueDomain_dataForKey_completion___block_invoke;
  v13[3] = &unk_1E7380C20;
  v14 = keyCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__HKKeyValueDomain_dataForKey_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = keyCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (id)dateForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__36;
  v30 = __Block_byref_object_dispose__36;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__36;
  v24 = __Block_byref_object_dispose__36;
  v25 = 0;
  proxyProvider = self->_proxyProvider;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __37__HKKeyValueDomain_dateForKey_error___block_invoke;
  v16[3] = &unk_1E7380C48;
  v8 = keyCopy;
  v17 = v8;
  v18 = &v26;
  v19 = &v20;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __37__HKKeyValueDomain_dateForKey_error___block_invoke_3;
  v15[3] = &unk_1E7378838;
  v15[4] = &v20;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v16 errorHandler:v15];
  v9 = v27[5];
  if (!v9)
  {
    v10 = v21[5];
    v11 = v10;
    if (v10)
    {
      if (error)
      {
        v12 = v10;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError(v10);
      }
    }

    v9 = v27[5];
  }

  v13 = v9;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

uint64_t __37__HKKeyValueDomain_dateForKey_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__HKKeyValueDomain_dateForKey_error___block_invoke_2;
  v4[3] = &unk_1E7378D50;
  v5 = *(a1 + 40);
  return [a2 remote_dateForKey:v2 completion:v4];
}

void __37__HKKeyValueDomain_dateForKey_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)dateForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__HKKeyValueDomain_dateForKey_completion___block_invoke;
  v13[3] = &unk_1E7380C20;
  v14 = keyCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__HKKeyValueDomain_dateForKey_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = keyCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (id)stringForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__36;
  v30 = __Block_byref_object_dispose__36;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__36;
  v24 = __Block_byref_object_dispose__36;
  v25 = 0;
  proxyProvider = self->_proxyProvider;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__HKKeyValueDomain_stringForKey_error___block_invoke;
  v16[3] = &unk_1E7380C48;
  v8 = keyCopy;
  v17 = v8;
  v18 = &v26;
  v19 = &v20;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__HKKeyValueDomain_stringForKey_error___block_invoke_3;
  v15[3] = &unk_1E7378838;
  v15[4] = &v20;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v16 errorHandler:v15];
  v9 = v27[5];
  if (!v9)
  {
    v10 = v21[5];
    v11 = v10;
    if (v10)
    {
      if (error)
      {
        v12 = v10;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError(v10);
      }
    }

    v9 = v27[5];
  }

  v13 = v9;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

uint64_t __39__HKKeyValueDomain_stringForKey_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__HKKeyValueDomain_stringForKey_error___block_invoke_2;
  v4[3] = &unk_1E7380C98;
  v5 = *(a1 + 40);
  return [a2 remote_stringForKey:v2 completion:v4];
}

void __39__HKKeyValueDomain_stringForKey_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)stringForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__HKKeyValueDomain_stringForKey_completion___block_invoke;
  v13[3] = &unk_1E7380C20;
  v14 = keyCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__HKKeyValueDomain_stringForKey_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = keyCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (id)propertyListValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__36;
  v30 = __Block_byref_object_dispose__36;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__36;
  v24 = __Block_byref_object_dispose__36;
  v25 = 0;
  proxyProvider = self->_proxyProvider;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__HKKeyValueDomain_propertyListValueForKey_error___block_invoke;
  v16[3] = &unk_1E7380C48;
  v8 = keyCopy;
  v17 = v8;
  v18 = &v26;
  v19 = &v20;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__HKKeyValueDomain_propertyListValueForKey_error___block_invoke_3;
  v15[3] = &unk_1E7378838;
  v15[4] = &v20;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v16 errorHandler:v15];
  v9 = v27[5];
  if (v9)
  {
    v10 = [(HKKeyValueDomain *)self _propertyListValueFromData:v9 error:error];
  }

  else
  {
    v11 = v21[5];
    v12 = v11;
    if (v11)
    {
      if (error)
      {
        v13 = v11;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError(v11);
      }
    }

    v10 = 0;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v10;
}

uint64_t __50__HKKeyValueDomain_propertyListValueForKey_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__HKKeyValueDomain_propertyListValueForKey_error___block_invoke_2;
  v4[3] = &unk_1E7380C70;
  v5 = *(a1 + 40);
  return [a2 remote_dataForKey:v2 completion:v4];
}

void __50__HKKeyValueDomain_propertyListValueForKey_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)propertyListValueForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__HKKeyValueDomain_propertyListValueForKey_completion___block_invoke;
  v13[3] = &unk_1E7380BF8;
  v14 = keyCopy;
  selfCopy = self;
  v16 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__HKKeyValueDomain_propertyListValueForKey_completion___block_invoke_3;
  v11[3] = &unk_1E7376960;
  v12 = v16;
  v9 = v16;
  v10 = keyCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __55__HKKeyValueDomain_propertyListValueForKey_completion___block_invoke(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__HKKeyValueDomain_propertyListValueForKey_completion___block_invoke_2;
  v5[3] = &unk_1E7380CC0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 remote_dataForKey:v3 completion:v5];
}

void __55__HKKeyValueDomain_propertyListValueForKey_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v8 = v5;
    a2 = [v6 _propertyListValueFromData:a2 error:&v8];
    v7 = v8;

    v5 = v7;
  }

  (*(*(a1 + 40) + 16))();
}

- (id)allValuesWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__36;
  v23 = __Block_byref_object_dispose__36;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__36;
  v17 = __Block_byref_object_dispose__36;
  v18 = 0;
  proxyProvider = self->_proxyProvider;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__HKKeyValueDomain_allValuesWithError___block_invoke;
  v12[3] = &unk_1E7380CE8;
  v12[4] = &v19;
  v12[5] = &v13;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39__HKKeyValueDomain_allValuesWithError___block_invoke_3;
  v11[3] = &unk_1E7378838;
  v11[4] = &v13;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v12 errorHandler:v11];
  v5 = v20[5];
  if (!v5)
  {
    v6 = v14[5];
    v7 = v6;
    if (v6)
    {
      if (error)
      {
        v8 = v6;
        *error = v7;
      }

      else
      {
        _HKLogDroppedError(v6);
      }
    }

    v5 = v20[5];
  }

  v9 = v5;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

uint64_t __39__HKKeyValueDomain_allValuesWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__HKKeyValueDomain_allValuesWithError___block_invoke_2;
  v3[3] = &unk_1E737F5A0;
  v4 = *(a1 + 32);
  return [a2 remote_allValuesWithCompletion:v3];
}

void __39__HKKeyValueDomain_allValuesWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)allValuesWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__HKKeyValueDomain_allValuesWithCompletion___block_invoke;
  v9[3] = &unk_1E7380D10;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__HKKeyValueDomain_allValuesWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)_startObservation:(id)observation withCompletion:(id)completion
{
  observationCopy = observation;
  completionCopy = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  observers = self->_observers;
  clientQueue = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__HKKeyValueDomain__startObservation_withCompletion___block_invoke;
  v11[3] = &unk_1E7380D38;
  v13 = &v14;
  v11[4] = self;
  v10 = completionCopy;
  v12 = v10;
  [(HKKeyValueDomainObserver *)observers registerObserver:observationCopy queue:clientQueue runIfFirstObserver:v11];

  if ((v15[3] & 1) == 0)
  {
    (*(v10 + 2))(v10, 1, 0);
  }

  _Block_object_dispose(&v14, 8);
}

- (void)stopObservation:(id)observation
{
  observers = self->_observers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__HKKeyValueDomain_stopObservation___block_invoke;
  v4[3] = &unk_1E7376780;
  v4[4] = self;
  [(HKKeyValueDomainObserver *)observers unregisterObserver:observation runIfLastObserver:v4];
}

- (void)_registerFirstObserverWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__HKKeyValueDomain__registerFirstObserverWithCompletion___block_invoke;
  v6[3] = &unk_1E73766A0;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(HKKeyValueDomain *)self _observeKeyValueDomainChanges:1 completion:v6];
}

void __57__HKKeyValueDomain__registerFirstObserverWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      __57__HKKeyValueDomain__registerFirstObserverWithCompletion___block_invoke_cold_1(a1, v5, v6);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_unregisterLastObserver
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43__HKKeyValueDomain__unregisterLastObserver__block_invoke;
  v2[3] = &unk_1E7376A00;
  v2[4] = self;
  [(HKKeyValueDomain *)self _observeKeyValueDomainChanges:0 completion:v2];
}

void __43__HKKeyValueDomain__unregisterLastObserver__block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_INFO, "%{public}@: unable to unregister observing changes: %{public}@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_observeKeyValueDomainChanges:(BOOL)changes completion:(id)completion
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__HKKeyValueDomain__observeKeyValueDomainChanges_completion___block_invoke;
  v11[3] = &unk_1E7380D60;
  changesCopy = changes;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__HKKeyValueDomain__observeKeyValueDomainChanges_completion___block_invoke_2;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)_handleAutomaticProxyReconnection
{
  *v4 = 138543618;
  *&v4[4] = self;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_19197B000, a2, a3, "[%{public}@] Failed to resume observation on server reconnection: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)_synchronouslyRegisterToObserveKeyValueDomainChanges:(id *)changes
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__36;
  v16 = __Block_byref_object_dispose__36;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__HKKeyValueDomain__synchronouslyRegisterToObserveKeyValueDomainChanges___block_invoke;
  v11[3] = &unk_1E7380CE8;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__HKKeyValueDomain__synchronouslyRegisterToObserveKeyValueDomainChanges___block_invoke_3;
  v10[3] = &unk_1E7378838;
  v10[4] = &v12;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (changes)
    {
      v7 = v5;
      *changes = v6;
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

uint64_t __73__HKKeyValueDomain__synchronouslyRegisterToObserveKeyValueDomainChanges___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__HKKeyValueDomain__synchronouslyRegisterToObserveKeyValueDomainChanges___block_invoke_2;
  v3[3] = &unk_1E7378D28;
  v4 = *(a1 + 32);
  return [a2 remote_observeChanges:1 completion:v3];
}

- (void)clientRemote_didUpdate
{
  observers = self->_observers;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__HKKeyValueDomain_clientRemote_didUpdate__block_invoke;
  v3[3] = &unk_1E7380D88;
  v3[4] = self;
  [(HKKeyValueDomainObserver *)observers notifyObservers:v3];
}

- (id)exportedInterface
{
  v2 = objc_opt_class();

  return [v2 clientInterface];
}

- (id)remoteInterface
{
  v2 = objc_opt_class();

  return [v2 serverInterface];
}

+ (id)healthAppDefaultsDomainWithHealthStore:(id)store
{
  storeCopy = store;
  v4 = [[HKKeyValueDomain alloc] initWithCategory:2 domainName:@"com.apple.Health" healthStore:storeCopy];

  return v4;
}

+ (id)healthArticlesDefaultsDomainWithHealthStore:(id)store
{
  storeCopy = store;
  v4 = [[HKKeyValueDomain alloc] initWithCategory:2 domainName:@"com.apple.Health.Articles" healthStore:storeCopy];

  return v4;
}

+ (id)safetyDefaultsDomainWithHealthStore:(id)store
{
  storeCopy = store;
  v4 = [[HKKeyValueDomain alloc] initWithCategory:2 domainName:@"com.apple.Safety" healthStore:storeCopy];

  return v4;
}

+ (id)safetyDefaultsLocalDomainWithHealthStore:(id)store
{
  storeCopy = store;
  v4 = [[HKKeyValueDomain alloc] initWithCategory:1 domainName:@"com.apple.Safety" healthStore:storeCopy];

  return v4;
}

+ (id)emergencyDefaultsDomainWithHealthStore:(id)store
{
  storeCopy = store;
  v4 = [[HKKeyValueDomain alloc] initWithCategory:2 domainName:@"com.apple.Health.Emergency" healthStore:storeCopy];

  return v4;
}

- (void)setNumber:forKey:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"number == nil || ([number isKindOfClass:[NSNumber class]])" object:? file:? lineNumber:? description:?];
}

- (void)setNumber:forKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"number == nil || ([number isKindOfClass:[NSNumber class]])" object:? file:? lineNumber:? description:?];
}

- (void)setData:forKey:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"data == nil || ([data isKindOfClass:[NSData class]])" object:? file:? lineNumber:? description:?];
}

- (void)setData:forKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"data == nil || ([data isKindOfClass:[NSData class]])" object:? file:? lineNumber:? description:?];
}

- (void)setDate:forKey:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"date == nil || ([date isKindOfClass:[NSDate class]])" object:? file:? lineNumber:? description:?];
}

- (void)setDate:forKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"date == nil || ([date isKindOfClass:[NSDate class]])" object:? file:? lineNumber:? description:?];
}

- (void)setString:forKey:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"string == nil || ([string isKindOfClass:[NSString class]])" object:? file:? lineNumber:? description:?];
}

- (void)setString:forKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"string == nil || ([string isKindOfClass:[NSString class]])" object:? file:? lineNumber:? description:?];
}

void __57__HKKeyValueDomain__registerFirstObserverWithCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_19197B000, a2, a3, "%{public}@: unable to register to observe changes: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end