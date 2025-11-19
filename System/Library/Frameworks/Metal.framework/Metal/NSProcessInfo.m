@interface NSProcessInfo
@end

@implementation NSProcessInfo

uint64_t __63__NSProcessInfo_MTLDeviceCertification__hasPerformanceProfile___block_invoke()
{
  v0 = kSemNotification;
  global_queue = dispatch_get_global_queue(0, 0);

  return notify_register_dispatch(v0, &_semNotifyToken, global_queue, &__block_literal_global_20);
}

uint64_t __63__NSProcessInfo_MTLDeviceCertification__hasPerformanceProfile___block_invoke_2()
{
  state64 = 0;
  result = notify_get_state(_semNotifyToken, &state64);
  v1 = _semState;
  _semState = state64;
  if (state64 != v1)
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    return [v2 postNotificationName:@"com.apple.system.performance_profile_changed" object:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", state64 != 0)}];
  }

  return result;
}

@end