@interface CIContext(CIRenderDestination)
@end

@implementation CIContext(CIRenderDestination)

- (void)_startTaskToRender:()CIRenderDestination toDestination:forPrepareRender:forClear:error:.cold.6(const __CFString *a1)
{
  CFStringGetCStringPtr(a1, 0x600u);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v1, v2, "%{public}s %{public}s", v3, v4, v5, v6, 2u);
}

- (void)_startTaskToRender:()CIRenderDestination toDestination:forPrepareRender:forClear:error:.cold.7(int a1)
{
  CI::name_for_format(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v1, v2, "%{public}s format %{public}s is not supported on GLES.", v3, v4, v5, v6, 2u);
}

@end