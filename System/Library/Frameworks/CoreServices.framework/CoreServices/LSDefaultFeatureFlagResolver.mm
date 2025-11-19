@interface LSDefaultFeatureFlagResolver
@end

@implementation LSDefaultFeatureFlagResolver

void __47___LSDefaultFeatureFlagResolver_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_LSDefaultFeatureFlagResolver);
  v1 = +[_LSDefaultFeatureFlagResolver sharedInstance]::resolver;
  +[_LSDefaultFeatureFlagResolver sharedInstance]::resolver = v0;
}

@end