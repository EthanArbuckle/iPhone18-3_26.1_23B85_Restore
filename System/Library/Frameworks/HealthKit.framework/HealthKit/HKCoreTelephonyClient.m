@interface HKCoreTelephonyClient
- (BOOL)isEmergencyServicePhoneNumber:(id)a3;
- (HKCoreTelephonyClient)init;
- (HKCoreTelephonyClient)initWithQueue:(id)a3;
- (void)activeSubscriptionsDidChange;
- (void)dealloc;
- (void)fetchMobileCountryCodeFromCellularWithCompletion:(id)a3;
- (void)invalidateCachedCountryCode;
- (void)onForeground:(id)a3;
- (void)plmnChanged:(id)a3 plmn:(id)a4;
- (void)simLessSubscriptionsDidChange;
- (void)subscriptionInfoDidChange;
@end

@implementation HKCoreTelephonyClient

- (HKCoreTelephonyClient)initWithQueue:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HKCoreTelephonyClient;
  v6 = [(HKCoreTelephonyClient *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_queue, a3);
    v8 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v7->_queue];
    client = v7->_client;
    v7->_client = v8;

    [(CoreTelephonyClient *)v7->_client setDelegate:v7];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v7 selector:sel_onForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
  }

  return v7;
}

- (HKCoreTelephonyClient)init
{
  v3 = HKCreateSerialDispatchQueue(self, @"HKCoreTelephonyClient");
  v4 = [(HKCoreTelephonyClient *)self initWithQueue:v3];

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIApplicationWillEnterForegroundNotification" object:0];

  v4.receiver = self;
  v4.super_class = HKCoreTelephonyClient;
  [(HKCoreTelephonyClient *)&v4 dealloc];
}

- (void)fetchMobileCountryCodeFromCellularWithCompletion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSString *)self->_cachedCountryCode copy];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v4[2](v4, v5, 0);
  }

  else
  {
    client = self->_client;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__HKCoreTelephonyClient_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke;
    v7[3] = &unk_1E73801A8;
    v7[4] = self;
    v8 = v4;
    [(CoreTelephonyClient *)client getCurrentDataSubscriptionContext:v7];
  }
}

void __74__HKCoreTelephonyClient_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 24);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__HKCoreTelephonyClient_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7380180;
  v6[4] = v4;
  v7 = v3;
  [v5 copyMobileCountryCode:a2 completion:v6];
}

void __74__HKCoreTelephonyClient_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v10 = a2;
  os_unfair_lock_lock(v5 + 2);
  v7 = [v10 copy];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  (*(*(a1 + 40) + 16))();
}

- (BOOL)isEmergencyServicePhoneNumber:(id)a3
{
  v4 = a3;
  client = self->_client;
  v15 = 0;
  v6 = [(CoreTelephonyClient *)client getCurrentDataSubscriptionContextSync:&v15];
  v7 = v15;
  if (v7)
  {
    _HKInitializeLogging();
    v8 = HKLogMedicalID;
    if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
    {
      [(HKCoreTelephonyClient *)v7 isEmergencyServicePhoneNumber:v8];
    }

    v9 = 0;
  }

  else
  {
    v10 = self->_client;
    v14 = 0;
    v9 = [(CoreTelephonyClient *)v10 isEmergencyNumberWithWhitelistIncluded:v6 number:v4 error:&v14];
    v11 = v14;
    if (v11)
    {
      _HKInitializeLogging();
      v12 = HKLogMedicalID;
      if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
      {
        [(HKCoreTelephonyClient *)v11 isEmergencyServicePhoneNumber:v12];
      }

      v9 = 0;
    }
  }

  return v9;
}

- (void)invalidateCachedCountryCode
{
  os_unfair_lock_lock(&self->_lock);
  cachedCountryCode = self->_cachedCountryCode;
  self->_cachedCountryCode = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)onForeground:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v4 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2082;
    v10 = "[HKCoreTelephonyClient onForeground:]";
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_INFO, "[%{public}@.%{public}s] flushing caches", &v7, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  cachedCountryCode = self->_cachedCountryCode;
  self->_cachedCountryCode = 0;

  os_unfair_lock_unlock(&self->_lock);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)plmnChanged:(id)a3 plmn:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v5 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2082;
    v10 = "[HKCoreTelephonyClient plmnChanged:plmn:]";
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_INFO, "[%{public}@.%{public}s]", &v7, 0x16u);
  }

  [(HKCoreTelephonyClient *)self invalidateCachedCountryCode];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)subscriptionInfoDidChange
{
  v9 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    v5 = 138543618;
    v6 = self;
    v7 = 2082;
    v8 = "[HKCoreTelephonyClient subscriptionInfoDidChange]";
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_INFO, "[%{public}@.%{public}s]", &v5, 0x16u);
  }

  [(HKCoreTelephonyClient *)self invalidateCachedCountryCode];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)activeSubscriptionsDidChange
{
  v9 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    v5 = 138543618;
    v6 = self;
    v7 = 2082;
    v8 = "[HKCoreTelephonyClient activeSubscriptionsDidChange]";
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_INFO, "[%{public}@.%{public}s]", &v5, 0x16u);
  }

  [(HKCoreTelephonyClient *)self invalidateCachedCountryCode];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)simLessSubscriptionsDidChange
{
  v9 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    v5 = 138543618;
    v6 = self;
    v7 = 2082;
    v8 = "[HKCoreTelephonyClient simLessSubscriptionsDidChange]";
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_INFO, "[%{public}@.%{public}s]", &v5, 0x16u);
  }

  [(HKCoreTelephonyClient *)self invalidateCachedCountryCode];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)isEmergencyServicePhoneNumber:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Failed to get CTXPCServiceSubscriptionInfo with error, %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)isEmergencyServicePhoneNumber:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Error validating if number is emergency number with error, %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end