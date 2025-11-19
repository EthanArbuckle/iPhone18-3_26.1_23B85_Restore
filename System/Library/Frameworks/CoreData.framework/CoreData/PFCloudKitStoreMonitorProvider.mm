@interface PFCloudKitStoreMonitorProvider
- (uint64_t)createMonitorForObservedStore:(uint64_t)result inTransactionWithLabel:(uint64_t)a2;
@end

@implementation PFCloudKitStoreMonitorProvider

- (uint64_t)createMonitorForObservedStore:(uint64_t)result inTransactionWithLabel:(uint64_t)a2
{
  if (result)
  {
    v3 = [PFCloudKitStoreMonitor alloc];

    return [(PFCloudKitStoreMonitor *)v3 initForStore:a2];
  }

  return result;
}

@end