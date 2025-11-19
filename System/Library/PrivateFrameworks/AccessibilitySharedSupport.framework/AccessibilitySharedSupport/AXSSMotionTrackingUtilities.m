@interface AXSSMotionTrackingUtilities
+ (BOOL)axss_HIDDeviceIsMFiAuthenticated:(id)a3;
+ (NSDictionary)axss_frequencyElementMatchingDict;
+ (NSDictionary)axss_statusElementMatchingDict;
+ (NSDictionary)axss_xPositionElementMatchingDict;
+ (NSDictionary)axss_yPositionElementMatchingDict;
@end

@implementation AXSSMotionTrackingUtilities

+ (NSDictionary)axss_xPositionElementMatchingDict
{
  if (axss_xPositionElementMatchingDict_onceToken != -1)
  {
    +[AXSSMotionTrackingUtilities axss_xPositionElementMatchingDict];
  }

  v3 = axss_xPositionElementMatchingDict_s_XPositionElementMatchingDict;

  return v3;
}

void __64__AXSSMotionTrackingUtilities_axss_xPositionElementMatchingDict__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"UsagePage";
  v3[1] = @"Usage";
  v4[0] = &unk_1F4066990;
  v4[1] = &unk_1F40669A8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = axss_xPositionElementMatchingDict_s_XPositionElementMatchingDict;
  axss_xPositionElementMatchingDict_s_XPositionElementMatchingDict = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (NSDictionary)axss_yPositionElementMatchingDict
{
  if (axss_yPositionElementMatchingDict_onceToken != -1)
  {
    +[AXSSMotionTrackingUtilities axss_yPositionElementMatchingDict];
  }

  v3 = axss_yPositionElementMatchingDict_s_YPositionElementMatchingDict;

  return v3;
}

void __64__AXSSMotionTrackingUtilities_axss_yPositionElementMatchingDict__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"UsagePage";
  v3[1] = @"Usage";
  v4[0] = &unk_1F4066990;
  v4[1] = &unk_1F40669C0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = axss_yPositionElementMatchingDict_s_YPositionElementMatchingDict;
  axss_yPositionElementMatchingDict_s_YPositionElementMatchingDict = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (NSDictionary)axss_statusElementMatchingDict
{
  if (axss_statusElementMatchingDict_onceToken != -1)
  {
    +[AXSSMotionTrackingUtilities axss_statusElementMatchingDict];
  }

  v3 = axss_statusElementMatchingDict_s_YPositionElementMatchingDict;

  return v3;
}

void __61__AXSSMotionTrackingUtilities_axss_statusElementMatchingDict__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"UsagePage";
  v3[1] = @"Usage";
  v4[0] = &unk_1F4066990;
  v4[1] = &unk_1F40669D8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = axss_statusElementMatchingDict_s_YPositionElementMatchingDict;
  axss_statusElementMatchingDict_s_YPositionElementMatchingDict = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (NSDictionary)axss_frequencyElementMatchingDict
{
  if (axss_frequencyElementMatchingDict_onceToken != -1)
  {
    +[AXSSMotionTrackingUtilities axss_frequencyElementMatchingDict];
  }

  v3 = axss_frequencyElementMatchingDict_s_YPositionElementMatchingDict;

  return v3;
}

void __64__AXSSMotionTrackingUtilities_axss_frequencyElementMatchingDict__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"UsagePage";
  v3[1] = @"Usage";
  v4[0] = &unk_1F4066990;
  v4[1] = &unk_1F40669F0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = axss_frequencyElementMatchingDict_s_YPositionElementMatchingDict;
  axss_frequencyElementMatchingDict_s_YPositionElementMatchingDict = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (BOOL)axss_HIDDeviceIsMFiAuthenticated:(id)a3
{
  v3 = a3;
  v4 = [v3 propertyForKey:@"Authenticated"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v5 = [objc_opt_class() _axss_iAPInterfaceExistsForHIDDeviceService:{objc_msgSend(v3, "service")}];
  }

  return v5;
}

+ (void)_axss_iAPInterfaceExistsForHIDDeviceService:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(&dword_1C0E8A000, v0, OS_LOG_TYPE_ERROR, "%s: cannot create parent iterator: error 0x%08X (%d)", v2, 0x18u);
  v1 = *MEMORY[0x1E69E9840];
}

@end