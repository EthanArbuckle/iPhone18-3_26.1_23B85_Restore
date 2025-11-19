@interface AFErrorSetUnderlyingErrorRecursively
@end

@implementation AFErrorSetUnderlyingErrorRecursively

void ___AFErrorSetUnderlyingErrorRecursively_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v5 = _AFErrorSetUnderlyingErrorRecursively(a2, &v11, *(a1 + 40), *(a1 + 48));
  v6 = v11;
  if (v5)
  {
    v7 = *(*(*(a1 + 56) + 8) + 40);
    if (!v7)
    {
      v8 = [*(a1 + 32) mutableCopy];
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(*(a1 + 56) + 8) + 40);
    }

    [v7 replaceObjectAtIndex:a3 withObject:v6];
  }
}

@end