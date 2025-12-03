@interface AGXPrincipalDevice
- (AGXPrincipalDevice)initWithAcceleratorPort:(unsigned int)port;
@end

@implementation AGXPrincipalDevice

- (AGXPrincipalDevice)initWithAcceleratorPort:(unsigned int)port
{
  fwrite("Attempting to load Metal bundle via AGXPrincipalDevice is not supported!\n", 0x49uLL, 1uLL, *MEMORY[0x29EDCA610]);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Attempting to load Metal bundle via AGXPrincipalDevice is not supported!\n", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: Attempting to load Metal bundle via AGXPrincipalDevice is not supported!\n", v4, 2u);
  }

  return 0;
}

@end