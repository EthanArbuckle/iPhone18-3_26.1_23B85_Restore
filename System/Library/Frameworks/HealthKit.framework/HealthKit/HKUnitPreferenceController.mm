@interface HKUnitPreferenceController
+ (void)unitPreferenceControllerWithHealthStore:(id)a3 completion:(id)a4;
- (HKUnitPreferenceController)initWithHealthStore:(id)a3;
- (id)_changedKeysBetweenDictionary:(void *)a3 andDictionary:;
- (id)_generateDefaultHKUnitPreferences;
- (id)_initWithHealthStore:(id *)a1 completion:(void *)a2;
- (id)_lock_updatePreferredUnits:(id)a1;
- (id)unitForObjectType:(id)a3;
- (void)_fetchHKUnitPreferencesWithAttempt:(void *)a3 completion:;
- (void)_initHKUnitPreferencesWithCompletion:(uint64_t)a1;
- (void)_postNotificationWithChangedKeys:(uint64_t)a1;
- (void)_refreshHKUnitPreferencesWithCompletion:(uint64_t)a1;
- (void)dealloc;
- (void)updatePreferredUnit:(id)a3 forObjectType:(id)a4;
@end

@implementation HKUnitPreferenceController

+ (void)unitPreferenceControllerWithHealthStore:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [HKUnitPreferenceController _initWithHealthStore:v6 completion:?];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__HKUnitPreferenceController_unitPreferenceControllerWithHealthStore_completion___block_invoke;
  v10[3] = &unk_1E73815B0;
  v11 = v7;
  v12 = v5;
  v8 = v7;
  v9 = v5;
  [(HKUnitPreferenceController *)v8 _initHKUnitPreferencesWithCompletion:v10];
}

uint64_t __81__HKUnitPreferenceController_unitPreferenceControllerWithHealthStore_completion___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4);
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];
  [v3 removeObserver:self name:@"HKUserPreferencesDidChangeNotification" object:self->_healthStore];

  v4.receiver = self;
  v4.super_class = HKUnitPreferenceController;
  [(HKUnitPreferenceController *)&v4 dealloc];
}

- (id)unitForObjectType:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_unitPreferencesByObjectType objectForKeyedSubscript:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updatePreferredUnit:(id)a3 forObjectType:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      v12[9] = v4;
      v12[10] = v5;
      v8 = a4;
      v9 = a3;
      os_unfair_lock_lock(&self->_lock);
      [(NSMutableDictionary *)self->_unitPreferencesByObjectType setObject:v9 forKeyedSubscript:v8];
      healthStore = self->_healthStore;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __64__HKUnitPreferenceController_updatePreferredUnit_forObjectType___block_invoke;
      v12[3] = &unk_1E7376A00;
      v12[4] = self;
      [(HKHealthStore *)healthStore _setPreferredUnit:v9 forType:v8 completion:v12];

      os_unfair_lock_unlock(&self->_lock);
      v11 = [MEMORY[0x1E695DFD8] setWithObject:v8];

      [(HKUnitPreferenceController *)self _postNotificationWithChangedKeys:v11];
    }
  }
}

void __64__HKUnitPreferenceController_updatePreferredUnit_forObjectType___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogInfrastructure();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__HKUnitPreferenceController_updatePreferredUnit_forObjectType___block_invoke_cold_1(a1);
    }
  }
}

uint64_t __76__HKUnitPreferenceController__fetchHKUnitPreferencesWithAttempt_completion___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(a1 + 48);
    if (v3 <= 2)
    {
      return __76__HKUnitPreferenceController__fetchHKUnitPreferencesWithAttempt_completion___block_invoke_cold_1(a1, v3);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __70__HKUnitPreferenceController__refreshHKUnitPreferencesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__HKUnitPreferenceController__refreshHKUnitPreferencesWithCompletion___block_invoke_2;
    block[3] = &unk_1E73766C8;
    block[4] = *(a1 + 32);
    v10 = v5;
    v11 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if ((HKIsUnitTesting() & 1) == 0)
    {
      _HKInitializeLogging();
      v7 = HKLogInfrastructure();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __70__HKUnitPreferenceController__refreshHKUnitPreferencesWithCompletion___block_invoke_cold_1(a1);
      }
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }
  }
}

- (id)_initWithHealthStore:(id *)a1 completion:(void *)a2
{
  v4 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = HKUnitPreferenceController;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 3, a2);
      *(a1 + 4) = 0;
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 addObserver:a1 selector:sel__localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 addObserver:a1 selector:sel__unitPreferencesDidUpdate_ name:@"HKUserPreferencesDidChangeNotification" object:a1[3]];
    }
  }

  return a1;
}

- (void)_initHKUnitPreferencesWithCompletion:(uint64_t)a1
{
  if (a1)
  {
    v6 = a2;
    v3 = [(HKUnitPreferenceController *)a1 _generateDefaultHKUnitPreferences];
    v4 = [v3 mutableCopy];
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;

    [(HKUnitPreferenceController *)a1 _fetchHKUnitPreferencesWithAttempt:v6 completion:?];
  }
}

- (HKUnitPreferenceController)initWithHealthStore:(id)a3
{
  v3 = [HKUnitPreferenceController _initWithHealthStore:a3 completion:?];
  v4 = v3;
  if (v3)
  {
    [(HKUnitPreferenceController *)v3 _initHKUnitPreferencesWithCompletion:?];
  }

  return v4;
}

