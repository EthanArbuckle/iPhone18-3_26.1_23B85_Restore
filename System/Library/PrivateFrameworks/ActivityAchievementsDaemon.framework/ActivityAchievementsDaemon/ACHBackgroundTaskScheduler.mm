@interface ACHBackgroundTaskScheduler
- (ACHBackgroundTaskScheduler)initWithName:(id)a3 systemTaskScheduler:(id)a4 performHandler:(id)a5;
- (NSDate)lastSuccessfulRunDate;
- (void)_performActivityWithCompletion:(id)a3;
- (void)_registerTask;
- (void)setLastSuccessfulRunDate:(id)a3;
- (void)synthesizeActivityFireWithCompletion:(id)a3;
@end

@implementation ACHBackgroundTaskScheduler

- (ACHBackgroundTaskScheduler)initWithName:(id)a3 systemTaskScheduler:(id)a4 performHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = ACHBackgroundTaskScheduler;
  v12 = [(ACHBackgroundTaskScheduler *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v13->_systemTaskScheduler, a4);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"ACHBackgroundTaskScheduler_%@_lastSuccessfulRunDate", v9];
    lastSuccessfulRunDateKey = v13->_lastSuccessfulRunDateKey;
    v13->_lastSuccessfulRunDateKey = v14;

    v16 = [v11 copy];
    performHandler = v13->_performHandler;
    v13->_performHandler = v16;

    v13->_lock._os_unfair_lock_opaque = 0;
    [(ACHBackgroundTaskScheduler *)v13 _registerTask];
  }

  return v13;
}

- (void)setLastSuccessfulRunDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lastSuccessfulRunDate = self->_lastSuccessfulRunDate;
  self->_lastSuccessfulRunDate = v4;
  v6 = v4;

  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [(NSDate *)self->_lastSuccessfulRunDate timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = [(ACHBackgroundTaskScheduler *)self lastSuccessfulRunDateKey];
  [v7 setDouble:v10 forKey:v9];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)lastSuccessfulRunDate
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lastSuccessfulRunDate)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [(ACHBackgroundTaskScheduler *)self lastSuccessfulRunDateKey];
    [v3 doubleForKey:v4];
    v6 = v5;

    if (v6 <= 0.0)
    {
      [MEMORY[0x277CBEAA8] distantPast];
    }

    else
    {
      [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
    }
    v7 = ;
    lastSuccessfulRunDate = self->_lastSuccessfulRunDate;
    self->_lastSuccessfulRunDate = v7;
  }

  v9 = self->_lastSuccessfulRunDate;
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)_registerTask
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_221DDC000, log, OS_LOG_TYPE_ERROR, "Error submitting task request for %@: %@", buf, 0x16u);
}

void __43__ACHBackgroundTaskScheduler__registerTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performActivityWithCompletion:v4];
}

- (void)_performActivityWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ACHLogScheduler();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ACHBackgroundTaskScheduler *)self name];
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Performing task for %{public}@", buf, 0xCu);
  }

  v7 = [(ACHBackgroundTaskScheduler *)self performHandler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__ACHBackgroundTaskScheduler__performActivityWithCompletion___block_invoke;
  v11[3] = &unk_278491400;
  v11[4] = self;
  v12 = v4;
  v8 = v7[2];
  v9 = v4;
  v8(v7, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __61__ACHBackgroundTaskScheduler__performActivityWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 32) setLastSuccessfulRunDate:v6];
  }

  else
  {
    v6 = ACHLogScheduler();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__ACHBackgroundTaskScheduler__performActivityWithCompletion___block_invoke_cold_1(a1, v5, v6);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)synthesizeActivityFireWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ACHBackgroundTaskScheduler *)self performHandler];
  v5[2](v5, v4);
}

void __61__ACHBackgroundTaskScheduler__performActivityWithCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) name];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_221DDC000, a3, OS_LOG_TYPE_ERROR, "Activity for %{public}@ was not successful and returned error %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end