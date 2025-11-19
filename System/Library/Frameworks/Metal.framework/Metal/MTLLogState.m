@interface MTLLogState
@end

@implementation MTLLogState

BOOL __25___MTLLogState_decodeLog__block_invoke(uint64_t a1, void *a2)
{
  *a2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 24);
  v5 = strnlen(*(*(*(a1 + 32) + 8) + 24), v4);
  *(v3 + 24) = v4 - (v5 + 1);
  *(*(*(a1 + 32) + 8) + 24) += v5 + 1;
  return (*(*(*(a1 + 40) + 8) + 24) & 0x8000000000000000) == 0 && *(*(*(*(a1 + 32) + 8) + 24) - 1) == 0;
}

@end