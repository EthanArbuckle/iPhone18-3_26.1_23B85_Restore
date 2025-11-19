@interface SWHighlightEventAllowList
@end

@implementation SWHighlightEventAllowList

uint64_t __48___SWHighlightEventAllowList_eventClassForType___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 integerValue];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    *a4 = 1;
  }

  return result;
}

@end