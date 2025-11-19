@interface LA
@end

@implementation LA

uint64_t __LA_LOG_EndpointProvider_block_invoke()
{
  LA_LOG_EndpointProvider_log = os_log_create("com.apple.LocalAuthentication", "EndpointProvider");

  return MEMORY[0x1EEE66BB8]();
}

@end