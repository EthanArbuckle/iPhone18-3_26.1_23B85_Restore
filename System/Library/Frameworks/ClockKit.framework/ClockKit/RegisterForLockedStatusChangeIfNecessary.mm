@interface RegisterForLockedStatusChangeIfNecessary
@end

@implementation RegisterForLockedStatusChangeIfNecessary

void ___RegisterForLockedStatusChangeIfNecessary_block_invoke_2()
{
  v2 = +[CLKDevice currentDevice];
  v0 = MKBGetDeviceLockState();
  if (v0 != [v2 cachedKeybagLockState])
  {
    [v2 setCachedKeybagLockState:v0];
    v1 = [MEMORY[0x277CCAB98] defaultCenter];
    [v1 postNotificationName:@"CLKDeviceLockStateChangedNotification" object:0];
  }
}

@end