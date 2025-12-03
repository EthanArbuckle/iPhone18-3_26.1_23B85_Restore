@interface AADeviceModelHelper
+ (BOOL)isDeviceEqualTo:(id)to;
@end

@implementation AADeviceModelHelper

+ (BOOL)isDeviceEqualTo:(id)to
{
  toCopy = to;
  if (isDeviceEqualTo__onceToken != -1)
  {
    +[AADeviceModelHelper isDeviceEqualTo:];
  }

  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AADeviceModelHelper isDeviceEqualTo:v4];
  }

  v5 = [isDeviceEqualTo__deviceModel isEqualToString:toCopy];
  return v5;
}

uint64_t __39__AADeviceModelHelper_isDeviceEqualTo___block_invoke()
{
  isDeviceEqualTo__deviceModel = MGCopyAnswer();

  return MEMORY[0x1EEE66BB8]();
}

+ (void)isDeviceEqualTo:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = isDeviceEqualTo__deviceModel;
  _os_log_debug_impl(&dword_1B6F6A000, log, OS_LOG_TYPE_DEBUG, "Current device model: %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end