@interface CFListFormatterCreateStringByJoiningStrings
@end

@implementation CFListFormatterCreateStringByJoiningStrings

void ___CFListFormatterCreateStringByJoiningStrings_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    __cficu_ulistfmt_close();
  }

  v2 = *(a1 + 40);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 48) + 8 * i);
      if (v4 && *(*(a1 + 56) + i) == 1)
      {
        free(v4);
        v2 = *(a1 + 40);
      }
    }
  }

  free(*(a1 + 56));
  free(*(a1 + 48));
  v5 = *(a1 + 64);

  free(v5);
}

@end