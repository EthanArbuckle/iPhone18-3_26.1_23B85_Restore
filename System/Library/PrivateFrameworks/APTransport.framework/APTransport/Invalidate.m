@interface Invalidate
@end

@implementation Invalidate

void __queryManagerGetInfo_Invalidate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v6 = -72233;
  }

  else
  {
    v4 = DerivedStorage;
    v5 = *(DerivedStorage + 24);
    CFDictionaryApplyBlock();
    CFDictionaryRemoveAllValues(*(v4 + 24));
    v6 = 0;
    *(v4 + 16) = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
}

@end