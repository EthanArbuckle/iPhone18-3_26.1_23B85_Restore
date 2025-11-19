@interface BLSRuntime
+ (BOOL)isHostProcess;
+ (void)setIsHostProcess:(BOOL)a3;
@end

@implementation BLSRuntime

+ (BOOL)isHostProcess
{
  os_unfair_lock_lock(&_lock);
  v2 = _isHostProcess;
  os_unfair_lock_unlock(&_lock);
  return v2;
}

+ (void)setIsHostProcess:(BOOL)a3
{
  os_unfair_lock_lock(&_lock);
  _isHostProcess = a3;

  os_unfair_lock_unlock(&_lock);
}

@end