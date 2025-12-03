@interface PFCloudKitStoreMonitorProvider
- (uint64_t)createMonitorForObservedStore:(uint64_t)result inTransactionWithLabel:(uint64_t)label;
@end

@implementation PFCloudKitStoreMonitorProvider

- (uint64_t)createMonitorForObservedStore:(uint64_t)result inTransactionWithLabel:(uint64_t)label
{
  if (result)
  {
    v3 = [PFCloudKitStoreMonitor alloc];

    return [(PFCloudKitStoreMonitor *)v3 initForStore:label];
  }

  return result;
}

@end