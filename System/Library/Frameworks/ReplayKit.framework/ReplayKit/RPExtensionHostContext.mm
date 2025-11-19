@interface RPExtensionHostContext
- (void)didConnectToVendor:(id)a3;
@end

@implementation RPExtensionHostContext

- (void)didConnectToVendor:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Connected to extension.", v3, 2u);
  }
}

@end