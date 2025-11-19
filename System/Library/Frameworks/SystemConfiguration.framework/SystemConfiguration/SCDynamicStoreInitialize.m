@interface SCDynamicStoreInitialize
@end

@implementation SCDynamicStoreInitialize

uint64_t ____SCDynamicStoreInitialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  __kSCDynamicStoreTypeID = _CFRuntimeRegisterClass();
  pthread_atfork(0, 0, childForkHandler);
  if (storeQueue_once != -1)
  {
    ____SCDynamicStoreInitialize_block_invoke_cold_1();
  }

  result = os_state_add_handler();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void ____SCDynamicStoreInitialize_block_invoke_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&storeQueue_once, &__block_literal_global_3);
}

@end