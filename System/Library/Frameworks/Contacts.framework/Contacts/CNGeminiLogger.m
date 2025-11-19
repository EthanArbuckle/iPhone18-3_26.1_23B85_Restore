@interface CNGeminiLogger
@end

@implementation CNGeminiLogger

void __44___CNGeminiLogger_updatingSubscriptionInfo___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

void __44___CNGeminiLogger_updatingSubscriptionInfo___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __58___CNGeminiLogger_fetchingBestResultForDestinationHandle___block_invoke(uint64_t a1)
{
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v1);
  os_activity_scope_leave(&v1);
}

void __58___CNGeminiLogger_fetchingBestResultForDestinationHandle___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

@end