@interface WKMockUserNotificationCenter
@end

@implementation WKMockUserNotificationCenter

uint64_t __78___WKMockUserNotificationCenter_getNotificationSettingsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6983230] emptySettings];
  if (*(a1 + 40))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [v2 setAuthorizationStatus:v3];
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

@end