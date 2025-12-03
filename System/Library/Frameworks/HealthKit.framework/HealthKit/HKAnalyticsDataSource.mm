@interface HKAnalyticsDataSource
- (HKAnalyticsDataSource)initWithHealthDataSource:(id)source;
- (HKAnalyticsHealthDataSource)healthDataSource;
- (HKAnalyticsHealthDataSource)weakHealthDataSource;
- (void)healthDataSource;
@end

@implementation HKAnalyticsDataSource

- (HKAnalyticsDataSource)initWithHealthDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = HKAnalyticsDataSource;
  v5 = [(HKAnalyticsDataSource *)&v11 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeWeak(&v5->_weakHealthDataSource, 0);
      v6 = sourceCopy;
    }

    else
    {
      objc_storeWeak(&v5->_weakHealthDataSource, sourceCopy);
      v6 = 0;
    }

    strongHealthDataSource = v5->_strongHealthDataSource;
    v5->_strongHealthDataSource = v6;

    v8 = objc_alloc_init(HKAnalyticsEnvironmentDataSource);
    environmentDataSource = v5->_environmentDataSource;
    v5->_environmentDataSource = v8;
  }

  return v5;
}

- (HKAnalyticsHealthDataSource)healthDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_weakHealthDataSource);
  strongHealthDataSource = WeakRetained;
  if (WeakRetained || (strongHealthDataSource = self->_strongHealthDataSource) != 0)
  {
    v5 = strongHealthDataSource;
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogInfrastructure();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(HKAnalyticsDataSource *)self healthDataSource];
    }

    v5 = 0;
  }

  return v5;
}

- (HKAnalyticsHealthDataSource)weakHealthDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_weakHealthDataSource);

  return WeakRetained;
}

- (void)healthDataSource
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 138543362;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "[%{public}@]: Health data source is nil", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end