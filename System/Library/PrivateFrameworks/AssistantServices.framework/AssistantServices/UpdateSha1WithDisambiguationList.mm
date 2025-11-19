@interface UpdateSha1WithDisambiguationList
@end

@implementation UpdateSha1WithDisambiguationList

uint64_t ___UpdateSha1WithDisambiguationList_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 title];
  v6 = [v4 title];

  if (v5 | v6)
  {
    v7 = [v5 compare:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end