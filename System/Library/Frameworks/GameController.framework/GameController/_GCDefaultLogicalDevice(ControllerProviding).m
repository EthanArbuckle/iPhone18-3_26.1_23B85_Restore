@interface _GCDefaultLogicalDevice(ControllerProviding)
@end

@implementation _GCDefaultLogicalDevice(ControllerProviding)

- (void)makeControllerForClient:()ControllerProviding .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    [a1 glyphFlags];
    OUTLINED_FUNCTION_1();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)makeControllerForClient:()ControllerProviding .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCDefaultLogicalDevice.m" lineNumber:1424 description:@"Assertion failed: [descriptionClass isSubclassOfClass:_GCControllerDescription.class]"];
}

@end