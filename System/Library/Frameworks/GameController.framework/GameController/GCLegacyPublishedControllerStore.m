@interface GCLegacyPublishedControllerStore
@end

@implementation GCLegacyPublishedControllerStore

void __51___GCLegacyPublishedControllerStore_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_GCLegacyPublishedControllerStore);
  v1 = sharedInstance_Shared_2;
  sharedInstance_Shared_2 = v0;
}

@end