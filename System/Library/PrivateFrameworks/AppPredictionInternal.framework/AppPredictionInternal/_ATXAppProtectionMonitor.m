@interface _ATXAppProtectionMonitor
+ (id)sharedInstance;
- (APSubjectMonitorSubscription)appProtectionSubjectMonitorSubscription;
- (_ATXAppProtectionMonitor)init;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)dealloc;
@end

@implementation _ATXAppProtectionMonitor

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_35 != -1)
  {
    +[_ATXAppProtectionMonitor sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_43;

  return v3;
}

- (_ATXAppProtectionMonitor)init
{
  v8.receiver = self;
  v8.super_class = _ATXAppProtectionMonitor;
  v2 = [(_ATXAppProtectionMonitor *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEBEB8] subjectMonitorRegistry];
    v4 = [v3 addMonitor:v2 subjectMask:1];
    objc_storeWeak(&v2->_appProtectionSubjectMonitorSubscription, v4);

    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "_ATXAppProtectionMonitor initialized", v7, 2u);
    }
  }

  return v2;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_appProtectionSubjectMonitorSubscription);
  [WeakRetained invalidate];

  v4.receiver = self;
  v4.super_class = _ATXAppProtectionMonitor;
  [(_ATXAppProtectionMonitor *)&v4 dealloc];
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73___ATXAppProtectionMonitor_appProtectionSubjectsChanged_forSubscription___block_invoke;
  block[3] = &unk_278597828;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (APSubjectMonitorSubscription)appProtectionSubjectMonitorSubscription
{
  WeakRetained = objc_loadWeakRetained(&self->_appProtectionSubjectMonitorSubscription);

  return WeakRetained;
}

@end