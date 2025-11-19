@interface LSDeviceIdentifierManager
@end

@implementation LSDeviceIdentifierManager

void __44___LSDeviceIdentifierManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = +[_LSDeviceIdentifierManager sharedInstance]::result;
  +[_LSDeviceIdentifierManager sharedInstance]::result = v1;
}

@end