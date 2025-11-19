@interface HKExpiringCompletionTimer
@end

@implementation HKExpiringCompletionTimer

uint64_t __36___HKExpiringCompletionTimer__start__block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  if (([*(a1 + 32) isExpired] & 1) == 0)
  {
    __36___HKExpiringCompletionTimer__start__block_invoke_cold_1();
  }

  v2 = *(*(*v1 + 32) + 16);

  return v2();
}

void __36___HKExpiringCompletionTimer__start__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 40) object:*v0 file:@"_HKExpiringCompletionTimer.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"[self isExpired]"}];
}

@end