@interface AXSettings(LegacyImplementation)
- (void)guidedAccessDefaultToneIdentifierForTimeRestrictionEvents;
- (void)payWithSwitchControl;
- (void)reachabilityEnabled;
@end

@implementation AXSettings(LegacyImplementation)

- (void)setSwitchControlProfiles:()LegacyImplementation .cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)applySwitchControlProfile:()LegacyImplementation .cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)smoothingBufferSizeForEyeTracker:()LegacyImplementation .cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)updateSmoothingBufferSize:()LegacyImplementation forEyeTracker:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)payWithSwitchControl
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = self & 1;
  _os_log_debug_impl(&dword_18B15E000, a2, OS_LOG_TYPE_DEBUG, "Local Auth Storage LAStorageKeyDoublePressDisabled: %d", v2, 8u);
}

- (void)guidedAccessDefaultToneIdentifierForTimeRestrictionEvents
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getTLToneIdentifierNone(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"AXSettings.m" lineNumber:82 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)reachabilityEnabled
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL weak_SBSIsReachabilityEnabled(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"AXSettings.m" lineNumber:99 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)setReachabilityEnabled:()LegacyImplementation .cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void weak_SBSSetReachabilityEnabled(BOOL)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettings.m" lineNumber:100 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)updateWithManagedAssetsRepresentation:()LegacyImplementation forGuest:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = +[AXBuddyDataPackage deviceClassForBuddy];
  v5 = 138412546;
  v6 = a1;
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "Tried to update device settings using a payload from a different platform that does not support cross platform transfers. Declining to change any preferences. %@ -> %@", &v5, 0x16u);
}

@end