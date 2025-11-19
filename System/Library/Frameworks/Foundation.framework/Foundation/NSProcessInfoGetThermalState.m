@interface NSProcessInfoGetThermalState
@end

@implementation NSProcessInfoGetThermalState

uint64_t ___NSProcessInfoGetThermalState_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  out_token = 0;
  v0 = *MEMORY[0x1E69E98C0];
  v1 = qos_class_main();
  global_queue = dispatch_get_global_queue(v1, 2uLL);
  result = notify_register_dispatch(v0, &out_token, global_queue, &__block_literal_global_163);
  if (!result)
  {
    +[_NSSwiftProcessInfo cancelThermalStateNotifyNotification];
    return NSProcessInfoNotifyThermalState(out_token);
  }

  return result;
}

@end