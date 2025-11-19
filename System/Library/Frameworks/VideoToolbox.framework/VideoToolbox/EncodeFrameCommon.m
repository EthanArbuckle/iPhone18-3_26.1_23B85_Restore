@interface EncodeFrameCommon
@end

@implementation EncodeFrameCommon

uint64_t __vtCompressionSessionRemote_EncodeFrameCommon_block_invoke(uint64_t a1)
{
  result = FigAtomicIncrement32();
  if (result == 1)
  {
    result = FigSemaphoreWaitRelative();
  }

  *(*(a1 + 40) + 48) = *(*(a1 + 32) + 40);
  *(*(a1 + 32) + 40) = *(a1 + 40);
  return result;
}

uint64_t __vtCompressionSessionRemote_EncodeFrameCommon_block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 32) + 40);
  if (v1)
  {
    v2 = result;
    do
    {
      while (1)
      {
        v3 = v1;
        v1 = *(v1 + 48);
        v4 = *(v2 + 40);
        if (v3 == v4)
        {
          v5 = *(v4 + 32);
          if (v5)
          {
            _Block_release(v5);
            v3 = *(v2 + 40);
          }

          v6 = *(v2 + 32);
          v9 = *(v6 + 40);
          v8 = (v6 + 40);
          v7 = v9;
          if (v9 != v3)
          {
            do
            {
              v10 = v7;
              v7 = *(v7 + 48);
            }

            while (v7 != v3);
            v8 = (v10 + 48);
          }

          *v8 = *(v7 + 48);
          free(*(v2 + 40));
          result = FigAtomicDecrement32();
          if (!result)
          {
            break;
          }
        }

        if (!v1)
        {
          return result;
        }
      }

      result = FigSemaphoreSignal();
    }

    while (v1);
  }

  return result;
}

@end