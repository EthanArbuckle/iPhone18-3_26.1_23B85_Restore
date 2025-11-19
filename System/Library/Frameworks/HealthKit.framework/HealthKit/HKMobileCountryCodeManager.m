@interface HKMobileCountryCodeManager
+ (BOOL)isOverridePresent;
+ (id)overrideMobileCountryCode;
+ (void)setOverrideMobileCountryCode:(id)a3;
- (BOOL)_isLocationAvailableWithError:(id *)a3;
- (HKMobileCountryCodeManager)init;
- (id)_wrapperWithMobileCountryCode:(id)a3 error:(id *)a4;
- (id)copyISOCountryCodeForMobileCountryCode:(id)a3 error:(id *)a4;
- (id)currentCountryCode;
- (id)currentEstimate;
- (id)mobileCountryCodeFromCellularWithError:(id *)a3;
- (void)_submitAnalyticsForError:(id)a3 mobileCountryCode:(id)a4;
- (void)dealloc;
- (void)fetchISOCountryCodeFromCellularWithCompletion:(id)a3;
- (void)fetchMobileCountryCodeFromCellularWithCompletion:(id)a3;
@end

@implementation HKMobileCountryCodeManager

- (HKMobileCountryCodeManager)init
{
  v11.receiver = self;
  v11.super_class = HKMobileCountryCodeManager;
  v2 = [(HKMobileCountryCodeManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = HKCreateSerialDispatchQueue(v2, @"mobile-country-code.telephony");
    v5 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v4];
    coreTelephonyClient = v3->_coreTelephonyClient;
    v3->_coreTelephonyClient = v5;

    [(CoreTelephonyClient *)v3->_coreTelephonyClient setDelegate:v3];
    v7 = *MEMORY[0x1E695E480];
    v3->_coreTelephonyServerConnection = _CTServerConnectionCreateOnTargetQueue();
    v8 = objc_alloc_init(MEMORY[0x1E698B6B0]);
    radiosPreferences = v3->_radiosPreferences;
    v3->_radiosPreferences = v8;
  }

  return v3;
}

- (void)dealloc
{
  coreTelephonyServerConnection = self->_coreTelephonyServerConnection;
  if (coreTelephonyServerConnection)
  {
    CFRelease(coreTelephonyServerConnection);
  }

  v4.receiver = self;
  v4.super_class = HKMobileCountryCodeManager;
  [(HKMobileCountryCodeManager *)&v4 dealloc];
}

- (void)fetchISOCountryCodeFromCellularWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__HKMobileCountryCodeManager_fetchISOCountryCodeFromCellularWithCompletion___block_invoke;
  v6[3] = &unk_1E73859F8;
  v7 = v4;
  v5 = v4;
  [(HKMobileCountryCodeManager *)self fetchMobileCountryCodeFromCellularWithCompletion:v6];
}

void __76__HKMobileCountryCodeManager_fetchISOCountryCodeFromCellularWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 ISOCode];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)fetchMobileCountryCodeFromCellularWithCompletion:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v5 = [(HKMobileCountryCodeManager *)self _isLocationAvailableWithError:&v15];
  v6 = v15;
  if (v5)
  {
    v7 = [objc_opt_class() _overrideISOCountryCode];
    if (v7)
    {
      _HKInitializeLogging();
      v8 = HKLogInfrastructure();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        *buf = 138543618;
        v17 = v9;
        v18 = 2114;
        v19 = v7;
        _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Returning ISO country code override override: %{public}@", buf, 0x16u);
      }

      if ([v7 isEqualToString:@"NONE"])
      {
        v10 = [MEMORY[0x1E696ABC0] hk_error:109 description:@"OVERRIDE: No estimate available"];
        v4[2](v4, 0, v10);
      }

      else
      {
        v10 = [[HKMobileCountryCode alloc] initWithMobileCountryCode:&stru_1F05FF230 ISOCode:v7 isOverridden:1];
        (v4)[2](v4, v10, 0);
      }
    }

    else
    {
      coreTelephonyClient = self->_coreTelephonyClient;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke;
      v13[3] = &unk_1E73801A8;
      v13[4] = self;
      v14 = v4;
      [(CoreTelephonyClient *)coreTelephonyClient getCurrentDataSubscriptionContext:v13];
    }
  }

  else
  {
    v4[2](v4, 0, v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 8);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_29;
    v11[3] = &unk_1E7380180;
    v11[4] = v7;
    v12 = v6;
    [v8 copyMobileCountryCode:a2 completion:v11];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] hk_error:109 description:@"Failed to get current data subscription context" underlyingError:v5];
    _HKInitializeLogging();
    v10 = HKLogInfrastructure();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_cold_1();
    }

    [*(a1 + 32) _submitAnalyticsForError:@"Nil data subscription context" mobileCountryCode:0];
    (*(*(a1 + 40) + 16))();
  }
}

