@interface MXExtensionMatchingMerger
@end

@implementation MXExtensionMatchingMerger

void __45___MXExtensionMatchingMerger_clearExtensions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = 0;
}

void __58___MXExtensionMatchingMerger_receiveExtensions_withIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 <= 2)
  {
    objc_storeStrong((*(a1 + 32) + 8 * v2 + 16), *(a1 + 40));
  }

  v3 = *(a1 + 32);
  if (v3[2])
  {
    [*(a1 + 48) addObjectsFromArray:?];
    v3 = *(a1 + 32);
  }

  if (v3[3])
  {
    [*(a1 + 48) addObjectsFromArray:?];
    v3 = *(a1 + 32);
  }

  if (v3[4])
  {
    v4 = *(a1 + 48);

    [v4 addObjectsFromArray:?];
  }
}

@end