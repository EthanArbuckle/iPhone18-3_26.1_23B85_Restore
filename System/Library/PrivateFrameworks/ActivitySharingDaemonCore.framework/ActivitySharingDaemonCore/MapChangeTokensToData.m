@interface MapChangeTokensToData
@end

@implementation MapChangeTokensToData

void ___MapChangeTokensToData_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 data];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

@end