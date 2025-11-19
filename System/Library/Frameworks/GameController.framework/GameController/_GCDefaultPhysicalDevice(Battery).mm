@interface _GCDefaultPhysicalDevice(Battery)
- (void)createPowerSource;
@end

@implementation _GCDefaultPhysicalDevice(Battery)

- (void)createPowerSource
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 8u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

@end