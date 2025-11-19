@interface CFGenerateReport
@end

@implementation CFGenerateReport

uint64_t ____CFGenerateReport_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 1;
  if (!*v3)
  {
    return 1;
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 24);
  v6 = __CFADD__(v5, a2);
  v7 = v5 + a2;
  result = v6;
  *(v4 + 24) = v7;
  return result;
}

@end