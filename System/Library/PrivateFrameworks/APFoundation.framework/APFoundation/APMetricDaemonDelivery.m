@interface APMetricDaemonDelivery
+ (APMetricDaemonDeliverer)daemonDelivery;
+ (void)setDaemonDelivery:(id)a3;
- (APMetricDaemonDelivery)init;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)extendCollectionClassesForRemoteInterface:(id)a3;
- (void)receivedMetric:(id)a3;
@end

@implementation APMetricDaemonDelivery

+ (APMetricDaemonDeliverer)daemonDelivery
{
  if (qword_1EDBA4BC8 != -1)
  {
    sub_1BADC4968();
  }

  v3 = qword_1EDBA4BD8;

  return v3;
}

- (APMetricDaemonDelivery)init
{
  v9.receiver = self;
  v9.super_class = APMetricDaemonDelivery;
  v5 = [(APXPCActionRequester *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(objc_msgSend_notificationRegistrarClass(MetricsModuleCommon, v2, v3, v4));
    notificationRegistrar = v5->_notificationRegistrar;
    v5->_notificationRegistrar = v6;
  }

  return v5;
}

+ (void)setDaemonDelivery:(id)a3
{
  v23 = a3;
  v6 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v3, v4, v5);
  isRunningTests = objc_msgSend_isRunningTests(v6, v7, v8, v9);

  if (isRunningTests)
  {
    v12 = &unk_1F390EAA8;
    v13 = v23;
    if (v23 && (v14 = objc_msgSend_conformsToProtocol_(v23, v23, v12, v11), v13 = v23, !v14))
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromProtocol(v12);
      v16 = objc_msgSend_stringWithFormat_(v17, v21, @"Class %@ does not implement protocol %@!", v22, v19, v20);

      APSimulateCrash(5, v16, 0);
    }

    else
    {
      v15 = v13;
      v16 = qword_1EDBA4BD8;
      qword_1EDBA4BD8 = v15;
    }
  }
}

- (void)receivedMetric:(id)a3
{
  v4 = a3;
  v16 = objc_msgSend_notificationRegistrar(self, v5, v6, v7);
  objc_msgSend_receivedMetric_(v16, v8, v4, v9);
  v13 = objc_msgSend_remoteObjectProxy(self, v10, v11, v12);
  objc_msgSend_receivedMetric_(v13, v14, v4, v15);
}

- (void)extendCollectionClassesForRemoteInterface:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  objc_msgSend_metricClass(MetricsModuleCommon, v5, v6, v7);
  v8 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v3, v9, v8, v10, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v11, v12, sel_receivedMetric_, 0, 0);
}

- (void)connectionInterrupted
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = APLogForCategory(0x21uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = objc_opt_class();
    v3 = v6;
    _os_log_impl(&dword_1BADC1000, v2, OS_LOG_TYPE_DEFAULT, "[%@] Connection from the daemon was interrupted.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)connectionInvalidated
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = APLogForCategory(0x21uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = objc_opt_class();
    v3 = v6;
    _os_log_impl(&dword_1BADC1000, v2, OS_LOG_TYPE_DEFAULT, "[%@] Connection from the daemon was invalidated.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end