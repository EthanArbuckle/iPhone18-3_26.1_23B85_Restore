@interface SFAnalyticsMultiSampler
- (SFAnalyticsMultiSampler)initWithName:(id)a3 interval:(double)a4 block:(id)a5 clientClass:(Class)a6;
- (id)sampleNow;
- (void)dealloc;
- (void)newTimer;
- (void)pauseSampling;
- (void)setSamplingInterval:(double)a3;
- (void)setupOnceTimer;
- (void)setupPeriodicTimer;
@end

@implementation SFAnalyticsMultiSampler

- (void)dealloc
{
  [(SFAnalyticsMultiSampler *)self pauseSampling];
  v3.receiver = self;
  v3.super_class = SFAnalyticsMultiSampler;
  [(SFAnalyticsMultiSampler *)&v3 dealloc];
}

- (void)pauseSampling
{
  if (self->_activeTimer)
  {
    if (self->_oncePerReport)
    {
      notify_cancel(self->_notificationToken);
      self->_notificationToken = 0;
    }

    else
    {
      dispatch_source_cancel(self->_timer);
    }

    self->_activeTimer = 0;
  }
}

- (id)sampleNow
{
  v3 = (*(self->_block + 2))();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SFAnalyticsMultiSampler_sampleNow__block_invoke;
  v5[3] = &unk_1E70D4EA0;
  v5[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

void __36__SFAnalyticsMultiSampler_sampleNow__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 48);
  v6 = a3;
  v7 = a2;
  v8 = [v5 logger];
  [v8 logMetric:v6 withName:v7 oncePerReport:*(*(a1 + 32) + 56)];
}

- (void)setSamplingInterval:(double)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3 >= 1.0 || a3 == -1.0)
  {
    self->_samplingInterval = a3;
    v5 = *MEMORY[0x1E69E9840];

    [(SFAnalyticsMultiSampler *)self newTimer];
  }

  else
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = a3;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "SFAnalyticsSampler: interval %f is not supported", &v9, 0xCu);
    }

    v8 = *MEMORY[0x1E69E9840];
  }
}

- (void)setupPeriodicTimer
{
  v3 = dispatch_get_global_queue(0, 0);
  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);
  timer = self->_timer;
  self->_timer = v4;

  v6 = self->_timer;
  v7 = dispatch_walltime(0, (self->_samplingInterval * 1000000000.0));
  dispatch_source_set_timer(v6, v7, (self->_samplingInterval * 1000000000.0), (self->_samplingInterval * 1000000000.0 / 50.0));
  objc_initWeak(&location, self);
  v8 = self->_timer;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__SFAnalyticsMultiSampler_setupPeriodicTimer__block_invoke;
  v9[3] = &unk_1E70E0AD0;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v8, v9);
  dispatch_resume(self->_timer);
  self->_activeTimer = 1;
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __45__SFAnalyticsMultiSampler_setupPeriodicTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = (*(*(WeakRetained + 4) + 16))();
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __45__SFAnalyticsMultiSampler_setupPeriodicTimer__block_invoke_5;
    v4[3] = &unk_1E70D4EA0;
    v4[4] = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:v4];
  }

  else
  {
    v3 = secLogObjForScope("SFAnalyticsSampler");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "sampler went away before we could run its once-per-report block", buf, 2u);
    }
  }
}

void __45__SFAnalyticsMultiSampler_setupPeriodicTimer__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 48);
  v6 = a3;
  v7 = a2;
  v8 = [v5 logger];
  [v8 logMetric:v6 withName:v7 oncePerReport:*(*(a1 + 32) + 56)];
}

- (void)setupOnceTimer
{
  objc_initWeak(&location, self);
  v3 = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__SFAnalyticsMultiSampler_setupOnceTimer__block_invoke;
  v4[3] = &unk_1E70D6C00;
  objc_copyWeak(&v5, &location);
  notify_register_dispatch("com.apple.security.sfanalytics.samplers", &self->_notificationToken, v3, v4);

  self->_activeTimer = 1;
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __41__SFAnalyticsMultiSampler_setupOnceTimer__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = (*(*(WeakRetained + 4) + 16))();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__SFAnalyticsMultiSampler_setupOnceTimer__block_invoke_2;
    v7[3] = &unk_1E70D4EA0;
    v7[4] = v4;
    [v5 enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    v6 = secLogObjForScope("SFAnalyticsSampler");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "sampler went away before we could run its once-per-report block", buf, 2u);
    }

    notify_cancel(a2);
  }
}

void __41__SFAnalyticsMultiSampler_setupOnceTimer__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 48);
  v6 = a3;
  v7 = a2;
  v8 = [v5 logger];
  [v8 logMetric:v6 withName:v7 oncePerReport:*(*(a1 + 32) + 56)];
}

- (void)newTimer
{
  if (self->_activeTimer)
  {
    [(SFAnalyticsMultiSampler *)self pauseSampling];
  }

  samplingInterval = self->_samplingInterval;
  self->_oncePerReport = samplingInterval == -1.0;
  if (samplingInterval == -1.0)
  {

    [(SFAnalyticsMultiSampler *)self setupOnceTimer];
  }

  else
  {

    [(SFAnalyticsMultiSampler *)self setupPeriodicTimer];
  }
}

- (SFAnalyticsMultiSampler)initWithName:(id)a3 interval:(double)a4 block:(id)a5 clientClass:(Class)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = SFAnalyticsMultiSampler;
  v13 = [(SFAnalyticsMultiSampler *)&v21 init];
  if (!v13)
  {
    goto LABEL_16;
  }

  if (([(objc_class *)a6 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v15 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = a6;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "SFAnalyticsSampler created without valid client class (%@)", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (v11)
  {
    if (a4 < 1.0)
    {
      if (!v12 || a4 != -1.0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    if (v12)
    {
LABEL_15:
      v13->_clientClass = a6;
      v17 = _Block_copy(v12);
      block = v13->_block;
      v13->_block = v17;

      objc_storeStrong(&v13->_name, a3);
      v13->_samplingInterval = a4;
      [(SFAnalyticsMultiSampler *)v13 newTimer];
LABEL_16:
      v16 = v13;
      goto LABEL_17;
    }
  }

LABEL_7:
  v14 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "SFAnalyticsSampler created without proper data", buf, 2u);
  }

LABEL_13:
  v16 = 0;
LABEL_17:

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

@end