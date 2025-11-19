@interface LSCoreTypesRecordProxy
@end

@implementation LSCoreTypesRecordProxy

uint64_t __42___LSCoreTypesRecordProxy__loadRealRecord__block_invoke(uint64_t result, int a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  if (*(*(*(*(result + 32) + 8) + 24) + 168) == 11)
  {
    *(*(*(result + 40) + 8) + 24) = a2;
    *a5 = 1;
  }

  return result;
}

@end