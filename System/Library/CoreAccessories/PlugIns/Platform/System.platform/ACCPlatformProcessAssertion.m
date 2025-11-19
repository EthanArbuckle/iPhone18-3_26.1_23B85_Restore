@interface ACCPlatformProcessAssertion
- (void)dealloc;
@end

@implementation ACCPlatformProcessAssertion

- (void)dealloc
{
  [(ACCPlatformProcessAssertion *)self setStartTime:0];
  [(ACCPlatformProcessAssertion *)self invalidate];
  v3 = [(ACCPlatformProcessAssertion *)self processAssertionTimer];
  dispatch_source_cancel(v3);

  [(ACCPlatformProcessAssertion *)self setProcessAssertionTimer:0];
  v4.receiver = self;
  v4.super_class = ACCPlatformProcessAssertion;
  [(ACCPlatformProcessAssertion *)&v4 dealloc];
}

- (void)initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_233648000, MEMORY[0x277D86220], v0, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithBundleIdentifier:processAssertionName:rbsAttributes:pid:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end