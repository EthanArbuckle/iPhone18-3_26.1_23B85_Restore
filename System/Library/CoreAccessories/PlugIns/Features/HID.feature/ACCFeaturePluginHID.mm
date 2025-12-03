@interface ACCFeaturePluginHID
- (NSString)description;
- (NSString)pluginName;
- (void)initPlugin;
- (void)startPlugin;
- (void)stopPlugin;
@end

@implementation ACCFeaturePluginHID

- (void)initPlugin
{
  init_logging();
  [(ACCFeaturePluginHID *)self setHidProvider:0];

  [(ACCFeaturePluginHID *)self setIsRunning:0];
}

- (void)startPlugin
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2335CB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, 0x12u);
  v0 = *MEMORY[0x277D85DE8];
}

- (void)stopPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCFeaturePluginHID startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2335CB000, v5, OS_LOG_TYPE_DEFAULT, "Stopping HID feature plugin...", v7, 2u);
  }

  hidProvider = [(ACCFeaturePluginHID *)self hidProvider];
  [hidProvider stopHIDProvider];

  [(ACCFeaturePluginHID *)self setHidProvider:0];
  [(ACCFeaturePluginHID *)self setIsRunning:0];
}

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  pluginName = [(ACCFeaturePluginHID *)self pluginName];
  v5 = obfuscatedPointer(self);
  isRunning = [(ACCFeaturePluginHID *)self isRunning];
  v7 = "NO";
  if (isRunning)
  {
    v7 = "YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> isRunning: %s", pluginName, v5, v7];

  return v8;
}

@end