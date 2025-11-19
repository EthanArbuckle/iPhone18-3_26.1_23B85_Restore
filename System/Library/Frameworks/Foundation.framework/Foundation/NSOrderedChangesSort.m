@interface NSOrderedChangesSort
@end

@implementation NSOrderedChangesSort

uint64_t ___NSOrderedChangesSort_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [**(a1 + 40) objectAtIndex:*(a1 + 48) + a2];
  v7 = [**(a1 + 40) objectAtIndex:*(a1 + 48) + a3];
  v8 = *(v5 + 16);

  return v8(v5, v6, v7);
}

@end