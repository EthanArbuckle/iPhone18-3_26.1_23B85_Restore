@interface NSSetEnumerate
@end

@implementation NSSetEnumerate

BOOL ____NSSetEnumerate_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(*(a1 + 40) + 8);
  __NSSET_IS_CALLING_OUT_TO_A_BLOCK__(*(a1 + 32));
  return (*(*(*(a1 + 40) + 8) + 24) & 1) == 0;
}

void *____NSSetEnumerate_block_invoke(void *result)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = atomic_load((*(result[6] + 8) + 24));
  if ((v1 & 1) == 0)
  {
    v2 = result;
    v3 = &v9 - ((8 * result[7] + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = _CFAutoreleasePoolPush();
    pthread_mutex_lock(v2[8]);
    if (v2[7])
    {
      v5 = 0;
      do
      {
        v6 = [v2[4] nextObject];
        *&v3[8 * v5] = v6;
        if (!v6)
        {
          break;
        }

        ++v5;
      }

      while (v5 < v2[7]);
    }

    pthread_mutex_unlock(v2[8]);
    HIBYTE(v9) = 0;
    if (v2[7])
    {
      v7 = 0;
      while (*&v3[8 * v7])
      {
        __NSSET_IS_CALLING_OUT_TO_A_BLOCK__(v2[5]);
        if (HIBYTE(v9) == 1)
        {
          atomic_store(1u, (*(v2[6] + 8) + 24));
          break;
        }

        if (++v7 >= v2[7])
        {
          break;
        }
      }
    }

    result = _CFAutoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end