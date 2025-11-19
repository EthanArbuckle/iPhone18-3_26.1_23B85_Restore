@interface IPMonitorControlRegisterClass
@end

@implementation IPMonitorControlRegisterClass

uint64_t ____IPMonitorControlRegisterClass_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _CFRuntimeRegisterClass();
  __kIPMonitorControlTypeID = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end