@interface NSProgressSubscriber
@end

@implementation NSProgressSubscriber

uint64_t __61___NSProgressSubscriber_addPublisher_forID_withValues_isOld___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) lock];
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    [*(v2 + 40) unlock];
    v3 = *(*(*(a1 + 32) + 8) + 16);

    return v3();
  }

  else
  {
    [*(v2 + 24) removeObjectForKey:*(a1 + 40)];
    [*(*(a1 + 32) + 40) unlock];
    return 0;
  }
}

@end