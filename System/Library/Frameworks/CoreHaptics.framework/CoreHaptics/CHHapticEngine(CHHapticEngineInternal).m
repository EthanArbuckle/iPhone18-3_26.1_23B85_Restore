@interface CHHapticEngine(CHHapticEngineInternal)
@end

@implementation CHHapticEngine(CHHapticEngineInternal)

- (void)dispatchOnLocal:()CHHapticEngineInternal .cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_21569A000, MEMORY[0x277D86220], v0, "%25s:%-5d ASSERTION FAILURE [(!in_dispatch_sync) != 0 is false]: ", v1, v2, v3, v4, 2u);
  }

  __break(1u);
}

- (void)doRegisterAudioResource:()CHHapticEngineInternal options:fromPattern:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_21569A000, MEMORY[0x277D86220], v0, "%25s:%-5d ASSERTION FAILURE [(resourceEntries.emplace(copiedResourceID, resource, resource->url(), options, refCountKey) == true) != 0 is false]: ", v1, v2, v3, v4, 2u);
  }

  __break(1u);
}

- (void)doRegisterAudioResource:()CHHapticEngineInternal options:fromPattern:error:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_21569A000, MEMORY[0x277D86220], v0, "%25s:%-5d ASSERTION FAILURE [(resourceEntries.emplace(resourceID, resource, resource->url(), options, refCountKey) == true) != 0 is false]: ", v1, v2, v3, v4, 2u);
  }

  __break(1u);
}

@end