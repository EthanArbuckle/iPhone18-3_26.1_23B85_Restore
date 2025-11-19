@interface CFRunLoopRunSpecificWithOptions
@end

@implementation CFRunLoopRunSpecificWithOptions

uint64_t ___CFRunLoopRunSpecificWithOptions_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = CFLog(3, @"invalid mode '%@' provided to CFRunLoopRunSpecific - break on _CFRunLoopError_RunCalledWithInvalidMode to debug. This message will only appear once per execution.", a3, a4, a5, a6, a7, a8, *(a1 + 32));

  return _CFRunLoopError_RunCalledWithInvalidMode(v8);
}

@end