@interface ATXAction(Factory)
@end

@implementation ATXAction(Factory)

+ (void)atx_updateAlarmActionWithTitle:()Factory subtitle:alarmID:alarmTitle:heuristicName:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAction+Factory.m" lineNumber:392 description:@"Failed to dyload MobileTimer."];
}

+ (void)atx_setAlarmActionWithTitle:()Factory subtitle:eventIdentifier:eventTitle:alarmDate:heuristicName:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAction+Factory.m" lineNumber:443 description:@"Failed to dyload MobileTimer."];
}

+ (void)atx_showCheckInActionWithTeamId:()Factory userActivityString:subtitle:overrideBundleId:suggestedEventUniqueKey:heuristicName:criteria:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 activityType];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "atx_showCheckInAction: Could not find an installed app for activityType='%@' or a webpageURL to fall back to.", v4, 0xCu);
}

+ (void)atx_showCheckInActionWithTeamId:()Factory userActivityString:subtitle:overrideBundleId:suggestedEventUniqueKey:heuristicName:criteria:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_1BF549000, v0, OS_LOG_TYPE_FAULT, "atx_showCheckInAction: Could not create NSUserActivity from string '%@'", v1, 0xCu);
}

@end