@interface LSDefaultsGetSharedInstance
@end

@implementation LSDefaultsGetSharedInstance

void ____LSDefaultsGetSharedInstance_block_invoke()
{
  v0 = objc_alloc_init(_LSDefaults);
  v1 = __LSDefaultsGetSharedInstance_sharedInstance;
  __LSDefaultsGetSharedInstance_sharedInstance = v0;
}

@end