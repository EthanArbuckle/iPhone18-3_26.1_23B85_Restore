@interface NSMapTable
@end

@implementation NSMapTable

uint64_t __35__NSMapTable_BaseBoard__bs_filter___block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 40) + 16))();
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 removeObjectForKey:a2];
  }

  return result;
}

@end