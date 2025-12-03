@interface WCComplicationManager
- (WCComplicationManager)init;
- (WCComplicationManagerDelegate)delegate;
- (void)xpcManager:(id)manager handlePairedSyncComplicationsStartedWithCompletionHandler:(id)handler;
- (void)xpcManager:(id)manager handlePingForExtensionBundleID:(id)d;
- (void)xpcManager:(id)manager isExtensionPrivileged:(id)privileged completionHandler:(id)handler;
- (void)xpcManager:(id)manager shouldWakeAppWithBundleID:(id)d completionHandler:(id)handler;
@end

@implementation WCComplicationManager

- (WCComplicationManager)init
{
  v7.receiver = self;
  v7.super_class = WCComplicationManager;
  v2 = [(WCComplicationManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.private.watchconnectivity.complication.delegate-queue", 0);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v3;

    v5 = +[WCPrivateXPCManager sharedManager];
    [v5 setDelegate:v2];
  }

  return v2;
}

- (void)xpcManager:(id)manager handlePingForExtensionBundleID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = wc_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[WCComplicationManager xpcManager:handlePingForExtensionBundleID:]";
    v11 = 2114;
    v12 = dCopy;
    _os_log_impl(&dword_23B2FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", &v9, 0x16u);
  }

  delegate = [(WCComplicationManager *)self delegate];
  [delegate handlePingForExtensionBundleID:dCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)xpcManager:(id)manager isExtensionPrivileged:(id)privileged completionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  privilegedCopy = privileged;
  handlerCopy = handler;
  v9 = wc_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446466;
    v13 = "[WCComplicationManager xpcManager:isExtensionPrivileged:completionHandler:]";
    v14 = 2114;
    v15 = privilegedCopy;
    _os_log_impl(&dword_23B2FA000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", &v12, 0x16u);
  }

  delegate = [(WCComplicationManager *)self delegate];
  [delegate isExtensionPrivileged:privilegedCopy completionHandler:handlerCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)xpcManager:(id)manager handlePairedSyncComplicationsStartedWithCompletionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v6 = wc_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v13 = "[WCComplicationManager xpcManager:handlePairedSyncComplicationsStartedWithCompletionHandler:]";
    _os_log_impl(&dword_23B2FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  delegate = [(WCComplicationManager *)self delegate];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__WCComplicationManager_xpcManager_handlePairedSyncComplicationsStartedWithCompletionHandler___block_invoke;
  v10[3] = &unk_278B7C3F8;
  v11 = handlerCopy;
  v8 = handlerCopy;
  [delegate handleDeviceHasBecomeActiveWithCompletionHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __94__WCComplicationManager_xpcManager_handlePairedSyncComplicationsStartedWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = wc_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSPrintF();
    *buf = 136446466;
    v8 = "[WCComplicationManager xpcManager:handlePairedSyncComplicationsStartedWithCompletionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_23B2FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %@", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
  v6 = *MEMORY[0x277D85DE8];
}

- (void)xpcManager:(id)manager shouldWakeAppWithBundleID:(id)d completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dCopy = d;
  v9 = wc_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v16 = "[WCComplicationManager xpcManager:shouldWakeAppWithBundleID:completionHandler:]";
    _os_log_impl(&dword_23B2FA000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  delegate = [(WCComplicationManager *)self delegate];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__WCComplicationManager_xpcManager_shouldWakeAppWithBundleID_completionHandler___block_invoke;
  v13[3] = &unk_278B7C420;
  v14 = handlerCopy;
  v11 = handlerCopy;
  [delegate shouldWakeAppWithBundleID:dCopy completionHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __80__WCComplicationManager_xpcManager_shouldWakeAppWithBundleID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSPrintF();
    *buf = 136446466;
    v9 = "[WCComplicationManager xpcManager:shouldWakeAppWithBundleID:completionHandler:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %@", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
  v7 = *MEMORY[0x277D85DE8];
}

- (WCComplicationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end