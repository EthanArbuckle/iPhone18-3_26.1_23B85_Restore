@interface GCController(Discovery)
@end

@implementation GCController(Discovery)

+ (void)_startWirelessControllerDiscoveryWithBTClassic:()Discovery btle:completionHandler:.cold.1()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
  }
}

@end