@interface BSDefaultObserver
@end

@implementation BSDefaultObserver

uint64_t __69___BSDefaultObserver_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t result)
{
  v1 = atomic_load((result + 40));
  v2 = *(result + 32);
  if (v1 == *(v2 + 44))
  {
    return (*(*(v2 + 32) + 16))();
  }

  return result;
}

@end