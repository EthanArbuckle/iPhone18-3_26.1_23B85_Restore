@interface AMSFeatureEnabler
+ (NSHTTPCookie)cookie;
+ (id)_fetchEnabledFeatures;
+ (void)clear;
@end

@implementation AMSFeatureEnabler

+ (NSHTTPCookie)cookie
{
  v18[6] = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_content())
  {
    _fetchEnabledFeatures = [self _fetchEnabledFeatures];
    if ([_fetchEnabledFeatures count])
    {
      v4 = [_fetchEnabledFeatures sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

      v5 = objc_alloc(MEMORY[0x1E695ABF8]);
      v6 = *MEMORY[0x1E695AAD0];
      v18[0] = @".apple.com";
      v7 = *MEMORY[0x1E695AAD8];
      v17[0] = v6;
      v17[1] = v7;
      v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:31536000.0];
      v9 = *MEMORY[0x1E695AAF0];
      v18[1] = v8;
      v18[2] = @"itfe";
      v10 = *MEMORY[0x1E695AB00];
      v17[2] = v9;
      v17[3] = v10;
      v11 = *MEMORY[0x1E695AB18];
      v18[3] = @"/";
      v18[4] = MEMORY[0x1E695E118];
      v12 = *MEMORY[0x1E695AB20];
      v17[4] = v11;
      v17[5] = v12;
      v13 = [v4 componentsJoinedByString:@"+"];
      v18[5] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:6];
      v15 = [v5 initWithProperties:v14];

      _fetchEnabledFeatures = v4;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_fetchEnabledFeatures
{
  v17 = *MEMORY[0x1E69E9840];
  if (!+[AMSProcessInfo hasAMSEntitlement])
  {
    v3 = +[AMSLogConfig sharedConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "Current process is attempting to read from shared preferences but does not have the com.apple.private.applemediaservices entitlement.", buf, 2u);
    }
  }

  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
  v5 = CFPreferencesCopyAppValue(@"features", @"com.apple.storeservices.itfe");
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      *buf = 138543362;
      v16 = v9;
      v10 = v9;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Unable to generate the ITFE cookie. The features aren't stored in a dictionary.", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v6 = CFPreferencesCopyAppValue(@"additionalFeatures", @"com.apple.storeservices.itfe");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v5)
      {
        v7 = [v5 ams_dictionaryByAddingEntriesFromDictionary:v6];

        v5 = v7;
      }

      else
      {
        v5 = v6;
      }
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42__AMSFeatureEnabler__fetchEnabledFeatures__block_invoke;
    v14[3] = &__block_descriptor_40_e31_B24__0__NSString_8__NSNumber_16l;
    v14[4] = self;
    v12 = [v5 ams_filterUsingTest:v14];

    v11 = [v12 ams_arrayUsingTransform:&__block_literal_global_56];
    v5 = v12;
  }

  return v11;
}

uint64_t __42__AMSFeatureEnabler__fetchEnabledFeatures__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v7 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543874;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v4;
      v15 = 2114;
      v16 = v5;
      v9 = v12;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: An ITFE key or value is of the wrong type. key = %{public}@ | value = %{public}@", &v11, 0x20u);
    }

    v6 = 0;
  }

  return v6;
}

+ (void)clear
{
  CFPreferencesSetAppValue(@"features", 0, @"com.apple.storeservices.itfe");

  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
}

@end