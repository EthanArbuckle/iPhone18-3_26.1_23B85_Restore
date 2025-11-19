@interface AULoggingFacility
@end

@implementation AULoggingFacility

uint64_t ___AULoggingFacility_block_invoke()
{
  _AULoggingFacility_oslog = os_log_create("com.apple.Settings.AppSystemSettingsUI", "Default");

  return MEMORY[0x2821F96F8]();
}

@end