@interface HKWatchAppAvailability
- (HKWatchAppAvailability)initWithBundleID:(id)a3;
- (id)findApplicationIn:(id)a3;
- (void)appInstallStateOnWatch:(id)a3 completion:(id)a4;
- (void)appQuery:(id)a3 resultsDidChange:(id)a4;
- (void)dealloc;
@end

@implementation HKWatchAppAvailability

- (HKWatchAppAvailability)initWithBundleID:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HKWatchAppAvailability;
  v6 = [(HKWatchAppAvailability *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, a3);
    v7->_installState = -1;
    v8 = [HKObserverSet alloc];
    v9 = [(HKObserverSet *)v8 initWithName:@"AppAvailabilityObservers" loggingCategory:HKLogDefault];
    observers = v7->_observers;
    v7->_observers = v9;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(HKWatchAppAvailability *)self query];
  [v3 setObserver:0];

  v4.receiver = self;
  v4.super_class = HKWatchAppAvailability;
  [(HKWatchAppAvailability *)&v4 dealloc];
}

- (void)appInstallStateOnWatch:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v9 = getASDAppQueryClass_softClass;
  v22 = getASDAppQueryClass_softClass;
  if (!getASDAppQueryClass_softClass)
  {
    location[0] = MEMORY[0x1E69E9820];
    location[1] = 3221225472;
    location[2] = __getASDAppQueryClass_block_invoke;
    location[3] = &unk_1E7378388;
    location[4] = &v19;
    __getASDAppQueryClass_block_invoke(location);
    v9 = v20[3];
  }

  v10 = v9;
  _Block_object_dispose(&v19, 8);
  v11 = [v9 queryForSystemAppsOnPairedDevice:v7];
  [(HKWatchAppAvailability *)self setQuery:v11];

  v12 = [(HKWatchAppAvailability *)self query];
  [v12 setObserver:self];

  objc_initWeak(location, self);
  v13 = [(HKWatchAppAvailability *)self query];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__HKWatchAppAvailability_appInstallStateOnWatch_completion___block_invoke;
  v15[3] = &unk_1E7381968;
  objc_copyWeak(v17, location);
  v14 = v8;
  v16 = v14;
  v17[1] = a2;
  [v13 executeQueryWithResultHandler:v15];

  objc_destroyWeak(v17);
  objc_destroyWeak(location);
}

void __60__HKWatchAppAvailability_appInstallStateOnWatch_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v13 = *(a1 + 32);
    v12 = [MEMORY[0x1E696ABC0] hk_error:100 format:{@"%@ deallocated", objc_opt_class()}];
    (*(v13 + 16))(v13, 3, v12);
LABEL_17:

    goto LABEL_18;
  }

  if (!v6 || ([WeakRetained _test_apps], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [v8 _test_apps];
    if (v10)
    {
      v11 = [v8 _test_apps];
      v12 = [v8 findApplicationIn:v11];
    }

    else
    {
      v12 = [v8 findApplicationIn:v5];
    }

    if (v12)
    {
      if ([v12 isInstalled])
      {
        v14 = 2;
      }

      else
      {
        v23 = [v12 progress];
        v14 = v23 != 0;
      }

      [v8 setInstallState:v14];
      v20 = *(a1 + 32);
      v21 = *(v20 + 16);
      v22 = v14;
    }

    else
    {
      _HKInitializeLogging();
      v15 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 48);
        v17 = v15;
        v18 = NSStringFromSelector(v16);
        v19 = [v8 bundleID];
        *buf = 138543874;
        v31 = v8;
        v32 = 2114;
        v33 = v18;
        v34 = 2114;
        v35 = v19;
        _os_log_impl(&dword_19197B000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Application (%{public}@) was not found on watch", buf, 0x20u);
      }

      [v8 setInstallState:0];
      v20 = *(a1 + 32);
      v21 = *(v20 + 16);
      v22 = 0;
    }

    v21(v20, v22, 0);
    goto LABEL_17;
  }

  _HKInitializeLogging();
  v25 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
  {
    v26 = *(a1 + 48);
    v27 = v25;
    v28 = NSStringFromSelector(v26);
    v29 = [v8 bundleID];
    *buf = 138544130;
    v31 = v8;
    v32 = 2114;
    v33 = v28;
    v34 = 2114;
    v35 = v29;
    v36 = 2114;
    v37 = v6;
    _os_log_error_impl(&dword_19197B000, v27, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] -> Failed to fetch install state for application (%{public}@) with error: %{public}@", buf, 0x2Au);
  }

  [v8 setInstallState:3];
  (*(*(a1 + 32) + 16))();
