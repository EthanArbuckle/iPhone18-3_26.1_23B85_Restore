@interface NSSetI
@end

@implementation NSSetI

uint64_t ____NSSetI_new_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [a2 hash] % v5;
  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  while (1)
  {
    result = *(v4 + 8 * v6);
    if (!result || result == a2)
    {
      break;
    }

    result = [result isEqual:a2];
    if (result)
    {
      break;
    }

    if (v6 + 1 >= v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    v6 = v6 + 1 - v10;
    if (!--v7)
    {
      v6 = v5;
      break;
    }
  }

  v11 = *(a1 + 40);
  if (!*(v11 + 8 * v6))
  {
    *(v11 + 8 * v6) = a2;
    if (a2 >= 1 && (*(a1 + 56) & 1) == 0)
    {
      result = a2;
    }

    *(*(a1 + 32) + 8) = *(*(a1 + 32) + 8) & 0xFC00000000000000 | (*(*(a1 + 32) + 8) + 1) & 0x3FFFFFFFFFFFFFFLL;
  }

  return result;
}

void *__51____NSSetI_enumerateObjectsWithOptions_usingBlock___block_invoke(void *result, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = atomic_load((*(result[6] + 8) + 24));
  if ((v2 & 1) == 0)
  {
    v3 = result;
    if (*(result[4] + 16 + 8 * a2))
    {
      v4 = _CFAutoreleasePoolPush();
      __NSSET_IS_CALLING_OUT_TO_A_BLOCK__(v3[5]);
      result = _CFAutoreleasePoolPop(v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end