- (void)_postNotificationWithChangedKeys:(uint64_t)a1
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = @"HKUnitPreferenceControllerUnitPreferenceChangedKey";
    v9[0] = a2;
    v3 = MEMORY[0x1E695DF20];
    v4 = a2;
    v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];

    [v6 postNotificationName:@"HKUnitPreferenceControllerUnitPreferencesDidChangeNotification" object:a1 userInfo:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)_lock_updatePreferredUnits:(id)a1
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 4);
    v4 = [(HKUnitPreferenceController *)a1 _changedKeysBetweenDictionary:v3 andDictionary:?];
    if ([v4 count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v14 + 1) + 8 * i);
            v11 = [v3 objectForKeyedSubscript:{v10, v14}];
            [*(a1 + 1) setObject:v11 forKeyedSubscript:v10];
          }

          v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v7);
      }

      a1 = v5;
    }

    else
    {
      a1 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return a1;
}

- (id)_changedKeysBetweenDictionary:(void *)a3 andDictionary:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    a1 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = _HKAllQuantityTypes();
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v5 objectForKeyedSubscript:{v12, v18}];
          v14 = [v6 objectForKeyedSubscript:v12];
          v15 = v14;
          if (v13 != v14 && (!v14 || ([v13 isEqual:v14] & 1) == 0))
          {
            [a1 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return a1;
}

- (void)_fetchHKUnitPreferencesWithAttempt:(void *)a3 completion:
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__HKUnitPreferenceController__fetchHKUnitPreferencesWithAttempt_completion___block_invoke;
    v7[3] = &unk_1E73815D8;
    v9 = a2;
    v7[4] = a1;
    v8 = v5;
    [(HKUnitPreferenceController *)a1 _refreshHKUnitPreferencesWithCompletion:v7];
  }
}

- (id)_generateDefaultHKUnitPreferences
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v3 = _HKAllQuantityTypes();
    v4 = [v3 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v33;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v33 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = _HKGenerateDefaultUnitForQuantityType(*(*(&v32 + 1) + 8 * i));
          OUTLINED_FUNCTION_2_8(v8);
        }

        v5 = [v3 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v5);
    }

    v31 = [(HKObjectType *)HKCorrelationType correlationTypeForIdentifier:@"HKCorrelationTypeIdentifierBloodPressure"];
    v9 = [HKUnit unitFromString:@"mmHg"];
    [v2 setObject:v9 forKeyedSubscript:v31];

    v30 = +[HKSeriesType heartbeatSeriesType];
    v10 = [HKUnit unitFromString:@"count/min"];
    [v2 setObject:v10 forKeyedSubscript:v30];

    v11 = +[(HKObjectType *)HKCategoryType];
    v12 = +[HKUnit countUnit];
    OUTLINED_FUNCTION_2_8(v12);

    v13 = [(HKObjectType *)HKCategoryType dataTypeWithCode:189];
    v14 = +[HKUnit minuteUnit];
    [v2 setObject:v14 forKeyedSubscript:v13];

    v15 = +[(HKObjectType *)HKCategoryType];
    v16 = +[HKUnit countUnit];
    [v2 setObject:v16 forKeyedSubscript:v15];

    v17 = +[(HKObjectType *)HKCategoryType];
    v18 = +[HKUnit countUnit];
    [v2 setObject:v18 forKeyedSubscript:v17];

    v19 = +[(HKObjectType *)HKElectrocardiogramType];
    v20 = +[HKUnit countUnit];
    [v2 setObject:v20 forKeyedSubscript:v19];

    v21 = +[(HKObjectType *)HKAudiogramSampleType];
    v22 = +[HKUnit countUnit];
    [v2 setObject:v22 forKeyedSubscript:v21];

    v23 = +[HKUnit secondUnit];
    v24 = +[(HKObjectType *)HKCategoryType];
    [v2 setObject:v23 forKeyedSubscript:v24];

    v25 = [HKObjectType categoryTypeForIdentifier:@"HKCategoryTypeIdentifierSleepAnalysis"];
    v26 = +[HKUnit secondUnit];
    [v2 setObject:v26 forKeyedSubscript:v25];

    v27 = [v2 copy];
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (void)_refreshHKUnitPreferencesWithCompletion:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 24);
    v5 = MEMORY[0x1E695DFD8];
    v6 = _HKAllQuantityTypes();
    v7 = [v5 setWithArray:v6];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__HKUnitPreferenceController__refreshHKUnitPreferencesWithCompletion___block_invoke;
    v8[3] = &unk_1E7381600;
    v8[4] = a1;
    v9 = v3;
    [v4 preferredUnitsForQuantityTypes:v7 completion:v8];
  }
}

void __70__HKUnitPreferenceController__refreshHKUnitPreferencesWithCompletion___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v3 = [(HKUnitPreferenceController *)*(a1 + 32) _lock_updatePreferredUnits:?];
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  if ([v3 count])
  {
    [(HKUnitPreferenceController *)*(a1 + 32) _postNotificationWithChangedKeys:v3];
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }
}

void __64__HKUnitPreferenceController_updatePreferredUnit_forObjectType___block_invoke_cold_1(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  v5 = OUTLINED_FUNCTION_1_10(v3);
  OUTLINED_FUNCTION_3_1(&dword_19197B000, v6, v7, "[%{public}@:%p] Error setting preferred unit: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __70__HKUnitPreferenceController__refreshHKUnitPreferencesWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  v5 = OUTLINED_FUNCTION_1_10(v3);
  OUTLINED_FUNCTION_3_1(&dword_19197B000, v6, v7, "[%{public}@:%p] Error fetching preferred units: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

@end