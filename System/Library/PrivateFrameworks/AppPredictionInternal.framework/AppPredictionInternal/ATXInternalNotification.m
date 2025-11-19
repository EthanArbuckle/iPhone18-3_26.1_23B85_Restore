@interface ATXInternalNotification
@end

@implementation ATXInternalNotification

void __53___ATXInternalNotification_registerForNotifications___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 userInfo];
  v3 = [v4 objectForKeyedSubscript:@"data"];
  (*(v2 + 16))(v2, v3);
}

@end