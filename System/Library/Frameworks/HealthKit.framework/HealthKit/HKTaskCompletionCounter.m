@interface HKTaskCompletionCounter
@end

@implementation HKTaskCompletionCounter

void *__44___HKTaskCompletionCounter_decrementCounter__block_invoke(uint64_t a1)
{
  --*(*(a1 + 32) + 24);
  result = *(a1 + 32);
  if (!result[3])
  {
    v3 = result[1];
    if (v3)
    {
      (*(v3 + 16))(result[1]);
      result = *(a1 + 32);
    }

    return [result _invalidate];
  }

  return result;
}

void *__44___HKTaskCompletionCounter_allTasksEnqueued__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[3])
  {
    v3 = result[1];
    if (v3)
    {
      (*(v3 + 16))(result[1]);
      result = *(a1 + 32);
    }

    return [result _invalidate];
  }

  return result;
}

@end