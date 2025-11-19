@interface NSProcessInfoGetPowerState
@end

@implementation NSProcessInfoGetPowerState

uint64_t ___NSProcessInfoGetPowerState_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  out_token = 0;
  v0 = qos_class_main();
  global_queue = dispatch_get_global_queue(v0, 2uLL);
  result = notify_register_dispatch("com.apple.system.lowpowermode", &out_token, global_queue, &__block_literal_global_168);
  if (!result)
  {
    +[_NSSwiftProcessInfo cancelPowerStateNotifyNotification];
    return NSProcessInfoNotifyPowerState(out_token);
  }

  return result;
}

@end