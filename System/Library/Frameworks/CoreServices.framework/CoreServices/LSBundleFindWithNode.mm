@interface LSBundleFindWithNode
@end

@implementation LSBundleFindWithNode

uint64_t ___LSBundleFindWithNode_block_invoke_137(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  result = _LSBundleMatchesNode(**(a1 + 64), *(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 48) + 8) + 24), *(a1 + 32), *(a1 + 72));
  if (result)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void ___LSBundleFindWithNode_block_invoke_2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  *(*(*(a1 + 56) + 8) + 24) = _LSAliasMatchesPath_NoIO(**(a1 + 64), **(*(*(a1 + 48) + 8) + 24), *(a1 + 32), 0);
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    *a5 = 1;
  }

  objc_autoreleasePoolPop(v9);
}

@end