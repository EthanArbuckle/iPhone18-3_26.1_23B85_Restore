@interface SCDynamicStoreNullSession
@end

@implementation SCDynamicStoreNullSession

SCDynamicStoreRef ____SCDynamicStoreNullSession_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = SCDynamicStoreCreateWithOptions(0, @"null", 0, 0, 0);
  S_null_session = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end