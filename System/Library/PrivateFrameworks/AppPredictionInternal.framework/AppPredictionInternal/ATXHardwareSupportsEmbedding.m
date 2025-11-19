@interface ATXHardwareSupportsEmbedding
+ (BOOL)hardwareSupportsEmbedding;
+ (void)hardwareSupportsEmbedding;
@end

@implementation ATXHardwareSupportsEmbedding

+ (BOOL)hardwareSupportsEmbedding
{
  if (getDeviceSupported_onceToken != -1)
  {
    +[ATXHardwareSupportsEmbedding hardwareSupportsEmbedding];
  }

  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[(ATXHardwareSupportsEmbedding *)v2];
  }

  return getDeviceSupported_gDeviceSupported;
}

+ (void)hardwareSupportsEmbedding
{
  v5 = *MEMORY[0x277D85DE8];
  if (getDeviceSupported_gDeviceSupported)
  {
    v1 = @"supported";
  }

  else
  {
    v1 = @"unsupported";
  }

  v3 = 138412290;
  v4 = v1;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "Embedding generation %@ on this device", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end