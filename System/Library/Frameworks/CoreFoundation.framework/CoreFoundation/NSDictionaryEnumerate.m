@interface NSDictionaryEnumerate
@end

@implementation NSDictionaryEnumerate

uint64_t ____NSDictionaryEnumerate_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(*(a1 + 32));
  v4 = *MEMORY[0x1E69E9840];
  return 1;
}

void *____NSDictionaryEnumerate_block_invoke(void *result)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = atomic_load((*(result[7] + 8) + 24));
  if ((v1 & 1) == 0)
  {
    v2 = result;
    v3 = &v11 - ((8 * result[8] + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = _CFAutoreleasePoolPush();
    pthread_mutex_lock(v2[9]);
    if (v2[8])
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

      while (v5 < v2[8]);
    }

    pthread_mutex_unlock(v2[9]);
    if (v2[8])
    {
      for (i = 0; i < v2[8]; ++i)
      {
        v8 = *&v3[8 * i];
        if (!v8)
        {
          break;
        }

        HIBYTE(v11) = 0;
        v9 = v2[6];
        [v2[5] objectForKey:v8];
        __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(v9);
        if (HIBYTE(v11) == 1)
        {
          atomic_store(1u, (*(v2[7] + 8) + 24));
          break;
        }
      }
    }

    result = _CFAutoreleasePoolPop(v4);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

@end