LABEL_18:

  v24 = *MEMORY[0x1E69E9840];
}

- (id)findApplicationIn:(id)a3
{
  v4 = MEMORY[0x1E696AE18];
  v5 = a3;
  v6 = [(HKWatchAppAvailability *)self bundleID];
  v7 = [v4 predicateWithFormat:@"bundleID == %@", v6];

  v8 = [v5 filteredArrayUsingPredicate:v7];

  v9 = [v8 firstObject];

  return v9;
}

- (void)appQuery:(id)a3 resultsDidChange:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = [(HKWatchAppAvailability *)self query];

  if (v9 == v8)
  {
    v10 = [(HKWatchAppAvailability *)self _test_apps];
    if (v10)
    {
      v11 = [(HKWatchAppAvailability *)self _test_apps];
      v12 = [(HKWatchAppAvailability *)self findApplicationIn:v11];
    }

    else
    {
      v12 = [(HKWatchAppAvailability *)self findApplicationIn:v7];
    }

    if (v12)
    {
      if ([v12 isInstalled])
      {
        v13 = 2;
      }

      else
      {
        v18 = [v12 progress];
        v13 = v18 != 0;
      }
    }

    else
    {
      _HKInitializeLogging();
      v14 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v16 = NSStringFromSelector(a2);
        v17 = [(HKWatchAppAvailability *)self bundleID];
        *buf = 138543874;
        v31 = self;
        v32 = 2114;
        v33 = v16;
        v34 = 2114;
        v35 = v17;
        _os_log_impl(&dword_19197B000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Application (%{public}@) was not found on watch", buf, 0x20u);
      }

      v13 = 0;
    }

    if ([(HKWatchAppAvailability *)self installState]== v13)
    {
      if (v13 == 1)
      {
        observers = self->_observers;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __52__HKWatchAppAvailability_appQuery_resultsDidChange___block_invoke_2;
        v27[3] = &unk_1E73819B8;
        v27[4] = self;
        v28 = v12;
        [(HKWatchAppAvailabilityObserver *)observers notifyObservers:v27];
      }
    }

    else
    {
      [(HKWatchAppAvailability *)self setInstallState:v13];
      _HKInitializeLogging();
      v20 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v21 = MEMORY[0x1E696AD98];
        v22 = self->_observers;
        v23 = v20;
        v24 = [v21 numberWithUnsignedInteger:{-[HKWatchAppAvailabilityObserver count](v22, "count")}];
        *buf = 138543618;
        v31 = self;
        v32 = 2112;
        v33 = v24;
        _os_log_impl(&dword_19197B000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying %@ observers of onboarding completion update", buf, 0x16u);
      }

      v25 = self->_observers;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __52__HKWatchAppAvailability_appQuery_resultsDidChange___block_invoke;
      v29[3] = &unk_1E7381990;
      v29[4] = self;
      v29[5] = v13;
      [(HKWatchAppAvailabilityObserver *)v25 notifyObservers:v29];
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __52__HKWatchAppAvailability_appQuery_resultsDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = MEMORY[0x1E696AD98];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) progress];
    [v5 fractionCompleted];
    v6 = [v3 numberWithDouble:?];
    [v7 watchAppAvailability:v4 appInstallProgressDidUpdate:v6];
  }
}

@end