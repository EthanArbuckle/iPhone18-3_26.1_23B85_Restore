@interface NSRunLoop
@end

@implementation NSRunLoop

uint64_t __41__NSRunLoop_NSRunLoop___portInvalidated___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 32) == a2)
  {
    v6 = result;
    [*(result + 40) addObject:?];
    v7 = *(v6 + 48);

    return [v7 addIndexesInRange:{a4, 2}];
  }

  return result;
}

uint64_t __46__NSRunLoop_NSRunLoop___containsPort_forMode___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 32) == a2)
  {
    v6 = result;
    result = [*(result + 40) isEqual:?];
    if (result)
    {
      *(*(*(v6 + 48) + 8) + 24) = 1;
      *a5 = 1;
    }
  }

  return result;
}

uint64_t __44__NSRunLoop_NSRunLoop___removePort_forMode___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 32) == a2)
  {
    v7 = result;
    result = [*(result + 40) isEqual:?];
    if (result)
    {
      v8 = *(*(v7 + 56) + 8);
      if (*(*(*(v7 + 48) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
      {
        *(v8 + 24) = 1;
        *(*(*(v7 + 48) + 8) + 24) = a4;
      }

      else
      {
        *(v8 + 24) = 0;
        *a5 = 1;
      }
    }
  }

  return result;
}

@end