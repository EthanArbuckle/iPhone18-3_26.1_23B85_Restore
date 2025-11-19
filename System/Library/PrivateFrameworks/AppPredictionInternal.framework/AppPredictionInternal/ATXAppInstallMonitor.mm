@interface ATXAppInstallMonitor
@end

@implementation ATXAppInstallMonitor

void __62___ATXAppInstallMonitor_noSyncUpdateWithWaitTime_andBackdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (!v5)
  {
    v5 = [*(a1 + 32) _fetchAllApps];
  }

  if ([v5 count])
  {
    [v8 minusSet:v5];
    v6 = *(a1 + 32);
    v7 = [v8 allObjects];
    [v6 handleUninstallationOfApps:v7];
  }
}

@end