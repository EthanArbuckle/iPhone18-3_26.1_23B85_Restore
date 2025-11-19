@interface SFManagedFeatureObserver
@end

@implementation SFManagedFeatureObserver

void __43___SFManagedFeatureObserver_sharedObserver__block_invoke()
{
  v0 = objc_alloc_init(_SFManagedFeatureObserver);
  v1 = sharedObserver_sharedObserver;
  sharedObserver_sharedObserver = v0;
}

@end