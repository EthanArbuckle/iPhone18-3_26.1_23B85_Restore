@interface EnqueueEventFunction
@end

@implementation EnqueueEventFunction

void *____EnqueueEventFunction_block_invoke(void *result, uint64_t a2)
{
  v2 = *(*(result[4] + 8) + 24);
  if (v2)
  {
    v3 = result;
    result = IOHIDSessionFilterFilterEventToConnection(a2, result[5], result[6], v2);
    *(*(v3[4] + 8) + 24) = result;
  }

  return result;
}

@end