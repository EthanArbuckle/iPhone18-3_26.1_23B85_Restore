@interface HKFeatureAvailabilityRequirementOSEligibilityDomainIsEligible
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityRequirementOSEligibilityDomainIsEligible)initWithCoder:(id)a3;
- (HKFeatureAvailabilityRequirementOSEligibilityDomainIsEligible)initWithDomain:(unint64_t)a3;
- (NSArray)requiredEntitlements;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (void)handleDarwinNotificationForObserver:(uint64_t)a3 dataSource:;
- (void)registerObserver:(id)a3 forDataSource:(id)a4;
- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4;
@end

@implementation HKFeatureAvailabilityRequirementOSEligibilityDomainIsEligible

- (HKFeatureAvailabilityRequirementOSEligibilityDomainIsEligible)initWithDomain:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityRequirementOSEligibilityDomainIsEligible;
  result = [(HKFeatureAvailabilityRequirementOSEligibilityDomainIsEligible *)&v5 init];
  if (result)
  {
    result->_domain = a3;
  }

  return result;
}

- (NSArray)requiredEntitlements
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement OSEligibilityPlistFilePathReadAccessEntitlement];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v16 = 0;
  v6 = [a3 OSEligibilityDataSource];
  domain = self->_domain;
  v15 = 0;
  v8 = [v6 getAnswer:&v16 forDomain:domain error:&v15];
  v9 = v15;

  if (!v8)
  {
    v11 = v9;
    v12 = v11;
    if (v11)
    {
      if (a4)
      {
        v13 = v11;
        *a4 = v12;
      }

      else
      {
        _HKLogDroppedError(v11);
      }
    }

    goto LABEL_10;
  }

  if ((v16 - 1) >= 4)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:2000 format:{@"Could not get an answer for %llu", self->_domain}];
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = qword_1E7384318[v16 - 1];
LABEL_11:

  return v10;
}

- (void)registerObserver:(id)a3 forDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 OSEligibilityDataSource];
  v9 = [v8 notificationNameForDomain:self->_domain];

  if (v9)
  {
    objc_initWeak(&location, v7);
    v10 = [v7 darwinNotificationDataSource];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __96__HKFeatureAvailabilityRequirementOSEligibilityDomainIsEligible_registerObserver_forDataSource___block_invoke;
    v11[3] = &unk_1E73842F8;
    objc_copyWeak(&v12, &location);
    v11[4] = self;
    [v10 registerObserver:v6 forKey:v9 newValueHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __96__HKFeatureAvailabilityRequirementOSEligibilityDomainIsEligible_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [(HKFeatureAvailabilityRequirementOSEligibilityDomainIsEligible *)*(a1 + 32) handleDarwinNotificationForObserver:v4 dataSource:WeakRetained];
  }
}

- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4
{
  v8 = a4;
  v5 = [v8 OSEligibilityDataSource];
  v6 = [v5 notificationNameForDomain:self->_domain];

  if (v6)
  {
    v7 = [v8 darwinNotificationDataSource];
    [v7 unregisterObserver:self forKey:v6];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_domain == v4[1];

  return v5;
}

- (HKFeatureAvailabilityRequirementOSEligibilityDomainIsEligible)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKFeatureAvailabilityRequirementOSEligibilityDomainIsEligible;
  v5 = [(HKFeatureAvailabilityRequirementOSEligibilityDomainIsEligible *)&v7 init];
  if (v5)
  {
    v5->_domain = [v4 decodeInt64ForKey:@"Domain"];
  }

  return v5;
}

- (void)handleDarwinNotificationForObserver:(uint64_t)a3 dataSource:
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v12 = 0;
    v6 = [a1 isSatisfiedWithDataSource:a3 error:&v12];
    v7 = v12;
    if (v6)
    {
      [v5 featureAvailabilityRequirement:a1 didUpdateSatisfaction:{objc_msgSend(v6, "BOOLValue")}];
    }

    else
    {
      _HKInitializeLogging();
      v8 = HKLogInfrastructure();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        *buf = 138543618;
        v14 = v10;
        v15 = 2114;
        v16 = v7;
        v11 = v10;
        _os_log_error_impl(&dword_19197B000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Error determining os_eligibility answer: %{public}@", buf, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end