void __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_29(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E696ABC0] hk_error:109 description:@"Failed to get mobile country code" underlyingError:v5];
    _HKInitializeLogging();
    v8 = HKLogInfrastructure();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_29_cold_1();
    }

    [*(a1 + 32) _submitAnalyticsForError:@"Error getting mobile country code" mobileCountryCode:0];
    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    v10 = *(a1 + 32);
    v12 = 0;
    v7 = [v10 _wrapperWithMobileCountryCode:a2 error:&v12];
    v6 = v12;
    if (v6)
    {
      _HKInitializeLogging();
      v11 = HKLogInfrastructure();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_29_cold_2();
      }

      v9 = *(*(a1 + 40) + 16);
    }

    else
    {
      v9 = *(*(a1 + 40) + 16);
    }
  }

  v9();
}

- (id)mobileCountryCodeFromCellularWithError:(id *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(HKMobileCountryCodeManager *)self _isLocationAvailableWithError:?])
  {
    v5 = [objc_opt_class() _overrideISOCountryCode];
    if (v5)
    {
      _HKInitializeLogging();
      v6 = HKLogInfrastructure();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v21 = objc_opt_class();
        v22 = 2114;
        v23 = v5;
        _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Returning ISO country code override override: %{public}@", buf, 0x16u);
      }

      if ([v5 isEqualToString:@"NONE"])
      {
        [MEMORY[0x1E696ABC0] hk_assignError:a3 code:109 description:@"OVERRIDE: No estimate available"];
        v7 = 0;
      }

      else
      {
        v7 = [[HKMobileCountryCode alloc] initWithMobileCountryCode:&stru_1F05FF230 ISOCode:v5 isOverridden:1];
      }
    }

    else
    {
      coreTelephonyClient = self->_coreTelephonyClient;
      v19 = 0;
      v9 = [(CoreTelephonyClient *)coreTelephonyClient getCurrentDataSubscriptionContextSync:&v19];
      v10 = v19;
      if (v9)
      {
        v11 = self->_coreTelephonyClient;
        v18 = v10;
        v12 = [(CoreTelephonyClient *)v11 copyMobileCountryCode:v9 error:&v18];
        v13 = v18;

        if (v13)
        {
          [MEMORY[0x1E696ABC0] hk_assignError:a3 code:109 description:@"Failed to get mobile country code" underlyingError:v13];
          _HKInitializeLogging();
          v14 = HKLogInfrastructure();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [HKMobileCountryCodeManager mobileCountryCodeFromCellularWithError:];
          }

          [(HKMobileCountryCodeManager *)self _submitAnalyticsForError:@"Error getting mobile country code" mobileCountryCode:0];
          v7 = 0;
        }

        else
        {
          v7 = [(HKMobileCountryCodeManager *)self _wrapperWithMobileCountryCode:v12 error:a3];
        }

        v10 = v13;
      }

      else
      {
        [MEMORY[0x1E696ABC0] hk_assignError:a3 code:109 description:@"Failed to get current data subscription context" underlyingError:v10];
        _HKInitializeLogging();
        v15 = HKLogInfrastructure();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [HKMobileCountryCodeManager mobileCountryCodeFromCellularWithError:];
        }

        [(HKMobileCountryCodeManager *)self _submitAnalyticsForError:@"Nil data subscription context" mobileCountryCode:0];
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)_isLocationAvailableWithError:(id *)a3
{
  [(RadiosPreferences *)self->_radiosPreferences refresh];
  v5 = [(RadiosPreferences *)self->_radiosPreferences airplaneMode];
  if (v5)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a3 code:109 description:@"Location not available"];
    _HKInitializeLogging();
    v6 = HKLogInfrastructure();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HKMobileCountryCodeManager _isLocationAvailableWithError:];
    }
  }

  return v5 ^ 1;
}

- (id)_wrapperWithMobileCountryCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() overrideMobileCountryCode];
  v8 = v7;
  if (v7)
  {
    v9 = v7;

    v6 = v9;
  }

  v10 = [v6 hk_copyNonEmptyString];

  if (v10 && [v10 integerValue] != 0xFFFF)
  {
    v12 = [(HKMobileCountryCodeManager *)self copyISOCountryCodeForMobileCountryCode:v10 error:a4];
    if (v12)
    {
      v11 = [[HKMobileCountryCode alloc] initWithMobileCountryCode:v10 ISOCode:v12 isOverridden:v8 != 0];
    }

    else
    {
      [(HKMobileCountryCodeManager *)self _submitAnalyticsForError:@"Nil ISO country code" mobileCountryCode:v10];
      v11 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:109 format:@"MCC is unknown"];
    [(HKMobileCountryCodeManager *)self _submitAnalyticsForError:@"Nil mobile country code" mobileCountryCode:0];
    v11 = 0;
  }

  return v11;
}

- (id)copyISOCountryCodeForMobileCountryCode:(id)a3 error:(id *)a4
{
  if (self->_coreTelephonyServerConnection)
  {
    if (!_CTServerConnectionCopyISOForMCC())
    {
      v7 = [0 uppercaseString];

      return v7;
    }

    v5 = MEMORY[0x1E696ABC0];
    v6 = @"CoreTelephony server copying ISO from MCC failed";
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = @"CoreTelephony server connection was NULL";
  }

  [v5 hk_assignError:a4 code:100 description:v6];
  return 0;
}

+ (BOOL)isOverridePresent
{
  v3 = [a1 overrideMobileCountryCode];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 _overrideISOCountryCode];
    v4 = v5 != 0;
  }

  return v4;
}

+ (void)setOverrideMobileCountryCode:(id)a3
{
  v3 = *MEMORY[0x1E695E890];
  CFPreferencesSetAppValue(@"HKMobileCountryCodeOverride", a3, *MEMORY[0x1E695E890]);

  CFPreferencesAppSynchronize(v3);
}

+ (id)overrideMobileCountryCode
{
  v12 = *MEMORY[0x1E69E9840];
  if (+[_HKBehavior isAppleInternalInstall])
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v2 stringForKey:@"HKMobileCountryCodeOverride"];
    v4 = [v3 hk_copyNonEmptyString];

    if (v4)
    {
      _HKInitializeLogging();
      v5 = HKLogInfrastructure();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138543618;
        v9 = objc_opt_class();
        v10 = 2114;
        v11 = v4;
        _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning overridden MCC %{public}@.", &v8, 0x16u);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_submitAnalyticsForError:(id)a3 mobileCountryCode:(id)a4
{
  v14[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() overrideMobileCountryCode];

  if (!v7)
  {
    v13[0] = @"Error";
    v13[1] = @"MobileCountryCode";
    v8 = @"-1";
    if (v6)
    {
      v8 = v6;
    }

    v14[0] = v5;
    v14[1] = v8;
    v13[2] = @"UserLocale";
    v9 = [MEMORY[0x1E695DF58] currentLocale];
    v10 = [v9 localeIdentifier];
    v14[2] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
    AnalyticsSendEvent();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)currentCountryCode
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = [(HKMobileCountryCodeManager *)self mobileCountryCodeFromCellularWithError:&v10];
  v3 = v10;
  if (!v2)
  {
    _HKInitializeLogging();
    v4 = HKLogInfrastructure();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      *buf = 138543618;
      v12 = v5;
      v13 = 2114;
      v14 = v3;
      v6 = v5;
      _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to retrieve country code: %{public}@", buf, 0x16u);
    }
  }

  v7 = [v2 ISOCode];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)currentEstimate
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v2 = [(HKMobileCountryCodeManager *)self mobileCountryCodeFromCellularWithError:&v12];
  v3 = v12;
  if (v2)
  {
    v4 = [HKRegulatoryDomainEstimate alloc];
    v5 = [v2 ISOCode];
    v6 = [v2 timestamp];
    v7 = -[HKRegulatoryDomainEstimate initWithISOCode:timestamp:provenance:](v4, "initWithISOCode:timestamp:provenance:", v5, v6, [v2 provenance]);
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogInfrastructure();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      *buf = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v3;
      v9 = v8;
      _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to retrieve country code: %{public}@", buf, 0x16u);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

void __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 32);
  objc_opt_class();
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_29_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 32);
  objc_opt_class();
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_29_cold_2()
{
  OUTLINED_FUNCTION_2_6();
  v8 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  objc_opt_class();
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)mobileCountryCodeFromCellularWithError:.cold.1()
{
  OUTLINED_FUNCTION_2_6();
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)mobileCountryCodeFromCellularWithError:.cold.2()
{
  OUTLINED_FUNCTION_2_6();
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_isLocationAvailableWithError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end