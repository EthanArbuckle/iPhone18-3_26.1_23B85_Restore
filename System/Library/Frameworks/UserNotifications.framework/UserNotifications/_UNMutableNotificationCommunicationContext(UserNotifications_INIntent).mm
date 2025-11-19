@interface _UNMutableNotificationCommunicationContext(UserNotifications_INIntent)
@end

@implementation _UNMutableNotificationCommunicationContext(UserNotifications_INIntent)

+ (void)mutableContextFromINIntent:()UserNotifications_INIntent .cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v0, v1, "%{public}@ Timed out getting data at content url: '%{public}@'");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)mutableContextFromINIntent:()UserNotifications_INIntent .cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1B85E3000, v0, v1, "%{public}@ Error getting proxied image synchronously for content url '%{public}@'. proxied image is nil");
  v2 = *MEMORY[0x1E69E9840];
}

@end