@interface SFAnalyticsSampler
- (SFAnalyticsSampler)initWithName:(id)name interval:(double)interval block:(id)block clientClass:(Class)class;
- (id)sampleNow;
- (void)dealloc;
- (void)newTimer;
- (void)pauseSampling;
- (void)setSamplingInterval:(double)interval;
- (void)setupOnceTimer;
- (void)setupPeriodicTimer;
@end

@implementation SFAnalyticsSampler

- (void)dealloc
{
  [(SFAnalyticsSampler *)self pauseSampling];
  v3.receiver = self;
  v3.super_class = SFAnalyticsSampler;
  [(SFAnalyticsSampler *)&v3 dealloc];
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
  logger = [(objc_class *)self->_clientClass logger];
  [logger logMetric:v3 withName:self->_name oncePerReport:self->_oncePerReport];

  return v3;
}

- (void)setSamplingInterval:(double)interval
{
  v11 = *MEMORY[0x1E69E9840];
  if (interval >= 1.0 || interval == -1.0)
  {
    self->_samplingInterval = interval;
    v5 = *MEMORY[0x1E69E9840];

    [(SFAnalyticsSampler *)self newTimer];
  }

  else
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      intervalCopy = interval;
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
  v9[2] = __40__SFAnalyticsSampler_setupPeriodicTimer__block_invoke;
  v9[3] = &unk_1E70E0AD0;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v8, v9);
  dispatch_resume(self->_timer);
  self->_activeTimer = 1;
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __40__SFAnalyticsSampler_setupPeriodicTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[6] logger];
    v4 = (*(v2[4] + 2))();
    [v3 logMetric:v4 withName:v2[3] oncePerReport:*(v2 + 56)];
  }

  else
  {
    v3 = secLogObjForScope("SFAnalyticsSampler");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 0;
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "sampler went away before we could run its once-per-report block", v5, 2u);
    }
  }
}

- (void)setupOnceTimer
{
  objc_initWeak(&location, self);
  v3 = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__SFAnalyticsSampler_setupOnceTimer__block_invoke;
  v4[3] = &unk_1E70D6C00;
  objc_copyWeak(&v5, &location);
  notify_register_dispatch("com.apple.security.sfanalytics.samplers", &self->_notificationToken, v3, v4);

  self->_activeTimer = 1;
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __36__SFAnalyticsSampler_setupOnceTimer__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[6] logger];
    v6 = (*(v4[4] + 2))();
    [v5 logMetric:v6 withName:v4[3] oncePerReport:*(v4 + 56)];
  }

  else
  {
    v7 = secLogObjForScope("SFAnalyticsSampler");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "sampler went away before we could run its once-per-report block", v8, 2u);
    }

    notify_cancel(a2);
  }
}

- (void)newTimer
{
  if (self->_activeTimer)
  {
    [(SFAnalyticsSampler *)self pauseSampling];
  }

  samplingInterval = self->_samplingInterval;
  self->_oncePerReport = samplingInterval == -1.0;
  if (samplingInterval == -1.0)
  {

    [(SFAnalyticsSampler *)self setupOnceTimer];
  }

  else
  {

    [(SFAnalyticsSampler *)self setupPeriodicTimer];
  }
}

- (SFAnalyticsSampler)initWithName:(id)name interval:(double)interval block:(id)block clientClass:(Class)class
{
  v24 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  blockCopy = block;
  v21.receiver = self;
  v21.super_class = SFAnalyticsSampler;
  v13 = [(SFAnalyticsSampler *)&v21 init];
  if (!v13)
  {
    goto LABEL_16;
  }

  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v15 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      classCopy = class;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "SFAnalyticsSampler created without valid client class (%@)", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (nameCopy)
  {
    if (interval < 1.0)
    {
      if (!blockCopy || interval != -1.0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    if (blockCopy)
    {
LABEL_15:
      v13->_clientClass = class;
      v17 = _Block_copy(blockCopy);
      block = v13->_block;
      v13->_block = v17;

      objc_storeStrong(&v13->_name, name);
      v13->_samplingInterval = interval;
      [(SFAnalyticsSampler *)v13 newTimer];
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