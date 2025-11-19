@interface HKWheelchairUseCharacteristicCache
@end

@implementation HKWheelchairUseCharacteristicCache

void __59___HKWheelchairUseCharacteristicCache_initWithHealthStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCharacteristicsDidChangeNotification];
}

void __63___HKWheelchairUseCharacteristicCache__lock_fetchWheelchairUse__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v12 = 0;
  v3 = [v2 wheelchairUseWithError:&v12];
  v4 = v12;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63___HKWheelchairUseCharacteristicCache__lock_fetchWheelchairUse__block_invoke_2;
  v8[3] = &unk_1E7376640;
  v5 = *(a1 + 32);
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __63___HKWheelchairUseCharacteristicCache__lock_fetchWheelchairUse__block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 _handleFetchSuccess:?];
  }

  else
  {
    return [v2 _handleFetchError:a1[6]];
  }
}

void __57___HKWheelchairUseCharacteristicCache__handleFetchError___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 16);
    if ((HKIsUnitTesting() & 1) == 0)
    {
      _HKInitializeLogging();
      v3 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *&v2[14]._os_unfair_lock_opaque;
        v6 = 134217984;
        v7 = v4;
        _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "Retrying wheelchair characteristic fetch. Retry attempt: %zd", &v6, 0xCu);
      }
    }

    [(os_unfair_lock_s *)v2 _lock_fetchWheelchairUse];
    os_unfair_lock_unlock(v2 + 16);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end