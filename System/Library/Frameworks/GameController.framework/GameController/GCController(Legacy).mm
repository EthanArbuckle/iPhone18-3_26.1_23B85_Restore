@interface GCController(Legacy)
- (void)deviceHash;
@end

@implementation GCController(Legacy)

- (void)initWithProfile:()Legacy .cold.1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    [a1 deviceHash];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v4, v5, "DeviceHash: 0x%lx", v6, v7, v8, v9, v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)initWithProfile:()Legacy .cold.2(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = [a1 vendorName];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v5, v6, "VendorName: %@", v7, v8, v9, v10, v12);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)initWithProfile:()Legacy .cold.3(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = [a1 debugName];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v5, v6, "DebugName: %@", v7, v8, v9, v10, v12);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)initWithProfileClass:()Legacy service:.cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v5))
  {
    [a1 service];
    [a2 physicalDeviceUsesCompass];
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v6, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 0x26u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)initWithProfileClass:()Legacy service:.cold.2()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
  }
}

- (void)initWithProfileClass:()Legacy service:.cold.3(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    [a1 deviceHash];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v4, v5, "DeviceHash: %lu", v6, v7, v8, v9, v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)deviceHash
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end