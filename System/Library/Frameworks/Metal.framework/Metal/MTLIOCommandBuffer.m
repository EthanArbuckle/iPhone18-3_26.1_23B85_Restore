@interface MTLIOCommandBuffer
@end

@implementation MTLIOCommandBuffer

uint64_t __42___MTLIOCommandBuffer_waitForEvent_value___block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if (!*(v2 + 72))
  {
    v3 = *(v2 + 80);
    *(*(result + 40) + 8) = 1;
    pthread_mutex_lock((v3 + 120));
    pthread_cond_broadcast((v3 + 72));

    return pthread_mutex_unlock((v3 + 120));
  }

  return result;
}

@end