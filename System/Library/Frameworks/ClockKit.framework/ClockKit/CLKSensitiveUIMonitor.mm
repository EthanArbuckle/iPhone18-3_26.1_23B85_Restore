@interface CLKSensitiveUIMonitor
+ (id)sharedMonitor;
- (BOOL)_isVendorRelease;
@end

@implementation CLKSensitiveUIMonitor

+ (id)sharedMonitor
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CLKSensitiveUIMonitor_sharedMonitor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedMonitor_onceToken != -1)
  {
    dispatch_once(&sharedMonitor_onceToken, block);
  }

  v2 = sharedMonitor_monitor;

  return v2;
}

uint64_t __38__CLKSensitiveUIMonitor_sharedMonitor__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedMonitor_monitor;
  sharedMonitor_monitor = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (BOOL)_isVendorRelease
{
  if (_isVendorRelease_onceToken != -1)
  {
    [CLKSensitiveUIMonitor _isVendorRelease];
  }

  return _isVendorRelease___isVendorRelease;
}

void __41__CLKSensitiveUIMonitor__isVendorRelease__block_invoke()
{
  v0 = MGGetStringAnswer();
  _isVendorRelease___isVendorRelease = [@"Vendor" isEqualToString:v0];
}

@end