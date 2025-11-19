@interface SFDownloadStorageUsageMonitor
@end

@implementation SFDownloadStorageUsageMonitor

void __39___SFDownloadStorageUsageMonitor_usage__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 8) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        *(*(*(a1 + 40) + 8) + 24) += [*(*(&v7 + 1) + 8 * v6++) cachedUsage];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __56___SFDownloadStorageUsageMonitor__reloadDownloadHistory__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"_SFDownloadStorageUsageMonitorDidChangeUsageNotification" object:*(a1 + 32)];
}

void __54___SFDownloadStorageUsageMonitor_entryDidChangeUsage___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"_SFDownloadStorageUsageMonitorDidChangeUsageNotification" object:*(a1 + 32)];
}

@end