@interface MTLCommandBuffer
@end

@implementation MTLCommandBuffer

void __45___MTLCommandBuffer_presentDrawable_options___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 error])
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      v3 = *(a1 + 48);
      if (*(v3 + 504) == 1)
      {
        dispatch_semaphore_signal(*(*(v3 + 32) + 352));
      }
    }
  }

  else
  {
    [*(a1 + 32) presentWithOptions:*(a1 + 40)];
  }

  v4 = *(a1 + 40);
}

intptr_t __37___MTLCommandBuffer_presentDrawable___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 error];
  if (result)
  {
    v4 = *(a1 + 40);
    if (*(v4 + 504) == 1)
    {
      v5 = *(*(v4 + 32) + 352);

      return dispatch_semaphore_signal(v5);
    }
  }

  else
  {
    v6 = *(a1 + 32);

    return [v6 present];
  }

  return result;
}

intptr_t __44___MTLCommandBuffer_presentDrawable_atTime___block_invoke(double *a1, void *a2)
{
  result = [a2 error];
  if (result)
  {
    v4 = *(a1 + 5);
    if (*(v4 + 504) == 1)
    {
      v5 = *(*(v4 + 32) + 352);

      return dispatch_semaphore_signal(v5);
    }
  }

  else
  {
    v6 = *(a1 + 4);
    v7 = a1[6];

    return [v6 presentAtTime:v7];
  }

  return result;
}

intptr_t __58___MTLCommandBuffer_presentDrawable_afterMinimumDuration___block_invoke(double *a1, void *a2)
{
  result = [a2 error];
  if (result)
  {
    v4 = *(a1 + 5);
    if (*(v4 + 504) == 1)
    {
      v5 = *(*(v4 + 32) + 352);

      return dispatch_semaphore_signal(v5);
    }
  }

  else
  {
    v6 = *(a1 + 4);
    v7 = a1[6];

    return [v6 presentAfterMinimumDuration:v7];
  }

  return result;
}

@end